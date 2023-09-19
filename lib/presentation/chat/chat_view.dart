import 'package:flutter/material.dart';

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
                  return ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://th.bing.com/th/id/R.b66eaf590295d1013cf66fc90cfab164?rik=Q4ayvOrvjO%2fUgQ&riu=http%3a%2f%2fvanille63.v.a.pic.centerblog.net%2fo%2f870c1be3.jpg&ehk=ZLjMMOHN2RqTtoXU0RWG%2bC1fmpaspJTRDndxh6%2bWVvg%3d&risl=&pid=ImgRaw&r=0',
                      ),
                    ),
                    title: Text('User $index'),
                    subtitle: const Text('message'),
                    trailing: const Text('time'),
                  );
                }
              ),
            ),
            const Text('mesagges')
          ],
        )
    ));
  }
}