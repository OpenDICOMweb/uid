// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'package:uid/src/uid_type.dart';
import 'package:uid/src/well_known/wk_uid.dart';

//TODO: Unit test.

class LdapOid extends WKUid {
  const LdapOid(String uid, String keyword, UidType type, String name,
      {bool isRetired = false})
      : super(uid, keyword, type, name, isRetired: isRetired);

  //TODO: create UidType class
  bool get isSopClass => true;

  @override
  String get info => '$runtimeType($asString)';

  @override
  String toString() => asString;

  //TODO: when other classes are implemented convert to lookup the uidString
  //in each class.
  static LdapOid lookup(String s) => map[s];

  static const WKUid kDicomDeviceName = const WKUid(
      '1.2.840.10008.15.0.3.1', 'dicomDeviceName', UidType.kLdapOid, 'dicomDeviceName');

  static const WKUid kDicomDescription = const WKUid(
      '1.2.840.10008.15.0.3.2', 'dicomDescription', UidType.kLdapOid, 'dicomDescription');

  static const WKUid kDicomManufacturer = const WKUid('1.2.840.10008.15.0.3.3',
      'dicomManufacturer', UidType.kLdapOid, 'dicomManufacturer');

  static const WKUid kDicomManufacturerModelName = const WKUid('1.2.840.10008.15.0.3.4',
      'dicomManufacturerModelName', UidType.kLdapOid, 'dicomManufacturerModelName');

  static const WKUid kDicomSoftwareVersion = const WKUid('1.2.840.10008.15.0.3.5',
      'dicomSoftwareVersion', UidType.kLdapOid, 'dicomSoftwareVersion');

  static const WKUid kDicomVendorData = const WKUid(
      '1.2.840.10008.15.0.3.6', 'dicomVendorData', UidType.kLdapOid, 'dicomVendorData');

  static const WKUid kDicomAETitle = const WKUid(
      '1.2.840.10008.15.0.3.7', 'dicomAETitle', UidType.kLdapOid, 'dicomAETitle');

  static const WKUid kDicomNetworkConnectionReference = const WKUid(
      '1.2.840.10008.15.0.3.8',
      'dicomNetworkConnectionReference',
      UidType.kLdapOid,
      'dicomNetworkConnectionReference');

  static const WKUid kDicomApplicationCluster = const WKUid('1.2.840.10008.15.0.3.9',
      'dicomApplicationCluster', UidType.kLdapOid, 'dicomApplicationCluster');

  static const WKUid kDicomAssociationInitiator = const WKUid('1.2.840.10008.15.0.3.10',
      'dicomAssociationInitiator', UidType.kLdapOid, 'dicomAssociationInitiator');

  static const WKUid kDicomAssociationAcceptor = const WKUid('1.2.840.10008.15.0.3.11',
      'dicomAssociationAcceptor', UidType.kLdapOid, 'dicomAssociationAcceptor');

  static const WKUid kDicomHostname = const WKUid(
      '1.2.840.10008.15.0.3.12', 'dicomHostname', UidType.kLdapOid, 'dicomHostname');

  static const WKUid kDicomPort =
      const WKUid('1.2.840.10008.15.0.3.13', 'dicomPort', UidType.kLdapOid, 'dicomPort');

  static const WKUid kDicomSOPClass = const WKUid(
      '1.2.840.10008.15.0.3.14', 'dicomSOPClass', UidType.kLdapOid, 'dicomSOPClass');

  static const WKUid kDicomTransferRole = const WKUid('1.2.840.10008.15.0.3.15',
      'dicomTransferRole', UidType.kLdapOid, 'dicomTransferRole');

  static const WKUid kDicomTransferSyntax = const WKUid('1.2.840.10008.15.0.3.16',
      'dicomTransferSyntax', UidType.kLdapOid, 'dicomTransferSyntax');

  static const WKUid kDicomPrimaryDeviceType = const WKUid('1.2.840.10008.15.0.3.17',
      'dicomPrimaryDeviceType', UidType.kLdapOid, 'dicomPrimaryDeviceType');

  static const WKUid kDicomRelatedDeviceReference = const WKUid('1.2.840.10008.15.0.3.18',
      'dicomRelatedDeviceReference', UidType.kLdapOid, 'dicomRelatedDeviceReference');

  static const WKUid kDicomPreferredCalledAETitle = const WKUid('1.2.840.10008.15.0.3.19',
      'dicomPreferredCalledAETitle', UidType.kLdapOid, 'dicomPreferredCalledAETitle');

  static const WKUid kDicomTLSCyphersuite = const WKUid('1.2.840.10008.15.0.3.20',
      'dicomTLSCyphersuite', UidType.kLdapOid, 'dicomTLSCyphersuite');

  static const WKUid kDicomAuthorizedNodeCertificateReference = const WKUid(
      '1.2.840.10008.15.0.3.21',
      'dicomAuthorizedNodeCertificateReference',
      UidType.kLdapOid,
      'dicomAuthorizedNodeCertificateReference');

  static const WKUid kDicomThisNodeCertificateReference = const WKUid(
      '1.2.840.10008.15.0.3.22',
      'dicomThisNodeCertificateReference',
      UidType.kLdapOid,
      'dicomThisNodeCertificateReference');

