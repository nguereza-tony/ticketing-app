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
		    s: $calc0(1, 9, 124),
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
	String get sendCode => _root.$meta.d([42, 1, 25, 0, 22, 10, 29, 79, 3, 10, 79, 12, 0, 11, 10]);
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
	String get code => _root.$meta.d([44, 0, 11, 10]);
}

// Path: labels
class TranslationsLabelsFr {
	TranslationsLabelsFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsLabelsAppFr app = TranslationsLabelsAppFr.internal(_root);
	String get inputMailValidationCode => _root.$meta.d([60, 14, 6, 28, 6, 29, 79, 3, 10, 79, 12, 0, 11, 10, 79, 29, 10, 136, 26, 79, 31, 14, 29, 79, 2, 14, 6, 3]);
	String get personalInfos => _root.$meta.d([38, 1, 9, 0, 29, 2, 14, 27, 6, 0, 1, 28, 79, 31, 10, 29, 28, 0, 1, 1, 10, 3, 3, 10, 28]);
	String get hello => _root.$meta.d([60, 14, 3, 26, 27]);
	String get services => _root.$meta.d([60, 10, 29, 25, 6, 12, 10, 28]);
	String get stats => _root.$meta.d([60, 27, 14, 27, 28]);
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
	String get type => _root.$meta.d([59, 22, 31, 10]);
}

// Path: titles
class TranslationsTitlesFr {
	TranslationsTitlesFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get statistic => _root.$meta.d([60, 27, 14, 27, 6, 28, 27, 6, 30, 26, 10, 28]);
}

// Path: errors.api
class TranslationsErrorsApiFr {
	TranslationsErrorsApiFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get ticketNotFound => _root.$meta.d([44, 10, 79, 27, 6, 12, 4, 10, 27, 79, 1, 72, 10, 23, 6, 28, 27, 10, 79, 31, 14, 28]);
	String get ticketAlreadyValidated => _root.$meta.d([44, 10, 79, 27, 6, 12, 4, 10, 27, 79, 10, 28, 27, 79, 11, 134, 5, 143, 79, 26, 27, 6, 3, 6, 28, 134]);
}

// Path: labels.app
class TranslationsLabelsAppFr {
	TranslationsLabelsAppFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => _root.$meta.d([59, 6, 12, 4, 10, 27, 6, 1, 8]);
	String get description => _root.$meta.d([35, 10, 79, 59, 6, 12, 4, 10, 27, 6, 1, 8, 79, 10, 28, 27, 79, 26, 1, 10, 79, 14, 31, 31, 3, 6, 12, 14, 27, 6, 0, 1, 79, 11, 10, 79, 8, 10, 28, 27, 6, 0, 1, 79, 11, 10, 28, 79, 13, 6, 3, 3, 10, 27, 28, 79, 3, 0, 29, 28, 79, 11, 72, 26, 1, 79, 134, 25, 135, 1, 10, 2, 10, 1, 27, 79, 71, 28, 31, 0, 29, 27, 67, 79, 2, 14, 29, 6, 14, 8, 10, 67, 79, 10, 27, 12, 65, 70]);
	String get version => _root.$meta.d([57, 10, 29, 28, 6, 0, 1]);
	String get installDate => _root.$meta.d([43, 14, 27, 10, 79, 11, 72, 6, 1, 28, 27, 14, 3, 3, 14, 27, 6, 0, 1]);
	String get updateDate => _root.$meta.d([43, 14, 27, 10, 79, 11, 10, 79, 2, 6, 28, 10, 79, 143, 79, 5, 0, 26, 29]);
	String get buildNumber => _root.$meta.d([33, 26, 2, 134, 29, 0, 79, 11, 10, 79, 25, 10, 29, 28, 6, 0, 1]);
}

// Path: labels.actions
class TranslationsLabelsActionsFr {
	TranslationsLabelsActionsFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
}
