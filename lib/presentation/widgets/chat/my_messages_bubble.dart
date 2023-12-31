import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {

  final String textMessage;

  const MyMessageBubble({ required this.textMessage, super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
              color: colors.primary,
              borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                textMessage,
                style: const TextStyle(color: Colors.black, fontStyle: FontStyle.italic)),
              ),
            ),
          const SizedBox(height: 10),
        ],
    );
  }
}