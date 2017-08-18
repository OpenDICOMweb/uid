// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Original author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'package:string/ascii.dart';

/// Useful utilities for working with [Uid] [String]s.
/// TODO: verify that this file is used by Element UI.
const int kUidMinLength = 6;
const int kUidMaxLength = 64;
const int kUidMaxRootLength = 24;

final RegExp uidRegex = new RegExp(r"[012]((\.0)|(\.[1-9]+\d*))+");

bool _isValidLength(int length) => kUidMinLength <= length && length <= kUidMaxLength;

/// Returns [s] if it is a valid [Uid] [String]; otherwise, [null].
bool isValidUidString(String s) {
  if (s == null || !_isValidLength(s.length) || !kUidRoots.contains(s[0])) return false;
  for (int i = 0; i < s.length - 1; i++) {
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

//TODO: This can't be implemented until we can convert 39 character decimal
//      strings into 16-byte values
/// Verifies that the variant field is 0b10 and version field is 0b0100 = 4
bool isValidUuidUid(String s) => throw new UnimplementedError();


/// Returns true if each [String] in the [List] is a valid [Uid].
bool isValidUidStringList(List<String> sList) {
  if (sList == null || sList.length == 0) return false;
  for (String s in sList) if (!isValidUidString(s)) return false;
  return true;
}

/// ASCII constants for '0', '1', and '2'. No other roots are valid.
const List<String> kUidRoots = const <String>["0", "1", "2"];

const String randomUidRoot = "2.25.";

/// A [Map] containing the names associated with the three [Uid]
/// initial integers.
const Map<int, String> kUidRootType = const <int, String>{
  0: "ITU-T",
  1: "ISO",
  2: "joint-iso-itu-t"
};

//TODO: Decide if this is useful
/// A [Map] of some common [Uid]\(OID\) root [String]s.
const Map<String, String> oidRoots = const <String, String>{
  "1.2.840": "United States of America",
  "1.16.840": "United States of America",
  "1.2.840.": "United States of America",
  '1.2.840.10008': "DICOM Standard",
  "1.3.6.1": "Internet",
  "1.3.6.1.4.1": "IANA assigned company OIDs",
  "2.25": "itu-iso UUID"
};
