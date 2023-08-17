import 'package:flutter/material.dart';

import '../Models/chatItemModel.dart';

class ChatHelper {
  static var chatList = [
    ChatItemModel(
        "Inanc", "Lunch in the evening", "16/08/2023", "images/images-11.PNG",
        statusColor: Colors.blue),
    ChatItemModel("Elon Musk", "Sure", "16/08/2023", "images/images-2.jpg",
        statusColor: Colors.green),
    ChatItemModel("Mary", "Yes, alright", "15/08/2023", "images/images-3.jpg"),
    ChatItemModel(
        "Jane", "Meet this week?", "15/08/2023", "images/images-4.jpg",
        statusColor: Colors.blue),
    ChatItemModel("Ned", "Selam, naber!", "15/08/2023", "images/images-5.jpg",
        statusColor: Colors.green),
    ChatItemModel("Mısra", "Received!", "15/08/2023", "images/images-6.jpg"),
    ChatItemModel("", "Gym bro!", "14/08/2023", "images/images-7.jpg"),
  ];

  static ChatItemModel getChatItem(int position) {
    return chatList[position];
  }

  static var itemCount = chatList.length;
}
