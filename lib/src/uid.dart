// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.


import 'package:uuid/uuid.dart';

import 'uid_type.dart';
import 'uid_utils.dart' as util;
import 'well_known_uids.dart';

//TODO: test for performance
//TODO: cleanup documentation
//TODO: add link in next line
/// A class that implements *DICOM Unique Identifiers* (UID) <*add link*>,
/// also known as OSI *Object Identifiers* (OID), in accordance with
/// Rec. ITU-T X.667 | ISO/IEC 9834-8. See <http://www.oid-info.com/get/2.25>
///
/// [Uid]s are immutable.  They can be created as:
///   1. compile time constants,
///   2. from Strings, or
///   3. generated from random [Uuid]s. See <http://www.oid-info.com/get/2.25>

/// A UID constructed from a [String] or from a root and leaf.  This
/// class is the super class for all Well Known UIDs.
abstract class Uid {
  //TODO: should these static const become getters?
  //TODO: determine the correct number
  static const int kMinLength = 6;
  static const int kMaxLength = 64;
  //TODO: determine the correct number
  static const int maxRootLength = 24;
  static const String dicomRoot = "1.2.840.10008";

  factory Uid([String s]) => (s == null) ? random : parse(s);

  factory Uid.fromString(String s) => parse(s);

  factory Uid.withRoot(String root, String leaf) =>
      new UidString.withRoot(root, leaf);

  const Uid._();

  @override
  bool operator ==(Object other) =>
      (other is Uid) && (asString == other.asString);

  @override
  int get hashCode => asString.hashCode;

  /// Returns the [Uid] [String].
  String get asString;

  /// Returns the [UidType].
  UidType get type => UidType.kConstructed;

  /// Returns [true] if [this] is an encapsulated [TransferSyntax].
  bool get isEncapsulated => false;

  /// Returns [true] if [this] is a [Uid] defined by the DICOM Standard.
  bool get isWellKnown => false;

  /// Returns a [String] containing a random UID as per the
  /// See Dart sdk/math/Random.
  static Uid get random => new UidRandom._(isSecure: false);

  /// Returns a [String] containing a _secure_ random UID.
  /// See Dart sdk/math/Random.
  static Uid get secure => new UidRandom._(isSecure: true);

  static List<String> randomList(int length) {
    List<String> uList = new List(length);
    for (int i = 0; i < length; i++) uList[i] = Uuid.generator.string;
    return uList;
  }

  /// Return a [String] that includes the [runtimeType].
  String get info => '$runtimeType: $asString';

  /// Returns the [Uid] [String].
  @override
  String toString() => asString;

  static WKUid lookup(dynamic uid) {
    var s;
    if (uid is Uid) s = uid.asString;
    if (uid is String) s = uid;
    return wellKnownUids[s];
  }

  /// ASCII constants for '0', '1', and '2'. No other roots are valid.
  static const List<int> uidRoots = util.uidRoots;

  /// Returns [s] if it is a valid [Uid] [String]; otherwise, [null].
  static String check(String s) => isValidString(s) ? s : null;

  static String test(String s) =>
      isValidString(s) ? s : throw "Invalid Uid String: $s";

  /// Returns a [String] containing the name of the organization associated
  /// with the root.
  static String rootType(String uidString) => util.uidRootType(uidString);

  static final RegExp uidPattern = new RegExp(r"[012]((\.0)|(\.[1-9]\d*))+");


  static bool isValidString(String uidString) =>
      util.isValidUidString(uidString);

  /// Returns true if [sList] is empty, i.e. [sList].length == 0, or if each
  /// [String] in the [List] is a valid [Uid].
  static bool isValidStringList(List<String> sList) {
    if (sList == null) return false;
    if (sList.length == 0) return true;
    for (String s in sList) if (!isValidString(s)) return false;
    return true;
  }

  /// Returns a [Uid] if [s] is a valid [Uid][String]; otherwise, returns null.
  /// Leading and trailing spaces are first removed, then [s] is parsed. If [s]
  /// is valid and a WellKnownUid([WKUid]), the canonical WellKnownUid([WKUid])
  /// is returned; otherwise, a new Uid is created and returned.
  static Uid parse(String s) {
    var s0 = s.trim();
    if (!isValidString(s0)) return null;
    var uid = wellKnownUids[s0];
    return (uid != null) ? uid : new UidString(s0);
  }

  static List<Uid> parseList(List<String> values) {
    List<Uid> uids = new List<Uid>(values.length);
    for (int i = 0; i < values.length; i++) uids[i] = Uid.parse(values[i]);
    return uids;
  }
}

class UidString extends Uid {
  final String s;

  factory UidString(String s) {
    WKUid wk = (wellKnownUids[s]);
    return (wk == null) ? new UidString._(s) : wk;
  }

  factory UidString.withRoot(String root, String leaf) {
    var s = root + leaf;
    return new UidString(s);
  }

  UidString._(this.s) : super._();

  const UidString.wellKnown(this.s) : super._();

  @override
  String get asString => s;
}

class UidRandom extends Uid {
  /// The UID Root for UIDs created from random (V4) UUIDs.
  static const String uidRoot = "2.25.";
  final Uuid uuid;

  UidRandom._({bool isSecure = false})
      : uuid = new Uuid(isSecure: isSecure),
        super._();

  @override
  String get asString => uidRoot + uuid.toString();

  @override
  UidType get type => UidType.kUidRandom;

  @override
  String toString() => asString;
}

const Map<String, String> oidRoots = const <String, String>{
  "1.2.840": "United States of America",
  "1.16.840": "United States of America",
  "1.2.840.": "United States of America",
  '1.2.840.10008': "DICOM Standard",
  "1.3.6.1": "Internet",
  "1.3.6.1.4.1": "IANA assigned company OIDs",
  "2.25": "itu-iso UUID"
};
