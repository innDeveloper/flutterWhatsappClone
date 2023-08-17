import 'package:flutter/material.dart';

class ChatItemModel {
  String name;
  String mostRecentMessage;
  String messageDate;
  String profileImage;
  String subtitleStatus = "Yazıyor...";
  Color? statusColor;
  ChatItemModel(
      this.name, this.mostRecentMessage, this.messageDate, this.profileImage,
      {this.statusColor});
}
