import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_project_1/model/product_model.dart';
import 'package:test_project_1/page/bag_page/bag_item.dart';
import 'package:test_project_1/providers/product_provider.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  void addItem(Product product) {
    Provider.of<ProductProvider>(context, listen: false)
        .addItemToFavorite(product);

    //alert the user, shoe successfully added
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text('Succressfully added!'),
        content: Text('Check your Favorite'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductProvider>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.grey[900],
          title: const Center(
            child: Text(
              '',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'My Favorite',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                  child: ListView.builder(
                //Parameters
                itemCount: value.getUserFavorite().length,
                itemBuilder: (context, index) {
                  //get individual SaleItem
                  Product individualProduct = value.getUserFavorite()[index];
                  //return the bag item
                  return BagItem(
                    product: individualProduct,
                    onTap: () => addItem(individualProduct),
                  );
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
