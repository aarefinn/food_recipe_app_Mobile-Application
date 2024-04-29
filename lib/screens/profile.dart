import 'package:flutter/material.dart';
import 'package:group18_final_project_food_recipe_app/screens/home.dart';
import 'package:group18_final_project_food_recipe_app/screens/myRecipe.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    radius: 100, // Changed from 50 to 100
                    backgroundImage: NetworkImage('https://b.fssta.com/uploads/application/soccer/headshots/885.vresize.350.350.medium.14.png'),
                  ),
                  TextButton(
                    onPressed: () {
                      // Add your onPressed code here!
                    },
                    child: Text('Change Profile Picture'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text('Username:', style: TextStyle(fontWeight: FontWeight.bold, fontSize:20)),
            SizedBox(height: 10),
            Text('Name', style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text('Email:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            SizedBox(height: 10),
            Text('email', style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text('Recipes:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            SizedBox(height: 10),
            Text('3', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyRecipePage()),
              );
              break;
            case 2:
            // Do nothing because we're already at the Profile page
              break;
          }
        },
      ),
    );
  }
}
