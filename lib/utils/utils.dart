import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Head extends StatelessWidget {
  String h;
  Head({this.h});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, bottom: 5),
      width: double.infinity,
      color: CupertinoColors.systemGrey4,
      alignment: Alignment.bottomLeft,
      child: Text(
        h,
        style: TextStyle(
          color: Colors.black.withOpacity(0.5),
          fontSize: 15,
        ),
      ),
    );
  }
}

class Common extends StatelessWidget {
  IconData icon1;
  String s1;
  String s2;
  Common({this.icon1, this.s1, this.s2});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CupertinoColors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                child: Icon(
                  icon1,
                  color: Colors.black.withOpacity(0.5),
                ),
                padding: EdgeInsets.only(
                  left: 10,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                s1,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                s2,
                style: TextStyle(color: Colors.black.withOpacity(0.5)),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                CupertinoIcons.chevron_forward,
                color: Colors.black.withOpacity(0.5),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Account extends StatelessWidget {
  IconData i1;
  String s1;
  Account({this.i1, this.s1});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CupertinoColors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                child: Icon(
                  i1,
                  color: Colors.black.withOpacity(0.5),
                ),
                padding: EdgeInsets.only(
                  left: 10,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                s1,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Icon(
            CupertinoIcons.chevron_forward,
            color: Colors.black.withOpacity(0.5),
          ),
        ],
      ),
    );
  }
}

class Security extends StatelessWidget {
  IconData i1;
  String s1;
  Security({this.i1, this.s1});

  @override
  Widget build(BuildContext context) {
    bool value = false;
    return Container(
      color: CupertinoColors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                child: Icon(
                  i1,
                  color: Colors.black.withOpacity(0.5),
                ),
                padding: EdgeInsets.only(
                  left: 10,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                s1,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          CupertinoSwitch(
            value: value,
            onChanged: (bool val) {},
            activeColor: Color.fromARGB(255, 52, 199, 89),
          ),
        ],
      ),
    );
  }
}

class AndTitle extends StatelessWidget {
  String t1;
  AndTitle({this.t1});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        t1,
        style: TextStyle(color: Colors.deepOrange),
      ),
    );
  }
}

class ComList extends StatelessWidget {
  IconData i;
  String s1;
  String s2;
  ComList({this.i, this.s1, this.s2});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(i),
      title: Text(
        s1,
        style: TextStyle(color: Colors.black),
      ),
      subtitle: Text(
        s2,
        style: TextStyle(color: Colors.black.withOpacity(0.5)),
      ),
    );
  }
}

class AccAndroid extends StatelessWidget {
  IconData i;
  String s;
  AccAndroid({this.i, this.s});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                child: Icon(
                  i,
                  color: Colors.black.withOpacity(0.5),
                ),
                padding: EdgeInsets.only(
                  left: 17,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                s,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Androidsec extends StatefulWidget {
  Widget s;
  IconData i;
  String s1;
  Androidsec({this.i, this.s1, this.s});

  @override
  _AndroidsecState createState() => _AndroidsecState();
}

class _AndroidsecState extends State<Androidsec> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                child: Icon(
                  widget.i,
                  color: Colors.black.withOpacity(0.5),
                ),
                padding: EdgeInsets.only(
                  left: 10,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                widget.s1,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          widget.s,
        ],
      ),
    );
  }
}
