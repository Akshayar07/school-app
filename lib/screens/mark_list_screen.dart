import 'package:flutter/material.dart';
import 'package:future/model/model.dart';


class MarkListScreen extends StatelessWidget {
  MarkListScreen({Key? key, required this.marklist}) : super(key: key);

  List<Markslist> marklist;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffece9e8),
      appBar: AppBar(
        backgroundColor: Color(0xffFF5200),
        title: Text('Mark List'),
      ),
      body: ListView.builder(
        itemCount: marklist.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            color: Color(0xffece9e8),
            child: ListTile(
              title: Text(
                marklist[index].subject,
                style: TextStyle(
                    color: Color(0xffFF5200),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                marklist[index].mark.toString(),
                style: TextStyle(
                    color: Color(0xfff67132),
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            shadowColor: Color(0xffFF5200),
            elevation: 10,
          );
        },
      ),
    );
  }
}
