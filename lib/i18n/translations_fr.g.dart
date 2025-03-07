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
		    s: $calc0(4, 12, 219),
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
	String get sendCode => _root.$meta.d([130, 169, 177, 168, 190, 162, 181, 231, 171, 162, 231, 164, 168, 163, 162]);
	String get ticketScan => _root.$meta.d([148, 164, 166, 169, 169, 162, 181, 231, 178, 169, 231, 179, 174, 164, 172, 162, 179]);
	String get check => _root.$meta.d([145, 46, 181, 174, 161, 174, 162, 181]);
}

// Path: errors
class TranslationsErrorsFr {
	TranslationsErrorsFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsErrorsApiFr api = TranslationsErrorsApiFr.internal(_root);
	String get scanQrCodeError => _root.$meta.d([130, 181, 181, 162, 178, 181, 231, 171, 168, 181, 180, 231, 163, 178, 231, 180, 164, 166, 169, 169, 166, 160, 162, 231, 163, 178, 231, 150, 149, 231, 164, 168, 163, 162]);
	String get scanQrCodeNoResultError => _root.$meta.d([134, 178, 164, 178, 169, 231, 181, 46, 180, 178, 171, 179, 166, 179, 231, 179, 181, 168, 178, 177, 46, 231, 166, 183, 181, 47, 180, 231, 180, 164, 166, 169, 169, 166, 160, 162, 231, 163, 178, 231, 150, 149, 231, 164, 168, 163, 162]);
	String get scanQrCodeWrongFormatError => _root.$meta.d([139, 162, 180, 231, 163, 168, 169, 169, 46, 162, 180, 231, 163, 178, 231, 150, 149, 231, 164, 168, 163, 162, 231, 162, 180, 179, 231, 174, 169, 177, 166, 171, 174, 163, 162]);
}

// Path: fields
class TranslationsFieldsFr {
	TranslationsFieldsFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get code => _root.$meta.d([132, 168, 163, 162]);
}

// Path: labels
class TranslationsLabelsFr {
	TranslationsLabelsFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsLabelsAppFr app = TranslationsLabelsAppFr.internal(_root);
	String get draft => _root.$meta.d([133, 181, 168, 178, 174, 171, 171, 168, 169]);
	String get confirmed => _root.$meta.d([132, 168, 169, 161, 174, 181, 170, 162, 181]);
	String get validated => _root.$meta.d([145, 166, 171, 174, 163, 162, 181]);
	String get cancel => _root.$meta.d([134, 169, 169, 178, 171, 162, 181]);
	String get inputMailValidationCode => _root.$meta.d([148, 166, 174, 180, 174, 181, 231, 171, 162, 231, 164, 168, 163, 162, 231, 181, 162, 32, 178, 231, 183, 166, 181, 231, 170, 166, 174, 171]);
	String get personalInfos => _root.$meta.d([142, 169, 161, 168, 181, 170, 166, 179, 174, 168, 169, 180, 231, 183, 162, 181, 180, 168, 169, 169, 162, 171, 171, 162, 180]);
	String get hello => _root.$meta.d([148, 166, 171, 178, 179]);
	String get services => _root.$meta.d([148, 162, 181, 177, 174, 164, 162, 180]);
	String get stats => _root.$meta.d([148, 179, 166, 179, 180]);
	String get ticketValidate => _root.$meta.d([145, 46, 181, 174, 161, 174, 164, 166, 179, 174, 168, 169]);
	String get ticketStatus => _root.$meta.d([148, 179, 166, 179, 178, 179, 231, 179, 174, 164, 172, 162, 179]);
}

// Path: messages
class TranslationsMessagesFr {
	TranslationsMessagesFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String ticketValidatedSuccess({required String code}) => _root.$meta.d([139, 162, 231, 179, 174, 164, 172, 162, 179, 231]) + code.toString() + _root.$meta.d([231, 166, 231, 46, 179, 46, 231, 177, 166, 171, 174, 163, 46, 231, 166, 177, 162, 164, 231, 180, 178, 164, 164, 47, 180]);
}

