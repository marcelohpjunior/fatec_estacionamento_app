import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final Text text;
  final Color color;
  final Color borderColor;
  final VoidCallback onPressed;

  CustomButtom({
    this.text,
    this.color,
    @required this.onPressed,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var contents = <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: text,
          )
        ];

        if (constraints.minWidth == 0) {
          contents.add(SizedBox.shrink());
        } else {
          contents.add(Spacer());
        }

        BorderSide bs;
        if (borderColor != null) {
          bs = BorderSide(
            color: borderColor,
          );
        } else {
          bs = BorderSide.none;
        }

        return ButtonTheme(
          height: 40.0,
          padding: const EdgeInsets.all(8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: bs,
          ),
          child: RaisedButton(
            onPressed: onPressed,
            color: color,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: contents,
            ),
          ),
        );
      },
    );
    // return StretchableButton(
    //   buttonColor: color,
    //   borderRadius: 8,
    //   onPressed: onPressed,
    //   buttonPadding: 8.0,
    //   children: <Widget>[
    //     Padding(
    //       padding: const EdgeInsets.symmetric(horizontal: 100),
    //       child: text,
    //     ),
    //   ],
    // );
  }
}
