import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WalletUI extends StatefulWidget {
  const WalletUI({super.key});

  @override
  State<WalletUI> createState() => _WalletUIState();
}

class _WalletUIState extends State<WalletUI> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.orange,
      ),
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        body: Stack(
          children: [
            ATMCard(),

            Container(
              height: 400, 
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 38, 34, 34)),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(size: 30, Icons.account_box),
                      Icon(size: 30, Icons.wallet)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Wallets", style: GoogleFonts.poppins(),
                        // style: TextStyle(fontSize: 20, color: Colors.orange),
                      ),
                      Icon(
                        Icons.add_circle,
                        color: Colors.orange,
                        size: 30,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('USD'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('GBP'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('IND'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('JOE'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 300,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: WallerContainer(),
                  ),
                  Text("Pending", style: GoogleFonts.poppins()),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 300 / 2,
                          width: 250 / 2,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 300 / 2,
                          width: 250 / 2,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ATMCard extends StatelessWidget {
  const ATMCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.deepOrange,
                Colors.deepOrangeAccent,
                Colors.orangeAccent,
                Colors.orange,
                Colors.deepOrange,
                Colors.deepOrangeAccent
              ])),
      height: 200,
    );
  }
}

class WallerContainer extends StatelessWidget {
  const WallerContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("British Pounds", style: GoogleFonts.poppins()),
        SizedBox(
          height: 40,
        ),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.orangeAccent)),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text("\$",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text("GBP",
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.bold)),
          ],
        ),
        SizedBox(
          height: 70,
        ),
        Text("620.00", style: GoogleFonts.poppins(fontSize: 30)
            // style: TextStyle(fontSize: 30, color: Colors.white),
            )
      ]),
    );
  }
}
