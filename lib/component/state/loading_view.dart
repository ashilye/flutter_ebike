import 'package:flutter/widgets.dart';

class LoadingView extends StatefulWidget {
  @override
  _LoadingViewState createState() => _LoadingViewState();
}

class _LoadingViewState extends State<LoadingView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('loading'),
      ),
    );
  }
}

