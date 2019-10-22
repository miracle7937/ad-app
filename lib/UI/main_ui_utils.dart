import 'package:flutter/material.dart';

class mainUi {
  searchBar({var height}) {
    return Container(
      margin: EdgeInsets.only(left: 40, right: 40, top: height / 3.75),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        elevation: 8,
        child: Container(
          child: TextFormField(
            cursorColor: Colors.green[200],
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              prefixIcon:
                  Icon(Icons.search, color: Colors.green[200], size: 30),
              hintText: "What're you looking for?",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none),
            ),
          ),
        ),
      ),
    );
  }

  dropDownFirstChild({var height, var width}) {
    return [
      Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              //Navigator.of(context).pushNamed(ELECTRONICS_ITEM_LIST);
              print('Routing to Electronics item list');
            },
            child: Image.asset(
              'assets/images/gadget.png',
              height: height / 12,
              width: width / 12,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Flexible(
            child: Text(
              "Electronics",
              style: TextStyle(fontSize: 13),
            ),
          ),
        ],
      ),
      Column(
        children: <Widget>[
          GestureDetector(
              onTap: () {
                //Navigator.of(context).pushNamed(PROPERTIES_ITEM_LIST);
                print('Routing to Properties item list');
              },
              child: Image.asset(
                'assets/images/house.png',
                height: height / 12,
                width: width / 12,
              )),
          SizedBox(
            height: 5,
          ),
          Flexible(
            child: Text(
              "Properties",
              style: TextStyle(fontSize: 13),
            ),
          ),
        ],
      ),
      Column(
        children: <Widget>[
          GestureDetector(
              onTap: () {
                //Navigator.of(context).pushNamed(JOBS_ITEM_LIST);
                print('Routing to Jobs item list');
              },
              child: Image.asset(
                'assets/images/job.png',
                height: height / 12,
                width: width / 12,
              )),
          SizedBox(
            height: 5,
          ),
          Flexible(
            child: Text(
              "Jobs",
              style: TextStyle(fontSize: 13),
            ),
          ),
        ],
      ),
      Column(
        children: <Widget>[
          GestureDetector(
              onTap: () {
                //Navigator.of(context).pushNamed(FURNITURE_ITEM_LIST);
                print('Routing to Furniture item list');
              },
              child: Image.asset(
                'assets/images/sofa.png',
                height: height / 12,
                width: width / 12,
              )),
          SizedBox(
            height: 5,
          ),
          Flexible(
            child: Text(
              "Furniture",
              style: TextStyle(fontSize: 13),
            ),
          ),
        ],
      ),
      Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              //Navigator.of(context).pushNamed(CARS_ITEM_LIST);
              print('Routing to Cars item list');
            },
            child: Image.asset(
              'assets/images/car.png',
              height: height / 12,
              width: width / 12,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Flexible(
            child: Text(
              "Cars",
              style: TextStyle(fontSize: 13),
            ),
          ),
        ],
      ),
      Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              //Navigator.of(context).pushNamed(BIKES_ITEM_LIST);
              print('Routing to Bikes item list');
            },
            child: Image.asset(
              'assets/images/bike.png',
              height: height / 12,
              width: width / 12,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Flexible(
            child: Text(
              "Bikes",
              style: TextStyle(fontSize: 13),
            ),
          ),
        ],
      ),
      Column(
        children: <Widget>[
          GestureDetector(
              onTap: () {
                //Navigator.of(context).pushNamed(MOBILES_ITEM_LIST);
                print('Routing to Mobiles item list');
              },
              child: Image.asset(
                'assets/images/smartphone.png',
                height: height / 12,
                width: width / 12,
              )),
          SizedBox(
            height: 5,
          ),
          Flexible(
            child: Text(
              "Mobiles",
              style: TextStyle(fontSize: 13),
            ),
          ),
        ],
      ),
      Column(children: <Widget>[
        GestureDetector(
          onTap: () {
            //Navigator.of(context).pushNamed(PETS_ITEM_LIST);
            print('Routing to Pets item list');
          },
          child: Image.asset(
            'assets/images/pet.png',
            height: height / 12,
            width: width / 12,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Flexible(
          child: Text(
            "Pets",
            style: TextStyle(fontSize: 13),
          ),
        ),
      ])
    ];
  }

  dropDownSecondChild({var height, var width}) {
    return [
      Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              //Navigator.of(context).pushNamed(ELECTRONICS_ITEM_LIST);
              print('Routing to Electronics item list');
            },
            child: Image.asset(
              'assets/images/gadget.png',
              height: height / 12,
              width: width / 12,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Flexible(
            child: Text(
              "Electronics",
              style: TextStyle(fontSize: 13),
            ),
          ),
        ],
      ),
      Column(
        children: <Widget>[
          GestureDetector(
              onTap: () {
                //Navigator.of(context).pushNamed(PROPERTIES_ITEM_LIST);
                print('Routing to Properties item list');
              },
              child: Image.asset(
                'assets/images/house.png',
                height: height / 12,
                width: width / 12,
              )),
          SizedBox(
            height: 5,
          ),
          Flexible(
            child: Text(
              "Properties",
              style: TextStyle(fontSize: 13),
            ),
          ),
        ],
      ),
      Column(
        children: <Widget>[
          GestureDetector(
              onTap: () {
                //Navigator.of(context).pushNamed(JOBS_ITEM_LIST);
                print('Routing to Jobs item list');
              },
              child: Image.asset(
                'assets/images/job.png',
                height: height / 12,
                width: width / 12,
              )),
          SizedBox(
            height: 5,
          ),
          Flexible(
            child: Text(
              "Jobs",
              style: TextStyle(fontSize: 13),
            ),
          ),
        ],
      ),
      Column(
        children: <Widget>[
          GestureDetector(
              onTap: () {
                //Navigator.of(context).pushNamed(FURNITURE_ITEM_LIST);
                print('Routing to Furniture item list');
              },
              child: Image.asset(
                'assets/images/sofa.png',
                height: height / 12,
                width: width / 12,
              )),
          SizedBox(
            height: 5,
          ),
          Flexible(
            child: Text(
              "Furniture",
              style: TextStyle(fontSize: 13),
            ),
          ),
        ],
      ),
      Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              //Navigator.of(context).pushNamed(CARS_ITEM_LIST);
              print('Routing to Cars item list');
            },
            child: Image.asset(
              'assets/images/car.png',
              height: height / 12,
              width: width / 12,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Flexible(
            child: Text(
              "Cars",
              style: TextStyle(fontSize: 13),
            ),
          ),
        ],
      ),
      Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              //Navigator.of(context).pushNamed(BIKES_ITEM_LIST);
              print('Routing to Bikes item list');
            },
            child: Image.asset(
              'assets/images/bike.png',
              height: height / 12,
              width: width / 12,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Flexible(
            child: Text(
              "Bikes",
              style: TextStyle(fontSize: 13),
            ),
          ),
        ],
      ),
      Column(
        children: <Widget>[
          GestureDetector(
              onTap: () {
                //Navigator.of(context).pushNamed(MOBILES_ITEM_LIST);
                print('Routing to Mobiles item list');
              },
              child: Image.asset(
                'assets/images/smartphone.png',
                height: height / 12,
                width: width / 12,
              )),
          SizedBox(
            height: 5,
          ),
          Flexible(
            child: Text(
              "Mobiles",
              style: TextStyle(fontSize: 13),
            ),
          ),
        ],
      ),
      Column(children: <Widget>[
        GestureDetector(
          onTap: () {
            //Navigator.of(context).pushNamed(PETS_ITEM_LIST);
            print('Routing to Pets item list');
          },
          child: Image.asset(
            'assets/images/pet.png',
            height: height / 12,
            width: width / 12,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Flexible(
          child: Text(
            "Pets",
            style: TextStyle(fontSize: 13),
          ),
        ),
      ]),
      Column(children: <Widget>[
        GestureDetector(
          onTap: () {
//Navigator.of(context).pushNamed(FASHION_ITEM_LIST);
            print('Routing to Fashion item list');
          },
          child: Image.asset(
            'assets/images/dress.png',
            height: height / 12,
            width: width / 12,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Flexible(
          child: Text(
            "Fashion",
            style: TextStyle(fontSize: 13),
          ),
        ),
      ])
    ];
  }
}
