// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'package:uid/src/uid.dart';
import 'package:uid/src/uid_type.dart';
import 'package:uid/src/well_known/wk_uid.dart';

//TODO: document
class TransferSyntax extends WKUid {
  static const UidType uidType = UidType.kTransferSyntax;
  final String mediaType;

  @override
  final bool isEncapsulated;

  final bool mayHaveFragments;

  const TransferSyntax(String uid, keyword, String name, this.mediaType,
      [bool isRetired = false,
      this.isEncapsulated = true,
      this.mayHaveFragments = true])
      : super(uid, keyword, UidType.kTransferSyntax, isRetired, name);

  /// Returns [true] if the [TransferSyntax] exists and has not been retired.
  @override
  bool get isTransferSyntax => true;

  bool get isNativeFormat => !isEncapsulated;

  bool get isImplicitLittleEndian => this == kImplicitVRLittleEndian;

  bool get isBigEndian => this == kExplicitVRBigEndian;

  bool get isValidForDICOMweb => !(isImplicitLittleEndian || isBigEndian);

  /// Returns [true] if the [TransferSyntax] exists, but has been retired.
  bool get isRetiredTransferSyntax => isRetired;

  bool get isValidForRS =>
      (isNotRetired) ||
      (asString != kImplicitVRLittleEndian.asString &&
          asString != kExplicitVRBigEndian.asString);

  /// Returns the TransferSyntax corresponding to the [String] or [Uid].
  static TransferSyntax lookup(dynamic ts) {
    if (ts is TransferSyntax) return ts;
    if (ts is Uid) return map[ts.asString];
    if (ts is String) return map[ts];
    return null;
  }

  @override
  String toString() => 'TransferSyntax($asString): $name';

  //*****   Constant Values   *****

  static const TransferSyntax kImplicitVRLittleEndian = const TransferSyntax(
    "1.2.840.10008.1.2",
    "ImplicitVRLittleEndian",
    "Implicit VR Little Endian: Default Transfer Syntax for DICOM",
    "image/???",
    false,
    false,
  );

  static const TransferSyntax kDefaultForDIMSE = kImplicitVRLittleEndian;

  static const TransferSyntax kExplicitVRLittleEndian = const TransferSyntax(
      "1.2.840.10008.1.2.1",
      "ExplicitVRLittleEndian",
      "Explicit VR Little Endian",
      "image/uncompressed??",
      false,
      false);

  static const TransferSyntax kDefaultForDicomWeb = kExplicitVRLittleEndian;

  static const TransferSyntax kDeflatedExplicitVRLittleEndian =
      const TransferSyntax(
          "1.2.840.10008.1.2.1.99",
          "DeflatedExplicitVRLittleEndian",
          "Deflated Explicit VR Little Endian",
          "image/deflate??",
          false,
          false,
          false);

  static const TransferSyntax kExplicitVRBigEndian = const TransferSyntax(
      "1.2.840.10008.1.2.2",
      "ExplicitVRBigEndian",
      "Explicit VR Big Endian (Retired)",
      "image/bigEndian",
      true,
      false,
      false);

  static const TransferSyntax kJPEGBaseline1 = const TransferSyntax(
      "1.2.840.10008.1.2.4.50",
      "JPEGBaseline_1",
      "JPEG Baseline (Process 1) : Default Transfer Syntax for Lossy "
      "JPEG 8 Bit Image Compression",
      "image/jpeg");

  static const TransferSyntax kJPEGLossy8BitDefault = kJPEGBaseline1;

  static const TransferSyntax kJPEGExtended2_4 = const TransferSyntax(
      "1.2.840.10008.1.2.4.51",
      "JPEGExtended_2_4",
      "JPEG Extended (Process 2 & 4) : Default Transfer Syntax for "
      "Lossy JPEG 12 Bit Image Compression (Process 4 only)",
      "image/jpeg",
      false);

  static const TransferSyntax kJPEGLossy12BitDefault = kJPEGExtended2_4;

  static const TransferSyntax kJPEGExtended3_5 = const TransferSyntax(
      "1.2.840.10008.1.2.4.52",
      "JPEGExtended_3_5_Retired",
      "JPEG Extended (Process 3 & 5) (Retired)",
      "image/jpeg",
      true);

  static const TransferSyntax
      kJPEGSpectralSelectionNon_Hierarchical6_8 = const TransferSyntax(
          "1.2.840.10008.1.2.4.53",
          "JPEGSpectralSelectionNon_Hierarchical_6_8_Retired",
          "JPEG Spectral Selection, Non-Hierarchical (Process 6 & 8) (Retired)",
          "image/jpeg",
          true);

