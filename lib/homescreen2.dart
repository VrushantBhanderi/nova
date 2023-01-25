import 'dart:ffi';

import 'package:flutter/material.dart';

class HomeScreen2 extends StatefulWidget {
  static const String id = "home_screen2";
  @override
  _HomeScreen2State createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  bool _hasBeenPressed = false;
  final List<String> sizeList = ['s', 'M', 'L', 'XL', 'XXL'];
  var currentselection = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        backgroundColor: Color(0xffE5E5E5),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 29.0),
          child: const BackButton(
            color: Color(0xff3E3E3E),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 29),
            child: IconButton(
              icon: const Icon(
                Icons.shopping_bag_outlined,
                color: Color(0xff3E3E3E),
                size: 30, // Changing Drawer Icon Size
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 47, right: 47, top: 47),
                child: Container(
                  height: 280,
                  //width: 280,
                  color: Color(0xffCACACA),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(9),
                        ),
                        color: Color(0xffFF7750),
                      ),
                      height: 9,
                      width: 28,
                    ),
                    SizedBox(width: 15),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(9),
                        ),
                        color: Color(0xffCACACA),
                      ),
                      height: 9,
                      width: 9,
                    ),
                    SizedBox(width: 15),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(9),
                        ),
                        color: Color(0xffCACACA),
                      ),
                      height: 9,
                      width: 9,
                    ),
                  ],
                ),
              ),
            ],
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.5,
            minChildSize: 0.5,
            maxChildSize: 0.7,
            builder: (BuildContext context, myScrollController) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  color: Color(0xffFFFFFF),
                ),
                child: ListView(
                  controller: myScrollController,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(26.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 15.0, bottom: 5),
                            child: Text(
                              'Nike Jordan 1 Retro Yellow',
                              style: TextStyle(
                                  color: Color(0xff3E3E3E),
                                  fontSize: 16,
                                  fontFamily: 'Nunito Sans',
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Text(
                            '\$608',
                            style: TextStyle(
                                color: Color(0xffFF7750),
                                fontSize: 17,
                                fontFamily: 'Nunito Sans',
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Size',
                            style: TextStyle(
                                color: Color.fromRGBO(62, 62, 62, 0.6),
                                fontSize: 14,
                                fontFamily: 'Nunito Sans',
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0, right: 25),
                      child: Expanded(
                        child: Container(
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            color: Color(0xffF5F5F5),
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 1, vertical: 1),
                          // child: Expanded(
                          //   child: ListView.separated(
                          //       scrollDirection: Axis.horizontal,
                          //       itemBuilder: (context, index) =>
                          //           GestureDetector(
                          //             onTap: () {
                          //               setState(() {
                          //                 currentselection = index;
                          //               });
                          //             },
                          //             child: Container(
                          //               padding: EdgeInsets.symmetric(
                          //                   horizontal: 15, vertical: 10),
                          //               decoration: BoxDecoration(
                          //                 borderRadius: BorderRadius.all(
                          //                   Radius.circular(10),
                          //                 ),
                          //                 color: currentselection == index
                          //                     ? Colors.orange
                          //                     : Color(0xffF5F5F5),
                          //               ),
                          //               child: Center(
                          //                 child: Text(
                          //                   sizeList[index],
                          //                   style: TextStyle(
                          //                     color: currentselection == index
                          //                         ? Colors.red
                          //                         : Colors.amberAccent,
                          //                   ),
                          //                 ),
                          //               ),
                          //             ),
                          //           ),
                          //       separatorBuilder: (_, index) => SizedBox(
                          //             width: 10,
                          //           ),
                          //       itemCount: sizeList.length),
                          // ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      // currentselection = ;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                      color: Color(0xffF5F5F5),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "S",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(62, 62, 62, 0.8),
                                            fontSize: 16,
                                            fontFamily: 'Nunito Sans',
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    //height: 50,
                                    // textColor: Colors.white,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {});
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                      color: Color(0xffFF7750),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "M",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Color(0xffFFFFFF),
                                            fontSize: 16,
                                            fontFamily: 'Nunito Sans',
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    //height: 50,
                                    // textColor: Colors.white,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {});
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                      color: Color(0xffF5F5F5),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "L",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(62, 62, 62, 0.8),
                                            fontSize: 16,
                                            fontFamily: 'Nunito Sans',
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    //height: 50,
                                    // textColor: Colors.white,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: MaterialButton(
                                  onPressed: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                      color: Color(0xffF5F5F5),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "XL",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(62, 62, 62, 0.8),
                                            fontSize: 16,
                                            fontFamily: 'Nunito Sans',
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    //height: 50,
                                    // textColor: Colors.white,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {});
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                      color: Color(0xffF5F5F5),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "XXl",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(62, 62, 62, 0.8),
                                            fontSize: 16,
                                            fontFamily: 'Nunito Sans',
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    //height: 50,
                                    // textColor: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(26.0),
                      child: Text(
                        'Color',
                        style: TextStyle(
                            color: Color.fromRGBO(62, 62, 62, 0.6),
                            fontSize: 14,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0, right: 25),
                      child: Expanded(
                        child: Container(
                          height: 45,
                          padding:
                              EdgeInsets.symmetric(horizontal: 1, vertical: 1),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff3E3E3E),
                                ),
                                height: 45,
                                width: 45,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffCACACA),
                                ),
                                height: 45,
                                width: 45,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffDEDEE0),
                                ),
                                height: 45,
                                width: 45,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(26.0),
                      child: Text(
                        'Seller',
                        style: TextStyle(
                            color: Color.fromRGBO(62, 62, 62, 0.6),
                            fontSize: 14,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 26.0, right: 26),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //   crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffDEDEE0),
                                ),
                                height: 50,
                                width: 50,
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      right: 15,
                                      bottom: 3,
                                    ),
                                    child: Text(
                                      'Shiba Store',
                                      style: TextStyle(
                                          color: Color(0xff3E3E3E),
                                          fontSize: 14,
                                          fontFamily: 'Nunito Sans',
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      right: 15,
                                    ),
                                    child: Text(
                                      'Jakarta, Indonesia',
                                      style: TextStyle(
                                          color: Color(0xffCACACA),
                                          fontSize: 14,
                                          fontFamily: 'Nunito Sans',
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 65,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 15,
                                    right: 15,
                                    bottom: 3,
                                  ),
                                  child: Text(
                                    'View Shop',
                                    style: TextStyle(
                                        color: Color(0xffFF7750),
                                        fontSize: 14,
                                        fontFamily: 'Nunito Sans',
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    child: MaterialButton(
                      minWidth: double.maxFinite,
                      height: 63.83,
                      color: Color(0xffFF7750),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                      ),
                      child: Text(
                        "Add To Cart",
                        style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 16,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w700),
                      ),
                      onPressed: () {
                        //Navigator.pushNamed(context, HomeScreen.id);
                      },
                    ),
                    color: Color(0xffFFFFFf),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
