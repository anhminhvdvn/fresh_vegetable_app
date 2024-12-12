// import 'package:flutter/material.dart';
// import 'package:project_1/providers/cart.dart';
// import 'package:project_1/model/product_model.dart';
// import 'package:provider/provider.dart';

// // ignore: must_be_immutable
// class TestBagItem extends StatefulWidget {
//   Product product;
//   TestBagItem({
//     super.key,
//     required this.product,
//   });

//   @override
//   State<TestBagItem> createState() => _TestBagItemState();
// }

// class _TestBagItemState extends State<TestBagItem> {
//   //remove otem from cart
//   void removeItemFromCart() {
//     Provider.of<Cart>(context, listen: false)
//         .removeItemFromCart(widget.product);
//   }

//   //alert the user, shoe successfully added
//   void addItemToFavorite() {
//     Provider.of<Cart>(context, listen: false).addItemToFavorite(widget.product);
//     showDialog(
//       context: context,
//       builder: (context) => const AlertDialog(
//         title: Text('Succressfully added!'),
//         content: Text('Check your cart'),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.grey[100],
//         borderRadius: BorderRadius.circular(8),
//       ),
//       margin: const EdgeInsets.only(bottom: 10),
//       child: ListTile(
//         leading: Image.asset(widget.product.image),
//         title: Text(widget.product.title),
//         subtitle: Text(widget.product.price),
//         trailing: IconButton(
//           icon: const Icon(Icons.delete),
//           // onPressed: removeItemFromCart,
//           onPressed: addItemToFavorite,
//         ),
//       ),
//     );
//   }
// }
