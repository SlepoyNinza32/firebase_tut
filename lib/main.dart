import 'package:firebase_tut/model.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MaterialApp(
      home: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  CollectionReference student =
      FirebaseFirestore.instance.collection('student');

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController surnameController = TextEditingController();
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.2,
            child: Column(
              children: [
                TextField(
                  controller: nameController,
                ),
                TextField(
                  controller: surnameController,
                ),
                MaterialButton(
                  onPressed: () {
                    student.add({
                      'name': nameController.value.text,
                      'surname': surnameController.value.text
                    });
                    nameController.text = '';
                    surnameController.text = '';
                    setState(() {});
                  },
                  child: Text('Add'),
                  color: Colors.teal,
                  minWidth: double.infinity,
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.8,
            child: FutureBuilder(
              future: getLength(),
              builder: (context, snapshot) {
                return ListView.builder(
                  itemCount: snapshot.data?.length,
                  itemBuilder: (context, index) => ListTile(
                    title: Text('${snapshot.data?.names[index]}'),
                    subtitle: Text('${snapshot.data?.surnames[index]}'),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Future<ModelOfStudent> getLength() async {
    List<String> name = [];
    List<String> surname = [];
    int length = 0;
    await student.get().then((value) {
      //return value.docs.length as Future<int>;
      length = value.docs.length;
      for (var m in value.docs) {
        name.add(m.get('name'));
        surname.add(m.get('surname'));
      }
      return ModelOfStudent(length, name, surname);
    });
    return ModelOfStudent(length, name, surname);
  }
}
