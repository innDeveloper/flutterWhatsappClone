import 'package:flutter/material.dart';

import '../Models/statusItemModel.dart';
import '../Utils/constants.dart';

class StatusListItem extends StatelessWidget {
  final StatusItemModel statusItem;

  const StatusListItem({
    super.key,
    required this.statusItem,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Stack(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: AppColors.circleAvatarBackground;
                    foregroundColor: AppColors.circleAvatarBackground;
                    backgroundImage: AssetImage(statusItem
                        .profileImage), // Profil resim URL'si veya asset yolu
                    radius: 30.0, // İstediğiniz boyutu ayarlayabilirsiniz
                  ),
                  Positioned(
                    top: 40,
                    left: 40,
                    child: CircleAvatar(
                      radius: 10,
                      child: Icon(
                        Icons.add,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListTile(
                  title: Text('Durumum'),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 2.0),
                    child: Text("Durum güncellemek için dokunun"),
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Text('Görüntülenen güncellemeler',
                style: TextStyle(fontWeight: FontWeight.w400)),
          ),
          const Row(
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage("images/images-5.jpg"),
                  ),
                ],
              ),
              Expanded(
                child: ListTile(
                  title: Text('Arya Stark'),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 2.0),
                    child: Text('7 minutes ago'),
                  ),
                ),
              ),
            ],
          ),
          Theme(
            data: ThemeData().copyWith(dividerColor: Colors.transparent),
            child: const ExpansionTile(
              textColor: Colors.black,
              tilePadding: EdgeInsets.all(0.0),
              title: Text(
                'Susturulan Güncellemeler',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              children: [
                Row(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 30,
                          child: CircleAvatar(
                            radius: 28,
                            backgroundImage: AssetImage("images/images-7.jpg"),
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text("ADS"),
                        subtitle: Padding(
                          padding: EdgeInsets.only(top: 2.0),
                          child: Text("Yesterday, 11:21 PM"),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
