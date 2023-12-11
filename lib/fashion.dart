import 'package:flutter/material.dart';

class FashionModelsScreen extends StatelessWidget {
  const FashionModelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

            Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Step into styles world!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10), // Adjust spacing between the two texts
                const Text(
                  'Embark on a journey through the world of Fashion, exploring the latest trends and timeless styles.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            const SizedBox(height: 100), // Adjust spacing between description and images

            Wrap(
              alignment: WrapAlignment.center,
              children: [
                Column(
                  children: [
                    const Image(
                      image: AssetImage('images/business.jpg'),
                      height: 300, width: 300,
                    ),
                    const SizedBox(height: 5),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ItemsListScreen(itemsList: businessItems, category: 'Business'),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(100, 40),
                      ),
                      child: const Text('Business'),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Image(
                      image: AssetImage('images/formal.jpg'),
                      height: 300, width: 300,
                    ),
                    const SizedBox(height: 5),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ItemsListScreen(itemsList: formalItems,category: 'Formal'),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(100, 40),
                      ),
                      child: const Text('Formal'),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20), // Adjust spacing between rows of images

          Wrap(
            alignment: WrapAlignment.center,
                children: [
                  Column(
                    children: [
                      const Image(
                        image: AssetImage('images/casual.jpg'),
                        height: 300,width: 300,
                      ),
                      const SizedBox(height: 5),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ItemsListScreen
                                (itemsList: casualItems,category: 'Casual'),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(100, 40),
                        ),
                        child: const Text('Casual'),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const SizedBox(height: 2),
                      const Image(
                        image: AssetImage('images/sports.jpg'),
                        height: 300, width: 300,
                      ),
                      const SizedBox(height: 2),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ItemsListScreen(itemsList: sportsItems,category: 'Sports'),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(100, 40),
                        ),
                        child: const Text('Sports'),
                      ),
                    ],
                  ),
                ],
              ),
          ],
        ),
      ),
    ]),
    )
    )
    );
  }
}
class ItemsListScreen extends StatelessWidget { //list view part
  final List<Item> itemsList;
  final String category;

