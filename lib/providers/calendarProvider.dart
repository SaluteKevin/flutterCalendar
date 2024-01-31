import 'package:calendar_app/models/CalendarInfo.dart';
import 'package:flutter/foundation.dart';

class CalendarProvider with ChangeNotifier{
  List<CalendarInfo> calendars =[
    CalendarInfo("ปฏิทินรูปสัตว์", "ตั้งโต๊ะ", 100, "assets/images/image1.jpg",
        "20"),
    CalendarInfo(
        "ปฏิทินตัวการ์ตูนสัตว์", "แขวน", 80, "assets/images/image2.jpg", "10"),
    CalendarInfo("ปฏิทินสวนสัตว์", "พกพา", 10, "assets/images/image3.jpg",
        "0"),
    CalendarInfo("ปฏิทินสัตว์ป่า", "โปสเตอร์", 50, "assets/images/image4.jpg",
        "50"),
    CalendarInfo("ปฏิทินทำงาน", "พกพา", 10, "assets/images/image5.jpg",
        "0"),
    CalendarInfo("ปฏิทินภาพศิลป์", "ตั้งโต๊ะ", 100, "assets/images/image6.jpg",
        "20"),
    CalendarInfo("ปฏิทินแมวน้อย", "ตั้งโต๊ะ", 100,  "assets/images/image7.jpg",
        "10"),
    CalendarInfo("ปฏิทินแฟนตาซี", "พกพา", 10, "assets/images/image8.jpg",
        "30"),
    CalendarInfo("ปฏิทินอวกาศ", "พกพา", 10, "assets/images/image9.jpg",
        "40"),
    CalendarInfo("ปฏิทินนักบินอวกาศ", "โปสเตอร์", 50, "assets/images/image10.jpg",
        "60"),
    CalendarInfo("ปฏิทินเฉลิมฉลอง", "ตั้งโต๊ะ", 100, "assets/images/image11.jpg",
        "15"),
  ];

  List<CalendarInfo> getCalendar(){
    return calendars;
  }

}