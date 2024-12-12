import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_project_1/components/button.dart';
import 'package:test_project_1/page/profile_page/qr_payment.dart';
import 'package:test_project_1/providers/product_provider.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProductProvider>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Center(
            child: Text(
              'Phương thức nạp',
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
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.green),
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                size: 50,
                                Icons.payment_rounded,
                                color: Colors.green,
                              ),
                              Text(
                                "Nạp qua Momo",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                size: 50,
                                Icons.payment_rounded,
                                color: Colors.green,
                              ),
                              Text(
                                "Nạp qua Momo",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                size: 50,
                                Icons.payment_rounded,
                                color: Colors.green,
                              ),
                              Text(
                                "Nạp qua Momo",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                    child: MyButton(
                      buttonHeight: 50,
                      buttonColor: Colors.green,
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
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
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
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 5, bottom: 5),
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
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 5, bottom: 5),
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
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 18),
                                  SizedBox(
                                    height: 80,
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          top: 20,
                                          right: 15,
                                          left: 15,
                                          bottom: 0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.only(
                                            left: 20, bottom: 10),
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
                                    padding: const EdgeInsets.fromLTRB(
                                        24, 10, 24, 10),
                                    child: MyButton(
                                      buttonHeight: 45,
                                      onTap: () {
                                        Navigator.pop(context);
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const QrPayment()),
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
                      buttonText: 'Mua hàng',
                      textColor: Colors.white,
                      borderRadius: 30,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
