import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/you_message_bubble.dart';

import '../../widgets/chat/my_messages_bubble.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {

                  if (index % 2 == 0) {
                    return const YouMessageBubble();
                  }
                  return const MyMessageBubble();
                }
              ),
            ),
            const Text('mesagges')
          ],
        )
    ));
  }
}