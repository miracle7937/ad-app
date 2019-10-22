import 'package:figoh_project/Model/productModel.dart';
import 'package:figoh_project/UI/Widgets/trending_Costom.dart';
import 'package:flutter/material.dart';

class TrendingRecommended extends StatefulWidget {

  final String title;
 final List<Product> prodctList;

  const TrendingRecommended({Key key, this.title, this.prodctList}) : super(key: key);
  
  

 
  
  
  @override
  _TrendingRecommendedState createState() => _TrendingRecommendedState();
}

class _TrendingRecommendedState extends State<TrendingRecommended> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              child: Text(
                widget.title,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Cool'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 1,
              thickness: 2,
              color: Colors.green,
            ),
            Expanded(
              child: ListView.separated(
                itemCount: MyProductList().dealsListItems.length,
                itemBuilder: (context, index) {
              var product =    MyProductList().dealsListItems[index];
                  return CustcomTrendPage(product: product,);
                },
                separatorBuilder: (context,index)=>Divider(
                    color: Colors.green,
                    height: 3,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
