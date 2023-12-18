import 'package:flutter/material.dart';
import 'package:identification_mobile/widgets/customform_field.dart';
import 'package:identification_mobile/widgets/customdropdownform_field.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  final _identificationNumberController = TextEditingController();
  String _titleThaiController = '';
  String _titleEngController = '';
  final _nameThaiController = TextEditingController();
  final _surenameThaiController = TextEditingController();

  String userPost = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            CustomFormField(
              label: 'Identification Number',
              type: 'number',
              controller: _identificationNumberController,
            ),
            Row(
              children: [
                CustomDropdownFormField(
                  itemList: const ['นาย', 'นาง', 'นางสาว'],
                  hint: 'คำนำหน้า',
                  controller: _titleThaiController,
                  onChange: (value) {
                    if (value != null) {
                      setState(
                        () {
                          _titleThaiController = value;
                        },
                      );
                    }
                  },
                ),
                Expanded(
                  child: CustomFormField(
                    label: 'ชื่อ',
                    type: 'text',
                    controller: _nameThaiController,
                  ),
                )
              ],
            ),
            CustomFormField(
              label: 'นามสกุล',
              type: 'text',
              controller: _surenameThaiController,
            ),
            CustomDropdownFormField(
                itemList: const ['Mr.', 'Mrs.', 'Miss'],
                hint: 'Title',
                controller: _titleEngController,
                onChange: (value) {
                  if (value != null) {
                    setState(
                      () {
                        _titleEngController = value;
                      },
                    );
                  }
                }),
            MaterialButton(
              onPressed: () {
                setState(() {
                  userPost =
                      '{id : ${_identificationNumberController.text}, name : ${_nameThaiController.text}, surename : ${_surenameThaiController.text}}, title_thai : $_titleThaiController';
                });
              },
              color: const Color.fromARGB(255, 78, 154, 255),
              child: const Text(
                'Submit',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(userPost)
          ],
        ),
      ),
    );
  }
}
