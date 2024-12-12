import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
//Categories List
  // List CategoriesList = [
  //   ["Make tutorial", "images/gambie.jpg"],
  //   ["Lmao", "images/gambie.jpg"],
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
        title: const Center(
          child: Text(
            'Categories',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          //Top Banner
          // Padding(
          //   padding: const EdgeInsets.only(bottom: 15),
          //   child: Container(
          //     decoration: const BoxDecoration(
          //       color: Colors.white,
          //     ),
          //     child: TabBar(
          //         controller:,
          //         labelColor: Colors.red,
          //         unselectedLabelColor: Colors.black.withOpacity(0.5),
          //         // isScrollable: false,
          //         indicator: const UnderlineTabIndicator(
          //           borderSide: BorderSide(
          //             width: 3,
          //             color: Colors.red,
          //           ),
          //           // insets: EdgeInsets.symmetric(horizontal: 16),
          //         ),
          //         tabs: [
          //           Tab(
          //             text: 'Men',
          //           ),
          //           Tab(
          //             text: 'Men',
          //           ),
          //           Tab(
          //             text: 'Men',
          //           )
          //         ]),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Container(
              decoration: const BoxDecoration(color: Colors.white),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        'Woman',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      // Padding(
                      //   padding: EdgeInsets.only(top: 25, left: 25, right: 25),
                      //   child: Divider(
                      //     color: Colors.red,
                      //   ),
                      // )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Men',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      // Divider(
                      //   color: Colors.white,
                      // ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Kids',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      // Divider(
                      //   color: Colors.white,
                      // ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(13.0, 0, 13, 20),
            child: Container(
              height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.red,
              ),
              child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "SUMMER SALES",
                      maxLines: 20,
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      "Up to 50% off",
                      maxLines: 20,
                      style: TextStyle(
                          fontSize: 15.0,
                          // fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ]),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(13.0, 0, 13, 15),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 110,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12)),
                      ),
                      child: const Align(
                        alignment: FractionalOffset(0.2, 0.5),
                        child: Text(
                          "New",
                          maxLines: 20,
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 110,
                      // color: Colors.white,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(12),
                            bottomRight: Radius.circular(12)),
                        image: DecorationImage(
                          image: AssetImage('images/gamlogo.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(13.0, 0, 13, 15),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 110,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12)),
                      ),
                      child: const Align(
                        alignment: FractionalOffset(0.2, 0.5),
                        child: Text(
                          "Clothes",
                          maxLines: 20,
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 110,
                      // color: Colors.white,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(12),
                            bottomRight: Radius.circular(12)),
                        image: DecorationImage(
                          image: AssetImage('images/clothes.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(13.0, 0, 13, 15),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 110,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12)),
                      ),
                      child: const Align(
                        alignment: FractionalOffset(0.2, 0.5),
                        child: Text(
                          "Shoes",
                          maxLines: 20,
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 110,
                      // color: Colors.white,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(12),
                            bottomRight: Radius.circular(12)),
                        image: DecorationImage(
                          image: AssetImage('images/nike.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(13.0, 0, 13, 15),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 110,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12)),
                      ),
                      child: const Align(
                        alignment: FractionalOffset(0.2, 0.5),
                        child: Text(
                          "Accesories",
                          maxLines: 20,
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 110,
                      // color: Colors.white,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(12),
                            bottomRight: Radius.circular(12)),
                        image: DecorationImage(
                          image: AssetImage('images/accesories.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Padding(
          //   padding: EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 4.0),
          //   child: Container(
          //     child: ListView.builder(
          //       itemCount: CategoriesList.length,
          //       itemBuilder: (context, index) {
          //         return CategoriesTile(
          //           categoriesName: CategoriesList[index][0],
          //           categoriesImages: CategoriesList[index][1],
          //           // onChanged: (value) => checkBoxChanged(value, index),
          //           // deleteFunction: (context) => deleteTask(index),
          //         );
          //       },
          //     ),
          //   ),
          // ),

          //Sale Title
        ],
      ),
    );
  }
}
