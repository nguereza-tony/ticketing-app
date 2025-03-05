import 'package:personal_budget/i18n/translations.g.dart';
import 'package:personal_budget/models/currency.dart';
import 'package:personal_budget/models/tag.dart';
import 'package:platine_flutter/platine_i18n.dart' as pft;

enum ValidationCodeType { passwordReset, userCreate, pinReset }

Map<String, String> getTransactionTypeList() {
  return {
    'E': t.labels.transactionType.expense,
    'I': t.labels.transactionType.income,
    'O': t.labels.transactionType.other,
  };
}

List<Map<String, dynamic>> getTransactionTypes([bool isFilter = false]) {
  List<Map<String, dynamic>> items = [];
  if (isFilter) {
    items.add({
      'value': '',
      'label': pft.t.labels.filterSelectAll,
    });
  }
  for (var i in getTransactionTypeList().entries) {
    items.add({
      'value': i.key,
      'label': i.value,
    });
  }

  return items;
}

List<Map<String, dynamic>> getCurrencyItems(List<Currency> currencies) {
  List<Map<String, dynamic>> items = [];
  for (var c in currencies) {
    items.add({
      'value': c.id.toString(),
      'label': '${c.name} (${c.code})',
    });
  }

  return items;
}

List<Map<String, dynamic>> getTagItems(
  List<Tag> tags, [
  bool isFilter = false,
]) {
  List<Map<String, dynamic>> items = [];
  if (isFilter) {
    items.add({
      'value': '',
      'label': pft.t.labels.filterSelectAll,
    });
  }
  for (var c in tags) {
    items.add({
      'value': c.id.toString(),
      'label': c.name,
    });
  }

  return items;
}
