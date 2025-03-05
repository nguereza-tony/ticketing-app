import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:platine_flutter/platine_flutter.dart';
import 'package:platine_flutter/platine_i18n.dart' as platine_i18n;
import 'package:provider/provider.dart';
import 'package:ticketing/components/service_card.dart';
import 'package:ticketing/components/ticket_item.dart';
import 'package:ticketing/i18n/translations.g.dart';
import 'package:ticketing/providers/user_provider.dart';
import 'package:ticketing/screens/ticket/ticket_status_screen.dart';
import 'package:ticketing/screens/user/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((ts) {
      Provider.of<UserProvider>(context, listen: false).getUserBasicInfo();
    });
  }

  Future<void> _handleRefresh() async {
    Provider.of<UserProvider>(context, listen: false).getUserBasicInfo();
  }

  @override
  Scaffold build(BuildContext context) {
    final pft = platine_i18n.Translations.of(context);
    final t = Translations.of(context);

    return Scaffold(
      body: Consumer<UserProvider>(builder: (context, userProvider, _) {
        if (userProvider.basicInfoLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        final userInfo = userProvider.userBasicInfo;
        if (userInfo == null) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        List<Widget> ticketWidgets = [];
        for (var i in userInfo.tickets) {
          ticketWidgets.add(TicketItem(ticket: i));
        }

        return RefreshIndicator(
          onRefresh: _handleRefresh,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(30),
                    ),
                    color: kBorderColor,
                  ),
                  height: 200,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 24,
                      right: 24,
                      top: 46,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              '${t.labels.hello}, ${userInfo.user.firstname}',
                              style: TextStyle(
                                color: HexColor('#E3E3E4'),
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                fontFamily: 'poppins',
                              ),
                            ),
                            Flexible(child: Container()),
                          ],
                        ),
                        const SizedBox(
                          height: 55,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Text(
                                t.labels.app.name,
                                style: TextStyle(
                                  color: HexColor('#E3E3E4'),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24,
                                  fontFamily: 'poppins',
                                ),
                              ),
                            ),
                            const Spacer(),
                            InkWell(
                              onTap: () {},
                              child: CircleAvatar(
                                radius: 18,
                                backgroundColor:
                                    HexColor('#F7F7F7').withOpacity(0.2),
                                child: const Icon(
                                  Icons.qr_code_2_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 16,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.white,
                              blurRadius: 10,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              t.labels.services,
                              style: TextStyle(
                                color: HexColor('#939094'),
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                fontFamily: 'poppins',
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ServiceCard(
                                  title: t.labels.ticketValidate,
                                  icon: const Icon(Icons.qr_code_outlined),
                                  action: () {},
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                ServiceCard(
                                  title: t.labels.ticketStatus,
                                  icon: const Icon(
                                    Icons.check_circle_outline_outlined,
                                  ),
                                  action: () {
                                    switchToScreen(
                                      context,
                                      const TicketStatusScreen(),
                                    );
                                  },
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                ServiceCard(
                                  title: pft.titles.userProfile,
                                  icon: const Icon(Icons.people_outlined),
                                  action: () {
                                    switchToScreen(
                                      context,
                                      const ProfileScreen(),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Text(
                          t.titles.latestTicketValidated,
                          style: TextStyle(
                            color: HexColor('#939094'),
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            fontFamily: 'poppins',
                          ),
                        ),
                      ),
                      if (ticketWidgets.isNotEmpty) ...[
                        Container(
                          margin: const EdgeInsets.only(
                            top: 20,
                            left: 20,
                            right: 20,
                          ),
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.white,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Column(
                            children: [
                              ...ticketWidgets,
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        )
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
