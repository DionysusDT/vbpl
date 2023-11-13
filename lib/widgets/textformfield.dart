import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String label;
  final TextFormField textFormField;
  final bool isRequired;
  const TextFormFieldWidget({super.key, required this.label, required this.textFormField, this.isRequired = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [ 
        // Text(label , style: TextStyle(fontWeight: FontWeight.w500)),
        Text.rich(
          TextSpan(
            text: label,
            children: [
              TextSpan(
                text: isRequired ? ' (*)' : '',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 4,
        ),
        textFormField,
      ],
    );
  }
}