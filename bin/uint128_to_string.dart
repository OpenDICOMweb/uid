// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Original author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'dart:convert';
import 'dart:typed_data';

import 'package:bignum/bignum.dart';
import 'package:string/ascii.dart';
import 'package:uid/uid.dart';
import 'package:uuid/uuid.dart';


void main() {
  Uint8List b0 = V4Generator.pseudo.next;
  String s = Uid.generatePseudoUidString();
  print('s[${s.length}]: "$s"');
  print('b0[${b0.length}]: $b0');
  BigInteger i0 = new BigInteger.fromBytes(1, b0);
  print('i0: $i0');
  String s0 = i0.toString();
  print('s0[${s0.length}]: $s0');
  Uint8List b1 = ASCII.encode(s0);
  print('b1[${b1.length}]: $b1');
  BigInteger i1 = new BigInteger.fromBytes(1, b1);
  print('i1: $i1');
  String s1 = i0.toString();
  print('s1[${s1.length}]: $s1');
}

const String radixDigits = '0123456789ABCDEF';

String intToString(int n, int base) => _intToString(n, base);

String _intToString(int n, int base) =>
    (n < base) ? radixDigits[n] : _intToString(n ~/ base, base) + radixDigits[n % base];

String bytesToDecimal(Uint8List bytes) {
  Uint8List digits = ASCII.encode("0123456789");
  Uint8List output = new Uint8List(bytes.length * 4);
  for (int j = 0; j < bytes.length; j++) {
    int v = bytes[j] & 0xFF;
    output[j * 4] = digits[v ~/ 100];
    output[j * 4 + 1] = digits[(v ~/ 10) % 10];
    output[j * 4 + 2] = digits[v % 10];
    output[j * 4 + 3] = kSpace;
  }
  return ASCII.decode(output);
}
