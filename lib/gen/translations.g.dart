/// Generated file. Do not edit.
///
/// Original: assets/translations
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 624 (312 per locale)
///
/// Built on 2025-01-07 at 01:13 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	en(languageCode: 'en', build: Translations.build),
	zhCn(languageCode: 'zh', countryCode: 'CN', build: TranslationsZhCn.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	late final TranslationsGeneralEn general = TranslationsGeneralEn._(_root);
	late final TranslationsHomeEn home = TranslationsHomeEn._(_root);
	late final TranslationsStatsEn stats = TranslationsStatsEn._(_root);
	late final TranslationsProfileEn profile = TranslationsProfileEn._(_root);
	late final TranslationsProxiesEn proxies = TranslationsProxiesEn._(_root);
	late final TranslationsLogsEn logs = TranslationsLogsEn._(_root);
	late final TranslationsSettingsEn settings = TranslationsSettingsEn._(_root);
	late final TranslationsAboutEn about = TranslationsAboutEn._(_root);
	late final TranslationsAppUpdateEn appUpdate = TranslationsAppUpdateEn._(_root);
	late final TranslationsTrayEn tray = TranslationsTrayEn._(_root);
	late final TranslationsFailureEn failure = TranslationsFailureEn._(_root);
	late final TranslationsConnectionEn connection = TranslationsConnectionEn._(_root);
	late final TranslationsConfigEn config = TranslationsConfigEn._(_root);
	late final TranslationsWindowEn window = TranslationsWindowEn._(_root);
}

// Path: general
class TranslationsGeneralEn {
	TranslationsGeneralEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get appTitle => 'Wsurge';
	String get reset => 'Reset';
	late final TranslationsGeneralToggleEn toggle = TranslationsGeneralToggleEn._(_root);
	late final TranslationsGeneralStateEn state = TranslationsGeneralStateEn._(_root);
	String get sort => 'Sort';
	String get sortBy => 'Sort by';
	String get addToClipboard => 'Add To Clipboard';
	String get notSet => 'Not Set';
	String get agree => 'Agree';
	String get decline => 'Decline';
	String get unknown => 'Unknown';
	String get hidden => 'Hidden';
	String get timeout => 'Timeout';
	String get clipboardExportSuccessMsg => 'Added To Clipboard';
	String get showMore => 'Show More';
	String get showLess => 'Show Less';
	String get openAppSettings => 'Open App Settings';
	String get grantPermission => 'Grant Permission';
}

// Path: home
class TranslationsHomeEn {
	TranslationsHomeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pageTitle => 'Home';
	String get emptyProfilesMsg => 'Begin by Adding a Subscription Profile';
	String get noActiveProfileMsg => 'Choose a Profile';
}

// Path: stats
class TranslationsStatsEn {
	TranslationsStatsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get traffic => 'Traffic';
	String get trafficLive => 'Live Traffic';
	String get trafficTotal => 'Total Traffic';
	String get uplink => 'Uplink';
	String get downlink => 'Downlink';
	String get connection => 'Connection';
	String get speed => 'Speed';
	String get totalTransferred => 'Total Transferred';
	String get coreMemory => 'Total Memory';
	String get connections => 'Connections';
}

// Path: profile
class TranslationsProfileEn {
	TranslationsProfileEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get overviewPageTitle => 'Profiles';
	String get detailsPageTitle => 'Profile';
	String activeProfileNameSemanticLabel({required Object name}) => 'Active Profile Name: "${name}".';
	String get activeProfileBtnSemanticLabel => 'View All Profiles';
	String nonActiveProfileBtnSemanticLabel({required Object name}) => 'Select "${name}" as Active Profile';
	late final TranslationsProfileSubscriptionEn subscription = TranslationsProfileSubscriptionEn._(_root);
	late final TranslationsProfileSortByEn sortBy = TranslationsProfileSortByEn._(_root);
	late final TranslationsProfileAddEn add = TranslationsProfileAddEn._(_root);
	late final TranslationsProfileUpdateEn update = TranslationsProfileUpdateEn._(_root);
	late final TranslationsProfileShareEn share = TranslationsProfileShareEn._(_root);
	late final TranslationsProfileEditEn edit = TranslationsProfileEditEn._(_root);
	late final TranslationsProfileDeleteEn delete = TranslationsProfileDeleteEn._(_root);
	late final TranslationsProfileSaveEn save = TranslationsProfileSaveEn._(_root);
	late final TranslationsProfileDetailsFormEn detailsForm = TranslationsProfileDetailsFormEn._(_root);
}

// Path: proxies
class TranslationsProxiesEn {
	TranslationsProxiesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pageTitle => 'Proxies';
	String get emptyProxiesMsg => 'No Proxies Available';
	String get delayTestTooltip => 'Test Delay';
	String get sortTooltip => 'Sort Proxies';
	String get checkIp => 'Check IP';
	String get unknownIp => 'Unknown IP';
	late final TranslationsProxiesSortOptionsEn sortOptions = TranslationsProxiesSortOptionsEn._(_root);
	String get activeProxySemanticLabel => 'Active Proxy';
	late final TranslationsProxiesDelaySemanticsEn delaySemantics = TranslationsProxiesDelaySemanticsEn._(_root);
	late final TranslationsProxiesIpInfoSemanticsEn ipInfoSemantics = TranslationsProxiesIpInfoSemanticsEn._(_root);
}

// Path: logs
class TranslationsLogsEn {
	TranslationsLogsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pageTitle => 'Logs';
	String get filterHint => 'Filter';
	String get allLevelsFilter => 'All';
	String get shareCoreLogs => 'Share Core Logs';
	String get shareAppLogs => 'Share App Logs';
	String get pauseTooltip => 'Pause';
	String get resumeTooltip => 'Resume';
	String get clearTooltip => 'Clear';
}

// Path: settings
class TranslationsSettingsEn {
	TranslationsSettingsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pageTitle => 'Settings';
	String get requiresRestartMsg => 'For this to take effect restart the app';
	String get experimental => 'Experimental';
	String get experimentalMsg => 'Features with Experimental flag are still in development and might cause issues.';
	String get exportOptions => 'Copy Anonymous Options to Clipboard';
	String get exportAllOptions => 'Copy All Options to Clipboard';
	String get importOptions => 'Import Options From Clipboard';
	String get importOptionsMsg => 'This will rewrite all config options with provided values. Are you sure?';
	late final TranslationsSettingsGeneralEn general = TranslationsSettingsGeneralEn._(_root);
	late final TranslationsSettingsAdvancedEn advanced = TranslationsSettingsAdvancedEn._(_root);
	late final TranslationsSettingsNetworkEn network = TranslationsSettingsNetworkEn._(_root);
	late final TranslationsSettingsGeoAssetsEn geoAssets = TranslationsSettingsGeoAssetsEn._(_root);
}

// Path: about
class TranslationsAboutEn {
	TranslationsAboutEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pageTitle => 'About';
	String get version => 'Version';
	String get sourceCode => 'Source Code';
	String get telegramChannel => 'Telegram Channel';
	String get checkForUpdate => 'Check For Update';
	String get privacyPolicy => 'Privacy Policy';
	String get termsAndConditions => 'Terms and Conditions';
}

// Path: appUpdate
class TranslationsAppUpdateEn {
	TranslationsAppUpdateEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get notAvailableMsg => 'Already Using The Latest Version';
	String get dialogTitle => 'Update Available';
	String get updateMsg => 'A new version of ${_root.general.appTitle} is available. Would you like to update now?';
	String get currentVersionLbl => 'Current Version';
	String get newVersionLbl => 'New Version';
	String get updateNowBtnTxt => 'Update Now';
	String get laterBtnTxt => 'Later';
	String get ignoreBtnTxt => 'Ignore';
}

// Path: tray
class TranslationsTrayEn {
	TranslationsTrayEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get dashboard => 'Dashboard';
	String get quit => 'Quit';
	String get open => 'Open';
	late final TranslationsTrayStatusEn status = TranslationsTrayStatusEn._(_root);
}

// Path: failure
class TranslationsFailureEn {
	TranslationsFailureEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get unexpected => 'Unexpected Error';
	late final TranslationsFailureClashEn clash = TranslationsFailureClashEn._(_root);
	late final TranslationsFailureSingboxEn singbox = TranslationsFailureSingboxEn._(_root);
	late final TranslationsFailureConnectivityEn connectivity = TranslationsFailureConnectivityEn._(_root);
	late final TranslationsFailureProfilesEn profiles = TranslationsFailureProfilesEn._(_root);
	late final TranslationsFailureConnectionEn connection = TranslationsFailureConnectionEn._(_root);
	late final TranslationsFailureGeoAssetsEn geoAssets = TranslationsFailureGeoAssetsEn._(_root);
}

// Path: connection
class TranslationsConnectionEn {
	TranslationsConnectionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get tapToConnect => 'Tap To Connect';
	String get tabToDisConnect => 'Tap To DisConnect';
	String get connecting => 'Connecting';
	String get disconnecting => 'Disconnecting';
	String get connected => 'Connected';
	String get reconnect => 'Reconnect';
	String get connectAnyWay => 'Connect';
	String get experimentalNotice => 'Experimental Features In Use';
	String get experimentalNoticeMsg => 'You\'ve enabled some experimental features which might affect connection quality and cause unexpected errors. You can always change or reset these options from Config options page.';
	String get disableExperimentalNotice => 'Don\'t Show Again';
	String get reconnectMsg => 'Reconnecting for taking into account the changes...';
}

// Path: config
class TranslationsConfigEn {
	TranslationsConfigEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get resetBtn => 'Reset Options';
	String get serviceMode => 'Service Mode';
	String get quickSettings => 'Quick Settings';
	String get setupWarp => 'Setup WARP';
	String get allOptions => 'All Config Options';
	late final TranslationsConfigServiceModesEn serviceModes = TranslationsConfigServiceModesEn._(_root);
	late final TranslationsConfigShortServiceModesEn shortServiceModes = TranslationsConfigShortServiceModesEn._(_root);
	late final TranslationsConfigSectionEn section = TranslationsConfigSectionEn._(_root);
	late final TranslationsConfigWarpConsentEn warpConsent = TranslationsConfigWarpConsentEn._(_root);
	String get generateWarpConfig => 'Generate WARP Config';
	String get missingWarpConfig => 'Missing WARP Config';
	String get warpConfigGenerated => 'WARP Config is Generated';
	String get pageTitle => 'Config Options';
	String get logLevel => 'Log Level';
	String get blockAds => 'Block Advertisements';
	String get resolveDestination => 'Resolve Destination';
	String get ipv6Mode => 'IPv6 Route';
	late final TranslationsConfigIpv6ModesEn ipv6Modes = TranslationsConfigIpv6ModesEn._(_root);
	String get remoteDnsAddress => 'Remote DNS';
	String get remoteDnsDomainStrategy => 'Remote DNS Domain Strategy';
	String get directDnsAddress => 'Direct DNS';
	String get directDnsDomainStrategy => 'Direct DNS Domain Strategy';
	String get mixedPort => 'Mixed Port';
	String get tproxyPort => 'Transparent Proxy Port';
	String get localDnsPort => 'Local DNS Port';
	String get allowConnectionFromLan => 'Share VPN in Local Network';
	String get tunImplementation => 'TUN Implementation';
	String get mtu => 'Packet Size (MTU)';
	String get connectionTestUrl => 'Connection Test URL';
	String get urlTestInterval => 'URL Test Interval';
	String get enableClashApi => 'Enable Clash API';
	String get clashApiPort => 'Clash API Port';
	String get enableTun => 'Enable TUN';
	String get setSystemProxy => 'Set System Proxy';
	String get enableDnsRouting => 'Enable DNS Routing';
	String get enableFakeDns => 'Enable Fake DNS';
	String get bypassLan => 'Bypass Lan';
	String get strictRoute => 'Strict Route';
	String get enableTlsFragment => 'Enable TLS Fragment';
	String get tlsFragmentSize => 'TLS Fragment Size';
	String get tlsFragmentSleep => 'TLS Fragment Sleep';
	String get enableTlsMixedSniCase => 'Enable TLS Mixed SNI Case';
	String get enableTlsPadding => 'Enable TLS Padding';
	String get tlsPaddingSize => 'TLS Padding';
	String get enableMux => 'Enable Mux';
	String get muxProtocol => 'Mux Protocol';
	String get muxMaxStreams => 'Max Concurrent Streams';
	String get enableWarp => 'Enable WARP';
	String get warpDetourMode => 'Detour Mode';
	late final TranslationsConfigWarpDetourModesEn warpDetourModes = TranslationsConfigWarpDetourModesEn._(_root);
	String get warpLicenseKey => 'License Key';
	String get warpCleanIp => 'Clean IP';
	String get warpPort => 'Port';
	String get warpNoise => 'Noise Count';
	String get warpNoiseSize => 'Noise Size';
	String get warpNoiseMode => 'Noise Mode';
	String get warpNoiseDelay => 'Noise Delay';
}

