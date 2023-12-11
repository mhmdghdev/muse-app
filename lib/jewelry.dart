import 'package:flutter/material.dart';

class JewelryScreen extends StatelessWidget {
  const JewelryScreen({super.key});

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
                  'Embark on a journey through the world of Jewelry, exploring the latest trends and timeless styles.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 100), // Adjust spacing between description and images

                Wrap(// when minimize the screen the contents go down
                  alignment: WrapAlignment.center,
                  children: [
                    Column(
                      children: [
                        const Image(
                          image: AssetImage('images/handbag.jpg'),
                          height: 300, width: 300,
                        ),
                        const SizedBox(height: 5),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ItemsListScreen(itemsList: hanBag, category: 'HandBag'),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(100, 40),
                          ),
                          child: const Text('HandBag'),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Image(
                          image: AssetImage('images/watch.jpg'),
                          height: 300, width: 300,
                        ),
                        const SizedBox(height: 5),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ItemsListScreen(itemsList: watches,category: 'Watches'),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(100, 40),
                          ),
                          child: const Text('Watches'),
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
                          image: AssetImage('images/accessories.jpg'),
                          height: 300,width: 300,
                        ),
                        const SizedBox(height: 5),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ItemsListScreen
                                  (itemsList: accessories,category: 'Accessories'),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(120, 40),
                          ),
                          child: const Text('Accessories'),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const SizedBox(height: 10),
                        const Image(
                          image: AssetImage('images/necklaces.jpg'),
                          height: 300, width: 300,
                        ),
                        const SizedBox(height: 5),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ItemsListScreen(itemsList: necklaces,category: 'Necklaces'),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(100, 40),
                          ),
                          child: const Text('Necklaces'),
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
              child: ListView.separated(
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

// Define the item lists for different categories
final List<Item> hanBag = [
  Item(
    imagePath: 'images/handbag1.jpg',
    name: 'Evening Bag',
    productionDate: '2023-13-01',
    brand: 'DH gate',
  ),
  Item(
    imagePath: 'images/handbag2.jpg',
    name: 'Jersey Dress Pants',
    productionDate: '2023-04-01',
    brand: 'Caine Clothiers',
  ),
  Item(
    imagePath: 'images/handbag3.jpg',
    name: '6th street',
    productionDate: '2023-06-10',
    brand: 'Beverly hills',
  ),
  Item(
    imagePath: 'images/handbag4.jpg',
    name: 'Pu Leather',
    productionDate: '2023-8-11',
    brand: 'Caine Clothiers',
  ),
  Item(
    imagePath: 'images/handbag1.jpg',
    name: 'Evening Bag',
    productionDate: '2023-13-01',
    brand: 'DH gate',
  ),
  Item(
    imagePath: 'images/handbag2.jpg',
    name: 'Jersey Dress Pants',
    productionDate: '2023-04-01',
    brand: 'Caine Clothiers',
  ),
  Item(
    imagePath: 'images/handbag3.jpg',
    name: '6th street',
    productionDate: '2023-06-10',
    brand: 'Beverly hills',
  ),
  Item(
    imagePath: 'images/handbag4.jpg',
    name: 'Pu Leather',
    productionDate: '2023-8-11',
    brand: 'Caine Clothiers',
  ),

];

final List<Item> watches = [
  Item(
    imagePath: 'images/watch1.jpg',
    name: 'Tag Heuer Carrera',
    productionDate: '2023-12-1',
    brand: 'Tag Heuer ',
  ),
  Item(
    imagePath: 'images/watch2.jpg',
    name: 'Forest Stellar',
    productionDate: '2023-7-8',
    brand: 'Ralph Christian',
  ),
  Item(
    imagePath: 'images/watch3.jpg',
    name: 'Blazers Curren',
    productionDate: '2023-11-5',
    brand: 'Mens Suits',
  ),
  Item(
    imagePath: 'images/watch4.jpg',
    name: 'Tourbilon Alen',
    productionDate: '2023-4-4',
    brand: 'Richard Mille',
  ),
  Item(
    imagePath: 'images/watch1.jpg',
    name: 'Tag Heuer Carrera',
    productionDate: '2023-12-1',
    brand: 'Tag Heuer ',
  ),
  Item(
    imagePath: 'images/watch2.jpg',
    name: 'Forest Stellar',
    productionDate: '2023-7-8',
    brand: 'Ralph Christian',
  ),
  Item(
    imagePath: 'images/watch3.jpg',
    name: 'Blazers Curren',
    productionDate: '2023-11-5',
    brand: 'Mens Suits',
  ),
  Item(
    imagePath: 'images/watch4.jpg',
    name: 'Tourbilon Alen',
    productionDate: '2023-4-4',
    brand: 'Richard Mille',
  ),
];

final List<Item> accessories = [
  Item(
    imagePath: 'images/accessories1.jpg',
    name: 'Bracelet Gold',
    productionDate: '2023-5-13',
    brand: 'G&M',
  ),
  Item(
    imagePath: 'images/accessories2.jpg',
    name: 'Cut Emerald',
    productionDate: '2023-01-03',
    brand: 'Mejuri',
  ),
  Item(
    imagePath: 'images/accessories3.jpg',
    name: 'Vintage',
    productionDate: '2023-2-7',
    brand: 'Cartier',
  ),
  Item(
    imagePath: 'images/accessories4.jpg',
    name: 'Peridots',
    productionDate: '2023-4-1',
    brand: 'Tiffany',
  ),
  Item(
    imagePath: 'images/accessories1.jpg',
    name: 'Bracelet Gold',
    productionDate: '2023-5-13',
    brand: 'G&M',
  ),
  Item(
    imagePath: 'images/accessories2.jpg',
    name: 'Cut Emerald',
    productionDate: '2023-01-03',
    brand: 'Mejuri',
  ),
  Item(
    imagePath: 'images/accessories3.jpg',
    name: 'Vintage',
    productionDate: '2023-2-7',
    brand: 'Cartier',
  ),
  Item(
    imagePath: 'images/accessories4.jpg',
    name: 'Peridots',
    productionDate: '2023-4-1',
    brand: 'Tiffany',
  ),

];

final List<Item> necklaces = [
 Item(
imagePath: 'images/necklaces1.jpg',
name: 'Valentin',
productionDate: '2023-01-04',
brand: 'Vlogo Star',
),
  Item(
imagePath: 'images/necklaces2.jpg',
name: 'Vintage',
productionDate: '2023-01-04',
brand: 'Van Cleef and Amp',
),
 Item(
imagePath: 'images/necklaces3.jpg',
name: 'Star fall',
productionDate: '2023-01-04',
brand: 'Ettika Forever',
),
 Item(
imagePath: 'images/necklaces4.jpg',
name: 'Inter Looking G',
productionDate: '2023-01-04',
brand: 'Gucci',
),
  Item(
    imagePath: 'images/necklaces1.jpg',
    name: 'Valentin',
    productionDate: '2023-01-04',
    brand: 'Vlogo Star',
  ),
  Item(
    imagePath: 'images/necklaces2.jpg',
    name: 'Vintage',
    productionDate: '2023-01-04',
    brand: 'Van Cleef and Amp',
  ),
  Item(
    imagePath: 'images/necklaces3.jpg',
    name: 'Star fall',
    productionDate: '2023-01-04',
    brand: 'Ettika Forever',
  ),
  Item(
    imagePath: 'images/necklaces4.jpg',
    name: 'Inter Looking G',
    productionDate: '2023-01-04',
    brand: 'Gucci',
  ),

 ];
