import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/image_messages_bubble.dart';

class YouMessageBubble extends StatelessWidget {
  const YouMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: colors.secondary,
              borderRadius: BorderRadius.circular(20)),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'Hellos, how are you?',
                style: TextStyle(color: Colors.black, fontStyle: FontStyle.italic)),
              ),
            ),

          const SizedBox(height: 5),

          const ImageBubble(),

          const SizedBox(height: 10),
        ],
    );
  }
}

