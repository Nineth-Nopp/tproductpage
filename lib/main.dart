import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Page',
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff75c5ba),
        useMaterial3: true,
      ),
      home: ProductPage(),
    );
  }
}

class ProductPage extends StatefulWidget {
  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final int _value = 36;
  int _number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 800,
          margin: const EdgeInsets.all(10),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(40.0),
                child: SizedBox(
                  height: 400,
                  // Set the height of the cropped area
                  child: Image.network(
                    'https://www.2foodtrippers.com/wp-content/uploads/2022/11/Double-Double-Animal-Style-Burger-at-In-N-Out-Burger-1024x768.jpg.webp',
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton.filledTonal(
                        color: Colors.black,
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back_ios_new_outlined),
                      ),
                      const SizedBox(),
                      const SizedBox(),
                      const SizedBox(),
                      const SizedBox(),
                      IconButton.filledTonal(
                        color: Colors.black,
                        onPressed: () {},
                        icon: const Icon(Icons.shopping_cart_outlined),
                      ),
                    ],
                  ),
                ],
              ),
              Positioned(
                top: 250,
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Fruit nutrient meal",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      const Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.blue,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.blue,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.blue,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.blue,
                              ),
                              Icon(
                                Icons.star,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("4.5"),
                          SizedBox(
                            width: 10,
                          ),
                          Text("1248 comments")
                        ],
                      ),
                      const SizedBox(height: 8),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.circle_outlined),
                              SizedBox(
                                width: 3,
                              ),
                              Text("Normal"),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_on_outlined),
                              SizedBox(
                                width: 3,
                              ),
                              Text("1.7 km"),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.access_time_outlined),
                              SizedBox(
                                width: 3,
                              ),
                              Text("32min"),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        "Introduce",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Product description goes here. Provide information about the features and benefits of the product.',
                        style: TextStyle(fontSize: 16),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // Adjust the spacing between the icon and label
                            Text('Expand'),
                            SizedBox(width: 8),
                            Icon(Icons.expand_more),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.white,
                                    spreadRadius: 5,
                                    blurRadius: 10,
                                    offset: Offset(0, 30),
                                  ),
                                ],
                                border: Border.all(
                                    color: Colors.black12, width: 0.8),
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                IconButton(
                                  color: Colors.grey,
                                  icon: const Icon(Icons.remove),
                                  onPressed: () {},
                                ),
                                const SizedBox(
                                  width: 20.0,
                                  child: Text(
                                    '0',
                                    style: TextStyle(fontSize: 24.0),
                                  ),
                                ),
                                IconButton(
                                    color: Colors.grey,
                                    icon: const Icon(Icons.add),
                                    onPressed: () {},
                                    iconSize: 24.0),
                              ],
                            ),
                          ),
                          const SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text("\$ 28 | add to Cart"),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: 235,
                  bottom: 397,
                  left: 280,
                  right: 20,
                  child: Container(
                    child: IconButton.filledTonal(
                      icon: const Icon(Icons.favorite),
                      color: Colors.white,
                      onPressed: () {},
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