// Path: window
class TranslationsWindowEn {
	TranslationsWindowEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get hide => 'Hide';
	String get close => 'Exit';
	String get alertMessage => 'Hide or Exit the application?';
}

// Path: general.toggle
class TranslationsGeneralToggleEn {
	TranslationsGeneralToggleEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get enabled => 'Enabled';
	String get disabled => 'Disabled';
}

// Path: general.state
class TranslationsGeneralStateEn {
	TranslationsGeneralStateEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get disable => 'Disable';
}

// Path: profile.subscription
class TranslationsProfileSubscriptionEn {
	TranslationsProfileSubscriptionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get traffic => 'Traffic';
	String updatedTimeAgo({required Object timeago}) => 'Updated ${timeago}';
	String remainingDuration({required Object duration}) => '${duration} Days Remaining';
	String remainingTrafficSemanticLabel({required Object consumed, required Object total}) => '${consumed} of ${total} Traffic Consumed';
	String get expired => 'Expired';
	String get noTraffic => 'Out of Quota';
	String get upload => 'Upload';
	String get download => 'Download';
	String get total => 'Total Traffic';
	String get expireDate => 'Expire Date';
}

// Path: profile.sortBy
class TranslationsProfileSortByEn {
	TranslationsProfileSortByEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get lastUpdate => 'Recently Updated';
	String get name => 'Alphabetically';
}

// Path: profile.add
class TranslationsProfileAddEn {
	TranslationsProfileAddEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get buttonText => 'New Profile';
	String get shortBtnTxt => 'New Profile';
	String get fromClipboard => 'Add From Clipboard';
	String get scanQr => 'Scan QR Code';
	late final TranslationsProfileAddQrScannerEn qrScanner = TranslationsProfileAddQrScannerEn._(_root);
	String get manually => 'Manual Entry';
	String get addWarp => 'Add WARP';
	String get addingWarpMsg => 'Please wait while we register WARP.';
	String get addingProfileMsg => 'Adding Profile';
	String get failureMsg => 'Failed to Add Profile';
}

// Path: profile.update
class TranslationsProfileUpdateEn {
	TranslationsProfileUpdateEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get buttonTxt => 'Update';
	String get tooltip => 'Update Profile';
	String get updateSubscriptions => 'Update Subscriptions';
	String get failureMsg => 'Failed to Update Profile';
	String get successMsg => 'Profile Updated Successfully';
	String namedFailureMsg({required Object name}) => 'Failed to Update "${name}"';
	String namedSuccessMsg({required Object name}) => '"${name}" Updated Successfully';
}

// Path: profile.share
class TranslationsProfileShareEn {
	TranslationsProfileShareEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get buttonText => 'Share';
	String get exportToClipboardSuccess => 'Exported to Clipboard';
	String get exportSubLinkToClipboard => 'Export Subscription Link to Clipboard';
	String get subLinkQrCode => 'Subscription Link QR Code';
	String get exportConfigToClipboard => 'Export Configuration to Clipboard';
	String get exportConfigToClipboardSuccess => 'Configuration Copied to Clipboard';
}

// Path: profile.edit
class TranslationsProfileEditEn {
	TranslationsProfileEditEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get buttonTxt => 'Edit';
	String get selectActiveTxt => 'Select Active Profile';
}

// Path: profile.delete
class TranslationsProfileDeleteEn {
	TranslationsProfileDeleteEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get buttonTxt => 'Delete';
	String get confirmationMsg => 'Delete Profile Permanently?';
	String get successMsg => 'Profile Deleted Successfully';
}

// Path: profile.save
class TranslationsProfileSaveEn {
	TranslationsProfileSaveEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get buttonText => 'Save';
	String get successMsg => 'Profile Saved Successfully';
	String get failureMsg => 'Failed to Save Profile';
}

// Path: profile.detailsForm
class TranslationsProfileDetailsFormEn {
	TranslationsProfileDetailsFormEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get nameLabel => 'Name';
	String get nameHint => 'Profile Name';
	String get urlLabel => 'URL';
	String get urlHint => 'Full Config URL';
	String get emptyNameMsg => 'Name Is Required';
	String get invalidUrlMsg => 'Invalid URL';
	String get lastUpdate => 'Last Update';
	String get updateInterval => 'Auto Update';
	String get updateIntervalDialogTitle => 'Auto Update Interval (in Hours)';
}

// Path: proxies.sortOptions
class TranslationsProxiesSortOptionsEn {
	TranslationsProxiesSortOptionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get unsorted => 'Default';
	String get name => 'Alphabetically';
	String get delay => 'By Delay';
}

// Path: proxies.delaySemantics
class TranslationsProxiesDelaySemanticsEn {
	TranslationsProxiesDelaySemanticsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String result({required Object delay}) => 'Delay: ${delay}ms';
	String get timeout => 'Delay Test Timeout';
	String get testing => 'Delay: Testing...';
}

// Path: proxies.ipInfoSemantics
class TranslationsProxiesIpInfoSemanticsEn {
	TranslationsProxiesIpInfoSemanticsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get address => 'IP Address';
	String get country => 'Country';
}

// Path: settings.general
class TranslationsSettingsGeneralEn {
	TranslationsSettingsGeneralEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get sectionTitle => 'General';
	String get locale => 'Language';
	String get region => 'Region';
	String get regionMsg => 'Helps set default options to bypass domestic addresses';
	late final TranslationsSettingsGeneralRegionsEn regions = TranslationsSettingsGeneralRegionsEn._(_root);
	String get themeMode => 'Theme Mode';
	late final TranslationsSettingsGeneralThemeModesEn themeModes = TranslationsSettingsGeneralThemeModesEn._(_root);
	String get enableAnalytics => 'Enable Analytics';
	String get enableAnalyticsMsg => 'Give permission to collect analytics and send crash reports to improve the app';
	String get autoStart => 'Start At Login';
	String get silentStart => 'Start Minimized';
	String get openWorkingDir => 'Open Working Directory';
	String get ignoreBatteryOptimizations => 'Disable Battery Optimization';
	String get ignoreBatteryOptimizationsMsg => 'Remove Restrictions For Optimal VPN Performance';
	String get dynamicNotification => 'Display Speed in Notification';
	String get hapticFeedback => 'Haptic Feedback';
	String get autoIpCheck => 'Automatically Check Connection IP';
}

// Path: settings.advanced
class TranslationsSettingsAdvancedEn {
	TranslationsSettingsAdvancedEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get sectionTitle => 'Advanced';
	String get debugMode => 'Debug Mode';
	String get debugModeMsg => 'Restart the app for applying this change';
	String get memoryLimit => 'Memory Limit';
	String get memoryLimitMsg => 'Enable if you\'re experiencing out of memory errors or frequent app crash';
	String get resetTunnel => 'Reset VPN Profile';
}

// Path: settings.network
class TranslationsSettingsNetworkEn {
	TranslationsSettingsNetworkEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get perAppProxyPageTitle => 'Per-App Proxy';
	late final TranslationsSettingsNetworkPerAppProxyModesEn perAppProxyModes = TranslationsSettingsNetworkPerAppProxyModesEn._(_root);
	String get showSystemApps => 'Show System Apps';
	String get hideSystemApps => 'Hide System Apps';
	String get clearSelection => 'Clear Selection';
}

// Path: settings.geoAssets
class TranslationsSettingsGeoAssetsEn {
	TranslationsSettingsGeoAssetsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pageTitle => 'Routing Assets';
	String get geoip => 'GeoIP';
	String get geosite => 'GeoSite';
	String version({required Object version}) => 'Version ${version}';
	String get fileMissing => 'File Missing';
	String get update => 'Update';
	String get download => 'Download';
	String get failureMsg => 'Failed to Update Asset';
	String get successMsg => 'Successfully Updated Asset';
	String get addRecommended => 'Add Recommended Assets';
	String get missingGeoAssetsMsg => 'Selected Routing Assets\' files are missing. Either download them or choose existing ones';
}

// Path: tray.status
class TranslationsTrayStatusEn {
	TranslationsTrayStatusEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get connect => 'Connect';
	String get connecting => 'Connecting';
	String get disconnect => 'Disconnect';
	String get disconnecting => 'Disconnecting';
}

// Path: failure.clash
class TranslationsFailureClashEn {
	TranslationsFailureClashEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get unexpected => 'Unexpected Error';
	String core({required Object reason}) => 'Clash Error ${reason}';
}

// Path: failure.singbox
class TranslationsFailureSingboxEn {
	TranslationsFailureSingboxEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get unexpected => 'Unexpected Service Error';
	String get serviceNotRunning => 'Service is Not Running';
	String get missingPrivilege => 'Missing Privilege';
	String get missingPrivilegeMsg => 'VPN Mode Requires Administrator Privileges. Either relaunch the app as administrator or change service mode.';
	String get missingGeoAssets => 'Missing Geo Assets';
	String get missingGeoAssetsMsg => 'Geo Assets Are Missing. Consider changing active asset or download selected one in the settings.';
	String get invalidConfigOptions => 'Invalid Configuration Options';
	String get invalidConfig => 'Invalid Configuration';
	String get create => 'Service Creation Error';
	String get start => 'Service Startup Error';
}

// Path: failure.connectivity
class TranslationsFailureConnectivityEn {
	TranslationsFailureConnectivityEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get unexpected => 'Unexpected Failure';
	String get missingVpnPermission => 'Missing VPN Permission';
	String get missingNotificationPermission => 'Missing Notification Permission';
	String get core => 'Core Error';
}

// Path: failure.profiles
class TranslationsFailureProfilesEn {
	TranslationsFailureProfilesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get unexpected => 'Unexpected Error';
	String get notFound => 'Profile Not Found';
	String get invalidConfig => 'Invalid Configs';
	String get invalidUrl => 'Invalid URL';
}

// Path: failure.connection
class TranslationsFailureConnectionEn {
	TranslationsFailureConnectionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get unexpected => 'Unexpected Connection Error';
	String get timeout => 'Connection Timeout';
	String get badResponse => 'Bad Response';
	String get connectionError => 'Connection Error';
	String get badCertificate => 'Bad Certificate';
}

// Path: failure.geoAssets
class TranslationsFailureGeoAssetsEn {
	TranslationsFailureGeoAssetsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get unexpected => 'Unexpected Error';
	String get notUpdate => 'No Update Available';
	String get activeNotFound => 'Active Geo Asset Not Found';
}

// Path: config.serviceModes
class TranslationsConfigServiceModesEn {
	TranslationsConfigServiceModesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get proxy => 'Proxy Service Only';
	String get systemProxy => 'Set System Proxy';
	String get tun => 'TUN';
	String get tunService => 'TUN Service';
}

// Path: config.shortServiceModes
class TranslationsConfigShortServiceModesEn {
	TranslationsConfigShortServiceModesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get proxy => 'Proxy';
	String get systemProxy => 'System Proxy';
	String get tun => 'TUN';
	String get tunService => 'TUN Service';
}

// Path: config.section
class TranslationsConfigSectionEn {
	TranslationsConfigSectionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get route => 'Route Options';
	String get dns => 'DNS Options';
	String get inbound => 'Inbound Options';
	String get mux => 'MultiPlexer';
	String get outbound => 'Outbound Options';
	String get tlsTricks => 'TLS Tricks';
	String get warp => 'WARP Options';
	String get misc => 'Misc Options';
}

// Path: config.warpConsent
class TranslationsConfigWarpConsentEn {
	TranslationsConfigWarpConsentEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Cloudflare WARP Consent';
	TextSpan description({required InlineSpanBuilder tos, required InlineSpanBuilder privacy}) => TextSpan(children: [
		const TextSpan(text: 'Cloudflare WARP is a Free WireGuard VPN Provider. By enabling this option you are agreeing to the Cloudflare WARP\'s '),
		tos('Terms of Service'),
		const TextSpan(text: ' and '),
		privacy('Privacy Policy'),
		const TextSpan(text: '.'),
	]);
}

