import 'package:flutter/material.dart';

import '../Models/chatItemModel.dart';

class ChatListItem extends StatelessWidget {
  final ChatItemModel chatItem;

  const ChatListItem({
    super.key,
    required this.chatItem,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage(chatItem
                    .profileImage), // Profil resim URL'si veya asset yolu
                radius: 32.0, // İstediğiniz boyutu ayarlayabilirsiniz
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            chatItem.name,
                            style: const TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 20.0),
                          ),
                          Text(
                            chatItem.messageDate,
                            style: const TextStyle(color: Colors.black45),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Row(
                          children: [
                            Icon(
                              chatItem.statusColor == Colors.blue
                                  ? Icons.done_all
                                  : chatItem.statusColor == Colors.green
                                      ? Icons
                                          .done_all // Yeşil ise çift tik simgesi
                                      : Icons
                                          .done, // Diğer durumlar için tek tik simgesi
                              size: 15,
                              color: chatItem.statusColor,
                            ),
                            const SizedBox(
                              width: 6.0,
                            ),
                            Text(
                              chatItem.mostRecentMessage,
                              style: const TextStyle(
                                  color: Colors.black45, fontSize: 16.0),
                            ),
                          ],
                        ),
                      ),
                      if (chatItem.profileImage == "images/images-11.png")
                        Padding(
                          padding: const EdgeInsets.only(
                              top:
                                  4.0), // 2.0 yerine istediğiniz değeri ayarlayabilirsiniz
                          child: Text(chatItem.subtitleStatus,
                              style: const TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w500,
                                fontSize:
                                    16.0, // 12.0 yerine istediğiniz değeri ayarlayabilirsiniz
                              )),
                        ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        const Divider(),
      ],
    );
  }
}
