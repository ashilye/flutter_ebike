import 'package:flutter/widgets.dart';

class ErrorView extends StatefulWidget {

  @override
  _ErrorViewState createState() => _ErrorViewState();
}

class _ErrorViewState extends State<ErrorView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('error'),
      ),
    );
  }
}