// Path: config.ipv6Modes
class TranslationsConfigIpv6ModesEn {
	TranslationsConfigIpv6ModesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get disable => 'Disable';
	String get enable => 'Enable';
	String get prefer => 'Preferred';
	String get only => 'Exclusive';
}

// Path: config.warpDetourModes
class TranslationsConfigWarpDetourModesEn {
	TranslationsConfigWarpDetourModesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get proxyOverWarp => 'Detour Proxies Through WARP';
	String get warpOverProxy => 'Detour WARP Through Proxies';
	String get inbound => 'Detour WARP Through Proxies';
	String get outbound => 'Detour Proxies Through WARP';
}

// Path: profile.add.qrScanner
class TranslationsProfileAddQrScannerEn {
	TranslationsProfileAddQrScannerEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get permissionDeniedError => 'Permission Denied';
	String get unexpectedError => 'Something Went Wrong';
	String get torchSemanticLabel => 'Flash Light';
	String get facingSemanticLabel => 'Camera Facing';
	String get permissionRequest => 'Permission to camera to scan QR Code';
}

// Path: settings.general.regions
class TranslationsSettingsGeneralRegionsEn {
	TranslationsSettingsGeneralRegionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get en => 'English (cn)';
	String get cn => 'China (cn)';
	String get other => 'Other';
}

// Path: settings.general.themeModes
class TranslationsSettingsGeneralThemeModesEn {
	TranslationsSettingsGeneralThemeModesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get system => 'Follow System Theme';
	String get dark => 'Dark Mode';
	String get light => 'Light Mode';
	String get black => 'Black Mode';
}

// Path: settings.network.perAppProxyModes
class TranslationsSettingsNetworkPerAppProxyModesEn {
	TranslationsSettingsNetworkPerAppProxyModesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get off => 'All';
	String get offMsg => 'Proxy All Apps';
	String get include => 'Proxy';
	String get includeMsg => 'Proxy Only Selected Apps';
	String get exclude => 'Bypass';
	String get excludeMsg => 'Do Not Proxy Selected Apps';
}

// Path: <root>
class TranslationsZhCn extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsZhCn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.zhCn,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <zh-CN>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final TranslationsZhCn _root = this; // ignore: unused_field

	// Translations
	@override late final TranslationsGeneralZhCn general = TranslationsGeneralZhCn._(_root);
	@override late final TranslationsHomeZhCn home = TranslationsHomeZhCn._(_root);
	@override late final TranslationsStatsZhCn stats = TranslationsStatsZhCn._(_root);
	@override late final TranslationsProfileZhCn profile = TranslationsProfileZhCn._(_root);
	@override late final TranslationsProxiesZhCn proxies = TranslationsProxiesZhCn._(_root);
	@override late final TranslationsLogsZhCn logs = TranslationsLogsZhCn._(_root);
	@override late final TranslationsSettingsZhCn settings = TranslationsSettingsZhCn._(_root);
	@override late final TranslationsAboutZhCn about = TranslationsAboutZhCn._(_root);
	@override late final TranslationsAppUpdateZhCn appUpdate = TranslationsAppUpdateZhCn._(_root);
	@override late final TranslationsTrayZhCn tray = TranslationsTrayZhCn._(_root);
	@override late final TranslationsFailureZhCn failure = TranslationsFailureZhCn._(_root);
	@override late final TranslationsConnectionZhCn connection = TranslationsConnectionZhCn._(_root);
	@override late final TranslationsConfigZhCn config = TranslationsConfigZhCn._(_root);
	@override late final TranslationsWindowZhCn window = TranslationsWindowZhCn._(_root);
}

// Path: general
class TranslationsGeneralZhCn extends TranslationsGeneralEn {
	TranslationsGeneralZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get appTitle => 'Wsurge';
	@override String get reset => '重置';
	@override late final TranslationsGeneralToggleZhCn toggle = TranslationsGeneralToggleZhCn._(_root);
	@override late final TranslationsGeneralStateZhCn state = TranslationsGeneralStateZhCn._(_root);
	@override String get sort => '排序';
	@override String get sortBy => '排序方式';
	@override String get addToClipboard => '添加到剪贴板';
	@override String get notSet => '未设置';
	@override String get agree => '同意';
	@override String get decline => '拒绝';
	@override String get unknown => '未知';
	@override String get hidden => '隐藏';
	@override String get timeout => '超时';
	@override String get clipboardExportSuccessMsg => '已导出到剪贴板';
	@override String get showMore => '显示更多';
	@override String get showLess => '显示更少';
	@override String get openAppSettings => '打开应用设置';
	@override String get grantPermission => '授予权限';
}

// Path: home
class TranslationsHomeZhCn extends TranslationsHomeEn {
	TranslationsHomeZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => '主页';
	@override String get emptyProfilesMsg => '从添加订阅配置文件开始';
	@override String get noActiveProfileMsg => '选择配置文件';
}

// Path: stats
class TranslationsStatsZhCn extends TranslationsStatsEn {
	TranslationsStatsZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get traffic => '流量';
	@override String get trafficLive => '实时流量';
	@override String get trafficTotal => '总流量';
	@override String get uplink => '上行';
	@override String get downlink => '下行';
	@override String get connection => '连接';
	@override String get speed => '速度';
	@override String get totalTransferred => '总传输量';
	@override String get coreMemory => '占用内存';
	@override String get connections => '连接数';
}

// Path: profile
class TranslationsProfileZhCn extends TranslationsProfileEn {
	TranslationsProfileZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get overviewPageTitle => '配置文件';
	@override String get detailsPageTitle => '配置文件';
	@override String activeProfileNameSemanticLabel({required Object name}) => '激活的配置文件名称：“${name}”。';
	@override String get activeProfileBtnSemanticLabel => '查看所有配置文件';
	@override String nonActiveProfileBtnSemanticLabel({required Object name}) => '选择 “${name}” 作为激活的配置文件';
	@override late final TranslationsProfileSubscriptionZhCn subscription = TranslationsProfileSubscriptionZhCn._(_root);
	@override late final TranslationsProfileSortByZhCn sortBy = TranslationsProfileSortByZhCn._(_root);
	@override late final TranslationsProfileAddZhCn add = TranslationsProfileAddZhCn._(_root);
	@override late final TranslationsProfileUpdateZhCn update = TranslationsProfileUpdateZhCn._(_root);
	@override late final TranslationsProfileEditZhCn edit = TranslationsProfileEditZhCn._(_root);
	@override late final TranslationsProfileDeleteZhCn delete = TranslationsProfileDeleteZhCn._(_root);
	@override late final TranslationsProfileSaveZhCn save = TranslationsProfileSaveZhCn._(_root);
	@override late final TranslationsProfileDetailsFormZhCn detailsForm = TranslationsProfileDetailsFormZhCn._(_root);
}

// Path: proxies
class TranslationsProxiesZhCn extends TranslationsProxiesEn {
	TranslationsProxiesZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => '代理';
	@override String get emptyProxiesMsg => '无可用的代理';
	@override String get delayTestTooltip => '测试延迟';
	@override String get sortTooltip => '对代理进行排序';
	@override String get checkIp => '检测 IP 地址';
	@override String get unknownIp => '未知的 IP';
	@override late final TranslationsProxiesSortOptionsZhCn sortOptions = TranslationsProxiesSortOptionsZhCn._(_root);
	@override String get activeProxySemanticLabel => '激活的代理';
	@override late final TranslationsProxiesDelaySemanticsZhCn delaySemantics = TranslationsProxiesDelaySemanticsZhCn._(_root);
	@override late final TranslationsProxiesIpInfoSemanticsZhCn ipInfoSemantics = TranslationsProxiesIpInfoSemanticsZhCn._(_root);
}

// Path: logs
class TranslationsLogsZhCn extends TranslationsLogsEn {
	TranslationsLogsZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => '日志';
	@override String get filterHint => '筛选';
	@override String get allLevelsFilter => '全部';
	@override String get shareCoreLogs => '分享核心日志';
	@override String get shareAppLogs => '分享应用日志';
	@override String get pauseTooltip => '暂停';
	@override String get resumeTooltip => '恢复';
	@override String get clearTooltip => '清除';
}

// Path: settings
class TranslationsSettingsZhCn extends TranslationsSettingsEn {
	TranslationsSettingsZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => '设置';
	@override String get requiresRestartMsg => '要使其生效，请重新启动应用程序';
	@override String get experimental => '实验性选项';
	@override String get experimentalMsg => '带有实验标志的功能仍在开发中，可能会出现问题。';
	@override String get exportOptions => '将匿名选项导出到剪贴板';
	@override String get exportAllOptions => '将所有选项导出到剪贴板（用于调试）';
	@override String get importOptions => '从剪贴板导入选项';
	@override String get importOptionsMsg => '这将使用提供的值重写所有配置选项。您确定吗？';
	@override late final TranslationsSettingsGeneralZhCn general = TranslationsSettingsGeneralZhCn._(_root);
	@override late final TranslationsSettingsAdvancedZhCn advanced = TranslationsSettingsAdvancedZhCn._(_root);
	@override late final TranslationsSettingsNetworkZhCn network = TranslationsSettingsNetworkZhCn._(_root);
	@override late final TranslationsSettingsGeoAssetsZhCn geoAssets = TranslationsSettingsGeoAssetsZhCn._(_root);
}

// Path: about
class TranslationsAboutZhCn extends TranslationsAboutEn {
	TranslationsAboutZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => '关于';
	@override String get version => '版本';
	@override String get sourceCode => '源代码';
	@override String get telegramChannel => 'Telegram 频道';
	@override String get checkForUpdate => '检查更新';
	@override String get privacyPolicy => '隐私政策';
	@override String get termsAndConditions => '条款和条件';
}

// Path: appUpdate
class TranslationsAppUpdateZhCn extends TranslationsAppUpdateEn {
	TranslationsAppUpdateZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get notAvailableMsg => '已是最新版本';
	@override String get dialogTitle => '有可用更新';
	@override String get updateMsg => '${_root.general.appTitle} 的新版本现已推出。您想现在更新吗？';
	@override String get currentVersionLbl => '当前版本';
	@override String get newVersionLbl => '新版本';
	@override String get updateNowBtnTxt => '现在更新';
	@override String get laterBtnTxt => '以后再说';
	@override String get ignoreBtnTxt => '忽略';
}

// Path: tray
class TranslationsTrayZhCn extends TranslationsTrayEn {
	TranslationsTrayZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get dashboard => '仪表板';
	@override String get quit => '退出';
	@override String get open => '打开';
	@override late final TranslationsTrayStatusZhCn status = TranslationsTrayStatusZhCn._(_root);
}

// Path: failure
class TranslationsFailureZhCn extends TranslationsFailureEn {
	TranslationsFailureZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get unexpected => '意外错误';
	@override late final TranslationsFailureClashZhCn clash = TranslationsFailureClashZhCn._(_root);
	@override late final TranslationsFailureSingboxZhCn singbox = TranslationsFailureSingboxZhCn._(_root);
	@override late final TranslationsFailureConnectivityZhCn connectivity = TranslationsFailureConnectivityZhCn._(_root);
	@override late final TranslationsFailureProfilesZhCn profiles = TranslationsFailureProfilesZhCn._(_root);
	@override late final TranslationsFailureConnectionZhCn connection = TranslationsFailureConnectionZhCn._(_root);
	@override late final TranslationsFailureGeoAssetsZhCn geoAssets = TranslationsFailureGeoAssetsZhCn._(_root);
}

// Path: connection
class TranslationsConnectionZhCn extends TranslationsConnectionEn {
	TranslationsConnectionZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get tapToConnect => '点击连接';
	@override String get tapToDisConnect => '点击断开连接';
	@override String get connecting => '正在连接';
	@override String get disconnecting => '正在断开连接';
	@override String get connected => '已连接';
	@override String get reconnect => '重新连接';
	@override String get connectAnyWay => '连接';
	@override String get experimentalNotice => '使用中的实验功能';
	@override String get experimentalNoticeMsg => '您启用了一些实验性功能，这些功能可能会影响连接质量并导致意外错误。您可以随时从“配置”页面更改或重置这些选项。';
	@override String get disableExperimentalNotice => '不再显示';
	@override String get reconnectMsg => '重新连接以使更改生效';
}

