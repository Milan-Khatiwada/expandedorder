import 'package:expandedorder/card.dart';
import 'package:expandedorder/homepage.dart';
import 'package:expandedorder/quantity.dart';
import 'package:expandedorder/vegnon.dart';
import 'package:flutter/material.dart';
import 'vegnon.dart';
import 'buttons.dart';

class ExpandedOrderPage extends StatefulWidget {
  @override
  _ExpandedOrderPageState createState() => _ExpandedOrderPageState();
}

class _ExpandedOrderPageState extends State<ExpandedOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Row(
            children: [
              //for left column ie image side
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Image.asset('images/burger.png'),
                    ),
                    Container(
                      padding: EdgeInsets.only(top:20),
                      height: 128,
                      width: 480,
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //row for icons and text
                              Row(children: [
                                Text(
                                  'Chicken Burger',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 5,
                                  height: 30,
                                ),
                                Veg(c: Colors.red)
                              ]),
                              //
                              Text(
                                  'Fresh--never-frozen--burger, premium sliced'),
                              SizedBox(height: 5),
                              Text(
                                  'cheesesteaks piled high on steamed hoagies, and'),
                              SizedBox(height: 5),
                              Text('creamy frozen custard made in-house.')
                            ],
                          ),
                        ),
                        SizedBox(width: 91),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Rs. 200',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'per plate',
                            ),
                            SizedBox(height: 25),
                            Container(
                              height: 20,
                              width: 60,
                              child: Buttons(),
                            ),
                          ],
                        ),
                      ]),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'With',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Divider(
                              color: Colors.grey,
                              height: 20,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 15,
                                  width: 27,
                                  child: Quantity(
                                    num: '12',
                                  ),
                                ),
                                SizedBox(width: 5),
                                Container(
                                    height: 15,
                                    width: 142,
                                    child: Name(
                                      name: 'Cheese (1 slice)',
                                    )),
                                SizedBox(width: 222),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 2),
                                  height: 20,
                                  width: 55,
                                  child: Buttons(),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 15,
                                  width: 27,
                                  child: Quantity(
                                    num: '10',
                                  ),
                                ),
                                SizedBox(width: 5),
                                Container(
                                    height: 15,
                                    width: 142,
                                    child: Name(
                                      name: 'Chicken Pattie',
                                    )),
                                SizedBox(width: 222),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 2),
                                  height: 20,
                                  width: 55,
                                  child: Buttons(),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 15,
                                  width: 27,
                                  child: Quantity(
                                    num: '20',
                                  ),
                                ),
                                SizedBox(width: 5),
                                Container(
                                    height: 15,
                                    width: 142,
                                    child: Name(
                                      name: 'Fries',
                                    )),
                                SizedBox(width: 222),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 2),
                                  height: 20,
                                  width: 55,
                                  child: Buttons(),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 15,
                                  width: 27,
                                  child: Quantity(
                                    num: '11',
                                  ),
                                ),
                                SizedBox(width: 5),
                                Container(
                                    height: 15,
                                    width: 200,
                                    child: Name(
                                      name: 'Mexican Sauce for the extra',
                                    )),
                                SizedBox(width: 164),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 2),
                                  height: 20,
                                  width: 55,
                                  child: Buttons(),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 180),
                              child: Container(
                                height: 35,
                                width: 280,
                                child: AddButton(
                                  txt: 'Add To Card (Rs. 200)',
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //for right column ie recommendation side
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: SingleChildScrollView(
                                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Text(
                              'Recomendation',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                          SizedBox(width: 49),
                          TextButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
                          }, child: Icon(Icons.cancel))
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 185,
                            width: 150,
                            child: CocaCola(
                              c: Colors.green,
                              img:'images/coke.png',
                              pname: 'Coca Cola',
                              litre: '/per litre',
                              price: '110',
                              rs: 'Rs. ',
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            height: 185,
                            width: 150,
                            child: CocaCola(
                              c: Colors.red,
                              img:'images/coke.png',
                              pname: 'Chicken Pizza',
                              litre: '/Plate',
                              price: '200',
                              rs: ' Rs. ',
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            height: 185,
                            width: 150,
                            child: CocaCola(
                              c: Colors.red,
                              img: 'images/coke.png',
                              pname: 'Chicken Pizza',
                              litre: '/Plate',
                              price: '200',
                              rs: '  Rs. ',
                            ),
                          ),
                           SizedBox(height: 20),
                          Container(
                            height: 185,
                            width: 150,
                            child: CocaCola(
                              c: Colors.green,
                              img: 'images/Pizza.png',
                              pname: 'Chicken Pizza',
                              litre: '/Plate',
                              price: '200',
                              rs: '  Rs. ',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
