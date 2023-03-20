import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'class_detail_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFF5200),
        title: Text('Future School'),
        leading: IconButton(
            onPressed: () {}, icon: Icon(CupertinoIcons.line_horizontal_3)),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.notifications_active_outlined))
        ],
      ),
      body: Column(
        children: [
          const Image(
            image: AssetImage('assets/student.jpg'),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                icon: const Icon(
                  Icons.people_outline_rounded,
                  size: 50,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ClassDetailPage()));
                },
                label: Text(
                  "Class",
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffFF5200),
                  fixedSize: const Size(150, 83),
                ),
              ),
              ElevatedButton.icon(
                icon: const Icon(
                  Icons.local_activity,
                  size: 50,
                  color: Colors.white,
                ),
                onPressed: () {},
                label: Text(
                  "Activity",
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffFF5200),
                  fixedSize: const Size(150, 83),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                icon: const Icon(
                  Icons.event,
                  size: 50,
                  color: Colors.white,
                ),
                onPressed: () {

                },
                label: Text(
                  "Events",
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffFF5200),
                  fixedSize: const Size(150, 83),
                ),

              ),
              ElevatedButton.icon(
                icon: const Icon(
                  Icons.calendar_month_outlined,
                  size: 50,
                  color: Colors.white,
                ),
                onPressed: () {},
                label: Text(
                  "Time Table",
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffFF5200),
                  fixedSize: const Size(150, 83),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
