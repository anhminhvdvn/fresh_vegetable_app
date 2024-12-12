import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_project_1/components/custom_dialog.dart';
import 'package:test_project_1/model/product_model.dart';
import 'package:test_project_1/page/bag_page/bag_page.dart';
import 'package:test_project_1/page/home_page/product_detail_page.dart';
import 'package:test_project_1/page/home_page/widget/bottom_bar.dart';
import 'package:test_project_1/page/home_page/widget/category_head.dart';
import 'package:test_project_1/page/home_page/widget/product_tile.dart';
import '../../providers/product_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    // Gọi fetchProducts khi widget được khởi tạo
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ProductProvider>().fetchMenProducts();
      context.read<ProductProvider>().fetchWomenProducts();
    });
  }

  void addItemToCart(Product product) {
    Provider.of<ProductProvider>(context, listen: false).addItemToBag(product);
    showDialog(
      context: context,
      builder: (context) => DialogBox(
        onTapDialog: () {
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        foregroundColor: Colors.grey[900],
        title: const Center(
          child: Text(
            'FARMER',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Consumer<ProductProvider>(
        builder: (context, provider, child) {
          if (provider.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          ////bắt đầu viết nội dung từ đây
          return Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 90,
                        decoration: const BoxDecoration(color: Colors.green),
                        child: Container(
                          margin: const EdgeInsets.only(
                              top: 10, right: 15, left: 15, bottom: 30),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 20, bottom: 10),
                            child: TextField(
                              // controller : myController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Tim kiem san pham",
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 200),
                      Container(
                        height: 70,
                        decoration: const BoxDecoration(color: Colors.green),
                        child: const Center(
                          child: Text(
                            "ƯU ĐÃI MUA NAY MAI NHẬN",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(color: Colors.green),
                        height: 260,
                        child: ListView.builder(
                          itemCount: provider.menproducts.length > 4
                              ? 4
                              : provider.menproducts.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return ProductTile(
                              product: provider.menproducts[index],
                              onAddtoCart: () =>
                                  addItemToCart(provider.menproducts[index]),
                              onTapDetail: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProductDetailPage(
                                    product: provider.menproducts[index],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 10),
                      CategoryHead(
                        title: "CÁC LOẠI RAU XANH",
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 1000,
                        child: GridView.builder(
                          itemCount: provider.womenproducts.length,
                          physics:
                              const NeverScrollableScrollPhysics(), // Vô hiệu hóa cuộn
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 8,
                            mainAxisExtent:
                                260, // điều chỉnh chiều cao mỗi mục ở đây
                          ),
                          itemBuilder: (context, index) {
                            return ProductTile(
                              product: provider.womenproducts[index],
                              onAddtoCart: () =>
                                  addItemToCart(provider.womenproducts[index]),
                              onTapDetail: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProductDetailPage(
                                    product: provider.womenproducts[index],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const BottomBar(),
            ],
          );
        },
      ),
    );
  }
}
