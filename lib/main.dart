import 'package:flutter/material.dart';
import 'manager.dart';
import 'buttons.dart';

void main() => runApp(NatoPhoneApp());

class NatoPhoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nato Phone',
      home: NatoForm(),
    );
  }
}

class NatoForm extends StatefulWidget {
  @override
  _NatoFormState createState() => _NatoFormState();
}

class _NatoFormState extends State<NatoForm> {
  final inController = TextEditingController();
  final outController = TextEditingController();
  final manager = NatoManager();

  @override
  void dispose() {
    inController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nato Phone'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: ListView(
            children: [
              Image(
                  image: AssetImage('media/army.jpg'), width: 128, height: 128),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Center(child: Text('Nato code to English:')),
              ),
              TextField(
                controller: inController,
                keyboardType: TextInputType.text,
              ),
              Column(
                children: [
                  NatoEnglishButton(
                      manager: manager, inController: inController),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Center(child: Text('English to Nato code:')),
              ),
              TextField(
                controller: outController,
                keyboardType: TextInputType.text,
              ),
              Column(
                children: [
                  EnglishNatoButton(
                      manager: manager, outController: outController),
                ],
              ),
            ], // children
          ),
        ),
      ),
    );
  }
}