  static const TransferSyntax
      kJPEGSpectralSelectionNon_Hierarchical_7_9 = const TransferSyntax(
          "1.2.840.10008.1.2.4.54",
          "JPEGSpectralSelectionNon_Hierarchical_7_9_Retired",
          "JPEG Spectral Selection, Non-Hierarchical (Process 7 & 9) (Retired)",
          "image/jpeg",
          true);

  static const TransferSyntax
      kJPEGFullProgressionNon_Hierarchical_10_12 = const TransferSyntax(
          "1.2.840.10008.1.2.4.55",
          "JPEGFullProgressionNon_Hierarchical_10_12_Retired",
          "JPEG Full Progression, Non-Hierarchical (Process 10 & 12) (Retired)",
          "image/jpeg",
          true);

  static const TransferSyntax
      kJPEGFullProgressionNon_Hierarchical_11_13 = const TransferSyntax(
          "1.2.840.10008.1.2.4.56",
          "JPEGFullProgressionNon_Hierarchical_11_13_Retired",
          "JPEG Full Progression, Non-Hierarchical (Process 11 & 13) (Retired)",
          "image/jpeg",
          true);

  static const TransferSyntax kJPEGLosslessNon_Hierarchical_14 =
      const TransferSyntax(
          "1.2.840.10008.1.2.4.57",
          "JPEGLosslessNon_Hierarchical_14",
          "JPEG Lossless, Non-Hierarchical (Process 14)",
          "image/jpeg???");

  static const TransferSyntax kJPEGLosslessNon_Hierarchical_15 =
      const TransferSyntax(
          "1.2.840.10008.1.2.4.58",
          "JPEGLosslessNon_Hierarchical_15_Retired",
          "JPEG Lossless, Non-Hierarchical (Process 15) (Retired)",
          "image/jpeg",
          true);

  static const TransferSyntax kJPEGExtendedHierarchical_16_18 =
      const TransferSyntax(
          "1.2.840.10008.1.2.4.59",
          "JPEGExtendedHierarchical_16_18_Retired",
          "JPEG Extended, Hierarchical (Process 16 & 18) (Retired)",
          "image/jpeg",
          true);

  static const TransferSyntax kJPEGExtendedHierarchical_17_19 =
      const TransferSyntax(
          "1.2.840.10008.1.2.4.60",
          "JPEGExtendedHierarchical_17_19_Retired",
          "JPEG Extended, Hierarchical (Process 17 & 19) (Retired)",
          "image/jpeg",
          true);

  static const TransferSyntax kJPEGSpectralSelectionHierarchical_20_22 =
      const TransferSyntax(
          "1.2.840.10008.1.2.4.61",
          "JPEGSpectralSelectionHierarchical_20_22_Retired",
          "JPEG Spectral Selection, Hierarchical (Process 20 & 22) (Retired)",
          "image/jpeg",
          true);

  static const TransferSyntax kJPEGSpectralSelectionHierarchical_21_23 =
      const TransferSyntax(
          "1.2.840.10008.1.2.4.62",
          "JPEGSpectralSelectionHierarchical_21_23_Retired",
          "JPEG Spectral Selection, Hierarchical (Process 21 & 23) (Retired)",
          "image/jpeg",
          true);

  static const TransferSyntax kJPEGFullProgressionHierarchical_24_26 =
      const TransferSyntax(
          "1.2.840.10008.1.2.4.63",
          "JPEGFullProgressionHierarchical_24_26_Retired",
          "JPEG Full Progression, Hierarchical (Process 24 & 26) (Retired)",
          "image/jpeg",
          true);

  static const TransferSyntax kJPEGFullProgressionHierarchical_25_27 =
      const TransferSyntax(
          "1.2.840.10008.1.2.4.64",
          "JPEGFullProgressionHierarchical_25_27_Retired",
          "JPEG Full Progression, Hierarchical (Process 25 & 27) (Retired)",
          "image/jpeg",
          true);

  static const TransferSyntax kJPEGLosslessHierarchical_28 =
      const TransferSyntax(
          "1.2.840.10008.1.2.4.65",
          "JPEGLosslessHierarchical_28_Retired",
          "JPEG Lossless, Hierarchical (Process 28) (Retired)",
          "image/jpeg",
          true);

