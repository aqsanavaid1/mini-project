// ignore: file_names
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../colors/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> values = [
    {
      "nameplate": 'assets/images/Group 01.png',
      "searchbar": 'assets/images/searchbar.png',
      "text": 'assets/images/Text.png',
      "Recommeded": 'Recommended',
    },
    {
      "nameplate": 'assets/images/Group 01.png',
      "searchbar": 'assets/images/searchbar.png',
      "text": 'assets/images/Text.png',
    },
     {
      "nameplate": 'assets/images/Group 01.png',
      "searchbar": 'assets/images/searchbar.png',
       "text":  'assets/images/bycategory.png'
    },
  ];
  final PageController _pageController = PageController(initialPage: 0);


  bool showBanner = true;
  bool recomendedText = true;
  bool productImage = true;
  

  
  int currentpageindex = 1;
  bool horizontalcontainers = true;
  bool deals = true;
  bool deal1 = true;
  bool deal2 = true;

// Initially, show the banner on the first screen.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 300,
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: _pageController,
              itemCount: 3,
              onPageChanged: (int page) {
                // Update the showBanner variable based on the current page.
                setState(() {
                  recomendedText = page == 0;
                  productImage = page == 0;
                  showBanner = page == 0;
                  horizontalcontainers = page == 1;
                  deals = page == 1;
                  deal1 = page == 1;
                  deal2 = page == 1;
                });
              },
              itemBuilder: (context, index) {
                return Container(
                  height: 200,
                  width: 200,
                  color: screenOneColor,
                  child: Column(
                    children: [
                      const Padding(padding: EdgeInsets.fromLTRB(5, 80, 5, 0)),
                      Image.asset(values[index]['nameplate']),
                      const SizedBox(
                        height: 20,
                      ),
                     
                      Image.asset(values[index]['searchbar']),
                      const SizedBox(
                        height: 20,
                      ),
                      Image.asset(values[index]['text']),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          
          if (showBanner) bannerCard(),
          const SizedBox(
            height: 10,
          ),
          if (recomendedText)
            const Padding(
              padding: EdgeInsets.fromLTRB(2, 0, 150, 0),
              child: Text("Recommended",
                  style: TextStyle(
                    fontSize: 30,
                  )),
            ),
          const SizedBox(
            height: 0,
          ),
          if (productImage)
           Image.asset('assets/images/Products.png'),
           const SizedBox(
            height: 0,
           ),

    if (currentpageindex ==1 && currentpageindex != 0)
           if (horizontalcontainers)
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
              Expanded(
                child: Image.asset('assets/images/totalsavings.png'),
              ),
              Expanded(
                child: Image.asset('assets/images/timesavings.png'),
              ),
            ]),
          const SizedBox(
            height: 0,
          ),
     if (currentpageindex == 1)
         if (deals)
            const Padding(
              padding: EdgeInsets.fromLTRB(7.5, 0, 150, 0),
              child:
                  Text("Deals on Fruits & Tea", style: TextStyle(fontSize: 25)),
            ),
          const SizedBox(
            height: 0,
          ),
          if(currentpageindex == 1)
          Row(
            children: [
              Expanded(
                child: Image.asset('assets/images/deal1.png'),
              ),
              Expanded(
                child: Image.asset('assets/images/deal2.png'),
              ),
            ],
        
          ),
         

        ],
        
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  Widget bannerCard() {
    return CarouselSlider(
      items: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: const DecorationImage(
              image: AssetImage('assets/images/Card.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
      options: CarouselOptions(
        height: 150,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayAnimationDuration: const Duration(milliseconds: 900),
        viewportFraction: 0.8,
      ),
    );
  }
 }
 
// Function to build the BottomNavigationBar
  Widget buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.category),
          label: "Category",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: "Favorites",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_vert),
          label: "More",
        ),
      ],
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    );
  
  }

