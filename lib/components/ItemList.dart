import 'package:calendar_app/models/CalendarInfo.dart';
import 'package:calendar_app/providers/calendarProvider.dart';
import 'package:calendar_app/screens/ViewPage.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class ItemList extends StatelessWidget {
  const ItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CalendarProvider>(
            builder: (context, value, child) {
            return Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                child: ListView.separated(
                  itemCount: value.calendars.length,
                  separatorBuilder: (BuildContext context, int index){
                    return const Divider(height: 1,);
                  },
                  itemBuilder: (BuildContext context, int index) {
                    CalendarInfo calendar = value.calendars[index];
                    return ListTile(
                      leading: Image.asset(calendar.img),
                      title: Text(
                        calendar.name,
                        style: const TextStyle(fontSize: 20),
                      ),
                      subtitle: calendar.stock == "0"
                          ? const Text(
                              "สินค้าหมด",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.red,
                              ),
                            )
                          : Text(
                              "${NumberFormat("#,###.##").format(calendar.price)} บาท",
                              style: const TextStyle(
                                fontSize: 16,
                                color: Color.fromRGBO(117, 117, 117, 1),
                              ),
                            ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ViewPage(calendar: calendar)
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            );
            },
          );
  }
}