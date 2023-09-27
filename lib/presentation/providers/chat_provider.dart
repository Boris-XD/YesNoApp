import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{
  List<Message> messages = [
    Message( text: 'Hello, how are you?', fromWho: FromWho.other),
    Message( text: 'I am fine, thanks', fromWho: FromWho.me),
    Message( text: 'How about you?', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async{
    messages.add(Message(text: text, fromWho: FromWho.me));
    notifyListeners();
  }
}
