import 'package:json_annotation/json_annotation.dart';

part 'stat_model.g.dart';

@JsonSerializable()
class StatModel {
  List<TransactionAmountType> transactionAmountPerTypes;
  List<AmountPerTag> expenseAmountPerTags;
  List<AmountPerTag> incomeAmountPerTags;
  List<MonthlyAmount> lastExpenseMonthlyAmounts;
  List<MonthlyAmount> lastIncomeMonthlyAmounts;

  StatModel({
    required this.transactionAmountPerTypes,
    required this.expenseAmountPerTags,
    required this.incomeAmountPerTags,
    required this.lastExpenseMonthlyAmounts,
    required this.lastIncomeMonthlyAmounts,
  });

  factory StatModel.fromJson(Map<String, dynamic> json) {
    return _$StatModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$StatModelToJson(this);
}

@JsonSerializable()
class TransactionAmountType {
  String type;
  double amount;

  TransactionAmountType({
    required this.type,
    required this.amount,
  });

  factory TransactionAmountType.fromJson(Map<String, dynamic> json) {
    return _$TransactionAmountTypeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TransactionAmountTypeToJson(this);
}

@JsonSerializable()
class AmountPerTag {
  Tag tag;
  double amount;

  AmountPerTag({
    required this.tag,
    required this.amount,
  });

  factory AmountPerTag.fromJson(Map<String, dynamic> json) {
    return _$AmountPerTagFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AmountPerTagToJson(this);
}

@JsonSerializable()
class MonthlyAmount {
  String month;
  double amount;

  MonthlyAmount({
    required this.month,
    required this.amount,
  });

  factory MonthlyAmount.fromJson(Map<String, dynamic> json) {
    return _$MonthlyAmountFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MonthlyAmountToJson(this);
}

@JsonSerializable()
class Tag {
  String name;
  String color;

  Tag({
    required this.name,
    required this.color,
  });

  factory Tag.fromJson(Map<String, dynamic> json) {
    return _$TagFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TagToJson(this);
}
