import 'package:flutter/material.dart';

import '../Models/callItemModel.dart';

class CallListItem extends StatelessWidget {
  final CallItemModel callItem;

  const CallListItem({
    super.key,
    required this.callItem,
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
                backgroundImage: AssetImage(callItem
                    .profileImage), // Profil resim URL'si veya asset yolu
                radius: 32.0, // İstediğiniz boyutu ayarlayabilirsiniz
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                callItem.name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20.0),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                callItem.callStatus == 'Incoming'
                                    ? (Icons.call_received_sharp)
                                    : Icons.call_made_sharp,
                                size: 15,
                                color: callItem.callStatus == 'Incoming'
                                    ? Colors.teal
                                    : Colors.red,
                              ),
                              const SizedBox(
                                width: 6.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child: Text(
                                  callItem.dateTime,
                                  style: const TextStyle(
                                      color: Colors.black45, fontSize: 16.0),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Icon(
                          callItem.callType == 'Audio'
                              ? Icons.call
                              : Icons.videocam,
                          color: Colors.teal)
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
