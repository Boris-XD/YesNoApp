import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{

  final ScrollController scrollController = ScrollController();

  List<Message> messages = [
    Message( text: 'Hello, how are you?', fromWho: FromWho.other),
    Message( text: 'I am fine, thanks', fromWho: FromWho.me),
    Message( text: 'How about you?', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async{
    
    if (text.isEmpty) return;

    messages.add(Message(text: text, fromWho: FromWho.me));
    notifyListeners();
    moveScrollToEnd();
  }

  void moveScrollToEnd(){
    scrollController.animateTo(
      scrollController.position.maxScrollExtent + 50.00,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
}