  const ItemsListScreen({
    Key? key,
    required this.itemsList,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$category Items'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.separated(// to cut the each index alone in the listview..
                itemCount: itemsList.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(height: 30); // Adjust the height between items
                },
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.asset(
                      itemsList[index].imagePath,
                      width: 100,
                      height: 150,

                    ),
                    title: Text(itemsList[index].name),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Production Date: ${itemsList[index].productionDate}'),
                        Text('Brand: ${itemsList[index].brand}'),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class Item {
  final String imagePath;
  final String name;
  final String productionDate;
  final String brand;

  Item({
    required this.imagePath,
    required this.name,
    required this.productionDate,
    required this.brand,
  });
}


final List<Item> businessItems = [
  Item(
    imagePath: 'images/business1.jpg',
    name: 'Gathered-sleeve Jacket',
    productionDate: '2023-01-01',
    brand: 'H&M',
  ),
  Item(
    imagePath: 'images/business2.jpg',
    name: 'Jersey Dress Pants',
    productionDate: '2023-05-01',
    brand: 'Zara',
  ),
  Item(
    imagePath: 'images/business3.jpg',
    name: 'Pinstriped Cropped Blazer',
    productionDate: '2023-02-07',
    brand: 'Adidas',
  ),
  Item(
    imagePath: 'images/business4.jpg',
    name: 'Wool Blend Coat',
    productionDate: '2023-01-10',
    brand: 'H&M',
  ),
  Item(
    imagePath: 'images/business1.jpg',
    name: 'Gathered-sleeve Jacket',
    productionDate: '2023-01-01',
    brand: 'H&M',
  ),
  Item(
    imagePath: 'images/business2.jpg',
    name: 'Jersey Dress Pants',
    productionDate: '2023-05-01',
    brand: 'Zara',
  ),
  Item(
    imagePath: 'images/business3.jpg',
    name: 'Pinstriped Cropped Blazer',
    productionDate: '2023-02-07',
    brand: 'Adidas',
  ),
  Item(
    imagePath: 'images/business4.jpg',
    name: 'Wool Blend Coat',
    productionDate: '2023-01-10',
    brand: 'H&M',
  ),
];

final List<Item> formalItems = [
  Item(
    imagePath: 'images/formal1.jpg',
    name: 'DressedUpper',
    productionDate: '2023-01-02',
    brand: 'H&M',
  ),
  Item(
    imagePath: 'images/formal2.jpg',
    name: 'Ladies Attire',
    productionDate: '2023-01-02',
    brand: 'Zara',
  ),
  Item(
    imagePath: 'images/formal3.jpg',
    name: 'HeyTux',
    productionDate: '2023-01-02',
    brand: 'Adidas',
  ),
  Item(
    imagePath: 'images/formal4.jpg',
    name: 'KingsGala',
    productionDate: '2023-01-02',
    brand: 'H&M',
  ),
  Item(
    imagePath: 'images/formal1.jpg',
    name: 'DressedUpper',
    productionDate: '2023-01-02',
    brand: 'H&M',
  ),
  Item(
    imagePath: 'images/formal2.jpg',
    name: 'Ladies Attire',
    productionDate: '2023-01-02',
    brand: 'Zara',
  ),
  Item(
    imagePath: 'images/formal3.jpg',
    name: 'HeyTux',
    productionDate: '2023-01-02',
    brand: 'Adidas',
  ),
  Item(
    imagePath: 'images/formal4.jpg',
    name: 'KingsGala',
    productionDate: '2023-01-02',
    brand: 'H&M',
  ),

];

final List<Item> casualItems = [
  Item(
    imagePath: 'images/casual1.jpg',
    name: 'Ribbed Knit Dress',
    productionDate: '2023-01-03',
    brand: 'Zara',
  ),
  Item(
    imagePath: 'images/casual2.jpg',
    name: 'Graffiti Hoodie',
    productionDate: '2023-02-06',
    brand: 'Zara',
  ),
  Item(
    imagePath: 'images/casual3.jpg',
    name: 'Over Shirt',
    productionDate: '2023-10-05',
    brand: 'Adidas',
  ),
  Item(
    imagePath: 'images/casual4.jpg',
    name: 'Breasted Boucle Blazer',
    productionDate: '2023-04-12',
    brand: 'G&M',
  ),
  Item(
    imagePath: 'images/casual1.jpg',
    name: 'Ribbed Knit Dress',
    productionDate: '2023-01-03',
    brand: 'Zara',
  ),
  Item(
    imagePath: 'images/casual2.jpg',
    name: 'Graffiti Hoodie',
    productionDate: '2023-02-06',
    brand: 'Zara',
  ),
  Item(
    imagePath: 'images/casual3.jpg',
    name: 'Over Shirt',
    productionDate: '2023-10-05',
    brand: 'Adidas',
  ),
  Item(
    imagePath: 'images/casual1.jpg',
    name: 'Ribbed Knit Dress',
    productionDate: '2023-01-03',
    brand: 'Zara',
  ),

];

final List<Item> sportsItems = [
  Item(
    imagePath: 'images/sport1.jpg',
    name: 'Camo T-shirt Multicolour',
    productionDate: '2023-01-04',
    brand: 'Adidas',
  ),
  Item(
    imagePath: 'images/sport2.jpg',
    name: 'Infant Adi-color Sst',
    productionDate: '2023-07-7',
    brand: 'Nike',
  ),
  Item(
    imagePath: 'images/sport3.jpg',
    name: 'Single Jersey',
    productionDate: '2023-09-04',
    brand: 'Adidas',
  ),
  Item(
    imagePath: 'images/sport4.jpg',
    name: 'Hoodie',
    productionDate: '2023-10-1',
    brand: 'Nike',
  ),
  Item(
    imagePath: 'images/sport1.jpg',
    name: 'Camo T-shirt Multicolour',
    productionDate: '2023-01-04',
    brand: 'Adidas',
  ),
  Item(
    imagePath: 'images/sport2.jpg',
    name: 'Infant Adi-color Sst',
    productionDate: '2023-07-7',
    brand: 'Nike',
  ),
  Item(
    imagePath: 'images/sport3.jpg',
    name: 'Single Jersey',
    productionDate: '2023-09-04',
    brand: 'Adidas',
  ),
  Item(
    imagePath: 'images/sport4.jpg',
    name: 'Hoodie',
    productionDate: '2023-10-1',
    brand: 'Nike',
  ),

];