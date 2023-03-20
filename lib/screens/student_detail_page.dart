import 'package:flutter/material.dart';
import '../model/model.dart';
import 'mark_list_screen.dart';

class StudentDetailsScreen extends StatelessWidget {
  StudentDetailsScreen({Key? key, required this.detailOfStudents}) : super(key: key);

  List<DetailOfStudent> detailOfStudents;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffece9e8),
      appBar: AppBar(
        backgroundColor: Color(0xffFF5200),
        title: Text('Student Details'),
      ),
      body: ListView.builder(
        itemCount: detailOfStudents.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            color: Color(0xffece9e8),
            child: ListTile(
              title: Text(
                detailOfStudents[index].name,
                style: TextStyle(
                    color: Color(0xffFF5200),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                detailOfStudents[index].place,
                style: TextStyle(
                    color: Color(0xfff67132),
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MarkListScreen(marklist:detailOfStudents[index].markslist )));
              },
            ),
            shadowColor: Color(0xffFF5200),
            elevation: 10,
          );
        },
      ),
    );
  }
}
