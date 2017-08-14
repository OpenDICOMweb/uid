// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Original author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'package:system/system.dart';
import 'package:uid/uid.dart';

//TODO: before V0.9.1 decide if all three Errors are necessary

/// Invalid UID String Error - thrown when a [Uid] [String] does not
/// have the correct format. Note: [this] should only be called from
/// [invalidUidStringError] below.  It not be called directly
class InvalidUidStringError extends Error {
  String s;
  String msg;

  InvalidUidStringError(this.s, {this.msg = ""});

  @override
  String toString() => _msg(s, msg: msg);

  static String _msg(String s, {String msg = ""}) =>
      'InvalidUidError $s $msg';
}

/// Logs an Error entry, and then if [throwOnError] is [true] throws an
/// [InvalidUidStringError]; otherwise, returns [null].
/// Note: [this] should be used in preference to [InvalidUidStringError].
Null invalidUidStringError(String s, {String msg = ""}) {
  log.error(InvalidUidStringError._msg(s, msg: msg));
  if (throwOnError) throw new InvalidUidStringError(s, msg: msg);
  return null;
}

/// Invalid UID Error - thrown when a [Uid] [String] does not
/// have the correct format.
/// Note: [this] should only be called from [invalidUidError] below.
/// It not be called directly
class InvalidUidError extends Error {
  Uid uid;
  /// Note: [tag] is [Type] [Object] so Tag doesn't have to be imported.
  Object tag;
  String msg;

  InvalidUidError(this.uid, {this.tag, this.msg = ""});

  @override
  String toString() => _msg(uid, tag: tag, msg: msg);

  static String _msg(Uid uid, {Object tag, String msg = ""}) =>
      'InvalidUidError $uid $tag, $msg';
}

/// Logs an Error entry, and then if [throwOnError] is [true] throws an
/// [InvalidUidError]; otherwise, returns [null].
/// Note: [this] should be used in preference to [InvalidUidListError].
Null invalidUidError(Uid uid, {String msg = ""}) {
  log.error(InvalidUidError._msg(uid, msg: msg));
  if (throwOnError) throw new InvalidUidError(uid, msg: msg);
  return null;
}

/// Invalid UID List Error - thrown when one or more of the [Uid]s in
/// [List<Uid>] do not have the correct format.
/// Note: [this] should only be called from [invalidUidError] below.
/// It not be called directly
class InvalidUidListError extends Error {
  List<Uid> uids;
  Object tag;
  String msg;

  InvalidUidListError(this.uids, {this.tag, this.msg = ""});

  @override
  String toString() => _msg(uids, tag: tag, msg: msg);

  static String _msg(List<Uid> uid, {Object tag, String msg = ""}) => (tag ==
      null)
      ? 'InvalidUidListError $uid $msg'
      : 'InvalidUidListError $uid from Tag: $tag $msg';
}

/// Logs an Error entry, and then if [throwOnError] is [true] throws an
/// [InvalidUidListError]; otherwise, returns [null].
/// Note: [this] should be used in preference to [InvalidUidListError].
Null invalidUidListError(List<Uid> uid, {Object tag, String msg = ""}) {
  log.error(InvalidUidListError._msg(uid, tag: tag, msg: msg));
  if (throwOnError) throw new InvalidUidListError(uid, tag: tag, msg: msg);
  return null;
}