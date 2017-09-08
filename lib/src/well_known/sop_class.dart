// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'package:uid/src/uid_type.dart';
import 'package:uid/src/well_known/wk_uid.dart';

//TODO: Finish this class and write Unit test.

class SopClass extends WKUid {
  const SopClass(
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
  static SopClass lookup(String uidString) => members[uidString];

  //TODO: verify that all SOPClass Definitions are present
  static const SopClass kVerificationSOPClass = const SopClass(
      "1.2.840.10008.1.1",
      "VerificationSOPClass",
      UidType.kSOPClass,
      false,
      "Verification SOP Class");

  static const SopClass kMediaStorageDirectoryStorage = const SopClass(
      "1.2.840.10008.1.3.10",
      "MediaStorageDirectoryStorage",
      UidType.kSOPClass,
      false,
      "Media Storage Directory Storage");

  static const SopClass kBasicStudyContentNotificationSOPClass_Retired =
      const SopClass(
          "1.2.840.10008.1.9",
          "BasicStudyContentNotificationSOPClass_Retired",
          UidType.kSOPClass,
          true,
          "Basic Study Content Notification SOP Class (Retired)");
  static const SopClass kStorageCommitmentPushModelSOPClass = const SopClass(
      "1.2.840.10008.1.20.1",
      "StorageCommitmentPushModelSOPClass",
      UidType.kSOPClass,
      true,
      "Storage Commitment Push Model SOP Class");

  static const SopClass kStorageCommitmentPullModelSOPClass_Retired =
      const SopClass(
          "1.2.840.10008.1.20.2",
          "StorageCommitmentPullModelSOPClass_Retired",
          UidType.kSOPClass,
          true,
          "Storage Commitment Pull Model SOP Class (Retired)");

  static const SopClass kProceduralEventLoggingSOPClass = const SopClass(
      "1.2.840.10008.1.40",
      "ProceduralEventLoggingSOPClass",
      UidType.kSOPClass,
      false,
      "Procedural Event Logging SOP Class");

  static const SopClass kSubstanceAdministrationLoggingSOPClass =
      const SopClass(
          "1.2.840.10008.1.42",
          "SubstanceAdministrationLoggingSOPClass",
          UidType.kSOPClass,
          false,
          "Substance Administration Logging SOP Class");
  static const SopClass kDetachedPatientManagementSOPClass_Retired =
      const SopClass(
          "1.2.840.10008.3.1.2.1.1",
          "DetachedPatientManagementSOPClass_Retired",
          UidType.kSOPClass,
          true,
          "Detached Patient Management SOP Class (Retired)");

  static const SopClass kDetachedVisitManagementSOPClass_Retired =
      const SopClass(
          "1.2.840.10008.3.1.2.2.1",
          "DetachedVisitManagementSOPClass_Retired",
          UidType.kSOPClass,
          true,
          "Detached Visit Management SOP Class (Retired)");
  static const SopClass kDetachedStudyManagementSOPClass_Retired =
      const SopClass(
          "1.2.840.10008.3.1.2.3.1",
          "DetachedStudyManagementSOPClass_Retired",
          UidType.kSOPClass,
          true,
          "Detached Study Management SOP Class (Retired)");
  static const SopClass kStudyComponentManagementSOPClass_Retired =
      const SopClass(
          "1.2.840.10008.3.1.2.3.2",
          "StudyComponentManagementSOPClass_Retired",
          UidType.kSOPClass,
          true,
          "Study Component Management SOP Class (Retired)");
  static const SopClass kModalityPerformedProcedureStepSOPClass =
      const SopClass(
          "1.2.840.10008.3.1.2.3.3",
          "ModalityPerformedProcedureStepSOPClass",
          UidType.kSOPClass,
          false,
          "Modality Performed Procedure Step SOP Class");
  static const SopClass kModalityPerformedProcedureStepRetrieveSOPClass =
      const SopClass(
    "1.2.840.10008.3.1.2.3.4",
    "ModalityPerformedProcedureStepRetrieveSOPClass",
    UidType.kSOPClass,
    false,
    "Modality Performed Procedure Step Retrieve SOP Class",
  );
  static const SopClass kModalityPerformedProcedureStepNotificationSOPClass =
      const SopClass(
    "1.2.840.10008.3.1.2.3.5",
    "ModalityPerformedProcedureStepNotificationSOPClass",
    UidType.kSOPClass,
    false,
    "Modality Performed Procedure Step Notification SOP Class",
  );
  static const SopClass kDetachedResultsManagementSOPClass_Retired =
      const SopClass(
          "1.2.840.10008.3.1.2.5.1",
          "DetachedResultsManagementSOPClass_Retired",
          UidType.kSOPClass,
          true,
          "Detached Results Management SOP Class (Retired)");
  static const SopClass kDetachedInterpretationManagementSOPClass_Retired =
      const SopClass(
    "1.2.840.10008.3.1.2.6.1",
    "DetachedInterpretationManagementSOPClass_Retired",
    UidType.kSOPClass,
    true,
    "Detached Interpretation Management SOP Class (Retired)",
  );

  static const SopClass kBasicFilmSessionSOPClass = const SopClass(
      "1.2.840.10008.5.1.1.1",
      "BasicFilmSessionSOPClass",
      UidType.kSOPClass,
      false,
      "Basic Film Session SOP Class");
  static const SopClass kBasicFilmBoxSOPClass = const SopClass(
      "1.2.840.10008.5.1.1.2",
      "BasicFilmBoxSOPClass",
      UidType.kSOPClass,
      false,
      "Basic Film Box SOP Class");
  static const SopClass kBasicGrayscaleImageBoxSOPClass = const SopClass(
      "1.2.840.10008.5.1.1.4",
      "BasicGrayscaleImageBoxSOPClass",
      UidType.kSOPClass,
      false,
      "Basic Grayscale Image Box SOP Class");
  static const SopClass kBasicColorImageBoxSOPClass = const SopClass(
      "1.2.840.10008.5.1.1.4.1",
      "BasicColorImageBoxSOPClass",
      UidType.kSOPClass,
      false,
      "Basic Color Image Box SOP Class");
  static const SopClass kReferencedImageBoxSOPClass_Retired = const SopClass(
      "1.2.840.10008.5.1.1.4.2",
      "ReferencedImageBoxSOPClass_Retired",
      UidType.kSOPClass,
      true,
      "Referenced Image Box SOP Class (Retired)");
  static const SopClass kPrintJobSOPClass = const SopClass(
      "1.2.840.10008.5.1.1.14",
      "PrintJobSOPClass",
      UidType.kSOPClass,
      false,
      "Print Job SOP Class");
  static const SopClass kBasicAnnotationBoxSOPClass = const SopClass(
      "1.2.840.10008.5.1.1.15",
      "BasicAnnotationBoxSOPClass",
      UidType.kSOPClass,
      false,
      "Basic Annotation Box SOP Class");
  static const SopClass kPrinterSOPClass = const SopClass(
      "1.2.840.10008.5.1.1.16",
      "PrinterSOPClass",
      UidType.kSOPClass,
      false,
      "Printer SOP Class");
  static const SopClass kPrinterConfigurationRetrievalSOPClass = const SopClass(
      "1.2.840.10008.5.1.1.16.376",
      "PrinterConfigurationRetrievalSOPClass",
      UidType.kSOPClass,
      false,
      "Printer Configuration Retrieval SOP Class");
  static const SopClass kVOILUTBoxSOPClass = const SopClass(
      "1.2.840.10008.5.1.1.22",
      "VOILUTBoxSOPClass",
      UidType.kSOPClass,
      false,
      "VOI LUT Box SOP Class");
  static const SopClass kPresentationLUTSOPClass = const SopClass(
      "1.2.840.10008.5.1.1.23",
      "PresentationLUTSOPClass",
      UidType.kSOPClass,
      false,
      "Presentation LUT SOP Class");
  static const SopClass kImageOverlayBoxSOPClass_Retired = const SopClass(
      "1.2.840.10008.5.1.1.24",
      "ImageOverlayBoxSOPClass_Retired",
      UidType.kSOPClass,
      true,
      "Image Overlay Box SOP Class (Retired)");
  static const SopClass kBasicPrintImageOverlayBoxSOPClass_Retired =
      const SopClass(
          "1.2.840.10008.5.1.1.24.1",
          "BasicPrintImageOverlayBoxSOPClass_Retired",
          UidType.kSOPClass,
          true,
          "Basic Print Image Overlay Box SOP Class (Retired)");

  static const SopClass kPrintQueueManagementSOPClass_Retired = const SopClass(
      "1.2.840.10008.5.1.1.26",
      "PrintQueueManagementSOPClass_Retired",
      UidType.kSOPClass,
      true,
      "Print Queue Management SOP Class (Retired)");
  static const SopClass kStoredPrintStorageSOPClass_Retired = const SopClass(
      "1.2.840.10008.5.1.1.27",
      "StoredPrintStorageSOPClass_Retired",
      UidType.kSOPClass,
      true,
      "Stored Print Storage SOP Class (Retired)");
  static const SopClass kHardcopyGrayscaleImageStorageSOPClass_Retired =
      const SopClass(
    "1.2.840.10008.5.1.1.29",
    "HardcopyGrayscaleImageStorageSOPClass_Retired",
    UidType.kSOPClass,
    true,
    "Hardcopy Grayscale Image Storage SOP Class (Retired)",
  );
  static const SopClass kHardcopyColorImageStorageSOPClass_Retired =
      const SopClass(
          "1.2.840.10008.5.1.1.30",
          "HardcopyColorImageStorageSOPClass_Retired",
          UidType.kSOPClass,
          true,
          "Hardcopy Color Image Storage SOP Class (Retired)");
  static const SopClass kPullPrintRequestSOPClass_Retired = const SopClass(
      "1.2.840.10008.5.1.1.31",
      "PullPrintRequestSOPClass_Retired",
      UidType.kSOPClass,
      true,
      "Pull Print Request SOP Class (Retired)");
  static const SopClass kMediaCreationManagementSOPClassUID = const SopClass(
      "1.2.840.10008.5.1.1.33",
      "MediaCreationManagementSOPClassUID",
      UidType.kSOPClass,
      false,
      "Media Creation Management SOP Class UID");
  static const SopClass kComputedRadiographyImageStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.1",
      "ComputedRadiographyImageStorage",
      UidType.kSOPClass,
      false,
      "Computed Radiography Image Storage");
  static const SopClass kDigitalX_RayImageStorage_ForPresentation =
      const SopClass(
    "1.2.840.10008.5.1.4.1.1.1.1",
    "DigitalX_RayImageStorage_ForPresentation",
    UidType.kSOPClass,
    false,
    "Digital X-Ray Image Storage - For Presentation",
  );
  static const SopClass kDigitalX_RayImageStorage_ForProcessing =
      const SopClass(
    "1.2.840.10008.5.1.4.1.1.1.1.1",
    "DigitalX_RayImageStorage_ForProcessing",
    UidType.kSOPClass,
    false,
    "Digital X-Ray Image Storage - For Processing",
  );
  static const SopClass kDigitalMammographyX_RayImageStorage_ForPresentation =
      const SopClass(
    "1.2.840.10008.5.1.4.1.1.1.2",
    "DigitalMammographyX_RayImageStorage_ForPresentation",
    UidType.kSOPClass,
    false,
    "Digital Mammography X-Ray Image Storage - For Presentation",
  );
  static const SopClass kDigitalMammographyX_RayImageStorage_ForProcessing =
      const SopClass(
    "1.2.840.10008.5.1.4.1.1.1.2.1",
    "DigitalMammographyX_RayImageStorage_ForProcessing",
    UidType.kSOPClass,
    false,
    "Digital Mammography X-Ray Image Storage - For Processing",
  );
  static const SopClass kDigitalIntra_OralX_RayImageStorage_ForPresentation =
      const SopClass(
    "1.2.840.10008.5.1.4.1.1.1.3",
    "DigitalIntra_OralX_RayImageStorage_ForPresentation",
    UidType.kSOPClass,
    false,
    "Digital Intra-Oral X-Ray Image Storage - For Presentation",
  );
  static const SopClass kDigitalIntra_OralX_RayImageStorage_ForProcessing =
      const SopClass(
    "1.2.840.10008.5.1.4.1.1.1.3.1",
    "DigitalIntra_OralX_RayImageStorage_ForProcessing",
    UidType.kSOPClass,
    false,
    "Digital Intra-Oral X-Ray Image Storage - For Processing",
  );
  static const SopClass kCTImageStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.2",
      "CTImageStorage",
      UidType.kSOPClass,
      false,
      "CT Image Storage");
  static const SopClass kEnhancedCTImageStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.2.1",
      "EnhancedCTImageStorage",
      UidType.kSOPClass,
      false,
      "Enhanced CT Image Storage");
  static const SopClass kLegacyConvertedEnhancedCTImageStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.2.2",
      "LegacyConvertedEnhancedCTImageStorage",
      UidType.kSOPClass,
      false,
      "Legacy Converted Enhanced CT Image Storage");
  static const SopClass kUltrasoundMulti_frameImageStorage_Retired =
      const SopClass(
          "1.2.840.10008.5.1.4.1.1.3",
          "UltrasoundMulti_frameImageStorage_Retired",
          UidType.kSOPClass,
          true,
          "Ultrasound Multi-frame Image Storage (Retired)");
  static const SopClass kUltrasoundMulti_frameImageStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.3.1",
      "UltrasoundMulti_frameImageStorage",
      UidType.kSOPClass,
      false,
      "Ultrasound Multi-frame Image Storage");
  static const SopClass kMRImageStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.4",
      "MRImageStorage",
      UidType.kSOPClass,
      false,
      "MR Image Storage");
  static const SopClass kEnhancedMRImageStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.4.1",
      "EnhancedMRImageStorage",
      UidType.kSOPClass,
      false,
      "Enhanced MR Image Storage");
  static const SopClass kMRSpectroscopyStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.4.2",
      "MRSpectroscopyStorage",
      UidType.kSOPClass,
      false,
      "MR Spectroscopy Storage");
  static const SopClass kEnhancedMRColorImageStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.4.3",
      "EnhancedMRColorImageStorage",
      UidType.kSOPClass,
      false,
      "Enhanced MR Color Image Storage");
  static const SopClass kLegacyConvertedEnhancedMRImageStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.4.4",
      "LegacyConvertedEnhancedMRImageStorage",
      UidType.kSOPClass,
      false,
      "Legacy Converted Enhanced MR Image Storage");
  static const SopClass kNuclearMedicineImageStorage_Retired = const SopClass(
      "1.2.840.10008.5.1.4.1.1.5",
      "NuclearMedicineImageStorage_Retired",
      UidType.kSOPClass,
      true,
      "Nuclear Medicine Image Storage (Retired)");
  static const SopClass kUltrasoundImageStorage_Retired = const SopClass(
      "1.2.840.10008.5.1.4.1.1.6",
      "UltrasoundImageStorage_Retired",
      UidType.kSOPClass,
      true,
      "Ultrasound Image Storage (Retired)");
  static const SopClass kUltrasoundImageStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.6.1",
      "UltrasoundImageStorage",
      UidType.kSOPClass,
      false,
      "Ultrasound Image Storage");
  static const SopClass kEnhancedUSVolumeStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.6.2",
      "EnhancedUSVolumeStorage",
      UidType.kSOPClass,
      false,
      "Enhanced US Volume Storage");
  static const SopClass kSecondaryCaptureImageStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.7",
      "SecondaryCaptureImageStorage",
      UidType.kSOPClass,
      false,
      "Secondary Capture Image Storage");
  static const SopClass kMulti_frameSingleBitSecondaryCaptureImageStorage =
      const SopClass(
    "1.2.840.10008.5.1.4.1.1.7.1",
    "Multi_frameSingleBitSecondaryCaptureImageStorage",
    UidType.kSOPClass,
    false,
    "Multi-frame Single Bit Secondary Capture Image Storage",
  );
  static const SopClass kMulti_frameGrayscaleByteSecondaryCaptureImageStorage =
      const SopClass(
    "1.2.840.10008.5.1.4.1.1.7.2",
    "Multi_frameGrayscaleByteSecondaryCaptureImageStorage",
    UidType.kSOPClass,
    false,
    "Multi-frame Grayscale Byte Secondary Capture Image Storage",
  );
  static const SopClass kMulti_frameGrayscaleWordSecondaryCaptureImageStorage =
      const SopClass(
    "1.2.840.10008.5.1.4.1.1.7.3",
    "Multi_frameGrayscaleWordSecondaryCaptureImageStorage",
    UidType.kSOPClass,
    false,
    "Multi-frame Grayscale Word Secondary Capture Image Storage",
  );
  static const SopClass kMulti_frameTrueColorSecondaryCaptureImageStorage =
      const SopClass(
    "1.2.840.10008.5.1.4.1.1.7.4",
    "Multi_frameTrueColorSecondaryCaptureImageStorage",
    UidType.kSOPClass,
    false,
    "Multi-frame True Color Secondary Capture Image Storage",
  );
  static const SopClass kStandaloneOverlayStorage_Retired = const SopClass(
      "1.2.840.10008.5.1.4.1.1.8",
      "StandaloneOverlayStorage_Retired",
      UidType.kSOPClass,
      true,
      "Standalone Overlay Storage (Retired)");
  static const SopClass kStandaloneCurveStorage_Retired = const SopClass(
      "1.2.840.10008.5.1.4.1.1.9",
      "StandaloneCurveStorage_Retired",
      UidType.kSOPClass,
      true,
      "Standalone Curve Storage (Retired)");
  static const SopClass kWaveformStorage_Trial_Retired = const SopClass(
      "1.2.840.10008.5.1.4.1.1.9.1",
      "WaveformStorage_Trial_Retired",
      UidType.kSOPClass,
      true,
      "Waveform Storage - Trial (Retired)");
  static const SopClass ktwelve_lead_12ECGWaveformStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.9.1.1",
      "twelve_lead_12ECGWaveformStorage",
      UidType.kSOPClass,
      false,
      "twelve-lead(12) ECG Waveform Storage");
  static const SopClass kGeneralECGWaveformStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.9.1.2",
      "GeneralECGWaveformStorage",
      UidType.kSOPClass,
      false,
      "General ECG Waveform Storage");
  static const SopClass kAmbulatoryECGWaveformStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.9.1.3",
      "AmbulatoryECGWaveformStorage",
      UidType.kSOPClass,
      false,
      "Ambulatory ECG Waveform Storage");
  static const SopClass kHemodynamicWaveformStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.9.2.1",
      "HemodynamicWaveformStorage",
      UidType.kSOPClass,
      false,
      "Hemodynamic Waveform Storage");
  static const SopClass kCardiacElectrophysiologyWaveformStorage =
      const SopClass(
    "1.2.840.10008.5.1.4.1.1.9.3.1",
    "CardiacElectrophysiologyWaveformStorage",
    UidType.kSOPClass,
    false,
    "Cardiac Electrophysiology Waveform Storage",
  );
  static const SopClass kBasicVoiceAudioWaveformStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.9.4.1",
      "BasicVoiceAudioWaveformStorage",
      UidType.kSOPClass,
      false,
      "Basic Voice Audio Waveform Storage");
  static const SopClass kGeneralAudioWaveformStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.9.4.2",
      "GeneralAudioWaveformStorage",
      UidType.kSOPClass,
      false,
      "General Audio Waveform Storage");
  static const SopClass kArterialPulseWaveformStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.9.5.1",
      "ArterialPulseWaveformStorage",
      UidType.kSOPClass,
      false,
      "Arterial Pulse Waveform Storage");
  static const SopClass kRespiratoryWaveformStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.9.6.1",
      "RespiratoryWaveformStorage",
      UidType.kSOPClass,
      false,
      "Respiratory Waveform Storage");
  static const SopClass kStandaloneModalityLUTStorage_Retired = const SopClass(
      "1.2.840.10008.5.1.4.1.1.10",
      "StandaloneModalityLUTStorage_Retired",
      UidType.kSOPClass,
      true,
      "Standalone Modality LUT Storage (Retired)");
  static const SopClass kStandaloneVOILUTStorage_Retired = const SopClass(
      "1.2.840.10008.5.1.4.1.1.11",
      "StandaloneVOILUTStorage_Retired",
      UidType.kSOPClass,
      true,
      "Standalone VOI LUT Storage (Retired)");
  static const SopClass kGrayscaleSoftcopyPresentationStateStorageSOPClass =
      const SopClass(
    "1.2.840.10008.5.1.4.1.1.11.1",
    "GrayscaleSoftcopyPresentationStateStorageSOPClass",
    UidType.kSOPClass,
    false,
    "Grayscale Softcopy Presentation State Storage SOP Class",
  );
  static const SopClass kColorSoftcopyPresentationStateStorageSOPClass =
      const SopClass(
    "1.2.840.10008.5.1.4.1.1.11.2",
    "ColorSoftcopyPresentationStateStorageSOPClass",
    UidType.kSOPClass,
    false,
    "Color Softcopy Presentation State Storage SOP Class",
  );
  static const SopClass kPseudo_ColorSoftcopyPresentationStateStorageSOPClass =
      const SopClass(
    "1.2.840.10008.5.1.4.1.1.11.3",
    "Pseudo_ColorSoftcopyPresentationStateStorageSOPClass",
    UidType.kSOPClass,
    false,
    "Pseudo-Color Softcopy Presentation State Storage SOP Class",
  );
  static const SopClass kBlendingSoftcopyPresentationStateStorageSOPClass =
      const SopClass(
    "1.2.840.10008.5.1.4.1.1.11.4",
    "BlendingSoftcopyPresentationStateStorageSOPClass",
    UidType.kSOPClass,
    false,
    "Blending Softcopy Presentation State Storage SOP Class",
  );
  static const SopClass kXA_XRFGrayscaleSoftcopyPresentationStateStorage =
      const SopClass(
    "1.2.840.10008.5.1.4.1.1.11.5",
    "XA_XRFGrayscaleSoftcopyPresentationStateStorage",
    UidType.kSOPClass,
    false,
    "XA/XRF Grayscale Softcopy Presentation State Storage",
  );
  static const SopClass kX_RayAngiographicImageStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.12.1",
      "X_RayAngiographicImageStorage",
      UidType.kSOPClass,
      false,
      "X-Ray Angiographic Image Storage");
  static const SopClass kEnhancedXAImageStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.12.1.1",
      "EnhancedXAImageStorage",
      UidType.kSOPClass,
      false,
      "Enhanced XA Image Storage");
  static const SopClass kX_RayRadiofluoroscopicImageStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.12.2",
      "X_RayRadiofluoroscopicImageStorage",
      UidType.kSOPClass,
      false,
      "X-Ray Radiofluoroscopic Image Storage");
  static const SopClass kEnhancedXRFImageStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.12.2.1",
      "EnhancedXRFImageStorage",
      UidType.kSOPClass,
      false,
      "Enhanced XRF Image Storage");
  static const SopClass kX_RayAngiographicBi_PlaneImageStorage_Retired =
      const SopClass(
    "1.2.840.10008.5.1.4.1.1.12.3",
    "X_RayAngiographicBi_PlaneImageStorage_Retired",
    UidType.kSOPClass,
    true,
    "X-Ray Angiographic Bi-Plane Image Storage (Retired)",
  );
  static const SopClass kX_Ray3DAngiographicImageStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.13.1.1",
      "X_Ray3DAngiographicImageStorage",
      UidType.kSOPClass,
      false,
      "X-Ray 3D Angiographic Image Storage");
  static const SopClass kX_Ray3DCraniofacialImageStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.13.1.2",
      "X_Ray3DCraniofacialImageStorage",
      UidType.kSOPClass,
      false,
      "X-Ray 3D Craniofacial Image Storage");
  static const SopClass kBreastTomosynthesisImageStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.13.1.3",
      "BreastTomosynthesisImageStorage",
      UidType.kSOPClass,
      false,
      "Breast Tomosynthesis Image Storage");
  static const SopClass
      kIntravascularOpticalCoherenceTomographyImageStorage_ForPresentation =
      const SopClass(
    "1.2.840.10008.5.1.4.1.1.14.1",
    "IntravascularOpticalCoherenceTomographyImageStorage_ForPresentation",
    UidType.kSOPClass,
    false,
    "Intravascular Optical Coherence Tomography Image Storage "
        "- For Presentation",
  );
  static const SopClass
      kIntravascularOpticalCoherenceTomographyImageStorage_ForProcessing =
      const SopClass(
    "1.2.840.10008.5.1.4.1.1.14.2",
    "IntravascularOpticalCoherenceTomographyImageStorage_ForProcessing",
    UidType.kSOPClass,
    false,
    "Intravascular Optical Coherence Tomography Image Storage - For Processing",
  );
  static const SopClass kNuclearMedicineImageStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.20",
      "NuclearMedicineImageStorage",
      UidType.kSOPClass,
      false,
      "Nuclear Medicine Image Storage");
  static const SopClass kRawDataStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.66",
      "RawDataStorage",
      UidType.kSOPClass,
      false,
      "Raw Data Storage");
  static const SopClass kSpatialRegistrationStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.66.1",
      "SpatialRegistrationStorage",
      UidType.kSOPClass,
      false,
      "Spatial Registration Storage");
  static const SopClass kSpatialFiducialsStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.66.2",
      "SpatialFiducialsStorage",
      UidType.kSOPClass,
      false,
      "Spatial Fiducials Storage");
  static const SopClass kDeformableSpatialRegistrationStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.66.3",
      "DeformableSpatialRegistrationStorage",
      UidType.kSOPClass,
      false,
      "Deformable Spatial Registration Storage");
  static const SopClass kSegmentationStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.66.4",
      "SegmentationStorage",
      UidType.kSOPClass,
      false,
      "Segmentation Storage");
  static const SopClass kSurfaceSegmentationStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.66.5",
      "SurfaceSegmentationStorage",
      UidType.kSOPClass,
      false,
      "Surface Segmentation Storage");
  static const SopClass kRealWorldValueMappingStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.67",
      "RealWorldValueMappingStorage",
      UidType.kSOPClass,
      false,
      "Real World Value Mapping Storage");
  static const SopClass kSurfaceScanMeshStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.68.1",
      "SurfaceScanMeshStorage",
      UidType.kSOPClass,
      false,
      "Surface Scan Mesh Storage");
  static const SopClass kSurfaceScanPointCloudStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.68.2",
      "SurfaceScanPointCloudStorage",
      UidType.kSOPClass,
      false,
      "Surface Scan Point Cloud Storage");
  static const SopClass kVLImageStorage_Trial_Retired = const SopClass(
      "1.2.840.10008.5.1.4.1.1.77.1",
      "VLImageStorage_Trial_Retired",
      UidType.kSOPClass,
      true,
      "VL Image Storage - Trial (Retired)");
  static const SopClass kVLMulti_frameImageStorage_Trial_Retired =
      const SopClass(
    "1.2.840.10008.5.1.4.1.1.77.2",
    "VLMulti_frameImageStorage_Trial_Retired",
    UidType.kSOPClass,
    true,
    "VL Multi-frame Image Storage - Trial (Retired)",
  );
  static const SopClass kVLEndoscopicImageStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.77.1.1",
      "VLEndoscopicImageStorage",
      UidType.kSOPClass,
      false,
      "VL Endoscopic Image Storage");
  static const SopClass kVideoEndoscopicImageStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.77.1.1.1",
      "VideoEndoscopicImageStorage",
      UidType.kSOPClass,
      false,
      "Video Endoscopic Image Storage");
  static const SopClass kVLMicroscopicImageStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.77.1.2",
      "VLMicroscopicImageStorage",
      UidType.kSOPClass,
      false,
      "VL Microscopic Image Storage");
  static const SopClass kVideoMicroscopicImageStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.77.1.2.1",
      "VideoMicroscopicImageStorage",
      UidType.kSOPClass,
      false,
      "Video Microscopic Image Storage");
  static const SopClass kVLSlide_CoordinatesMicroscopicImageStorage =
      const SopClass(
    "1.2.840.10008.5.1.4.1.1.77.1.3",
    "VLSlide_CoordinatesMicroscopicImageStorage",
    UidType.kSOPClass,
    false,
    "VL Slide-Coordinates Microscopic Image Storage",
  );
  static const SopClass kVLPhotographicImageStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.77.1.4",
      "VLPhotographicImageStorage",
      UidType.kSOPClass,
      false,
      "VL Photographic Image Storage");
  static const SopClass kVideoPhotographicImageStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.77.1.4.1",
      "VideoPhotographicImageStorage",
      UidType.kSOPClass,
      false,
      "Video Photographic Image Storage");
  static const SopClass kOphthalmicPhotography8BitImageStorage = const SopClass(
    "1.2.840.10008.5.1.4.1.1.77.1.5.1",
    "OphthalmicPhotography8BitImageStorage",
    UidType.kSOPClass,
    false,
    "Ophthalmic Photography 8 Bit Image Storage",
  );
  static const SopClass kOphthalmicPhotography16BitImageStorage =
      const SopClass(
    "1.2.840.10008.5.1.4.1.1.77.1.5.2",
    "OphthalmicPhotography16BitImageStorage",
    UidType.kSOPClass,
    false,
    "Ophthalmic Photography 16 Bit Image Storage",
  );
  static const SopClass kStereometricRelationshipStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.77.1.5.3",
      "StereometricRelationshipStorage",
      UidType.kSOPClass,
      false,
      "Stereometric Relationship Storage");
  static const SopClass kOphthalmicTomographyImageStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.77.1.5.4",
      "OphthalmicTomographyImageStorage",
      UidType.kSOPClass,
      false,
      "Ophthalmic Tomography Image Storage");
  static const SopClass kVLWholeSlideMicroscopyImageStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.77.1.6",
      "VLWholeSlideMicroscopyImageStorage",
      UidType.kSOPClass,
      false,
      "VL Whole Slide Microscopy Image Storage");
  static const SopClass kLensometryMeasurementsStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.78.1",
      "LensometryMeasurementsStorage",
      UidType.kSOPClass,
      false,
      "Lensometry Measurements Storage");
  static const SopClass kAutorefractionMeasurementsStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.78.2",
      "AutorefractionMeasurementsStorage",
      UidType.kSOPClass,
      false,
      "Autorefraction Measurements Storage");
  static const SopClass kKeratometryMeasurementsStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.78.3",
      "KeratometryMeasurementsStorage",
      UidType.kSOPClass,
      false,
      "Keratometry Measurements Storage");
  static const SopClass kSubjectiveRefractionMeasurementsStorage =
      const SopClass(
    "1.2.840.10008.5.1.4.1.1.78.4",
    "SubjectiveRefractionMeasurementsStorage",
    UidType.kSOPClass,
    false,
    "Subjective Refraction Measurements Storage",
  );
  static const SopClass kVisualAcuityMeasurementsStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.78.5",
      "VisualAcuityMeasurementsStorage",
      UidType.kSOPClass,
      false,
      "Visual Acuity Measurements Storage");
  static const SopClass kSpectaclePrescriptionReportStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.78.6",
      "SpectaclePrescriptionReportStorage",
      UidType.kSOPClass,
      false,
      "Spectacle Prescription Report Storage");
  static const SopClass kOphthalmicAxialMeasurementsStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.78.7",
      "OphthalmicAxialMeasurementsStorage",
      UidType.kSOPClass,
      false,
      "Ophthalmic Axial Measurements Storage");
  static const SopClass kIntraocularLensCalculationsStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.78.8",
      "IntraocularLensCalculationsStorage",
      UidType.kSOPClass,
      false,
      "Intraocular Lens Calculations Storage");
  static const SopClass kMacularGridThicknessandVolumeReportStorage =
      const SopClass(
    "1.2.840.10008.5.1.4.1.1.79.1",
    "MacularGridThicknessandVolumeReportStorage",
    UidType.kSOPClass,
    false,
    "Macular Grid Thickness and Volume Report Storage",
  );
  static const SopClass
      kOphthalmicVisualFieldStaticPerimetryMeasurementsStorage = const SopClass(
    "1.2.840.10008.5.1.4.1.1.80.1",
    "OphthalmicVisualFieldStaticPerimetryMeasurementsStorage",
    UidType.kSOPClass,
    false,
    "Ophthalmic Visual Field Static Perimetry Measurements Storage",
  );
  static const SopClass kOphthalmicThicknessMapStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.81.1",
      "OphthalmicThicknessMapStorage",
      UidType.kSOPClass,
      false,
      "Ophthalmic Thickness Map Storage");
  static const SopClass kCornealTopographyMapStorage = const SopClass(
      "11.2.840.10008.5.1.4.1.1.82.1",
      "CornealTopographyMapStorage",
      UidType.kSOPClass,
      false,
      "Corneal Topography Map Storage");
  static const SopClass kTextSRStorage_Trial_Retired = const SopClass(
      "1.2.840.10008.5.1.4.1.1.88.1",
      "TextSRStorage_Trial_Retired",
      UidType.kSOPClass,
      true,
      "Text SR Storage - Trial (Retired)");
  static const SopClass kAudioSRStorage_Trial_Retired = const SopClass(
      "1.2.840.10008.5.1.4.1.1.88.2",
      "AudioSRStorage_Trial_Retired",
      UidType.kSOPClass,
      true,
      "Audio SR Storage - Trial (Retired)");
  static const SopClass kDetailSRStorage_Trial_Retired = const SopClass(
      "1.2.840.10008.5.1.4.1.1.88.3",
      "DetailSRStorage_Trial_Retired",
      UidType.kSOPClass,
      true,
      "Detail SR Storage - Trial (Retired)");
  static const SopClass kComprehensiveSRStorage_Trial_Retired = const SopClass(
      "1.2.840.10008.5.1.4.1.1.88.4",
      "ComprehensiveSRStorage_Trial_Retired",
      UidType.kSOPClass,
      true,
      "Comprehensive SR Storage - Trial (Retired)");
  static const SopClass kBasicTextSRStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.88.11",
      "BasicTextSRStorage",
      UidType.kSOPClass,
      false,
      "Basic Text SR Storage");
  static const SopClass kEnhancedSRStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.88.22",
      "EnhancedSRStorage",
      UidType.kSOPClass,
      false,
      "Enhanced SR Storage");
  static const SopClass kComprehensiveSRStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.88.33",
      "ComprehensiveSRStorage",
      UidType.kSOPClass,
      false,
      "Comprehensive SR Storage");
  static const SopClass kComprehensive3DSRStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.88.34",
      "Comprehensive3DSRStorage",
      UidType.kSOPClass,
      false,
      "Comprehensive 3D SR Storage");
  static const SopClass kProcedureLogStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.88.40",
      "ProcedureLogStorage",
      UidType.kSOPClass,
      false,
      "Procedure Log Storage");
  static const SopClass kMammographyCADSRStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.88.50",
      "MammographyCADSRStorage",
      UidType.kSOPClass,
      false,
      "Mammography CAD SR Storage");
  static const SopClass kKeyObjectSelectionDocumentStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.88.59",
      "KeyObjectSelectionDocumentStorage",
      UidType.kSOPClass,
      false,
      "Key Object Selection Document Storage");
  static const SopClass kChestCADSRStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.88.65",
      "ChestCADSRStorage",
      UidType.kSOPClass,
      false,
      "Chest CAD SR Storage");
  static const SopClass kX_RayRadiationDoseSRStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.88.67",
      "X_RayRadiationDoseSRStorage",
      UidType.kSOPClass,
      false,
      "X-Ray Radiation Dose SR Storage");
  static const SopClass kColonCADSRStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.88.69",
      "ColonCADSRStorage",
      UidType.kSOPClass,
      false,
      "Colon CAD SR Storage");
  static const SopClass kImplantationPlanSRStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.88.70",
      "ImplantationPlanSRStorage",
      UidType.kSOPClass,
      false,
      "Implantation Plan SR Storage");
  static const SopClass kEncapsulatedPDFStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.104.1",
      "EncapsulatedPDFStorage",
      UidType.kSOPClass,
      false,
      "Encapsulated PDF Storage");
  static const SopClass kEncapsulatedCDAStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.104.2",
      "EncapsulatedCDAStorage",
      UidType.kSOPClass,
      false,
      "Encapsulated CDA Storage");
  static const SopClass kPositronEmissionTomographyImageStorage =
      const SopClass(
          "1.2.840.10008.5.1.4.1.1.128",
          "PositronEmissionTomographyImageStorage",
          UidType.kSOPClass,
          false,
          "Positron Emission Tomography Image Storage");
  static const SopClass kLegacyConvertedEnhancedPETImageStorage =
      const SopClass(
    "1.2.840.10008.5.1.4.1.1.128.1",
    "LegacyConvertedEnhancedPETImageStorage",
    UidType.kSOPClass,
    false,
    "Legacy Converted Enhanced PET Image Storage",
  );
  static const SopClass kStandalonePETCurveStorage_Retired = const SopClass(
      "1.2.840.10008.5.1.4.1.1.129",
      "StandalonePETCurveStorage_Retired",
      UidType.kSOPClass,
      true,
      "Standalone PET Curve Storage (Retired)");
  static const SopClass kEnhancedPETImageStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.130",
      "EnhancedPETImageStorage",
      UidType.kSOPClass,
      false,
      "Enhanced PET Image Storage");
  static const SopClass kBasicStructuredDisplayStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.131",
      "BasicStructuredDisplayStorage",
      UidType.kSOPClass,
      false,
      "Basic Structured Display Storage");
  static const SopClass kRTImageStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.481.1",
      "RTImageStorage",
      UidType.kSOPClass,
      false,
      "RT Image Storage");
  static const SopClass kRTDoseStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.481.2",
      "RTDoseStorage",
      UidType.kSOPClass,
      false,
      "RT Dose Storage");
  static const SopClass kRTStructureSetStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.481.3",
      "RTStructureSetStorage",
      UidType.kSOPClass,
      false,
      "RT Structure Set Storage");
  static const SopClass kRTBeamsTreatmentRecordStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.481.4",
      "RTBeamsTreatmentRecordStorage",
      UidType.kSOPClass,
      false,
      "RT Beams Treatment Record Storage");
  static const SopClass kRTPlanStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.481.5",
      "RTPlanStorage",
      UidType.kSOPClass,
      false,
      "RT Plan Storage");
  static const SopClass kRTBrachyTreatmentRecordStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.481.6",
      "RTBrachyTreatmentRecordStorage",
      UidType.kSOPClass,
      false,
      "RT Brachy Treatment Record Storage");
  static const SopClass kRTTreatmentSummaryRecordStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.481.7",
      "RTTreatmentSummaryRecordStorage",
      UidType.kSOPClass,
      false,
      "RT Treatment Summary Record Storage");
  static const SopClass kRTIonPlanStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.481.8",
      "RTIonPlanStorage",
      UidType.kSOPClass,
      false,
      "RT Ion Plan Storage");
  static const SopClass kRTIonBeamsTreatmentRecordStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.481.9",
      "RTIonBeamsTreatmentRecordStorage",
      UidType.kSOPClass,
      false,
      "RT Ion Beams Treatment Record Storage");
  static const SopClass kDICOSCTImageStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.501.1",
      "DICOSCTImageStorage",
      UidType.kSOPClass,
      false,
      "DICOS CT Image Storage");
  static const SopClass kDICOSDigitalX_RayImageStorage_ForPresentation =
      const SopClass(
    "1.2.840.10008.5.1.4.1.1.501.2.1",
    "DICOSDigitalX_RayImageStorage_ForPresentation",
    UidType.kSOPClass,
    false,
    "DICOS Digital X-Ray Image Storage - For Presentation",
  );
  static const SopClass kDICOSDigitalX_RayImageStorage_ForProcessing =
      const SopClass(
    "1.2.840.10008.5.1.4.1.1.501.2.2",
    "DICOSDigitalX_RayImageStorage_ForProcessing",
    UidType.kSOPClass,
    false,
    "DICOS Digital X-Ray Image Storage - For Processing",
  );
  static const SopClass kDICOSThreatDetectionReportStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.501.3",
      "DICOSThreatDetectionReportStorage",
      UidType.kSOPClass,
      false,
      "DICOS Threat Detection Report Storage");
  static const SopClass kDICOS2DAITStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.501.4",
      "DICOS2DAITStorage",
      UidType.kSOPClass,
      false,
      "DICOS 2D AIT Storage");
  static const SopClass kDICOS3DAITStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.501.5",
      "DICOS3DAITStorage",
      UidType.kSOPClass,
      false,
      "DICOS 3D AIT Storage");
  static const SopClass kDICOSQuadrupoleResonanceStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.501.6",
      "DICOSQuadrupoleResonanceStorage",
      UidType.kSOPClass,
      false,
      "DICOS Quadrupole Resonance (QR) Storage");
  static const SopClass kEddyCurrentImageStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.601.1",
      "EddyCurrentImageStorage",
      UidType.kSOPClass,
      false,
      "Eddy Current Image Storage");

  static const SopClass kEddyCurrentMulti_frameImageStorage = const SopClass(
      "1.2.840.10008.5.1.4.1.1.601.2",
      "EddyCurrentMulti_frameImageStorage",
      UidType.kSOPClass,
      false,
      "Eddy Current Multi-frame Image Storage");
  static const SopClass kPatientRootQueryRetrieveInformationModel_FIND =
      const SopClass(
    "1.2.840.10008.5.1.4.1.2.1.1",
    "PatientRootQueryRetrieveInformationModel_FIND",
    UidType.kSOPClass,
    false,
    "Patient Root Query/Retrieve Information Model - FIND",
  );
  static const SopClass kPatientRootQueryRetrieveInformationModel_MOVE =
      const SopClass(
    "1.2.840.10008.5.1.4.1.2.1.2",
    "PatientRootQueryRetrieveInformationModel_MOVE",
    UidType.kSOPClass,
    false,
    "Patient Root Query/Retrieve Information Model - MOVE",
  );
  static const SopClass kPatientRootQueryRetrieveInformationModel_GET =
      const SopClass(
    "1.2.840.10008.5.1.4.1.2.1.3",
    "PatientRootQueryRetrieveInformationModel_GET",
    UidType.kSOPClass,
    false,
    "Patient Root Query/Retrieve Information Model - GET",
  );
  static const SopClass kStudyRootQueryRetrieveInformationModel_FIND =
      const SopClass(
    "1.2.840.10008.5.1.4.1.2.2.1",
    "StudyRootQueryRetrieveInformationModel_FIND",
    UidType.kSOPClass,
    false,
    "Study Root Query/Retrieve Information Model - FIND",
  );
  static const SopClass kStudyRootQueryRetrieveInformationModel_MOVE =
      const SopClass(
    "1.2.840.10008.5.1.4.1.2.2.2",
    "StudyRootQueryRetrieveInformationModel_MOVE",
    UidType.kSOPClass,
    false,
    "Study Root Query/Retrieve Information Model - MOVE",
  );
  static const SopClass kStudyRootQueryRetrieveInformationModel_GET =
      const SopClass(
    "1.2.840.10008.5.1.4.1.2.2.3",
    "StudyRootQueryRetrieveInformationModel_GET",
    UidType.kSOPClass,
    false,
    "Study Root Query/Retrieve Information Model - GET",
  );
  static const SopClass
      kPatient_StudyOnlyQueryRetrieveInformationModel_FIND_Retired =
      const SopClass(
    "1.2.840.10008.5.1.4.1.2.3.1",
    "Patient_StudyOnlyQueryRetrieveInformationModel_FIND_Retired",
    UidType.kSOPClass,
    true,
    "Patient/Study Only Query/Retrieve Information Model - FIND (Retired)",
  );
  static const SopClass
      kPatient_StudyOnlyQueryRetrieveInformationModel_MOVE_Retired =
      const SopClass(
    "1.2.840.10008.5.1.4.1.2.3.2",
    "Patient_StudyOnlyQueryRetrieveInformationModel_MOVE_Retired",
    UidType.kSOPClass,
    true,
    "Patient/Study Only Query/Retrieve Information Model - MOVE (Retired)",
  );
  static const SopClass
      kPatient_StudyOnlyQueryRetrieveInformationModel_GET_Retired =
      const SopClass(
    "1.2.840.10008.5.1.4.1.2.3.3",
    "Patient_StudyOnlyQueryRetrieveInformationModel_GET_Retired",
    UidType.kSOPClass,
    true,
    "Patient/Study Only Query/Retrieve Information Model - GET (Retired)",
  );
  static const SopClass kCompositeInstanceRootRetrieve_MOVE = const SopClass(
      "1.2.840.10008.5.1.4.1.2.4.2",
      "CompositeInstanceRootRetrieve_MOVE",
      UidType.kSOPClass,
      false,
      "Composite Instance Root Retrieve - MOVE");
  static const SopClass kCompositeInstanceRootRetrieve_GET = const SopClass(
      "1.2.840.10008.5.1.4.1.2.4.3",
      "CompositeInstanceRootRetrieve_GET",
      UidType.kSOPClass,
      false,
      "Composite Instance Root Retrieve - GET");
  static const SopClass kCompositeInstanceRetrieveWithoutBulkData_GET =
      const SopClass(
    "1.2.840.10008.5.1.4.1.2.5.3",
    "CompositeInstanceRetrieveWithoutBulkData_GET",
    UidType.kSOPClass,
    false,
    "Composite Instance Retrieve Without Bulk Data - GET",
  );
  static const SopClass kModalityWorklistInformationModel_FIND = const SopClass(
      "1.2.840.10008.5.1.4.31",
      "ModalityWorklistInformationModel_FIND",
      UidType.kSOPClass,
      false,
      "Modality Worklist Information Model - FIND");
  static const SopClass kGeneralPurposeWorklistInformationModel_FIND_Retired =
      const SopClass(
    "1.2.840.10008.5.1.4.32.1",
    "GeneralPurposeWorklistInformationModel_FIND_Retired",
    UidType.kSOPClass,
    true,
    "General Purpose Worklist Information Model - FIND (Retired)",
  );
  static const SopClass kGeneralPurposeScheduledProcedureStepSOPClass_Retired =
      const SopClass(
    "1.2.840.10008.5.1.4.32.2",
    "GeneralPurposeScheduledProcedureStepSOPClass_Retired",
    UidType.kSOPClass,
    true,
    "General Purpose Scheduled Procedure Step SOP Class (Retired)",
  );
  static const SopClass kGeneralPurposePerformedProcedureStepSOPClass_Retired =
      const SopClass(
    "1.2.840.10008.5.1.4.32.3",
    "GeneralPurposePerformedProcedureStepSOPClass_Retired",
    UidType.kSOPClass,
    true,
    "General Purpose Performed Procedure Step SOP Class (Retired)",
  );
  static const SopClass kGeneralPurposeWorklistManagementMetaSOPClass_Retired =
      const SopClass(
    "1.2.840.10008.5.1.4.32",
    "GeneralPurposeWorklistManagementMetaSOPClass_Retired",
    UidType.kMetaSOPClass,
    true,
    "General Purpose Worklist Management Meta SOP Class (Retired)",
  );
  static const SopClass kInstanceAvailabilityNotificationSOPClass =
      const SopClass(
          "1.2.840.10008.5.1.4.33",
          "InstanceAvailabilityNotificationSOPClass",
          UidType.kSOPClass,
          false,
          "Instance Availability Notification SOP Class");
  static const SopClass kRTBeamsDeliveryInstructionStorage_Trial_Retired =
      const SopClass(
    "1.2.840.10008.5.1.4.34.1",
    "RTBeamsDeliveryInstructionStorage_Trial_Retired",
    UidType.kSOPClass,
    true,
    "RT Beams Delivery Instruction Storage - Trial (Retired)",
  );
  static const SopClass kRTConventionalMachineVerification_Trial_Retired =
      const SopClass(
    "1.2.840.10008.5.1.4.34.2",
    "RTConventionalMachineVerification_Trial_Retired",
    UidType.kSOPClass,
    true,
    "RT Conventional Machine Verification - Trial (Retired)",
  );
  static const SopClass kRTIonMachineVerification_Trial_Retired =
      const SopClass(
          "1.2.840.10008.5.1.4.34.3",
          "RTIonMachineVerification_Trial_Retired",
          UidType.kSOPClass,
          true,
          "RT Ion Machine Verification - Trial (Retired)");
  static const SopClass
      kUnifiedWorklistandProcedureStepServiceClass_Trial_Retired =
      const SopClass(
    "1.2.840.10008.5.1.4.34.4",
    "UnifiedWorklistandProcedureStepServiceClass_Trial_Retired",
    UidType.kServiceClass,
    true,
    "Unified Worklist and Procedure Step Service Class - Trial (Retired)",
  );
  static const SopClass kUnifiedProcedureStep_PushSOPClass_Trial_Retired =
      const SopClass(
    "1.2.840.10008.5.1.4.34.4.1",
    "UnifiedProcedureStep_PushSOPClass_Trial_Retired",
    UidType.kSOPClass,
    true,
    "Unified Procedure Step - Push SOP Class - Trial (Retired)",
  );
  static const SopClass kUnifiedProcedureStep_WatchSOPClass_Trial_Retired =
      const SopClass(
    "1.2.840.10008.5.1.4.34.4.2",
    "UnifiedProcedureStep_WatchSOPClass_Trial_Retired",
    UidType.kSOPClass,
    true,
    "Unified Procedure Step - Watch SOP Class - Trial (Retired)",
  );
  static const SopClass kUnifiedProcedureStep_PullSOPClass_Trial_Retired =
      const SopClass(
    "1.2.840.10008.5.1.4.34.4.3",
    "UnifiedProcedureStep_PullSOPClass_Trial_Retired",
    UidType.kSOPClass,
    true,
    "Unified Procedure Step - Pull SOP Class - Trial (Retired)",
  );
  static const SopClass kUnifiedProcedureStep_EventSOPClass_Trial_Retired =
      const SopClass(
    "1.2.840.10008.5.1.4.34.4.4",
    "UnifiedProcedureStep_EventSOPClass_Trial_Retired",
    UidType.kSOPClass,
    true,
    "Unified Procedure Step - Event SOP Class - Trial (Retired)",
  );
  static const SopClass kUnifiedProcedureStep_PushSOPClass = const SopClass(
      "1.2.840.10008.5.1.4.34.6.1",
      "UnifiedProcedureStep_PushSOPClass",
      UidType.kSOPClass,
      false,
      "Unified Procedure Step - Push SOP Class");
  static const SopClass kUnifiedProcedureStep_WatchSOPClass = const SopClass(
      "1.2.840.10008.5.1.4.34.6.2",
      "UnifiedProcedureStep_WatchSOPClass",
      UidType.kSOPClass,
      false,
      "Unified Procedure Step - Watch SOP Class");
  static const SopClass kUnifiedProcedureStep_PullSOPClass = const SopClass(
      "1.2.840.10008.5.1.4.34.6.3",
      "UnifiedProcedureStep_PullSOPClass",
      UidType.kSOPClass,
      false,
      "Unified Procedure Step - Pull SOP Class");
  static const SopClass kUnifiedProcedureStep_EventSOPClass = const SopClass(
      "1.2.840.10008.5.1.4.34.6.4",
      "UnifiedProcedureStep_EventSOPClass",
      UidType.kSOPClass,
      false,
      "Unified Procedure Step - Event SOP Class");
  static const SopClass kRTBeamsDeliveryInstructionStorage = const SopClass(
      "1.2.840.10008.5.1.4.34.7",
      "RTBeamsDeliveryInstructionStorage",
      UidType.kSOPClass,
      false,
      "RT Beams Delivery Instruction Storage");
  static const SopClass kRTConventionalMachineVerification = const SopClass(
      "1.2.840.10008.5.1.4.34.8",
      "RTConventionalMachineVerification",
      UidType.kSOPClass,
      false,
      "RT Conventional Machine Verification");
  static const SopClass kRTIonMachineVerification = const SopClass(
      "1.2.840.10008.5.1.4.34.9",
      "RTIonMachineVerification",
      UidType.kSOPClass,
      false,
      "RT Ion Machine Verification");
  static const SopClass kGeneralRelevantPatientInformationQuery =
      const SopClass(
          "1.2.840.10008.5.1.4.37.1",
          "GeneralRelevantPatientInformationQuery",
          UidType.kSOPClass,
          false,
          "General Relevant Patient Information Query");
  static const SopClass kBreastImagingRelevantPatientInformationQuery =
      const SopClass(
    "1.2.840.10008.5.1.4.37.2",
    "BreastImagingRelevantPatientInformationQuery",
    UidType.kSOPClass,
    false,
    "Breast Imaging Relevant Patient Information Query",
  );
  static const SopClass kCardiacRelevantPatientInformationQuery =
      const SopClass(
          "1.2.840.10008.5.1.4.37.3",
          "CardiacRelevantPatientInformationQuery",
          UidType.kSOPClass,
          false,
          "Cardiac Relevant Patient Information Query");
  static const SopClass kHangingProtocolStorage = const SopClass(
      "1.2.840.10008.5.1.4.38.1",
      "HangingProtocolStorage",
      UidType.kSOPClass,
      false,
      "Hanging Protocol Storage");
  static const SopClass kHangingProtocolInformationModel_FIND = const SopClass(
      "1.2.840.10008.5.1.4.38.2",
      "HangingProtocolInformationModel_FIND",
      UidType.kSOPClass,
      false,
      "Hanging Protocol Information Model - FIND");
  static const SopClass kHangingProtocolInformationModel_MOVE = const SopClass(
      "1.2.840.10008.5.1.4.38.3",
      "HangingProtocolInformationModel_MOVE",
      UidType.kSOPClass,
      false,
      "Hanging Protocol Information Model - MOVE");
  static const SopClass kHangingProtocolInformationModel_GET = const SopClass(
      "1.2.840.10008.5.1.4.38.4",
      "HangingProtocolInformationModel_GET",
      UidType.kSOPClass,
      false,
      "Hanging Protocol Information Model - GET");
  static const SopClass kColorPaletteStorage = const SopClass(
      "1.2.840.10008.5.1.4.39.1",
      "ColorPaletteStorage",
      UidType.kSOPClass,
      false,
      "Color Palette Storage");

  static const SopClass kColorPaletteInformationModel_FIND = const SopClass(
      "1.2.840.10008.5.1.4.39.2",
      "ColorPaletteInformationModel_FIND",
      UidType.kSOPClass,
      false,
      "Color Palette Information Model - FIND");

  static const SopClass kColorPaletteInformationModel_MOVE = const SopClass(
      "1.2.840.10008.5.1.4.39.3",
      "ColorPaletteInformationModel_MOVE",
      UidType.kSOPClass,
      false,
      "Color Palette Information Model - MOVE");

  static const SopClass kColorPaletteInformationModel_GET = const SopClass(
      "1.2.840.10008.5.1.4.39.4",
      "ColorPaletteInformationModel_GET",
      UidType.kSOPClass,
      false,
      "Color Palette Information Model - GET");

  static const SopClass kProductCharacteristicsQuerySOPClass = const SopClass(
      "1.2.840.10008.5.1.4.41",
      "ProductCharacteristicsQuerySOPClass",
      UidType.kSOPClass,
      false,
      "Product Characteristics Query SOP Class");
  static const SopClass kSubstanceApprovalQuerySOPClass = const SopClass(
      "1.2.840.10008.5.1.4.42",
      "SubstanceApprovalQuerySOPClass",
      UidType.kSOPClass,
      false,
      "Substance Approval Query SOP Class");
  static const SopClass kGenericImplantTemplateStorage = const SopClass(
      "1.2.840.10008.5.1.4.43.1",
      "GenericImplantTemplateStorage",
      UidType.kSOPClass,
      false,
      "Generic Implant Template Storage");
  static const SopClass kGenericImplantTemplateInformationModel_FIND =
      const SopClass(
    "1.2.840.10008.5.1.4.43.2",
    "GenericImplantTemplateInformationModel_FIND",
    UidType.kSOPClass,
    false,
    "Generic Implant Template Information Model - FIND",
  );
  static const SopClass kGenericImplantTemplateInformationModel_MOVE =
      const SopClass(
    "1.2.840.10008.5.1.4.43.3",
    "GenericImplantTemplateInformationModel_MOVE",
    UidType.kSOPClass,
    false,
    "Generic Implant Template Information Model - MOVE",
  );
  static const SopClass kGenericImplantTemplateInformationModel_GET =
      const SopClass(
          "1.2.840.10008.5.1.4.43.4",
          "GenericImplantTemplateInformationModel_GET",
          UidType.kSOPClass,
          false,
          "Generic Implant Template Information Model - GET");
  static const SopClass kImplantAssemblyTemplateStorage = const SopClass(
      "1.2.840.10008.5.1.4.44.1",
      "ImplantAssemblyTemplateStorage",
      UidType.kSOPClass,
      false,
      "Implant Assembly Template Storage");
  static const SopClass kImplantAssemblyTemplateInformationModel_FIND =
      const SopClass(
    "1.2.840.10008.5.1.4.44.2",
    "ImplantAssemblyTemplateInformationModel_FIND",
    UidType.kSOPClass,
    false,
    "Implant Assembly Template Information Model - FIND",
  );
  static const SopClass kImplantAssemblyTemplateInformationModel_MOVE =
      const SopClass(
    "1.2.840.10008.5.1.4.44.3",
    "ImplantAssemblyTemplateInformationModel_MOVE",
    UidType.kSOPClass,
    false,
    "Implant Assembly Template Information Model - MOVE",
  );
  static const SopClass kImplantAssemblyTemplateInformationModel_GET =
      const SopClass(
    "1.2.840.10008.5.1.4.44.4",
    "ImplantAssemblyTemplateInformationModel_GET",
    UidType.kSOPClass,
    false,
    "Implant Assembly Template Information Model - GET",
  );
  static const SopClass kImplantTemplateGroupStorage = const SopClass(
      "1.2.840.10008.5.1.4.45.1",
      "ImplantTemplateGroupStorage",
      UidType.kSOPClass,
      false,
      "Implant Template Group Storage");
  static const SopClass kImplantTemplateGroupInformationModel_FIND =
      const SopClass(
          "1.2.840.10008.5.1.4.45.2",
          "ImplantTemplateGroupInformationModel_FIND",
          UidType.kSOPClass,
          false,
          "Implant Template Group Information Model - FIND");
  static const SopClass kImplantTemplateGroupInformationModel_MOVE =
      const SopClass(
          "1.2.840.10008.5.1.4.45.3",
          "ImplantTemplateGroupInformationModel_MOVE",
          UidType.kSOPClass,
          false,
          "Implant Template Group Information Model - MOVE");
  static const SopClass kImplantTemplateGroupInformationModel_GET =
      const SopClass(
          "1.2.840.10008.5.1.4.45.4",
          "ImplantTemplateGroupInformationModel_GET",
          UidType.kSOPClass,
          false,
          "Implant Template Group Information Model - GET");

  static const SopClass kDicomSOPClass = const SopClass(
      "1.2.840.10008.15.0.3.14",
      "dicomSOPClass",
      UidType.kLdapOid,
      false,
      "dicomSOPClass");

//TODO: finish Map

  static const Map<String, SopClass> members = const <String, SopClass>{};

  static const Map<String, SopClass> map = const <String, SopClass>{};
}
