import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {

    final textController = TextEditingController();
    final focusNode = FocusNode();
    final chatProvider = context.read<ChatProvider>();

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
            final text = textController.value.text;
            chatProvider.sendMessage(text);
            textController.clear();
          },
        ),
      );

    return TextFormField(
      onTapOutside: (event) => focusNode.unfocus(), // This is the line that causes the error
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value)
      {
        chatProvider.sendMessage(value);
        textController.clear();
        focusNode.requestFocus();
      }
    );
  }
}
