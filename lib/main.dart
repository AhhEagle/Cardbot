import 'package:flutter/material.dart';

void main() => runApp(Chatbot());


class Chatbot extends StatefulWidget {
  @override
  _ChatbotState createState() => _ChatbotState();
}

class _ChatbotState extends State<Chatbot> {
  final List<dynamic> _messages = <dynamic>[];
  final TextEditingController _textController = new TextEditingController();
  BuildContext buildContext;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