// Path: config
class TranslationsConfigZhCn extends TranslationsConfigEn {
	TranslationsConfigZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get resetBtn => '重置选项';
	@override String get serviceMode => '服务模式';
	@override String get quickSettings => '快速设置';
	@override String get setupWarp => '配置 WARP';
	@override String get allOptions => '全部配置选项';
	@override late final TranslationsConfigServiceModesZhCn serviceModes = TranslationsConfigServiceModesZhCn._(_root);
	@override late final TranslationsConfigShortServiceModesZhCn shortServiceModes = TranslationsConfigShortServiceModesZhCn._(_root);
	@override late final TranslationsConfigSectionZhCn section = TranslationsConfigSectionZhCn._(_root);
	@override late final TranslationsConfigWarpConsentZhCn warpConsent = TranslationsConfigWarpConsentZhCn._(_root);
	@override String get generateWarpConfig => '生成 WARP 配置文件';
	@override String get missingWarpConfig => 'WARP 配置文件缺失';
	@override String get warpConfigGenerated => 'WARP 配置已生成';
	@override String get pageTitle => '配置选项';
	@override String get logLevel => '日志级别';
	@override String get blockAds => '阻止广告';
	@override String get resolveDestination => '解析目标地址';
	@override String get ipv6Mode => 'IPv6 路由';
	@override late final TranslationsConfigIpv6ModesZhCn ipv6Modes = TranslationsConfigIpv6ModesZhCn._(_root);
	@override String get remoteDnsAddress => '远程 DNS';
	@override String get remoteDnsDomainStrategy => '远程 DNS 域名策略';
	@override String get directDnsAddress => '直连 DNS';
	@override String get directDnsDomainStrategy => '直连 DNS 域名策略';
	@override String get mixedPort => '混合端口';
	@override String get tproxyPort => '透明代理端口';
	@override String get localDnsPort => '本地 DNS 端口';
	@override String get allowConnectionFromLan => '允许局域网连接';
	@override String get tunImplementation => 'TUN 实现';
	@override String get mtu => '数据包大小 (MTU)';
	@override String get connectionTestUrl => '连接测试网址';
	@override String get urlTestInterval => '网址测试间隔';
	@override String get enableClashApi => '启用 Clash API';
	@override String get clashApiPort => 'Clash API 端口';
	@override String get enableTun => '启用 TUN';
	@override String get setSystemProxy => '设置系统代理';
	@override String get enableDnsRouting => '启用 DNS 路由';
	@override String get enableFakeDns => '启用 Fake DNS';
	@override String get bypassLan => '绕过局域网';
	@override String get strictRoute => '严格路由';
	@override String get enableTlsFragment => '启用 TLS 数据分段';
	@override String get tlsFragmentSize => 'TLS 分段大小';
	@override String get tlsFragmentSleep => 'TLS 分段休眠';
	@override String get enableTlsMixedSniCase => '启用 TLS 混合 SNI 情形';
	@override String get enableTlsPadding => '启用 TLS 填充';
	@override String get tlsPaddingSize => 'TLS 填充';
	@override String get enableMux => '启用 Mux 多路复用';
	@override String get muxProtocol => 'Mux 协议';
	@override String get muxMaxStreams => 'Mux 最大并发数';
	@override String get enableWarp => '启用 WARP';
	@override String get warpDetourMode => '链式代理';
	@override late final TranslationsConfigWarpDetourModesZhCn warpDetourModes = TranslationsConfigWarpDetourModesZhCn._(_root);
	@override String get warpLicenseKey => '许可证密钥';
	@override String get warpCleanIp => '清理 IP';
	@override String get warpPort => '端口';
	@override String get warpNoise => '噪音计数';
	@override String get warpNoiseSize => '噪音大小';
	@override String get warpNoiseMode => '噪音模式';
	@override String get warpNoiseDelay => '噪音延迟';
}

// Path: window
class TranslationsWindowZhCn extends TranslationsWindowEn {
	TranslationsWindowZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get hide => '最小化';
	@override String get close => '退出';
	@override String get alertMessage => '最小化或者退出应用?';
}

// Path: general.toggle
class TranslationsGeneralToggleZhCn extends TranslationsGeneralToggleEn {
	TranslationsGeneralToggleZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get enabled => '启用';
	@override String get disabled => '禁用';
}

// Path: general.state
class TranslationsGeneralStateZhCn extends TranslationsGeneralStateEn {
	TranslationsGeneralStateZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get disable => '禁用';
}

// Path: profile.subscription
class TranslationsProfileSubscriptionZhCn extends TranslationsProfileSubscriptionEn {
	TranslationsProfileSubscriptionZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get traffic => '流量';
	@override String updatedTimeAgo({required Object timeago}) => '更新于 ${timeago}';
	@override String remainingDuration({required Object duration}) => '剩余 ${duration} 天';
	@override String remainingTrafficSemanticLabel({required Object consumed, required Object total}) => '已使用 ${consumed} 流量，共 ${total} 流量。';
	@override String get expired => '已过期';
	@override String get noTraffic => '超出限额';
	@override String get upload => '上传';
	@override String get download => '下载';
	@override String get total => '总流量';
	@override String get expireDate => '到期时间';
}

// Path: profile.sortBy
class TranslationsProfileSortByZhCn extends TranslationsProfileSortByEn {
	TranslationsProfileSortByZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get lastUpdate => '最近更新';
	@override String get name => '按字母顺序';
}

// Path: profile.add
class TranslationsProfileAddZhCn extends TranslationsProfileAddEn {
	TranslationsProfileAddZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get buttonText => '新的配置文件';
	@override String get shortBtnTxt => '新的配置文件';
	@override String get fromClipboard => '从剪贴板添加';
	@override String get scanQr => '扫描二维码';
	@override late final TranslationsProfileAddQrScannerZhCn qrScanner = TranslationsProfileAddQrScannerZhCn._(_root);
	@override String get manually => '手动输入';
	@override String get addWarp => '添加 WARP';
	@override String get addingWarpMsg => '我们正在注册 WARP，请稍候。';
	@override String get addingProfileMsg => '添加配置文件';
	@override String get failureMsg => '添加配置文件失败';
}

// Path: profile.update
class TranslationsProfileUpdateZhCn extends TranslationsProfileUpdateEn {
	TranslationsProfileUpdateZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get buttonTxt => '更新';
	@override String get tooltip => '更新配置文件';
	@override String get updateSubscriptions => '更新订阅';
	@override String get failureMsg => '更新配置文件失败';
	@override String get successMsg => '配置文件更新成功';
	@override String namedFailureMsg({required Object name}) => '无法更新"${name}"';
	@override String namedSuccessMsg({required Object name}) => '"${name}" 更新成功';
}

// Path: profile.edit
class TranslationsProfileEditZhCn extends TranslationsProfileEditEn {
	TranslationsProfileEditZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get buttonTxt => '编辑';
	@override String get selectActiveTxt => '选择并激活配置文件';
}

// Path: profile.delete
class TranslationsProfileDeleteZhCn extends TranslationsProfileDeleteEn {
	TranslationsProfileDeleteZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get buttonTxt => '删除';
	@override String get confirmationMsg => '要永久删除配置文件吗？';
	@override String get successMsg => '配置文件删除成功';
}

// Path: profile.save
class TranslationsProfileSaveZhCn extends TranslationsProfileSaveEn {
	TranslationsProfileSaveZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get buttonText => '保存';
	@override String get successMsg => '配置文件保存成功';
	@override String get failureMsg => '配置文件保存失败';
}

// Path: profile.detailsForm
class TranslationsProfileDetailsFormZhCn extends TranslationsProfileDetailsFormEn {
	TranslationsProfileDetailsFormZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get nameLabel => '名称';
	@override String get nameHint => '配置文件名称';
	@override String get urlLabel => '网址';
	@override String get urlHint => '完整配置网址';
	@override String get emptyNameMsg => '名称为必填项';
	@override String get invalidUrlMsg => '无效的网址';
	@override String get lastUpdate => '最后更新';
	@override String get updateInterval => '自动更新';
	@override String get updateIntervalDialogTitle => '自动更新间隔（小时）';
}

// Path: proxies.sortOptions
class TranslationsProxiesSortOptionsZhCn extends TranslationsProxiesSortOptionsEn {
	TranslationsProxiesSortOptionsZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get unsorted => '默认';
	@override String get name => '按字母顺序';
	@override String get delay => '按延迟顺序';
}

// Path: proxies.delaySemantics
class TranslationsProxiesDelaySemanticsZhCn extends TranslationsProxiesDelaySemanticsEn {
	TranslationsProxiesDelaySemanticsZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String result({required Object delay}) => '延迟: ${delay}ms';
	@override String get timeout => '延迟测试超时';
	@override String get testing => '正在测试延迟';
}

// Path: proxies.ipInfoSemantics
class TranslationsProxiesIpInfoSemanticsZhCn extends TranslationsProxiesIpInfoSemanticsEn {
	TranslationsProxiesIpInfoSemanticsZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get address => 'IP 地址';
	@override String get country => '国家';
}

// Path: settings.general
class TranslationsSettingsGeneralZhCn extends TranslationsSettingsGeneralEn {
	TranslationsSettingsGeneralZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => '一般选项';
	@override String get locale => '语言';
	@override String get region => '地区';
	@override String get regionMsg => '帮助设置默认选项以绕过国内地址';
	@override late final TranslationsSettingsGeneralRegionsZhCn regions = TranslationsSettingsGeneralRegionsZhCn._(_root);
	@override String get themeMode => '主题模式';
	@override late final TranslationsSettingsGeneralThemeModesZhCn themeModes = TranslationsSettingsGeneralThemeModesZhCn._(_root);
	@override String get enableAnalytics => '启用分析';
	@override String get enableAnalyticsMsg => '授予收集分析并发送崩溃报告以改进应用程序的权限';
	@override String get autoStart => '开机启动';
	@override String get silentStart => '静默启动';
	@override String get openWorkingDir => '打开工作目录';
	@override String get ignoreBatteryOptimizations => '禁用电池优化';
	@override String get ignoreBatteryOptimizationsMsg => '消除限制以获得最佳 VPN 性能';
	@override String get dynamicNotification => '在通知中显示网络速度';
	@override String get hapticFeedback => '触觉反馈';
	@override String get autoIpCheck => '自动检查连接的 IP';
}

// Path: settings.advanced
class TranslationsSettingsAdvancedZhCn extends TranslationsSettingsAdvancedEn {
	TranslationsSettingsAdvancedZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => '高级选项';
	@override String get debugMode => '调试模式';
	@override String get debugModeMsg => '重新启动应用程序以应用此更改';
	@override String get memoryLimit => '内存限制';
	@override String get memoryLimitMsg => '如果您遇到内存不足错误或频繁应用程序崩溃，请启用';
	@override String get resetTunnel => '重置 VPN 配置文件';
}

// Path: settings.network
class TranslationsSettingsNetworkZhCn extends TranslationsSettingsNetworkEn {
	TranslationsSettingsNetworkZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get perAppProxyPageTitle => '分应用代理';
	@override late final TranslationsSettingsNetworkPerAppProxyModesZhCn perAppProxyModes = TranslationsSettingsNetworkPerAppProxyModesZhCn._(_root);
	@override String get showSystemApps => '显示系统应用程序';
	@override String get hideSystemApps => '隐藏系统应用程序';
	@override String get clearSelection => '清空选项';
}

// Path: settings.geoAssets
class TranslationsSettingsGeoAssetsZhCn extends TranslationsSettingsGeoAssetsEn {
	TranslationsSettingsGeoAssetsZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => '路由资源文件';
	@override String get geoip => 'GeoIP';
	@override String get geosite => 'Geosite';
	@override String version({required Object version}) => '版本 ${version}';
	@override String get fileMissing => '文件丢失';
	@override String get update => '更新';
	@override String get download => '下载';
	@override String get failureMsg => '更新资源文件失败';
	@override String get successMsg => '已成功更新资源文件';
	@override String get addRecommended => '添加建议的资源文件';
	@override String get missingGeoAssetsMsg => '所选路由资源的文件丢失。下载它们或选择现有的。';
}

// Path: tray.status
class TranslationsTrayStatusZhCn extends TranslationsTrayStatusEn {
	TranslationsTrayStatusZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get connect => '连接';
	@override String get connecting => '正在连接';
	@override String get disconnect => '断开连接';
	@override String get disconnecting => '正在断开连接';
}

