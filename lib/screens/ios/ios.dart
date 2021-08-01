import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:setting/utils/utils.dart';

class Plat extends StatelessWidget {
  bool value = true;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          "Settings UI",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        //padding: EdgeInsetsDirectional.only(top: 20),
        backgroundColor: CupertinoColors.systemRed,
      ),
      child: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Head(
                        h: "Common",
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      child: Common(
                        icon1: CupertinoIcons.settings,
                        s1: "Language",
                        s2: "English",
                      ),
                      flex: 1,
                    ),
                    Divider(
                      color: CupertinoColors.black.withOpacity(0.1),
                      height: 0,
                    ),
                    Expanded(
                      child: Common(
                        icon1: CupertinoIcons.cloud,
                        s1: "Environment",
                        s2: "Production",
                      ),
                      flex: 1,
                    ),
                  ],
                ),
                //color: CupertinoColors.systemRed,
              ),
              flex: 3,
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Head(
                      h: "Account",
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Account(
                      s1: "Phone Number",
                      i1: CupertinoIcons.phone_solid,
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Account(
                      s1: "Email",
                      i1: CupertinoIcons.mail_solid,
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Account(
                      s1: "Sign Out",
                      i1: CupertinoIcons.square_arrow_right,
                    ),
                    flex: 1,
                  ),
                ],
              ),
              flex: 4,
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Head(
                      h: "Security",
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Security(
                      i1: CupertinoIcons.lock,
                      s1: 'Lock app in backgroung',
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      color: CupertinoColors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                child: Icon(
                                  Icons.fingerprint,
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
                                "Use Fingerprint",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          CupertinoSwitch(
                            value: value,
                            onChanged: (bool val) {
                              value = val;
                            },
                            activeColor: Color.fromARGB(255, 52, 199, 89),
                          ),
                        ],
                      ),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Security(
                      i1: CupertinoIcons.lock,
                      s1: "Change Password",
                    ),
                    flex: 1,
                  ),
                ],
              ),
              flex: 4,
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Head(
                      h: "Misc",
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Account(
                      i1: CupertinoIcons.book,
                      s1: "Terms of Services",
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Account(
                      i1: CupertinoIcons.doc_chart_fill,
                      s1: "Open Source licencses",
                    ),
                    flex: 1,
                  ),
                ],
              ),
              flex: 3,
            ),
            Expanded(
              child: Container(
                color: CupertinoColors.systemGrey4,
              ),
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
