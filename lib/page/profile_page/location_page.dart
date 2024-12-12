import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_project_1/providers/product_provider.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProductProvider>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Center(
            child: Text(
              'Quản lí sổ địa chỉ',
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "UserLocation ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text("|"),
                                  Text(
                                    " 0123456789",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Sửa ",
                                    style: TextStyle(color: Colors.green),
                                  ),
                                  Text("|"),
                                  Text(
                                    " Xóa",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Text("Thanh Ha Song Nhue Cu Lao Xac Song"),
                        const Text("Thanh Ha Song Nhue Cu Lao Xac Song"),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.grey[300],
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(
                                    left: 8, right: 8, top: 3, bottom: 3),
                                child: Row(
                                  children: [
                                    Icon(
                                      size: 15,
                                      Icons.home,
                                      color: Colors.grey,
                                    ),
                                    Text(
                                      "Nhà",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.green,
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(
                                    left: 8, right: 8, top: 3, bottom: 3),
                                child: Text(
                                  "Mạc định",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
