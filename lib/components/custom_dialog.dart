import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  void Function()? onTapDialog;
  DialogBox({super.key, required this.onTapDialog});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // backgroundColor: Colors.yellow[200],
      title: const Row(children: [
        Text('đã thêm vào giỏ!'),
        SizedBox(width: 10),
        Icon(
          Icons.check,
          color: Colors.green,
        )
      ]),
      content: GestureDetector(
        onTap: onTapDialog,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.green,
          ),
          height: 40,
          child: const Center(child: Text("Thanh toán ngay")),
        ),
      ),
    );
  }
}
