// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See /[package]/AUTHORS file for other contributors.

import 'package:uid/src/uid_type.dart';
import 'package:uid/src/well_known/wk_uid.dart';

//TODO: Finish this class and write Unit test.

class WellKnownSopInstance   extends WKUid {
  const WellKnownSopInstance  (
      String uid, String keyword, UidType type, bool isRetired, String name)
      : super(uid, keyword, type, isRetired, name);

  //TODO: create UidType class
  bool get isSopInstance => true;

  @override
  String get info => '$runtimeType($asString)';

  @override
  String toString() => asString;

  //TODO: when other classes are implemented convert to lookup the uidString
  //in each class.
  static WellKnownSopInstance   lookup(String s) => map[s];

  static const WellKnownSopInstance  kUnifiedWorklistAndProcedureStepSOPInstance =
      const WellKnownSopInstance (
          "1.2.840.10008.5.1.4.34.5",
          "UnifiedWorklistandProcedureStepSOPInstance",
          UidType.kWellKnownSOPInstance,
          false,
          "Unified Worklist and Procedure Step SOP Instance");

  static const WellKnownSopInstance  kSubstanceAdministrationLoggingSOPInstance =
      const WellKnownSopInstance (
          "1.2.840.10008.1.42.1",
          "SubstanceAdministrationLoggingSOPInstance",
          UidType.kWellKnownSOPInstance,
          false,
          "Substance Administration Logging SOP Instance");

  static const WellKnownSopInstance  kProceduralEventLoggingSOPInstance =
      const WellKnownSopInstance (
          "1.2.840.10008.1.40.1",
          "ProceduralEventLoggingSOPInstance",
          UidType.kWellKnownSOPInstance,
          false,
          "Procedural Event Logging SOP Instance");

  static const WellKnownSopInstance  kHotIronColorPaletteSOPInstance =
      const WellKnownSopInstance (
    "1.2.840.10008.1.5.1",
    "HotIronColorPaletteSOPInstance",
    UidType.kWellKnownSOPInstance,
    false,
    "Hot Iron Color Palette SOP "
        "Instance",
  );

  static const WellKnownSopInstance  kPETColorPaletteSOPInstance =
      const WellKnownSopInstance ("1.2.840.10008.1.5.2", "PETColorPaletteSOPInstance",
          UidType.kWellKnownSOPInstance, false, "PET Color Palette SOP Instance");

  static const WellKnownSopInstance  kHotMetalBlueColorPaletteSOPInstance =
      const WellKnownSopInstance (
          "1.2.840.10008.1.5.3",
          "HotMetalBlueColorPaletteSOPInstance",
          UidType.kWellKnownSOPInstance,
          false,
          "Hot Metal Blue Color Palette SOP Instance");

  static const WellKnownSopInstance  kPET20StepColorPaletteSOPInstance =
      const WellKnownSopInstance (
          "1.2.840.10008.1.5.4",
          "PET20StepColorPaletteSOPInstance",
          UidType.kWellKnownSOPInstance,
          false,
          "PET 20 Step Color Palette SOP Instance");

  static const WellKnownSopInstance  kStorageCommitmentPushModelSOPInstance =
      const WellKnownSopInstance (
          "1.2.840.10008.1.20.1.1",
          "StorageCommitmentPushModelSOPInstance",
          UidType.kWellKnownSOPInstance,
          false,
          "Storage Commitment Push Model SOP Instance");

  static const WellKnownSopInstance  kStorageCommitmentPullModelSOPClass_Retired =
      const WellKnownSopInstance (
          "1.2.840.10008.1.20.2",
          "StorageCommitmentPullModelSOPClass_Retired",
          UidType.kSOPClass,
          true,
          "Storage Commitment Pull Model SOP Class (Retired)");

  static const WellKnownSopInstance  kStorageCommitmentPullModelSOPInstance_Retired =
      const WellKnownSopInstance (
    "1.2.840.10008.1.20.2.1",
    "StorageCommitmentPullModelSOPInstance_Retired",
    UidType.kWellKnownSOPInstance,
    true,
    "Storage Commitment Pull Model SOP Instance (Retired)",
  );

  static const WellKnownSopInstance  kPrinterSOPInstance = const WellKnownSopInstance (
      "1.2.840.10008.5.1.1.17",
      "PrinterSOPInstance",
      UidType.kWellKnownSOPInstance,
      false,
      "Printer SOP Instance");

  static const WellKnownSopInstance  kPrinterConfigurationRetrievalSOPInstance =
      const WellKnownSopInstance (
          "1.2.840.10008.5.1.1.17.376",
          "PrinterConfigurationRetrievalSOPInstance",
          UidType.kWellKnownSOPInstance,
          false,
          "Printer Configuration Retrieval SOP Instance");

  static const WellKnownSopInstance  kPrintQueueSOPInstance_Retired =
      const WellKnownSopInstance (
          "1.2.840.10008.5.1.1.25",
          "PrintQueueSOPInstance_Retired",
          UidType.kWellKnownSOPInstance,
          true,
          "Print Queue SOP Instance (Retired)");

  static const List<WellKnownSopInstance > members = const <WellKnownSopInstance >[
    kUnifiedWorklistAndProcedureStepSOPInstance,
    kSubstanceAdministrationLoggingSOPInstance,
    kProceduralEventLoggingSOPInstance,
    kHotIronColorPaletteSOPInstance,
    kPETColorPaletteSOPInstance,
    kHotMetalBlueColorPaletteSOPInstance,
    kPET20StepColorPaletteSOPInstance,
    kStorageCommitmentPushModelSOPInstance,
    kStorageCommitmentPullModelSOPClass_Retired,
    kStorageCommitmentPullModelSOPInstance_Retired,
    kPrinterSOPInstance,
    kPrinterConfigurationRetrievalSOPInstance,
    kPrintQueueSOPInstance_Retired
  ];

  static const Map<String, WellKnownSopInstance > map = const <String, WellKnownSopInstance >{
    "1.2.840.10008.5.1.4.34.5": kUnifiedWorklistAndProcedureStepSOPInstance,
    "1.2.840.10008.1.42.1": kSubstanceAdministrationLoggingSOPInstance,
    "1.2.840.10008.1.40.1": kProceduralEventLoggingSOPInstance,
    "1.2.840.10008.1.5.1": kHotIronColorPaletteSOPInstance,
    "1.2.840.10008.1.5.2": kPETColorPaletteSOPInstance,
    "1.2.840.10008.1.5.3": kHotMetalBlueColorPaletteSOPInstance,
    "1.2.840.10008.1.5.4": kPET20StepColorPaletteSOPInstance,
    "1.2.840.10008.1.20.1.1": kStorageCommitmentPushModelSOPInstance,
    "1.2.840.10008.1.20.2": kStorageCommitmentPullModelSOPClass_Retired,
    "1.2.840.10008.1.20.2.1": kStorageCommitmentPullModelSOPInstance_Retired,
    "1.2.840.10008.5.1.1.17": kPrinterSOPInstance,
    "1.2.840.10008.5.1.1.17.376": kPrinterConfigurationRetrievalSOPInstance,
    "1.2.840.10008.5.1.1.25": kPrintQueueSOPInstance_Retired
  };
}
