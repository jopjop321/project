import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  final home_controller = Get.put(Home_controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("J"),
      ),
      body: SafeArea(
        child: 
        // GetX<Home_controller>(
          // builder: (controller) {
            // return
             Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'You have pushed the button this many times:',
                  ),
                  Obx(
                    () => Text(
                      '${home_controller.counter}',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                ],
              ),
            )
            // ;
          // },
        // ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: home_controller.incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
