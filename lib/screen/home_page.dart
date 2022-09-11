import 'package:counter_getx/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Controller c = Get.put(Controller());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter++"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text(c.count.toString(),
                  style: const TextStyle(fontSize: 100))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        c.increment();
                      },
                      child: const Text("+", style: TextStyle(fontSize: 50))),
                  ElevatedButton(
                      onPressed: () {
                        c.decrement();
                      },
                      child: const Text("-", style: TextStyle(fontSize: 50))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
