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
		    s: $calc1(18, 4, 485),
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
	@override String get sendCode => _root.$meta.d([246, 192, 203, 193, 133, 198, 202, 193, 192]);
	@override String get ticketScan => _root.$meta.d([246, 198, 196, 203, 133, 196, 133, 209, 204, 198, 206, 192, 209]);
	@override String get check => _root.$meta.d([230, 205, 192, 198, 206]);
}

// Path: errors
class _TranslationsErrorsEn extends TranslationsErrorsFr {
	_TranslationsErrorsEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsErrorsApiEn api = _TranslationsErrorsApiEn._(_root);
	@override String get scanQrCodeError => _root.$meta.d([224, 215, 215, 202, 215, 133, 210, 205, 204, 201, 192, 133, 214, 198, 196, 203, 203, 204, 203, 194, 133, 244, 247, 133, 198, 202, 193, 192]);
	@override String get scanQrCodeNoResultError => _root.$meta.d([235, 202, 133, 215, 192, 214, 208, 201, 209, 133, 195, 202, 208, 203, 193, 133, 196, 195, 209, 192, 215, 133, 214, 198, 196, 203, 203, 204, 203, 194, 133, 244, 247, 133, 198, 202, 193, 192]);
	@override String get scanQrCodeWrongFormatError => _root.$meta.d([244, 247, 133, 198, 202, 193, 192, 133, 193, 196, 209, 196, 133, 204, 214, 133, 204, 203, 211, 196, 201, 204, 193]);
}

// Path: fields
class _TranslationsFieldsEn extends TranslationsFieldsFr {
	_TranslationsFieldsEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get code => _root.$meta.d([230, 202, 193, 192]);
}

// Path: labels
class _TranslationsLabelsEn extends TranslationsLabelsFr {
	_TranslationsLabelsEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsLabelsAppEn app = _TranslationsLabelsAppEn._(_root);
	@override String get draft => _root.$meta.d([225, 215, 196, 195, 209]);
	@override String get confirmed => _root.$meta.d([230, 202, 203, 195, 204, 215, 200, 192, 193]);
	@override String get validated => _root.$meta.d([243, 196, 201, 204, 193, 196, 209, 192, 193]);
	@override String get cancel => _root.$meta.d([230, 196, 203, 198, 192, 201]);
	@override String get inputMailValidationCode => _root.$meta.d([224, 203, 209, 192, 215, 133, 209, 205, 192, 133, 198, 202, 193, 192, 133, 215, 192, 198, 192, 204, 211, 192, 193, 133, 199, 220, 133, 192, 200, 196, 204, 201]);
	@override String get personalInfos => _root.$meta.d([245, 192, 215, 214, 202, 203, 196, 201, 214, 133, 204, 203, 195, 202, 215, 200, 196, 209, 204, 202, 203]);
	@override String get hello => _root.$meta.d([237, 192, 201, 201, 202]);
	@override String get services => _root.$meta.d([246, 192, 215, 211, 204, 198, 192, 214]);
	@override String get stats => _root.$meta.d([246, 209, 196, 209, 214]);
	@override String get ticketValidate => _root.$meta.d([243, 192, 215, 204, 195, 204, 198, 196, 209, 204, 202, 203]);
	@override String get ticketStatus => _root.$meta.d([241, 204, 198, 206, 192, 209, 133, 214, 209, 196, 209, 208, 214]);
	@override late final _TranslationsLabelsOnboardingEn onboarding = _TranslationsLabelsOnboardingEn._(_root);
}

// Path: messages
class _TranslationsMessagesEn extends TranslationsMessagesFr {
	_TranslationsMessagesEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String ticketValidatedSuccess({required String code}) => _root.$meta.d([241, 204, 198, 206, 192, 209, 133]) + code.toString() + _root.$meta.d([133, 205, 196, 214, 133, 199, 192, 192, 203, 133, 211, 196, 201, 204, 193, 196, 209, 192, 193, 133, 214, 208, 198, 198, 192, 214, 214, 195, 208, 201, 201, 220]);
}

// Path: placeholders
class _TranslationsPlaceholdersEn extends TranslationsPlaceholdersFr {
	_TranslationsPlaceholdersEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get type => _root.$meta.d([241, 220, 213, 192]);
}

// Path: titles
class _TranslationsTitlesEn extends TranslationsTitlesFr {
	_TranslationsTitlesEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get statistic => _root.$meta.d([246, 209, 196, 209, 204, 214, 209, 204, 198, 214]);
	@override String get ticketVerification => _root.$meta.d([241, 204, 198, 206, 192, 209, 133, 211, 192, 215, 204, 195, 204, 198, 196, 209, 204, 202, 203]);
	@override String get ticketStatusCheck => _root.$meta.d([241, 204, 198, 206, 192, 209, 133, 214, 209, 196, 209, 208, 214]);
	@override String get ticketValidated => _root.$meta.d([243, 196, 201, 204, 193, 196, 209, 192, 193, 133, 209, 204, 198, 206, 192, 209, 214]);
	@override String get latestTicketValidated => _root.$meta.d([233, 196, 209, 192, 214, 209, 133, 211, 196, 201, 204, 193, 196, 209, 192, 193, 133, 209, 204, 198, 206, 192, 209, 214]);
}