  static const TransferSyntax kJPEGLosslessHierarchical_29 =
      const TransferSyntax(
          "1.2.840.10008.1.2.4.66",
          "JPEGLosslessHierarchical_29_Retired",
          "JPEG Lossless, Hierarchical (Process 29) (Retired)",
          "image/jpeg",
          true);

  static const TransferSyntax
      kJPEGLosslessNon_HierarchicalFirst_OrderPrediction_14_1 =
      const TransferSyntax(
          "1.2.840.10008.1.2.4.70",
          "JPEGLosslessNon_HierarchicalFirst_OrderPrediction_14_1",
          "JPEG Lossless, Non-Hierarchical, First-Order Prediction "
          "(Process 14 [Selection Value 1]) : Default Transfer Syntax "
          "for Lossless JPEG Image Compression",
          "image/jpeg");

  static const TransferSyntax kJPEGLosslessDefault =
      kJPEGLosslessNon_HierarchicalFirst_OrderPrediction_14_1;

  static const TransferSyntax kJPEG_LSLosslessImageCompression =
      const TransferSyntax(
          "1.2.840.10008.1.2.4.80",
          "JPEG_LSLosslessImageCompression",
          "JPEG-LS Lossless Image Compression",
          "image/jpeg-ls");
  static const TransferSyntax kJPEG_LSLossyImageCompression =
      const TransferSyntax(
          "1.2.840.10008.1.2.4.81",
          "JPEG_LSLossyImageCompression",
          "JPEG-LS Lossy (Near-Lossless) Image Compression",
          "image/jpeg-ls");

  static const TransferSyntax kJPEG2000ImageCompressionLosslessOnly =
      const TransferSyntax(
          "1.2.840.10008.1.2.4.90",
          "JPEG2000ImageCompressionLosslessOnly",
          "JPEG 2000 Image Compression Lossless Only",
          "image/jp2");

  static const TransferSyntax kJPEG2000ImageCompression = const TransferSyntax(
      "1.2.840.10008.1.2.4.91",
      "JPEG2000ImageCompression",
      "JPEG 2000 Image Compression",
      "image/jp2");

  static const TransferSyntax
      kJPEG2000Part2Multi_componentImageCompressionLosslessOnly =
      const TransferSyntax(
          "1.2.840.10008.1.2.4.92",
          "JPEG2000Part2Multi_componentImageCompressionLosslessOnly",
          "JPEG 2000 Part 2 Multi-component Image Compression Lossless Only",
          "image/jp2");

  static const TransferSyntax kJPEG2000Part2Multi_componentImageCompression =
      const TransferSyntax(
          "1.2.840.10008.1.2.4.93",
          "JPEG2000Part2Multi_componentImageCompression",
          "JPEG 2000 Part 2 Multi-component Image Compression",
          "image/jp2");

  static const TransferSyntax kJPIPReferenced = const TransferSyntax(
      "1.2.840.10008.1.2.4.94",
      "JPIPReferenced",
      "JPIP Referenced",
      "image/jpip???");

  static const TransferSyntax kJPIPReferencedDeflate = const TransferSyntax(
      "1.2.840.10008.1.2.4.95",
      "JPIPReferencedDeflate",
      "JPIP Referenced Deflate",
      "image/jpip???");

  static const TransferSyntax kMPEG2MainProfile_MainLevel =
      const TransferSyntax(
          "1.2.840.10008.1.2.4.100",
          "MPEG2MainProfile_MainLevel",
          "MPEG2 Main Profile @ Main Level",
          "image/mpeg");

  static const TransferSyntax kMPEG2MainProfile_HighLevel =
      const TransferSyntax(
          "1.2.840.10008.1.2.4.101",
          "MPEG2MainProfile_HighLevel",
          "MPEG2 Main Profile @ High Level",
          "image/mpeg???");

  static const TransferSyntax kMPEG_4AVC_H264HighProfile_Level41 =
      const TransferSyntax(
          "1.2.840.10008.1.2.4.102",
          "MPEG_4AVC_H264HighProfile_Level41",
          "MPEG-4 AVC/H.264 High Profile / Level 4.1",
          "image/mpeg4",
          false);

  static const TransferSyntax kMPEG_4AVC_H264BD_compatibleHighProfile_Level41 =
      const TransferSyntax(
          "1.2.840.10008.1.2.4.103",
          "MPEG_4AVC_H264BD_compatibleHighProfile_Level41",
          "MPEG-4 AVC/H.264 BD-compatible High Profile / Level 4.1",
          "image/mpeg4???",
          false);

