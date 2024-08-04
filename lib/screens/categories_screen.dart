import 'package:ecommerc_project/data/app_data.dart';
import 'package:ecommerc_project/widgets/category_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                        child: Icon(Icons.arrow_back,
                            color: Colors.white, size: 20)),
                  ),
                  // Spacer(),
                  Icon(
                    Icons.search,
                    size: 25,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Categories',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              for (int i = 0; i < categories.length; i++)
                CategoryCard(
                    name: categories[i]['name'].toString(),
                    count: categories[i]['count'].toString(),
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
