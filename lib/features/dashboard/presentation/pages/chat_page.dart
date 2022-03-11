library chat_page.dart;

import 'package:flutter/material.dart';

/// A stateful widget to render ChatPage.
class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Screen Template for ChatPage'),
      ),
    );
  }
}
