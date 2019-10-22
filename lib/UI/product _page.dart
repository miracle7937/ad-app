import 'package:figoh_project/Model/productModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:page_transition/page_transition.dart';

import 'Widgets/mainui_customcard.dart';

class ProductPage extends StatefulWidget {
  final Product item;
  final int heroIndex;

  const ProductPage({Key key, this.item, this.heroIndex}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage>
    with TickerProviderStateMixin {
  Animation radialAnim;
  AnimationController radialControl;
  Animation scaleAnim;
  AnimationController scaleController;

  @override
  void initState() {
    radialControl =
        AnimationController(vsync: this, duration: Duration(milliseconds: 400));

    radialAnim = Tween<double>(begin: 80, end: 90).animate(radialControl)
      ..addStatusListener((statues) {
        if (statues == AnimationStatus.completed) {
          radialControl.reverse();
        } else if (statues == AnimationStatus.dismissed) {
          radialControl.forward();
        }
      });

    scaleController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    scaleAnim = Tween<double>(begin: 1, end: 30).animate(scaleController)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          scaleController.repeat();
        }
      });
    radialControl.forward();
    super.initState();
  }

  var _height;

  @override
  void dispose() {
    radialControl.dispose();
    scaleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            elevation: 10,
            floating: true,
            pinned: false,
            expandedHeight: 350,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: <Widget>[
                  Hero(
                    tag: widget.heroIndex,
                    child: Container(
                        height: 350,
                        width: MediaQuery.of(context).size.width,
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(widget.item.image),
                                  fit: BoxFit.fill)),
                        )),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.red,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
                [silverBody(aimation: radialAnim, scaleAnim: scaleAnim)]),
          ),
        ],
      )),
    );
  }

  silverBody({Animation aimation, Animation scaleAnim}) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12))),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'vecent ogbonna',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 5,
            ),
            getRating(),
            SizedBox(
              height: 5,
            ),
            Text(
              'London Use labtop',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.location_on,
                  color: Colors.red,
                ),
                Text(
                  '1 eze street transekulu enugu',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w300),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ExpansionTile(
              key: UniqueKey(),
              title: Text(
                'Goods Detail',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'These are used PS4 game cd, working perfectly ok, you can select any one you want @ uniform price of 7K each.',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    'Do you want to purchase?',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.orange,
                    onPressed: () {},
                    child: Center(child: Text('Click to get Contact')),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            AnimatedBuilder(
              animation: aimation,
              builder: (context, child) => ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 90, maxWidth: 90),
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: aimation.value,
                      width: aimation.value,
                      decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.3),
                          shape: BoxShape.circle),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Colors.green, shape: BoxShape.circle),
                        child: Center(
                          child: Text(
                            'Make offer',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Similer product',
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            similerProducts()
          ],
        ),
      ),
    );
  }

  Widget similerProducts() {
    return Container(
      height: _height / 4.25,
      //width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        padding: EdgeInsets.all(5),
        shrinkWrap: true,
        itemCount: MyProductList().trendingListItems.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          return _buildSimilerEntries(
              context, index, MyProductList().trendingListItems);
        },
      ),
    );
  }

  Widget _buildSimilerEntries(
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

  getRating() {
    return RatingBar(
      itemSize: 20,
      initialRating: 3,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
        size: 1,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }
}
