import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {

    final underlineInputBorder = UnderlineInputBorder(
      borderRadius: BorderRadius.circular(40),
      borderSide: const BorderSide(color: Colors.transparent),
    );

    final inputDecoration = InputDecoration(
        hintText: 'End your message with a?',
        enabledBorder: underlineInputBorder,
        focusedBorder: underlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send),
          onPressed: () {
            print('Send Submited');
          },
        ),
      );

    return TextFormField(
      decoration: inputDecoration,
      onFieldSubmitted: (value) => print('Send Submited $value'),
      onChanged: (value) => print('Send Changed $value'),
    );
  }
}