  static const TransferSyntax kRLELossless = const TransferSyntax(
      "1.2.840.10008.1.2.5",
      "RLELossless",
      "RLE Lossless",
      "image/rle???",
      false);

  static const TransferSyntax kRFC2557MIMEncapsulation = const TransferSyntax(
      "1.2.840.10008.1.2.6.1",
      "RFC2557MIMEncapsulation",
      "RFC 2557 MIME encapsulation",
      "image/????",
      false);

  static const TransferSyntax kXMLEncoding = const TransferSyntax(
      "1.2.840.10008.1.2.6.2",
      "XMLEncoding",
      "XML Encoding",
      "text/xml???",
      false);

  static const Map<String, Uid> map = const {
    "1.2.840.10008.1.2": kImplicitVRLittleEndian,
    "1.2.840.10008.1.2.1": kExplicitVRLittleEndian,
    "1.2.840.10008.1.2.1.99": kDeflatedExplicitVRLittleEndian,
    "1.2.840.10008.1.2.2": kExplicitVRBigEndian,
    "1.2.840.10008.1.2.4.50": kJPEGBaseline1,
    "1.2.840.10008.1.2.4.51": kJPEGExtended2_4,
    "1.2.840.10008.1.2.4.52": kJPEGExtended3_5,
    "1.2.840.10008.1.2.4.53":
        kJPEGSpectralSelectionNon_Hierarchical6_8,
    "1.2.840.10008.1.2.4.54":
        kJPEGSpectralSelectionNon_Hierarchical_7_9,
    "1.2.840.10008.1.2.4.55":
        kJPEGFullProgressionNon_Hierarchical_10_12,
    "1.2.840.10008.1.2.4.56":
        kJPEGFullProgressionNon_Hierarchical_11_13,
    "1.2.840.10008.1.2.4.57": kJPEGLosslessNon_Hierarchical_14,
    "1.2.840.10008.1.2.4.58": kJPEGLosslessNon_Hierarchical_15,
    "1.2.840.10008.1.2.4.59": kJPEGExtendedHierarchical_16_18,
    "1.2.840.10008.1.2.4.60": kJPEGExtendedHierarchical_17_19,
    "1.2.840.10008.1.2.4.61": kJPEGSpectralSelectionHierarchical_20_22,
    "1.2.840.10008.1.2.4.62": kJPEGSpectralSelectionHierarchical_21_23,
    "1.2.840.10008.1.2.4.63": kJPEGFullProgressionHierarchical_24_26,
    "1.2.840.10008.1.2.4.64": kJPEGFullProgressionHierarchical_25_27,
    "1.2.840.10008.1.2.4.65": kJPEGLosslessHierarchical_28,
    "1.2.840.10008.1.2.4.66": kJPEGLosslessHierarchical_29,
    "1.2.840.10008.1.2.4.70":
        kJPEGLosslessNon_HierarchicalFirst_OrderPrediction_14_1,
    "1.2.840.10008.1.2.4.80": kJPEG_LSLosslessImageCompression,
    "1.2.840.10008.1.2.4.81": kJPEG_LSLossyImageCompression,
    "1.2.840.10008.1.2.4.90": kJPEG2000ImageCompressionLosslessOnly,
    "1.2.840.10008.1.2.4.91": kJPEG2000ImageCompression,
    "1.2.840.10008.1.2.4.92":
        kJPEG2000Part2Multi_componentImageCompressionLosslessOnly,
    "1.2.840.10008.1.2.4.93": kJPEG2000Part2Multi_componentImageCompression,
    "1.2.840.10008.1.2.4.94": kJPIPReferenced,
    "1.2.840.10008.1.2.4.95": kJPIPReferencedDeflate,
    "1.2.840.10008.1.2.4.100": kMPEG2MainProfile_MainLevel,
    "1.2.840.10008.1.2.4.101": kMPEG2MainProfile_HighLevel,
    "1.2.840.10008.1.2.4.102": kMPEG_4AVC_H264HighProfile_Level41,
    "1.2.840.10008.1.2.4.103": kMPEG_4AVC_H264BD_compatibleHighProfile_Level41,
    "1.2.840.10008.1.2.5": kRLELossless,
    "1.2.840.10008.1.2.6.1": kRFC2557MIMEncapsulation,
    "1.2.840.10008.1.2.6.2": kXMLEncoding
  };
}
