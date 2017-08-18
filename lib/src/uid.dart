// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'package:string/ascii.dart';
import 'package:uuid/uuid.dart';

import 'errors.dart';
import 'uid_type.dart';
import 'uid_utils.dart';
import 'well_known_uids.dart';

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
class Uid {
  final String value;

  //Urgent: s is not validated.
  Uid([String s]) : this.value = (s == null) ? generateUid() : s;

  const Uid.wellKnown(this.value);

  @override
  bool operator ==(Object other) => (other is Uid) && (asString == other.asString);

  int get hashCode => value.hashCode;

  //TODO: determine the correct number
  int get minLength => kUidMinLength;
  int get maxLength => kUidMaxLength;

  //TODO: determine the correct number
  int get maxRootLength => kUidMaxRootLength;

  /// Returns [true] if [this] is an encapsulated [TransferSyntax].
  bool get isEncapsulated => false;

  /// Returns [true] if [this] is a [Uid] defined by the DICOM Standard.
  bool get isWellKnown => false;

  /// Return a [String] that includes the [runtimeType].
  String get info => '$runtimeType: $asString';

  /// Returns the [Uid] [String].
  @override
  String get asString => value;

  /// Returns the [Uid] [String].
  @override
  String toString() => asString;

  // **** Static Getters and Methods

  /// ASCII constants for '0', '1', and '2'. No other roots are valid.
  static const List<String> uidRoots = kUidRoots;

  /// Returns a [String] containing a random UID as per the
  /// See Dart sdk/math/Random.
  static Uid get pseudo => generatePseudoUid();

  /// Returns a [String] containing a _secure_ random UID.
  /// See Dart sdk/math/Random.
  static Uid get secure => generateSecureUid();

  /// Returns the DICOM UID root [String]
  static String get dicomRoot => "1.2.840.10008";

  /// Returns the Well Known (DICOM) [Uid] corresponding to [s],
  /// or [null] if none.
  static WKUid lookup(String s) => wellKnownUids[s];

  /// Returns a [Uid] created from a pseudo random [Uuid].
  static String generatePseudoUid() => '2.25.${Uuid.generateDcmString}';

  /// Returns a [Uid] created from a secure random [Uuid].
  static String generateSecureUid() => '2.25.${Uuid.generateSecureDcmString}';

  static bool isDicom(Uid uid) => uid.asString.indexOf(dicomRoot) == 0;

  /// Returns [s] if it is a valid [Uid] [String]; otherwise, [null].
  static String check(String s) => isValidString(s) ? s : null;

  static String test(String s) => isValidString(s) ? s : throw "Invalid Uid String: $s";

  /// Returns a [String] containing the name of the organization associated
  /// with the root.
  static String rootType(String uidString) => uidRootType(uidString);

  /// Returns
  static bool isValidString(String s) => isValidUidString(s);

  /// Returns [true] if [sList] is empty, i.e. [sList].length == 0, or if each
  /// [String] in the [List] is a valid [Uid].
  static bool isValidStringList(List<String> sList) =>
      sList != null && (sList.length == 0 || isValidUidStringList(sList));

  /// Parse [s] as [Uid] and return its value.
  ///
  /// If [s] is valid and a WellKnownUid([WKUid]), the canonical
  /// WellKnownUid([WKUid]) is returned; otherwise, a new [Uid] is
  /// created and returned.
  ///
  /// If [s] is not a valid [Uid] [String], [onError] is called with [s] as
  /// its argument, and its value is returned as the value of the [parse]
  /// expression. If no [OnError] is provided, an [InvalidUidStringError] is thrown.
  ///
  /// The onError handler can be chosen to return null. This is preferable
  /// to to throwing and then immediately catching the FormatException.
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

  /// Parses a [List] of [String]s as [Uid]s and returns a new
  /// [List] containing the corresponding [Uid]s.
  ///
  /// If any member of [sList] is not valid, [onError] is called and
  /// its values is stored in the  result. If no [OnError] is provided,
  /// an [InvalidUidStringError] is thrown.
  static List<Uid> parseList(List<String> sList, {Uid Function(String) onError}) {
    List<Uid> uids = new List<Uid>(values.length);
    for (int i = 0; i < values.length; i++)
      uids[i] = Uid.parse(values[i], onError: onError);
    return uids;
  }

  /// Return the first character of the [Uid] [String].
  static String uidRootType(String uidString) => kUidRootType[uidString.codeUnitAt(0)];

  /// Returns a [list] of [Uid] generated from random [Uuid]s.
  static List<Uid> randomList(int length) {
    List<Uid> uList = new List<Uid>(length);
    for (int i = 0; i < length; i++) uList[i] = new UidRandom._();
    return uList;
  }
}
