import 'package:flutter/material.dart';
import 'package:group18_final_project_food_recipe_app/screens/home.dart';
import 'package:group18_final_project_food_recipe_app/screens/profile.dart';

class RecipeViewPage extends StatefulWidget {
  @override
  _RecipeViewPageState createState() => _RecipeViewPageState();
}

class _RecipeViewPageState extends State<RecipeViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'ReciPy',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.35,
              child: Card(
                child: Image.network(
                  'https://imageproxy.wolt.com/venue/6232faaafd94b762808350de/ebcc50b6-a903-11ec-8d84-92cd96cd4d02_habib3.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Name:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    SizedBox(height: 10),
                    Text('Steak'),
                    SizedBox(height: 10),
                    Text('Serves:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    SizedBox(height: 10),
                    Text('1'),
                    SizedBox(height: 10),
                    Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Beef Sirloin Cut'),
                        SizedBox(height: 10),
                        Text('Butter'),
                        SizedBox(height: 10),
                        Text('Ginger'),
                        SizedBox(height: 10),
                        Text('Thyme'),
                        SizedBox(height: 10),
                        // Add more ingredients as needed
                      ],
                    ),
                    SizedBox(height: 10),
                    Text('Steps:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Step:1- Rub the steak cut dry.'),
                        SizedBox(height: 10),
                        Text('Step:2- Heat the pan'),
                        SizedBox(height: 10),
                        Text('Step:3- Once pan is extremely hot, sear the meat'),
                        SizedBox(height: 10),
                        // Add more steps as needed
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Recipe',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage()),);
              break;
            case 1:
            // Do nothing because we're already at the MyRecipePage
              break;
            case 2:
              Navigator.push(context,MaterialPageRoute(builder: (context) => ProfilePage()),);
              break;
          }
        },
      ),
    );
  }
}
