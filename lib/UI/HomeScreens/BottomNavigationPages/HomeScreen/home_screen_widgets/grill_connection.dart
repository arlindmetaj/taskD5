import 'package:flutter/material.dart';

class GrillConnection extends StatelessWidget {
  const GrillConnection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "GRILL CONNECTION",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              height: 170,
              width: double.infinity,
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey.shade900,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  const Text(
                    "NEW TO PLATFORM?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 40.0, right: 40.0),
                    child: Text(
                      "Connect your Grill to unlock the power of your Grill",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    width: 240,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          onPrimary: Colors.white,
                        // foreground
                      ),
                      onPressed: () {},
                      child: const Center(
                        child: Text("START TO GRILL SMART", style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
