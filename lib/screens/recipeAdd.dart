import 'package:flutter/material.dart';
import 'package:group18_final_project_food_recipe_app/screens/home.dart';
import 'package:group18_final_project_food_recipe_app/screens/profile.dart';

class RecipeAddPage extends StatefulWidget {
  @override
  _RecipeAddPageState createState() => _RecipeAddPageState();
}

class _RecipeAddPageState extends State<RecipeAddPage> {
  List<TextEditingController> ingredientControllers = [TextEditingController()];
  List<TextEditingController> stepControllers = [TextEditingController()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Name:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              TextField(),
              SizedBox(height: 10),
              Text('Serves:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              TextField(),
              SizedBox(height: 10),
              Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              SizedBox(height: 10),
              ...ingredientControllers.map((controller) => TextField(controller: controller)),
              SizedBox(height: 10),
              Center(
                child: TextButton(
                  child: Text('---Add another ingredient---'),
                  onPressed: () {
                    setState(() {
                      ingredientControllers.add(TextEditingController());
                    });
                  },
                ),
              ),
              Text('Steps:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              ...stepControllers.asMap().entries.map((entry) {
                int idx = entry.key;
                TextEditingController controller = entry.value;
                return TextField(controller: controller, decoration: InputDecoration(labelText: 'Step ${idx + 1}'));
              }).toList(),
              Center(
                child: TextButton(
                  child: Text('---Add another step---'),
                  onPressed: () {
                    setState(() {
                      stepControllers.add(TextEditingController());
                    });
                  },
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Add your logic here to handle the 'Add Recipe' button press
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding: EdgeInsets.all(16.0), // This makes the button bigger
                  ),
                  child: Text('Add Recipe'),
                ),
              ),
            ],
          ),
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
