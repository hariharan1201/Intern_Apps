import 'package:app_2/fruit.dart';
import 'package:flutter/material.dart';

class pickpage extends StatefulWidget {
  const pickpage({super.key});

  @override
  State<pickpage> createState() => _pickpageState();
}

class _pickpageState extends State<pickpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white10,
                  ),
                  child: Center(child: Icon(Icons.arrow_back)),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  height: 800,
                  width: 450,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10)),
                  child: ListView(children: [
                    fruit(
                      name: 'apple',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    fruit(
                      name: 'orange',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    fruit(name: 'Mango'),
                    const SizedBox(
                      height: 10,
                    ),
                    fruit(name: 'Grape'),
                    const SizedBox(
                      height: 10,
                    ),
                    fruit(name: 'Kiwi'),
                    const SizedBox(
                      height: 10,
                    ),
                    fruit(name: 'Blueberry'),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
