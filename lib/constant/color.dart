import 'package:flutter/material.dart';

const Color darkpurple = Color(0xFF1B134D);
const Color lightPurple = Color(0xFF6C5CCF);
const Color textCatigories = Color(0xFF4D409E);
const Color white = Color(0xFFffffff);
const Color black = Color(0xFF000000);
const Color transparent = Color(0x00000000);
const Color select = Color(0x67F5F4F4);

const LinearGradient gradiant = LinearGradient(
    colors: [
      lightPurple,
      darkpurple,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    transform: GradientRotation(45));
