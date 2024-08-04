import 'package:ecommerc_project/data/app_data.dart';
import 'package:ecommerc_project/widgets/category_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                child: Center(
                    child:
                        Icon(Icons.arrow_back, color: Colors.white, size: 20)),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 241, 237, 237),
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      size: 15,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Search Categories',
                      style: TextStyle(fontSize: 11),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  for (int i = 0; i < categories.length; i += 2)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        category_container(i: i),
                        category_container(i: i + 1),
                      ],
                    )
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
            ),
          ],
          borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
        ),
        child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: '',
              ),
            ],
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.black,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed),
      ),
    );
  }
}

class category_container extends StatelessWidget {
  const category_container({
    super.key,
    required this.i,
  });

  final int i;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: AssetImage(categories[i]['img']),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            height: 70,
            padding: EdgeInsets.all(14),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Text(
                  categories[i]['name'],
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                Text(
                  '${categories[i]['count']} product',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
