import 'package:flutter/material.dart';
import 'Helper/callHelper.dart';
import 'Helper/chatHelper.dart';
import 'Helper/statusHelper.dart';
import 'Utils/constants.dart';
import 'Widgets/callListItem.dart';
import 'Widgets/chatListItem.dart';
import 'Widgets/statusListItem.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  var fabIcon = Icons.message;
  void _tabListener() {
    setState(() {
      switch (tabController.index) {
        case 0:
          break;
        case 1:
          fabIcon = Icons.message;
          break;
        case 2:
          fabIcon = Icons.camera_enhance;
          break;
        case 3:
          fabIcon = Icons.call;
          break;
      }
    });
  }

  Widget openPopUp() {
    return PopupMenuButton(
      itemBuilder: (context) {
        return List.generate(
            3,
            (index) => const PopupMenuItem(
                  child: Text('Ayarlar'),
                ));
      },
    );
  }

  @override
  void initState() {
    super.initState();

    tabController = TabController(vsync: this, length: 4)
      ..addListener(_tabListener);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "WhatsApp",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: <Widget>[
          const Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.search),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 5.0),
            child: Icon(Icons.message),
          ),
          PopupMenuButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(child: Text('Yeni Grup')),
                  const PopupMenuItem(child: Text('Yeni Yayınlar')),
                  const PopupMenuItem(child: Text('Bağlı Cihazlar')),
                  const PopupMenuItem(child: Text('Yıldızlı Mesajlar')),
                  const PopupMenuItem(child: Text('Ayarlar')),
                ];
              }),
        ],
        backgroundColor: AppColors.whatsAppGreen,
        bottom: TabBar(
          isScrollable: true,
          tabs: const [
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(child: Text("SOHBETLER")),
            Tab(child: Text("DURUM")),
            Tab(child: Text("ARAMALAR")),
          ],
          indicatorColor: Colors.white,
          controller: tabController,
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          const Icon(Icons.camera_alt),
          ListView.builder(
            itemBuilder: (context, position) {
              final chatItem = ChatHelper.getChatItem(position);
              return ChatListItem(chatItem: chatItem);
            },
            itemCount: ChatHelper.itemCount,
          ),
          ListView.builder(
            itemBuilder: (context, position) {
              final statusItem = StatusHelper.getStatusItem(position);
              return StatusListItem(statusItem: statusItem);
            },
            itemCount: StatusHelper.itemCount,
          ),
          ListView.builder(
            itemBuilder: (context, position) {
              final callItem = CallHelper.getCallItem(position);
              return CallListItem(callItem: callItem);
            },
            itemCount: CallHelper.itemCount,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.whatsAppGreenLight,
        child: Icon(fabIcon),
      ),
    );
  }
}