  static const WKUid kDicomInstalled = const WKUid(
      '1.2.840.10008.15.0.3.23', 'dicomInstalled', UidType.kLdapOid, 'dicomInstalled');

  static const WKUid kDicomStationName = const WKUid('1.2.840.10008.15.0.3.24',
      'dicomStationName', UidType.kLdapOid, 'dicomStationName');

  static const WKUid kDicomDeviceSerialNumber = const WKUid('1.2.840.10008.15.0.3.25',
      'dicomDeviceSerialNumber', UidType.kLdapOid, 'dicomDeviceSerialNumber');

  static const WKUid kDicomInstitutionName = const WKUid('1.2.840.10008.15.0.3.26',
      'dicomInstitutionName', UidType.kLdapOid, 'dicomInstitutionName');

  static const WKUid kDicomInstitutionAddress = const WKUid('1.2.840.10008.15.0.3.27',
      'dicomInstitutionAddress', UidType.kLdapOid, 'dicomInstitutionAddress');

  static const WKUid kDicomInstitutionDepartmentName = const WKUid(
      '1.2.840.10008.15.0.3.28',
      'dicomInstitutionDepartmentName',
      UidType.kLdapOid,
      'dicomInstitutionDepartmentName');

  static const WKUid kDicomIssuerOfPatientID = const WKUid('1.2.840.10008.15.0.3.29',
      'dicomIssuerOfPatientID', UidType.kLdapOid, 'dicomIssuerOfPatientID');

  static const WKUid kDicomPreferredCallingAETitle = const WKUid(
      '1.2.840.10008.15.0.3.30',
      'dicomPreferredCallingAETitle',
      UidType.kLdapOid,
      'dicomPreferredCallingAETitle');

  static const WKUid kDicomSupportedCharacterSet = const WKUid('1.2.840.10008.15.0.3.31',
      'dicomSupportedCharacterSet', UidType.kLdapOid, 'dicomSupportedCharacterSet');

  static const WKUid kDicomConfigurationRoot = const WKUid('1.2.840.10008.15.0.4.1',
      'dicomConfigurationRoot', UidType.kLdapOid, 'dicomConfigurationRoot');

  static const WKUid kDicomDevicesRoot = const WKUid(
      '1.2.840.10008.15.0.4.2', 'dicomDevicesRoot', UidType.kLdapOid, 'dicomDevicesRoot');

  static const WKUid kDicomUniqueAETitlesRegistryRoot = const WKUid(
      '1.2.840.10008.15.0.4.3',
      'dicomUniqueAETitlesRegistryRoot',
      UidType.kLdapOid,
      'dicomUniqueAETitlesRegistryRoot');

  static const WKUid kDicomDevice = const WKUid(
      '1.2.840.10008.15.0.4.4', 'dicomDevice', UidType.kLdapOid, 'dicomDevice');

  static const WKUid kDicomNetworkAE = const WKUid(
      '1.2.840.10008.15.0.4.5', 'dicomNetworkAE', UidType.kLdapOid, 'dicomNetworkAE');

  static const WKUid kDicomNetworkConnection = const WKUid('1.2.840.10008.15.0.4.6',
      'dicomNetworkConnection', UidType.kLdapOid, 'dicomNetworkConnection');

  static const WKUid kDicomUniqueAETitle = const WKUid('1.2.840.10008.15.0.4.7',
      'dicomUniqueAETitle', UidType.kLdapOid, 'dicomUniqueAETitle');

  static const WKUid kDicomTransferCapability = const WKUid('1.2.840.10008.15.0.4.8',
      'dicomTransferCapability', UidType.kLdapOid, 'dicomTransferCapability');

  static const List<LdapOid> members = const <LdapOid>[
    kDicomDeviceName,
    kDicomDescription,
    kDicomManufacturer,
    kDicomManufacturerModelName,
    kDicomSoftwareVersion,
    kDicomVendorData,
    kDicomNetworkConnectionReference,
    kDicomApplicationCluster,
    kDicomAssociationInitiator,
    kDicomAssociationAcceptor,
    kDicomHostname,
    kDicomPort,
    kDicomSOPClass,
    kDicomTransferRole,
    kDicomTransferSyntax,
    kDicomPrimaryDeviceType,
    kDicomRelatedDeviceReference,
    kDicomPreferredCalledAETitle,
    kDicomTLSCyphersuite,
    kDicomAuthorizedNodeCertificateReference,
    kDicomThisNodeCertificateReference,
    kDicomInstalled,
    kDicomStationName,
    kDicomDeviceSerialNumber,
    kDicomInstitutionName,
    kDicomInstitutionAddress,
    kDicomInstitutionDepartmentName,
    kDicomIssuerOfPatientID,
    kDicomPreferredCallingAETitle,
    kDicomSupportedCharacterSet,
    kDicomConfigurationRoot,
    kDicomDevicesRoot,
    kDicomUniqueAETitlesRegistryRoot,
    kDicomDevice,
    kDicomNetworkAE,
    kDicomNetworkConnection,
    kDicomUniqueAETitle,
    kDicomTransferCapability
  ];

  static const Map<String, LdapOid> map = const <String, LdapOid>{
    //   '': ,
  };
}
