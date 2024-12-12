import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_project_1/components/button.dart';
import 'package:test_project_1/providers/product_provider.dart';

class DeliveryPage extends StatefulWidget {
  const DeliveryPage({super.key});

  @override
  State<DeliveryPage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<DeliveryPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProductProvider>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Center(
            child: Text(
              'Chờ thanh toán',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          elevation: 0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.grey[100],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.green,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            left: 8, right: 8, top: 3, bottom: 3),
                        child: Text(
                          "Tất cả",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[200],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            left: 8, right: 8, top: 3, bottom: 3),
                        child: Text(
                          "Chờ thanh toán",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[200],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            left: 8, right: 8, top: 3, bottom: 3),
                        child: Text(
                          "Chờ giao hàng",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[200],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            left: 8, right: 8, top: 3, bottom: 3),
                        child: Text(
                          "Đã giao",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(color: Colors.white),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                  right: 15, left: 15, top: 15, bottom: 10),
                              child: Row(
                                children: [
                                  Text(
                                    "Ngày 28/5/2024 ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("|"),
                                  Text(
                                    " Chờ vận chuyển",
                                    style: TextStyle(color: Colors.amber),
                                  )
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 15,
                                    left: 15,
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 70,
                                        width: 70,
                                        color: Colors.green,
                                        // child: ClipRRect(
                                        //   borderRadius:
                                        //       BorderRadius.circular(12),
                                        //   child: Image.network(
                                        //     width: double.infinity,
                                        //     widget.product.image,
                                        //     fit: BoxFit.cover,
                                        //     height: 400,
                                        //   ),
                                        // ),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            " widget.product.title",
                                            maxLines:
                                                1, // Giới hạn tối đa 2 dòng
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            " +3 sản phẩm khác",
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                right: 15,
                                left: 15,
                                top: 10,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Chi tiết đơn hàng",
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                  Text(
                                    "9.999.999 đ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: Divider(
                                thickness: 1,
                                color: Colors.grey[300],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 250, right: 15, bottom: 10),
                              child: MyButton(
                                buttonHeight: 40,
                                buttonColor: Colors.green,
                                onTap: () {},
                                buttonText: "mua lại",
                                textColor: Colors.white,
                                borderRadius: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
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
