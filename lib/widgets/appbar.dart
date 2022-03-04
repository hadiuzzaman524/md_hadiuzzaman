import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget {

  final GlobalKey<ScaffoldState> key2;

  const CustomAppBar({Key? key, required this.key2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Image.asset("images/tap.png",
            height: 35,
            width: 35,),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Good Morning",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 17,
                ),
              ),
              Text(
                "Nicholas",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
            ],
          ),
          const Spacer(),
          InkWell(
            child: Image.asset("images/img.png",
            height: 30,width: 30,),
            onTap: (){
              key2.currentState!.openDrawer();
            },
          ),
        ],
      ),
    );
  }
}
