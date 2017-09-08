// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.
//part of odw.sdk.dictionary.uid;

import 'package:uid/src/uid.dart';
import 'package:uid/src/uid_type.dart';
import 'package:uid/src/well_known/wk_uids_map.dart';

/// Compile time constant definitions for the "Well Known" UIDs from PS 3.6
class WKUid extends Uid {
  final String keyword;
  final UidType type;
  final String name;
  final bool isRetired;

  const WKUid(String value, this.keyword, this.type, this.isRetired, this.name)
      : super.wellKnown(value);

  bool get isNotRetired => !isRetired;

  bool get isTransferSyntax => type == UidType.kTransferSyntax;

  bool get isSOPClass => type == UidType.kSOPClass;

  bool get isMetaSOPClass => type == UidType.kMetaSOPClass;

  bool get isFrameOfReference => type == UidType.kWellKnownFrameOfReference;

  bool get isSOPInstance => type == UidType.kWellKnownSOPInstance;

  bool get isCodingScheme => type == UidType.kCodingScheme;

  @override
  String get info => "UID: $asString (type=$type, name=$name)";

  @override
  String toString() => asString;

  static WKUid lookup(dynamic uid) {
    if (uid is Uid) uid = uid.asString;
    if (uid is String) return wellKnownUids[uid];
    return null;
  }

  //*****   Constant Values   *****

  static const WKUid kDicomUIDRegistry = const WKUid("1.2.840.10008.2.6.1",
      "DICOMUIDRegistry", UidType.kCodingScheme, false, "DICOM UID Registry");

  static const WKUid kDicomControlledTerminology = const WKUid(
    "1.2.840.10008.2.16.4",
    "DICOMControlledTerminology",
    UidType.kCodingScheme,
    false,
    "DICOM Controlled Terminology",
  );

  static const WKUid kDicomApplicationContextName = const WKUid(
    "1.2.840.10008.3.1.1.1",
    "DICOMApplicationContextName",
    UidType.kApplicationContextName,
    false,
    "DICOM Application Context Name",
  );

  static const WKUid kStorageServiceClass = const WKUid(
      "1.2.840.10008.4.2",
      "StorageServiceClass",
      UidType.kServiceClass,
      false,
      "Storage Service Class");

  static const WKUid
      kUnifiedWorklistAndProcedureStepServiceClass_Trial_Retired = const WKUid(
    "1.2.840.10008.5.1.4.34.4",
    "UnifiedWorklistAndProcedureStepServiceClass_Trial_Retired",
    UidType.kServiceClass,
    true,
    "Unified Worklist and Procedure Step Service Class - Trial (Retired)",
  );

  static const WKUid kUnifiedWorklistAndProcedureStepServiceClass = const WKUid(
    "1.2.840.10008.5.1.4.34.6",
    "UnifiedWorklistAndProcedureStepServiceClass",
    UidType.kServiceClass,
    false,
    "Unified Worklist and Procedure Step Service Class",
  );

  static const WKUid kNativeDicomModel = const WKUid(
      "1.2.840.10008.7.1.1",
      "NativeDICOMModel",
      UidType.kApplicationHostingModel,
      false,
      "Native DICOM Model");

  static const WKUid kAbstractMultiDimensionalImageModel = const WKUid(
      "1.2.840.10008.7.1.2",
      "AbstractMulti_DimensionalImageModel",
      UidType.kApplicationHostingModel,
      false,
      "Abstract Multi-Dimensional Image Model");

  static const WKUid kUniversalCoordinatedTime = const WKUid(
      "1.2.840.10008.15.1.1",
      "UniversalCoordinatedTime",
      UidType.kSynchronizationFrameOfReference,
      false,
      "Universal Coordinated Time");
}
