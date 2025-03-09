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
		    s: $calc0(0, 12, 189),
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
	String get sendCode => _root.$meta.d([224, 203, 211, 202, 220, 192, 215, 133, 201, 192, 133, 198, 202, 193, 192]);
	String get ticketScan => _root.$meta.d([246, 198, 196, 203, 203, 192, 215, 133, 208, 203, 133, 209, 204, 198, 206, 192, 209]);
	String get check => _root.$meta.d([243, 76, 215, 204, 195, 204, 192, 215]);
}

// Path: errors
class TranslationsErrorsFr {
	TranslationsErrorsFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsErrorsApiFr api = TranslationsErrorsApiFr.internal(_root);
	String get scanQrCodeError => _root.$meta.d([224, 215, 215, 192, 208, 215, 133, 201, 202, 215, 214, 133, 193, 208, 133, 214, 198, 196, 203, 203, 196, 194, 192, 133, 193, 208, 133, 244, 247, 133, 198, 202, 193, 192]);
	String get scanQrCodeNoResultError => _root.$meta.d([228, 208, 198, 208, 203, 133, 215, 76, 214, 208, 201, 209, 196, 209, 133, 209, 215, 202, 208, 211, 76, 133, 196, 213, 215, 77, 214, 133, 214, 198, 196, 203, 203, 196, 194, 192, 133, 193, 208, 133, 244, 247, 133, 198, 202, 193, 192]);
	String get scanQrCodeWrongFormatError => _root.$meta.d([233, 192, 214, 133, 193, 202, 203, 203, 76, 192, 214, 133, 193, 208, 133, 244, 247, 133, 198, 202, 193, 192, 133, 192, 214, 209, 133, 204, 203, 211, 196, 201, 204, 193, 192]);
}

// Path: fields
class TranslationsFieldsFr {
	TranslationsFieldsFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get code => _root.$meta.d([230, 202, 193, 192]);
}

// Path: labels
class TranslationsLabelsFr {
	TranslationsLabelsFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsLabelsAppFr app = TranslationsLabelsAppFr.internal(_root);
	String get draft => _root.$meta.d([231, 215, 202, 208, 204, 201, 201, 202, 203]);
	String get confirmed => _root.$meta.d([230, 202, 203, 195, 204, 215, 200, 192, 215]);
	String get validated => _root.$meta.d([243, 196, 201, 204, 193, 192, 215]);
	String get cancel => _root.$meta.d([228, 203, 203, 208, 201, 192, 215]);
	String get inputMailValidationCode => _root.$meta.d([246, 196, 204, 214, 204, 215, 133, 201, 192, 133, 198, 202, 193, 192, 133, 215, 192, 66, 208, 133, 213, 196, 215, 133, 200, 196, 204, 201]);
	String get personalInfos => _root.$meta.d([236, 203, 195, 202, 215, 200, 196, 209, 204, 202, 203, 214, 133, 213, 192, 215, 214, 202, 203, 203, 192, 201, 201, 192, 214]);
	String get hello => _root.$meta.d([246, 196, 201, 208, 209]);
	String get services => _root.$meta.d([246, 192, 215, 211, 204, 198, 192, 214]);
	String get stats => _root.$meta.d([246, 209, 196, 209, 214]);
	String get ticketValidate => _root.$meta.d([243, 76, 215, 204, 195, 204, 198, 196, 209, 204, 202, 203]);
	String get ticketStatus => _root.$meta.d([246, 209, 196, 209, 208, 209, 133, 209, 204, 198, 206, 192, 209]);
	late final TranslationsLabelsOnboardingFr onboarding = TranslationsLabelsOnboardingFr.internal(_root);
}

// Path: messages
class TranslationsMessagesFr {
	TranslationsMessagesFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String ticketValidatedSuccess({required String code}) => _root.$meta.d([233, 192, 133, 209, 204, 198, 206, 192, 209, 133]) + code.toString() + _root.$meta.d([133, 196, 133, 76, 209, 76, 133, 211, 196, 201, 204, 193, 76, 133, 196, 211, 192, 198, 133, 214, 208, 198, 198, 77, 214]);
}

// Path: placeholders
class TranslationsPlaceholdersFr {
	TranslationsPlaceholdersFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get type => _root.$meta.d([241, 220, 213, 192]);
}

// Path: titles
class TranslationsTitlesFr {
	TranslationsTitlesFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get statistic => _root.$meta.d([246, 209, 196, 209, 204, 214, 209, 204, 212, 208, 192, 214]);
	String get ticketVerification => _root.$meta.d([243, 76, 215, 204, 195, 204, 198, 196, 209, 204, 202, 203, 133, 193, 130, 208, 203, 133, 209, 204, 198, 206, 192, 209]);
	String get ticketStatusCheck => _root.$meta.d([246, 209, 196, 209, 208, 209, 133, 193, 130, 208, 203, 133, 209, 204, 198, 206, 192, 209]);
	String get ticketValidated => _root.$meta.d([241, 204, 198, 206, 192, 209, 214, 133, 211, 196, 201, 204, 193, 76, 214]);
	String get latestTicketValidated => _root.$meta.d([225, 192, 215, 203, 204, 192, 215, 214, 133, 209, 204, 198, 206, 192, 209, 214, 133, 211, 196, 201, 204, 193, 76, 214]);
}

