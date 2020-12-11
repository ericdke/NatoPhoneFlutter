import 'package:flutter/material.dart';
import 'manager.dart';

class NatoEnglishButton extends StatelessWidget {
  const NatoEnglishButton({
    Key key,
    @required this.manager,
    @required this.inController,
  }) : super(key: key);

  final NatoManager manager;
  final TextEditingController inController;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        return showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: new Text('Result:'),
              content: Text(manager.decode(inController.text)),
              actions: <Widget>[
                new FlatButton(
                  onPressed: () {
                    Navigator.of(context, rootNavigator: true).pop();
                  },
                  child: new Text('OK'),
                ),
              ],
            );
          }, // builder
        ); // return
      }, // onpressed
      child: Text('Go!'),
    );
  }
}

class EnglishNatoButton extends StatelessWidget {
  const EnglishNatoButton({
    Key key,
    @required this.manager,
    @required this.outController,
  }) : super(key: key);

  final NatoManager manager;
  final TextEditingController outController;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        return showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: new Text('Result:'),
              content: Text(manager.encode(outController.text)),
              actions: <Widget>[
                new FlatButton(
                  onPressed: () {
                    Navigator.of(context, rootNavigator: true).pop();
                  },
                  child: new Text('OK'),
                ),
              ],
            );
          }, // builder
        ); // return
      }, // onpressed
      child: Text('Go!'),
    );
  }
}
