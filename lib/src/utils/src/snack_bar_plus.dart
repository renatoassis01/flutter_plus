import 'package:flutter/material.dart';
import 'package:flutter_plus/plus.dart';

final snackBarPlus = SnackBarPlus._instance;

class SnackBarPlus {
  static final _instance = SnackBarPlus._();
  SnackBarPlus._();

  final scaffoldKey = GlobalKey<ScaffoldState>();

  void show({
    @required Widget child,
    Color backgroundColor,
    Duration duration,
    SnackBarAction action,
    Animation<double> animation,
    SnackBarBehavior behavior,
    Key key,
    double elevation,
    double width,
    EdgeInsetsGeometry margin,
    EdgeInsetsGeometry padding,
    Function onVisibile,
    ShapeBorder shape,
  }) {
    var _snackBar = SnackBar(
      content: child,
      backgroundColor: backgroundColor,
      duration: duration ?? Duration(seconds: 3),
      action: action,
      animation: animation,
      behavior: behavior,
      elevation: elevation,
      key: key,
      margin: margin,
      onVisible: onVisibile,
      padding: padding,
      shape: shape,
      width: width,
    );
    scaffoldKey.currentState.showSnackBar(_snackBar);
  }

  void showText(
    String text, {
    Color textColor,
    int textLines = 3,
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.normal,
    TextAlign textAlign = TextAlign.center,
    Color backgroundColor,
    Duration duration,
    SnackBarAction action,
    Animation<double> animation,
    SnackBarBehavior behavior,
    Key key,
    double elevation,
    double width,
    EdgeInsetsGeometry margin,
    EdgeInsetsGeometry padding,
    Function onVisibile,
    ShapeBorder shape,
  }) {
    var _snackBar = SnackBar(
      content: TextPlus(
        text,
        color: textColor,
        maxLines: textLines,
        textOverflow: TextOverflow.ellipsis,
        fontSize: fontSize ?? 16,
        fontWeight: fontWeight,
        textAlign: textAlign,
      ),
      backgroundColor: backgroundColor,
      duration: duration ?? Duration(seconds: 3),
      action: action,
      animation: animation,
      behavior: behavior,
      elevation: elevation,
      key: key,
      margin: margin,
      onVisible: onVisibile,
      padding: padding,
      shape: shape,
      width: width,
    );
    scaffoldKey.currentState.showSnackBar(_snackBar);
  }
}
