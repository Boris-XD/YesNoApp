import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_messages_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/you_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {

    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
                itemCount: chatProvider.messages.length,
                itemBuilder: (context, index) {

                  final message = chatProvider.messages[index];

                  return message.fromWho == FromWho.other
                          ? YouMessageBubble(textMessage: message.text)
                          : MyMessageBubble(textMessage: message.text);
                }
              ),
            ),
            const MessageFieldBox()
          ],
        )
    ));
  }
}