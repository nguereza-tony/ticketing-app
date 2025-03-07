///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'translations.g.dart';

// Path: <root>
typedef TranslationsFr = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.fr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		    s: $calc0(2, 8, 109),
		  );

	/// Metadata for the translations of <fr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final Translations _root = this; // ignore: unused_field

	// Translations
	late final TranslationsButtonsFr buttons = TranslationsButtonsFr.internal(_root);
	late final TranslationsErrorsFr errors = TranslationsErrorsFr.internal(_root);
	late final TranslationsFieldsFr fields = TranslationsFieldsFr.internal(_root);
	late final TranslationsLabelsFr labels = TranslationsLabelsFr.internal(_root);
	late final TranslationsMessagesFr messages = TranslationsMessagesFr.internal(_root);
	late final TranslationsPlaceholdersFr placeholders = TranslationsPlaceholdersFr.internal(_root);
	late final TranslationsTitlesFr titles = TranslationsTitlesFr.internal(_root);
}

// Path: buttons
class TranslationsButtonsFr {
	TranslationsButtonsFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get sendCode => _root.$meta.d([58, 17, 9, 16, 6, 26, 13, 95, 19, 26, 95, 28, 16, 27, 26]);
	String get ticketScan => _root.$meta.d([44, 28, 30, 17, 17, 26, 13, 95, 10, 17, 95, 11, 22, 28, 20, 26, 11]);
	String get check => _root.$meta.d([41, 150, 13, 22, 25, 22, 26, 13]);
}

// Path: errors
class TranslationsErrorsFr {
	TranslationsErrorsFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsErrorsApiFr api = TranslationsErrorsApiFr.internal(_root);
	String get scanQrCodeError => _root.$meta.d([58, 13, 13, 26, 10, 13, 95, 19, 16, 13, 12, 95, 27, 10, 95, 12, 28, 30, 17, 17, 30, 24, 26, 95, 27, 10, 95, 46, 45, 95, 28, 16, 27, 26]);
	String get scanQrCodeNoResultError => _root.$meta.d([62, 10, 28, 10, 17, 95, 13, 150, 12, 10, 19, 11, 30, 11, 95, 11, 13, 16, 10, 9, 150, 95, 30, 15, 13, 151, 12, 95, 12, 28, 30, 17, 17, 30, 24, 26, 95, 27, 10, 95, 46, 45, 95, 28, 16, 27, 26]);
	String get scanQrCodeWrongFormatError => _root.$meta.d([51, 26, 12, 95, 27, 16, 17, 17, 150, 26, 12, 95, 27, 10, 95, 46, 45, 95, 28, 16, 27, 26, 95, 26, 12, 11, 95, 22, 17, 9, 30, 19, 22, 27, 26]);
}

// Path: fields
class TranslationsFieldsFr {
	TranslationsFieldsFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get code => _root.$meta.d([60, 16, 27, 26]);
}

// Path: labels
class TranslationsLabelsFr {
	TranslationsLabelsFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsLabelsAppFr app = TranslationsLabelsAppFr.internal(_root);
	String get draft => _root.$meta.d([61, 13, 16, 10, 22, 19, 19, 16, 17]);
	String get confirmed => _root.$meta.d([60, 16, 17, 25, 22, 13, 18, 26, 13]);
	String get validated => _root.$meta.d([41, 30, 19, 22, 27, 26, 13]);
	String get cancel => _root.$meta.d([62, 17, 17, 10, 19, 26, 13]);
	String get inputMailValidationCode => _root.$meta.d([44, 30, 22, 12, 22, 13, 95, 19, 26, 95, 28, 16, 27, 26, 95, 13, 26, 152, 10, 95, 15, 30, 13, 95, 18, 30, 22, 19]);
	String get personalInfos => _root.$meta.d([54, 17, 25, 16, 13, 18, 30, 11, 22, 16, 17, 12, 95, 15, 26, 13, 12, 16, 17, 17, 26, 19, 19, 26, 12]);
	String get hello => _root.$meta.d([44, 30, 19, 10, 11]);
	String get services => _root.$meta.d([44, 26, 13, 9, 22, 28, 26, 12]);
	String get stats => _root.$meta.d([44, 11, 30, 11, 12]);
	String get ticketValidate => _root.$meta.d([41, 150, 13, 22, 25, 22, 28, 30, 11, 22, 16, 17]);
	String get ticketStatus => _root.$meta.d([44, 11, 30, 11, 10, 11, 95, 11, 22, 28, 20, 26, 11]);
	late final TranslationsLabelsActionsFr actions = TranslationsLabelsActionsFr.internal(_root);
}

