import 'package:flutter/material.dart';
import 'new_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        title: const Text(
          "My Flutter Project",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: const [
          IconButton(onPressed: null, icon: Icon(Icons.favorite_border)),
          IconButton(onPressed: null, icon: Icon(Icons.notifications_none)),
        ],
      ),
      drawer: NavigationDrawer(
        children: [
          DrawerHeader(
            child: UserAccountsDrawerHeader(
              decoration: const BoxDecoration(color: Colors.deepPurple),
              accountName: const Text("Mahjabin Akthar Anika"),
              accountEmail: const Text("0182320012101203"),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Profile"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.contact_page),
            title: const Text("Contact"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NewPage()),
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pinkAccent,
        onPressed: () {},
        tooltip: "Add Something",
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text(
                "Welcome to Flutter!",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NewPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 15,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    child: const Text("Go to New Page"),
                  ),
                  const SizedBox(width: 20),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.purpleAccent,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 15,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    child: const Text("Text Button"),
                  ),
                  const SizedBox(width: 20),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: Colors.deepPurple,
                        width: 2,
                      ),
                      foregroundColor: Colors.deepPurple,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 15,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    child: const Text("Outlined"),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Container(
                width: 350,
                height: 180,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.purpleAccent.shade100,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Text(
                  "Learning Flutter is Fun!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Card(
                color: Colors.pinkAccent.shade100,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const SizedBox(
                  height: 150,
                  width: 150,
                  child: Center(
                    child: Text(
                      "Hi, i am Anika",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Image.asset('assets/images/flutter.png', height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
