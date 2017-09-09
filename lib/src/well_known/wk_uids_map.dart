// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.

import 'package:uid/src/well_known/frame_of_reference.dart';
import 'package:uid/src/well_known/ldap_oid.dart';
import 'package:uid/src/well_known/meta_sop_class.dart';
import 'package:uid/src/well_known/sop_class.dart';
import 'package:uid/src/well_known/sop_instance.dart';
import 'package:uid/src/well_known/transfer_syntax.dart';

//import 'package:uid/src/well_known/.dart';

import 'package:uid/src/well_known/wk_uid.dart';

//TODO: doc
//TODO: before V0.9.1 change entries to proper type

const Map<String, WKUid> wellKnownUids = const {
  "1.2.840.10008.1.1": SopClass.kVerification,
  "1.2.840.10008.1.2": TransferSyntax.kImplicitVRLittleEndian,
  "1.2.840.10008.1.2.1": TransferSyntax.kExplicitVRLittleEndian,
  "1.2.840.10008.1.2.1.99": TransferSyntax.kDeflatedExplicitVRLittleEndian,
  "1.2.840.10008.1.2.2": TransferSyntax.kExplicitVRBigEndian,
  "1.2.840.10008.1.2.4.50": TransferSyntax.kJPEGBaseline1,
  "1.2.840.10008.1.2.4.51": TransferSyntax.kJPEGExtended2_4,
  "1.2.840.10008.1.2.4.52": TransferSyntax.kJPEGExtended3_5,
  "1.2.840.10008.1.2.4.53":
      TransferSyntax.kJPEGSpectralSelectionNon_Hierarchical6_8,
  "1.2.840.10008.1.2.4.54":
      TransferSyntax.kJPEGSpectralSelectionNon_Hierarchical_7_9,
  "1.2.840.10008.1.2.4.55":
      TransferSyntax.kJPEGFullProgressionNon_Hierarchical_10_12,
  "1.2.840.10008.1.2.4.56":
      TransferSyntax.kJPEGFullProgressionNon_Hierarchical_11_13,
  "1.2.840.10008.1.2.4.57": TransferSyntax.kJPEGLosslessNon_Hierarchical_14,
  "1.2.840.10008.1.2.4.58": TransferSyntax.kJPEGLosslessNon_Hierarchical_15,
  "1.2.840.10008.1.2.4.59": TransferSyntax.kJPEGExtendedHierarchical_16_18,
  "1.2.840.10008.1.2.4.60": TransferSyntax.kJPEGExtendedHierarchical_17_19,
  "1.2.840.10008.1.2.4.61":
      TransferSyntax.kJPEGSpectralSelectionHierarchical_20_22,
  "1.2.840.10008.1.2.4.62":
      TransferSyntax.kJPEGSpectralSelectionHierarchical_21_23,
  "1.2.840.10008.1.2.4.63":
      TransferSyntax.kJPEGFullProgressionHierarchical_24_26,
  "1.2.840.10008.1.2.4.64":
      TransferSyntax.kJPEGFullProgressionHierarchical_25_27,
  "1.2.840.10008.1.2.4.65": TransferSyntax.kJPEGLosslessHierarchical_28,
  "1.2.840.10008.1.2.4.66": TransferSyntax.kJPEGLosslessHierarchical_29,
  "1.2.840.10008.1.2.4.70":
      TransferSyntax.kJPEGLosslessNon_HierarchicalFirst_OrderPrediction_14_1,
  "1.2.840.10008.1.2.4.80": TransferSyntax.kJPEG_LSLosslessImageCompression,
  "1.2.840.10008.1.2.4.81": TransferSyntax.kJPEG_LSLossyImageCompression,
  "1.2.840.10008.1.2.4.90": TransferSyntax.kJPEG2000ImageCompressionLosslessOnly,
  "1.2.840.10008.1.2.4.91": TransferSyntax.kJPEG2000ImageCompression,
  "1.2.840.10008.1.2.4.92":
      TransferSyntax.kJPEG2000Part2Multi_componentImageCompressionLosslessOnly,
  "1.2.840.10008.1.2.4.93": TransferSyntax.kJPEG2000Part2Multi_componentImageCompression,
  "1.2.840.10008.1.2.4.94": TransferSyntax.kJPIPReferenced,
  "1.2.840.10008.1.2.4.95": TransferSyntax.kJPIPReferencedDeflate,
  "1.2.840.10008.1.2.4.100": TransferSyntax.kMPEG2MainProfile_MainLevel,
  "1.2.840.10008.1.2.4.101": TransferSyntax.kMPEG2MainProfile_HighLevel,
  "1.2.840.10008.1.2.4.102": TransferSyntax.kMPEG_4AVC_H264HighProfile_Level41,
  "1.2.840.10008.1.2.4.103":
      TransferSyntax.kMPEG_4AVC_H264BD_compatibleHighProfile_Level41,
  "1.2.840.10008.1.2.5": TransferSyntax.kRLELossless,
  "1.2.840.10008.1.2.6.1": TransferSyntax.kRFC2557MIMEncapsulation,
  "1.2.840.10008.1.2.6.2": TransferSyntax.kXMLEncoding,
  "1.2.840.10008.1.3.10": SopClass.kMediaStorageDirectoryStorage,
  "1.2.840.10008.1.4.1.1": FrameOfReference.kTalairachBrainAtlasFrameOfReference,
  "1.2.840.10008.1.4.1.2": FrameOfReference.kSPM2T1FrameOfReference,
  "1.2.840.10008.1.4.1.3": FrameOfReference.kSPM2T2FrameOfReference,
  "1.2.840.10008.1.4.1.4": FrameOfReference.kSPM2PDFrameOfReference,
  "1.2.840.10008.1.4.1.5": FrameOfReference.kSPM2EPIFrameOfReference,
  "1.2.840.10008.1.4.1.6": FrameOfReference.kSPM2FILT1FrameOfReference,
  "1.2.840.10008.1.4.1.7": FrameOfReference.kSPM2PETFrameOfReference,
  "1.2.840.10008.1.4.1.8": FrameOfReference.kSPM2TRANSMFrameOfReference,
  "1.2.840.10008.1.4.1.9": FrameOfReference.kSPM2SPECTFrameOfReference,
  "1.2.840.10008.1.4.1.10": FrameOfReference.kSPM2GRAYFrameOfReference,
  "1.2.840.10008.1.4.1.11": FrameOfReference.kSPM2WHITEFrameOfReference,
  "1.2.840.10008.1.4.1.12": FrameOfReference.kSPM2CSFFrameOfReference,
  "1.2.840.10008.1.4.1.13": FrameOfReference.kSPM2BRAINMASKFrameOfReference,
  "1.2.840.10008.1.4.1.14": FrameOfReference.kSPM2AVG305T1FrameOfReference,
  "1.2.840.10008.1.4.1.15": FrameOfReference.kSPM2AVG152T1FrameOfReference,
  "1.2.840.10008.1.4.1.16": FrameOfReference.kSPM2AVG152T2FrameOfReference,
  "1.2.840.10008.1.4.1.17": FrameOfReference.kSPM2AVG152PDFrameOfReference,
  "1.2.840.10008.1.4.1.18": FrameOfReference.kSPM2SINGLESUBJT1FrameOfReference,
  "1.2.840.10008.1.4.2.1": FrameOfReference.kICBM452T1FrameOfReference,
  "1.2.840.10008.1.4.2.2": FrameOfReference.kICBMSingleSubjectMRIFrameOfReference,
  "1.2.840.10008.1.5.1": WellKnownSopInstance.kHotIronColorPalette,
  "1.2.840.10008.1.5.2": WellKnownSopInstance.kPETColorPalette,
  "1.2.840.10008.1.5.3": WellKnownSopInstance.kHotMetalBlueColorPalette,
  "1.2.840.10008.1.5.4": WellKnownSopInstance.kPET20StepColorPalette,
  "1.2.840.10008.1.9": SopClass.kBasicStudyContentNotification,
  "1.2.840.10008.1.20.1": SopClass.kStorageCommitmentPushModel,
  "1.2.840.10008.1.20.1.1": WellKnownSopInstance.kStorageCommitmentPushModel,
  "1.2.840.10008.1.20.2": SopClass.kStorageCommitmentPullModel,
  "1.2.840.10008.1.20.2.1":
  WellKnownSopInstance.kStorageCommitmentPullModel,
  "1.2.840.10008.1.40": SopClass.kProceduralEventLogging,
  "1.2.840.10008.1.40.1": WellKnownSopInstance.kProceduralEventLogging,
  "1.2.840.10008.1.42": SopClass.kSubstanceAdministrationLogging,
  "1.2.840.10008.1.42.1": WellKnownSopInstance.kSubstanceAdministrationLogging,
  "1.2.840.10008.2.6.1": WKUid.kDicomUIDRegistry,
  "1.2.840.10008.2.16.4": WKUid.kDicomControlledTerminology,
  "1.2.840.10008.3.1.1.1": WKUid.kDicomApplicationContextName,
  "1.2.840.10008.3.1.2.1.1": SopClass.kDetachedPatientManagement,
  "1.2.840.10008.3.1.2.1.4": MetaSopClass.kDetachedPatientManagement,
  "1.2.840.10008.3.1.2.2.1": SopClass.kDetachedVisitManagement,
  "1.2.840.10008.3.1.2.3.1": SopClass.kDetachedStudyManagement,
  "1.2.840.10008.3.1.2.3.2": SopClass.kStudyComponentManagement,
  "1.�2.840.10008.3.1.2.3.3": SopClass.kModalityPerformedProcedureStep,
  "1.�2.840.10008.3.1.2.3.4": SopClass.kModalityPerformedProcedureStepRetrieve,
  "1.�2.840.10008.3.1.2.3.5":
      SopClass.kModalityPerformedProcedureStepNotification,
  "1.2.840.10008.3.1.2.5.1": SopClass.kDetachedResultsManagement,
  "1.2.840.10008.3.1.2.5.4":
  MetaSopClass.kDetachedResultsManagement,
  "1.2.840.10008.3.1.2.5.5": MetaSopClass.kDetachedStudyManagement,
  "1.2.840.10008.3.1.2.6.1":
      SopClass.kDetachedInterpretationManagement,
  "1.2.840.10008.4.2": WKUid.kStorageServiceClass,
  "1.2.840.10008.5.1.1.1": SopClass.kBasicFilmSession,
  "1.2.840.10008.5.1.1.2": SopClass.kBasicFilmBox,
  "1.2.840.10008.5.1.1.4": SopClass.kBasicGrayscaleImageBox,
  "1.2.840.10008.5.1.1.4.1": SopClass.kBasicColorImageBox,
  "1.2.840.10008.5.1.1.4.2": SopClass.kReferencedImageBox,
  "1.2.840.10008.5.1.1.9": MetaSopClass.kBasicGrayscalePrintManagement,
  "1.2.840.10008.5.1.1.9.1":
  MetaSopClass.kReferencedGrayscalePrintManagement,
  "1.2.840.10008.5.1.1.14": SopClass.kPrintJob,
  "1.2.840.10008.5.1.1.15": SopClass.kBasicAnnotationBox,
  "1.2.840.10008.5.1.1.16": SopClass.kPrinter,
  "1.2.840.10008.5.1.1.16.376": SopClass.kPrinterConfigurationRetrieval,
  "1.2.840.10008.5.1.1.17": WellKnownSopInstance.kPrinter,
  "1.2.840.10008.5.1.1.17.376": WellKnownSopInstance.kPrinterConfigurationRetrieval,
  "1.2.840.10008.5.1.1.18": MetaSopClass.kBasicColorPrintManagement,
  "1.2.840.10008.5.1.1.18.1":
      MetaSopClass.kReferencedColorPrintManagement,
  "1.2.840.10008.5.1.1.22": SopClass.kVOILUTBox,
  "1.2.840.10008.5.1.1.23": SopClass.kPresentationLUT,
  "1.2.840.10008.5.1.1.24": SopClass.kImageOverlayBox,
  "1.2.840.10008.5.1.1.24.1": SopClass.kBasicPrintImageOverlayBox,
  "1.2.840.10008.5.1.1.25": WellKnownSopInstance.kPrintQueue,
  "1.2.840.10008.5.1.1.26": SopClass.kPrintQueueManagement,
  "1.2.840.10008.5.1.1.27": SopClass.kStoredPrintStorage,
  "1.2.840.10008.5.1.1.29":
      SopClass.kHardcopyGrayscaleImageStorage,
  "1.2.840.10008.5.1.1.30": SopClass.kHardcopyColorImageStorage,
  "1.2.840.10008.5.1.1.31": SopClass.kPullPrintRequest,
  "1.2.840.10008.5.1.1.32":
      MetaSopClass.kPullStoredPrintManagement,
  "1.2.840.10008.5.1.1.33": SopClass.kMediaCreationManagementSOPClassUID,
  "1.2.840.10008.5.1.4.1.1.1": SopClass.kComputedRadiographyImageStorage,
  "1.2.840.10008.5.1.4.1.1.1.1":
      SopClass.kDigitalX_RayImageStorage_ForPresentation,
  "1.2.840.10008.5.1.4.1.1.1.1.1":
      SopClass.kDigitalX_RayImageStorage_ForProcessing,
  "1.2.840.10008.5.1.4.1.1.1.2":
      SopClass.kDigitalMammographyX_RayImageStorage_ForPresentation,
  "1.2.840.10008.5.1.4.1.1.1.2.1":
      SopClass.kDigitalMammographyX_RayImageStorage_ForProcessing,
  "1.2.840.10008.5.1.4.1.1.1.3":
      SopClass.kDigitalIntra_OralX_RayImageStorage_ForPresentation,
  "1.2.840.10008.5.1.4.1.1.1.3.1":
      SopClass.kDigitalIntra_OralX_RayImageStorage_ForProcessing,
  "1.2.840.10008.5.1.4.1.1.2": SopClass.kCTImageStorage,
  "1.2.840.10008.5.1.4.1.1.2.1": SopClass.kEnhancedCTImageStorage,
  "1.2.840.10008.5.1.4.1.1.2.2": SopClass.kLegacyConvertedEnhancedCTImageStorage,
  "1.2.840.10008.5.1.4.1.1.3": SopClass.kUltrasoundMultiFrameImageStorage,
  "1.2.840.10008.5.1.4.1.1.3.1": SopClass.kUltrasoundMultiFrameImageStorage,
  "1.2.840.10008.5.1.4.1.1.4": SopClass.kMRImageStorage,
  "1.2.840.10008.5.1.4.1.1.4.1": SopClass.kEnhancedMRImageStorage,
  "1.2.840.10008.5.1.4.1.1.4.2": SopClass.kMRSpectroscopyStorage,
  "1.2.840.10008.5.1.4.1.1.4.3": SopClass.kEnhancedMRColorImageStorage,
  "1.2.840.10008.5.1.4.1.1.4.4": SopClass.kLegacyConvertedEnhancedMRImageStorage,
  "1.2.840.10008.5.1.4.1.1.5": SopClass.kNuclearMedicineImageStorage,
  "1.2.840.10008.5.1.4.1.1.6": SopClass.kUltrasoundImageStorage,
  "1.2.840.10008.5.1.4.1.1.6.1": SopClass.kUltrasoundImageStorage,
  "1.2.840.10008.5.1.4.1.1.6.2": SopClass.kEnhancedUSVolumeStorage,
  "1.2.840.10008.5.1.4.1.1.7": SopClass.kSecondaryCaptureImageStorage,
  "1.2.840.10008.5.1.4.1.1.7.1":
      SopClass.kMultiFrameSingleBitSecondaryCaptureImageStorage,
  "1.2.840.10008.5.1.4.1.1.7.2":
      SopClass.kMultiFrameGrayscaleByteSecondaryCaptureImageStorage,
  "1.2.840.10008.5.1.4.1.1.7.3":
      SopClass.kMultiFrameGrayscaleWordSecondaryCaptureImageStorage,
  "1.2.840.10008.5.1.4.1.1.7.4":
      SopClass.kMultiFrameTrueColorSecondaryCaptureImageStorage,
  "1.2.840.10008.5.1.4.1.1.8": SopClass.kStandaloneOverlayStorage,
  "1.2.840.10008.5.1.4.1.1.9": SopClass.kStandaloneCurveStorage,
  "1.2.840.10008.5.1.4.1.1.9.1": SopClass.kWaveformStorage_Trial,
  "1.2.840.10008.5.1.4.1.1.9.1.1": SopClass.ktwelve_lead_12ECGWaveformStorage,
  "1.2.840.10008.5.1.4.1.1.9.1.2": SopClass.kGeneralECGWaveformStorage,
  "1.2.840.10008.5.1.4.1.1.9.1.3": SopClass.kAmbulatoryECGWaveformStorage,
  "1.2.840.10008.5.1.4.1.1.9.2.1": SopClass.kHemodynamicWaveformStorage,
  "1.2.840.10008.5.1.4.1.1.9.3.1":
      SopClass.kCardiacElectrophysiologyWaveformStorage,
  "1.2.840.10008.5.1.4.1.1.9.4.1": SopClass.kBasicVoiceAudioWaveformStorage,
  "1.2.840.10008.5.1.4.1.1.9.4.2": SopClass.kGeneralAudioWaveformStorage,
  "1.2.840.10008.5.1.4.1.1.9.5.1": SopClass.kArterialPulseWaveformStorage,
  "1.2.840.10008.5.1.4.1.1.9.6.1": SopClass.kRespiratoryWaveformStorage,
  "1.2.840.10008.5.1.4.1.1.10": SopClass.kStandaloneModalityLUTStorage,
  "1.2.840.10008.5.1.4.1.1.11": SopClass.kStandaloneVOILUTStorage,
  "1.2.840.10008.5.1.4.1.1.11.1":
      SopClass.kGrayscaleSoftcopyPresentationStateStorage,
  "1.2.840.10008.5.1.4.1.1.11.2":
      SopClass.kColorSoftcopyPresentationStateStorage,
  "1.2.840.10008.5.1.4.1.1.11.3":
      SopClass.kPseudo_ColorSoftcopyPresentationStateStorage,
  "1.2.840.10008.5.1.4.1.1.11.4":
      SopClass.kBlendingSoftcopyPresentationStateStorage,
  "1.2.840.10008.5.1.4.1.1.11.5":
      SopClass.kXA_XRFGrayscaleSoftcopyPresentationStateStorage,
  "1.2.840.10008.5.1.4.1.1.12.1": SopClass.kX_RayAngiographicImageStorage,
  "1.2.840.10008.5.1.4.1.1.12.1.1": SopClass.kEnhancedXAImageStorage,
  "1.2.840.10008.5.1.4.1.1.12.2": SopClass.kX_RayRadiofluoroscopicImageStorage,
  "1.2.840.10008.5.1.4.1.1.12.2.1": SopClass.kEnhancedXRFImageStorage,
  "1.2.840.10008.5.1.4.1.1.12.3":
      SopClass.kX_RayAngiographicBi_PlaneImageStorage,
  "1.2.840.10008.5.1.4.1.1.13.1.1": SopClass.kX_Ray3DAngiographicImageStorage,
  "1.2.840.10008.5.1.4.1.1.13.1.2": SopClass.kX_Ray3DCraniofacialImageStorage,
  "1.2.840.10008.5.1.4.1.1.13.1.3": SopClass.kBreastTomosynthesisImageStorage,
  "1.2.840.10008.5.1.4.1.1.14.1": SopClass
      .kIntravascularOpticalCoherenceTomographyImageStorage_ForPresentation,
  "1.2.840.10008.5.1.4.1.1.14.2":
      SopClass.kIntravascularOpticalCoherenceTomographyImageStorage_ForProcessing,
  "1.2.840.10008.5.1.4.1.1.20": SopClass.kNuclearMedicineImageStorage,
  "1.2.840.10008.5.1.4.1.1.66": SopClass.kRawDataStorage,
  "1.2.840.10008.5.1.4.1.1.66.1": SopClass.kSpatialRegistrationStorage,
  "1.2.840.10008.5.1.4.1.1.66.2": SopClass.kSpatialFiducialsStorage,
  "1.2.840.10008.5.1.4.1.1.66.3": SopClass.kDeformableSpatialRegistrationStorage,
  "1.2.840.10008.5.1.4.1.1.66.4": SopClass.kSegmentationStorage,
  "1.2.840.10008.5.1.4.1.1.66.5": SopClass.kSurfaceSegmentationStorage,
  "1.2.840.10008.5.1.4.1.1.67": SopClass.kRealWorldValueMappingStorage,
  "1.2.840.10008.5.1.4.1.1.68.1": SopClass.kSurfaceScanMeshStorage,
  "1.2.840.10008.5.1.4.1.1.68.2": SopClass.kSurfaceScanPointCloudStorage,
  "1.2.840.10008.5.1.4.1.1.77.1": SopClass.kVLImageStorage_Trial,
  "1.2.840.10008.5.1.4.1.1.77.2":
      SopClass.kVLMultiFrameImageStorage_Trial,
  "1.2.840.10008.5.1.4.1.1.77.1.1": SopClass.kVLEndoscopicImageStorage,
  "1.2.840.10008.5.1.4.1.1.77.1.1.1": SopClass.kVideoEndoscopicImageStorage,
  "1.2.840.10008.5.1.4.1.1.77.1.2": SopClass.kVLMicroscopicImageStorage,
  "1.2.840.10008.5.1.4.1.1.77.1.2.1": SopClass.kVideoMicroscopicImageStorage,
  "1.2.840.10008.5.1.4.1.1.77.1.3":
      SopClass.kVLSlide_CoordinatesMicroscopicImageStorage,
  "1.2.840.10008.5.1.4.1.1.77.1.4": SopClass.kVLPhotographicImageStorage,
  "1.2.840.10008.5.1.4.1.1.77.1.4.1": SopClass.kVideoPhotographicImageStorage,
  "1.2.840.10008.5.1.4.1.1.77.1.5.1":
      SopClass.kOphthalmicPhotography8BitImageStorage,
  "1.2.840.10008.5.1.4.1.1.77.1.5.2":
      SopClass.kOphthalmicPhotography16BitImageStorage,
  "1.2.840.10008.5.1.4.1.1.77.1.5.3": SopClass.kStereometricRelationshipStorage,
  "1.2.840.10008.5.1.4.1.1.77.1.5.4": SopClass.kOphthalmicTomographyImageStorage,
  "1.2.840.10008.5.1.4.1.1.77.1.6": SopClass.kVLWholeSlideMicroscopyImageStorage,
  "1.2.840.10008.5.1.4.1.1.78.1": SopClass.kLensometryMeasurementsStorage,
  "1.2.840.10008.5.1.4.1.1.78.2": SopClass.kAutorefractionMeasurementsStorage,
  "1.2.840.10008.5.1.4.1.1.78.3": SopClass.kKeratometryMeasurementsStorage,
  "1.2.840.10008.5.1.4.1.1.78.4":
      SopClass.kSubjectiveRefractionMeasurementsStorage,
  "1.2.840.10008.5.1.4.1.1.78.5": SopClass.kVisualAcuityMeasurementsStorage,
  "1.2.840.10008.5.1.4.1.1.78.6": SopClass.kSpectaclePrescriptionReportStorage,
  "1.2.840.10008.5.1.4.1.1.78.7": SopClass.kOphthalmicAxialMeasurementsStorage,
  "1.2.840.10008.5.1.4.1.1.78.8": SopClass.kIntraocularLensCalculationsStorage,
  "1.2.840.10008.5.1.4.1.1.79.1":
      SopClass.kMacularGridThicknessandVolumeReportStorage,
  "1.2.840.10008.5.1.4.1.1.80.1":
      SopClass.kOphthalmicVisualFieldStaticPerimetryMeasurementsStorage,
  "1.2.840.10008.5.1.4.1.1.81.1": SopClass.kOphthalmicThicknessMapStorage,
  "11.2.840.10008.5.1.4.1.1.82.1": SopClass.kCornealTopographyMapStorage,
  "1.2.840.10008.5.1.4.1.1.88.1": SopClass.kTextSRStorage_Trial,
  "1.2.840.10008.5.1.4.1.1.88.2": SopClass.kAudioSRStorage_Trial,
  "1.2.840.10008.5.1.4.1.1.88.3": SopClass.kDetailSRStorage_Trial,
  "1.2.840.10008.5.1.4.1.1.88.4": SopClass.kComprehensiveSRStorage_Trial,
  "1.2.840.10008.5.1.4.1.1.88.11": SopClass.kBasicTextSRStorage,
  "1.2.840.10008.5.1.4.1.1.88.22": SopClass.kEnhancedSRStorage,
  "1.2.840.10008.5.1.4.1.1.88.33": SopClass.kComprehensiveSRStorage,
  "1.2.840.10008.5.1.4.1.1.88.34": SopClass.kComprehensive3DSRStorage,
  "1.2.840.10008.5.1.4.1.1.88.40": SopClass.kProcedureLogStorage,
  "1.2.840.10008.5.1.4.1.1.88.50": SopClass.kMammographyCADSRStorage,
  "1.2.840.10008.5.1.4.1.1.88.59": SopClass.kKeyObjectSelectionDocumentStorage,
  "1.2.840.10008.5.1.4.1.1.88.65": SopClass.kChestCADSRStorage,
  "1.2.840.10008.5.1.4.1.1.88.67": SopClass.kX_RayRadiationDoseSRStorage,
  "1.2.840.10008.5.1.4.1.1.88.69": SopClass.kColonCADSRStorage,
  "1.2.840.10008.5.1.4.1.1.88.70": SopClass.kImplantationPlanSRStorage,
  "1.2.840.10008.5.1.4.1.1.104.1": SopClass.kEncapsulatedPDFStorage,
  "1.2.840.10008.5.1.4.1.1.104.2": SopClass.kEncapsulatedCDAStorage,
  "1.2.840.10008.5.1.4.1.1.128": SopClass.kPositronEmissionTomographyImageStorage,
  "1.2.840.10008.5.1.4.1.1.128.1":
      SopClass.kLegacyConvertedEnhancedPETImageStorage,
  "1.2.840.10008.5.1.4.1.1.129": SopClass.kStandalonePETCurveStorage,
  "1.2.840.10008.5.1.4.1.1.130": SopClass.kEnhancedPETImageStorage,
  "1.2.840.10008.5.1.4.1.1.131": SopClass.kBasicStructuredDisplayStorage,
  "1.2.840.10008.5.1.4.1.1.481.1": SopClass.kRTImageStorage,
  "1.2.840.10008.5.1.4.1.1.481.2": SopClass.kRTDoseStorage,
  "1.2.840.10008.5.1.4.1.1.481.3": SopClass.kRTStructureSetStorage,
  "1.2.840.10008.5.1.4.1.1.481.4": SopClass.kRTBeamsTreatmentRecordStorage,
  "1.2.840.10008.5.1.4.1.1.481.5": SopClass.kRTPlanStorage,
  "1.2.840.10008.5.1.4.1.1.481.6": SopClass.kRTBrachyTreatmentRecordStorage,
  "1.2.840.10008.5.1.4.1.1.481.7": SopClass.kRTTreatmentSummaryRecordStorage,
  "1.2.840.10008.5.1.4.1.1.481.8": SopClass.kRTIonPlanStorage,
  "1.2.840.10008.5.1.4.1.1.481.9": SopClass.kRTIonBeamsTreatmentRecordStorage,
  "1.2.840.10008.5.1.4.1.1.501.1": SopClass.kDICOSCTImageStorage,
  "1.2.840.10008.5.1.4.1.1.501.2.1":
      SopClass.kDICOSDigitalX_RayImageStorage_ForPresentation,
  "1.2.840.10008.5.1.4.1.1.501.2.2":
      SopClass.kDICOSDigitalX_RayImageStorage_ForProcessing,
  "1.2.840.10008.5.1.4.1.1.501.3": SopClass.kDICOSThreatDetectionReportStorage,
  "1.2.840.10008.5.1.4.1.1.501.4": SopClass.kDICOS2DAITStorage,
  "1.2.840.10008.5.1.4.1.1.501.5": SopClass.kDICOS3DAITStorage,
  "1.2.840.10008.5.1.4.1.1.501.6": SopClass.kDICOSQuadrupoleResonanceStorage,
  "1.2.840.10008.5.1.4.1.1.601.1": SopClass.kEddyCurrentImageStorage,
  "1.2.840.10008.5.1.4.1.1.601.2": SopClass.kEddyCurrentMultiFrameImageStorage,
  "1.2.840.10008.5.1.4.1.2.1.1":
      SopClass.kPatientRootQueryRetrieveInformationModel_FIND,
  "1.2.840.10008.5.1.4.1.2.1.2":
      SopClass.kPatientRootQueryRetrieveInformationModel_MOVE,
  "1.2.840.10008.5.1.4.1.2.1.3":
      SopClass.kPatientRootQueryRetrieveInformationModel_GET,
  "1.2.840.10008.5.1.4.1.2.2.1":
      SopClass.kStudyRootQueryRetrieveInformationModel_FIND,
  "1.2.840.10008.5.1.4.1.2.2.2":
      SopClass.kStudyRootQueryRetrieveInformationModel_MOVE,
  "1.2.840.10008.5.1.4.1.2.2.3":
      SopClass.kStudyRootQueryRetrieveInformationModel_GET,
  "1.2.840.10008.5.1.4.1.2.3.1":
      SopClass.kPatient_StudyOnlyQueryRetrieveInformationModel_FIND,
  "1.2.840.10008.5.1.4.1.2.3.2":
      SopClass.kPatient_StudyOnlyQueryRetrieveInformationModel_MOVE,
  "1.2.840.10008.5.1.4.1.2.3.3":
      SopClass.kPatient_StudyOnlyQueryRetrieveInformationModel_GET,
  "1.2.840.10008.5.1.4.1.2.4.2": SopClass.kCompositeInstanceRootRetrieve_MOVE,
  "1.2.840.10008.5.1.4.1.2.4.3": SopClass.kCompositeInstanceRootRetrieve_GET,
  "1.2.840.10008.5.1.4.1.2.5.3":
      SopClass.kCompositeInstanceRetrieveWithoutBulkData_GET,
  "1.2.840.10008.5.1.4.31": SopClass.kModalityWorklistInformationModel_FIND,
  "1.2.840.10008.5.1.4.32.1":
      SopClass.kGeneralPurposeWorklistInformationModel_FIND,
  "1.2.840.10008.5.1.4.32.2":
      SopClass.kGeneralPurposeScheduledProcedureStep,
  "1.2.840.10008.5.1.4.32.3":
      SopClass.kGeneralPurposePerformedProcedureStep,
  "1.2.840.10008.5.1.4.32":
      SopClass.kGeneralPurposeWorklistManagement,
  "1.2.840.10008.5.1.4.33": SopClass.kInstanceAvailabilityNotification,
  "1.2.840.10008.5.1.4.34.1":
      SopClass.kRTBeamsDeliveryInstructionStorage_Trial,
  "1.2.840.10008.5.1.4.34.2":
      SopClass.kRTConventionalMachineVerification_Trial,
  "1.2.840.10008.5.1.4.34.3": SopClass.kRTIonMachineVerification_Trial,
  "1.2.840.10008.5.1.4.34.4":
      WKUid.kUnifiedWorklistAndProcedureStepServiceClass_Trial,
  "1.2.840.10008.5.1.4.34.4.1":
      SopClass.kUnifiedProcedureStep_PushSOPClass_Trial,
  "1.2.840.10008.5.1.4.34.4.2":
      SopClass.kUnifiedProcedureStep_WatchSOPClass_Trial,
  "1.2.840.10008.5.1.4.34.4.3":
      SopClass.kUnifiedProcedureStep_PullSOPClass_Trial,
  "1.2.840.10008.5.1.4.34.4.4":
      SopClass.kUnifiedProcedureStep_EventSOPClass_Trial,
  "1.2.840.10008.5.1.4.34.5": WellKnownSopInstance.kUnifiedWorklistAndProcedureStep,
  "1.2.840.10008.5.1.4.34.6":
      WKUid.kUnifiedWorklistAndProcedureStepServiceClass,
  "1.2.840.10008.5.1.4.34.6.1": SopClass.kUnifiedProcedureStep_Push,
  "1.2.840.10008.5.1.4.34.6.2": SopClass.kUnifiedProcedureStep_Watch,
  "1.2.840.10008.5.1.4.34.6.3": SopClass.kUnifiedProcedureStep_Pull,
  "1.2.840.10008.5.1.4.34.6.4": SopClass.kUnifiedProcedureStep_Event,
  "1.2.840.10008.5.1.4.34.7": SopClass.kRTBeamsDeliveryInstructionStorage,
  "1.2.840.10008.5.1.4.34.8": SopClass.kRTConventionalMachineVerification,
  "1.2.840.10008.5.1.4.34.9": SopClass.kRTIonMachineVerification,
  "1.2.840.10008.5.1.4.37.1": SopClass.kGeneralRelevantPatientInformationQuery,
  "1.2.840.10008.5.1.4.37.2":
      SopClass.kBreastImagingRelevantPatientInformationQuery,
  "1.2.840.10008.5.1.4.37.3": SopClass.kCardiacRelevantPatientInformationQuery,
  "1.2.840.10008.5.1.4.38.1": SopClass.kHangingProtocolStorage,
  "1.2.840.10008.5.1.4.38.2": SopClass.kHangingProtocolInformationModel_FIND,
  "1.2.840.10008.5.1.4.38.3": SopClass.kHangingProtocolInformationModel_MOVE,
  "1.2.840.10008.5.1.4.38.4": SopClass.kHangingProtocolInformationModel_GET,
  "1.2.840.10008.5.1.4.39.1": SopClass.kColorPaletteStorage,
  "1.2.840.10008.5.1.4.39.2": SopClass.kColorPaletteInformationModel_FIND,
  "1.2.840.10008.5.1.4.39.3": SopClass.kColorPaletteInformationModel_MOVE,
  "1.2.840.10008.5.1.4.39.4": SopClass.kColorPaletteInformationModel_GET,
  "1.2.840.10008.5.1.4.41": SopClass.kProductCharacteristicsQuery,
  "1.2.840.10008.5.1.4.42": SopClass.kSubstanceApprovalQuery,
  "1.2.840.10008.5.1.4.43.1": SopClass.kGenericImplantTemplateStorage,
  "1.2.840.10008.5.1.4.43.2":
      SopClass.kGenericImplantTemplateInformationModel_FIND,
  "1.2.840.10008.5.1.4.43.3":
      SopClass.kGenericImplantTemplateInformationModel_MOVE,
  "1.2.840.10008.5.1.4.43.4": SopClass.kGenericImplantTemplateInformationModel_GET,
  "1.2.840.10008.5.1.4.44.1": SopClass.kImplantAssemblyTemplateStorage,
  "1.2.840.10008.5.1.4.44.2":
      SopClass.kImplantAssemblyTemplateInformationModel_FIND,
  "1.2.840.10008.5.1.4.44.3":
      SopClass.kImplantAssemblyTemplateInformationModel_MOVE,
  "1.2.840.10008.5.1.4.44.4":
      SopClass.kImplantAssemblyTemplateInformationModel_GET,
  "1.2.840.10008.5.1.4.45.1": SopClass.kImplantTemplateGroupStorage,
  "1.2.840.10008.5.1.4.45.2": SopClass.kImplantTemplateGroupInformationModel_FIND,
  "1.2.840.10008.5.1.4.45.3": SopClass.kImplantTemplateGroupInformationModel_MOVE,
  "1.2.840.10008.5.1.4.45.4": SopClass.kImplantTemplateGroupInformationModel_GET,
  "1.2.840.10008.7.1.1": WKUid.kNativeDicomModel,
  "1.2.840.10008.7.1.2": WKUid.kAbstractMultiDimensionalImageModel,
  "1.2.840.10008.15.0.3.1": LdapOid.kDicomDeviceName,
  "1.2.840.10008.15.0.3.2": LdapOid.kDicomDescription,
  "1.2.840.10008.15.0.3.3": LdapOid.kDicomManufacturer,
  "1.2.840.10008.15.0.3.4": LdapOid.kDicomManufacturerModelName,
  "1.2.840.10008.15.0.3.5": LdapOid.kDicomSoftwareVersion,
  "1.2.840.10008.15.0.3.6": LdapOid.kDicomVendorData,
  "1.2.840.10008.15.0.3.7": LdapOid.kDicomAETitle,
  "1.2.840.10008.15.0.3.8": LdapOid.kDicomNetworkConnectionReference,
  "1.2.840.10008.15.0.3.9": LdapOid.kDicomApplicationCluster,
  "1.2.840.10008.15.0.3.10": LdapOid.kDicomAssociationInitiator,
  "1.2.840.10008.15.0.3.11": LdapOid.kDicomAssociationAcceptor,
  "1.2.840.10008.15.0.3.12": LdapOid.kDicomHostname,
  "1.2.840.10008.15.0.3.13": LdapOid.kDicomPort,
  "1.2.840.10008.15.0.3.14": LdapOid.kDicomSOPClass,
  "1.2.840.10008.15.0.3.15": LdapOid.kDicomTransferRole,
  "1.2.840.10008.15.0.3.16": LdapOid.kDicomTransferSyntax,
  "1.2.840.10008.15.0.3.17": LdapOid.kDicomPrimaryDeviceType,
  "1.2.840.10008.15.0.3.18": LdapOid.kDicomRelatedDeviceReference,
  "1.2.840.10008.15.0.3.19": LdapOid.kDicomPreferredCalledAETitle,
  "1.2.840.10008.15.0.3.20": LdapOid.kDicomTLSCyphersuite,
  "1.2.840.10008.15.0.3.21": LdapOid.kDicomAuthorizedNodeCertificateReference,
  "1.2.840.10008.15.0.3.22": LdapOid.kDicomThisNodeCertificateReference,
  "1.2.840.10008.15.0.3.23": LdapOid.kDicomInstalled,
  "1.2.840.10008.15.0.3.24": LdapOid.kDicomStationName,
  "1.2.840.10008.15.0.3.25": LdapOid.kDicomDeviceSerialNumber,
  "1.2.840.10008.15.0.3.26": LdapOid.kDicomInstitutionName,
  "1.2.840.10008.15.0.3.27": LdapOid.kDicomInstitutionAddress,
  "1.2.840.10008.15.0.3.28": LdapOid.kDicomInstitutionDepartmentName,
  "1.2.840.10008.15.0.3.29": LdapOid.kDicomIssuerOfPatientID,
  "1.2.840.10008.15.0.3.30": LdapOid.kDicomPreferredCallingAETitle,
  "1.2.840.10008.15.0.3.31": LdapOid.kDicomSupportedCharacterSet,
  "1.2.840.10008.15.0.4.1": LdapOid.kDicomConfigurationRoot,
  "1.2.840.10008.15.0.4.2": LdapOid.kDicomDevicesRoot,
  "1.2.840.10008.15.0.4.3": LdapOid.kDicomUniqueAETitlesRegistryRoot,
  "1.2.840.10008.15.0.4.4": LdapOid.kDicomDevice,
  "1.2.840.10008.15.0.4.5": LdapOid.kDicomNetworkAE,
  "1.2.840.10008.15.0.4.6": LdapOid.kDicomNetworkConnection,
  "1.2.840.10008.15.0.4.7": LdapOid.kDicomUniqueAETitle,
  "1.2.840.10008.15.0.4.8": LdapOid.kDicomTransferCapability,
  "1.2.840.10008.15.1.1": WKUid.kUniversalCoordinatedTime,
};
