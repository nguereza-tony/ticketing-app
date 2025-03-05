import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:platine_flutter/platine_flutter.dart';
import 'package:platine_flutter/platine_i18n.dart' as platine_i18n;

class TicketFilterScreen extends StatefulWidget {
  Map<String, dynamic> filters;
  TicketFilterScreen({super.key, required this.filters});

  @override
  State<TicketFilterScreen> createState() => _TicketFilterScreenState();
}

class _TicketFilterScreenState extends State<TicketFilterScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController startDate = TextEditingController(text: '');
  TextEditingController endDate = TextEditingController(text: '');
  TextEditingController search = TextEditingController(text: '');
  TextEditingController tag = TextEditingController(text: '');
  TextEditingController type = TextEditingController(text: '');

  @override
  void initState() {
    super.initState();
    startDate.text = widget.filters['start_date'] ?? '';
    endDate.text = widget.filters['end_date'] ?? '';
    search.text = widget.filters['search'] ?? '';
  }

  @override
  Widget build(BuildContext context) {
    final pft = platine_i18n.Translations.of(context);

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: getAppHeader(title: pft.titles.filter),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 12,
                    ),
                    AppInputFormField(
                      controller: search,
                      placeholder: pft.placeholders.search,
                      inputType: TextInputType.text,
                      prefixIcon: Icons.search_outlined,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AppDateFormField(
                      placeholder: pft.placeholders.startDate,
                      prefixIcon: Icons.schedule_outlined,
                      mode: DateTimeFieldPickerMode.date,
                      format: 'yyyy-MM-dd',
                      initialValue: startDate.text.isEmpty == false
                          ? DateTime.parse(startDate.text)
                          : null,
                      onChange: (dt) {
                        if (dt != null) {
                          startDate.text = DateFormat('yyyy-MM-dd').format(dt);
                        } else {
                          startDate.text = '';
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AppDateFormField(
                      placeholder: pft.placeholders.endDate,
                      prefixIcon: Icons.schedule_outlined,
                      mode: DateTimeFieldPickerMode.date,
                      initialValue: endDate.text.isEmpty == false
                          ? DateTime.parse(endDate.text)
                          : null,
                      format: 'yyyy-MM-dd',
                      onChange: (dt) {
                        if (dt != null) {
                          endDate.text = DateFormat('yyyy-MM-dd').format(dt);
                        } else {
                          endDate.text = '';
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: SizedBox(
                        height: 48,
                        width: double.infinity,
                        child: DefaultButton(
                          onSubmit: () async {
                            if (formKey.currentState!.validate()) {
                              var filters = widget.filters;

                              widget.filters.remove('page');
                              widget.filters['start_date'] = startDate.text;
                              widget.filters['end_date'] = endDate.text;
                              widget.filters['search'] = search.text;
                              widget.filters['tag'] = tag.text;
                              widget.filters['type'] = type.text;

                              if (context.mounted) {
                                Navigator.pop(context, filters);
                              }
                            }
                          },
                          backgroundColor: kButtonBgColor,
                          textColor: kButtonColor,
                          text: pft.buttons.filter,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
