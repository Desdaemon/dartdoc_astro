#!/usr/bin/env dart

import 'dart:io';

import 'package:glob/glob.dart';
import 'package:glob/list_local_fs.dart';
import 'package:path/path.dart' as p;

void main(List<String> args) async {
  final root = switch (args.firstOrNull) { final root? => root, _ => '.' };
  await Future.wait(Glob('$root/**.md').listSync().map((md) async {
    final name = p.basenameWithoutExtension(md.path);
    final original = await File(md.path).readAsString();
    await File(md.path).writeAsString('''---
title: "$name"
---
$original''');
    return;
  }));
}
