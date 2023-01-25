import 'package:flutter/material.dart';
import 'package:nova/homescreen2.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "home_screen";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _hasBeenPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffE5E5E5),
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.only(left: 29),
              child: IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Color(0xff3E3E3E),

                  size: 30, // Changing Drawer Icon Size
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              ),
            );
          },
        ),
        title: Container(
          width: 134,
          height: 44,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  '👋 Hello, ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff3E3E3E),
                      fontSize: 16,
                      fontFamily: 'Nunito Sans',
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  'Rizale',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff3E3E3E),
                      fontSize: 16,
                      fontFamily: 'Nunito Sans',
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 29),
            child: IconButton(
              icon: const Icon(
                Icons.add_alert_outlined,
                color: Color(0xff3E3E3E),
                size: 30, // Changing Drawer Icon Size
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xffE5E5E5),
      drawer: new Drawer(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 55,
                          height: 55,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffD9D9D9),
                          ),
                        ),
                        SizedBox(width: 15),
                        Text(
                          'Rizale Greyrat',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xff3E3E3E),
                              fontSize: 16,
                              fontFamily: 'Nunito Sans',
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    SizedBox(height: 50),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _hasBeenPressed = !_hasBeenPressed;
                        });
                        Navigator.pushNamed(context, HomeScreen.id);
                      },
                      child: Text(
                        'Home',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: _hasBeenPressed
                                ? Color(0xff3E3E3E)
                                : Color(0xffFF7750),
                            // color: Color(0xff3E3E3E),
                            fontSize: 16,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'My Wallet',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xff3E3E3E),
                            fontSize: 16,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Category',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xff3E3E3E),
                            fontSize: 16,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'My Likes',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xff3E3E3E),
                            fontSize: 16,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    ///////////
                    SizedBox(height: 80),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _hasBeenPressed = !_hasBeenPressed;
                        });
                        Navigator.pushNamed(context, HomeScreen.id);
                      },
                      child: Text(
                        'Contact Us',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Color(0xff3E3E3E),
                            fontSize: 16,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'About',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Color(0xff3E3E3E),
                            fontSize: 16,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Help  ',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Color(0xff3E3E3E),
                            fontSize: 16,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Logout',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Color(0xff3E3E3E),
                            fontSize: 16,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: Container(
                height: 54,
                //width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.white60,
                  //color: Color(0xff4C5D5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Expanded(
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 27, top: 4, bottom: 4),
                        child: Icon(
                          Icons.search,
                          color: Color.fromRGBO(62, 62, 62, 0.6),
                          size: 30.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                      ),
                      Text(
                        'Search product',
                        style: TextStyle(
                            color: Color(0xff3E3E3E),
                            fontSize: 14,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.only(left: 27.0, right: 27, top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Category',
                        style: TextStyle(
                            color: Color(0xff3E3E3E),
                            fontSize: 17,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'See More',
                        style: TextStyle(
                            color: Color.fromRGBO(62, 62, 62, 0.4),
                            fontSize: 14,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20.0),
                  height: 80.0,
                  child: ListView(
                    // This next line does the trick.
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 29.0, bottom: 29.0, left: 20),
                            child: Text(
                              'Furniture',
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 16,
                                  fontFamily: 'Nunito Sans',
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          width: 235.0,
                          decoration: BoxDecoration(
                            gradient: new LinearGradient(
                                colors: [
                                  //    rgba(62, 62, 62, 0.3), rgba(62, 62, 62, 0.3))
                                  Color.fromRGBO(62, 62, 62, 0.3),
                                  Color.fromRGBO(62, 62, 62, 0.3),
                                ],
                                stops: [
                                  0.0,
                                  1.0
                                ],
                                begin: FractionalOffset.topCenter,
                                end: FractionalOffset.bottomCenter,
                                tileMode: TileMode.repeated),
                            color: Color(0xffCACACA),
                            //color: Color(0xff4C5D5),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 29.0, bottom: 29.0, left: 20),
                          child: Text(
                            'Fashion',
                            style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 16,
                                fontFamily: 'Nunito Sans',
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        width: 235.0,
                        decoration: BoxDecoration(
                          gradient: new LinearGradient(
                              colors: [
                                //    rgba(62, 62, 62, 0.3), rgba(62, 62, 62, 0.3))
                                Color.fromRGBO(62, 62, 62, 0.3),
                                Color.fromRGBO(62, 62, 62, 0.3),
                              ],
                              stops: [
                                0.0,
                                1.0
                              ],
                              begin: FractionalOffset.topCenter,
                              end: FractionalOffset.bottomCenter,
                              tileMode: TileMode.repeated),
                          color: Color(0xffCACACA),
                          //color: Color(0xff4C5D5),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 29.0, bottom: 29.0, left: 20),
                            child: Text(
                              'Other',
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 16,
                                  fontFamily: 'Nunito Sans',
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          width: 235.0,
                          decoration: BoxDecoration(
                            gradient: new LinearGradient(
                                colors: [
                                  //    rgba(62, 62, 62, 0.3), rgba(62, 62, 62, 0.3))
                                  Color.fromRGBO(62, 62, 62, 0.3),
                                  Color.fromRGBO(62, 62, 62, 0.3),
                                ],
                                stops: [
                                  0.0,
                                  1.0
                                ],
                                begin: FractionalOffset.topCenter,
                                end: FractionalOffset.bottomCenter,
                                tileMode: TileMode.repeated),
                            color: Color(0xffCACACA),
                            //color: Color(0xff4C5D5),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.only(left: 27.0, right: 27, top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Recomended For You',
                        style: TextStyle(
                            color: Color(0xff3E3E3E),
                            fontSize: 17,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'See More',
                        style: TextStyle(
                            color: Color.fromRGBO(62, 62, 62, 0.4),
                            fontSize: 14,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20.0),
                  height: 300.0,
                  child: ListView(
                    // This next line does the trick.
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 220,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 29.0, bottom: 29.0, left: 20),
                              ),
                              // height: 220,
                              width: 152.0,
                              decoration: BoxDecoration(
                                color: Color(0xffCACACA),
                                //color: Color(0xff4C5D5),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15.0, bottom: 5),
                              child: Text(
                                'Nike Jordan 1 Retro \nYellow',
                                style: TextStyle(
                                    color: Color(0xff3E3E3E),
                                    fontSize: 14,
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
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          MaterialButton(
                            onPressed: () {
                              Navigator.pushNamed(context, HomeScreen2.id);
                            },
                            child: Container(
                              height: 220,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 29.0, bottom: 29.0, left: 20),
                              ),
                              // height: 220,
                              width: 152.0,
                              decoration: BoxDecoration(
                                color: Color(0xffCACACA),
                                //color: Color(0xff4C5D5),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 15.0, bottom: 5),
                            child: Text(
                              'Jacket Pullover Sweat \nHoodie',
                              style: TextStyle(
                                  color: Color(0xff3E3E3E),
                                  fontSize: 14,
                                  fontFamily: 'Nunito Sans',
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Text(
                            '\$28',
                            style: TextStyle(
                                color: Color(0xffFF7750),
                                fontSize: 17,
                                fontFamily: 'Nunito Sans',
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 220,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 29.0, bottom: 29.0, left: 20),
                              ),
                              // height: 220,
                              width: 152.0,
                              decoration: BoxDecoration(
                                color: Color(0xffCACACA),
                                //color: Color(0xff4C5D5),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15.0, bottom: 5),
                              child: Text(
                                'Nike Jordan 1 Retro \nYellow',
                                style: TextStyle(
                                    color: Color(0xff3E3E3E),
                                    fontSize: 14,
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
          // color: Color(0xffFFFFFF),
        ),
        child: BottomNavigationBar(
          backgroundColor: Color(0xffFFFFFF),
          iconSize: 30,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                  color: Color(0xffCACACA),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Color(0xffCACACA),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  color: Color(0xffCACACA),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Color(0xffCACACA),
                ),
                label: ''),
          ],
        ),
      ),
    );
  }
}
