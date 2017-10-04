// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'package:string/string.dart';
import 'package:system/server.dart';
import 'package:test/test.dart';
import 'package:uid/uid.dart';

// TODO: add tests for all three errors in errors.dart.

void main() {
  Server.initialize(name: 'uid_test', level: Level.debug);

  group('SopClass Tests', () {
    test('SopClassUids', () {
      for (var s in sopClassMap.keys) {
        expect(isValidUidString(s), true);
      }

      for (var s in sopClassMap.keys) {
	      final uid = Uid.parse(s);
        final v = uid is SopClass;
        if (!v) log.debug('Bad SopClass: $uid');
        expect(uid is SopClass, true);
      }

      for (var c in sopClassList) {
        expect(c is SopClass, true);
      }
    });
  });
}
