import 'package:flutter/widgets.dart';

class EmptyView extends StatefulWidget {

  @override
  _EmptyViewState createState() => _EmptyViewState();
}

class _EmptyViewState extends State<EmptyView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('error'),
      ),
    );
  }
}

