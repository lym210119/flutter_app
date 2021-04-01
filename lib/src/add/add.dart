import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/src/providers/add_provider.dart';

class Add extends StatefulWidget {
  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add'),
        elevation: 0.0,
      ),
      body: Demo(),
    );
  }
}

class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  int curNum;
  @override
  Widget build(BuildContext context) {
    final addProvider = Provider.of<AddProvider>(context);
    curNum = addProvider.curNum;
    return Column(
          children: [
            Plus(),
            Container(
                child: Text(
              '$curNum',
              style: TextStyle(
                fontSize: 30.0,
              ),
            )),
            Minus(),
          ],
        );
  }
}


class Plus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final addProvider = Provider.of<AddProvider>(context);
    return TextButton(
        onPressed: ()=> {addProvider.plus()},
        child: Text(
          '+',
          style: TextStyle(
            fontSize: 30.0,
          ),
        ));
  }
}

class Minus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final addProvider = Provider.of<AddProvider>(context);
    return TextButton(
        onPressed: () => {addProvider.minus()},
        child: Text(
          '-',
          style: TextStyle(fontSize: 30.0),
        ));
  }
}