// Path: messages
class TranslationsMessagesFr {
	TranslationsMessagesFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String ticketValidatedSuccess({required String code}) => _root.$meta.d([51, 26, 95, 11, 22, 28, 20, 26, 11, 95]) + code.toString() + _root.$meta.d([95, 30, 95, 150, 11, 150, 95, 9, 30, 19, 22, 27, 150, 95, 30, 9, 26, 28, 95, 12, 10, 28, 28, 151, 12]);
}

// Path: placeholders
class TranslationsPlaceholdersFr {
	TranslationsPlaceholdersFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get type => _root.$meta.d([43, 6, 15, 26]);
}

// Path: titles
class TranslationsTitlesFr {
	TranslationsTitlesFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get statistic => _root.$meta.d([44, 11, 30, 11, 22, 12, 11, 22, 14, 10, 26, 12]);
	String get ticketVerification => _root.$meta.d([41, 150, 13, 22, 25, 22, 28, 30, 11, 22, 16, 17, 95, 27, 88, 10, 17, 95, 11, 22, 28, 20, 26, 11]);
	String get ticketStatusCheck => _root.$meta.d([44, 11, 30, 11, 10, 11, 95, 27, 88, 10, 17, 95, 11, 22, 28, 20, 26, 11]);
	String get ticketValidated => _root.$meta.d([43, 22, 28, 20, 26, 11, 12, 95, 9, 30, 19, 22, 27, 150, 12]);
	String get latestTicketValidated => _root.$meta.d([59, 26, 13, 17, 22, 26, 13, 12, 95, 11, 22, 28, 20, 26, 11, 12, 95, 9, 30, 19, 22, 27, 150, 12]);
}

// Path: errors.api
class TranslationsErrorsApiFr {
	TranslationsErrorsApiFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get ticketNotFound => _root.$meta.d([60, 26, 95, 11, 22, 28, 20, 26, 11, 95, 17, 88, 26, 7, 22, 12, 11, 26, 95, 15, 30, 12]);
	String get ticketAlreadyValidated => _root.$meta.d([60, 26, 95, 11, 22, 28, 20, 26, 11, 95, 26, 12, 11, 95, 27, 150, 21, 159, 95, 10, 11, 22, 19, 22, 12, 150]);
	String get invalidUuid => _root.$meta.d([51, 88, 22, 27, 26, 17, 11, 22, 25, 22, 30, 17, 11, 95, 27, 10, 95, 11, 22, 28, 20, 26, 11, 95, 17, 88, 26, 12, 11, 95, 15, 30, 12, 95, 9, 30, 19, 22, 27, 26]);
}

// Path: labels.app
class TranslationsLabelsAppFr {
	TranslationsLabelsAppFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => _root.$meta.d([43, 22, 28, 20, 26, 11, 22, 17, 24]);
	String get description => _root.$meta.d([51, 26, 95, 43, 22, 28, 20, 26, 11, 22, 17, 24, 95, 26, 12, 11, 95, 10, 17, 26, 95, 30, 15, 15, 19, 22, 28, 30, 11, 22, 16, 17, 95, 27, 26, 95, 24, 26, 12, 11, 22, 16, 17, 95, 27, 26, 12, 95, 29, 22, 19, 19, 26, 11, 12, 95, 19, 16, 13, 12, 95, 27, 88, 10, 17, 95, 150, 9, 151, 17, 26, 18, 26, 17, 11, 95, 87, 12, 15, 16, 13, 11, 83, 95, 18, 30, 13, 22, 30, 24, 26, 83, 95, 26, 11, 28, 81, 86]);
	String get version => _root.$meta.d([41, 26, 13, 12, 22, 16, 17]);
	String get installDate => _root.$meta.d([59, 30, 11, 26, 95, 27, 88, 22, 17, 12, 11, 30, 19, 19, 30, 11, 22, 16, 17]);
	String get updateDate => _root.$meta.d([59, 30, 11, 26, 95, 27, 26, 95, 18, 22, 12, 26, 95, 159, 95, 21, 16, 10, 13]);
	String get buildNumber => _root.$meta.d([49, 10, 18, 150, 13, 16, 95, 27, 26, 95, 9, 26, 13, 12, 22, 16, 17]);
}

// Path: labels.actions
class TranslationsLabelsActionsFr {
	TranslationsLabelsActionsFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
}
