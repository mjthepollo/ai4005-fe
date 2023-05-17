import 'package:flutter/material.dart';

class Friend extends StatefulWidget {
  final String image_name;
  final String friend_name;

  const Friend({
    required this.image_name,
    required this.friend_name,
    Key? key,
  }) : super(key: key);

  @override
  State<Friend> createState() => _FriendState();
}

class _FriendState extends State<Friend> {
  bool is_selected = false;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    return SizedBox(
      width: 10 * fem,
      height: 150 * fem,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 5 * fem),
            width: 106 * fem,
            height: 106 * fem,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30 * fem),
              child: Image.asset(
                "assets/images/${widget.image_name}", // Use the image_name property from the widget
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
                child: Material(
                  type: MaterialType.transparency,
                  child: Text(
                    widget
                        .friend_name, // Use the friend_name property from the widget
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'SUITE',
                      fontSize: 20 * fem,
                      fontWeight: FontWeight.w700,
                      height: 2.3 / fem, // Divide by fem instead of ffem
                      color: const Color(0xfffefefd),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    is_selected = !is_selected;
                    print("really");
                  });
                },
                child: Container(
                  width: 26,
                  height: 26,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/delete.png'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    print("edit");
                  });
                },
                child: Container(
                  width: 26,
                  height: 26,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/edit.png'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}