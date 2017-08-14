// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// See the AUTHORS file for contributors.

import 'package:uid/uid.dart';
import 'package:test/test.dart';

void main() {
  transferSyntaxTest();
}

void transferSyntaxTest() {
  group('Transfer Syntax Tests', () {
    test('String to UID', () {
      Uid uid = Uid.lookup("1.2.840.10008.1.2");
      expect(uid == WKUid.kImplicitVRLittleEndian, true);
      uid = Uid.lookup("1.2.840.10008.1.2.1");
      expect(uid == WKUid.kExplicitVRLittleEndian, true);
    });

    test('String to TransferSyntax', () {
      Uid uid = TransferSyntaxUid.lookup("1.2.840.10008.1.2");
      expect(uid == TransferSyntaxUid.kImplicitVRLittleEndian, true);
      uid = TransferSyntaxUid.lookup("1.2.840.10008.1.2.1");
      expect(uid == TransferSyntaxUid.kExplicitVRLittleEndian, true);
    });
  });
}
