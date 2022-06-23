import 'package:fitween1/model/user/user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatRoomPage extends StatelessWidget {
  ChatRoomPage({Key? key}) : super(key: key);

  List<Message> messages = [
    Message(
      text: 'hi',
      date: DateTime.now().subtract(const Duration(minutes: 1)),
      isSentByMe: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final user = Get.put(FitweenUser());

    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome ${user.name}!'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Container(),
          ),
          Container(
            color: Colors.grey.shade300,
          )
        ],
      ),
    );
  }
}

class Message {
  String? text;
  DateTime? date;
  bool? isSentByMe;

  Message({
    this.text,
    this.date,
    this.isSentByMe,
  });
}
