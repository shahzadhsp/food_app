import 'package:flutter/material.dart';


class EnterLocation extends StatefulWidget {
  const EnterLocation({super.key});

  @override
  State<EnterLocation> createState() => _EnterLocationState();
}

class _EnterLocationState extends State<EnterLocation> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Container(
            height: height,
            width: width,
            color: Colors.pink.shade100,
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 14, left: 14, right: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: Icon(Icons.arrow_back)),
                    Align(
                        alignment: Alignment.topCenter,
                        child: Text('Enter your Location')),
                    Align(
                      alignment: Alignment.topCenter,
                      child: InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.close,
                          size: 18,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: height * 0.85,
              width: width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Column(
                children: [],
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            child: Padding(
              padding: const EdgeInsets.only(left: 28),
              child: Container(
                  height: height * 0.07,
                  width: width * 0.83,
                  decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextButton(onPressed: () {}, child: Text('Confirm'))),
            ),
          ),
        ],
      )),
    );
  }
}
