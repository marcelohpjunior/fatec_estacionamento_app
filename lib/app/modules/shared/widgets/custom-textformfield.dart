import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CustomTextFormField extends StatelessWidget {
  final FormFieldValidator<String> validator;
  final bool obscureText;
  final String labelText;
  final TextInputType keyboardType;
  final controller;
  final TextEditingController textEditingController;
  final Color cursorColor;
  final Color iconColor;
  final Color borderColor;
  final Color labelColor;
  final ValueChanged<String> onChanged;

  CustomTextFormField(
      {this.validator,
      @required this.labelText,
      @required this.keyboardType,
      @required this.obscureText,
      this.textEditingController,
      this.controller,
      this.cursorColor,
      this.iconColor,
      this.borderColor,
      this.labelColor,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    this.controller?.mostrarSenha =
        this.obscureText != null ? this.obscureText : false;
    return controller != null
        ? Observer(builder: (_) {
            return _textFormField();
          })
        : _textFormField();
  }

  _textFormField() {
    return TextFormField(
      controller: this.textEditingController,
      keyboardType: keyboardType,
      validator: validator,
      onChanged: onChanged,
      obscureText: this.controller?.mostrarSenha != null
          ? this.controller?.mostrarSenha
          : false,
      cursorColor: this.cursorColor,
      decoration: InputDecoration(
        suffixIcon: this.obscureText
            ? IconButton(
                onPressed: () {
                  this.controller.mudarIconSenha();
                },
                icon: Icon(
                  this.controller.iconMostrarSenha,
                  color: this.iconColor,
                ),
              )
            : null,
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: this.borderColor),
        ),
        labelText: this.labelText,
        labelStyle: TextStyle(
            color: this.labelColor, fontWeight: FontWeight.bold, fontSize: 16),
      ),
    );
  }
}
