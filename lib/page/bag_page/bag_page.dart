import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_project_1/components/button.dart';
import 'package:test_project_1/model/product_model.dart';
import 'package:test_project_1/page/bag_page/bag_item.dart';
import 'package:test_project_1/page/profile_page/payment_page.dart';
import 'package:test_project_1/providers/product_provider.dart';

class BagPage extends StatefulWidget {
  const BagPage({super.key});

  @override
  State<BagPage> createState() => _BagPageState();
}

class _BagPageState extends State<BagPage> {
  // void addItem(Product product) {
  //   Provider.of<Cart>(context, listen: false).addItemToFavorite(product);
  //   //alert the user, shoe successfully added
  //   showDialog(
  //     context: context,
  //     builder: (context) => const AlertDialog(
  //       title: Text('Succressfully added!'),
  //       content: Text('Check your Favorite'),
  //     ),
  //   );
  // }

  void removeItem(Product product) {
    Provider.of<ProductProvider>(context, listen: false)
        .removeItemFromBag(product);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductProvider>(
      builder: (context, value, child) => Scaffold(
        // extendBodyBehindAppBar: true,
        backgroundColor: Colors.grey[50],
        appBar: AppBar(
          backgroundColor: Colors.green,
          elevation: 0,
          foregroundColor: Colors.grey[900],
          title: const Center(
            child: Text(
              'Giỏ hàng',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.grey[100],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 15, left: 15, bottom: 5),
                    child: Text(
                      "Chọn tất cả",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Tiếp tục mua sắm',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.green),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 15, left: 15, right: 15, bottom: 10),
                child: ListView.builder(
                  //Parameters
                  itemCount: value.userbag.length,
                  itemBuilder: (context, index) {
                    //get individual SaleItem
                    Product individualProduct = value.userbag[index];
                    //return the bag item
                    return BagItem(
                      product: individualProduct,
                      onTap: () => removeItem(individualProduct),
                      // onTap: () => addItem(individualProduct),
                    );
                  },
                ),
              ),
            ),

            //total + pay now
            // boxShadow: const [
            //   BoxShadow(
            //       color: Colors.black12,
            //       offset: Offset(5.0, 5.0),
            //       blurRadius: 15.0,
            //       spreadRadius: 1.0),
            //   BoxShadow(
            //       color: Colors.white,
            //       offset: Offset(-5.0, -5.0),
            //       blurRadius: 15.0,
            //       spreadRadius: 1.0),
            // ],
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Thành tiền:",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                      Text(
                        '${value.calculateTotal()}\$',
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                    child: MyButton(
                      buttonHeight: 50,
                      buttonColor: Colors.green,
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PaymentPage()),
                      ),
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
