// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Original author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'package:uid/uid.dart';

//TODO: before V0.9.1 decide if all three Errors are necessary

/// Invalid UID String Error - thrown when a [Uid] [String] does not
/// have the correct format.
class InvalidUidStringError extends Error {
  String s;
  String msg;

  InvalidUidStringError(this.s, {this.msg = ""});

  @override
  String toString() => message(s, msg: msg);

  static String message(String s, {String msg = ""}) =>
      'InvalidUidError $s $msg';
}

/// Invalid UID Error - thrown when a [Uid] [String] does not
/// have the correct format.
class InvalidUidError extends Error {
  Uid uid;
  /// Note: [tag] is [Type] [Object] so Tag doesn't have to be imported.
  Object tag;
  String msg;

  InvalidUidError(this.uid, {this.tag, this.msg = ""});

  @override
  String toString() => message(uid, tag: tag, msg: msg);

  static String message(Uid uid, {Object tag, String msg = ""}) =>
      'InvalidUidError $uid $tag, $msg';
}

/// Invalid UID List Error - thrown when one or more of the [Uid]s in
/// [List<Uid>] do not have the correct format.
class InvalidUidListError extends Error {
  List<Uid> uids;
  Object tag;
  String msg;

  InvalidUidListError(this.uids, {this.tag, this.msg = ""});

  @override
  String toString() => message(uids, tag: tag, msg: msg);

  static String message(List<Uid> uid, {Object tag, String msg = ""}) => (tag ==
      null)
      ? 'InvalidUidListError $uid $msg'
      : 'InvalidUidListError $uid from Tag: $tag $msg';
}
