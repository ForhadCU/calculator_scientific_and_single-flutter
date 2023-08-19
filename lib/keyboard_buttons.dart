// ignore_for_file: prefer_const_constructors

import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'constants.dart';
import 'package:flutter/material.dart';

typedef void CallbackButtonTap({String buttonText});

class KeyboardButtons extends StatelessWidget {
  KeyboardButtons({required this.buttons, required this.onTap});

  final String buttons;
  final CallbackButtonTap onTap;

  bool _colorTextButtons() {
    return (
      // buttons == DEL_SIGN ||
        buttons == DECIMAL_POINT_SIGN ||
        // buttons == CLEAR_ALL_SIGN ||
        buttons == MODULAR_SIGN ||
        buttons == PLUS_SIGN ||
        buttons == MINUS_SIGN ||
        buttons == MULTIPLICATION_SIGN ||
        buttons == DIVISION_SIGN ||
        buttons == EXCHANGE_CALCULATOR ||
        buttons == PI ||
        buttons == SQUARE_ROOT_SIGN ||
        buttons == POWER_SIGN ||
        buttons == LN_SIGN ||
        buttons == LG_SIGN ||
        buttons == SIN_SIGN ||
        buttons == COS_SIGN ||
        buttons == TAN_SIGN ||
        buttons == RAD_SIGN ||
        buttons == DEG_SIGN ||
        buttons == ARCSIN_SIGN ||
        buttons == ARCCOS_SIGN ||
        buttons == ARCTAN_SIGN ||
        buttons == LN2_SIGN ||
        buttons == E_NUM ||
        buttons == LEFT_QUOTE_SIGN ||
        buttons == RIGHT_QUOTE_SIGN);
  }

  bool _fontSize() {
    return (buttons == LN_SIGN ||
        buttons == LG_SIGN ||
        buttons == SIN_SIGN ||
        buttons == COS_SIGN ||
        buttons == TAN_SIGN ||
        buttons == RAD_SIGN ||
        buttons == DEG_SIGN ||
        buttons == ARCSIN_SIGN ||
        buttons == ARCCOS_SIGN ||
        buttons == ARCTAN_SIGN ||
        buttons == LN2_SIGN ||
        buttons == LEFT_QUOTE_SIGN ||
        buttons == RIGHT_QUOTE_SIGN);
  }

  @override
  Widget build(BuildContext context) {
    final bool isDigit = (buttons == ONE ||
        buttons == TWO ||
        buttons == THREE ||
        buttons == FOUR ||
        buttons == FIVE ||
        buttons == SIX ||
        buttons == SEVEN ||
        buttons == EIGHT ||
        buttons == NINE ||
        buttons == ZERO);

    return Expanded(
      child: NeumorphicButton(
        margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        style: NeumorphicStyle(
          shadowLightColor: Colors.white30,
          intensity: 1,
          depth: 2,
          shape: NeumorphicShape.concave,
          color: (buttons == EQUAL_SIGN)
              // ? Colors.greenAccent
              ? Color(0xff0B666A)
              : (isDigit)
                  ? Color.fromARGB(255, 33, 36, 75)
                  : (buttons == CLEAR_ALL_SIGN)
                      ? const Color.fromARGB(255, 15, 58, 107)
                      : (buttons == DEL_SIGN)
                          ? Color.fromARGB(255, 102, 19, 19)
                          : Color(0xffB8621B),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttons,
              style: TextStyle(
                  color: (_colorTextButtons())
                      ? Color(0xff262A56)
                      : (buttons == EQUAL_SIGN ||
                              buttons == CLEAR_ALL_SIGN ||
                              buttons == DEL_SIGN)
                          ? Colors.white60
                          : Color.fromARGB(255, 117, 117, 117),
                  fontSize: _fontSize() ? 18 : 20.0),
            ),
          ],
        ),
        onPressed: () => onTap(buttonText: buttons),
      ),
    );
  }
}
