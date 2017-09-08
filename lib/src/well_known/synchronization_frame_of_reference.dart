// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'package:uid/src/uid_type.dart';
import 'package:uid/src/well_known/wk_uid.dart';

//TODO: Unit test.

class SynchronizationFrameOfReference extends WKUid {
  const SynchronizationFrameOfReference(
      String uid, String keyword, UidType type, bool isRetired, String name)
      : super(uid, keyword, type, isRetired, name);

  //TODO: create UidType class
  bool get isSopClass => true;

  @override
  String get info => '$runtimeType($asString)';

  @override
  String toString() => asString;

  //TODO: when other classes are implemented convert to lookup the uidString
  //in each class.
  static SynchronizationFrameOfReference lookup(String s) => map[s];

  static const WKUid kUniversalCoordinatedTime = const WKUid(
      "1.2.840.10008.15.1.1",
      "UniversalCoordinatedTime",
      UidType.kSynchronizationFrameOfReference,
      false,
      "Universal Coordinated Time");
  static const List<SynchronizationFrameOfReference> members = const <SynchronizationFrameOfReference>[
    kUniversalCoordinatedTime
  ];

  static const Map<String, SynchronizationFrameOfReference> map =
      const <String, SynchronizationFrameOfReference>{
  "1.2.840.10008.15.1.1": kUniversalCoordinatedTime
  };
}
