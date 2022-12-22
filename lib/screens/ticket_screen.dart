import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:reservationhotel/screens/ticket_view.dart';
import 'package:reservationhotel/utilis/app_info_list.dart';
import 'package:reservationhotel/utilis/app_layout.dart';
import 'package:reservationhotel/utilis/styles_app.dart';
import 'package:reservationhotel/widgets/ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(20),
              vertical: AppLayout.getHeight(20),
            ),
            children: [
              Gap(
                AppLayout.getHeight(40),
              ),
              Text(
                "Tickets",
                style: Styles.headLineStyle1,
              ),
              Gap(
                AppLayout.getHeight(20),
              ),
              const AppTicketTabs(
                firstTab: "A Venir",
                secondTab: "Précédent",
              ),
              Container(
                padding: EdgeInsets.only(
                  left: AppLayout.getHeight(12),
                ),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Text("Flutter BD", style: Styles.headLineStyle3),
                            Gap(AppLayout.getHeight(5)),
                            Text("Passagers", style: Styles.headLineStyle3),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
