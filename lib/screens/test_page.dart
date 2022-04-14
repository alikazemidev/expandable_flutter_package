import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  var isActive = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ExpandablePanel(
              controller: ExpandableController(
                initialExpanded: isActive,
              ),
              header: Text(''),
              collapsed: Column(
                children: [
                  Stack(
                    children: [
                      Image.asset('images/1.png', width: 400, height: 400),
                      Image.asset('images/2.png', width: 380, height: 380),
                      Image.asset('images/3.png', width: 350, height: 350),
                      Image.asset('images/4.png', width: 300, height: 300),
                    ],
                  ),
                ],
              ),
              expanded: Center(
                child: Column(
                  children: [
                    Image.asset('images/1.png', width: 150, height: 150),
                    Image.asset('images/2.png', width: 150, height: 150),
                    Image.asset('images/3.png', width: 150, height: 150),
                    Image.asset('images/4.png', width: 150, height: 150),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isActive = !isActive;
                });
              },
              child: Text(isActive ? 'جمع کردن کارت ها' : 'مشاهده کارت ها'),
            )
          ],
        ),
      ),
    );
  }
}
