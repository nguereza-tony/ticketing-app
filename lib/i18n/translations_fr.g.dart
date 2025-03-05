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
		    s: $calc1(13, 6, 239),
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
	String get sendCode => _root.$meta.d([9, 34, 58, 35, 53, 41, 62, 108, 32, 41, 108, 47, 35, 40, 41]);
	String get check => _root.$meta.d([26, 165, 62, 37, 42, 37, 41, 62]);
}

// Path: errors
class TranslationsErrorsFr {
	TranslationsErrorsFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsErrorsApiFr api = TranslationsErrorsApiFr.internal(_root);
	String get scanQrCodeError => _root.$meta.d([9, 62, 62, 41, 57, 62, 108, 32, 35, 62, 63, 108, 40, 57, 108, 63, 47, 45, 34, 34, 45, 43, 41, 108, 40, 57, 108, 29, 30, 108, 47, 35, 40, 41]);
	String get scanQrCodeNoResultError => _root.$meta.d([13, 57, 47, 57, 34, 108, 62, 165, 63, 57, 32, 56, 45, 56, 108, 56, 62, 35, 57, 58, 165, 108, 45, 60, 62, 164, 63, 108, 63, 47, 45, 34, 34, 45, 43, 41, 108, 40, 57, 108, 29, 30, 108, 47, 35, 40, 41]);
	String get scanQrCodeWrongFormatError => _root.$meta.d([0, 41, 63, 108, 40, 35, 34, 34, 165, 41, 63, 108, 40, 57, 108, 29, 30, 108, 47, 35, 40, 41, 108, 41, 63, 56, 108, 37, 34, 58, 45, 32, 37, 40, 41]);
}

// Path: fields
class TranslationsFieldsFr {
	TranslationsFieldsFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get code => _root.$meta.d([15, 35, 40, 41]);
}

// Path: labels
class TranslationsLabelsFr {
	TranslationsLabelsFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsLabelsAppFr app = TranslationsLabelsAppFr.internal(_root);
	String get cancel => _root.$meta.d([13, 34, 34, 57, 32, 41, 62]);
	String get inputMailValidationCode => _root.$meta.d([31, 45, 37, 63, 37, 62, 108, 32, 41, 108, 47, 35, 40, 41, 108, 62, 41, 171, 57, 108, 60, 45, 62, 108, 33, 45, 37, 32]);
	String get personalInfos => _root.$meta.d([5, 34, 42, 35, 62, 33, 45, 56, 37, 35, 34, 63, 108, 60, 41, 62, 63, 35, 34, 34, 41, 32, 32, 41, 63]);
	String get hello => _root.$meta.d([31, 45, 32, 57, 56]);
	String get services => _root.$meta.d([31, 41, 62, 58, 37, 47, 41, 63]);
	String get stats => _root.$meta.d([31, 56, 45, 56, 63]);
	String get ticketValidate => _root.$meta.d([26, 165, 62, 37, 42, 37, 47, 45, 56, 37, 35, 34]);
	String get ticketStatus => _root.$meta.d([31, 56, 45, 56, 57, 56, 108, 56, 37, 47, 39, 41, 56]);
	late final TranslationsLabelsActionsFr actions = TranslationsLabelsActionsFr.internal(_root);
}

// Path: messages
class TranslationsMessagesFr {
	TranslationsMessagesFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
}

// Path: placeholders
class TranslationsPlaceholdersFr {
	TranslationsPlaceholdersFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get type => _root.$meta.d([24, 53, 60, 41]);
}

// Path: titles
class TranslationsTitlesFr {
	TranslationsTitlesFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get statistic => _root.$meta.d([31, 56, 45, 56, 37, 63, 56, 37, 61, 57, 41, 63]);
	String get ticketVerification => _root.$meta.d([26, 165, 62, 37, 42, 37, 47, 45, 56, 37, 35, 34, 108, 40, 107, 57, 34, 108, 56, 37, 47, 39, 41, 56]);
	String get ticketStatusCheck => _root.$meta.d([31, 56, 45, 56, 57, 56, 108, 40, 107, 57, 34, 108, 56, 37, 47, 39, 41, 56]);
	String get ticketValidated => _root.$meta.d([24, 37, 47, 39, 41, 56, 63, 108, 58, 45, 32, 37, 40, 165, 63]);
	String get latestTicketValidated => _root.$meta.d([8, 41, 62, 34, 37, 41, 62, 63, 108, 56, 37, 47, 39, 41, 56, 63, 108, 58, 45, 32, 37, 40, 165, 63]);
}

// Path: errors.api
class TranslationsErrorsApiFr {
	TranslationsErrorsApiFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get ticketNotFound => _root.$meta.d([15, 41, 108, 56, 37, 47, 39, 41, 56, 108, 34, 107, 41, 52, 37, 63, 56, 41, 108, 60, 45, 63]);
	String get ticketAlreadyValidated => _root.$meta.d([15, 41, 108, 56, 37, 47, 39, 41, 56, 108, 41, 63, 56, 108, 40, 165, 38, 172, 108, 57, 56, 37, 32, 37, 63, 165]);
}

// Path: labels.app
class TranslationsLabelsAppFr {
	TranslationsLabelsAppFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => _root.$meta.d([24, 37, 47, 39, 41, 56, 37, 34, 43]);
	String get description => _root.$meta.d([0, 41, 108, 24, 37, 47, 39, 41, 56, 37, 34, 43, 108, 41, 63, 56, 108, 57, 34, 41, 108, 45, 60, 60, 32, 37, 47, 45, 56, 37, 35, 34, 108, 40, 41, 108, 43, 41, 63, 56, 37, 35, 34, 108, 40, 41, 63, 108, 46, 37, 32, 32, 41, 56, 63, 108, 32, 35, 62, 63, 108, 40, 107, 57, 34, 108, 165, 58, 164, 34, 41, 33, 41, 34, 56, 108, 100, 63, 60, 35, 62, 56, 96, 108, 33, 45, 62, 37, 45, 43, 41, 96, 108, 41, 56, 47, 98, 101]);
	String get version => _root.$meta.d([26, 41, 62, 63, 37, 35, 34]);
	String get installDate => _root.$meta.d([8, 45, 56, 41, 108, 40, 107, 37, 34, 63, 56, 45, 32, 32, 45, 56, 37, 35, 34]);
	String get updateDate => _root.$meta.d([8, 45, 56, 41, 108, 40, 41, 108, 33, 37, 63, 41, 108, 172, 108, 38, 35, 57, 62]);
	String get buildNumber => _root.$meta.d([2, 57, 33, 165, 62, 35, 108, 40, 41, 108, 58, 41, 62, 63, 37, 35, 34]);
}

// Path: labels.actions
class TranslationsLabelsActionsFr {
	TranslationsLabelsActionsFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
}
