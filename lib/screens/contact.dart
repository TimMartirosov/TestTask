import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_aplication/generated/l10n.dart';

class ContactSrceen extends StatelessWidget {
  const ContactSrceen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            S.of(context).app_bar_contacts_title,
          ),
        ),
        body: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
                width: 275.0,
                height: 275.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 5.0,
                      spreadRadius: 5.0,
                      offset: Offset(-5, 5),
                    )
                  ], //boxShadow
                  image: DecorationImage(
                      image: AssetImage("assets/images/background.jpg"),
                      fit: BoxFit.fill),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              S.of(context).contact_email,
              style: Theme.of(context).textTheme.headline2,
            ),
            const SizedBox(height: 20),
            Text(
              S.of(context).contact_telegram,
              style: Theme.of(context).textTheme.headline2,
            ),
            const SizedBox(height: 20),
            Text(
              S.of(context).contact_github,
              style: Theme.of(context).textTheme.headline2,
            ),
          ],
        ));
  }
}
