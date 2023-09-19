import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/screens/chat/chat_view.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://th.bing.com/th/id/R.b66eaf590295d1013cf66fc90cfab164?rik=Q4ayvOrvjO%2fUgQ&riu=http%3a%2f%2fvanille63.v.a.pic.centerblog.net%2fo%2f870c1be3.jpg&ehk=ZLjMMOHN2RqTtoXU0RWG%2bC1fmpaspJTRDndxh6%2bWVvg%3d&risl=&pid=ImgRaw&r=0',
            )
          ),
        ),
        title: const Text('Chat 4U'),
        centerTitle: true,
      ),
      body: const ChatView(),
      );
  }
}