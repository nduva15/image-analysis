// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(type) => "${Intl.select(type, {
            'FEED_SYRUP_1TO1': 'Syrup 1:1',
            'FEED_SYRUP_2TO1': 'Syrup 2:1',
            'FEED_SYRUP_3TO2': 'Syrup 3:2',
            'FEED_FONDANT': 'Fondant',
            'FEED_HONEY': 'Honey',
            'FEED_BEE_BREAD': 'Pollen Patties',
            'FEED_SYRUP_INVERTED': 'Inverted Syrup',
            'FEED_UNKNOWN': 'Unknown',
            'other': 'Unknown',
          })}";

  static String m1(type) => "${Intl.select(type, {
            'URBAN': 'Urban',
            'RURAL': 'Rural',
            'MIXED': 'Mixed',
            'other': 'Unknown',
          })}";

  static String m2(type) => "${Intl.select(type, {
            'DISEASE_AMERICAN_FOULBROOD': 'American Foulbrood (AFB)',
            'DISEASE_EUROPEAN_FOULBROOD': 'European Foulbrood (EFB)',
            'DISEASE_BALD_BROOD': 'Bald Brood',
            'DISEASE_BLISTER_BEETLES': 'Blister Beetles',
            'DISEASE_CHALKBROOD': 'Chalkbrood',
            'DISEASE_CHEWED_PUPAE': 'Chewed Pupae',
            'DISEASE_DEFORMED_WING_VIRUS': 'Deformed Wing Virus (DWV)',
            'DISEASE_HIVE_BEETLE': 'Small Hive Beetle',
            'DISEASE_SEVERE_HIVE_BEETLE': 'Small Hive Beetle (Severe)',
            'DISEASE_K_WING_VIRUS': 'K Wing Virus',
            'DISEASE_MOLD': 'Mold',
            'DISEASE_NOSEMA': 'Nosema',
            'DISEASE_CHRONIC_BEE_PARALYSIS_VIRUS':
                'Chronic Bee Paralysis Virus (CBPV)',
            'DISEASE_STONEBROOD': 'Stonebrood',
            'DISEASE_TRACHEAL_MITE': 'Tracheal Mite',
            'DISEASE_TROPILAELAPS': 'Tropilaelaps Mites',
            'DISEASE_VARROA_MITES': 'Varroa Mites',
            'DISEASE_SEVERE_VARROA_MITES': 'Varroa Mites (Severe)',
            'DISEASE_SEVERE_WAX_MOTH': 'Wax Moth',
            'DISEASE_ASIAN_HORNET': 'Asian Hornet (Vespa velutina)',
            'DISEASE_OTHER': 'Other',
            'other': 'unknown disease.',
          })}";

  static String m3(type) => "${Intl.select(type, {
            'SHADED': 'Shaded',
            'HALF_SHADED': 'Partial',
            'FULL_SUN': 'Sunny',
            'other': 'Unknown',
          })}";

  static String m4(type) => "${Intl.select(type, {
            'HONEY_LOCAL': 'Local Honey',
            'HONEY_ACACIA': 'Acacia Honey',
            'HONEY_ANZER': 'Anzer Honey',
            'HONEY_BLOSSOM': 'Blossom Honey',
            'HONEY_ALFALFA': 'Alfalfa Honey',
            'HONEY_AVOCADO': 'Avocado Honey',
            'HONEY_BUCKWHEAT': 'Buckwheat Honey',
            'HONEY_BLUEBERRY': 'Blueberry Honey',
            'HONEY_CHESTNUT': 'Chestnut Honey',
            'HONEY_CLOVER': 'Clover Honey',
            'HONEY_EUCALYPTUS': 'Eucaliptus Honey',
            'HONEY_FOREST': 'Forest Honey',
            'HONEY_MANUKA': 'Manuka Honey',
            'HONEY_LAVENDER': 'Lavender Honey',
            'HONEY_ORANGE_BLOSSOM': 'Orange Blossom Honey',
            'HONEY_RAPE': 'Rape Honey',
            'HONEY_SAGE': 'Sage Honey',
            'HONEY_MIXED': 'Mixed Honey',
            'HONEY_UNKNOWN': 'Unknown honey',
            'other': 'Unknown',
          })}";

  static String m5(type) => "${Intl.select(type, {
            'common_error_serverError':
                'Something went wrong while we were talking with our server. Please try again and if the problem percists, reach out to us for support.',
            'common_error_insufficientPermission':
                'You have insufficient permission to access this document. Please check you with your admin for adding permissions.',
            'common_error_emulatorError': 'Emulator Error.',
            'actions_error_noInspections':
                'You don’t have any inspections for this hive. You can add your first inspection by clicking the button below. If you think there is an error then try refresh the page from the menu in top right.',
            'actions_error_invalidInspectionDocument':
                'The inspection document you are looking for is invalid or corrupt.  Please note the ID in the top right and contact us for support.',
            'actions_error_missingInspectionDocument':
                'The inspection document you are looking for is missing from our database.  Please note the ID in the top right and contact us for support.',
            'actions_error_noFeedings':
                'You don’t have any feedings for this hive. You can add your first feeding by clicking the button below. If you think there is an error then try refresh the page from the menu in top right.',
            'actions_error_invalidFeedingDocument':
                'The feeding document you are looking for is invalid or corrupt.  Please note the ID in the top right and contact us for support.',
            'actions_error_missingFeedingDocument':
                'The feeding document you are looking for is missing from our database.  Please note the ID in the top right and contact us for support.',
            'actions_error_noHarvest':
                'You don’t have any harvest for this hive. You can add your first harvest by clicking the button below. If you think there is an error then try refresh the page from the menu in top right.',
            'actions_error_invalidHarvestDocument':
                'The harvest document you are looking for is invalid or corrupt.  Please note the ID in the top right and contact us for support.',
            'actions_error_missingHarvestDocument':
                'The harvest document you are looking for is missing from our database.  Please note the ID in the top right and contact us for support.',
            'other': 'Unknown',
          })}";

  static String m6(type) => "${Intl.select(type, {
            'common_error_serverError': 'Server Error',
            'common_error_insufficientPermission': 'Insufficient Permissions',
            'common_error_emulatorError': 'Emulator Error',
            'actions_error_noInspections': 'No Inspections',
            'actions_error_invalidInspectionDocument': 'Invalid Inspection',
            'actions_error_missingInspectionDocument': 'Missing Inspection',
            'actions_error_noFeedings': 'No Feedings',
            'actions_error_invalidFeedingDocument': 'Invalid Feeding',
            'actions_error_missingFeedingDocument': 'Missing Feeding',
            'actions_error_noHarvest': 'No Harvests',
            'actions_error_invalidHarvestDocument': 'Invalid Harvest',
            'actions_error_missingHarvestDocument': 'Missing Harvest',
            'other': 'Unknown',
          })}";

  static String m7(failure) => "${Intl.select(failure, {
            'alerts_error_noAlerts': 'No Alerts Found.',
            'other': 'Alerts Error.',
          })}";

  static String m8(title, hardware) => "${Intl.select(title, {
            'alerts_error_short': '${hardware} short circuit.',
            'alerts_error_noSoftware': 'Failed firmware update.',
            'alerts_error_load': '${hardware} failed to boot.',
            'alerts_error_contact': '${hardware} lost contact.',
            'alerts_error_eeprom': '${hardware} memory is corrupt.',
            'other': 'Unknown alert.',
          })}";

  static String m9(type) => "${Intl.select(type, {
            'common_error_serverError':
                'Something went wrong while we were talking with our server. Please try again and if the problem percists, reach out to us for support.',
            'common_error_insufficientPermission':
                'You have insufficient permission to access this document. Please check you with your admin for adding permissions.',
            'common_error_emulatorError': 'Emulator Error.',
            'apiary_error_invalidDocument':
                'The apiary document you are looking for is invalid or corrupt.  Please note the ID in the top right and contact us for support.',
            'apiary_error_missingDocument':
                'The apiary document you are looking for is missing from our database.  Please note the ID in the top right and contact us for support.',
            'apiary_error_missingConfig':
                'The apiary is missing it\'s config file.  Please try refreshing the page and if the problem percists, reach out to us for support.',
            'apiary_error_noApiaries':
                'You don’t seem to have any apiaries added yet. You can click the button to add your first apiary or select refresh from the menu if you think there was an error.',
            'apiary_error_invalidLocation':
                'The location has not been set for this apiary so it is not possible to get weather data. You can edit the apiary details and add a location in order to see weather data.',
            'other': 'Unknown',
          })}";

  static String m10(failure) => "${Intl.select(failure, {
            'auth_error_cancelledByUser': 'Cancelled by User.',
            'common_error_serverError': 'Server side error.',
            'auth_error_emailAlreadyInUse': 'Email already in use.',
            'auth_error_accountAlreadyExists': 'Account already exists.',
            'auth_error_invalidEmailAndPassword':
                'Invalid email and password combo.',
            'auth_error_missingUserDoc':
                'Your user document is missing, please contact us for support.',
            'auth_error_missingUserSettings':
                'Your user settings is missing, please contact us for support.',
            'auth_error_invalidUserDoc':
                'Your user document is invalid, please contact us for support.',
            'auth_error_invalidUserSettings':
                'Your user settings is invalid, please contact us for support.',
            'common_error_insufficientPermission': 'Insufficient Permissions.',
            'other': 'Authentication error.',
          })}";

  static String m11(failure) => "${Intl.select(failure, {
            'auth_error_invalidEmail': 'Please enter a valid email.',
            'auth_error_shortPassword': 'Please use a longer password.',
            'auth_error_invalidPassword':
                'Please include (at least) one capital letter and number.',
            'auth_error_longDisplayName':
                'Please enter a shorter display name (max 16 char).',
            'auth_error_invalidisplayName':
                'Please enter a valid display name.',
            'auth_error_invalidDateFormat': 'Invalid date format.',
            'auth_error_invalidUnitSystem': 'Invalid unit system.',
            'other': 'Authentication value error.',
          })}";

  static String m12(type) => "${Intl.select(type, {
            'common_error_serverError': 'Server Error',
            'common_error_insufficientPermission': 'Insufficient Permissions',
            'common_error_emulatorError': 'Emulator Error',
            'auth_error_cancelledByUser': 'Cancelled',
            'auth_error_emailAlreadyInUse': 'Email Exists',
            'auth_error_accountAlreadyExists': 'Account Exists',
            'auth_error_invalidEmailAndPassword': 'Invalid Combo',
            'auth_error_missingUserDoc': 'Missing User',
            'auth_error_missingUserSettings': 'Missing Settings',
            'auth_error_invalidUserDoc': 'Invalid User',
            'auth_error_invalidUserSettings': 'Invalid Settings',
            'other': 'Unknown',
          })}";

  static String m13(format) => "${Intl.select(format, {
            'eu': 'EU (dd/MM/yyyy)',
            'us': 'US (MM/dd/yyyy)',
            'swiss': 'Swiss (dd.mm.yyy)',
            'other': 'invalid',
          })}";

  static String m14(format) => "${Intl.select(format, {
            'metric': 'Metric',
            'imperial': 'Imperial',
            'other': 'invalid',
          })}";

  static String m15(type) => "${Intl.select(type, {
            'common_error_serverError':
                'Something went wrong while we were talking with our server. Please try again and if the problem persists, reach out to us for support.',
            'common_error_insufficientPermission':
                'You have insufficient permission to access this document. Please check you with your admin for adding permissions.',
            'common_error_emulatorError': 'Emulator Error.',
            'common_error_noWeatherData':
                'There is no weather data for your apiaries location.  Please check that the location is valid and if the problem persists, please contact us for support.',
            'common_error_location':
                'There was a problem when retreiving the location.  Please check the location is valid and if the problem persists, please contact us for support.',
            'common_error_missingLocationPermission':
                'You have not given permission to use the device\'s location.  In order to use this feature, please update your permissions in your settings.',
            'common_error_missingCameraPermission':
                'You have not given permission to use the device\'s camera. In order to use this feature, please update your permissions in your settings.',
            'common_error_missingGalleryPermission':
                'You have not given permission to use the device\'s pictures. In order to use this feature, please update your permissions in your settings.',
            'hive_error_invalidDocument':
                'The document is invalid or corrupt.  Please note the ID in the top right and contact us for support.',
            'common_error_missingTasks':
                'You don’t have any tasks currently on this apiary. You can add a new task by clicking the button below. If you think there is an error then try refresh the page from the menu in top right.',
            'other': 'Unknown',
          })}";

  static String m16(type) => "${Intl.select(type, {
            'common_error_serverError':
                'Something went wrong while we were talking with our server. Please try again and if the problem percists, reach out to us for support.',
            'common_error_insufficientPermission':
                'You have insufficient permission to access this document. Please check you with your admin for adding permissions.',
            'common_error_emulatorError': 'Emulator Error.',
            'common_error_missingValue': 'Please enter a value',
            'common_error_invalidEntity':
                'The selected value is invalid. Please select another.',
            'auth_error_invalidEmail': 'Please enter a valid email.',
            'auth_error_shortPassword':
                'Please use a password longer than 8 characters.',
            'auth_error_invalidPassword':
                'Please include (at least) one capital letter and number.',
            'auth_error_longDisplayName':
                'Please enter a shorter display name (max 16 char).',
            'auth_error_invalidDisplayName':
                'Please enter a valid display name. Avoid special characters and symbols.',
            'auth_error_invalidDateFormat': 'Please enter a valid date format.',
            'auth_error_invalidUnitSystem': 'Please enter a valid unit system.',
            'common_error_invalidTaskPriority':
                'Please enter a valid priority.',
            'common_error_invalidObservation':
                'Please enter a valid observation.',
            'common_error_invalidNormal':
                'Please enter a value between 0 and 1.',
            'common_error_invalidAmount':
                'Please enter a valid amount. Can not be a negative amount.',
            'common_error_invalidLogType': 'Please enter a valid log type.',
            'other': 'Unknown',
          })}";

  static String m17(type) => "${Intl.select(type, {
            'common_error_serverError': 'Server Error',
            'common_error_insufficientPermission': 'Insufficient Permissions',
            'common_error_emulatorError': 'Emulator Error',
            'common_error_noWeatherData': 'No Weather',
            'common_error_location': 'Location Error',
            'common_error_missingLocationPermission':
                'Missing Location Permissions',
            'common_error_missingCameraPermission':
                'Missing Camera Permissions',
            'common_error_missingGalleryPermission':
                'Missing Gallery Permissions',
            'hive_error_invalidDocument': 'Invalid Document',
            'common_error_missingTasks': 'Missing Tasks',
            'other': 'Unknown',
          })}";

  static String m18(bool) => "${Intl.select(bool, {
            'true': 'True',
            'false': 'False',
            'other': 'Unknown',
          })}";

  static String m19(type) => "${Intl.select(type, {
            'LOW': 'Low',
            'MEDIUM': 'Medium',
            'HIGH': 'High',
            'other': 'Unknown',
          })}";

  static String m20(page) => "${Intl.select(page, {
            'ConnectTab': 'Connect',
            'AlertsRoute': 'Alerts',
            'HardwareRoute': 'Hardware',
            'HardwareDetailsRoute': 'Details',
            'other': 'Page',
          })}";

  static String m21(units, value) => "${Intl.select(units, {
            'UNITS_METRIC': '${value} °C',
            'UNITS_IMPERIAL': '${value} °F',
            'other': '${value} °C',
          })}";

  static String m22(units, value) => "${Intl.select(units, {
            'UNITS_METRIC': '${value} Kg',
            'UNITS_IMPERIAL': '${value} lb',
            'other': '${value} Kg',
          })}";

  static String m23(count) =>
      "${Intl.plural(count, zero: 'Days', one: 'Day', other: 'Days')}";

  static String m24(count) =>
      "${Intl.plural(count, zero: 'Hours', one: 'Hour', other: 'Hours')}";

  static String m25(failure) => "${Intl.select(failure, {
            'database_error_missingUserDoc':
                'Your user document is missing, please contact us for support.',
            'database_error_missingUserSettings':
                'Your user settings is missing, please contact us for support.',
            'database_error_invalidUserDoc':
                'Your user document is invalid, please contact us for support.',
            'database_error_invalidUserSettings':
                'Your user settings is invalid, please contact us for support.',
            'common_error_permissionDenied': 'Insufficient permissions.',
            'common_error_serverError': 'Server error.',
            'other': 'Database error.',
          })}";

  static String m26(failure) => "${Intl.select(failure, {
            'database_error_invalidHiveType':
                'Invalid Hive Type, please update.',
            'other': 'Database error.',
          })}";

  static String m27(type) => "${Intl.select(type, {
            'APIBRAIN': 'SET APIARY',
            'HIVE_CONNECT': 'SET HIVE',
            'other': 'SET LOCATION',
          })}";

  static String m28(failure) => "${Intl.select(failure, {
            'hardware_error_noConnect':
                'We do not detect anything connected to this hardware.',
            'hardware_error_noCombs':
                'We do not detect any combs for this hardware.',
            'hardware_error_noTemperature':
                'We do not detect any recent temperature readings for this hardware.',
            'hardware_error_noWeight':
                'We do not detect any recent weight readings for this hardware.',
            'hardware_error_noHeartbeat':
                'We do not detect any recent heartbeats for this hardware.',
            'hardware_error_noTreatments':
                'We do not detect any recent treatments for this hardware.',
            'other': 'Auxiliary hardware error.',
          })}";

  static String m29(failure) => "${Intl.select(failure, {
            'connect_error_timeout':
                'Bluetooth timed out before finding any Vatorex hardware.  Please check that your hardware is turned on and the Bluetooth light is active.',
            'connect_error_bluetoothNotAvailable':
                'Bluetooth is not available.  Please check that your Bluetooth is turned on or that you have Bluetooth on this device.',
            'connect_error_invalidBleResp':
                'Invalid response from Bluetooth.  Please try again and if the problem persists, contact Vatorex for support.',
            'connect_error_notConnected':
                'The hardware is not connected via Bluetooth.  Please go back to the main page and try connect the hardware again.  If the problem continues, try turn off and on the hardware.',
            'connect_error_deviceIsBusy':
                'The hardware is currently busy with another action.  Please wait a few minutes and try again.',
            'connect_error_alreadyConnected':
                'The hardware is already connected.',
            'connect_error_intialization':
                'The hardware failed to initialize communication.  Please click connect to try again.  If the problem continues, try turning off and on the hardware.',
            'connect_error_deviceNotPrepared':
                'The hardware is not prepared.  Please wait a moment and try again.',
            'connect_error_bluetoothError':
                'Something went wrong while communicating with the Bluetooth.  Please check the error message below and try again.  If the problem continues, please contact us for assistance.',
            'connect_error_notFound':
                'No Vatorex hardware was found over Bluetooth.  Please make sure that the blue light is lit up on the hardware and try again.  You might need to be closer or turn off and on the hardware if the problem continues.',
            'other': 'Bluetooth error.',
          })}";

  static String m30(failure) => "${Intl.select(failure, {
            'ERROR_EEPROM': 'EEPROM',
            'ERROR_SHORT': 'SHORT',
            'ERROR_NO_SOFTWARE': 'SOFTWARE',
            'ERROR_LOAD': 'LOAD',
            'ERROR_CONTACT': 'CONTACT',
            'other': 'Hardware error.',
          })}";

  static String m31(failure) => "${Intl.select(failure, {
            'hardware_error_notConnected':
                'The hardware is not connected via Bluetooth.  You will need to first connect the device before being able to receive data and send commands.',
            'hardware_error_missingHardwareDoc':
                'The hardware document is missing, please contact us for support.',
            'hardware_error_invalidHardwareDoc':
                'The hardware document is invalid, please contact us for support.',
            'hardware_error_noHardware': 'No hardware was found in our system.',
            'hardware_error_alreadyRegistered':
                'This hardware is already registered to someone else. Please contact the owner to grant access.',
            'hardware_error_searchNotFound': 'No results.',
            'hardware_error_nothingToSearch':
                'No hardware is registered. Please register hardware before searching.',
            'hardware_error_noHardwareLocation':
                'No locations for hardware found.  Please add at least one apiary and hive to the ‹HiveManager› app.',
            'hardware_error_sameLocationSet':
                'The hardware is already located here.  Please select another location.',
            'other': 'Hardware error.',
          })}";

  static String m32(failure) => "${Intl.select(failure, {
            'hardware_error_invalidType': 'Invalid hardware type.',
            'other': 'Hardware value failure.',
          })}";

  static String m33(type) => "${Intl.select(type, {
            'APIBRAIN': 'Change Apiary',
            'HIVE_CONNECT': 'Change Hive',
            'other': 'Change Location',
          })}";

  static String m34(error) =>
      "The hardware document contains a value error: [${error}].  We\'re sorry for the issue, please contact support with this error.";

  static String m35(type) => "${Intl.select(type, {
            'APIBRAIN': '‹Apibrain›',
            'HIVE_CONNECT': '‹Hive Connect›',
            'COMB': 'Combs',
            'other': 'Invalid Hardware Type',
          })}";

  static String m36(type) => "${Intl.select(type, {
            'common_error_serverError':
                'Something went wrong while we were talking with our server. Please try again and if the problem percists, reach out to us for support.',
            'common_error_insufficientPermission':
                'You have insufficient permission to access this document. Please check you with your admin for adding permissions.',
            'common_error_emulatorError': 'Emulator Error.',
            'hive_error_invalidDocument':
                'The hive document you are looking for is invalid or corrupt.  Please note the ID in the top right and contact us for support.',
            'hive_error_missingDocument':
                'The hive document you are looking for is missing from our database.  Please note the ID in the top right and contact us for support.',
            'hive_error_missingConfig':
                'The hive is missing it\'s config file.  Please try refreshing the page and if the problem percists, reach out to us for support.',
            'hive_error_missingColony':
                'The hive does not have a colony.  You can click the button to add a new colony or select refresh from the menu if you think there was an error.',
            'hive_error_missingQueen':
                'You don’t have any alive queens inside this hive. When you requeen your hive, you can add her details by clicking the button below.',
            'hive_error_noHives':
                'You don’t seem to have any hives added yet. You can click the button to add your first hive or select refresh from the menu if you think there was an error.',
            'other': 'Unknown',
          })}";

  static String m37(type) => "${Intl.select(type, {
            'common_error_serverError': 'Server Error',
            'common_error_insufficientPermission': 'Insufficient Permissions',
            'common_error_emulatorError': 'Emulator Error',
            'hive_error_invalidDocument': 'Invalid Hive',
            'hive_error_missingDocument': 'Missing Hive',
            'hive_error_missingConfig': 'Missing Hive Config',
            'hive_error_missingColony': 'Missing Colony',
            'hive_error_missingQueen': 'Missing Queen',
            'hive_error_noHives': 'No Hives',
            'other': 'Unknown',
          })}";

  static String m38(type) => "${Intl.select(type, {
            'QUEEN_BOUGHT': 'Bought',
            'QUEEN_RAISED': 'Raised',
            'QUEEN_WILD': 'Wild',
            'QUEEN_UNKNOWN': 'Unknown origin',
            'other': 'Unknown',
          })}";

  static String m39(type) => "${Intl.select(type, {
            'APIS_MELLIFERA': 'European',
            'APIS_MELLIFERA_MELLIFERA': 'Dark',
            'APIS_MELLIFERA_LIGUSTICA': 'Italian',
            'APIS_MELLIFERA_CARNICA': 'Carniolan',
            'APIS_MELLIFERA_CAUCASICA': 'Caucasian',
            'APIS_MELLIFERA_IBERIENSIS': 'Spanish',
            'APIS_MELLIFERA_SCUTELLATA': 'Lowland',
            'APIS_MELLIFERA_MONTICOLA': 'Highland',
            'APIS_MELLIFERA_CAPENSIS': 'Cape',
            'APIS_X_BUCKFAST': 'Buckfast',
            'APIS_CERANA': 'Eastern',
            'APIS_DORSATA': 'Giant',
            'SCUTELLATA_X_LIGUSTICA': 'Africanized',
            'RACE_MIXED': 'Mixed',
            'RACE_UNKNOWN': 'Unknown',
            'other': 'Unknown',
          })}";

  static String m40(type) => "${Intl.select(type, {
            'APIS_MELLIFERA': 'Apis mellifera',
            'APIS_MELLIFERA_MELLIFERA': 'Apis mellifera mellifera',
            'APIS_MELLIFERA_LIGUSTICA': 'Apis mellifera ligustica',
            'APIS_MELLIFERA_CARNICA': 'Apis mellifera carnica',
            'APIS_MELLIFERA_CAUCASICA': 'Apis mellifera caucasica',
            'APIS_MELLIFERA_IBERIENSIS': 'Apis mellifera iberiensis',
            'APIS_MELLIFERA_SCUTELLATA': 'Apis mellifera scutellata',
            'APIS_MELLIFERA_MONTICOLA': 'Apis mellifera monticola',
            'APIS_MELLIFERA_CAPENSIS': 'Apis mellifera capensis',
            'APIS_X_BUCKFAST': 'Apis x Buckfast',
            'APIS_CERANA': 'Apis cerana',
            'APIS_DORSATA': 'Apis dorsata',
            'SCUTELLATA_X_LIGUSTICA': 'Scutellata x Ligustica',
            'RACE_MIXED': 'Mixed',
            'RACE_UNKNOWN': 'Unknown',
            'other': 'Unknown taxonomy.',
          })}";

  static String m41(type) => "${Intl.select(type, {
            'LOW': 'Low',
            'MEDIUM': 'Mid',
            'HIGH': 'High',
            'other': 'Unknown',
          })}";

  static String m42(type) => "${Intl.select(type, {
            'COLONY_NUC': 'Nuc',
            'COLONY_SWARM': 'Swarm',
            'COLONY_ARTIFICIAL_SWARM': 'Artificial Swarm',
            'COLONY_COMMERCIAL': 'Commercial',
            'COLONY_CUTOUT': 'Cutout',
            'COLONY_UNKNOWN': 'Unknown',
            'other': 'Unknown',
          })}";

  static String m43(type) => "${Intl.select(type, {
            'MAGAZINE': 'Magazine',
            'BEE_HOUSE': 'Bee house',
            'SKEP': 'Skep',
            'LOG_HIVE': 'Log hive',
            'NUC': 'Nuc',
            'TOP_BAR': 'Top Bar',
            'LONG_BOX': 'Long box',
            'BIENENKISTE': 'Bienenkiste',
            'other': 'Unknown',
          })}";

  static String m44(type) => "${Intl.select(type, {
            'HORIZONTAL': 'Horizontal',
            'VERTICAL': 'Vertical',
            'other': 'Unknown',
          })}";

  static String m45(type) => "${Intl.select(type, {
            'LANGSTROTH_STANDARD': 'Langstroth',
            'LANGSTROTH_JUMBO': 'Langstroth Jumbo',
            'BS_NATIONAL': 'BS National',
            'BS_COMMERCIAL': 'BS Commercial',
            'ROSE': 'Rose',
            'SMITH': 'Smith',
            'SEGEBERGER_BEUTE': 'Segeberger',
            'FRANKENBEUTE': 'Frankenbeute',
            'DEUTSCHES_NORMALMASS': 'German Standard',
            'DADANT_BLATT': 'Dadant Blatt',
            'DADANT_US': 'Dadant US',
            'ZANDER': 'Zadant',
            'ZANDER_ALPINE': 'Zander',
            'ZADANT': 'Zander Alpine',
            'FLOW': 'Flow',
            'MINI_PLUS': 'Mini Plus',
            'WARRE_STANDARD': 'Warre',
            'WBC_STANDARD': 'WBC Standard',
            'CDB_STANDARD': 'CDB Standard',
            'SCHWEIZER_MAGAZIN': 'Swiss Magazine',
            'HELVETICA': 'Helvetica',
            'OTHER_MAGAZINE': 'Other',
            'SLOVENIAN': 'Slovenian',
            'SCHWEIZERKASTEN': 'Swiss Standard',
            'SPUEHLER': 'Spuehler',
            'OTHER_BEE_HOUSE': 'Other',
            'SKEP_BASKET': 'Skep Basket',
            'SUN_HIVE': 'Sun Hive',
            'LOG_HIVE': 'Log Hive',
            'KENYAN': 'Kenyan Top Bar Hive',
            'BEEHAUS': 'Beehaus',
            'DARTINGTON_LONG_DEEP': 'Dartington Long Deep',
            'OTHER_TOP_BAR': 'Other',
            'LAYENS': 'Layens',
            'GOLDEN': 'Golden',
            'LANGSTROTH_LONG': 'Long Langstroth',
            'OTHER_LONG_BOX': 'Other',
            'BIENENKISTE': 'Bienenkiste',
            'DADANT_NUC': 'Dadant Nuc',
            'LANGSTROTH_NUC': 'Langstroth Nuc',
            'BS_NATIONAL_NUC': 'BS National Nuc',
            'BS_COMMERCIAL_NUC': 'BS Commercial Nuc',
            'SMITH_NUC': 'Smith Nuc',
            'MINI_NUC': 'Mini Nuc',
            'OTHER_NUC': 'Other',
            'other': 'Unknown',
          })}";

  static String m46(type) => "${Intl.select(type, {
            'RED': 'Red',
            'WHITE': 'White',
            'BLUE': 'Blue',
            'GREEN': 'Green',
            'YELLOW': 'Yellow',
            'other': 'Unknown',
          })}";

  static String m47(count) =>
      "${Intl.plural(count, zero: '${count} Frames', one: '${count} Frame', other: '${count} Frames')}";

  static String m48(type) => "${Intl.select(type, {
            'common_error_serverError':
                'Something went wrong while we were talking with our server. Please try again and if the problem persists, reach out to us for support.',
            'common_error_insufficientPermission':
                'You have insufficient permission to access this document. Please check you with your admin for adding permissions.',
            'common_error_emulatorError': 'Emulator Error.',
            'log_error_noLogs':
                'There are no logs yet for this apiary. You can add your first log by clicking the button below. If you think there is an error then try refresh the page from the menu in top right.',
            'log_error_invalidDocument':
                'The log document you are looking for is invalid or corrupt.  Please note the ID in the top right and contact us for support.',
            'log_error_missingDocument':
                'The log document you are looking for is missing from our database.  Please note the ID in the top right and contact us for support.',
            'other': 'Unknown',
          })}";

  static String m49(method, amount) => "${Intl.select(method, {
            'STICKY_BOARD': '${amount} varroa (/day)',
            'other': '${amount} varroa (/100 bees)',
          })}";

  static String m50(apiary) => "${apiary} created";

  static String m51(apiary) => "${apiary} deleted";

  static String m52(hive) => "${hive} created";

  static String m53(hive) => "${hive} deleted";

  static String m54(hive, apiary) => "${hive} moved to ${apiary}";

  static String m55(queen) => "${queen} created";

  static String m56(queen) => "${queen} deleted";

  static String m57(queen) => "${queen} died";

  static String m58(queen) => "${queen} moved";

  static String m59(oldQueen, queen) => "${oldQueen} superseded by ${queen}";

  static String m60(severity) => "Robbing ${severity}";

  static String m61(caught) => "Swarmed ${caught}";

  static String m62(method) => "Treatment ${method}";

  static String m63(severity) => "Varroa count ${severity}";

  static String m64(type) => "Weather note ${type}";

  static String m65(type) => "${Intl.select(type, {
            'common_error_serverError': 'Server Error',
            'common_error_insufficientPermission': 'Insufficient Permissions',
            'common_error_emulatorError': 'Emulator Error',
            'log_error_noLogs': 'No Logs',
            'log_error_invalidDocument': 'Invalid Log',
            'log_error_missingDocument': 'Missing Log',
            'other': 'Unknown',
          })}";

  static String m66(type) => "${Intl.select(type, {
            'USER_CREATED': 'User Created',
            'USER_UPDATED': 'User Updated',
            'APIARY_CREATED': 'Apiary Created',
            'APIARY_UPDATED': 'Apiary Updated',
            'APIARY_DELETED': 'Apiary Deleted',
            'HIVE_CREATED': 'Hive Created',
            'HIVE_MOVED': 'Hive Moved',
            'HIVE_UPDATED': 'Hive Updated',
            'HIVE_DELETED': 'Hive Deleted',
            'HARDWARE_REGISTERED': 'Hardware Registered',
            'COLONY_CREATED': 'Colony Created',
            'COLONY_UPDATED': 'Colony Updated',
            'COLONY_MOVED': 'Colony Moved',
            'COLONY_DELETED': 'Colony Deleted',
            'COLONY_DIED': 'Colony Died',
            'QUEEN_CREATED': 'Queen Created',
            'QUEEN_DELETED': 'Queen Deleted',
            'QUEEN_UPDATED': 'Queen Updated',
            'QUEEN_MOVED': 'Queen Moved',
            'QUEEN_SUPERSEDED': 'Queen Superseded',
            'QUEEN_DIED': 'Queen Died',
            'INSPECTION_CREATED': 'Inspection Created',
            'INSPECTION_UPDATED': 'Inspection Updated',
            'INSPECTION_DELETED': 'Inspection Deleted',
            'FEEDING_CREATED': 'Feeding Created',
            'FEEDING_UPDATED': 'Feeding Updated',
            'FEEDING_DELETED': 'Feeding Deleted',
            'HARVEST_CREATED': 'Harvest Created',
            'HARVEST_UPDATED': 'Harvest Updated',
            'HARVEST_DELETED': 'Harvest Deleted',
            'TASK_CREATED': 'Task Created',
            'TASK_COMPLETED': 'Task Completed',
            'TASK_ARCHIVED': 'Task Archived',
            'TASK_DELETED': 'Task Deleted',
            'IMPORTED': 'Document Imported',
            'ROBBING': 'Robbing',
            'WEATHER': 'Weather',
            'VARROA_COUNT': 'Varroa Count',
            'TREATMENT': 'Treatment',
            'SWARMED': 'Swarmed',
            'NOTE': 'Note',
            'other': 'Unknown',
          })}";

  static String m67(type) => "${Intl.select(type, {
            'CLOTH_ABOVE': 'Cloth Above',
            'CLOTH_BELOW': 'Cloth Below',
            'LIE_BAG': 'Lie bag',
            'NASSENHEIDER': 'Nassenheider disperser',
            'SHELL': 'Shell',
            'VAPORIZE': 'Vaporizing',
            'SPRAY': 'Spraying',
            'TRICKLE': 'Trickling',
            'GEL_STRIP': 'Gel strip',
            'PLATELETS': 'Platelets',
            'CONTACT_STRIP': 'Contact strip',
            'VARROA_SOLUTION': 'Vatorex Varroa Kit',
            'VARROA_CONTROLLER': 'Varroa Controller',
            'VARROA_KILL': 'Varroa Kill II',
            'MITE_ZAPPER': 'Mite Zapper',
            'BIENENSAUNA': 'Bienensauna',
            'PATTIES': 'Patties',
            'TRAP': 'Trap',
            'UNKNOWN': 'Unknown',
            'other': 'Unknown',
          })}";

  static String m68(type) => "${Intl.select(type, {
            'AMITRAZ': 'Amitraz',
            'B401': 'B402',
            'COUMAPHOS': 'Coumaphos',
            'FLUVALINATE': 'Fluvalinate',
            'FORMIC_ACID': 'Formic acid',
            'FLUMERTHRIN': 'Flumerthrin',
            'FUMIDIL_B': 'Fumidil-B',
            'HOPS_BETA_ACID': 'Hops beta acid',
            'LACTIC_ACID': 'Lactic acid',
            'MENTHOL': 'Menthol',
            'OXALIC_ACID': 'Oxalic acid',
            'PARADICHLOROBENZENE': 'Paradichlorobenzene',
            'PERMETHRIN': 'Permethrin',
            'TERRAMYCIN': 'Terramycin',
            'THYMOL': 'Thymol',
            'TYLOSIN': 'Tylosin',
            'HEAT': 'Heat treatment',
            'DIATOMACSIOUS_EARTH': 'Diatomacsious Earth',
            'DRONE_COMB_TRAPS': 'Drone comb traps',
            'MITE_TRAPS': 'Mite traps',
            'MOTH_TRAPS': 'Moth traps',
            'BEETLE_TRAPS': 'Beetle traps',
            'OTHER': 'Other',
            'other': 'Unknown',
          })}";

  static String m69(type) => "${Intl.select(type, {
            'STICKY_BOARD': 'Sticky Board',
            'POWDERED_SUGAR': 'Powdered Sugar',
            'ALCOHOL_WASH': 'Alcohol Wash',
            'ETHER_ROLL': 'Ether Roll',
            'other': 'Unknown',
          })}";

  static String m70(type) => "${Intl.select(type, {
            'DARK_CLOUD': 'Dark Cloud',
            'FOGGY': 'Foggy',
            'SUN': 'Sunny',
            'PARTIAL_SHOWERS': 'Partial Showers',
            'PARTIAL_SUN': 'Partial Sun',
            'SHADED': 'Shaded',
            'RAIN': 'Rainy',
            'SNOW': 'Snowy',
            'STORM': 'Stormy',
            'WIND': 'Windy',
            'other': 'Unknown',
          })}";

  static String m71(failure) => "${Intl.select(failure, {
            'common_serverError': 'Server error.',
            'common_permissionDenied': 'Insufficient permissions.',
            'other': 'Push notification error.',
          })}";

  static String m72(failure) => "${Intl.select(failure, {
            'search_error_nFCNotAvailable':
                'NFC is not available on your device.',
            'search_error_nFCNotFound': 'No NFC tag was found.',
            'search_error_timeout': 'NFC timed out. Please try again.',
            'search_error_invalidNFC':
                'NFC tag is not recognized, make sure it is a Vatorex hardware.',
            'search_error_nDEFNotWritten':
                'NFC tag is not written yet, please reset the hardware. If the issue persists, contact us for support.',
            'search_error_noCachedMessage':
                'NFC tag was written incorrectly, please reset the hardware. If the issue persists, contact us for support.',
            'other': 'NFC search error.',
          })}";

  static String m73(tag) =>
      "We found an NFC tag!\\nTag: ${tag}\\n  Please wait while we take you to the hardware details page.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "action_text_FeedType": m0,
        "action_text_apiaryType": m1,
        "action_text_disease": m2,
        "action_text_exposureType": m3,
        "action_text_honeyType": m4,
        "actions_error_actionFailure": m5,
        "actions_error_feedingFailureTitle":
            MessageLookupByLibrary.simpleMessage("Feeding Failure"),
        "actions_error_harvestFailureMessage": MessageLookupByLibrary.simpleMessage(
            "Something went wrong while getting the harvests for this hive.  Please check the error below and if the problem continues, contact us for support."),
        "actions_error_harvestFailureTitle":
            MessageLookupByLibrary.simpleMessage("Harvest Failure"),
        "actions_error_inspectionFailureMessage":
            MessageLookupByLibrary.simpleMessage(
                "Something went wrong while getting the inspections for this hive.  Please check the error below and if the problem continues, contact us for support."),
        "actions_error_inspectionFailureTitle":
            MessageLookupByLibrary.simpleMessage("Inspection Failure"),
        "actions_error_noFeedingsMessage": MessageLookupByLibrary.simpleMessage(
            "You don’t have any feedings for this hive yes.  Add your first feeding in order to update your hive."),
        "actions_error_noInspectionsMessage": MessageLookupByLibrary.simpleMessage(
            "You don’t have any inspections for this hive.  Add your first inspection in order to see the hives status."),
        "actions_form_activityHelper": MessageLookupByLibrary.simpleMessage(
            "How much foraging activity is coming out the front of the hive?"),
        "actions_form_activityTitle":
            MessageLookupByLibrary.simpleMessage("Activity"),
        "actions_form_addFeeding":
            MessageLookupByLibrary.simpleMessage("ADD FEEDING"),
        "actions_form_addHarvest":
            MessageLookupByLibrary.simpleMessage("ADD HARVEST"),
        "actions_form_amount": MessageLookupByLibrary.simpleMessage("Amount"),
        "actions_form_amountOptional":
            MessageLookupByLibrary.simpleMessage("Amount (Optional)"),
        "actions_form_boxesAmountOptional":
            MessageLookupByLibrary.simpleMessage("Boxes (Optional)"),
        "actions_form_diseaseHelper": MessageLookupByLibrary.simpleMessage(
            "Select all pests/diseases that were found during the inspection."),
        "actions_form_diseaseTitle":
            MessageLookupByLibrary.simpleMessage("Pests/Diseases"),
        "actions_form_editFeeding":
            MessageLookupByLibrary.simpleMessage("EDIT FEEDING"),
        "actions_form_editHarvest":
            MessageLookupByLibrary.simpleMessage("EDIT HARVEST"),
        "actions_form_editInspectionTitle":
            MessageLookupByLibrary.simpleMessage("Edit Inspection"),
        "actions_form_edtiFeeding":
            MessageLookupByLibrary.simpleMessage("Edit Feeding"),
        "actions_form_feedAmountHelper": MessageLookupByLibrary.simpleMessage(
            "Enter the amount of feed given to the bees"),
        "actions_form_feedType":
            MessageLookupByLibrary.simpleMessage("Feed Type"),
        "actions_form_feedTypeHelper": MessageLookupByLibrary.simpleMessage(
            "Select the type of feed given to your bees"),
        "actions_form_feedingDateHelper": MessageLookupByLibrary.simpleMessage(
            "Select the date of the feeding"),
        "actions_form_feedingPictureHelper": MessageLookupByLibrary.simpleMessage(
            "Take a picture or select multiple images to include with your feeding."),
        "actions_form_feedingProbiotics":
            MessageLookupByLibrary.simpleMessage("With Probiotics"),
        "actions_form_framesAmountHelper": MessageLookupByLibrary.simpleMessage(
            "Enter the amount of frames on you setup"),
        "actions_form_framesAmountOptional":
            MessageLookupByLibrary.simpleMessage("Frames (Optional)"),
        "actions_form_harvestBoxesAmountHelper":
            MessageLookupByLibrary.simpleMessage(
                "Enter the amount of boxes on you setup"),
        "actions_form_harvestDateHelper": MessageLookupByLibrary.simpleMessage(
            "Select the date of the harvest"),
        "actions_form_harvestHoneyAmountHelper":
            MessageLookupByLibrary.simpleMessage(
                "Enter the amount of honey harvested"),
        "actions_form_harvestPictureHelper": MessageLookupByLibrary.simpleMessage(
            "Take a picture or select multiple images to include with your harvest."),
        "actions_form_harvestWaterContentHelper":
            MessageLookupByLibrary.simpleMessage(
                "Enter the percentage of water"),
        "actions_form_honeyType":
            MessageLookupByLibrary.simpleMessage("Honey Type"),
        "actions_form_honeyTypeHelper":
            MessageLookupByLibrary.simpleMessage("Honey Type of the harvest"),
        "actions_form_inspectionDateHelper":
            MessageLookupByLibrary.simpleMessage(
                "Select the date of the inspection."),
        "actions_form_inspectionNoteHelper": MessageLookupByLibrary.simpleMessage(
            "Enter any additional notes of observations from the inspection."),
        "actions_form_inspectionPictureHelper":
            MessageLookupByLibrary.simpleMessage(
                "Take a picture or select multiple images to include with your inspection."),
        "actions_form_moodHelper": MessageLookupByLibrary.simpleMessage(
            "How aggressive/prodective are the bees?"),
        "actions_form_moodTitle": MessageLookupByLibrary.simpleMessage("Mood"),
        "actions_form_newFeeding":
            MessageLookupByLibrary.simpleMessage("New Feeding"),
        "actions_form_newHarvest":
            MessageLookupByLibrary.simpleMessage("New Harvest"),
        "actions_form_newInspectionTitle":
            MessageLookupByLibrary.simpleMessage("New Inspection"),
        "actions_form_noteTitle": MessageLookupByLibrary.simpleMessage("Note"),
        "actions_form_obsHelper": MessageLookupByLibrary.simpleMessage(
            "Select what you saw during the inspection.  Long press to get descriptions of each icon."),
        "actions_form_observationsTitle":
            MessageLookupByLibrary.simpleMessage("Observations"),
        "actions_form_patternHelper": MessageLookupByLibrary.simpleMessage(
            "How solid does the brood pattern look?"),
        "actions_form_patternTitle":
            MessageLookupByLibrary.simpleMessage("Pattern"),
        "actions_form_storageTitle":
            MessageLookupByLibrary.simpleMessage("Storage"),
        "actions_form_strengthHelper": MessageLookupByLibrary.simpleMessage(
            "How strong is the colony? How many full frames of bee?"),
        "actions_form_strengthTitle":
            MessageLookupByLibrary.simpleMessage("Strength"),
        "actions_form_strorageHelper": MessageLookupByLibrary.simpleMessage(
            "How much honey stores do the colony have?"),
        "actions_form_waterContentOptional":
            MessageLookupByLibrary.simpleMessage("Water Content (Optional)"),
        "actions_menu_editFeeding":
            MessageLookupByLibrary.simpleMessage("Edit Feeding"),
        "actions_menu_editHarvest":
            MessageLookupByLibrary.simpleMessage("Edit Harvest"),
        "actions_menu_editInspection":
            MessageLookupByLibrary.simpleMessage("Edit Inspection"),
        "actions_nav_Harvest": MessageLookupByLibrary.simpleMessage("Harvest"),
        "actions_nav_feeding": MessageLookupByLibrary.simpleMessage("Feeding"),
        "actions_nav_feedings":
            MessageLookupByLibrary.simpleMessage("Feedings"),
        "actions_nav_harvests":
            MessageLookupByLibrary.simpleMessage("Harvests"),
        "actions_nav_inspection":
            MessageLookupByLibrary.simpleMessage("Inspection"),
        "actions_nav_inspections":
            MessageLookupByLibrary.simpleMessage("Inspections"),
        "actions_snack_actionFailure": m6,
        "actions_snack_feedingCreated":
            MessageLookupByLibrary.simpleMessage("Feeding Created"),
        "actions_snack_feedingSaved":
            MessageLookupByLibrary.simpleMessage("Feeding Saved"),
        "actions_snack_harvestCreated":
            MessageLookupByLibrary.simpleMessage("Harvest Created"),
        "actions_snack_harvestDeleted":
            MessageLookupByLibrary.simpleMessage("Harvest Deleted"),
        "actions_snack_harvestSaved":
            MessageLookupByLibrary.simpleMessage("Harvest Saved"),
        "actions_snack_inspectionCreated":
            MessageLookupByLibrary.simpleMessage("Inspection Created"),
        "actions_snack_inspectionDeleted":
            MessageLookupByLibrary.simpleMessage("Inspection Deleted"),
        "actions_snack_inspectionSaved":
            MessageLookupByLibrary.simpleMessage("Inspection Saved"),
        "actions_table_dateHeader":
            MessageLookupByLibrary.simpleMessage("Date"),
        "actions_table_moodHeader":
            MessageLookupByLibrary.simpleMessage("Mood"),
        "actions_table_storageHeader":
            MessageLookupByLibrary.simpleMessage("Storage"),
        "actions_table_strengthHeader":
            MessageLookupByLibrary.simpleMessage("Strength"),
        "actions_text_obsCappedBrood":
            MessageLookupByLibrary.simpleMessage("Capped Brood"),
        "actions_text_obsEggs": MessageLookupByLibrary.simpleMessage("Eggs"),
        "actions_text_obsLarva": MessageLookupByLibrary.simpleMessage("Larva"),
        "actions_text_obsQueen": MessageLookupByLibrary.simpleMessage("Queen"),
        "actions_text_obsQueenCell":
            MessageLookupByLibrary.simpleMessage("Queen Cell"),
        "actions_word_diseasesSection":
            MessageLookupByLibrary.simpleMessage("DISEASE(S)"),
        "actions_word_observationSection":
            MessageLookupByLibrary.simpleMessage("OBSERVATIONS"),
        "alert_dialog_delete_message": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to delete this item?"),
        "alert_dialog_delete_title":
            MessageLookupByLibrary.simpleMessage("Confirm Delete"),
        "alerts_card_errorTitle":
            MessageLookupByLibrary.simpleMessage("Alerts Failure"),
        "alerts_error_alertsFailure": m7,
        "alerts_error_cardTitle": m8,
        "alerts_message_noAlerts": MessageLookupByLibrary.simpleMessage(
            "You have no current alerts.  When a new issue arises with one of your hardware, you will receive a push notification and a message."),
        "alerts_title_noAlerts":
            MessageLookupByLibrary.simpleMessage("No Alerts"),
        "apiaries_page_noApiaries": MessageLookupByLibrary.simpleMessage(
            "You don’t seem to have any apiaries added yet.  You can click the button to add your first apiary or select refresh from the menu if you think there was an error."),
        "apiaries_page_title_noApiaries":
            MessageLookupByLibrary.simpleMessage("No apiaries yet."),
        "apiary_button_addApiary":
            MessageLookupByLibrary.simpleMessage("ADD APIARY"),
        "apiary_button_addHive":
            MessageLookupByLibrary.simpleMessage("ADD HIVE"),
        "apiary_error_apiaryFailure": m9,
        "apiary_error_apiaryFailureTitle":
            MessageLookupByLibrary.simpleMessage("Apiary Failure"),
        "apiary_error_missingConfigMessage": MessageLookupByLibrary.simpleMessage(
            "This apiary is missing a config file.  You might need to refresh the page with the button below and if the problem continues please contact us for support."),
        "apiary_error_missingConfigTitle":
            MessageLookupByLibrary.simpleMessage("Missing Config."),
        "apiary_error_noHivesMessage": MessageLookupByLibrary.simpleMessage(
            "This apiary is currently empty.  If you would like to add your first hive, click the button below.  If you think there is an error then try refresh the page from the menu in top right."),
        "apiary_error_noHivesTitle":
            MessageLookupByLibrary.simpleMessage("No Hives."),
        "apiary_exposure": MessageLookupByLibrary.simpleMessage("Exposure"),
        "apiary_form_apiaryExposureHelper":
            MessageLookupByLibrary.simpleMessage(
                "What kind of Sun Exposure your apiary has"),
        "apiary_form_apiaryLocationHelper":
            MessageLookupByLibrary.simpleMessage("Location of your Apiary"),
        "apiary_form_apiaryNameHelper":
            MessageLookupByLibrary.simpleMessage("Name that will be displayed"),
        "apiary_form_apiarySerialHelper": MessageLookupByLibrary.simpleMessage(
            "Optional Field. Serial number of the apiary"),
        "apiary_form_apiaryTypeHelper":
            MessageLookupByLibrary.simpleMessage("Type of your Apiary"),
        "apiary_form_locationHelper": MessageLookupByLibrary.simpleMessage(
            "On the map, tap the location of the Apiary.  Use the search bar if not around your current location."),
        "apiary_form_locationSetTo":
            MessageLookupByLibrary.simpleMessage("Location set to:"),
        "apiary_form_useCurrentLocation":
            MessageLookupByLibrary.simpleMessage("Use current Location"),
        "apiary_menu_addApiary":
            MessageLookupByLibrary.simpleMessage("Add Apiary"),
        "apiary_menu_addHive": MessageLookupByLibrary.simpleMessage("Add Hive"),
        "apiary_menu_addLog": MessageLookupByLibrary.simpleMessage("Add Log"),
        "apiary_menu_addTask": MessageLookupByLibrary.simpleMessage("Add Task"),
        "apiary_menu_allApiaries":
            MessageLookupByLibrary.simpleMessage("All Apiaries"),
        "apiary_menu_edit": MessageLookupByLibrary.simpleMessage("Edit Apiary"),
        "apiary_message_noApiaryMessage": MessageLookupByLibrary.simpleMessage(
            "You don’t seem to have any apiaries added yet.  You can click the button to add your first apiary or select refresh from the menu if you think there was an error."),
        "apiary_message_noApiaryTitle":
            MessageLookupByLibrary.simpleMessage("No apiaries yet."),
        "apiary_new_apiary": MessageLookupByLibrary.simpleMessage("New Apiary"),
        "apiary_snack_apiaryCreated":
            MessageLookupByLibrary.simpleMessage("Apiary Created"),
        "apiary_snack_apiaryRemoved":
            MessageLookupByLibrary.simpleMessage("Apiary deleted"),
        "apiary_snack_apiarySaved":
            MessageLookupByLibrary.simpleMessage("Apiary Saved"),
        "apiary_sun_exposure_full_sun":
            MessageLookupByLibrary.simpleMessage("Sunny"),
        "apiary_sun_exposure_half_shaded":
            MessageLookupByLibrary.simpleMessage("Partial"),
        "apiary_sun_exposure_shaded":
            MessageLookupByLibrary.simpleMessage("Shaded"),
        "apiary_title_apiaryDetails":
            MessageLookupByLibrary.simpleMessage("Apiary Detail"),
        "apiary_type": MessageLookupByLibrary.simpleMessage("Type"),
        "apiary_type_mixed": MessageLookupByLibrary.simpleMessage("Mixed"),
        "apiary_type_rural": MessageLookupByLibrary.simpleMessage("Rural"),
        "apiary_type_urban": MessageLookupByLibrary.simpleMessage("Urban"),
        "apiary_weather_forecastTitle":
            MessageLookupByLibrary.simpleMessage("Forecast"),
        "apiary_word_hivesSection":
            MessageLookupByLibrary.simpleMessage("HIVES"),
        "auth_button_appleLogin":
            MessageLookupByLibrary.simpleMessage("Sign in with Apple"),
        "auth_button_changePassword":
            MessageLookupByLibrary.simpleMessage("CHANGE PASSWORD"),
        "auth_button_createAccount":
            MessageLookupByLibrary.simpleMessage("CREATE ACCOUNT"),
        "auth_button_deleteAccount":
            MessageLookupByLibrary.simpleMessage("DELETE ACCOUNT"),
        "auth_button_editAccount":
            MessageLookupByLibrary.simpleMessage("EDIT ACCOUNT"),
        "auth_button_facebookLogin":
            MessageLookupByLibrary.simpleMessage("Sign in with Facebook"),
        "auth_button_googleLogin":
            MessageLookupByLibrary.simpleMessage("Sign in with Google"),
        "auth_button_login": MessageLookupByLibrary.simpleMessage("LOGIN"),
        "auth_button_passwordlessLogin":
            MessageLookupByLibrary.simpleMessage("Paswordless Login"),
        "auth_button_resetPassword":
            MessageLookupByLibrary.simpleMessage("SEND EMAIL"),
        "auth_button_restPassword":
            MessageLookupByLibrary.simpleMessage("Forgotten?"),
        "auth_dialog_deleteAccountContent": MessageLookupByLibrary.simpleMessage(
            "Are you sure? Once you confirm you will not be able to undo it."),
        "auth_dialog_deleteAccountTitle":
            MessageLookupByLibrary.simpleMessage("Delete Account?"),
        "auth_error_authFailure": m10,
        "auth_error_missingTerms": MessageLookupByLibrary.simpleMessage(
            "You must accept the T&C\'s before continuing."),
        "auth_error_valueFailure": m11,
        "auth_form_addressHelper": MessageLookupByLibrary.simpleMessage(
            "Optionally enter your address."),
        "auth_form_bioHelper": MessageLookupByLibrary.simpleMessage(
            "Enter a short description of yourself."),
        "auth_form_displayNameHelper": MessageLookupByLibrary.simpleMessage(
            "Enter a display name. (max 24 char)"),
        "auth_form_firstNameHelper":
            MessageLookupByLibrary.simpleMessage("Enter your first name."),
        "auth_form_lastNameHelper":
            MessageLookupByLibrary.simpleMessage("Enter your last name."),
        "auth_form_phoneHelper": MessageLookupByLibrary.simpleMessage(
            "Optionally enter your phone number."),
        "auth_menu_editAccount":
            MessageLookupByLibrary.simpleMessage("Edit Account"),
        "auth_menu_linkAccounts":
            MessageLookupByLibrary.simpleMessage("Link Accounts"),
        "auth_menu_settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "auth_message_createAccountSuccess":
            MessageLookupByLibrary.simpleMessage("Success! Account created"),
        "auth_message_emailSent":
            MessageLookupByLibrary.simpleMessage("Success! Sent Email"),
        "auth_message_loginSuccess":
            MessageLookupByLibrary.simpleMessage("Success! Logged in"),
        "auth_route_createAccount": MessageLookupByLibrary.simpleMessage(
            "Don’t have an account? Register"),
        "auth_route_login": MessageLookupByLibrary.simpleMessage(
            "Already have an account? Login"),
        "auth_snack_authFailure": m12,
        "auth_switch_termsAndService": MessageLookupByLibrary.simpleMessage(
            "I have read the Vatorex Terms of Service and Privacy Policy and agree to them."),
        "auth_text_dateFormat": m13,
        "auth_text_resetPasswordInstructions": MessageLookupByLibrary.simpleMessage(
            "Please enter the email associated with your account and press the \"Send Email\" button.  We will send you an email with the change password link."),
        "auth_text_unitSystem": m14,
        "auth_title_accountPage":
            MessageLookupByLibrary.simpleMessage("Account"),
        "auth_title_address": MessageLookupByLibrary.simpleMessage("Address"),
        "auth_title_biography": MessageLookupByLibrary.simpleMessage("Bio"),
        "auth_title_createAccountPage":
            MessageLookupByLibrary.simpleMessage("Create Account"),
        "auth_title_dateFormat":
            MessageLookupByLibrary.simpleMessage("Date Format"),
        "auth_title_firstName":
            MessageLookupByLibrary.simpleMessage("First Name"),
        "auth_title_lastName":
            MessageLookupByLibrary.simpleMessage("Last Name"),
        "auth_title_loginPage": MessageLookupByLibrary.simpleMessage("Login"),
        "auth_title_phone":
            MessageLookupByLibrary.simpleMessage("Phone Number"),
        "auth_title_resetPasswordPage":
            MessageLookupByLibrary.simpleMessage("Reset Password"),
        "auth_title_unitSystem":
            MessageLookupByLibrary.simpleMessage("Unit System"),
        "button_add_apiary": MessageLookupByLibrary.simpleMessage("Add Apiary"),
        "common_button_account":
            MessageLookupByLibrary.simpleMessage("Account"),
        "common_button_addTask":
            MessageLookupByLibrary.simpleMessage("ADD TASK"),
        "common_button_alerts": MessageLookupByLibrary.simpleMessage("Alerts"),
        "common_button_connect":
            MessageLookupByLibrary.simpleMessage("CONNECT"),
        "common_button_contact":
            MessageLookupByLibrary.simpleMessage("Contact"),
        "common_button_delete": MessageLookupByLibrary.simpleMessage("DELETE"),
        "common_button_download":
            MessageLookupByLibrary.simpleMessage("DOWNLOAD"),
        "common_button_edit": MessageLookupByLibrary.simpleMessage("EDIT"),
        "common_button_file": MessageLookupByLibrary.simpleMessage("FILE"),
        "common_button_files": MessageLookupByLibrary.simpleMessage("FILE(S)"),
        "common_button_hardware":
            MessageLookupByLibrary.simpleMessage("Hardware"),
        "common_button_help": MessageLookupByLibrary.simpleMessage("Help"),
        "common_button_home": MessageLookupByLibrary.simpleMessage("HOME"),
        "common_button_newFeatures":
            MessageLookupByLibrary.simpleMessage("New Features"),
        "common_button_photo": MessageLookupByLibrary.simpleMessage("PHOTO"),
        "common_button_reportIssue":
            MessageLookupByLibrary.simpleMessage("REPORT ISSUE"),
        "common_button_retry": MessageLookupByLibrary.simpleMessage("REFRESH"),
        "common_button_save": MessageLookupByLibrary.simpleMessage("SAVE"),
        "common_button_search": MessageLookupByLibrary.simpleMessage("SEARCH"),
        "common_button_settings":
            MessageLookupByLibrary.simpleMessage("SETTINGS"),
        "common_button_signOut":
            MessageLookupByLibrary.simpleMessage("SIGN OUT"),
        "common_button_tasks": MessageLookupByLibrary.simpleMessage("TASKS"),
        "common_error_commonFailure": m15,
        "common_error_noFeedingsTitle":
            MessageLookupByLibrary.simpleMessage("No Feedings"),
        "common_error_noHarvestsMessage": MessageLookupByLibrary.simpleMessage(
            "You don’t have any harvests for this hive yet.  Add your first harvest in order to update your hive."),
        "common_error_noHarvestsTitle":
            MessageLookupByLibrary.simpleMessage("No Harvests"),
        "common_error_noInspectionsTitle":
            MessageLookupByLibrary.simpleMessage("No Inspections"),
        "common_error_noStatusTitle":
            MessageLookupByLibrary.simpleMessage("No Status"),
        "common_error_permissionTitle":
            MessageLookupByLibrary.simpleMessage("Insufficient Permission"),
        "common_error_serverTitle":
            MessageLookupByLibrary.simpleMessage("Server Error"),
        "common_error_valueFailure": m16,
        "common_form_dateTitle": MessageLookupByLibrary.simpleMessage("Date"),
        "common_form_editTaskTitle":
            MessageLookupByLibrary.simpleMessage("Edit Task"),
        "common_form_newTaskTitle":
            MessageLookupByLibrary.simpleMessage("New Task"),
        "common_form_pictureTitle":
            MessageLookupByLibrary.simpleMessage("Picture"),
        "common_form_picturesTitle":
            MessageLookupByLibrary.simpleMessage("Picture(s)"),
        "common_form_severityTitle":
            MessageLookupByLibrary.simpleMessage("Severity"),
        "common_form_taskDescriptionHelper":
            MessageLookupByLibrary.simpleMessage(
                "Write a short description of the task."),
        "common_form_taskDescriptionTitle":
            MessageLookupByLibrary.simpleMessage("Task Description"),
        "common_form_taskDueDateHelper": MessageLookupByLibrary.simpleMessage(
            "Select the due date for the task."),
        "common_form_taskDueDateTitle":
            MessageLookupByLibrary.simpleMessage("Due Date"),
        "common_form_taskPriorityHelper": MessageLookupByLibrary.simpleMessage(
            "Select the priority of the task."),
        "common_form_taskPriorityTitle":
            MessageLookupByLibrary.simpleMessage("Priority"),
        "common_input_showArchived":
            MessageLookupByLibrary.simpleMessage("Show Archived"),
        "common_message_contact":
            MessageLookupByLibrary.simpleMessage("Need more help? contact us"),
        "common_message_failureTitle":
            MessageLookupByLibrary.simpleMessage("Common Failure"),
        "common_message_missingId":
            MessageLookupByLibrary.simpleMessage("Missing ID"),
        "common_message_noTasksMessage": MessageLookupByLibrary.simpleMessage(
            "You don’t have any tasks currently on this apiary.  You can add a new task by clicking the button below."),
        "common_message_noTasksTitle":
            MessageLookupByLibrary.simpleMessage("No Tasks"),
        "common_message_noUserTasksMessage": MessageLookupByLibrary.simpleMessage(
            "You don’t have any tasks currently on this apiary.  You can navigate to your apiary or hive and click the task tab to add tasks."),
        "common_nav_tasksTitle": MessageLookupByLibrary.simpleMessage("Tasks"),
        "common_snack_commonFailure": m17,
        "common_snack_dismiss": MessageLookupByLibrary.simpleMessage("Dismiss"),
        "common_snack_taskCreated":
            MessageLookupByLibrary.simpleMessage("Task Created"),
        "common_snack_taskDeleted":
            MessageLookupByLibrary.simpleMessage("Task Deleted"),
        "common_snack_taskSaved":
            MessageLookupByLibrary.simpleMessage("Task Saved"),
        "common_table_contact": MessageLookupByLibrary.simpleMessage("Contact"),
        "common_table_controls": MessageLookupByLibrary.simpleMessage("CTRL"),
        "common_table_device": MessageLookupByLibrary.simpleMessage("Device"),
        "common_table_error": MessageLookupByLibrary.simpleMessage("ERR."),
        "common_table_errors": MessageLookupByLibrary.simpleMessage("Errors"),
        "common_table_hiveId": MessageLookupByLibrary.simpleMessage("HiveID"),
        "common_table_registered":
            MessageLookupByLibrary.simpleMessage("Registered"),
        "common_table_treatment": MessageLookupByLibrary.simpleMessage("Treat"),
        "common_text_boolean": m18,
        "common_text_failed": MessageLookupByLibrary.simpleMessage("Failed!"),
        "common_text_initialize":
            MessageLookupByLibrary.simpleMessage("Initializing..."),
        "common_text_loading":
            MessageLookupByLibrary.simpleMessage("Loading..."),
        "common_text_missingData":
            MessageLookupByLibrary.simpleMessage("No Sensor Data..."),
        "common_text_severity": m19,
        "common_text_weather": MessageLookupByLibrary.simpleMessage("Weather"),
        "common_title_pages": m20,
        "common_units_temperatureValue": m21,
        "common_units_weightValue": m22,
        "common_word_Amt": MessageLookupByLibrary.simpleMessage("AMT"),
        "common_word_activity":
            MessageLookupByLibrary.simpleMessage("Activity"),
        "common_word_allTime": MessageLookupByLibrary.simpleMessage("All Time"),
        "common_word_amount": MessageLookupByLibrary.simpleMessage("Amount"),
        "common_word_apiary": MessageLookupByLibrary.simpleMessage("Apiary"),
        "common_word_average": MessageLookupByLibrary.simpleMessage("Average"),
        "common_word_bees": MessageLookupByLibrary.simpleMessage("Bees"),
        "common_word_cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "common_word_caught": MessageLookupByLibrary.simpleMessage("Caught"),
        "common_word_colonies":
            MessageLookupByLibrary.simpleMessage("Colonies"),
        "common_word_colour": MessageLookupByLibrary.simpleMessage("Colour"),
        "common_word_commands":
            MessageLookupByLibrary.simpleMessage("Commands"),
        "common_word_confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "common_word_connection":
            MessageLookupByLibrary.simpleMessage("Connection"),
        "common_word_controls":
            MessageLookupByLibrary.simpleMessage("Controls"),
        "common_word_date": MessageLookupByLibrary.simpleMessage("Date"),
        "common_word_day": m23,
        "common_word_defence": MessageLookupByLibrary.simpleMessage("Defence"),
        "common_word_disconnected":
            MessageLookupByLibrary.simpleMessage("Disconnected"),
        "common_word_displayName":
            MessageLookupByLibrary.simpleMessage("Display Name"),
        "common_word_email": MessageLookupByLibrary.simpleMessage("Email"),
        "common_word_empty": MessageLookupByLibrary.simpleMessage("Empty"),
        "common_word_english": MessageLookupByLibrary.simpleMessage("English"),
        "common_word_error": MessageLookupByLibrary.simpleMessage("Error"),
        "common_word_french": MessageLookupByLibrary.simpleMessage("French"),
        "common_word_german": MessageLookupByLibrary.simpleMessage("German"),
        "common_word_hardware":
            MessageLookupByLibrary.simpleMessage("Hardware"),
        "common_word_harvests":
            MessageLookupByLibrary.simpleMessage("Harvests"),
        "common_word_heartbeat":
            MessageLookupByLibrary.simpleMessage("Heartbeat"),
        "common_word_high": MessageLookupByLibrary.simpleMessage("HIGH"),
        "common_word_hive": MessageLookupByLibrary.simpleMessage("Hive"),
        "common_word_honey": MessageLookupByLibrary.simpleMessage("Honey"),
        "common_word_hour": m24,
        "common_word_humidity":
            MessageLookupByLibrary.simpleMessage("Humidity"),
        "common_word_id": MessageLookupByLibrary.simpleMessage("ID"),
        "common_word_ideal": MessageLookupByLibrary.simpleMessage("Ideal"),
        "common_word_italian": MessageLookupByLibrary.simpleMessage("Italian"),
        "common_word_lastSeason":
            MessageLookupByLibrary.simpleMessage("Last Season"),
        "common_word_low": MessageLookupByLibrary.simpleMessage("LOW"),
        "common_word_medium": MessageLookupByLibrary.simpleMessage("MID"),
        "common_word_missing": MessageLookupByLibrary.simpleMessage("missing"),
        "common_word_mood": MessageLookupByLibrary.simpleMessage("Mood"),
        "common_word_notesSection":
            MessageLookupByLibrary.simpleMessage("NOTES"),
        "common_word_origin": MessageLookupByLibrary.simpleMessage("Origin"),
        "common_word_password":
            MessageLookupByLibrary.simpleMessage("Password"),
        "common_word_pattern": MessageLookupByLibrary.simpleMessage("Pattern"),
        "common_word_queen": MessageLookupByLibrary.simpleMessage("Queen"),
        "common_word_queens": MessageLookupByLibrary.simpleMessage("Queens"),
        "common_word_read": MessageLookupByLibrary.simpleMessage("Read"),
        "common_word_selected":
            MessageLookupByLibrary.simpleMessage("Selected"),
        "common_word_sort": MessageLookupByLibrary.simpleMessage("Sort"),
        "common_word_statusSection":
            MessageLookupByLibrary.simpleMessage("STATUS"),
        "common_word_storage": MessageLookupByLibrary.simpleMessage("Storage"),
        "common_word_strength":
            MessageLookupByLibrary.simpleMessage("Strength"),
        "common_word_temperature":
            MessageLookupByLibrary.simpleMessage("Temperature"),
        "common_word_theme": MessageLookupByLibrary.simpleMessage("Theme"),
        "common_word_thisSeason":
            MessageLookupByLibrary.simpleMessage("This Season"),
        "common_word_timestamp":
            MessageLookupByLibrary.simpleMessage("Timestamp"),
        "common_word_total": MessageLookupByLibrary.simpleMessage("Total"),
        "common_word_totalWeight":
            MessageLookupByLibrary.simpleMessage("Total (weight)"),
        "common_word_treatment":
            MessageLookupByLibrary.simpleMessage("Treatment"),
        "common_word_type": MessageLookupByLibrary.simpleMessage("Type"),
        "common_word_varroa": MessageLookupByLibrary.simpleMessage("Varroa"),
        "common_word_weight": MessageLookupByLibrary.simpleMessage("Weight"),
        "commone_word_software":
            MessageLookupByLibrary.simpleMessage("Software"),
        "connect_button_connect":
            MessageLookupByLibrary.simpleMessage("CONNECT"),
        "connect_button_reinitialize":
            MessageLookupByLibrary.simpleMessage("REINITIALIZE"),
        "connect_button_scan": MessageLookupByLibrary.simpleMessage("SCAN"),
        "connect_card_bluetoothErrorMessage": MessageLookupByLibrary.simpleMessage(
            "There was an error while connecting with Bluetooth.  Please check your Bluetooth is turned on and try again."),
        "connect_card_bluetoothErrorTitle":
            MessageLookupByLibrary.simpleMessage("Bluetooth Error"),
        "connect_card_debugErrorTitle":
            MessageLookupByLibrary.simpleMessage("Debug Error"),
        "connect_card_failedDownload": MessageLookupByLibrary.simpleMessage(
            "Sometimes during connection, not all of the files are downloaded correctly.  Please check the list below and retry any files that failed to load.  If you are unable to download the files, please turn off the ApiBrain and wait 10 before resetting and trying again."),
        "connect_card_initialText": MessageLookupByLibrary.simpleMessage(
            "Click the button to start scanning with Bluetooth for any nearby Vatorex hardware.  Make sure your Bluetooth is enabled on your phone and on the hardware."),
        "connect_card_scanTitle":
            MessageLookupByLibrary.simpleMessage("Scanning with Bluetooth"),
        "connect_card_timeoutMessage": MessageLookupByLibrary.simpleMessage(
            "Connection Timeout, make sure your device is connected."),
        "connect_card_turnOnBluetoothText": MessageLookupByLibrary.simpleMessage(
            "Apibrain is not connected.  Please check that your hardware is turned on and the Bluetooth light is active."),
        "connect_card_turnOnBluetoothTitle":
            MessageLookupByLibrary.simpleMessage("Apibrain not connected"),
        "connect_debug_getConfigTitle":
            MessageLookupByLibrary.simpleMessage("Get Config"),
        "connect_debug_getInfoTitle":
            MessageLookupByLibrary.simpleMessage("Get Info"),
        "connect_debug_getStateTitle":
            MessageLookupByLibrary.simpleMessage("Get State"),
        "connect_error_connectBluetooth": MessageLookupByLibrary.simpleMessage(
            "Please connect to your device via bluetooth."),
        "connect_loading_downloadingFiles":
            MessageLookupByLibrary.simpleMessage("Downloading files..."),
        "connect_message_commLineSuccess":
            MessageLookupByLibrary.simpleMessage("CommLine Success"),
        "connect_message_downloadSuccess":
            MessageLookupByLibrary.simpleMessage("Success"),
        "connect_message_initializeSuccess":
            MessageLookupByLibrary.simpleMessage("Initialization Success"),
        "connect_message_missingCommLine":
            MessageLookupByLibrary.simpleMessage("Missing CommLine"),
        "connect_message_notInitialized":
            MessageLookupByLibrary.simpleMessage("Not Initialized"),
        "connect_page_title":
            MessageLookupByLibrary.simpleMessage("Connect Page"),
        "connect_snack_error":
            MessageLookupByLibrary.simpleMessage("Connection Error."),
        "connect_text_gettingCommands":
            MessageLookupByLibrary.simpleMessage("Getting Initial Commands"),
        "connect_text_notRegistered":
            MessageLookupByLibrary.simpleMessage("Not Registered"),
        "connect_word_scanningDevices":
            MessageLookupByLibrary.simpleMessage("Scanning Devices"),
        "database_error_databaseFailure": m25,
        "database_error_valueFailure": m26,
        "database_message_saveSuccess":
            MessageLookupByLibrary.simpleMessage("Saved."),
        "database_message_updateSuccess":
            MessageLookupByLibrary.simpleMessage("Updated."),
        "datatbase_card_errorTitle":
            MessageLookupByLibrary.simpleMessage("Database Failure"),
        "feeding_page_probiotics":
            MessageLookupByLibrary.simpleMessage("PROBIOTICS"),
        "feeding_page_withProbiotics":
            MessageLookupByLibrary.simpleMessage("With Probiotics"),
        "feeding_page_withoutProbiotics":
            MessageLookupByLibrary.simpleMessage("Without Probiotics"),
        "hardware_button_createHardware":
            MessageLookupByLibrary.simpleMessage("CREATE HARDWARE"),
        "hardware_button_nfcSearch":
            MessageLookupByLibrary.simpleMessage("SCAN WITH NFC"),
        "hardware_button_registerHardware":
            MessageLookupByLibrary.simpleMessage("REGISTER HARDWARE"),
        "hardware_button_setLocation": m27,
        "hardware_button_testConnection":
            MessageLookupByLibrary.simpleMessage("Test Connection"),
        "hardware_button_testSetup":
            MessageLookupByLibrary.simpleMessage("Test Setup"),
        "hardware_card_createHardwareMessage": MessageLookupByLibrary.simpleMessage(
            "The document for this hardware is not found on our system.  This probably means that the Apibrain has not yet connected via IoT.  You can create the document using the button below and it will update during the next IoT cycle."),
        "hardware_card_errorTitle":
            MessageLookupByLibrary.simpleMessage("Hardware Failure"),
        "hardware_card_missingHardwareData": MessageLookupByLibrary.simpleMessage(
            "The document you are looking for is not on the connected hardware or in our database.  Please turn off and on the device and try again."),
        "hardware_card_noHardwareMessage": MessageLookupByLibrary.simpleMessage(
            "There is no Vatorex hardware attached to this apiary.  If you have Vatorex hardware and would like to link it to your account, please download the Hive Connector app, register your hardware, and set the location. \n\nIf you think there is an error then try refresh the page from the menu in top right."),
        "hardware_card_noHardwareTitle":
            MessageLookupByLibrary.simpleMessage("Hardware Not Found."),
        "hardware_card_unregisteredTitle":
            MessageLookupByLibrary.simpleMessage("Unregistered Hardware"),
        "hardware_chartTitle_sinceSync":
            MessageLookupByLibrary.simpleMessage("since Sync"),
        "hardware_dialog_missingLocation": MessageLookupByLibrary.simpleMessage(
            "You dont have anywhere to add a hardware."),
        "hardware_dialog_setLocationHiveManager":
            MessageLookupByLibrary.simpleMessage(
                "If you use the ‹Hive Manager› app, you will be able to see any sensor infomation from your Apiary or Hive."),
        "hardware_dialog_setLocationInstruction":
            MessageLookupByLibrary.simpleMessage(
                "Select from the list below where you currently have this hardware."),
        "hardware_dialog_setLocationTitle":
            MessageLookupByLibrary.simpleMessage("Set Location"),
        "hardware_error_auxiliaryFailure": m28,
        "hardware_error_connectFailure": m29,
        "hardware_error_hardwareError": m30,
        "hardware_error_hardwareFailure": m31,
        "hardware_error_valueFailure": m32,
        "hardware_form_selectLocation":
            MessageLookupByLibrary.simpleMessage("Select Location"),
        "hardware_loading_disconnected": MessageLookupByLibrary.simpleMessage(
            "Hardware has been disconnected..."),
        "hardware_menu_byApiary":
            MessageLookupByLibrary.simpleMessage("By Apiary"),
        "hardware_menu_byHive": MessageLookupByLibrary.simpleMessage("By Hive"),
        "hardware_menu_byType":
            MessageLookupByLibrary.simpleMessage("By Hardware"),
        "hardware_menu_changeLocation": m33,
        "hardware_menu_debug": MessageLookupByLibrary.simpleMessage("Debug"),
        "hardware_menu_recentlyRegistered":
            MessageLookupByLibrary.simpleMessage("Recent Registered"),
        "hardware_menu_recentlySynced":
            MessageLookupByLibrary.simpleMessage("Recent Synced"),
        "hardware_message_cardInvalid": MessageLookupByLibrary.simpleMessage(
            "Something went wrong while retrieving your document.  We\'re sorry for the issue, please contact support with this error."),
        "hardware_message_cardValueError": m34,
        "hardware_message_missingHardware": MessageLookupByLibrary.simpleMessage(
            "You don\'t seem to have connected/registered any hardware.  Please connect your first device."),
        "hardware_message_waitingForSync":
            MessageLookupByLibrary.simpleMessage("Waiting for first sync..."),
        "hardware_message_waitingForTreatment":
            MessageLookupByLibrary.simpleMessage("Waiting for treatment..."),
        "hardware_test_getConfig":
            MessageLookupByLibrary.simpleMessage("Getting configurations."),
        "hardware_test_needLog":
            MessageLookupByLibrary.simpleMessage("Checking Logs."),
        "hardware_test_scanAllLight":
            MessageLookupByLibrary.simpleMessage("Scanning for changes."),
        "hardware_test_syncIot":
            MessageLookupByLibrary.simpleMessage("Synchronizing IoT."),
        "hardware_test_testIot":
            MessageLookupByLibrary.simpleMessage("Testing IoT connection."),
        "hardware_text_hardwareType": m35,
        "hardware_text_lastSync":
            MessageLookupByLibrary.simpleMessage("Last Sync"),
        "hardware_text_lastTreatment":
            MessageLookupByLibrary.simpleMessage("since Treatment"),
        "hardware_title_noHardware":
            MessageLookupByLibrary.simpleMessage("No Hardware Registered"),
        "harvest_page_Honey": MessageLookupByLibrary.simpleMessage("Honey"),
        "harvest_page_boxes": MessageLookupByLibrary.simpleMessage("Boxes"),
        "harvest_page_frames": MessageLookupByLibrary.simpleMessage("Frames"),
        "hive_button_addFeeding":
            MessageLookupByLibrary.simpleMessage("Add Feeding"),
        "hive_button_addHarvest":
            MessageLookupByLibrary.simpleMessage("Add Harvest"),
        "hive_button_addInspection":
            MessageLookupByLibrary.simpleMessage("ADD INSPECTION"),
        "hive_button_addQueen":
            MessageLookupByLibrary.simpleMessage("ADD QUEEN"),
        "hive_error_hiveFailure": m36,
        "hive_error_missingHiveTitle":
            MessageLookupByLibrary.simpleMessage("Missing Hive Document"),
        "hive_error_noColonyMessage":
            MessageLookupByLibrary.simpleMessage("Empty Hive"),
        "hive_error_noQueenMessage":
            MessageLookupByLibrary.simpleMessage("Queenless"),
        "hive_form_beeRaceHelper": MessageLookupByLibrary.simpleMessage(
            "Select the sub-species of your queen."),
        "hive_form_beeRaceTitle":
            MessageLookupByLibrary.simpleMessage("Bee Race"),
        "hive_form_categoryHelper": MessageLookupByLibrary.simpleMessage(
            "Select how the boxes appear."),
        "hive_form_colonyBought":
            MessageLookupByLibrary.simpleMessage("Bought"),
        "hive_form_colonyTypeHelper":
            MessageLookupByLibrary.simpleMessage("Select the type of colony."),
        "hive_form_colonyTypeTitle":
            MessageLookupByLibrary.simpleMessage("Colony Type"),
        "hive_form_currentApiaryTitle":
            MessageLookupByLibrary.simpleMessage("Current Apiary"),
        "hive_form_directionHelper": MessageLookupByLibrary.simpleMessage(
            "Select which direction the boxes stack."),
        "hive_form_editColonyTitle":
            MessageLookupByLibrary.simpleMessage("Edit Colony"),
        "hive_form_editHiveTitle":
            MessageLookupByLibrary.simpleMessage("Edit Hive"),
        "hive_form_editQueenTitle":
            MessageLookupByLibrary.simpleMessage("Edit Queen"),
        "hive_form_framesHelper": MessageLookupByLibrary.simpleMessage(
            "Select how many frames are in a box."),
        "hive_form_hiveName": MessageLookupByLibrary.simpleMessage("Hive Name"),
        "hive_form_hiveNameHelper": MessageLookupByLibrary.simpleMessage(
            "Select a name for the hive. (max 24 char)"),
        "hive_form_hivePictureHelper": MessageLookupByLibrary.simpleMessage(
            "Select an image to use for your hive."),
        "hive_form_hiveTypeHelper": MessageLookupByLibrary.simpleMessage(
            "Search the list of hive types or use edit to select by category."),
        "hive_form_hiveTypeTitle":
            MessageLookupByLibrary.simpleMessage("Hive Type"),
        "hive_form_moveHiveTitle":
            MessageLookupByLibrary.simpleMessage("Move Hive"),
        "hive_form_newColonyTitle":
            MessageLookupByLibrary.simpleMessage("New Colony"),
        "hive_form_newHiveTitle":
            MessageLookupByLibrary.simpleMessage("New Hive"),
        "hive_form_newQueenTitle":
            MessageLookupByLibrary.simpleMessage("New Queen"),
        "hive_form_queenAlive": MessageLookupByLibrary.simpleMessage("Alive"),
        "hive_form_queenClipped":
            MessageLookupByLibrary.simpleMessage("Clipped"),
        "hive_form_queenColorHelper": MessageLookupByLibrary.simpleMessage(
            "What color is the queen marked with?"),
        "hive_form_queenColorTitle":
            MessageLookupByLibrary.simpleMessage("Queen Color"),
        "hive_form_queenMated": MessageLookupByLibrary.simpleMessage("Mated"),
        "hive_form_queenNameHelper": MessageLookupByLibrary.simpleMessage(
            "Select a name for you queen."),
        "hive_form_queenNameTitle":
            MessageLookupByLibrary.simpleMessage("Queen Name"),
        "hive_form_queenOriginHelper": MessageLookupByLibrary.simpleMessage(
            "Select where the queen came from."),
        "hive_form_queenOriginTitle":
            MessageLookupByLibrary.simpleMessage("Queen Origin"),
        "hive_form_recentlySwarmedHelper": MessageLookupByLibrary.simpleMessage(
            "Select any hives that have swarmed in the last few days."),
        "hive_form_recentlySwarmedTitle":
            MessageLookupByLibrary.simpleMessage("Recently Swarmed"),
        "hive_form_serialNumberHelper": MessageLookupByLibrary.simpleMessage(
            "Optionally enter a serial number or ID."),
        "hive_form_serialNumberTitle":
            MessageLookupByLibrary.simpleMessage("Serial Number (optional)"),
        "hive_form_toApiaryHelper": MessageLookupByLibrary.simpleMessage(
            "Select from the list which apiary you would like to move this hive to."),
        "hive_form_toApiaryTitle":
            MessageLookupByLibrary.simpleMessage("To Apiary"),
        "hive_form_typeHelper":
            MessageLookupByLibrary.simpleMessage("Select the type of hive."),
        "hive_form_unmarked":
            MessageLookupByLibrary.simpleMessage("(Unmarked)"),
        "hive_form_wildSwarmSelect":
            MessageLookupByLibrary.simpleMessage("(Wild Swarm)"),
        "hive_menu_addColony":
            MessageLookupByLibrary.simpleMessage("Add Colony"),
        "hive_menu_addFeeding":
            MessageLookupByLibrary.simpleMessage("Add Feeding"),
        "hive_menu_addHarvest":
            MessageLookupByLibrary.simpleMessage("Add Harvest"),
        "hive_menu_addInspection":
            MessageLookupByLibrary.simpleMessage("Add Inspection"),
        "hive_menu_addLog": MessageLookupByLibrary.simpleMessage("Add Log"),
        "hive_menu_addTask": MessageLookupByLibrary.simpleMessage("Add Task"),
        "hive_menu_edit": MessageLookupByLibrary.simpleMessage("Edit Hive"),
        "hive_menu_editColony":
            MessageLookupByLibrary.simpleMessage("Edit Colony"),
        "hive_menu_moveHive": MessageLookupByLibrary.simpleMessage("Move Hive"),
        "hive_menu_refresh": MessageLookupByLibrary.simpleMessage("Refresh"),
        "hive_message_missingColonyMessage": MessageLookupByLibrary.simpleMessage(
            "This hive does not have any active colony inside.  In order to start adding actions and tracking queens, please add a colony from the Quick Action button or top menu."),
        "hive_message_missingColonyTitle":
            MessageLookupByLibrary.simpleMessage("Missing Colony"),
        "hive_message_missingQueens":
            MessageLookupByLibrary.simpleMessage("No queens alive."),
        "hive_snack_colonyAdded":
            MessageLookupByLibrary.simpleMessage("Colony Added"),
        "hive_snack_colonyRemoved":
            MessageLookupByLibrary.simpleMessage("Colony removed."),
        "hive_snack_colonySaved":
            MessageLookupByLibrary.simpleMessage("Colony Saved"),
        "hive_snack_hiveCreated":
            MessageLookupByLibrary.simpleMessage("Hive Created"),
        "hive_snack_hiveFailure": m37,
        "hive_snack_hiveMoved":
            MessageLookupByLibrary.simpleMessage("Hive Moved."),
        "hive_snack_hiveRemoved":
            MessageLookupByLibrary.simpleMessage("Hive deleted."),
        "hive_snack_hiveSaved":
            MessageLookupByLibrary.simpleMessage("Hive Saved"),
        "hive_snack_queenAdded":
            MessageLookupByLibrary.simpleMessage("Queen Added"),
        "hive_snack_queenRemoved":
            MessageLookupByLibrary.simpleMessage("Queen deleted."),
        "hive_snack_queenSaved":
            MessageLookupByLibrary.simpleMessage("Queen Saved"),
        "hive_text_QueenOrigin": m38,
        "hive_text_beeRace": m39,
        "hive_text_beeTaxonomy": m40,
        "hive_text_bodyTrait": m41,
        "hive_text_colonyType": m42,
        "hive_text_hiveCategory": m43,
        "hive_text_hiveDirection": m44,
        "hive_text_hiveType": m45,
        "hive_text_queenColor": m46,
        "hive_text_race": MessageLookupByLibrary.simpleMessage("Race"),
        "hive_text_superceded":
            MessageLookupByLibrary.simpleMessage("(Superceded)"),
        "hive_title_hiveDetails":
            MessageLookupByLibrary.simpleMessage("Hive Details"),
        "hive_word_category": MessageLookupByLibrary.simpleMessage("Category"),
        "hive_word_direction":
            MessageLookupByLibrary.simpleMessage("Direction"),
        "hive_word_frameCount": m47,
        "hive_word_frames": MessageLookupByLibrary.simpleMessage("Frames"),
        "hive_word_queenless":
            MessageLookupByLibrary.simpleMessage("Queenless"),
        "hive_word_queensSection":
            MessageLookupByLibrary.simpleMessage("QUEENS"),
        "hive_word_type": MessageLookupByLibrary.simpleMessage("Type"),
        "link_accounts_linkAppleID":
            MessageLookupByLibrary.simpleMessage("LINK APPLE ID"),
        "link_accounts_linkEmail":
            MessageLookupByLibrary.simpleMessage("LINK EMAIL"),
        "link_accounts_linkFacebook":
            MessageLookupByLibrary.simpleMessage("LINK FACEBOOK"),
        "link_accounts_linkGoogle":
            MessageLookupByLibrary.simpleMessage("LINK GOOGLE"),
        "log_text_robbing": MessageLookupByLibrary.simpleMessage("Robbing"),
        "log_text_varroaCount":
            MessageLookupByLibrary.simpleMessage("Varroa Count"),
        "logs_button_addLog": MessageLookupByLibrary.simpleMessage("ADD LOG"),
        "logs_button_addSample":
            MessageLookupByLibrary.simpleMessage("ADD SAMPLE"),
        "logs_error_logFailure": m48,
        "logs_error_logsFailureTitle":
            MessageLookupByLibrary.simpleMessage("Logs Failure"),
        "logs_error_noLogsMessage": MessageLookupByLibrary.simpleMessage(
            "There are no logs yet.  You can add your first log by clicking the button below.  If you think there is an error then try refresh the page from the menu in top right."),
        "logs_error_noLogsTitle":
            MessageLookupByLibrary.simpleMessage("No Logs"),
        "logs_form_batchNoTitle":
            MessageLookupByLibrary.simpleMessage("Batch No. (optional)"),
        "logs_form_batchnoHelper": MessageLookupByLibrary.simpleMessage(
            "Enter the medical batch number of your treatment."),
        "logs_form_concentrationHelper": MessageLookupByLibrary.simpleMessage(
            "Enter how strong of a concentration in percent."),
        "logs_form_concentrationTitle":
            MessageLookupByLibrary.simpleMessage("Concentration (optional)"),
        "logs_form_dateInsertedHelper": MessageLookupByLibrary.simpleMessage(
            "Select the date that the sticky board was inserted."),
        "logs_form_dateInsertedTitle":
            MessageLookupByLibrary.simpleMessage("Date Inserted"),
        "logs_form_editLogTitle":
            MessageLookupByLibrary.simpleMessage("Edit Log"),
        "logs_form_humidityHelper": MessageLookupByLibrary.simpleMessage(
            "Optionally record the day\'s humidity."),
        "logs_form_humidityTitle":
            MessageLookupByLibrary.simpleMessage("Humidity (Optional)"),
        "logs_form_infectionType": m49,
        "logs_form_logTypeHelper":
            MessageLookupByLibrary.simpleMessage("Select a log type"),
        "logs_form_logTypeTitle":
            MessageLookupByLibrary.simpleMessage("Log Type"),
        "logs_form_missingLogType":
            MessageLookupByLibrary.simpleMessage("Please select a log type"),
        "logs_form_newLogTitle":
            MessageLookupByLibrary.simpleMessage("New Log"),
        "logs_form_robbingSeverityHelper": MessageLookupByLibrary.simpleMessage(
            "Select how bad the robbing is."),
        "logs_form_temperatureHelper": MessageLookupByLibrary.simpleMessage(
            "Optionally record the day\'s Temperature."),
        "logs_form_temperatureTitle":
            MessageLookupByLibrary.simpleMessage("Temperature (Optional)"),
        "logs_form_treatmentAmountHelper": MessageLookupByLibrary.simpleMessage(
            "Enter the amout of treatment with units."),
        "logs_form_treatmentAmountTitle":
            MessageLookupByLibrary.simpleMessage("Amount (optional)"),
        "logs_form_treatmentApplicationHelper":
            MessageLookupByLibrary.simpleMessage(
                "Select how the treatment is applied."),
        "logs_form_treatmentApplicationTitle":
            MessageLookupByLibrary.simpleMessage("Application"),
        "logs_form_treatmentMethodHelper": MessageLookupByLibrary.simpleMessage(
            "Select what type of treatment was used."),
        "logs_form_treatmentMethodTitle":
            MessageLookupByLibrary.simpleMessage("Method"),
        "logs_form_varroaCountHelper": MessageLookupByLibrary.simpleMessage(
            "Enter the total number of varroa on the board."),
        "logs_form_varroaCountTitle":
            MessageLookupByLibrary.simpleMessage("Varroa Count"),
        "logs_form_varroaMethodHelper": MessageLookupByLibrary.simpleMessage(
            "Select the method of counting varroa."),
        "logs_form_varroaMethodTitile":
            MessageLookupByLibrary.simpleMessage("Method"),
        "logs_form_weatherHelper": MessageLookupByLibrary.simpleMessage(
            "Select any weather events you would like to log. Hold press to see weather name."),
        "logs_form_weatherTitle":
            MessageLookupByLibrary.simpleMessage("Weather Type(s)"),
        "logs_message_apiaryCreated": m50,
        "logs_message_apiaryDeleted": m51,
        "logs_message_caught":
            MessageLookupByLibrary.simpleMessage("and caught"),
        "logs_message_colonyCreated":
            MessageLookupByLibrary.simpleMessage("Colony created"),
        "logs_message_colonyDeleted":
            MessageLookupByLibrary.simpleMessage("Colony deleted"),
        "logs_message_colonyDied":
            MessageLookupByLibrary.simpleMessage("Colony died"),
        "logs_message_colonyMoved":
            MessageLookupByLibrary.simpleMessage("Colony moved"),
        "logs_message_feedingCreated":
            MessageLookupByLibrary.simpleMessage("Feeding created"),
        "logs_message_feedingDeleted":
            MessageLookupByLibrary.simpleMessage("Feeding deleted"),
        "logs_message_hardwareRegistered":
            MessageLookupByLibrary.simpleMessage("Hardware registered"),
        "logs_message_harvestCreated":
            MessageLookupByLibrary.simpleMessage("Harvest created"),
        "logs_message_harvestDeleted":
            MessageLookupByLibrary.simpleMessage("Harvest deleted"),
        "logs_message_hiveCreated": m52,
        "logs_message_hiveDeleted": m53,
        "logs_message_hiveMoved": m54,
        "logs_message_inspectionCreated":
            MessageLookupByLibrary.simpleMessage("Inspection created"),
        "logs_message_inspectionDeleted":
            MessageLookupByLibrary.simpleMessage("Inspection deleted"),
        "logs_message_noSamples":
            MessageLookupByLibrary.simpleMessage("No samples."),
        "logs_message_note":
            MessageLookupByLibrary.simpleMessage("Note was created"),
        "logs_message_queenCreated": m55,
        "logs_message_queenDeleted": m56,
        "logs_message_queenDied": m57,
        "logs_message_queenMoved": m58,
        "logs_message_queenSuperseded": m59,
        "logs_message_robbing": m60,
        "logs_message_swarmed": m61,
        "logs_message_treatment": m62,
        "logs_message_userCreated":
            MessageLookupByLibrary.simpleMessage("User created"),
        "logs_message_varroaCount": m63,
        "logs_message_weather": m64,
        "logs_snack_logCreated":
            MessageLookupByLibrary.simpleMessage("Log Created"),
        "logs_snack_logFailure": m65,
        "logs_snack_logSaved":
            MessageLookupByLibrary.simpleMessage("Log Saved"),
        "logs_text_infection":
            MessageLookupByLibrary.simpleMessage("Infection"),
        "logs_text_logType": m66,
        "logs_text_logs": MessageLookupByLibrary.simpleMessage("Logs"),
        "logs_text_logsSection": MessageLookupByLibrary.simpleMessage("LOGS"),
        "logs_text_samples": MessageLookupByLibrary.simpleMessage("Samples"),
        "logs_text_treatment":
            MessageLookupByLibrary.simpleMessage("Treatment"),
        "logs_text_treatmentApplication": m67,
        "logs_text_treatmentMethod": m68,
        "logs_text_varroaMethod": m69,
        "logs_text_weatherType": m70,
        "message_noStatsAvailable": MessageLookupByLibrary.simpleMessage(
            "There are no stats for this Season"),
        "new_apiary_apiary_name":
            MessageLookupByLibrary.simpleMessage("Apiary Name"),
        "new_apiary_apiary_serial":
            MessageLookupByLibrary.simpleMessage("Serial Number (Optional)"),
        "new_apiary_location": MessageLookupByLibrary.simpleMessage("Location"),
        "no_weather_data_message": MessageLookupByLibrary.simpleMessage(
            "Unable to get weather data. Make sure internet connection is available"),
        "no_weather_data_title": MessageLookupByLibrary.simpleMessage(
            "Weather forecast not available"),
        "pushNotification_error_pushNotificationFailure": m71,
        "seach_message_scanning": MessageLookupByLibrary.simpleMessage(
            "Scanning... Please place the phone next to the hardware until the connection has been made."),
        "search_button_scan": MessageLookupByLibrary.simpleMessage("SCAN"),
        "search_card_errorTitle":
            MessageLookupByLibrary.simpleMessage("NFC Failure"),
        "search_card_scanTitle":
            MessageLookupByLibrary.simpleMessage("NFC Scan"),
        "search_error_searchFailure": m72,
        "search_message_foundTag": m73,
        "search_message_startScan": MessageLookupByLibrary.simpleMessage(
            "Click the button to initialize NFC scanning.  You will need to place the phone next to the hardware to read the NFC tag."),
        "search_title_tagFound": MessageLookupByLibrary.simpleMessage("Found!"),
        "title_noStatsAvailable":
            MessageLookupByLibrary.simpleMessage("No Stats Available"),
        "weather_tab_minMax": MessageLookupByLibrary.simpleMessage("Min | Max"),
        "weather_tab_rain": MessageLookupByLibrary.simpleMessage("Rain")
      };
}
