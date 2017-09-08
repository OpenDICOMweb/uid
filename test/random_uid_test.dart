// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'package:uid/uid.dart';
import 'package:system/server.dart';
import 'package:test/test.dart';

// TODO: enhance these tests.
main() {
  Server.initialize(name: 'random_uid_test', level: Level.info0);
  group('Random Uid Tests', () {

    test('Seeded Random Tests', (){
      Uid uid = Uid.seededPseudo;
      expect(uid.asString.indexOf('2.25.') == 0, true);
      expect(uid.asString.length > 30, true);
      expect(uid.asString.length <= 44, true);
    });

    test('Pseudo Random Tests', (){
      Uid uid = Uid.pseudo;
      expect(uid.asString.indexOf('2.25.') == 0, true);
      expect(uid.asString.length > 30, true);
      expect(uid.asString.length <= 44, true);
    });

    test('Secure Random Tests', (){
      Uid uid = Uid.secure;
      expect(uid.asString.indexOf('2.25.') == 0, true);
      expect(uid.asString.length > 30, true);
      expect(uid.asString.length <= 44, true);
    });
  });
}

