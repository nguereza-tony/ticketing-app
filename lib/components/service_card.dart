import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ServiceCard extends StatelessWidget {
  String title;
  Widget icon;
  void Function()? action;
  ServiceCard(
      {super.key, required this.title, required this.icon, this.action});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            height: 82,
            width: 92,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(24),
              ),
              color: HexColor('#E3E3E4'),
            ),
            child: InkWell(
              onTap: action,
              child: icon,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 13,
              fontFamily: 'poppins',
            ),
          ),
        ],
      ),
    );
  }
}
