import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:future/model/model.dart';
import 'package:future/model/service.dart';
import 'package:future/screens/student_detail_page.dart';

class ClassDetailPage extends StatelessWidget {
  const ClassDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffece9e8),
      appBar: AppBar(
        backgroundColor: Color(0xffFF5200),
        title: Text('Class Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
              child: Text(
                'Classes',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffFF5200)),
              ),
            ),
            Expanded(
                child: FutureBuilder(
                    future: service().readJsonData(),
                    builder: (BuildContext context,
                        AsyncSnapshot<ClassDetails> snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return CircularProgressIndicator();
                      }
                      if (snapshot.hasData) {
                        final schoolDetails = snapshot.requireData;
                        return ListView.builder(
                          itemCount: schoolDetails.items.length,
                          itemBuilder: (context, index) {
                            return Card(
                              margin: EdgeInsets.all(10),
                              color: Color(0xffece9e8),
                              child: ListTile(
                                title: Text(
                                  schoolDetails.items[index].nameOfTheClass,
                                  style: TextStyle(
                                      color: Color(0xffFF5200),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text(
                                  schoolDetails.items[index].numberOfStudents,
                                  style: TextStyle(
                                      color: Color(0xffd0774e),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          StudentDetailsScreen(
                                            detailOfStudents: schoolDetails
                                                .items[index].detailOfStudents,
                                          )));
                                },
                              ),
                              shadowColor: Color(0xffFF5200),
                              elevation: 10,
                            );
                          },
                        );
                      }
                      return CircularProgressIndicator();
                    }))
          ],
        ),
      ),
    );
  }
}
