import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

String? func(String? fullName) {
  if (fullName == null || fullName.isEmpty) return null;

  // Lista de palavras que devem ser ignoradas/removidas
  final ignoreList = {
    'da',
    'de',
    'do',
    'das',
    'dos',
    'e',
    'di',
    'du',
    'del',
    'della'
  };

  List<String> nameParts =
      fullName.split(' ').where((p) => p.trim().isNotEmpty).toList();

  if (nameParts.length <= 2) return fullName;

  String firstName = nameParts.first;
  String lastName = nameParts.last;

  // Filtra partes do meio, ignorando artigos/preposições
  List<String> middleParts = nameParts
      .sublist(1, nameParts.length - 1)
      .where((p) => !ignoreList.contains(p.toLowerCase()))
      .toList();

  String initials = middleParts.map((part) => part[0]).join('. ');

  return '$firstName ${initials.isNotEmpty ? '$initials. ' : ''}$lastName';
}