// Path: placeholders
class TranslationsPlaceholdersFr {
	TranslationsPlaceholdersFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get type => _root.$meta.d([147, 190, 183, 162]);
}

// Path: titles
class TranslationsTitlesFr {
	TranslationsTitlesFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get statistic => _root.$meta.d([148, 179, 166, 179, 174, 180, 179, 174, 182, 178, 162, 180]);
	String get ticketVerification => _root.$meta.d([145, 46, 181, 174, 161, 174, 164, 166, 179, 174, 168, 169, 231, 163, 224, 178, 169, 231, 179, 174, 164, 172, 162, 179]);
	String get ticketStatusCheck => _root.$meta.d([148, 179, 166, 179, 178, 179, 231, 163, 224, 178, 169, 231, 179, 174, 164, 172, 162, 179]);
	String get ticketValidated => _root.$meta.d([147, 174, 164, 172, 162, 179, 180, 231, 177, 166, 171, 174, 163, 46, 180]);
	String get latestTicketValidated => _root.$meta.d([131, 162, 181, 169, 174, 162, 181, 180, 231, 179, 174, 164, 172, 162, 179, 180, 231, 177, 166, 171, 174, 163, 46, 180]);
}

// Path: errors.api
class TranslationsErrorsApiFr {
	TranslationsErrorsApiFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get ticketNotFound => _root.$meta.d([132, 162, 231, 179, 174, 164, 172, 162, 179, 231, 169, 224, 162, 191, 174, 180, 179, 162, 231, 183, 166, 180]);
	String get ticketAlreadyValidated => _root.$meta.d([132, 162, 231, 179, 174, 164, 172, 162, 179, 231, 162, 180, 179, 231, 163, 46, 173, 39, 231, 178, 179, 174, 171, 174, 180, 46]);
	String get invalidUuid => _root.$meta.d([139, 224, 174, 163, 162, 169, 179, 174, 161, 174, 166, 169, 179, 231, 163, 178, 231, 179, 174, 164, 172, 162, 179, 231, 169, 224, 162, 180, 179, 231, 183, 166, 180, 231, 177, 166, 171, 174, 163, 162]);
}

// Path: labels.app
class TranslationsLabelsAppFr {
	TranslationsLabelsAppFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => _root.$meta.d([147, 174, 164, 172, 162, 179, 174, 169, 160]);
	String get description => _root.$meta.d([139, 162, 231, 147, 174, 164, 172, 162, 179, 174, 169, 160, 231, 162, 180, 179, 231, 178, 169, 162, 231, 166, 183, 183, 171, 174, 164, 166, 179, 174, 168, 169, 231, 163, 162, 231, 160, 162, 180, 179, 174, 168, 169, 231, 163, 162, 180, 231, 165, 174, 171, 171, 162, 179, 180, 231, 171, 168, 181, 180, 231, 163, 224, 178, 169, 231, 46, 177, 47, 169, 162, 170, 162, 169, 179, 231, 239, 180, 183, 168, 181, 179, 235, 231, 170, 166, 181, 174, 166, 160, 162, 235, 231, 162, 179, 164, 233, 238]);
	String get version => _root.$meta.d([145, 162, 181, 180, 174, 168, 169]);
	String get installDate => _root.$meta.d([131, 166, 179, 162, 231, 163, 224, 174, 169, 180, 179, 166, 171, 171, 166, 179, 174, 168, 169]);
	String get updateDate => _root.$meta.d([131, 166, 179, 162, 231, 163, 162, 231, 170, 174, 180, 162, 231, 39, 231, 173, 168, 178, 181]);
	String get buildNumber => _root.$meta.d([137, 178, 170, 46, 181, 168, 231, 163, 162, 231, 177, 162, 181, 180, 174, 168, 169]);
}
