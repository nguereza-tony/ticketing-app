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
		    s: $calc0(2, 16, 97),
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
	String get sendCode => _root.$meta.d([6, 45, 53, 44, 58, 38, 49, 99, 47, 38, 99, 32, 44, 39, 38]);
}

// Path: errors
class TranslationsErrorsFr {
	TranslationsErrorsFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsErrorsApiFr api = TranslationsErrorsApiFr.internal(_root);
}

// Path: fields
class TranslationsFieldsFr {
	TranslationsFieldsFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get code => _root.$meta.d([0, 44, 39, 38]);
}

// Path: labels
class TranslationsLabelsFr {
	TranslationsLabelsFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsLabelsAppFr app = TranslationsLabelsAppFr.internal(_root);
	String get inputMailValidationCode => _root.$meta.d([16, 34, 42, 48, 42, 49, 99, 47, 38, 99, 32, 44, 39, 38, 99, 49, 38, 164, 54, 99, 51, 34, 49, 99, 46, 34, 42, 47]);
	String get personalInfos => _root.$meta.d([10, 45, 37, 44, 49, 46, 34, 55, 42, 44, 45, 48, 99, 51, 38, 49, 48, 44, 45, 45, 38, 47, 47, 38, 48]);
	String get hello => _root.$meta.d([16, 34, 47, 54, 55]);
	String get services => _root.$meta.d([16, 38, 49, 53, 42, 32, 38, 48]);
	String get stats => _root.$meta.d([16, 55, 34, 55, 48]);
	String get ticketValidate => _root.$meta.d([21, 170, 49, 42, 37, 42, 32, 34, 55, 42, 44, 45]);
	String get ticketStatus => _root.$meta.d([16, 55, 34, 55, 54, 55, 99, 55, 42, 32, 40, 38, 55]);
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
	String get type => _root.$meta.d([23, 58, 51, 38]);
}

// Path: titles
class TranslationsTitlesFr {
	TranslationsTitlesFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get statistic => _root.$meta.d([16, 55, 34, 55, 42, 48, 55, 42, 50, 54, 38, 48]);
	String get ticketValidated => _root.$meta.d([23, 42, 32, 40, 38, 55, 48, 99, 53, 34, 47, 42, 39, 170, 48]);
	String get latestTicketValidated => _root.$meta.d([7, 38, 49, 45, 42, 38, 49, 48, 99, 55, 42, 32, 40, 38, 55, 48, 99, 53, 34, 47, 42, 39, 170, 48]);
}

// Path: errors.api
class TranslationsErrorsApiFr {
	TranslationsErrorsApiFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get ticketNotFound => _root.$meta.d([0, 38, 99, 55, 42, 32, 40, 38, 55, 99, 45, 100, 38, 59, 42, 48, 55, 38, 99, 51, 34, 48]);
	String get ticketAlreadyValidated => _root.$meta.d([0, 38, 99, 55, 42, 32, 40, 38, 55, 99, 38, 48, 55, 99, 39, 170, 41, 163, 99, 54, 55, 42, 47, 42, 48, 170]);
}

// Path: labels.app
class TranslationsLabelsAppFr {
	TranslationsLabelsAppFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => _root.$meta.d([23, 42, 32, 40, 38, 55, 42, 45, 36]);
	String get description => _root.$meta.d([15, 38, 99, 23, 42, 32, 40, 38, 55, 42, 45, 36, 99, 38, 48, 55, 99, 54, 45, 38, 99, 34, 51, 51, 47, 42, 32, 34, 55, 42, 44, 45, 99, 39, 38, 99, 36, 38, 48, 55, 42, 44, 45, 99, 39, 38, 48, 99, 33, 42, 47, 47, 38, 55, 48, 99, 47, 44, 49, 48, 99, 39, 100, 54, 45, 99, 170, 53, 171, 45, 38, 46, 38, 45, 55, 99, 107, 48, 51, 44, 49, 55, 111, 99, 46, 34, 49, 42, 34, 36, 38, 111, 99, 38, 55, 32, 109, 106]);
	String get version => _root.$meta.d([21, 38, 49, 48, 42, 44, 45]);
	String get installDate => _root.$meta.d([7, 34, 55, 38, 99, 39, 100, 42, 45, 48, 55, 34, 47, 47, 34, 55, 42, 44, 45]);
	String get updateDate => _root.$meta.d([7, 34, 55, 38, 99, 39, 38, 99, 46, 42, 48, 38, 99, 163, 99, 41, 44, 54, 49]);
	String get buildNumber => _root.$meta.d([13, 54, 46, 170, 49, 44, 99, 39, 38, 99, 53, 38, 49, 48, 42, 44, 45]);
}

// Path: labels.actions
class TranslationsLabelsActionsFr {
	TranslationsLabelsActionsFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
}
