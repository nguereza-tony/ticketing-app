// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatModel _$StatModelFromJson(Map<String, dynamic> json) => StatModel(
      transactionAmountPerTypes: (json['transaction_amount_per_types']
              as List<dynamic>)
          .map((e) => TransactionAmountType.fromJson(e as Map<String, dynamic>))
          .toList(),
      expenseAmountPerTags: (json['expense_amount_per_tags'] as List<dynamic>)
          .map((e) => AmountPerTag.fromJson(e as Map<String, dynamic>))
          .toList(),
      incomeAmountPerTags: (json['income_amount_per_tags'] as List<dynamic>)
          .map((e) => AmountPerTag.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastExpenseMonthlyAmounts:
          (json['last_expense_monthly_amounts'] as List<dynamic>)
              .map((e) => MonthlyAmount.fromJson(e as Map<String, dynamic>))
              .toList(),
      lastIncomeMonthlyAmounts:
          (json['last_income_monthly_amounts'] as List<dynamic>)
              .map((e) => MonthlyAmount.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$StatModelToJson(StatModel instance) => <String, dynamic>{
      'transaction_amount_per_types':
          instance.transactionAmountPerTypes.map((e) => e.toJson()).toList(),
      'expense_amount_per_tags':
          instance.expenseAmountPerTags.map((e) => e.toJson()).toList(),
      'income_amount_per_tags':
          instance.incomeAmountPerTags.map((e) => e.toJson()).toList(),
      'last_expense_monthly_amounts':
          instance.lastExpenseMonthlyAmounts.map((e) => e.toJson()).toList(),
      'last_income_monthly_amounts':
          instance.lastIncomeMonthlyAmounts.map((e) => e.toJson()).toList(),
    };

TransactionAmountType _$TransactionAmountTypeFromJson(
        Map<String, dynamic> json) =>
    TransactionAmountType(
      type: json['type'] as String,
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$TransactionAmountTypeToJson(
        TransactionAmountType instance) =>
    <String, dynamic>{
      'type': instance.type,
      'amount': instance.amount,
    };

AmountPerTag _$AmountPerTagFromJson(Map<String, dynamic> json) => AmountPerTag(
      tag: Tag.fromJson(json['tag'] as Map<String, dynamic>),
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$AmountPerTagToJson(AmountPerTag instance) =>
    <String, dynamic>{
      'tag': instance.tag.toJson(),
      'amount': instance.amount,
    };

MonthlyAmount _$MonthlyAmountFromJson(Map<String, dynamic> json) =>
    MonthlyAmount(
      month: json['month'] as String,
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$MonthlyAmountToJson(MonthlyAmount instance) =>
    <String, dynamic>{
      'month': instance.month,
      'amount': instance.amount,
    };

Tag _$TagFromJson(Map<String, dynamic> json) => Tag(
      name: json['name'] as String,
      color: json['color'] as String,
    );

Map<String, dynamic> _$TagToJson(Tag instance) => <String, dynamic>{
      'name': instance.name,
      'color': instance.color,
    };
