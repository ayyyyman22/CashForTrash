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
import '/auth/firebase_auth/auth_util.dart';

double? pointsCalculate(
  double? clothing,
  double? plastic,
  double? paper,
  double? metal,
) {
  return (clothing ?? 0.0) * 30 +
      (plastic ?? 0.0) * 5 +
      (paper ?? 0.0) * 10 +
      (metal ?? 0.0) * 20;
}