// Path: errors.api
class TranslationsErrorsApiFr {
	TranslationsErrorsApiFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get ticketNotFound => _root.$meta.d([230, 192, 133, 209, 204, 198, 206, 192, 209, 133, 203, 130, 192, 221, 204, 214, 209, 192, 133, 213, 196, 214]);
	String get ticketAlreadyValidated => _root.$meta.d([230, 192, 133, 209, 204, 198, 206, 192, 209, 133, 192, 214, 209, 133, 193, 76, 207, 69, 133, 208, 209, 204, 201, 204, 214, 76]);
	String get invalidUuid => _root.$meta.d([233, 130, 204, 193, 192, 203, 209, 204, 195, 204, 196, 203, 209, 133, 193, 208, 133, 209, 204, 198, 206, 192, 209, 133, 203, 130, 192, 214, 209, 133, 213, 196, 214, 133, 211, 196, 201, 204, 193, 192]);
}

// Path: labels.app
class TranslationsLabelsAppFr {
	TranslationsLabelsAppFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => _root.$meta.d([241, 204, 198, 206, 192, 209, 204, 203, 194]);
	String get description => _root.$meta.d([233, 192, 133, 241, 204, 198, 206, 192, 209, 204, 203, 194, 133, 192, 214, 209, 133, 208, 203, 192, 133, 196, 213, 213, 201, 204, 198, 196, 209, 204, 202, 203, 133, 193, 192, 133, 194, 192, 214, 209, 204, 202, 203, 133, 193, 192, 214, 133, 199, 204, 201, 201, 192, 209, 214, 133, 201, 202, 215, 214, 133, 193, 130, 208, 203, 133, 76, 211, 77, 203, 192, 200, 192, 203, 209, 133, 141, 214, 213, 202, 215, 209, 137, 133, 200, 196, 215, 204, 196, 194, 192, 137, 133, 192, 209, 198, 139, 140]);
	String get version => _root.$meta.d([243, 192, 215, 214, 204, 202, 203]);
	String get installDate => _root.$meta.d([225, 196, 209, 192, 133, 193, 130, 204, 203, 214, 209, 196, 201, 201, 196, 209, 204, 202, 203]);
	String get updateDate => _root.$meta.d([225, 196, 209, 192, 133, 193, 192, 133, 200, 204, 214, 192, 133, 69, 133, 207, 202, 208, 215]);
	String get buildNumber => _root.$meta.d([235, 208, 200, 76, 215, 202, 133, 193, 192, 133, 211, 192, 215, 214, 204, 202, 203]);
}

// Path: labels.onboarding
class TranslationsLabelsOnboardingFr {
	TranslationsLabelsOnboardingFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get skip => _root.$meta.d([246, 196, 208, 209, 192, 215]);
	String get terminate => _root.$meta.d([241, 192, 215, 200, 204, 203, 192, 215, 133, 132]);
	String get title1 => _root.$meta.d([246, 204, 200, 213, 201, 192, 133, 192, 209, 133, 204, 203, 209, 208, 204, 209, 204, 195, 214, 133, 139, 139, 139]);
	String get title2 => _root.$meta.d([226, 192, 214, 209, 204, 202, 203, 133, 193, 192, 214, 133, 209, 204, 198, 206, 192, 209, 214, 133, 139, 139, 139]);
	String get title3 => _root.$meta.d([243, 202, 208, 214, 133, 79, 209, 192, 214, 133, 196, 215, 215, 204, 211, 76, 214, 133, 132]);
	String get description1 => _root.$meta.d([240, 203, 192, 133, 196, 213, 213, 201, 204, 198, 196, 209, 204, 202, 203, 133, 214, 204, 200, 213, 201, 192, 133, 192, 209, 133, 204, 203, 209, 208, 204, 209, 204, 195, 133, 213, 192, 215, 200, 192, 209, 133, 196, 208, 221, 133, 208, 209, 204, 201, 204, 214, 196, 209, 192, 208, 215, 214, 133, 193, 192, 133, 213, 215, 192, 203, 193, 215, 192, 133, 192, 203, 133, 200, 196, 204, 203, 133, 201, 192, 133, 214, 220, 209, 77, 200, 192, 133, 209, 215, 77, 214, 133, 215, 196, 213, 204, 193, 192, 200, 192, 203, 209, 139]);
	String get description2 => _root.$meta.d([243, 76, 215, 204, 195, 204, 192, 215, 133, 192, 209, 133, 211, 196, 201, 204, 193, 192, 215, 133, 208, 203, 133, 209, 204, 198, 206, 192, 209, 133, 213, 202, 208, 215, 133, 208, 203, 133, 76, 211, 77, 203, 192, 200, 192, 203, 209, 133, 141, 214, 213, 202, 215, 209, 137, 133, 200, 196, 215, 204, 196, 194, 192, 137, 133, 192, 209, 198, 139, 140, 133, 192, 203, 133, 214, 198, 196, 203, 203, 196, 203, 209, 133, 201, 192, 133, 198, 202, 193, 192, 133, 244, 247]);
	String get description3 => _root.$meta.d([243, 202, 208, 214, 133, 196, 211, 192, 223, 133, 195, 204, 203, 204, 137, 133, 201, 196, 203, 198, 192, 215, 133, 201, 8380, 196, 213, 213, 201, 204, 198, 196, 209, 204, 202, 203, 133, 192, 209, 133, 213, 215, 202, 195, 204, 209, 192, 223, 133, 193, 192, 133, 214, 192, 214, 133, 195, 202, 203, 198, 209, 204, 202, 203, 203, 196, 201, 204, 209, 76, 214]);
}
