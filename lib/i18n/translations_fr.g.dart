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
		    s: $calc0(3, 7, 158),
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
	String get sendCode => _root.$meta.d([202, 225, 249, 224, 246, 234, 253, 175, 227, 234, 175, 236, 224, 235, 234]);
	String get ticketScan => _root.$meta.d([220, 236, 238, 225, 225, 234, 253, 175, 250, 225, 175, 251, 230, 236, 228, 234, 251]);
	String get check => _root.$meta.d([217, 102, 253, 230, 233, 230, 234, 253]);
}

// Path: errors
class TranslationsErrorsFr {
	TranslationsErrorsFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsErrorsApiFr api = TranslationsErrorsApiFr.internal(_root);
	String get scanQrCodeError => _root.$meta.d([202, 253, 253, 234, 250, 253, 175, 227, 224, 253, 252, 175, 235, 250, 175, 252, 236, 238, 225, 225, 238, 232, 234, 175, 235, 250, 175, 222, 221, 175, 236, 224, 235, 234]);
	String get scanQrCodeNoResultError => _root.$meta.d([206, 250, 236, 250, 225, 175, 253, 102, 252, 250, 227, 251, 238, 251, 175, 251, 253, 224, 250, 249, 102, 175, 238, 255, 253, 103, 252, 175, 252, 236, 238, 225, 225, 238, 232, 234, 175, 235, 250, 175, 222, 221, 175, 236, 224, 235, 234]);
	String get scanQrCodeWrongFormatError => _root.$meta.d([195, 234, 252, 175, 235, 224, 225, 225, 102, 234, 252, 175, 235, 250, 175, 222, 221, 175, 236, 224, 235, 234, 175, 234, 252, 251, 175, 230, 225, 249, 238, 227, 230, 235, 234]);
}

// Path: fields
class TranslationsFieldsFr {
	TranslationsFieldsFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get code => _root.$meta.d([204, 224, 235, 234]);
}

// Path: labels
class TranslationsLabelsFr {
	TranslationsLabelsFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsLabelsAppFr app = TranslationsLabelsAppFr.internal(_root);
	String get draft => _root.$meta.d([205, 253, 224, 250, 230, 227, 227, 224, 225]);
	String get confirmed => _root.$meta.d([204, 224, 225, 233, 230, 253, 226, 234, 253]);
	String get validated => _root.$meta.d([217, 238, 227, 230, 235, 234, 253]);
	String get cancel => _root.$meta.d([206, 225, 225, 250, 227, 234, 253]);
	String get inputMailValidationCode => _root.$meta.d([220, 238, 230, 252, 230, 253, 175, 227, 234, 175, 236, 224, 235, 234, 175, 253, 234, 104, 250, 175, 255, 238, 253, 175, 226, 238, 230, 227]);
	String get personalInfos => _root.$meta.d([198, 225, 233, 224, 253, 226, 238, 251, 230, 224, 225, 252, 175, 255, 234, 253, 252, 224, 225, 225, 234, 227, 227, 234, 252]);
	String get hello => _root.$meta.d([220, 238, 227, 250, 251]);
	String get services => _root.$meta.d([220, 234, 253, 249, 230, 236, 234, 252]);
	String get stats => _root.$meta.d([220, 251, 238, 251, 252]);
	String get ticketValidate => _root.$meta.d([217, 102, 253, 230, 233, 230, 236, 238, 251, 230, 224, 225]);
	String get ticketStatus => _root.$meta.d([220, 251, 238, 251, 250, 251, 175, 251, 230, 236, 228, 234, 251]);
	late final TranslationsLabelsActionsFr actions = TranslationsLabelsActionsFr.internal(_root);
}

// Path: messages
class TranslationsMessagesFr {
	TranslationsMessagesFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String ticketValidatedSuccess({required String code}) => _root.$meta.d([195, 234, 175, 251, 230, 236, 228, 234, 251, 175]) + code.toString() + _root.$meta.d([175, 238, 175, 102, 251, 102, 175, 249, 238, 227, 230, 235, 102, 175, 238, 249, 234, 236, 175, 252, 250, 236, 236, 103, 252]);
}

// Path: placeholders
class TranslationsPlaceholdersFr {
	TranslationsPlaceholdersFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get type => _root.$meta.d([219, 246, 255, 234]);
}

// Path: titles
class TranslationsTitlesFr {
	TranslationsTitlesFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get statistic => _root.$meta.d([220, 251, 238, 251, 230, 252, 251, 230, 254, 250, 234, 252]);
	String get ticketVerification => _root.$meta.d([217, 102, 253, 230, 233, 230, 236, 238, 251, 230, 224, 225, 175, 235, 168, 250, 225, 175, 251, 230, 236, 228, 234, 251]);
	String get ticketStatusCheck => _root.$meta.d([220, 251, 238, 251, 250, 251, 175, 235, 168, 250, 225, 175, 251, 230, 236, 228, 234, 251]);
	String get ticketValidated => _root.$meta.d([219, 230, 236, 228, 234, 251, 252, 175, 249, 238, 227, 230, 235, 102, 252]);
	String get latestTicketValidated => _root.$meta.d([203, 234, 253, 225, 230, 234, 253, 252, 175, 251, 230, 236, 228, 234, 251, 252, 175, 249, 238, 227, 230, 235, 102, 252]);
}

// Path: errors.api
class TranslationsErrorsApiFr {
	TranslationsErrorsApiFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get ticketNotFound => _root.$meta.d([204, 234, 175, 251, 230, 236, 228, 234, 251, 175, 225, 168, 234, 247, 230, 252, 251, 234, 175, 255, 238, 252]);
	String get ticketAlreadyValidated => _root.$meta.d([204, 234, 175, 251, 230, 236, 228, 234, 251, 175, 234, 252, 251, 175, 235, 102, 229, 111, 175, 250, 251, 230, 227, 230, 252, 102]);
}

// Path: labels.app
class TranslationsLabelsAppFr {
	TranslationsLabelsAppFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => _root.$meta.d([219, 230, 236, 228, 234, 251, 230, 225, 232]);
	String get description => _root.$meta.d([195, 234, 175, 219, 230, 236, 228, 234, 251, 230, 225, 232, 175, 234, 252, 251, 175, 250, 225, 234, 175, 238, 255, 255, 227, 230, 236, 238, 251, 230, 224, 225, 175, 235, 234, 175, 232, 234, 252, 251, 230, 224, 225, 175, 235, 234, 252, 175, 237, 230, 227, 227, 234, 251, 252, 175, 227, 224, 253, 252, 175, 235, 168, 250, 225, 175, 102, 249, 103, 225, 234, 226, 234, 225, 251, 175, 167, 252, 255, 224, 253, 251, 163, 175, 226, 238, 253, 230, 238, 232, 234, 163, 175, 234, 251, 236, 161, 166]);
	String get version => _root.$meta.d([217, 234, 253, 252, 230, 224, 225]);
	String get installDate => _root.$meta.d([203, 238, 251, 234, 175, 235, 168, 230, 225, 252, 251, 238, 227, 227, 238, 251, 230, 224, 225]);
	String get updateDate => _root.$meta.d([203, 238, 251, 234, 175, 235, 234, 175, 226, 230, 252, 234, 175, 111, 175, 229, 224, 250, 253]);
	String get buildNumber => _root.$meta.d([193, 250, 226, 102, 253, 224, 175, 235, 234, 175, 249, 234, 253, 252, 230, 224, 225]);
}

// Path: labels.actions
class TranslationsLabelsActionsFr {
	TranslationsLabelsActionsFr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
}
