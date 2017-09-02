// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'package:system/server.dart';
import 'package:test/test.dart';
import 'package:uid/uid.dart';


// TODO: add tests for all three errors in errors.dart.

void main() {
  Server.initialize(name: 'test/uid_test', level: Level.info0);
  uidTest();
}

List<String> goodUids = const <String>[
  "1.2.840.10008.1.2",
  "1.2.840.10008.1.2.0",
  "1.2.840.10008.0.1.2",
  "1.2.840.10008.1.2.4.64",
  "1.2.840.10008.1.2.1",
  "1.2.840.10008.1.2.1.99",
  "1.2.840.10008.1.2.4.81",
  "1.2.840.10008.1.2.4.91",
  "1.23.9.99.0.345.3242.12.345.35"
];

List<String> badUids = const <String>[
  "1.2.3", // Invalid Length : length less than 6
  "3.2.840.10008.1.2.0", // "3.": not valid root
  "1.02.840.10008.1.2", // ".02": "0" can only be followed by "."
  "1.2.840.10008.0.1.2.", // ".2.": uid can't end with dot
  ".2.840.10008.0.1.2", // ".2.": uid can't start with dot
  "1.).840.10008.0.*.2.", // Special characters
  "1.2.840.10008.1.2.-4.64", // "-": uid can't have a negative number
  // Invalid Length : length greater than 64
  "1.4.1.2.840.10008.1.2.4.64.1.2.840.10008.1.2.4.64.1.2.840.10008.1.2.4.64",
  "0.0.000.00000.0.0.00",
  "1.2.a840.1b0008.1.2.4.64" // Uid can't have letters
  "1.2.840.10a08.0.1.2"  // letters can't be used
];

// well known Uids
List<String> WKUids = const <String>[
  "1.2.840.10008.1.2",
  "1.2.840.10008.1.2.1",
  "1.2.840.10008.1.2.1.99",
  "1.2.840.10008.1.2.4.81",
  "1.2.840.10008.1.2.4.91",
  "1.2.840.10008.1.2.4.94"
];

void uidTest() {
  group('Uid Tests', () {
    test('Well Known UIDs', () {
      Uid uid = Uid.parse("1.2.840.10008.1.2");
      expect(uid == WKUid.kImplicitVRLittleEndian, true);
      expect(uid.asString, equals("1.2.840.10008.1.2"));
      uid = Uid.parse("1.2.840.10008.1.2.1");
      expect(uid == WKUid.kExplicitVRLittleEndian, true);
      expect(uid.asString, equals(WKUids[1]));

      uid = Uid.parse(WKUids[2]);
      expect(uid == WKUid.kDeflatedExplicitVRLittleEndian, true);
      expect(uid.asString, equals(WKUids[2]));

      uid = Uid.parse(WKUids[3]);
      expect(uid == WKUid.kJPEG_LSLossyImageCompression, true);
      expect(uid.asString, equals(WKUids[3]));

      uid = Uid.parse(WKUids[4]);
      expect(uid == WKUid.kJPEG2000ImageCompression, true);
      expect(uid.asString, equals(WKUids[4]));

      uid = Uid.parse(WKUids[5]);
      expect(uid == WKUid.kJPIPReferenced, true);
      expect(uid.asString, equals(WKUids[5]));
    });

    test('Good UIDs', () {
      for (String s in goodUids) {
        Uid uid = Uid.parse(s);
        expect(uid, isNotNull);
        expect(uid is Uid, true);
        expect(uid.asString, equals(s));
      }
    });

    test('Bad String to UID should fail', () {
      // Bad letter 'Z'
      String s0 = "1.2.8z0.10008.1.2";
      Uid uid = Uid.parse(s0, onError: (s) => null);
      print('uid: $uid');
      expect(uid == null, true);
      //TODO: this should return null or
      String s1 = "4.2.840.10008.1.2";
      uid = Uid.parse(s1, onError: (s) => null);
      log.debug('uid: $uid');
      expect(uid == null, true);
    });

    test('Bad UIDs', () {
      for (String s in badUids) {
        expect(Uid.isValidString(s), false);
        Uid uid = Uid.parse(s, onError: (s) => null);
        expect(uid, isNull);
        expect(uid is Uid, false);
      }
    });

    test('String to TransferSyntax', () {
      Uid uid = TransferSyntaxUid.lookup("1.2.840.10008.1.2");
      expect(uid == TransferSyntaxUid.kImplicitVRLittleEndian, true);
      uid = TransferSyntaxUid.lookup("1.2.840.10008.1.2.1");
      expect(uid == TransferSyntaxUid.kExplicitVRLittleEndian, true);
    });

    test("Generate Uid", (){
      for(String s in goodUids){
        Uid uid0 = new Uid(s);// checks 's' as valid Uid
        log.info0('uid0:$uid0');
        expect(uid0.value, equals(s));
      }
      Uid uid1 =  new Uid();// generates new Uid
      log.info0('uid1:$uid1');
      expect(uid1, isNotNull);
    });

    test("bad uid string test",(){
      for(String s in badUids){
        Uid uid0 = new Uid(s);// checks 's' as valid Uid
        expect(uid0.value,isNull);
      }
    });
  });
}
