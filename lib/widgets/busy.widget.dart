import 'package:flutter/material.dart';

class CMBusy extends StatelessWidget {
  bool busy = false;
  Widget child;

  CMBusy({
    @required this.busy,
    @required this.child,
  });


  @override
  Widget build(BuildContext context) {
    return busy
      ? Container(
        child: Center(
          child: CircularProgressIndicator(
            backgroundColor: Colors.indigo,
          ),
        )
      )
      :child;
  }
}