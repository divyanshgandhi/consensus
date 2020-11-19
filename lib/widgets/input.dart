import 'package:flutter/material.dart';
import 'package:consensus/assets.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({
    Key key,
    @required this.screenSize,
    @required TextEditingController textController,
  })  : _textController = textController,
        super(key: key);

  final Size screenSize;
  final TextEditingController _textController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenSize.width,
      height: 72.0,
      color: Colors.white,
      child: Row(
        children: [
          SizedBox(
            width: 16.0,
          ),
          Icon(Icons.attach_file, size: 24.0, color: Assets.primary),
          SizedBox(
            width: 16.0,
          ),
          Expanded(
            flex: 4,
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: 'Enter a message',
              ),
            ),
          ),
          SizedBox(
            width: 16.0,
          ),
          Expanded(
            flex: 1,
            child: Icon(Icons.send, size: 24.0, color: Assets.primary),
          ),
        ],
      ),
    );
  }
}
