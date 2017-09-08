// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'package:uid/src/uid_type.dart';
import 'package:uid/src/well_known/wk_uid.dart';

//TODO: Move all definitions from PS3.6 Table A-2 Well Known Frames of Reference

class FrameOfReference extends WKUid {
  const FrameOfReference(String uid, String keyword, UidType type,
      bool isRetired, String name)
      : super(uid, keyword, type, isRetired, name);

  @override
  String toString() => '$runtimeType($asString)';

  //TODO: Modify to use [members] below
  static FrameOfReference lookup(String v) {
    FrameOfReference wk = FrameOfReference.lookup(v);
    return ((wk != null) && (wk.type == UidType.kSOPClass)) ? wk : null;
  }

  //TODO: add all members to this map
  static const Map<String, FrameOfReference> members = const {};

  static const FrameOfReference kTalairachBrainAtlasFrameOfReference = const FrameOfReference(
      "1.2.840.10008.1.4.1.1",
      "TalairachBrainAtlasFrameofReference",
      UidType.kWellKnownFrameOfReference,
      false,
      "Talairach Brain Atlas Frame of Reference");

  static const FrameOfReference kSPM2T1FrameOfReference = const FrameOfReference(
      "1.2.840.10008.1.4.1.2",
      "SPM2T1FrameofReference",
      UidType.kWellKnownFrameOfReference,
      false,
      "SPM2 T1 Frame of Reference");

  static const FrameOfReference kSPM2T2FrameOfReference = const FrameOfReference(
      "1.2.840.10008.1.4.1.3",
      "SPM2T2FrameofReference",
      UidType.kWellKnownFrameOfReference,
      false,
      "SPM2 T2 Frame of Reference");

  static const FrameOfReference kSPM2PDFrameOfReference = const FrameOfReference(
      "1.2.840.10008.1.4.1.4",
      "SPM2PDFrameofReference",
      UidType.kWellKnownFrameOfReference,
      false,
      "SPM2 PD Frame of Reference");

  static const FrameOfReference kSPM2EPIFrameOfReference = const FrameOfReference(
      "1.2.840.10008.1.4.1.5",
      "SPM2EPIFrameOfReference",
      UidType.kWellKnownFrameOfReference,
      false,
      "SPM2 EPI Frame of Reference");

  static const FrameOfReference kSPM2FILT1FrameOfReference = const FrameOfReference(
      "1.2.840.10008.1.4.1.6",
      "SPM2FILT1FrameofReference",
      UidType.kWellKnownFrameOfReference,
      false,
      "SPM2 FIL T1 Frame of Reference");

  static const FrameOfReference kSPM2PETFrameOfReference = const FrameOfReference(
      "1.2.840.10008.1.4.1.7",
      "SPM2PETFrameofReference",
      UidType.kWellKnownFrameOfReference,
      false,
      "SPM2 PET Frame of Reference");

  static const FrameOfReference kSPM2TRANSMFrameOfReference = const FrameOfReference(
      "1.2.840.10008.1.4.1.8",
      "SPM2TRANSMFrameofReference",
      UidType.kWellKnownFrameOfReference,
      false,
      "SPM2 TRANSM Frame of Reference");

  static const FrameOfReference kSPM2SPECTFrameOfReference = const FrameOfReference(
      "1.2.840.10008.1.4.1.9",
      "SPM2SPECTFrameofReference",
      UidType.kWellKnownFrameOfReference,
      false,
      "SPM2 SPECT Frame of Reference");

  static const FrameOfReference kSPM2GRAYFrameOfReference = const FrameOfReference(
      "1.2.840.10008.1.4.1.10",
      "SPM2GRAYFrameofReference",
      UidType.kWellKnownFrameOfReference,
      false,
      "SPM2 GRAY Frame of Reference");

  static const FrameOfReference kSPM2WHITEFrameOfReference = const FrameOfReference(
      "1.2.840.10008.1.4.1.11",
      "SPM2WHITEFrameofReference",
      UidType.kWellKnownFrameOfReference,
      false,
      "SPM2 WHITE Frame of Reference");

  static const FrameOfReference kSPM2CSFFrameOfReference = const FrameOfReference(
      "1.2.840.10008.1.4.1.12",
      "SPM2CSFFrameofReference",
      UidType.kWellKnownFrameOfReference,
      false,
      "SPM2 CSF Frame of Reference");

  static const FrameOfReference kSPM2BRAINMASKFrameOfReference = const FrameOfReference(
      "1.2.840.10008.1.4.1.13",
      "SPM2BRAINMASKFrameofReference",
      UidType.kWellKnownFrameOfReference,
      false,
      "SPM2 BRAINMASK Frame of Reference");

  static const FrameOfReference kSPM2AVG305T1FrameOfReference = const FrameOfReference(
      "1.2.840.10008.1.4.1.14",
      "SPM2AVG305T1FrameofReference",
      UidType.kWellKnownFrameOfReference,
      false,
      "SPM2 AVG305T1 Frame of Reference");

  static const FrameOfReference kSPM2AVG152T1FrameOfReference = const FrameOfReference(
      "1.2.840.10008.1.4.1.15",
      "SPM2AVG152T1FrameofReference",
      UidType.kWellKnownFrameOfReference,
      false,
      "SPM2 AVG152T1 Frame of Reference");

  static const FrameOfReference kSPM2AVG152T2FrameOfReference = const FrameOfReference(
      "1.2.840.10008.1.4.1.16",
      "SPM2AVG152T2FrameofReference",
      UidType.kWellKnownFrameOfReference,
      false,
      "SPM2 AVG152T2 Frame of Reference");

  static const FrameOfReference kSPM2AVG152PDFrameOfReference = const FrameOfReference(
      "1.2.840.10008.1.4.1.17",
      "SPM2AVG152PDFrameofReference",
      UidType.kWellKnownFrameOfReference,
      false,
      "SPM2 AVG152PD Frame of Reference");

  static const FrameOfReference kSPM2SINGLESUBJT1FrameOfReference = const FrameOfReference(
      "1.2.840.10008.1.4.1.18",
      "SPM2SINGLESUBJT1FrameofReference",
      UidType.kWellKnownFrameOfReference,
      false,
      "SPM2 SINGLESUBJT1 Frame of Reference");

  static const FrameOfReference kICBM452T1FrameOfReference = const FrameOfReference(
      "1.2.840.10008.1.4.2.1",
      "ICBM452T1FrameofReference",
      UidType.kWellKnownFrameOfReference,
      false,
      "ICBM 452 T1 Frame of Reference");

  static const FrameOfReference kICBMSingleSubjectMRIFrameOfReference = const FrameOfReference(
      "1.2.840.10008.1.4.2.2",
      "ICBMSingleSubjectMRIFrameofReference",
      UidType.kWellKnownFrameOfReference,
      false,
      "ICBM Single Subject MRI Frame of Reference");

}
