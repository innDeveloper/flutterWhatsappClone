import '../Models/callItemModel.dart';

class CallHelper {
  static var callList = [
    CallItemModel(
        "Alice", "Today, 3:39 PM", "images/images-9.jpg", "Outgoing", "Audio"),
    CallItemModel(
        "John", "Today, 4:41 PM", "images/images-10.jpg", "Incoming", "Video"),
    CallItemModel("Jack", "Yesterday, 4:41 PM", "images/images-2.jpg",
        "Incoming", "Audio")
  ];
  static CallItemModel getCallItem(int position) {
    return callList[position];
  }

  static var itemCount = callList.length;
}