// Path: failure.clash
class TranslationsFailureClashZhCn extends TranslationsFailureClashEn {
	TranslationsFailureClashZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get unexpected => '意外错误';
	@override String core({required Object reason}) => 'Clash 错误 ${reason}';
}

// Path: failure.singbox
class TranslationsFailureSingboxZhCn extends TranslationsFailureSingboxEn {
	TranslationsFailureSingboxZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get unexpected => '意外服务错误';
	@override String get serviceNotRunning => '服务未运行';
	@override String get missingPrivilege => '缺少权限';
	@override String get missingPrivilegeMsg => 'VPN 模式需要管理员权限。以管理员身份重新启动应用程序或更改服务模式';
	@override String get missingGeoAssets => '缺失 GEO 资源文件';
	@override String get missingGeoAssetsMsg => '缺失 GEO 资源文件。请考虑更改激活的资源文件或在设置中下载所选资源文件。';
	@override String get invalidConfigOptions => '配置选项无效';
	@override String get invalidConfig => '无效配置';
	@override String get create => '服务创建错误';
	@override String get start => '服务启动错误';
}

// Path: failure.connectivity
class TranslationsFailureConnectivityZhCn extends TranslationsFailureConnectivityEn {
	TranslationsFailureConnectivityZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get unexpected => '意外失败';
	@override String get missingVpnPermission => '缺少 VPN 权限';
	@override String get missingNotificationPermission => '缺少通知权限';
	@override String get core => '核心错误';
}

// Path: failure.profiles
class TranslationsFailureProfilesZhCn extends TranslationsFailureProfilesEn {
	TranslationsFailureProfilesZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get unexpected => '意外错误';
	@override String get notFound => '未找到配置文件';
	@override String get invalidConfig => '无效配置';
	@override String get invalidUrl => '网址无效';
}

// Path: failure.connection
class TranslationsFailureConnectionZhCn extends TranslationsFailureConnectionEn {
	TranslationsFailureConnectionZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get unexpected => '意外连接错误';
	@override String get timeout => '连接超时';
	@override String get badResponse => '错误响应';
	@override String get connectionError => '连接错误';
	@override String get badCertificate => '证书无效';
}

// Path: failure.geoAssets
class TranslationsFailureGeoAssetsZhCn extends TranslationsFailureGeoAssetsEn {
	TranslationsFailureGeoAssetsZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get unexpected => '意外错误';
	@override String get notUpdate => '无可用更新';
	@override String get activeNotFound => '未找到激活的 GEO 资源文件';
}

// Path: config.serviceModes
class TranslationsConfigServiceModesZhCn extends TranslationsConfigServiceModesEn {
	TranslationsConfigServiceModesZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get proxy => '仅代理';
	@override String get systemProxy => '系统代理';
	@override String get tun => 'TUN';
	@override String get tunService => 'TUN 服务';
}

// Path: config.shortServiceModes
class TranslationsConfigShortServiceModesZhCn extends TranslationsConfigShortServiceModesEn {
	TranslationsConfigShortServiceModesZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get proxy => '仅代理';
	@override String get systemProxy => '系统代理';
	@override String get tun => 'TUN';
	@override String get tunService => 'TUN 服务';
}

// Path: config.section
class TranslationsConfigSectionZhCn extends TranslationsConfigSectionEn {
	TranslationsConfigSectionZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get route => '路由选项';
	@override String get dns => 'DNS 选项';
	@override String get inbound => '入站选项';
	@override String get mux => '多路复用';
	@override String get outbound => '出站选项';
	@override String get tlsTricks => 'TLS 特性';
	@override String get warp => 'WARP 选项';
	@override String get misc => '其它选项';
}

// Path: config.warpConsent
class TranslationsConfigWarpConsentZhCn extends TranslationsConfigWarpConsentEn {
	TranslationsConfigWarpConsentZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cloudflare WARP 许可条款';
	@override TextSpan description({required InlineSpanBuilder tos, required InlineSpanBuilder privacy}) => TextSpan(children: [
		const TextSpan(text: 'Cloudflare WARP 是一个免费的 WireGuard VPN 提供商。启用此选项即表示您同意 Cloudflare WARP 的 '),
		tos('服务条款'),
		const TextSpan(text: ' 和 '),
		privacy('隐私政策'),
	]);
}

// Path: config.ipv6Modes
class TranslationsConfigIpv6ModesZhCn extends TranslationsConfigIpv6ModesEn {
	TranslationsConfigIpv6ModesZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get disable => '禁用';
	@override String get enable => '启用';
	@override String get prefer => '首选';
	@override String get only => '仅限';
}

// Path: config.warpDetourModes
class TranslationsConfigWarpDetourModesZhCn extends TranslationsConfigWarpDetourModesEn {
	TranslationsConfigWarpDetourModesZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get proxyOverWarp => '通过 WARP 连接代理';
	@override String get warpOverProxy => '通过代理连接 WARP';
	@override String get inbound => '通过代理绕过 WARP';
	@override String get outbound => '通过 WARP 绕过代理';
}

// Path: profile.add.qrScanner
class TranslationsProfileAddQrScannerZhCn extends TranslationsProfileAddQrScannerEn {
	TranslationsProfileAddQrScannerZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get permissionDeniedError => '权限不足';
	@override String get unexpectedError => '出了些问题';
	@override String get torchSemanticLabel => '闪光灯';
	@override String get facingSemanticLabel => '切换摄像头';
	@override String get permissionRequest => '授予相机权限以允许扫描二维码';
}

// Path: settings.general.regions
class TranslationsSettingsGeneralRegionsZhCn extends TranslationsSettingsGeneralRegionsEn {
	TranslationsSettingsGeneralRegionsZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get en => '英语 (cn)';
	@override String get cn => '中文 (cn)';
	@override String get other => '其它';
}

// Path: settings.general.themeModes
class TranslationsSettingsGeneralThemeModesZhCn extends TranslationsSettingsGeneralThemeModesEn {
	TranslationsSettingsGeneralThemeModesZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get system => '遵循系统主题';
	@override String get dark => '暗色';
	@override String get light => '浅色';
	@override String get black => '黑色';
}

