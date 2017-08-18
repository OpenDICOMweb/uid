// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'package:string/ascii.dart';
import 'package:uuid/uuid.dart';

import 'errors.dart';
import 'uid_type.dart';
import 'well_known_uids.dart';

//TODO: test for performance
//TODO: Jim: cleanup documentation
//TODO: add link in next line

const int kUidMinLength = 6;
const int kUidMaxLength = 64;
const int kUidMaxRootLength = 24;

const Map<int, String> kUidRootType = const <int, String>{
  0: "ITU-T",
  1: "ISO",
  2: "joint-iso-itu-t"
};

/// ASCII constants for '0', '1', and '2'. No other roots are valid.
const List<int> kUidRoots = const <int>[k0, k1, k2];

final RegExp uidRegex = new RegExp(r"[012]((\.0)|(\.[1-9]+\d*))+");

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
class Uid {
  static const String randomUidRoot = "2.25.";

  final String value;

  //Urgent: s is not validated.
  Uid([String s]) : this.value = (s == null) ? generateUid() : s;

  const Uid.wellKnown(this.value);

  int get hashCode => value.hashCode;

  /// Returns the [Uid] [String].
  @override
  String get asString => value;

  @override
  bool operator ==(Object other) =>
      (other is Uid) && (asString == other.asString);

  //TODO: determine the correct number
  int get minLength => kUidMinLength;
  int get maxLength => kUidMaxLength;

  //TODO: determine the correct number
  int get maxRootLength => kUidMaxRootLength;

  //Fix:
  /// Returns the [UidType].
//  UidType get type => UidType.kConstructed;

  /// Returns [true] if [this] is an encapsulated [TransferSyntax].
  bool get isEncapsulated => false;

  /// Returns [true] if [this] is a [Uid] defined by the DICOM Standard.
  bool get isWellKnown => false;

  /// Returns a [String] containing a random UID as per the
  /// See Dart sdk/math/Random.
//  static Uid get random => new UidRandom();

  /// Returns a [String] containing a _secure_ random UID.
  /// See Dart sdk/math/Random.
  static Uid get secure => new UidRandom();

  /// Return a [String] that includes the [runtimeType].
  String get info => '$runtimeType: $asString';

  /// Returns the [Uid] [String].
  @override
  String toString() => asString;

  static String get dicomRoot => "1.2.840.10008";
  static WKUid lookup(dynamic uid) {
    var s;
    if (uid is Uid) s = uid.asString;
    if (uid is String) s = uid;
    return wellKnownUids[s];
  }

  /// ASCII constants for '0', '1', and '2'. No other roots are valid.
  static const List<int> uidRoots = kUidRoots;

  /// Returns [s] if it is a valid [Uid] [String]; otherwise, [null].
  static String check(String s) => isValidString(s) ? s : null;

  static String test(String s) =>
      isValidString(s) ? s : throw "Invalid Uid String: $s";

  /// Returns a [String] containing the name of the organization associated
  /// with the root.
  static String rootType(String uidString) => uidRootType(uidString);

  static final RegExp uidPattern = new RegExp(r"[012]((\.0)|(\.[1-9]\d*))+");

  /// Returns [s] if it is a valid [Uid] [String]; otherwise, [null].
  static bool isValidString(String s) {
    if (s == null ||
        !isValidLength(s.length) ||
        !uidRoots.contains(s.codeUnitAt(0))) return false;
    for (int i = 0; i < s.length - 1; i++) {
      //  print('  $i: ${uidString[i]}, ${i+1}: ${uidString[i+1]}');
      int char0 = s.codeUnitAt(i);
      if (char0 == kDot) {
        if (s.codeUnitAt(i + 1) == k0) {
          if (i + 2 >= s.length) return true;
          if (s.codeUnitAt(i + 2) != kDot) return false;
        }
      } else {
        if (!isDigitChar(char0)) return false;
      }
    }
    if (!isDigitChar(s.codeUnitAt(s.length - 1))) return false;
    return true;
  }

  static bool isValidLength(int length) =>
      kUidMinLength <= length && length <= kUidMaxLength;

  /// Returns true if [sList] is empty, i.e. [sList].length == 0, or if each
  /// [String] in the [List] is a valid [Uid].
  static bool isValidStringList(List<String> sList) {
    if (sList == null) return false;
    if (sList.length == 0) return true;
    for (String s in sList) if (!isValidString(s)) return false;
    return true;
  }

  //TODO: redoc before V0.9.0
  /// Returns a [Uid] if [s] is a valid [Uid][String];
  /// otherwise, returns null.
  ///
  /// Leading and trailing spaces are first removed, then [s] is parsed. If [s]
  /// is valid and a WellKnownUid([WKUid]), the canonical WellKnownUid([WKUid])
  /// is returned; otherwise, a new Uid is created and returned.
  static Uid parse(String s, {Uid Function(String) onError}) {
    var v = s.trim();
    if (!Uid.isValidString(v)) {
      if (onError != null) {
        return onError(s);
      } else {
        throw new InvalidUidStringError(s);
      }
    }
    WKUid wk = wellKnownUids[s];
    return (wk != null) ? wk : new Uid(s);
  }

  static List<Uid> parseList(List<String> values) {
    List<Uid> uids = new List<Uid>(values.length);
    for (int i = 0; i < values.length; i++)
      uids[i] = Uid.parse(values[i]);
    return uids;
  }

  static String uidRootType(String uidString) =>
      kUidRootType[uidString.codeUnitAt(0)];

  static List<Uid> randomList(int length) {
    List<Uid> uList = new List<Uid>(length);
    for (int i = 0; i < length; i++) uList[i] = new UidRandom._();
    return uList;
  }

  static Uid generateUid() => new Uuid(Uuid.generate().asString);
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
