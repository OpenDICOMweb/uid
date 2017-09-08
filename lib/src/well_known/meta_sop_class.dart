// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'package:uid/src/uid_type.dart';
import 'package:uid/src/well_known/wk_uid.dart';

//TODO: Unit test.

class MetaSopClass extends WKUid {
  const MetaSopClass(
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
  static MetaSopClass lookup(String s) => map[s];

  static const MetaSopClass kDetachedPatientManagementMetaSOPClass_Retired =
      const MetaSopClass(
    "1.2.840.10008.3.1.2.1.4",
    "DetachedPatientManagementMetaSOPClass_Retired",
    UidType.kMetaSOPClass,
    true,
    "Detached Patient Management Meta SOP Class (Retired)",
  );

  static const MetaSopClass kDetachedResultsManagementMetaSOPClass_Retired =
      const MetaSopClass(
    "1.2.840.10008.3.1.2.5.4",
    "DetachedResultsManagementMetaSOPClass_Retired",
    UidType.kMetaSOPClass,
    true,
    "Detached Results Management Meta SOP Class (Retired)",
  );

  static const MetaSopClass kDetachedStudyManagementMetaSOPClass_Retired =
      const MetaSopClass(
          "1.2.840.10008.3.1.2.5.5",
          "DetachedStudyManagementMetaSOPClass_Retired",
          UidType.kMetaSOPClass,
          true,
          "Detached Study Management Meta SOP Class (Retired)");

  static const MetaSopClass kBasicGrayscalePrintManagementMetaSOPClass =
      const MetaSopClass(
          "1.2.840.10008.5.1.1.9",
          "BasicGrayscalePrintManagementMetaSOPClass",
          UidType.kMetaSOPClass,
          false,
          "Basic Grayscale Print Management Meta SOP Class");

  static const MetaSopClass
      kReferencedGrayscalePrintManagementMetaSOPClass_Retired =
      const MetaSopClass(
    "1.2.840.10008.5.1.1.9.1",
    "ReferencedGrayscalePrintManagementMetaSOPClass_Retired",
    UidType.kMetaSOPClass,
    true,
    "Referenced Grayscale Print Management Meta SOP Class (Retired)",
  );

  static const MetaSopClass kBasicColorPrintManagementMetaSOPClass =
      const MetaSopClass(
          "1.2.840.10008.5.1.1.18",
          "BasicColorPrintManagementMetaSOPClass",
          UidType.kMetaSOPClass,
          false,
          "Basic Color Print Management Meta SOP Class");

  static const MetaSopClass
      kReferencedColorPrintManagementMetaSOPClass_Retired =
      const MetaSopClass(
    "1.2.840.10008.5.1.1.18.1",
    "ReferencedColorPrintManagementMetaSOPClass_Retired",
    UidType.kMetaSOPClass,
    true,
    "Referenced Color Print Management Meta SOP Class (Retired)",
  );

  static const MetaSopClass kPullStoredPrintManagementMetaSOPClass_Retired =
      const MetaSopClass(
    "1.2.840.10008.5.1.1.32",
    "PullStoredPrintManagementMetaSOPClass_Retired",
    UidType.kMetaSOPClass,
    true,
    "Pull Stored Print Management Meta SOP Class (Retired)",
  );

  static const MetaSopClass
      kGeneralPurposeWorklistManagementMetaSOPClass_Retired =
      const MetaSopClass(
    "1.2.840.10008.5.1.4.32",
    "GeneralPurposeWorklistManagementMetaSOPClass_Retired",
    UidType.kMetaSOPClass,
    true,
    "General Purpose Worklist Management Meta SOP Class (Retired)",
  );

  static const List<MetaSopClass> members = const <MetaSopClass>[
    kDetachedPatientManagementMetaSOPClass_Retired,
    kDetachedResultsManagementMetaSOPClass_Retired,
    kDetachedStudyManagementMetaSOPClass_Retired,
    kBasicGrayscalePrintManagementMetaSOPClass,
    kReferencedGrayscalePrintManagementMetaSOPClass_Retired,
    kBasicColorPrintManagementMetaSOPClass,
    kReferencedColorPrintManagementMetaSOPClass_Retired,
    kPullStoredPrintManagementMetaSOPClass_Retired,
    kGeneralPurposeWorklistManagementMetaSOPClass_Retired
  ];

  static const Map<String, MetaSopClass> map =
      const <String, MetaSopClass>{
    "1.2.840.10008.3.1.2.1.4": kDetachedPatientManagementMetaSOPClass_Retired,
    "1.2.840.10008.3.1.2.5.4": kDetachedResultsManagementMetaSOPClass_Retired,
    "1.2.840.10008.3.1.2.5.5": kDetachedStudyManagementMetaSOPClass_Retired,
    "1.2.840.10008.5.1.1.9": kBasicGrayscalePrintManagementMetaSOPClass,
    "1.2.840.10008.5.1.1.9.1":
        kReferencedGrayscalePrintManagementMetaSOPClass_Retired,
    "1.2.840.10008.5.1.1.18": kBasicColorPrintManagementMetaSOPClass,
    "1.2.840.10008.5.1.1.18.1":
        kReferencedColorPrintManagementMetaSOPClass_Retired,
    "1.2.840.10008.5.1.1.32": kPullStoredPrintManagementMetaSOPClass_Retired,
    "1.2.840.10008.5.1.4.32":
        kGeneralPurposeWorklistManagementMetaSOPClass_Retired
  };
}
