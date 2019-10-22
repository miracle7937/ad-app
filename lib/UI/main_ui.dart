import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:figoh_project/Model/categoryModel.dart';
import 'package:figoh_project/Model/productModel.dart';
import 'package:figoh_project/UI/Widgets/custom_shape.dart';
import 'package:figoh_project/UI/main_ui_utils.dart';
import 'package:figoh_project/UI/product%20_page.dart';
import 'package:figoh_project/UI/trending_produt.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'Widgets/mainui_customcard.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';

class MainUI extends StatefulWidget {
  @override
  _MainUIState createState() => _MainUIState();
}

class _MainUIState extends State<MainUI> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  bool isExpanded = false;
  List<Category> categoryItems;

  double _height;
  double _width;
  @override
  void initState() {
    super.initState();

    //    categoryItems = [
    //      Category("Electronics", "assets/images/gadget.png"),
    //      Category("Properties", "assets/images/house.png"),
    //      Category("Jobs", "assets/images/job.png"),
    //      Category("Furniture", "assets/images/sofa.png"),
    //      Category("Cars", "assets/images/car.png"),
    //      Category("Bikes", "assets/images/bike.png"),
    //      Category("Mobiles", "assets/images/smartphone.png"),
    //      Category("Pets", "assets/images/pet.png"),
    //      Category("Fashion", "assets/images/dress.png"),
    //    ];
  }

  void _expand() {
    setState(() {
      isExpanded ? isExpanded = false : isExpanded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: _bottomNavBar(),
      key: scaffoldKey,
      drawer: _drawer(),
      body: SafeArea(
        child: Container(
          height: _height,
          width: _width,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                clipShape(),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Shop for',
                          style: TextStyle(fontFamily: 'Cool', fontSize: 18)),
                      GestureDetector(
                          onTap: _expand,
                          child: Text(
                            isExpanded ? "Show less" : "Show all",
                            style: TextStyle(
                                fontFamily: 'Cool',
                                color: Colors.green,
                                fontSize: 14),
                          )),
                      //IconButton(icon: isExpanded? Icon(Icons.arrow_drop_up, color: Colors.orange[200],) : Icon(Icons.arrow_drop_down, color: Colors.orange[200],), onPressed: _expand)
                    ],
                  ),
                ),
                expandList(),
                Divider(),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Trending",
                          style: TextStyle(fontFamily: 'Cool', fontSize: 18)),
                      GestureDetector(
                          onTap: () {
                            // Navigator.of(context).pushNamed(TRENDING_UI);
                            print('Showing all');
                          },
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TrendingRecommended(
                                            title: 'List of Trending',
                                          )));
                            },
                            child: Text(
                              'Show all',
                              style: TextStyle(
                                fontFamily: 'Cool',
                                color: Colors.green,
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                trendingProducts(),
                Divider(),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Recommendations",
                          style: TextStyle(fontFamily: 'Cool', fontSize: 18)),
                      GestureDetector(
                          onTap: () {
                            //Navigator.of(context).pushNamed(RECOMMEND_UI);
                            print('Showing all');
                          },
                          child: InkWell(
                            onTap: () => Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.fade,
                                    child: TrendingRecommended(
                                      title: 'List of Recomendations',
                                    ))),
                            child: Text(
                              'Show all',
                              style: TextStyle(
                                fontFamily: 'Cool',
                                color: Colors.green,
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                recommendations(),
                Divider(),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Today's Deals",
                          style: TextStyle(fontFamily: 'Cool', fontSize: 18)),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TrendingRecommended(
                                        title: "Today's Deal")));
                          },
                          child: Text(
                            'Show all',
                            style: TextStyle(
                              fontFamily: 'Cool',
                              color: Colors.green,
                            ),
                          ))
                    ],
                  ),
                ),
                todaysDeals(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _drawer() {
    return Drawer(
      child: Column(
        children: <Widget>[
          Opacity(
            opacity: 0.75,
            child: Container(
              height: _height / 6,
              padding: EdgeInsets.only(top: _height / 20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orange[200], Colors.pinkAccent],
                ),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(
                    Icons.person,
                    size: 40,
                    color: Colors.black,
                  ),
                  radius: 30,
                  backgroundColor: Colors.white,
                ),
                title: Text("FlutterDevs"),
                subtitle: Text(
                  "flutterDevs@aeologic.com",
                  style: TextStyle(fontSize: 13),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text("Orders & Payments"),
          ),
        ],
      ),
    );
  }

  Widget _bottomNavBar() {
    return CircularBottomNavigation(
      tabItems,
      selectedCallback: (int selectedPos) {},
    );
  }

  List<TabItem> tabItems = List.of([
    new TabItem(Icons.home, "Home", Colors.green,
        labelStyle: TextStyle(fontWeight: FontWeight.normal)),
    new TabItem(Icons.search, "Search", Colors.green,
        labelStyle:
            TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
    new TabItem(Icons.layers, "Reports", Colors.green),
    new TabItem(Icons.notifications, "Notifications", Colors.green),
  ]);

  Widget clipShape() {
    return Stack(
      children: <Widget>[
        Opacity(
          opacity: 0.65,
          child: ClipPath(
            clipper: CustomShapeClipper(),
            child: Container(
              height: _height / 3,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.green[200], Colors.green],
                ),
              ),
            ),
          ),
        ),
        Opacity(
          opacity: 0.4,
          child: ClipPath(
            clipper: CustomShapeClipper2(),
            child: Container(
              height: _height / 3.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.green[200], Colors.lightGreenAccent],
                ),
              ),
            ),
          ),
        ),
        Opacity(
          opacity: 0.2,
          child: ClipPath(
            clipper: CustomShapeClipper3(),
            child: Container(
              height: _height / 3,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.green[200], Colors.lightGreen],
                ),
              ),
            ),
          ),
        ),
        mainUi().searchBar(height: _height),
        Container(
            //color: Colors.blue,
            margin: EdgeInsets.only(left: 20, right: 20, top: _height / 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Opacity(
                  opacity: 0.5,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: GestureDetector(
                        onTap: () {
                          scaffoldKey.currentState.openDrawer();
                        },
                        child: Image.asset(
                          'assets/ts/menubutton.png',
                          height: _height / 40,
                        )),
                  ),
                ),
                Flexible(
                  child: Container(
                    height: _height / 20,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            print('Editing location');
                          },
                          child: Icon(
                            Icons.edit_location,
                            color: Colors.green,
                            size: _height / 40,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                            child: Text('Nigeria',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: _height / 50),
                                // overflow: TextOverflow.fade,
                                softWrap: false)),
                      ],
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.5,
                  child: GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.notifications,
                        color: Colors.black,
                        size: _height / 30,
                      )),
                ),
              ],
            )),
      ],
    );
  }

  Widget expandList() {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: AnimatedCrossFade(
        firstChild: GridView.count(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 4,
          children: mainUi().dropDownFirstChild(height: _height, width: _width),
        ),
        secondChild: GridView.count(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 4,
          children:
              mainUi().dropDownSecondChild(height: _height, width: _width),
        ),
        crossFadeState:
            isExpanded ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        duration: kThemeAnimationDuration,
      ),
    );
  }

  Widget trendingProducts() {
    return Container(
      height: _height / 4.25,
      //width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        padding: EdgeInsets.all(5),
        shrinkWrap: true,
        itemCount: MyProductList().trendingListItems.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          return _buildTrendingEntries(
              context, index, MyProductList().trendingListItems);
        },
      ),
    );
  }

  Widget _buildTrendingEntries(
      BuildContext context, int index, List<Product> listItem) {
    return GestureDetector(
      onTap: () {
        var product = listItem[index];
        Navigator.push(
            context,
            PageTransition(
                type: PageTransitionType.fade,
                child: ProductPage(
                  item: product,
                  heroIndex: index,
                )));
        print("Routing to trending list page");
      },
      child: CustomCard(
        heroIndex: index,
        title: '${listItem[index].title}',
        category: '${listItem[index].category}',
        price: "₹${listItem[index].price}",
        dateAdded: "${listItem[index].dateAdded}",
        description: "${listItem[index].desc}",
        image: "${listItem[index].image}",
        location: "Sector 62, Noida",
      ),
    );
  }

  Widget recommendations() {
    return Container(
      height: _height / 4.25,
      //width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        padding: EdgeInsets.all(5),
        shrinkWrap: true,
        itemCount: MyProductList().recommendListItems.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          return _buildRecommendationsEntries(
              context, index, MyProductList().recommendListItems);
        },
      ),
    );
  }

  Widget _buildRecommendationsEntries(
      BuildContext context, int index, List<Product> listItem) {
    return GestureDetector(
      onTap: () {
        //Navigator.of(context).pushNamed(DETAIL_UI);
        print("Routing to detail page");
      },
      child: CustomCard(
        title: '${listItem[index].title}',
        category: '${listItem[index].category}',
        price: "₹${listItem[index].price}",
        dateAdded: "${listItem[index].dateAdded}",
        description: "${listItem[index].desc}",
        image: "${listItem[index].image}",
        location: "Sector 62, Noida",
      ),
    );
  }

  Widget todaysDeals() {
    return Container(
      height: _height / 4.25,
      //width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        padding: EdgeInsets.all(5),
        shrinkWrap: true,
        itemCount: MyProductList().dealsListItems.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          return _buildDealsEntries(
              context, index, MyProductList().dealsListItems);
        },
      ),
    );
  }

  Widget _buildDealsEntries(
      BuildContext context, int index, List<Product> listItem) {
    return GestureDetector(
      onTap: () {
        //Navigator.of(context).pushNamed(DETAIL_UI);
        print("Routing to detail page");
      },
      child: CustomCard(
        title: '${listItem[index].title}',
        category: '${listItem[index].category}',
        price: "₹${listItem[index].price}",
        dateAdded: "${listItem[index].dateAdded}",
        description: "${listItem[index].desc}",
        image: "${listItem[index].image}",
        location: "Sector 62, Noida",
      ),
    );
  }
}
