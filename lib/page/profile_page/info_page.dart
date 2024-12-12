import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_project_1/providers/product_provider.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProductProvider>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Center(
            child: Text(
              'Thông tin cá nhân',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 15, left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 30),
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                            image: const DecorationImage(
                              image: AssetImage('images/blackgoku.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Cập nhật ảnh đại diện",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.green),
                        ),
                      ],
                    ),
                  ),
                ),
                ///////////////////////////////////////////////////////////////////////////
                const Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Họ và tên",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text("Username")
                    ],
                  ),
                ),

                Divider(
                  thickness: 1,
                  color: Colors.grey[300],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Số điện thoại",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text("phonenumber")
                    ],
                  ),
                ),

                Divider(
                  thickness: 1,
                  color: Colors.grey[300],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Giới tính",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "Thêm thông tin",
                        style: TextStyle(color: Colors.green),
                      )
                    ],
                  ),
                ),

                Divider(
                  thickness: 1,
                  color: Colors.grey[300],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Ngày sinh",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "Thêm thông tin",
                        style: TextStyle(color: Colors.green),
                      )
                    ],
                  ),
                ),

                Divider(
                  thickness: 1,
                  color: Colors.grey[300],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
