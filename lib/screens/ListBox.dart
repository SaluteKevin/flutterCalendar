import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// สร้าง container ต้นแบบ
class ListBox extends StatelessWidget {
  // const ListBox({super.key});

  String title;
  double amount;
  Color color;
  double size;

  ListBox(this.title,this.amount,this.color,this.size);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(24)),
      height: size,
      child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
        Text(
          title,
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        Expanded(
            child: Text(
          '${NumberFormat("#,###.##").format(amount)}',
          textAlign: TextAlign.right,
        )),
      ]),
    );
  }
}
