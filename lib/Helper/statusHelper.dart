import '../Models/statusItemModel.dart';

class StatusHelper {
  static var statusList = [
    StatusItemModel("Jane", "Yesterday, 11:21 PM", "images/images-11.PNG"),
    //StatusItemModel("Jack", "Yesterday, 10:22 PM", "images/images-8.jpg")
  ];

  static StatusItemModel getStatusItem(int position) {
    return statusList[position];
  }

  static var itemCount = statusList.length;
}
