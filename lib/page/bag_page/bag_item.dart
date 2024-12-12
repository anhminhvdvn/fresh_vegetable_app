import 'package:flutter/material.dart';
import 'package:test_project_1/model/product_model.dart';

// ignore: must_be_immutable
class BagItem extends StatelessWidget {
  Product product;
  void Function()? onTap;
  BagItem({
    super.key,
    required this.product,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(12), bottomRight: Radius.circular(12)),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(5.0, 5.0),
                blurRadius: 15.0,
                spreadRadius: 1.0),
            BoxShadow(
                color: Colors.white,
                offset: Offset(-5.0, -5.0),
                blurRadius: 15.0,
                spreadRadius: 1.0),
          ]),
      margin: const EdgeInsets.only(bottom: 10),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              child: Container(
                // height: 130,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(12)),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomLeft: Radius.circular(12)),
                  child: Image.network(
                    height: 120,
                    product.image,
                    // height: 140,
                    // width: 140,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(12)),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 12, right: 12, top: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              product.title,
                              maxLines: 1, // Giới hạn tối đa 2 dòng
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          GestureDetector(
                            onTap: onTap,
                            child: const Icon(Icons.delete),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 12, right: 12, bottom: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '${product.price}\$',
                            style: const TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '\$${(product.price * 1.1).toStringAsFixed(2)}',
                            style: const TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, bottom: 10),
                          child: Container(
                            height: 40,
                            width: 90,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 25,
                                    height: 25,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(40)),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black12,
                                              offset: Offset(5.0, 5.0),
                                              blurRadius: 15.0,
                                              spreadRadius: 1.0),
                                          BoxShadow(
                                              color: Colors.white,
                                              offset: Offset(-5.0, -5.0),
                                              blurRadius: 15.0,
                                              spreadRadius: 1.0),
                                        ]),
                                    child: const Icon(
                                      Icons.remove,
                                    ),
                                  ),
                                  const Text('1'),
                                  Container(
                                    width: 25,
                                    height: 25,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(40)),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black12,
                                              offset: Offset(5.0, 5.0),
                                              blurRadius: 15.0,
                                              spreadRadius: 1.0),
                                          BoxShadow(
                                              color: Colors.white,
                                              offset: Offset(-5.0, -5.0),
                                              blurRadius: 15.0,
                                              spreadRadius: 1.0),
                                        ]),
                                    child: const Icon(Icons.add),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(product.category)),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      // child: ListTile(
      //   leading: Image.asset(
      //     product.imagePath,
      //     fit: BoxFit.cover,
      //   ),
      //   title: Text(product.name),
      //   subtitle: Text('${product.price}\$'),
      //   trailing: IconButton(
      //     icon: const Icon(Icons.favorite_outline),
      //     // onPressed: removeItemFromCart,
      //     onPressed: onTap,
      //   ),
      // ),
    );
  }
}
