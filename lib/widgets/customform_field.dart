import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField(
      {super.key,
      required this.label,
      required this.type,
      required this.controller});

  final String label;
  final String type;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    TextInputType keyboardType;

    switch (type) {
      case 'text':
        keyboardType = TextInputType.text;
        break;
      case 'number':
        keyboardType =
            const TextInputType.numberWithOptions(decimal: false, signed: true);
        break;
      case 'date':
        keyboardType = TextInputType.datetime;
        break;

      default:
        keyboardType = TextInputType.text;
    }

    return Column(
      children: [
        TextFormField(
            controller: controller,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              border: const OutlineInputBorder(),
              labelText: label,
            ),
            keyboardType: keyboardType),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
