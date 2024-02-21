import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final ChatUser _currentUser =
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(title: Text('Sarthi' ,style: TextStyle(color: Colors.white),), backgroundColor: Colors.black,),
            body: DashChat(currentUser: currentUser, onSend: onSend, messages: messages),

    );
  }
}