// Path: settings.network.perAppProxyModes
class TranslationsSettingsNetworkPerAppProxyModesZhCn extends TranslationsSettingsNetworkPerAppProxyModesEn {
	TranslationsSettingsNetworkPerAppProxyModesZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get off => '全部';
	@override String get offMsg => '代理所有应用程序';
	@override String get include => '代理';
	@override String get includeMsg => '仅代理选定的应用程序';
	@override String get exclude => '绕过';
	@override String get excludeMsg => '不代理选中的应用程序';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'general.appTitle': return 'Wsurge';
			case 'general.reset': return 'Reset';
			case 'general.toggle.enabled': return 'Enabled';
			case 'general.toggle.disabled': return 'Disabled';
			case 'general.state.disable': return 'Disable';
			case 'general.sort': return 'Sort';
			case 'general.sortBy': return 'Sort by';
			case 'general.addToClipboard': return 'Add To Clipboard';
			case 'general.notSet': return 'Not Set';
			case 'general.agree': return 'Agree';
			case 'general.decline': return 'Decline';
			case 'general.unknown': return 'Unknown';
			case 'general.hidden': return 'Hidden';
			case 'general.timeout': return 'Timeout';
			case 'general.clipboardExportSuccessMsg': return 'Added To Clipboard';
			case 'general.showMore': return 'Show More';
			case 'general.showLess': return 'Show Less';
			case 'general.openAppSettings': return 'Open App Settings';
			case 'general.grantPermission': return 'Grant Permission';
			case 'home.pageTitle': return 'Home';
			case 'home.emptyProfilesMsg': return 'Begin by Adding a Subscription Profile';
			case 'home.noActiveProfileMsg': return 'Choose a Profile';
			case 'stats.traffic': return 'Traffic';
			case 'stats.trafficLive': return 'Live Traffic';
			case 'stats.trafficTotal': return 'Total Traffic';
			case 'stats.uplink': return 'Uplink';
			case 'stats.downlink': return 'Downlink';
			case 'stats.connection': return 'Connection';
			case 'stats.speed': return 'Speed';
			case 'stats.totalTransferred': return 'Total Transferred';
			case 'stats.coreMemory': return 'Total Memory';
			case 'stats.connections': return 'Connections';
			case 'profile.overviewPageTitle': return 'Profiles';
			case 'profile.detailsPageTitle': return 'Profile';
			case 'profile.activeProfileNameSemanticLabel': return ({required Object name}) => 'Active Profile Name: "${name}".';
			case 'profile.activeProfileBtnSemanticLabel': return 'View All Profiles';
			case 'profile.nonActiveProfileBtnSemanticLabel': return ({required Object name}) => 'Select "${name}" as Active Profile';
			case 'profile.subscription.traffic': return 'Traffic';
			case 'profile.subscription.updatedTimeAgo': return ({required Object timeago}) => 'Updated ${timeago}';
			case 'profile.subscription.remainingDuration': return ({required Object duration}) => '${duration} Days Remaining';
			case 'profile.subscription.remainingTrafficSemanticLabel': return ({required Object consumed, required Object total}) => '${consumed} of ${total} Traffic Consumed';
			case 'profile.subscription.expired': return 'Expired';
			case 'profile.subscription.noTraffic': return 'Out of Quota';
			case 'profile.subscription.upload': return 'Upload';
			case 'profile.subscription.download': return 'Download';
			case 'profile.subscription.total': return 'Total Traffic';
			case 'profile.subscription.expireDate': return 'Expire Date';
			case 'profile.sortBy.lastUpdate': return 'Recently Updated';
			case 'profile.sortBy.name': return 'Alphabetically';
			case 'profile.add.buttonText': return 'New Profile';
			case 'profile.add.shortBtnTxt': return 'New Profile';
			case 'profile.add.fromClipboard': return 'Add From Clipboard';
			case 'profile.add.scanQr': return 'Scan QR Code';
			case 'profile.add.qrScanner.permissionDeniedError': return 'Permission Denied';
			case 'profile.add.qrScanner.unexpectedError': return 'Something Went Wrong';
			case 'profile.add.qrScanner.torchSemanticLabel': return 'Flash Light';
			case 'profile.add.qrScanner.facingSemanticLabel': return 'Camera Facing';
			case 'profile.add.qrScanner.permissionRequest': return 'Permission to camera to scan QR Code';
			case 'profile.add.manually': return 'Manual Entry';
			case 'profile.add.addWarp': return 'Add WARP';
			case 'profile.add.addingWarpMsg': return 'Please wait while we register WARP.';
			case 'profile.add.addingProfileMsg': return 'Adding Profile';
			case 'profile.add.failureMsg': return 'Failed to Add Profile';
			case 'profile.update.buttonTxt': return 'Update';
			case 'profile.update.tooltip': return 'Update Profile';
			case 'profile.update.updateSubscriptions': return 'Update Subscriptions';
			case 'profile.update.failureMsg': return 'Failed to Update Profile';
			case 'profile.update.successMsg': return 'Profile Updated Successfully';
			case 'profile.update.namedFailureMsg': return ({required Object name}) => 'Failed to Update "${name}"';
			case 'profile.update.namedSuccessMsg': return ({required Object name}) => '"${name}" Updated Successfully';
			case 'profile.share.buttonText': return 'Share';
			case 'profile.share.exportToClipboardSuccess': return 'Exported to Clipboard';
			case 'profile.share.exportSubLinkToClipboard': return 'Export Subscription Link to Clipboard';
			case 'profile.share.subLinkQrCode': return 'Subscription Link QR Code';
			case 'profile.share.exportConfigToClipboard': return 'Export Configuration to Clipboard';
			case 'profile.share.exportConfigToClipboardSuccess': return 'Configuration Copied to Clipboard';
			case 'profile.edit.buttonTxt': return 'Edit';
			case 'profile.edit.selectActiveTxt': return 'Select Active Profile';
			case 'profile.delete.buttonTxt': return 'Delete';
			case 'profile.delete.confirmationMsg': return 'Delete Profile Permanently?';
			case 'profile.delete.successMsg': return 'Profile Deleted Successfully';
			case 'profile.save.buttonText': return 'Save';
			case 'profile.save.successMsg': return 'Profile Saved Successfully';
			case 'profile.save.failureMsg': return 'Failed to Save Profile';
			case 'profile.detailsForm.nameLabel': return 'Name';
			case 'profile.detailsForm.nameHint': return 'Profile Name';
			case 'profile.detailsForm.urlLabel': return 'URL';
			case 'profile.detailsForm.urlHint': return 'Full Config URL';
			case 'profile.detailsForm.emptyNameMsg': return 'Name Is Required';
			case 'profile.detailsForm.invalidUrlMsg': return 'Invalid URL';
			case 'profile.detailsForm.lastUpdate': return 'Last Update';
			case 'profile.detailsForm.updateInterval': return 'Auto Update';
			case 'profile.detailsForm.updateIntervalDialogTitle': return 'Auto Update Interval (in Hours)';
			case 'proxies.pageTitle': return 'Proxies';
			case 'proxies.emptyProxiesMsg': return 'No Proxies Available';
			case 'proxies.delayTestTooltip': return 'Test Delay';
			case 'proxies.sortTooltip': return 'Sort Proxies';
			case 'proxies.checkIp': return 'Check IP';
			case 'proxies.unknownIp': return 'Unknown IP';
			case 'proxies.sortOptions.unsorted': return 'Default';
			case 'proxies.sortOptions.name': return 'Alphabetically';
			case 'proxies.sortOptions.delay': return 'By Delay';
			case 'proxies.activeProxySemanticLabel': return 'Active Proxy';
			case 'proxies.delaySemantics.result': return ({required Object delay}) => 'Delay: ${delay}ms';
			case 'proxies.delaySemantics.timeout': return 'Delay Test Timeout';
			case 'proxies.delaySemantics.testing': return 'Delay: Testing...';
			case 'proxies.ipInfoSemantics.address': return 'IP Address';
			case 'proxies.ipInfoSemantics.country': return 'Country';
			case 'logs.pageTitle': return 'Logs';
			case 'logs.filterHint': return 'Filter';
			case 'logs.allLevelsFilter': return 'All';
			case 'logs.shareCoreLogs': return 'Share Core Logs';
			case 'logs.shareAppLogs': return 'Share App Logs';
			case 'logs.pauseTooltip': return 'Pause';
			case 'logs.resumeTooltip': return 'Resume';
			case 'logs.clearTooltip': return 'Clear';
			case 'settings.pageTitle': return 'Settings';
			case 'settings.requiresRestartMsg': return 'For this to take effect restart the app';
			case 'settings.experimental': return 'Experimental';
			case 'settings.experimentalMsg': return 'Features with Experimental flag are still in development and might cause issues.';
			case 'settings.exportOptions': return 'Copy Anonymous Options to Clipboard';
			case 'settings.exportAllOptions': return 'Copy All Options to Clipboard';
			case 'settings.importOptions': return 'Import Options From Clipboard';
			case 'settings.importOptionsMsg': return 'This will rewrite all config options with provided values. Are you sure?';
			case 'settings.general.sectionTitle': return 'General';
			case 'settings.general.locale': return 'Language';
			case 'settings.general.region': return 'Region';
			case 'settings.general.regionMsg': return 'Helps set default options to bypass domestic addresses';
			case 'settings.general.regions.en': return 'English (cn)';
			case 'settings.general.regions.cn': return 'China (cn)';
			case 'settings.general.regions.other': return 'Other';
			case 'settings.general.themeMode': return 'Theme Mode';
			case 'settings.general.themeModes.system': return 'Follow System Theme';
			case 'settings.general.themeModes.dark': return 'Dark Mode';
			case 'settings.general.themeModes.light': return 'Light Mode';
			case 'settings.general.themeModes.black': return 'Black Mode';
			case 'settings.general.enableAnalytics': return 'Enable Analytics';
			case 'settings.general.enableAnalyticsMsg': return 'Give permission to collect analytics and send crash reports to improve the app';
			case 'settings.general.autoStart': return 'Start At Login';
			case 'settings.general.silentStart': return 'Start Minimized';
			case 'settings.general.openWorkingDir': return 'Open Working Directory';
			case 'settings.general.ignoreBatteryOptimizations': return 'Disable Battery Optimization';
			case 'settings.general.ignoreBatteryOptimizationsMsg': return 'Remove Restrictions For Optimal VPN Performance';
			case 'settings.general.dynamicNotification': return 'Display Speed in Notification';
			case 'settings.general.hapticFeedback': return 'Haptic Feedback';
			case 'settings.general.autoIpCheck': return 'Automatically Check Connection IP';
			case 'settings.advanced.sectionTitle': return 'Advanced';
			case 'settings.advanced.debugMode': return 'Debug Mode';
			case 'settings.advanced.debugModeMsg': return 'Restart the app for applying this change';
			case 'settings.advanced.memoryLimit': return 'Memory Limit';
			case 'settings.advanced.memoryLimitMsg': return 'Enable if you\'re experiencing out of memory errors or frequent app crash';
			case 'settings.advanced.resetTunnel': return 'Reset VPN Profile';
			case 'settings.network.perAppProxyPageTitle': return 'Per-App Proxy';
			case 'settings.network.perAppProxyModes.off': return 'All';
			case 'settings.network.perAppProxyModes.offMsg': return 'Proxy All Apps';
			case 'settings.network.perAppProxyModes.include': return 'Proxy';
			case 'settings.network.perAppProxyModes.includeMsg': return 'Proxy Only Selected Apps';
			case 'settings.network.perAppProxyModes.exclude': return 'Bypass';
			case 'settings.network.perAppProxyModes.excludeMsg': return 'Do Not Proxy Selected Apps';
			case 'settings.network.showSystemApps': return 'Show System Apps';
			case 'settings.network.hideSystemApps': return 'Hide System Apps';
			case 'settings.network.clearSelection': return 'Clear Selection';
			case 'settings.geoAssets.pageTitle': return 'Routing Assets';
			case 'settings.geoAssets.geoip': return 'GeoIP';
			case 'settings.geoAssets.geosite': return 'GeoSite';
			case 'settings.geoAssets.version': return ({required Object version}) => 'Version ${version}';
			case 'settings.geoAssets.fileMissing': return 'File Missing';
			case 'settings.geoAssets.update': return 'Update';
			case 'settings.geoAssets.download': return 'Download';
			case 'settings.geoAssets.failureMsg': return 'Failed to Update Asset';
			case 'settings.geoAssets.successMsg': return 'Successfully Updated Asset';
			case 'settings.geoAssets.addRecommended': return 'Add Recommended Assets';
			case 'settings.geoAssets.missingGeoAssetsMsg': return 'Selected Routing Assets\' files are missing. Either download them or choose existing ones';
			case 'about.pageTitle': return 'About';
			case 'about.version': return 'Version';
			case 'about.sourceCode': return 'Source Code';
			case 'about.telegramChannel': return 'Telegram Channel';
			case 'about.checkForUpdate': return 'Check For Update';
			case 'about.privacyPolicy': return 'Privacy Policy';
			case 'about.termsAndConditions': return 'Terms and Conditions';
			case 'appUpdate.notAvailableMsg': return 'Already Using The Latest Version';
			case 'appUpdate.dialogTitle': return 'Update Available';
			case 'appUpdate.updateMsg': return 'A new version of ${_root.general.appTitle} is available. Would you like to update now?';
			case 'appUpdate.currentVersionLbl': return 'Current Version';
			case 'appUpdate.newVersionLbl': return 'New Version';
			case 'appUpdate.updateNowBtnTxt': return 'Update Now';
			case 'appUpdate.laterBtnTxt': return 'Later';
			case 'appUpdate.ignoreBtnTxt': return 'Ignore';
			case 'tray.dashboard': return 'Dashboard';
			case 'tray.quit': return 'Quit';
			case 'tray.open': return 'Open';
			case 'tray.status.connect': return 'Connect';
			case 'tray.status.connecting': return 'Connecting';
			case 'tray.status.disconnect': return 'Disconnect';
			case 'tray.status.disconnecting': return 'Disconnecting';
			case 'failure.unexpected': return 'Unexpected Error';
			case 'failure.clash.unexpected': return 'Unexpected Error';
			case 'failure.clash.core': return ({required Object reason}) => 'Clash Error ${reason}';
			case 'failure.singbox.unexpected': return 'Unexpected Service Error';
			case 'failure.singbox.serviceNotRunning': return 'Service is Not Running';
			case 'failure.singbox.missingPrivilege': return 'Missing Privilege';
			case 'failure.singbox.missingPrivilegeMsg': return 'VPN Mode Requires Administrator Privileges. Either relaunch the app as administrator or change service mode.';
			case 'failure.singbox.missingGeoAssets': return 'Missing Geo Assets';
			case 'failure.singbox.missingGeoAssetsMsg': return 'Geo Assets Are Missing. Consider changing active asset or download selected one in the settings.';
			case 'failure.singbox.invalidConfigOptions': return 'Invalid Configuration Options';
			case 'failure.singbox.invalidConfig': return 'Invalid Configuration';
			case 'failure.singbox.create': return 'Service Creation Error';
			case 'failure.singbox.start': return 'Service Startup Error';
			case 'failure.connectivity.unexpected': return 'Unexpected Failure';
			case 'failure.connectivity.missingVpnPermission': return 'Missing VPN Permission';
			case 'failure.connectivity.missingNotificationPermission': return 'Missing Notification Permission';
			case 'failure.connectivity.core': return 'Core Error';
			case 'failure.profiles.unexpected': return 'Unexpected Error';
			case 'failure.profiles.notFound': return 'Profile Not Found';
			case 'failure.profiles.invalidConfig': return 'Invalid Configs';
			case 'failure.profiles.invalidUrl': return 'Invalid URL';
			case 'failure.connection.unexpected': return 'Unexpected Connection Error';
			case 'failure.connection.timeout': return 'Connection Timeout';
			case 'failure.connection.badResponse': return 'Bad Response';
			case 'failure.connection.connectionError': return 'Connection Error';
			case 'failure.connection.badCertificate': return 'Bad Certificate';
			case 'failure.geoAssets.unexpected': return 'Unexpected Error';
			case 'failure.geoAssets.notUpdate': return 'No Update Available';
			case 'failure.geoAssets.activeNotFound': return 'Active Geo Asset Not Found';
			case 'connection.tapToConnect': return 'Tap To Connect';
			case 'connection.tabToDisConnect': return 'Tap To DisConnect';
			case 'connection.connecting': return 'Connecting';
			case 'connection.disconnecting': return 'Disconnecting';
			case 'connection.connected': return 'Connected';
			case 'connection.reconnect': return 'Reconnect';
			case 'connection.connectAnyWay': return 'Connect';
			case 'connection.experimentalNotice': return 'Experimental Features In Use';
			case 'connection.experimentalNoticeMsg': return 'You\'ve enabled some experimental features which might affect connection quality and cause unexpected errors. You can always change or reset these options from Config options page.';
			case 'connection.disableExperimentalNotice': return 'Don\'t Show Again';
			case 'connection.reconnectMsg': return 'Reconnecting for taking into account the changes...';
			case 'config.resetBtn': return 'Reset Options';
			case 'config.serviceMode': return 'Service Mode';
			case 'config.quickSettings': return 'Quick Settings';
			case 'config.setupWarp': return 'Setup WARP';
			case 'config.allOptions': return 'All Config Options';
			case 'config.serviceModes.proxy': return 'Proxy Service Only';
			case 'config.serviceModes.systemProxy': return 'Set System Proxy';
			case 'config.serviceModes.tun': return 'TUN';
			case 'config.serviceModes.tunService': return 'TUN Service';
			case 'config.shortServiceModes.proxy': return 'Proxy';
			case 'config.shortServiceModes.systemProxy': return 'System Proxy';
			case 'config.shortServiceModes.tun': return 'TUN';
			case 'config.shortServiceModes.tunService': return 'TUN Service';
			case 'config.section.route': return 'Route Options';
			case 'config.section.dns': return 'DNS Options';
			case 'config.section.inbound': return 'Inbound Options';
			case 'config.section.mux': return 'MultiPlexer';
			case 'config.section.outbound': return 'Outbound Options';
			case 'config.section.tlsTricks': return 'TLS Tricks';
			case 'config.section.warp': return 'WARP Options';
			case 'config.section.misc': return 'Misc Options';
			case 'config.warpConsent.title': return 'Cloudflare WARP Consent';
			case 'config.warpConsent.description': return ({required InlineSpanBuilder tos, required InlineSpanBuilder privacy}) => TextSpan(children: [
				const TextSpan(text: 'Cloudflare WARP is a Free WireGuard VPN Provider. By enabling this option you are agreeing to the Cloudflare WARP\'s '),
				tos('Terms of Service'),
				const TextSpan(text: ' and '),
				privacy('Privacy Policy'),
				const TextSpan(text: '.'),
			]);
			case 'config.generateWarpConfig': return 'Generate WARP Config';
			case 'config.missingWarpConfig': return 'Missing WARP Config';
			case 'config.warpConfigGenerated': return 'WARP Config is Generated';
			case 'config.pageTitle': return 'Config Options';
			case 'config.logLevel': return 'Log Level';
			case 'config.blockAds': return 'Block Advertisements';
			case 'config.resolveDestination': return 'Resolve Destination';
			case 'config.ipv6Mode': return 'IPv6 Route';
			case 'config.ipv6Modes.disable': return 'Disable';
			case 'config.ipv6Modes.enable': return 'Enable';
			case 'config.ipv6Modes.prefer': return 'Preferred';
			case 'config.ipv6Modes.only': return 'Exclusive';
			case 'config.remoteDnsAddress': return 'Remote DNS';
			case 'config.remoteDnsDomainStrategy': return 'Remote DNS Domain Strategy';
			case 'config.directDnsAddress': return 'Direct DNS';
			case 'config.directDnsDomainStrategy': return 'Direct DNS Domain Strategy';
			case 'config.mixedPort': return 'Mixed Port';
			case 'config.tproxyPort': return 'Transparent Proxy Port';
			case 'config.localDnsPort': return 'Local DNS Port';
			case 'config.allowConnectionFromLan': return 'Share VPN in Local Network';
			case 'config.tunImplementation': return 'TUN Implementation';
			case 'config.mtu': return 'Packet Size (MTU)';
			case 'config.connectionTestUrl': return 'Connection Test URL';
			case 'config.urlTestInterval': return 'URL Test Interval';
			case 'config.enableClashApi': return 'Enable Clash API';
			case 'config.clashApiPort': return 'Clash API Port';
			case 'config.enableTun': return 'Enable TUN';
			case 'config.setSystemProxy': return 'Set System Proxy';
			case 'config.enableDnsRouting': return 'Enable DNS Routing';
			case 'config.enableFakeDns': return 'Enable Fake DNS';
			case 'config.bypassLan': return 'Bypass Lan';
			case 'config.strictRoute': return 'Strict Route';
			case 'config.enableTlsFragment': return 'Enable TLS Fragment';
			case 'config.tlsFragmentSize': return 'TLS Fragment Size';
			case 'config.tlsFragmentSleep': return 'TLS Fragment Sleep';
			case 'config.enableTlsMixedSniCase': return 'Enable TLS Mixed SNI Case';
			case 'config.enableTlsPadding': return 'Enable TLS Padding';
			case 'config.tlsPaddingSize': return 'TLS Padding';
			case 'config.enableMux': return 'Enable Mux';
			case 'config.muxProtocol': return 'Mux Protocol';
			case 'config.muxMaxStreams': return 'Max Concurrent Streams';
			case 'config.enableWarp': return 'Enable WARP';
			case 'config.warpDetourMode': return 'Detour Mode';
			case 'config.warpDetourModes.proxyOverWarp': return 'Detour Proxies Through WARP';
			case 'config.warpDetourModes.warpOverProxy': return 'Detour WARP Through Proxies';
			case 'config.warpDetourModes.inbound': return 'Detour WARP Through Proxies';
			case 'config.warpDetourModes.outbound': return 'Detour Proxies Through WARP';
			case 'config.warpLicenseKey': return 'License Key';
			case 'config.warpCleanIp': return 'Clean IP';
			case 'config.warpPort': return 'Port';
			case 'config.warpNoise': return 'Noise Count';
			case 'config.warpNoiseSize': return 'Noise Size';
			case 'config.warpNoiseMode': return 'Noise Mode';
			case 'config.warpNoiseDelay': return 'Noise Delay';
			case 'window.hide': return 'Hide';
			case 'window.close': return 'Exit';
			case 'window.alertMessage': return 'Hide or Exit the application?';
			default: return null;
		}
	}
}

