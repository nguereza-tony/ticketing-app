///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'package:slang/secret.dart';
import 'translations.g.dart';

// Path: <root>
class TranslationsEn extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		    s: $calc1(10, 3, 166),
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsEn _root = this; // ignore: unused_field

	// Translations
	@override late final _TranslationsButtonsEn buttons = _TranslationsButtonsEn._(_root);
	@override late final _TranslationsErrorsEn errors = _TranslationsErrorsEn._(_root);
	@override late final _TranslationsFieldsEn fields = _TranslationsFieldsEn._(_root);
	@override late final _TranslationsLabelsEn labels = _TranslationsLabelsEn._(_root);
	@override late final _TranslationsMessagesEn messages = _TranslationsMessagesEn._(_root);
	@override late final _TranslationsPlaceholdersEn placeholders = _TranslationsPlaceholdersEn._(_root);
	@override late final _TranslationsTitlesEn titles = _TranslationsTitlesEn._(_root);
}

// Path: buttons
class _TranslationsButtonsEn extends TranslationsButtonsFr {
	_TranslationsButtonsEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get sendCode => _root.$meta.d([148, 162, 169, 163, 231, 164, 168, 163, 162]);
	@override String get ticketScan => _root.$meta.d([148, 164, 166, 169, 231, 166, 231, 179, 174, 164, 172, 162, 179]);
	@override String get check => _root.$meta.d([132, 175, 162, 164, 172]);
}

// Path: errors
class _TranslationsErrorsEn extends TranslationsErrorsFr {
	_TranslationsErrorsEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsErrorsApiEn api = _TranslationsErrorsApiEn._(_root);
	@override String get scanQrCodeError => _root.$meta.d([130, 181, 181, 168, 181, 231, 176, 175, 174, 171, 162, 231, 180, 164, 166, 169, 169, 174, 169, 160, 231, 150, 149, 231, 164, 168, 163, 162]);
	@override String get scanQrCodeNoResultError => _root.$meta.d([137, 168, 231, 181, 162, 180, 178, 171, 179, 231, 161, 168, 178, 169, 163, 231, 166, 161, 179, 162, 181, 231, 180, 164, 166, 169, 169, 174, 169, 160, 231, 150, 149, 231, 164, 168, 163, 162]);
	@override String get scanQrCodeWrongFormatError => _root.$meta.d([150, 149, 231, 164, 168, 163, 162, 231, 163, 166, 179, 166, 231, 174, 180, 231, 174, 169, 177, 166, 171, 174, 163]);
}

// Path: fields
class _TranslationsFieldsEn extends TranslationsFieldsFr {
	_TranslationsFieldsEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get code => _root.$meta.d([132, 168, 163, 162]);
}

// Path: labels
class _TranslationsLabelsEn extends TranslationsLabelsFr {
	_TranslationsLabelsEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsLabelsAppEn app = _TranslationsLabelsAppEn._(_root);
	@override String get draft => _root.$meta.d([131, 181, 166, 161, 179]);
	@override String get confirmed => _root.$meta.d([132, 168, 169, 161, 174, 181, 170, 162, 163]);
	@override String get validated => _root.$meta.d([145, 166, 171, 174, 163, 166, 179, 162, 163]);
	@override String get cancel => _root.$meta.d([132, 166, 169, 164, 162, 171]);
	@override String get inputMailValidationCode => _root.$meta.d([130, 169, 179, 162, 181, 231, 179, 175, 162, 231, 164, 168, 163, 162, 231, 181, 162, 164, 162, 174, 177, 162, 163, 231, 165, 190, 231, 162, 170, 166, 174, 171]);
	@override String get personalInfos => _root.$meta.d([151, 162, 181, 180, 168, 169, 166, 171, 180, 231, 174, 169, 161, 168, 181, 170, 166, 179, 174, 168, 169]);
	@override String get hello => _root.$meta.d([143, 162, 171, 171, 168]);
	@override String get services => _root.$meta.d([148, 162, 181, 177, 174, 164, 162, 180]);
	@override String get stats => _root.$meta.d([148, 179, 166, 179, 180]);
	@override String get ticketValidate => _root.$meta.d([145, 162, 181, 174, 161, 174, 164, 166, 179, 174, 168, 169]);
	@override String get ticketStatus => _root.$meta.d([147, 174, 164, 172, 162, 179, 231, 180, 179, 166, 179, 178, 180]);
}

