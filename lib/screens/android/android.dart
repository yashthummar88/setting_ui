import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:setting/utils/utils.dart';

class Android extends StatefulWidget {
  //const Android({Key key}) : super(key: key);

  @override
  _AndroidState createState() => _AndroidState();
}

class _AndroidState extends State<Android> {
  bool val1 = false;
  bool val2 = false;
  bool val3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings UI",
          style: TextStyle(
            fontSize: 22,
          ),
        ),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 17),
                      child: AndTitle(
                        t1: "Common",
                      ),
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    child: ComList(
                      i: Icons.language,
                      s1: "Language",
                      s2: "English",
                    ),
                    flex: 3,
                  ),
                  Expanded(
                    child: ComList(
                      i: Icons.cloud_outlined,
                      s2: "Production",
                      s1: "Environment",
                    ),
                    flex: 3,
                  ),
                ],
              ),
              flex: 3,
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 17,
                      ),
                      child: AndTitle(
                        t1: "Account",
                      ),
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    child: AccAndroid(
                      i: Icons.phone,
                      s: "Phone Number",
                    ),
                    flex: 3,
                  ),
                  Divider(
                    height: 0,
                    color: Colors.black.withOpacity(0.2),
                  ),
                  Expanded(
                    child: AccAndroid(
                      i: Icons.mail,
                      s: "Email",
                    ),
                    flex: 3,
                  ),
                  Divider(
                    height: 0,
                    color: Colors.black.withOpacity(0.2),
                  ),
                  Expanded(
                    child: AccAndroid(
                      i: Icons.logout,
                      s: "Sign Out",
                    ),
                    flex: 3,
                  ),
                ],
              ),
              flex: 4,
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(
                          left: 17,
                        ),
                        child: AndTitle(
                          t1: "Security",
                        )),
                    flex: 2,
                  ),
                  Expanded(
                    child: Androidsec(
                      s: Switch(
                        activeColor: Colors.deepOrange,
                        value: val1,
                        onChanged: (val) {
                          setState(() {
                            val1 = val;
                          });
                        },
                      ),
                      i: Icons.phonelink_lock,
                      s1: "Lock app in background",
                    ),
                    flex: 3,
                  ),
                  Expanded(
                    child: Androidsec(
                      s: Switch(
                        activeColor: Colors.deepOrange,
                        value: val2,
                        onChanged: (val) {
                          setState(() {
                            val2 = val;
                          });
                        },
                      ),
                      i: Icons.fingerprint,
                      s1: "Use fingerprint",
                    ),
                    flex: 3,
                  ),
                  Expanded(
                    child: Androidsec(
                      s: Switch(
                        activeColor: Colors.deepOrange,
                        value: val3,
                        onChanged: (val) {
                          setState(() {
                            val3 = val;
                          });
                        },
                      ),
                      i: Icons.lock,
                      s1: "Change password",
                    ),
                    flex: 3,
                  ),
                ],
              ),
              flex: 4,
            ),
            Expanded(
              child: Padding(
                  padding: EdgeInsets.only(
                    left: 17,
                  ),
                  child: AndTitle(
                    t1: "Misc",
                  ),),
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