// Path: errors.api
class _TranslationsErrorsApiEn extends TranslationsErrorsApiFr {
	_TranslationsErrorsApiEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get ticketNotFound => _root.$meta.d([241, 205, 204, 214, 133, 209, 204, 198, 206, 192, 209, 133, 193, 202, 192, 214, 133, 203, 202, 209, 133, 192, 221, 204, 214, 209]);
	@override String get ticketAlreadyValidated => _root.$meta.d([241, 205, 204, 214, 133, 209, 204, 198, 206, 192, 209, 133, 204, 214, 133, 196, 201, 215, 192, 196, 193, 220, 133, 208, 214, 192, 193]);
	@override String get invalidUuid => _root.$meta.d([241, 205, 192, 133, 209, 204, 198, 206, 192, 209, 133, 236, 225, 133, 204, 214, 133, 203, 202, 209, 133, 211, 196, 201, 204, 193]);
}

// Path: labels.app
class _TranslationsLabelsAppEn extends TranslationsLabelsAppFr {
	_TranslationsLabelsAppEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get name => _root.$meta.d([241, 204, 198, 206, 192, 209, 204, 203, 194]);
	@override String get description => _root.$meta.d([241, 204, 198, 206, 192, 209, 204, 203, 194, 133, 204, 214, 133, 196, 203, 133, 196, 213, 213, 201, 204, 198, 196, 209, 204, 202, 203, 133, 195, 202, 215, 133, 200, 196, 203, 196, 194, 204, 203, 194, 133, 209, 204, 198, 206, 192, 209, 214, 133, 193, 208, 215, 204, 203, 194, 133, 196, 203, 133, 192, 211, 192, 203, 209, 133, 141, 214, 213, 202, 215, 209, 137, 133, 210, 192, 193, 193, 204, 203, 194, 137, 133, 192, 209, 198, 139, 140]);
	@override String get version => _root.$meta.d([243, 192, 215, 214, 204, 202, 203]);
	@override String get installDate => _root.$meta.d([236, 203, 214, 209, 196, 201, 201, 196, 209, 204, 202, 203, 133, 193, 196, 209, 192]);
	@override String get updateDate => _root.$meta.d([240, 213, 193, 196, 209, 192, 133, 193, 196, 209, 192]);
	@override String get buildNumber => _root.$meta.d([243, 192, 215, 214, 204, 202, 203, 133, 203, 208, 200, 199, 192, 215]);
}

// Path: labels.onboarding
class _TranslationsLabelsOnboardingEn extends TranslationsLabelsOnboardingFr {
	_TranslationsLabelsOnboardingEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get skip => _root.$meta.d([246, 206, 204, 213]);
	@override String get terminate => _root.$meta.d([226, 202, 133, 132]);
	@override String get title1 => _root.$meta.d([246, 204, 200, 213, 201, 192, 133, 196, 203, 193, 133, 204, 203, 209, 208, 204, 209, 204, 211, 192, 133, 139, 139, 139]);
	@override String get title2 => _root.$meta.d([241, 204, 198, 206, 192, 209, 133, 200, 196, 203, 196, 194, 192, 200, 192, 203, 209, 133, 139, 139, 139]);
	@override String get title3 => _root.$meta.d([252, 202, 208, 133, 205, 196, 211, 192, 133, 196, 215, 215, 204, 211, 192, 193, 132]);
	@override String get description1 => _root.$meta.d([228, 133, 214, 204, 200, 213, 201, 192, 133, 196, 203, 193, 133, 204, 203, 209, 208, 204, 209, 204, 211, 192, 133, 196, 213, 213, 201, 204, 198, 196, 209, 204, 202, 203, 133, 196, 201, 201, 202, 210, 214, 133, 208, 214, 192, 215, 214, 133, 209, 202, 133, 194, 192, 209, 133, 209, 202, 133, 194, 215, 204, 213, 214, 133, 210, 204, 209, 205, 133, 209, 205, 192, 133, 214, 220, 214, 209, 192, 200, 133, 211, 192, 215, 220, 133, 212, 208, 204, 198, 206, 201, 220, 139]);
	@override String get description2 => _root.$meta.d([230, 205, 192, 198, 206, 133, 196, 203, 193, 133, 211, 196, 201, 204, 193, 196, 209, 192, 133, 196, 133, 209, 204, 198, 206, 192, 209, 133, 195, 202, 215, 133, 196, 203, 133, 192, 211, 192, 203, 209, 133, 141, 214, 213, 202, 215, 209, 137, 133, 210, 192, 193, 193, 204, 203, 194, 137, 133, 192, 209, 198, 139, 140, 133, 199, 220, 133, 214, 198, 196, 203, 203, 204, 203, 194, 133, 209, 205, 192, 133, 244, 247, 133, 198, 202, 193, 192]);
	@override String get description3 => _root.$meta.d([252, 202, 208, 133, 196, 215, 192, 133, 193, 202, 203, 192, 137, 133, 201, 196, 208, 203, 198, 205, 133, 209, 205, 192, 133, 196, 213, 213, 201, 204, 198, 196, 209, 204, 202, 203, 133, 196, 203, 193, 133, 192, 203, 207, 202, 220, 133, 204, 209, 214, 133, 195, 192, 196, 209, 208, 215, 192, 214]);
}
