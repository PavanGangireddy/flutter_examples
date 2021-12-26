import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String _title;
  final String _body;

  TextSection(this._title, this._body);

  static const double h_pad = 10.0;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              padding: const EdgeInsets.fromLTRB(h_pad, 32.0, h_pad, 20.0),
              child: Text(_title)),
          Container(
            padding: const EdgeInsets.fromLTRB(h_pad, 0, h_pad, h_pad),
            child: Text(_body, style: TextStyle(fontSize: 20)),
          )
        ]);
  }
}
