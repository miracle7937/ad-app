import 'package:figoh_project/Model/productModel.dart';
import 'package:flutter/material.dart';

class CustcomTrendPage extends StatefulWidget {
  final Product product;

  const CustcomTrendPage({Key key, this.product}) : super(key: key);

  @override
  _CustcomTrendPageState createState() => _CustcomTrendPageState();
}

class _CustcomTrendPageState extends State<CustcomTrendPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.product.image))),
                ),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            widget.product.title,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Text('₦ ${widget.product.price}',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.green)),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.product.desc,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.location_on),
                          Text('Lagos'),
                          SizedBox(width: 30,),
                          widget.product.negotiable==true? Text('Negotiable') :     Text('Non-Negotialble')
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
