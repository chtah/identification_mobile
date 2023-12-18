import 'package:flutter/material.dart';
import 'package:identification_mobile/widgets/customform_field.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  final _identificationNumberController = TextEditingController();
  final _nameController = TextEditingController();
  final _surenameController = TextEditingController();

  String userPost = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CustomFormField(
              label: 'Identification Number',
              type: 'number',
              controller: _identificationNumberController,
            ),
            CustomFormField(
              label: 'Name',
              type: 'text',
              controller: _nameController,
            ),
            CustomFormField(
              label: 'Surename',
              type: 'text',
              controller: _surenameController,
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  userPost =
                      '{id : ${_identificationNumberController.text}, name : ${_nameController.text}, surename : ${_surenameController.text}}';
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
