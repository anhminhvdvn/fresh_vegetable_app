import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BottomBanner extends StatelessWidget {
  const BottomBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 400,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/Khanhbeo.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: const Align(
              alignment: FractionalOffset(0.75, 0.9),
              child: Text(
                "New collection",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Colors.white,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(0.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 200,
                        color: Colors.white,
                        child: const Align(
                          alignment: FractionalOffset(0.25, 0.5),
                          child: Text(
                            "Summer\nsale",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 32,
                              color: Colors.red,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 200,
                        // color: Colors.white,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/clothes.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        // alignment: const FractionalOffset(0.25, 0.75),
                        child: const Align(
                          alignment: FractionalOffset(0.25, 0.75),
                          child: Text(
                            "BLACK",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 32,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 400,
                    // color: Colors.white,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/white.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    // alignment: const FractionalOffset(0.25, 0.75),
                    child: const Align(
                      alignment: FractionalOffset(0.5, 0.5),
                      child: Text(
                        "Men's\nhoodies",
                        maxLines: 20,
                        style: TextStyle(
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
