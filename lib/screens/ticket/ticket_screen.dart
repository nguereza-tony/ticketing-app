import 'package:flutter/material.dart';
import 'package:platine_flutter/platine_flutter.dart';
import 'package:platine_flutter/platine_i18n.dart' as platine_i18n;
import 'package:provider/provider.dart';
import 'package:ticketing/components/ticket_item.dart';
import 'package:ticketing/i18n/translations.g.dart';
import 'package:ticketing/providers/ticket_provider.dart';
import 'package:ticketing/screens/ticket/ticket_filter_screen.dart';

class TicketScreen extends StatefulWidget {
  Map<String, dynamic>? filters;
  TicketScreen({super.key, this.filters});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((ts) {
      Provider.of<TicketProvider>(context, listen: false)
          .getTickets(widget.filters ?? {});
    });
  }

  Future<void> _handleRefresh() async {
    Provider.of<TicketProvider>(context, listen: false)
        .getTickets(widget.filters ?? {});
  }

  @override
  Scaffold build(BuildContext context) {
    final t = Translations.of(context);
    final pft = platine_i18n.Translations.of(context);

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: getAppHeader(title: t.titles.ticketValidated, backButton: false),
      body: Consumer<TicketProvider>(builder: (context, ticketProvider, _) {
        if (ticketProvider.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        var items = ticketProvider.items;
        List<Widget> itemWidgets = [];
        for (var i in items) {
          itemWidgets.add(TicketItem(ticket: i));
        }

        return RefreshIndicator(
          onRefresh: _handleRefresh,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Container(
              margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
              padding: const EdgeInsets.all(10),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Flexible(
                        child: Container(),
                      ),
                      IconButton(
                        onPressed: () {
                          _handleFilter(context, ticketProvider);
                        },
                        iconSize: 30,
                        icon: const Icon(Icons.filter_alt_outlined),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  if (items.isEmpty) ...[
                    const SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: Text(
                        pft.labels.noRecord,
                        style: const TextStyle(
                          fontSize: 14,
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ] else ...[
                    ...itemWidgets,
                    const SizedBox(
                      height: 40,
                    ),
                    if (ticketProvider.totalPage > 1) ...[
                      AppPagination(
                        currentPage: ticketProvider.currentPage,
                        totalPage: ticketProvider.totalPage,
                        onPageChange: (page) {
                          var filters = widget.filters ?? {};
                          filters['page'] = page;
                          ticketProvider.getTickets(filters);
                        },
                      ),
                    ],
                  ],
                ],
              ),
            ),
          ),
        );
      }),
    );
  }

  /// Handle filter
  Future<void> _handleFilter(
      BuildContext context, TicketProvider provider) async {
    var result = await switchToScreenWithResults(
      context,
      TicketFilterScreen(filters: widget.filters ?? {}),
    );

    if (!context.mounted) {
      return;
    }

    widget.filters = result;
    provider.getTickets(result);
  }
}
