import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Spacer(
              flex: 1,
            ),
            SafeArea(
              child: SvgPicture.asset(
                "assets/svg/login.svg",
                fit: BoxFit.contain,
                height: 250,
              ),
            ),
            Spacer(
              flex: 2,
            ),
            Text(
              "Enterprice team collaboration.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 40,
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Text(
              "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum ",
              textAlign: TextAlign.center,
              style: TextStyle(
                letterSpacing: 1,
                fontSize: 15,
                height: 1.7,
                color: Color(0xffffffff).withOpacity(.5),
              ),
            ),
            Spacer(
              flex: 3,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xff3b3941),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  MaterialButton(
                    color: Theme.of(context).primaryColor,
                    height: 50,
                    minWidth: size.width * .5 - 25,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Register",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  MaterialButton(
                    height: 50,
                    minWidth: size.width * .5 - 25,
                    onPressed: () {
                      Navigator.pushNamed(context, "/login");
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Sing In",
                      style: TextStyle(
                          color: Theme.of(context).primaryColor, fontSize: 17),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}
