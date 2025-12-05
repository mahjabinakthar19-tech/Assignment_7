//added statefulwidget for using controller
//added texteditingcontroller
//added card to organize the layout
//added padding inside the card
//added textformfield for typing input
//added decoration (label,hint,prefix icon,border) to the text box
//added sizedbox width to keep the design fixed
//added elevation to make the card look lifted
//added spacing using sizedbox and column arrangement
//added a variable to store submitted textString submittedText = "";
//added submit button
//added text display area

import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  TextEditingController textController = TextEditingController();

  //added a variable to store submitted text
  String submittedText = "";

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
                  const Icon(
                    Icons.flutter_dash,
                    size: 90,
                    color: Colors.deepPurple,
                  ),

                  const SizedBox(height: 15),

                  const Text(
                    "This is our new page!",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),

                  const SizedBox(height: 20),

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

                  const SizedBox(height: 15),

                  //added submit button
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        submittedText = textController.text;
                      });
                    },
                    child: const Text("Submit"),
                  ),

                  const SizedBox(height: 15),

                  //added text display area
                  Text(
                    submittedText,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),

                  const SizedBox(height: 20),

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
