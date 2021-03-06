import 'package:flutter/material.dart';

class TextFormFieldWidget extends TextFormField {
  TextFormFieldWidget({
    Key? key,
    String? hintText,
    bool? enabled,
    TextEditingController? controller,
    String? Function(String?)? validator,
    Widget? prefixIcon,
    Widget? suffixIcon,
    bool isBorder = false,
    bool? obscureText = false,
    required Color borderColor,
    double? radius,
    String? labelText,
    TextInputType? textInputType,
    int maxLines = 1,
    int? minLines,
    double? fontSize,
    void Function(String?)? onChanged,
  }) : super(
          key: key,
          onChanged: onChanged,
          enabled: enabled ?? true,
          style: const TextStyle(),
          obscureText: obscureText ?? false,
          controller: controller,
          validator: validator,
          minLines: minLines,
          maxLines: maxLines,
          keyboardType: textInputType,
          cursorColor: Colors.grey,
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            fillColor: Colors.transparent,
            filled: isBorder,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 10.0,
            ),
            errorStyle: const TextStyle(
              color: Colors.red,
              fontSize: 16,
            ),
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.grey[800],
              fontSize: 15,
            ),
            border: isBorder
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.circular(radius ?? 8.0),
                    borderSide: BorderSide(
                      color: borderColor,
                      width: 1.0,
                    ),
                  )
                : const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
            enabledBorder: isBorder
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.circular(radius ?? 8.0),
                    borderSide: BorderSide(
                      color: borderColor,
                      width: 1.0,
                    ),
                  )
                : const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
            focusedBorder: isBorder
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.circular(radius ?? 8.0),
                    borderSide: BorderSide(
                      color: borderColor,
                      width: 1.0,
                    ),
                  )
                : const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
            labelText: labelText,
            labelStyle: TextStyle(
              color: Colors.black,
              fontSize: fontSize ?? 15,
            ),
          ),
        );
}
