import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Product layout demo home page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Product Listing')),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            ProductBox(
              name: 'Apple',
              description:
                  'We can get excellent health within a bite of this apple. You will experience the magical taste.',
              price: 10,
              image: '1.PNG',
            ),
            ProductBox(
                name: 'laptop',
                description:
                    'Sony production\nHARD: 1 TB\nRAM: 64 GB\nCPU: Core i 7 - 7th 2.77 GHz * 8 cores',
                price: 500,
                image: '2.PNG'),
            ProductBox(
                name: 'laptop',
                description:
                    'Sony production\nHARD: 1 TB\nRAM: 64 GB\nCPU: Core i 7 - 7th 2.77 GHz * 8 cores',
                price: 400,
                image: '3.PNG'),
            ProductBox(
                name: 'Raw Beef Stake',
                description: 'Delicious Food Ever!',
                price: 10,
                image: '4.PNG'),
            ProductBox(
                name: 'Raw Beef Stake',
                description: 'Delicious Food Ever!',
                price: 15,
                image: '5.PNG'),
            ProductBox(
                name: 'Wed Ring',
                description: "It will increase your groom's love to you!",
                price: 2000,
                image: '6.PNG')
          ],
        ));
  }
}

class ProductBox extends StatelessWidget {
  // @immutable
  ProductBox(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);

  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      height: 150,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(child: Image.asset('assets/' + image)),
            Expanded(
              child: Container(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      Text(description),
                      Text('Price: \$' + price.toString())
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
