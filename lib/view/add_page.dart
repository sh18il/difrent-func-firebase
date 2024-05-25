import 'package:flutter/material.dart';
import 'package:random_string/random_string.dart';
import 'package:student_mproject/model/model.dart';
import 'package:student_mproject/service/data_service.dart';

class AddPage extends StatelessWidget {
  AddPage({super.key});
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController addresCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TextFormField(
              controller: nameCtrl,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            TextFormField(
              controller: emailCtrl,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
             TextFormField(
              controller: addresCtrl,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            ElevatedButton(
                onPressed: () {
                  add();
                },
                child: Text("submit")),
          ],
        ),
      ),
    );
  }

  add() async {
    StModel ssmodel = StModel(
      name: nameCtrl.text,
      email: emailCtrl.text,
      address: addresCtrl.text,
    );
    await FirebaseService().addData(ssmodel);
  }
}
