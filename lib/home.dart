import 'package:app_2/PickPage.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names

class output extends StatefulWidget {
  output({super.key});
  // ignore: non_constant_identifier_names

  f_name(String name) {
    String fname = name;
    print(fname);
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  output o = new output();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              child: Container(
                height: 100,
                width: 450,
                color: Colors.amber,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const pickpage()));
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              width: 450,
              color: Colors.amber,
              // ignore: unnecessary_this
              child: Center(
                child: Text(
                  ("${output()}"),
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