extension on TranslationsZhCn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'general.appTitle': return 'Wsurge';
			case 'general.reset': return '重置';
			case 'general.toggle.enabled': return '启用';
			case 'general.toggle.disabled': return '禁用';
			case 'general.state.disable': return '禁用';
			case 'general.sort': return '排序';
			case 'general.sortBy': return '排序方式';
			case 'general.addToClipboard': return '添加到剪贴板';
			case 'general.notSet': return '未设置';
			case 'general.agree': return '同意';
			case 'general.decline': return '拒绝';
			case 'general.unknown': return '未知';
			case 'general.hidden': return '隐藏';
			case 'general.timeout': return '超时';
			case 'general.clipboardExportSuccessMsg': return '已导出到剪贴板';
			case 'general.showMore': return '显示更多';
			case 'general.showLess': return '显示更少';
			case 'general.openAppSettings': return '打开应用设置';
			case 'general.grantPermission': return '授予权限';
			case 'home.pageTitle': return '主页';
			case 'home.emptyProfilesMsg': return '从添加订阅配置文件开始';
			case 'home.noActiveProfileMsg': return '选择配置文件';
			case 'stats.traffic': return '流量';
			case 'stats.trafficLive': return '实时流量';
			case 'stats.trafficTotal': return '总流量';
			case 'stats.uplink': return '上行';
			case 'stats.downlink': return '下行';
			case 'stats.connection': return '连接';
			case 'stats.speed': return '速度';
			case 'stats.totalTransferred': return '总传输量';
			case 'stats.coreMemory': return '占用内存';
			case 'stats.connections': return '连接数';
			case 'profile.overviewPageTitle': return '配置文件';
			case 'profile.detailsPageTitle': return '配置文件';
			case 'profile.activeProfileNameSemanticLabel': return ({required Object name}) => '激活的配置文件名称：“${name}”。';
			case 'profile.activeProfileBtnSemanticLabel': return '查看所有配置文件';
			case 'profile.nonActiveProfileBtnSemanticLabel': return ({required Object name}) => '选择 “${name}” 作为激活的配置文件';
			case 'profile.subscription.traffic': return '流量';
			case 'profile.subscription.updatedTimeAgo': return ({required Object timeago}) => '更新于 ${timeago}';
			case 'profile.subscription.remainingDuration': return ({required Object duration}) => '剩余 ${duration} 天';
			case 'profile.subscription.remainingTrafficSemanticLabel': return ({required Object consumed, required Object total}) => '已使用 ${consumed} 流量，共 ${total} 流量。';
			case 'profile.subscription.expired': return '已过期';
			case 'profile.subscription.noTraffic': return '超出限额';
			case 'profile.subscription.upload': return '上传';
			case 'profile.subscription.download': return '下载';
			case 'profile.subscription.total': return '总流量';
			case 'profile.subscription.expireDate': return '到期时间';
			case 'profile.sortBy.lastUpdate': return '最近更新';
			case 'profile.sortBy.name': return '按字母顺序';
			case 'profile.add.buttonText': return '新的配置文件';
			case 'profile.add.shortBtnTxt': return '新的配置文件';
			case 'profile.add.fromClipboard': return '从剪贴板添加';
			case 'profile.add.scanQr': return '扫描二维码';
			case 'profile.add.qrScanner.permissionDeniedError': return '权限不足';
			case 'profile.add.qrScanner.unexpectedError': return '出了些问题';
			case 'profile.add.qrScanner.torchSemanticLabel': return '闪光灯';
			case 'profile.add.qrScanner.facingSemanticLabel': return '切换摄像头';
			case 'profile.add.qrScanner.permissionRequest': return '授予相机权限以允许扫描二维码';
			case 'profile.add.manually': return '手动输入';
			case 'profile.add.addWarp': return '添加 WARP';
			case 'profile.add.addingWarpMsg': return '我们正在注册 WARP，请稍候。';
			case 'profile.add.addingProfileMsg': return '添加配置文件';
			case 'profile.add.failureMsg': return '添加配置文件失败';
			case 'profile.update.buttonTxt': return '更新';
			case 'profile.update.tooltip': return '更新配置文件';
			case 'profile.update.updateSubscriptions': return '更新订阅';
			case 'profile.update.failureMsg': return '更新配置文件失败';
			case 'profile.update.successMsg': return '配置文件更新成功';
			case 'profile.update.namedFailureMsg': return ({required Object name}) => '无法更新"${name}"';
			case 'profile.update.namedSuccessMsg': return ({required Object name}) => '"${name}" 更新成功';
			case 'profile.edit.buttonTxt': return '编辑';
			case 'profile.edit.selectActiveTxt': return '选择并激活配置文件';
			case 'profile.delete.buttonTxt': return '删除';
			case 'profile.delete.confirmationMsg': return '要永久删除配置文件吗？';
			case 'profile.delete.successMsg': return '配置文件删除成功';
			case 'profile.save.buttonText': return '保存';
			case 'profile.save.successMsg': return '配置文件保存成功';
			case 'profile.save.failureMsg': return '配置文件保存失败';
			case 'profile.detailsForm.nameLabel': return '名称';
			case 'profile.detailsForm.nameHint': return '配置文件名称';
			case 'profile.detailsForm.urlLabel': return '网址';
			case 'profile.detailsForm.urlHint': return '完整配置网址';
			case 'profile.detailsForm.emptyNameMsg': return '名称为必填项';
			case 'profile.detailsForm.invalidUrlMsg': return '无效的网址';
			case 'profile.detailsForm.lastUpdate': return '最后更新';
			case 'profile.detailsForm.updateInterval': return '自动更新';
			case 'profile.detailsForm.updateIntervalDialogTitle': return '自动更新间隔（小时）';
			case 'proxies.pageTitle': return '代理';
			case 'proxies.emptyProxiesMsg': return '无可用的代理';
			case 'proxies.delayTestTooltip': return '测试延迟';
			case 'proxies.sortTooltip': return '对代理进行排序';
			case 'proxies.checkIp': return '检测 IP 地址';
			case 'proxies.unknownIp': return '未知的 IP';
			case 'proxies.sortOptions.unsorted': return '默认';
			case 'proxies.sortOptions.name': return '按字母顺序';
			case 'proxies.sortOptions.delay': return '按延迟顺序';
			case 'proxies.activeProxySemanticLabel': return '激活的代理';
			case 'proxies.delaySemantics.result': return ({required Object delay}) => '延迟: ${delay}ms';
			case 'proxies.delaySemantics.timeout': return '延迟测试超时';
			case 'proxies.delaySemantics.testing': return '正在测试延迟';
			case 'proxies.ipInfoSemantics.address': return 'IP 地址';
			case 'proxies.ipInfoSemantics.country': return '国家';
			case 'logs.pageTitle': return '日志';
			case 'logs.filterHint': return '筛选';
			case 'logs.allLevelsFilter': return '全部';
			case 'logs.shareCoreLogs': return '分享核心日志';
			case 'logs.shareAppLogs': return '分享应用日志';
			case 'logs.pauseTooltip': return '暂停';
			case 'logs.resumeTooltip': return '恢复';
			case 'logs.clearTooltip': return '清除';
			case 'settings.pageTitle': return '设置';
			case 'settings.requiresRestartMsg': return '要使其生效，请重新启动应用程序';
			case 'settings.experimental': return '实验性选项';
			case 'settings.experimentalMsg': return '带有实验标志的功能仍在开发中，可能会出现问题。';
			case 'settings.exportOptions': return '将匿名选项导出到剪贴板';
			case 'settings.exportAllOptions': return '将所有选项导出到剪贴板（用于调试）';
			case 'settings.importOptions': return '从剪贴板导入选项';
			case 'settings.importOptionsMsg': return '这将使用提供的值重写所有配置选项。您确定吗？';
			case 'settings.general.sectionTitle': return '一般选项';
			case 'settings.general.locale': return '语言';
			case 'settings.general.region': return '地区';
			case 'settings.general.regionMsg': return '帮助设置默认选项以绕过国内地址';
			case 'settings.general.regions.en': return '英语 (cn)';
			case 'settings.general.regions.cn': return '中文 (cn)';
			case 'settings.general.regions.other': return '其它';
			case 'settings.general.themeMode': return '主题模式';
			case 'settings.general.themeModes.system': return '遵循系统主题';
			case 'settings.general.themeModes.dark': return '暗色';
			case 'settings.general.themeModes.light': return '浅色';
			case 'settings.general.themeModes.black': return '黑色';
			case 'settings.general.enableAnalytics': return '启用分析';
			case 'settings.general.enableAnalyticsMsg': return '授予收集分析并发送崩溃报告以改进应用程序的权限';
			case 'settings.general.autoStart': return '开机启动';
			case 'settings.general.silentStart': return '静默启动';
			case 'settings.general.openWorkingDir': return '打开工作目录';
			case 'settings.general.ignoreBatteryOptimizations': return '禁用电池优化';
			case 'settings.general.ignoreBatteryOptimizationsMsg': return '消除限制以获得最佳 VPN 性能';
			case 'settings.general.dynamicNotification': return '在通知中显示网络速度';
			case 'settings.general.hapticFeedback': return '触觉反馈';
			case 'settings.general.autoIpCheck': return '自动检查连接的 IP';
			case 'settings.advanced.sectionTitle': return '高级选项';
			case 'settings.advanced.debugMode': return '调试模式';
			case 'settings.advanced.debugModeMsg': return '重新启动应用程序以应用此更改';
			case 'settings.advanced.memoryLimit': return '内存限制';
			case 'settings.advanced.memoryLimitMsg': return '如果您遇到内存不足错误或频繁应用程序崩溃，请启用';
			case 'settings.advanced.resetTunnel': return '重置 VPN 配置文件';
			case 'settings.network.perAppProxyPageTitle': return '分应用代理';
			case 'settings.network.perAppProxyModes.off': return '全部';
			case 'settings.network.perAppProxyModes.offMsg': return '代理所有应用程序';
			case 'settings.network.perAppProxyModes.include': return '代理';
			case 'settings.network.perAppProxyModes.includeMsg': return '仅代理选定的应用程序';
			case 'settings.network.perAppProxyModes.exclude': return '绕过';
			case 'settings.network.perAppProxyModes.excludeMsg': return '不代理选中的应用程序';
			case 'settings.network.showSystemApps': return '显示系统应用程序';
			case 'settings.network.hideSystemApps': return '隐藏系统应用程序';
			case 'settings.network.clearSelection': return '清空选项';
			case 'settings.geoAssets.pageTitle': return '路由资源文件';
			case 'settings.geoAssets.geoip': return 'GeoIP';
			case 'settings.geoAssets.geosite': return 'Geosite';
			case 'settings.geoAssets.version': return ({required Object version}) => '版本 ${version}';
			case 'settings.geoAssets.fileMissing': return '文件丢失';
			case 'settings.geoAssets.update': return '更新';
			case 'settings.geoAssets.download': return '下载';
			case 'settings.geoAssets.failureMsg': return '更新资源文件失败';
			case 'settings.geoAssets.successMsg': return '已成功更新资源文件';
			case 'settings.geoAssets.addRecommended': return '添加建议的资源文件';
			case 'settings.geoAssets.missingGeoAssetsMsg': return '所选路由资源的文件丢失。下载它们或选择现有的。';
			case 'about.pageTitle': return '关于';
			case 'about.version': return '版本';
			case 'about.sourceCode': return '源代码';
			case 'about.telegramChannel': return 'Telegram 频道';
			case 'about.checkForUpdate': return '检查更新';
			case 'about.privacyPolicy': return '隐私政策';
			case 'about.termsAndConditions': return '条款和条件';
			case 'appUpdate.notAvailableMsg': return '已是最新版本';
			case 'appUpdate.dialogTitle': return '有可用更新';
			case 'appUpdate.updateMsg': return '${_root.general.appTitle} 的新版本现已推出。您想现在更新吗？';
			case 'appUpdate.currentVersionLbl': return '当前版本';
			case 'appUpdate.newVersionLbl': return '新版本';
			case 'appUpdate.updateNowBtnTxt': return '现在更新';
			case 'appUpdate.laterBtnTxt': return '以后再说';
			case 'appUpdate.ignoreBtnTxt': return '忽略';
			case 'tray.dashboard': return '仪表板';
			case 'tray.quit': return '退出';
			case 'tray.open': return '打开';
			case 'tray.status.connect': return '连接';
			case 'tray.status.connecting': return '正在连接';
			case 'tray.status.disconnect': return '断开连接';
			case 'tray.status.disconnecting': return '正在断开连接';
			case 'failure.unexpected': return '意外错误';
			case 'failure.clash.unexpected': return '意外错误';
			case 'failure.clash.core': return ({required Object reason}) => 'Clash 错误 ${reason}';
			case 'failure.singbox.unexpected': return '意外服务错误';
			case 'failure.singbox.serviceNotRunning': return '服务未运行';
			case 'failure.singbox.missingPrivilege': return '缺少权限';
			case 'failure.singbox.missingPrivilegeMsg': return 'VPN 模式需要管理员权限。以管理员身份重新启动应用程序或更改服务模式';
			case 'failure.singbox.missingGeoAssets': return '缺失 GEO 资源文件';
			case 'failure.singbox.missingGeoAssetsMsg': return '缺失 GEO 资源文件。请考虑更改激活的资源文件或在设置中下载所选资源文件。';
			case 'failure.singbox.invalidConfigOptions': return '配置选项无效';
			case 'failure.singbox.invalidConfig': return '无效配置';
			case 'failure.singbox.create': return '服务创建错误';
			case 'failure.singbox.start': return '服务启动错误';
			case 'failure.connectivity.unexpected': return '意外失败';
			case 'failure.connectivity.missingVpnPermission': return '缺少 VPN 权限';
			case 'failure.connectivity.missingNotificationPermission': return '缺少通知权限';
			case 'failure.connectivity.core': return '核心错误';
			case 'failure.profiles.unexpected': return '意外错误';
			case 'failure.profiles.notFound': return '未找到配置文件';
			case 'failure.profiles.invalidConfig': return '无效配置';
			case 'failure.profiles.invalidUrl': return '网址无效';
			case 'failure.connection.unexpected': return '意外连接错误';
			case 'failure.connection.timeout': return '连接超时';
			case 'failure.connection.badResponse': return '错误响应';
			case 'failure.connection.connectionError': return '连接错误';
			case 'failure.connection.badCertificate': return '证书无效';
			case 'failure.geoAssets.unexpected': return '意外错误';
			case 'failure.geoAssets.notUpdate': return '无可用更新';
			case 'failure.geoAssets.activeNotFound': return '未找到激活的 GEO 资源文件';
			case 'connection.tapToConnect': return '点击连接';
			case 'connection.tapToDisConnect': return '点击断开连接';
			case 'connection.connecting': return '正在连接';
			case 'connection.disconnecting': return '正在断开连接';
			case 'connection.connected': return '已连接';
			case 'connection.reconnect': return '重新连接';
			case 'connection.connectAnyWay': return '连接';
			case 'connection.experimentalNotice': return '使用中的实验功能';
			case 'connection.experimentalNoticeMsg': return '您启用了一些实验性功能，这些功能可能会影响连接质量并导致意外错误。您可以随时从“配置”页面更改或重置这些选项。';
			case 'connection.disableExperimentalNotice': return '不再显示';
			case 'connection.reconnectMsg': return '重新连接以使更改生效';
			case 'config.resetBtn': return '重置选项';
			case 'config.serviceMode': return '服务模式';
			case 'config.quickSettings': return '快速设置';
			case 'config.setupWarp': return '配置 WARP';
			case 'config.allOptions': return '全部配置选项';
			case 'config.serviceModes.proxy': return '仅代理';
			case 'config.serviceModes.systemProxy': return '系统代理';
			case 'config.serviceModes.tun': return 'TUN';
			case 'config.serviceModes.tunService': return 'TUN 服务';
			case 'config.shortServiceModes.proxy': return '仅代理';
			case 'config.shortServiceModes.systemProxy': return '系统代理';
			case 'config.shortServiceModes.tun': return 'TUN';
			case 'config.shortServiceModes.tunService': return 'TUN 服务';
			case 'config.section.route': return '路由选项';
			case 'config.section.dns': return 'DNS 选项';
			case 'config.section.inbound': return '入站选项';
			case 'config.section.mux': return '多路复用';
			case 'config.section.outbound': return '出站选项';
			case 'config.section.tlsTricks': return 'TLS 特性';
			case 'config.section.warp': return 'WARP 选项';
			case 'config.section.misc': return '其它选项';
			case 'config.warpConsent.title': return 'Cloudflare WARP 许可条款';
			case 'config.warpConsent.description': return ({required InlineSpanBuilder tos, required InlineSpanBuilder privacy}) => TextSpan(children: [
				const TextSpan(text: 'Cloudflare WARP 是一个免费的 WireGuard VPN 提供商。启用此选项即表示您同意 Cloudflare WARP 的 '),
				tos('服务条款'),
				const TextSpan(text: ' 和 '),
				privacy('隐私政策'),
			]);
			case 'config.generateWarpConfig': return '生成 WARP 配置文件';
			case 'config.missingWarpConfig': return 'WARP 配置文件缺失';
			case 'config.warpConfigGenerated': return 'WARP 配置已生成';
			case 'config.pageTitle': return '配置选项';
			case 'config.logLevel': return '日志级别';
			case 'config.blockAds': return '阻止广告';
			case 'config.resolveDestination': return '解析目标地址';
			case 'config.ipv6Mode': return 'IPv6 路由';
			case 'config.ipv6Modes.disable': return '禁用';
			case 'config.ipv6Modes.enable': return '启用';
			case 'config.ipv6Modes.prefer': return '首选';
			case 'config.ipv6Modes.only': return '仅限';
			case 'config.remoteDnsAddress': return '远程 DNS';
			case 'config.remoteDnsDomainStrategy': return '远程 DNS 域名策略';
			case 'config.directDnsAddress': return '直连 DNS';
			case 'config.directDnsDomainStrategy': return '直连 DNS 域名策略';
			case 'config.mixedPort': return '混合端口';
			case 'config.tproxyPort': return '透明代理端口';
			case 'config.localDnsPort': return '本地 DNS 端口';
			case 'config.allowConnectionFromLan': return '允许局域网连接';
			case 'config.tunImplementation': return 'TUN 实现';
			case 'config.mtu': return '数据包大小 (MTU)';
			case 'config.connectionTestUrl': return '连接测试网址';
			case 'config.urlTestInterval': return '网址测试间隔';
			case 'config.enableClashApi': return '启用 Clash API';
			case 'config.clashApiPort': return 'Clash API 端口';
			case 'config.enableTun': return '启用 TUN';
			case 'config.setSystemProxy': return '设置系统代理';
			case 'config.enableDnsRouting': return '启用 DNS 路由';
			case 'config.enableFakeDns': return '启用 Fake DNS';
			case 'config.bypassLan': return '绕过局域网';
			case 'config.strictRoute': return '严格路由';
			case 'config.enableTlsFragment': return '启用 TLS 数据分段';
			case 'config.tlsFragmentSize': return 'TLS 分段大小';
			case 'config.tlsFragmentSleep': return 'TLS 分段休眠';
			case 'config.enableTlsMixedSniCase': return '启用 TLS 混合 SNI 情形';
			case 'config.enableTlsPadding': return '启用 TLS 填充';
			case 'config.tlsPaddingSize': return 'TLS 填充';
			case 'config.enableMux': return '启用 Mux 多路复用';
			case 'config.muxProtocol': return 'Mux 协议';
			case 'config.muxMaxStreams': return 'Mux 最大并发数';
			case 'config.enableWarp': return '启用 WARP';
			case 'config.warpDetourMode': return '链式代理';
			case 'config.warpDetourModes.proxyOverWarp': return '通过 WARP 连接代理';
			case 'config.warpDetourModes.warpOverProxy': return '通过代理连接 WARP';
			case 'config.warpDetourModes.inbound': return '通过代理绕过 WARP';
			case 'config.warpDetourModes.outbound': return '通过 WARP 绕过代理';
			case 'config.warpLicenseKey': return '许可证密钥';
			case 'config.warpCleanIp': return '清理 IP';
			case 'config.warpPort': return '端口';
			case 'config.warpNoise': return '噪音计数';
			case 'config.warpNoiseSize': return '噪音大小';
			case 'config.warpNoiseMode': return '噪音模式';
			case 'config.warpNoiseDelay': return '噪音延迟';
			case 'window.hide': return '最小化';
			case 'window.close': return '退出';
			case 'window.alertMessage': return '最小化或者退出应用?';
			default: return null;
		}
	}
}
