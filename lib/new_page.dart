import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,

      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        title: const Text("Second Page"),
      ),

      body: Center(
        child: SizedBox(
          width: 320,
          child: Card(
            elevation: 20,
            color: const Color.fromARGB(255, 220, 205, 240),

            child: Padding(
              padding: const EdgeInsets.all(20.0),

              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // ICON
                  const Icon(
                    Icons.flutter_dash,
                    size: 90,
                    color: Colors.deepPurple,
                  ),

                  const SizedBox(height: 15),

                  // MAIN TEXT
                  const Text(
                    "This is our new page!",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // INPUT FIELD (teacher style)
                  TextFormField(
                    controller: textController,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      hintText: "Enter something...",
                      labelText: "Write Something",
                      prefixIcon: Icon(Icons.edit),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // GO BACK BUTTON
                  ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pinkAccent,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 15,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    child: const Text("Go Back"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

