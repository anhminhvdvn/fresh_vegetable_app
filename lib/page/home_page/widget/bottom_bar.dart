import 'package:flutter/material.dart';
import 'package:test_project_1/components/button.dart';
import 'package:test_project_1/page/bag_page/bag_page.dart';
import 'package:test_project_1/page/profile_page/payment_page.dart';
import 'package:test_project_1/page/profile_page/profile_page.dart';

// ignore: must_be_immutable
class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black12,
              offset: Offset(5, -5),
              blurRadius: 12,
              spreadRadius: 0),
          BoxShadow(
              color: Colors.grey,
              offset: Offset(-5.0, -5.0),
              blurRadius: 12,
              spreadRadius: 0),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              child: Container(
                child: const Column(
                  children: [
                    Icon(
                      Icons.home_outlined,
                      color: Colors.green,
                    ),
                    Text(
                      "Trang chủ",
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 400,
                      width: double.infinity,
                      child: Column(
                        children: [
                          const SizedBox(height: 18.0),
                          const Text(
                            "Chọn số tiền muốn nạp",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          const SizedBox(height: 5.0),
                          const Text(
                            "lưu ý! số tiền nạp tối thiểu là: 50.000 đ",
                            style: TextStyle(fontSize: 16),
                          ),
                          const SizedBox(height: 16.0),
                          const Text(
                            "50.000 đ",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 5),
                            child: Divider(
                              thickness: 1,
                              indent: 20,
                              endIndent: 20,
                              color: Colors.grey[300],
                            ),
                          ),
                          const Text(
                            "100.000 đ",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 5),
                            child: Divider(
                              thickness: 1,
                              indent: 20,
                              endIndent: 20,
                              color: Colors.grey[300],
                            ),
                          ),
                          const Text(
                            "150.000 đ",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 18),
                          SizedBox(
                            height: 80,
                            // decoration: BoxDecoration(color: Colors.green),
                            child: Container(
                              margin: const EdgeInsets.only(
                                  top: 20, right: 15, left: 15, bottom: 0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 20, bottom: 10),
                                child: TextField(
                                  // controller : myController,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Số tiền tùy chỉnh",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(24, 10, 24, 10),
                            child: MyButton(
                              buttonHeight: 45,
                              onTap: () {
                                Navigator.pop(context);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PaymentPage()),
                                );
                              },
                              buttonText: 'Xác nhận',
                              buttonColor: Colors.green,
                              textColor: Colors.white,
                              borderRadius: 30,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Container(
                child: const Column(
                  children: [
                    Icon(
                      Icons.payment_outlined,
                      color: Colors.grey,
                    ),
                    Text("Nạp tiền"),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BagPage()),
              ),
              child: Container(
                child: const Column(
                  children: [
                    Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.grey,
                    ),
                    Text("Giỏ hàng"),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              ),
              child: Container(
                child: const Column(
                  children: [
                    Icon(
                      Icons.person_outline,
                      color: Colors.grey,
                    ),
                    Text("Tài khoản"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
