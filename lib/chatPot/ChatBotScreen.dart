import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'ChatBotMessage.dart';
import 'Chat_masseage_Widget.dart';


class ChatBotScreen extends StatefulWidget {
  const ChatBotScreen({Key? key}) : super(key: key);

  @override
  State<ChatBotScreen> createState() => _ChatBotScreenState();
}
//
// Future<String> generateResponse(String prompt) async {
//   const apikey = "";
//   var uri = Uri.http("api.openai.com", "/v1/copletions");
//   final respons = await http.post();
// }

class _ChatBotScreenState extends State<ChatBotScreen> {
  final _textcontrolar = TextEditingController();
  final _scrollControlar = ScrollController();
  final List<ChatMessage> _message = [];
  late bool isloadig;
  @override
  void initState() {
    super.initState();
    isloadig = false;
  }

  void _scrollDown() {
    _scrollControlar.animateTo(_scrollControlar.position.maxScrollExtent,
        duration: Duration(milliseconds: 300), curve: Curves.easeOut);
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Chat Bot"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              controller: _scrollControlar,
                itemCount: _message.length,
                itemBuilder: (context,index){
                var messeage=_message[index];
                return ChatMessageWidget(text: messeage.text,chateMessagetype: messeage.chatMessageType,);
                }
            ))
          ],
        ),
      ),
    );
  }
}
