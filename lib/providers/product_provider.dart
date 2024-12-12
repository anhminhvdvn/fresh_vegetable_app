import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../model/product_model.dart';

class ProductProvider with ChangeNotifier {
  //create list of product to use
  List<Product> _menproducts = [];
  List<Product> get menproducts => _menproducts;

  List<Product> _womenproducts = [];
  List<Product> get womenproducts => _womenproducts;

  List<Product> userbag = [];
  List<Product> userfavorite = [];

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  //Bag + calculate total price
  List<Product> getUserBag() {
    return userbag;
  }

  void addItemToBag(Product product) {
    userbag.add(product);
    notifyListeners();
  }

  void removeItemFromBag(Product product) {
    userbag.remove(product);
    notifyListeners();
  }

// String calculateTotal() {
//   double totalPrice = 0;
//   for (int i = 0; i < userbag.length; i++) {
//     totalPrice += userbag[i].price; // Không cần parse vì price đã là double
//   }
//   return totalPrice.toStringAsFixed(2); // Trả về kết quả với 2 chữ số thập phân
// }

// kiểu fold
  String calculateTotal() {
    double totalPrice = userbag.fold(0, (sum, item) => sum + item.price);
    return totalPrice.toStringAsFixed(2);
  }

  //Favorite
  List<Product> getUserFavorite() {
    return userfavorite;
  }

  void addItemToFavorite(Product product) {
    userfavorite.add(product);
    notifyListeners();
  }

  void removeItemFromFavorite(Product product) {
    userfavorite.remove(product);
    notifyListeners();
  }

//===========================================================================
  // Future<List<ProductDetail>> getListProduct() async {
  //   const String userUrl = "https://fakestoreapi.com/products"; // url api

  //   final response =
  //       await http.get(Uri.parse(userUrl)); // gọi lấy dữ liệu dùng http + getx

  //   if (response.statusCode == 200) {
  //     // kiểm tra xem gọi thành công hay không

  //     var body = response.body; // lấy dữ liệu từ body của response

  //     List<dynamic> list = json.decode(
  //         body); // vì dữ liệu là mảng, nên parse kiểu mảng -- Map<String, dynamic> data = json.decode(body)

  //     List<ProductDetail> data = List<ProductDetail>.from(list.map(
  //         (e) => ProductDetail.fromJson(e))); // map list mảng json thành model

  //     return data;
  //   } else {
  //     // thất bại thì show lỗi
  //     Get.snackbar('Error Loading data!',
  //         'Sever responded: ${response.statusCode}:${response.reasonPhrase.toString()}');
  //     return [];
  //   }
  // }

//===========================================================================
  //get API from HTTP
  Future<void> fetchMenProducts() async {
    _isLoading = true;
    notifyListeners();
    try {
      final response = await Dio()
          .get("https://fakestoreapi.com/products/category/men's%20clothing");
      List<dynamic> data = response.data;
      _menproducts = data.map((json) => Product.fromJson(json)).toList();
    } catch (e) {
      print('Error fetching products: $e');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
  //=========================================================================

  Future<void> fetchWomenProducts() async {
    _isLoading = true;
    notifyListeners();
    try {
      final response = await Dio()
          .get("https://fakestoreapi.com/products/category/women's%20clothing");
      List<dynamic> data = response.data;
      _womenproducts = data.map((json) => Product.fromJson(json)).toList();
    } catch (e) {
      print('Error fetching products: $e');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
