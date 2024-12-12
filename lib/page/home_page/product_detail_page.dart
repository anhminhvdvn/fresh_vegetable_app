import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_project_1/components/button.dart';
import 'package:test_project_1/components/custom_dialog.dart';
import 'package:test_project_1/model/product_model.dart';
import 'package:test_project_1/page/bag_page/bag_page.dart';
import 'package:test_project_1/providers/product_provider.dart';

class ProductDetailPage extends StatefulWidget {
  final Product product;

  const ProductDetailPage({
    super.key,
    required this.product,
  });

  @override
  State<StatefulWidget> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  //add item to favorite + alert
  void addItemToFavorite(Product product) {
    Provider.of<ProductProvider>(context, listen: false)
        .addItemToFavorite(product);
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text('Succressfully added!'),
        content: Text('Check your Favorite'),
      ),
    );
  }

  //add item to cart + alert
  void addItemToCart(Product product) {
    Provider.of<ProductProvider>(context, listen: false)
        .addItemToBag(widget.product);
    showDialog(
      context: context,
      builder: (context) => DialogBox(
        onTapDialog: () {
          Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const BagPage()),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductProvider>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Center(child: Text("Chi tiết sản phẩm")),
          backgroundColor: Colors.green,
          elevation: 0,
          foregroundColor: Colors.white,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      width: double.infinity,
                      widget.product.image,
                      fit: BoxFit.cover,
                      height: 400,
                    ),
                    Divider(
                      thickness: 10,
                      color: Colors.grey[200],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, top: 10, right: 15, bottom: 10),
                      child: Text(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        widget.product.title,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15, right: 15, bottom: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.remove_red_eye_rounded,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text("999 Đã Xem"),
                          SizedBox(
                            width: 20,
                          ),
                          Text("|"),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.shopping_cart,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text("999 Đã bán"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Mã sản phẩm: ${widget.product.id}"),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("Tình trạng: Còn hàng"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, bottom: 10),
                      child: Text(
                        '${widget.product.price}đ',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.green),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.grey[200],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15, right: 15, bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Vận chuyển",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text(
                                  "Miễn phí giao hàng cho đơn hàng từ 300.000đ.")
                            ],
                          ),
                          Row(
                            children: [Text("Giao ngày mai")],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

            //add to Bag button
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(24, 10, 24, 10),
                      child: MyButton(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return SizedBox(
                                height: 400,
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 15,
                                          left: 15,
                                          top: 15,
                                          bottom: 10),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            height: 70,
                                            width: 70,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              child: Image.network(
                                                width: double.infinity,
                                                widget.product.image,
                                                fit: BoxFit.cover,
                                                height: 400,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                widget.product.title,
                                                maxLines:
                                                    1, // Giới hạn tối đa 2 dòng
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Container(
                                                height: 24,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  color: Colors.amber[200],
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    widget.product.category,
                                                    style: const TextStyle(
                                                      color: Colors.amber,
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          right: 15, left: 15, bottom: 10),
                                      child: Text(
                                        'Tùy chọn sản phẩm',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 15, left: 15, bottom: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 60,
                                            width: 130,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: const Color.fromARGB(
                                                        255, 186, 186, 186)),
                                                borderRadius:
                                                    BorderRadius.circular(12)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                const Icon(
                                                    Icons.keyboard_arrow_right),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const Text(
                                                        'Khay 300g',
                                                        style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 15,
                                                        ),
                                                      ),
                                                      Text(
                                                        widget.product.price
                                                            .toStringAsFixed(2),
                                                        style: const TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.grey,
                                                          fontSize: 15,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          Container(
                                            height: 60,
                                            width: 130,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: const Color.fromARGB(
                                                        255, 186, 186, 186)),
                                                borderRadius:
                                                    BorderRadius.circular(12)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                const Icon(
                                                    Icons.keyboard_arrow_right),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const Text(
                                                        'Khay 500g',
                                                        style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 15,
                                                        ),
                                                      ),
                                                      Text(
                                                        '\$${(widget.product.price * 1.5).toStringAsFixed(2)}',
                                                        style: const TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.grey,
                                                          fontSize: 15,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          right: 15, left: 15, bottom: 10),
                                      child: Text(
                                        'số lượng',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 15, left: 15, bottom: 10),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.black),
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        height: 40,
                                        width: 100,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(
                                              height: 20,
                                              width: 20,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black),
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                            ),
                                            const Text("01"),
                                            Container(
                                              height: 20,
                                              width: 20,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black),
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          right: 20.0, left: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Trạm tính',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey,
                                              fontSize: 17,
                                            ),
                                          ),
                                          Text("Total Price")
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 10, 24, 0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          MyButton(
                                            buttonHeight: 40,
                                            buttonWidth: 150,
                                            onTap: () {
                                              Navigator.pop(context);
                                              // addItemToCart(widget.product);
                                            },
                                            buttonText: 'Mua ngay',
                                            buttonColor: Colors.green[100],
                                            textColor: Colors.green,
                                            borderRadius: 30,
                                          ),
                                          MyButton(
                                            buttonHeight: 40,
                                            buttonWidth: 150,
                                            onTap: () {
                                              Navigator.pop(context);
                                              addItemToCart(widget.product);
                                            },
                                            buttonText: 'Thêm vào giỏ hàng',
                                            buttonColor: Colors.green,
                                            textColor: Colors.white,
                                            borderRadius: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        borderRadius: 30,
                        buttonHeight: 50,
                        buttonText: 'Chọn sản phẩm',
                        buttonColor: Colors.green,
                        textColor: Colors.white,
                      ),
                    ),
                  ),
                  const Text(
                    "[Chỉ giao HN] - Giao ngày mai",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