// Path: messages
class _TranslationsMessagesEn extends TranslationsMessagesFr {
	_TranslationsMessagesEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String ticketValidatedSuccess({required String code}) => _root.$meta.d([147, 174, 164, 172, 162, 179, 231]) + code.toString() + _root.$meta.d([231, 175, 166, 180, 231, 165, 162, 162, 169, 231, 177, 166, 171, 174, 163, 166, 179, 162, 163, 231, 180, 178, 164, 164, 162, 180, 180, 161, 178, 171, 171, 190]);
}

// Path: placeholders
class _TranslationsPlaceholdersEn extends TranslationsPlaceholdersFr {
	_TranslationsPlaceholdersEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get type => _root.$meta.d([147, 190, 183, 162]);
}

// Path: titles
class _TranslationsTitlesEn extends TranslationsTitlesFr {
	_TranslationsTitlesEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get statistic => _root.$meta.d([148, 179, 166, 179, 174, 180, 179, 174, 164, 180]);
	@override String get ticketVerification => _root.$meta.d([147, 174, 164, 172, 162, 179, 231, 177, 162, 181, 174, 161, 174, 164, 166, 179, 174, 168, 169]);
	@override String get ticketStatusCheck => _root.$meta.d([147, 174, 164, 172, 162, 179, 231, 180, 179, 166, 179, 178, 180]);
	@override String get ticketValidated => _root.$meta.d([145, 166, 171, 174, 163, 166, 179, 162, 163, 231, 179, 174, 164, 172, 162, 179, 180]);
	@override String get latestTicketValidated => _root.$meta.d([139, 166, 179, 162, 180, 179, 231, 177, 166, 171, 174, 163, 166, 179, 162, 163, 231, 179, 174, 164, 172, 162, 179, 180]);
}

// Path: errors.api
class _TranslationsErrorsApiEn extends TranslationsErrorsApiFr {
	_TranslationsErrorsApiEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get ticketNotFound => _root.$meta.d([147, 175, 174, 180, 231, 179, 174, 164, 172, 162, 179, 231, 163, 168, 162, 180, 231, 169, 168, 179, 231, 162, 191, 174, 180, 179]);
	@override String get ticketAlreadyValidated => _root.$meta.d([147, 175, 174, 180, 231, 179, 174, 164, 172, 162, 179, 231, 174, 180, 231, 166, 171, 181, 162, 166, 163, 190, 231, 178, 180, 162, 163]);
	@override String get invalidUuid => _root.$meta.d([147, 175, 162, 231, 179, 174, 164, 172, 162, 179, 231, 142, 131, 231, 174, 180, 231, 169, 168, 179, 231, 177, 166, 171, 174, 163]);
}

// Path: labels.app
class _TranslationsLabelsAppEn extends TranslationsLabelsAppFr {
	_TranslationsLabelsAppEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get name => _root.$meta.d([147, 174, 164, 172, 162, 179, 174, 169, 160]);
	@override String get description => _root.$meta.d([147, 174, 164, 172, 162, 179, 174, 169, 160, 231, 174, 180, 231, 166, 169, 231, 166, 183, 183, 171, 174, 164, 166, 179, 174, 168, 169, 231, 161, 168, 181, 231, 170, 166, 169, 166, 160, 174, 169, 160, 231, 179, 174, 164, 172, 162, 179, 180, 231, 163, 178, 181, 174, 169, 160, 231, 166, 169, 231, 162, 177, 162, 169, 179, 231, 239, 180, 183, 168, 181, 179, 235, 231, 176, 162, 163, 163, 174, 169, 160, 235, 231, 162, 179, 164, 233, 238]);
	@override String get version => _root.$meta.d([145, 162, 181, 180, 174, 168, 169]);
	@override String get installDate => _root.$meta.d([142, 169, 180, 179, 166, 171, 171, 166, 179, 174, 168, 169, 231, 163, 166, 179, 162]);
	@override String get updateDate => _root.$meta.d([146, 183, 163, 166, 179, 162, 231, 163, 166, 179, 162]);
	@override String get buildNumber => _root.$meta.d([145, 162, 181, 180, 174, 168, 169, 231, 169, 178, 170, 165, 162, 181]);
}
