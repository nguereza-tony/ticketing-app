import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:platine_flutter/platine_flutter.dart';
import 'package:ticketing/models/ticket.dart';

class TicketItem extends StatelessWidget {
  Ticket ticket;

  TicketItem({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: kBorderColor,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(Icons.comment_outlined),
              const SizedBox(
                width: 5,
              ),
              Text(
                ticket.name,
                style: const TextStyle(
                  fontSize: 12,
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              Flexible(child: Container()),
              Text(
                ticket.code,
                style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.w700,
                  color: HexColor("#333E96"),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              const Icon(Icons.flag_outlined),
              const SizedBox(
                width: 5,
              ),
              Text(
                ticket.category.name,
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.w400,
                  color: HexColor('#f500ff'),
                ),
              ),
              Flexible(child: Container()),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              const Icon(Icons.schedule_outlined),
              const SizedBox(
                width: 5,
              ),
              Text(
                ticket.validationDate ?? '',
                style: const TextStyle(
                  fontSize: 12,
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Flexible(child: Container()),
            ],
          ),
        ],
      ),
    );
  }
}
