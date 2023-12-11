import 'package:flutter/material.dart';
import 'fashion.dart';
import 'jewelry.dart';

class YourLogoWidget extends StatelessWidget {
  const YourLogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'images/muselogo.jpg',
      width: 100,
      height: 800,
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool _showThankYouMessage = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('MUSE App'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Fashion'),
              Tab(text: 'Jewelry'),
            ],
          ),

          leading: IconButton( // Menu Button
            icon: const Icon(Icons.menu),
            onPressed: () {
              _scaffoldKey.currentState?.openDrawer();
            },
          ),
          actions: const [ //Sets the logo at the right corner
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: YourLogoWidget(), //logo widget
            ),
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: [
              AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: Colors.black,
                title: const Text('Categories'),

                actions: [
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context); // Close the menu
                    },
                  ),
                ],),
              ListTile(
                title: const Text('Fashion'),
                onTap: () {

                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FashionModelsScreen() ),

                  );
                },
              ),
              ListTile(
                title: const Text('Jewelry'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const JewelryScreen()),
                  );
                },
              ),
              ListTile(
                title: const Text('About Us'),
                onTap: () {
                  Navigator.pop(context);
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('About Us'),
                        content:const  SingleChildScrollView(
                          child: Text(
                            'Muse Arabia Online is the first Arab e-magazine dedicated for fashion and elegance. It will feature the latest trends in the world’s largest and most famous fashion houses with a huge number of correspondents bringing the hottest fashion online news. It is your guide to know more about a variety of high quality products. It is a great opportunity for Arab women who carry passion for elegance and luxury. For all these reasons, we are launching a magazine targeting Arab women passionate about style and glamour particularly in the Gulf region, like KSA, Qatar and UAE. Muse Arabia, the first of its kind, will feature news on luxury fashion brands and special reports on Photo-shoots focusing on shopping, tourism, art, cars, and events. Reports are very well-written in Arabic by an expert Arabic calligrapher and they are very easy to be browsed and read. The magazine has an innovative design with more space for photos. The Editorial Calendar that features the world’s newest shopping destinations will be available very soon. Advertisers’ special reports are very easy to find as browsers can go directly to the advertiser’s page to check catalogues and new products. You can check the flash news which is updated on daily basis or contact us to experience products, locations and make your reservations.The magazine targets women interested in fashion,beauty,Leadership, shopping, travel, arts and events. News articles are available daily online and via emails. It is also addressed to businesswomen and working women to save time and effort and access the latest brands in the largest fashion capitals. Muse Arabia is an online guide to luxury launched today in Arabic featuring news on the latest fashion shows, high quality products and elegant designs by our professional lifestyle editors. The magazine provides news on products worldwide or locally, online stores or retails shops.We aim to utilize our publishing expertise to reach out to a wide audience who is an online user and shopper more than ever. Our international presence has helped us to enhance innovative marketing techniques in order to boost our advertisers’ latest brands.Recent studies focused on e-companies run by women, have shown that women are able to deal with their colleagues operating a complete network. The work starts individually then tasks are automatically organized and distributed among staff. Women know how to run communications on world network level and have the ability to control it and succeed in it. Online experience has changes women’s lives as it made work environment more flexible while keeping the balance with the family life and responsibilities. Many women cyber communities have been formed to exchange experience and communicate with the largest boutiques.In 2012, a study has shown that 71% of Arab women are connected to social media. Arab women seem to be skilled online users as per a recent survey covering 1250 women from the GCC, Jordan, Syria, Lebanon and Egypt.The study confirms that 66% of women communicate online with their friends and 34% spend at least 10 hours weekly browsing the internet, while 45% of women read online news and magazines, and fashion blogs. Statistics show that internet users have jumped from 361 million in 2000 to 2.3 billion in 2011. Online users have increased 143 times from 1995 (16 million users) to 2011. In the Arab region, internet users have reached 77 million people in 2011.For more info, please contact: info@musearabia.net',
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Close'),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
              ListTile(
                title: const Text('Subscribe Now'),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Subscribe us to stay connected in the world of fashion.'),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const TextField(
                              decoration:  InputDecoration(
                                labelText: 'Name',
                                hintText: 'Enter your name',
                              ),
                            ),
                          const  TextField(
                              decoration:  InputDecoration(
                                labelText: 'Email',
                                hintText: 'Enter your email',
                              ),
                            ),
                          const  SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  _showThankYouMessage = true;
                                });
                              },
                              child: const Text('Subscribe'),// button name
                            ),
                            const  SizedBox(height: 10),
                           const  Text('After subscribing tap close'),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Close'),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
        body: _showThankYouMessage
            ? Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Thank you for subscribing!'),
              const  SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _showThankYouMessage = false;
                  });
                },
                child: const Text('Exit'),
              ),
            ],
          ),
        )
            : const TabBarView(
          children: [
            FashionModelsScreen(),
            JewelryScreen(),
          ],
        ),
      ),
    );
  }
}