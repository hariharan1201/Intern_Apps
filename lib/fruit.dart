import 'package:app_2/home.dart';
import 'package:flutter/material.dart';

class fruit extends StatelessWidget {
  final name;
  const fruit({required this.name});

  @override
  Widget build(BuildContext context) {
    output o = new output();
    //homepage o = new homepage();
    return Container(
      height: 150,
      width: 450,
      decoration: BoxDecoration(
          color: Colors.black12, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.only(top: 110),
        child: Container(
          alignment: Alignment.center,
          height: 20,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(this.name),
                  InkWell(
                    child: Container(
                      height: 25,
                      width: 25,
                      color: Colors.yellow,
                      child: const Icon(
                        Icons.add,
                        size: 18,
                      ),
                    ),
                    onTap: () {
                      o.f_name(this.name);
                    },
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
