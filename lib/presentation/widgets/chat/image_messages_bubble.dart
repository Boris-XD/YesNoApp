import 'package:flutter/material.dart';

class ImageBubble extends StatelessWidget{

  const ImageBubble({super.key});

  @override
  Widget build(BuildContext context){
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://yesno.wtf/assets/no/30-d37eee83c3c2180de4edb7da6fa9f5b7.gif',
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          // ignore: sized_box_for_whitespace
          return Container(
            width: size.width * 0.7,
            height: 150,
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}