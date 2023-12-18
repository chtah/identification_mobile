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
  @override
  Widget build(BuildContext context) {
    return const Form(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFormField(
              label: 'Identification Number',
              type: 'number',
            ),
            CustomFormField(
              label: 'Name',
              type: 'text',
            ),
            CustomFormField(
              label: 'Surename',
              type: 'text',
            ),
          ],
        ),
      ),
    );
  }
}
