import 'package:flutter/material.dart';

import '../Utils/constants.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TabController tabController;

  const MyAppBar({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        "WhatsApp",
        style: TextStyle(
          color: Colors.white,
          fontSize: 22.0,
          fontWeight: FontWeight.w600,
        ),
      ),
      actions: const <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: Icon(Icons.search),
        ),
        Padding(
          padding: EdgeInsets.only(right: 16.0),
          child: Icon(Icons.more_vert),
        ),
      ],
      backgroundColor: AppColors.whatsAppGreen,
      bottom: TabBar(
        tabs: const [
          Tab(icon: Icon(Icons.camera_alt)),
          Tab(child: Text("CHATS")),
          Tab(child: Text("STATUS")),
          Tab(child: Text("CALLS")),
        ],
        indicatorColor: Colors.white,
        controller: tabController,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
