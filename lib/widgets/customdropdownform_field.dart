import 'package:flutter/material.dart';

class CustomDropdownFormField extends StatelessWidget {
  const CustomDropdownFormField(
      {super.key,
      required this.itemList,
      required this.controller,
      required this.onChange,
      required this.hint});

  final List<String> itemList;
  final String controller;
  final void Function(dynamic) onChange;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Column(
        children: [
          InputDecorator(
            decoration: const InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                border: OutlineInputBorder()),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                items: itemList.map(
                  (value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  },
                ).toList(),
                hint: Text(controller.isEmpty ? hint : controller),
                onChanged: onChange,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
