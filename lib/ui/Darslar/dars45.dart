import 'package:dars27/ui/Darslar/student_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyDbPage extends StatefulWidget {
  @override
  _MyDbPageState createState() => _MyDbPageState();
}

class _MyDbPageState extends State<MyDbPage> {
  @override
  Widget build(BuildContext context) {
    bool isActive = false;
    TextEditingController _controller = TextEditingController();

    Student john = Student("John", 1);
    Map<String, dynamic> createdMap = john.ToMapToDb();
    Student copyJohn = Student.fromMapFromDb(createdMap);
    debugPrint(copyJohn.name.toString());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Work With SQFLite",
          style: TextStyle(
            color: Colors.pink,
          ),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 250.0,
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  hintText: 'Enter a name'),
            ),
          ),
          Checkbox(
              value: isActive,
              onChanged: (v) {
                isActive = !isActive;
                
                setState(() {});
              }),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.send),
          ),
        ],
      ),
    );
  }
}
