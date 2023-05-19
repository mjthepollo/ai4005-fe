import 'package:ai4005_fe/presentation/invitation_screen.dart';
import 'package:flutter/material.dart';

class Create extends StatelessWidget {
  const Create({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: ((context) => const InvitationScreen())));
      },
      child: SizedBox(
        width: 10 * fem,
        height: 10 * fem,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 18 * fem,
            ),
            SizedBox(
                height: 105 * fem,
                child: Image.asset(
                  'assets/images/adding.png',
                  fit: BoxFit.fitHeight,
                )),
          ],
        ),
      ),
    );
  }
}
