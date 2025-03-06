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
		    s: $calc1(1, 1, 22),
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
	String get sendCode => _root.$meta.d([83, 120, 96, 121, 111, 115, 100, 54, 122, 115, 54, 117, 121, 114, 115]);
	String get ticketScan => _root.$meta.d([69, 117, 119, 120, 120, 115, 100, 54, 99, 120, 54, 98, 127, 117, 125, 115, 98]);
	String get check => _root.$meta.d([64, 255, 100, 127, 112, 127, 115, 100]);
}

// Path: errors
class TranslationsErrorsFr {
	TranslationsErrorsFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsErrorsApiFr api = TranslationsErrorsApiFr.internal(_root);
	String get scanQrCodeError => _root.$meta.d([83, 100, 100, 115, 99, 100, 54, 122, 121, 100, 101, 54, 114, 99, 54, 101, 117, 119, 120, 120, 119, 113, 115, 54, 114, 99, 54, 71, 68, 54, 117, 121, 114, 115]);
	String get scanQrCodeNoResultError => _root.$meta.d([87, 99, 117, 99, 120, 54, 100, 255, 101, 99, 122, 98, 119, 98, 54, 98, 100, 121, 99, 96, 255, 54, 119, 102, 100, 254, 101, 54, 101, 117, 119, 120, 120, 119, 113, 115, 54, 114, 99, 54, 71, 68, 54, 117, 121, 114, 115]);
	String get scanQrCodeWrongFormatError => _root.$meta.d([90, 115, 101, 54, 114, 121, 120, 120, 255, 115, 101, 54, 114, 99, 54, 71, 68, 54, 117, 121, 114, 115, 54, 115, 101, 98, 54, 127, 120, 96, 119, 122, 127, 114, 115]);
}

// Path: fields
class TranslationsFieldsFr {
	TranslationsFieldsFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get code => _root.$meta.d([85, 121, 114, 115]);
}

// Path: labels
class TranslationsLabelsFr {
	TranslationsLabelsFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsLabelsAppFr app = TranslationsLabelsAppFr.internal(_root);
	String get draft => _root.$meta.d([84, 100, 121, 99, 127, 122, 122, 121, 120]);
	String get confirmed => _root.$meta.d([85, 121, 120, 112, 127, 100, 123, 115, 100]);
	String get validated => _root.$meta.d([64, 119, 122, 127, 114, 115, 100]);
	String get cancel => _root.$meta.d([87, 120, 120, 99, 122, 115, 100]);
	String get inputMailValidationCode => _root.$meta.d([69, 119, 127, 101, 127, 100, 54, 122, 115, 54, 117, 121, 114, 115, 54, 100, 115, 241, 99, 54, 102, 119, 100, 54, 123, 119, 127, 122]);
	String get personalInfos => _root.$meta.d([95, 120, 112, 121, 100, 123, 119, 98, 127, 121, 120, 101, 54, 102, 115, 100, 101, 121, 120, 120, 115, 122, 122, 115, 101]);
	String get hello => _root.$meta.d([69, 119, 122, 99, 98]);
	String get services => _root.$meta.d([69, 115, 100, 96, 127, 117, 115, 101]);
	String get stats => _root.$meta.d([69, 98, 119, 98, 101]);
	String get ticketValidate => _root.$meta.d([64, 255, 100, 127, 112, 127, 117, 119, 98, 127, 121, 120]);
	String get ticketStatus => _root.$meta.d([69, 98, 119, 98, 99, 98, 54, 98, 127, 117, 125, 115, 98]);
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
	String get type => _root.$meta.d([66, 111, 102, 115]);
}

// Path: titles
class TranslationsTitlesFr {
	TranslationsTitlesFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get statistic => _root.$meta.d([69, 98, 119, 98, 127, 101, 98, 127, 103, 99, 115, 101]);
	String get ticketVerification => _root.$meta.d([64, 255, 100, 127, 112, 127, 117, 119, 98, 127, 121, 120, 54, 114, 49, 99, 120, 54, 98, 127, 117, 125, 115, 98]);
	String get ticketStatusCheck => _root.$meta.d([69, 98, 119, 98, 99, 98, 54, 114, 49, 99, 120, 54, 98, 127, 117, 125, 115, 98]);
	String get ticketValidated => _root.$meta.d([66, 127, 117, 125, 115, 98, 101, 54, 96, 119, 122, 127, 114, 255, 101]);
	String get latestTicketValidated => _root.$meta.d([82, 115, 100, 120, 127, 115, 100, 101, 54, 98, 127, 117, 125, 115, 98, 101, 54, 96, 119, 122, 127, 114, 255, 101]);
}

// Path: errors.api
class TranslationsErrorsApiFr {
	TranslationsErrorsApiFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get ticketNotFound => _root.$meta.d([85, 115, 54, 98, 127, 117, 125, 115, 98, 54, 120, 49, 115, 110, 127, 101, 98, 115, 54, 102, 119, 101]);
	String get ticketAlreadyValidated => _root.$meta.d([85, 115, 54, 98, 127, 117, 125, 115, 98, 54, 115, 101, 98, 54, 114, 255, 124, 246, 54, 99, 98, 127, 122, 127, 101, 255]);
}

// Path: labels.app
class TranslationsLabelsAppFr {
	TranslationsLabelsAppFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => _root.$meta.d([66, 127, 117, 125, 115, 98, 127, 120, 113]);
	String get description => _root.$meta.d([90, 115, 54, 66, 127, 117, 125, 115, 98, 127, 120, 113, 54, 115, 101, 98, 54, 99, 120, 115, 54, 119, 102, 102, 122, 127, 117, 119, 98, 127, 121, 120, 54, 114, 115, 54, 113, 115, 101, 98, 127, 121, 120, 54, 114, 115, 101, 54, 116, 127, 122, 122, 115, 98, 101, 54, 122, 121, 100, 101, 54, 114, 49, 99, 120, 54, 255, 96, 254, 120, 115, 123, 115, 120, 98, 54, 62, 101, 102, 121, 100, 98, 58, 54, 123, 119, 100, 127, 119, 113, 115, 58, 54, 115, 98, 117, 56, 63]);
	String get version => _root.$meta.d([64, 115, 100, 101, 127, 121, 120]);
	String get installDate => _root.$meta.d([82, 119, 98, 115, 54, 114, 49, 127, 120, 101, 98, 119, 122, 122, 119, 98, 127, 121, 120]);
	String get updateDate => _root.$meta.d([82, 119, 98, 115, 54, 114, 115, 54, 123, 127, 101, 115, 54, 246, 54, 124, 121, 99, 100]);
	String get buildNumber => _root.$meta.d([88, 99, 123, 255, 100, 121, 54, 114, 115, 54, 96, 115, 100, 101, 127, 121, 120]);
}

// Path: labels.actions
class TranslationsLabelsActionsFr {
	TranslationsLabelsActionsFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
}
