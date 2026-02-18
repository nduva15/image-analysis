// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fr locale. All the
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
  String get localeName => 'fr';

  static String m0(type) => "${Intl.select(type, {
            'FEED_SYRUP_1TO1': 'Eau sucrée 1:1',
            'FEED_SYRUP_2TO1': 'Eau sucrée 2:1',
            'FEED_SYRUP_3TO2': 'Eau sucrée 3:2',
            'FEED_FONDANT': 'Pâte alimentaire',
            'FEED_HONEY': 'Miel',
            'FEED_BEE_BREAD': 'Pain d\'abeille',
            'FEED_SYRUP_INVERTED': 'Eau sucrée (inversée)',
            'FEED_UNKNOWN': 'Inconnu',
            'other': 'Unknown',
          })}";

  static String m1(type) => "${Intl.select(type, {
            'URBAN': 'Urbain',
            'RURAL': 'Rural',
            'MIXED': 'Mixte',
            'other': 'Unknown',
          })}";

  static String m2(type) => "${Intl.select(type, {
            'DISEASE_AMERICAN_FOULBROOD': 'Foulard américain',
            'DISEASE_EUROPEAN_FOULBROOD': 'Foulbreau européen',
            'DISEASE_BALD_BROOD': 'Couvée chauve',
            'DISEASE_BLISTER_BEETLES': 'Scarométles',
            'DISEASE_CHALKBROOD': 'Chalkbrood',
            'DISEASE_CHEWED_PUPAE': 'Nymphe mâché',
            'DISEASE_DEFORMED_WING_VIRUS': 'Virus de l\'aile déformée',
            'DISEASE_HIVE_BEETLE': 'Coléoptère',
            'DISEASE_SEVERE_HIVE_BEETLE': 'Coléoptère sévère',
            'DISEASE_K_WING_VIRUS': 'Virus K aile',
            'DISEASE_MOLD': 'Mouler',
            'DISEASE_NOSEMA': 'Nosema',
            'DISEASE_CHRONIC_BEE_PARALYSIS_VIRUS':
                'Virus de paralysie chronique des abeilles',
            'DISEASE_STONEBROOD': 'Pierre',
            'DISEASE_TRACHEAL_MITE': 'Mite trachéal',
            'DISEASE_TROPILAELAPS': 'Tropilaels',
            'DISEASE_VARROA_MITES': 'Varroa acariens',
            'DISEASE_SEVERE_VARROA_MITES': 'Varroa acariens sévères',
            'DISEASE_SEVERE_WAX_MOTH': 'Mite de cire sévère',
            'DISEASE_ASIAN_HORNET': 'Hornet asiatique',
            'DISEASE_OTHER': 'Autre',
            'other': 'Unknown',
          })}";

  static String m3(type) => "${Intl.select(type, {
            'SHADED': 'Ombragé',
            'HALF_SHADED': 'Partiel',
            'FULL_SUN': 'Ensoleillé',
            'other': 'Unknown',
          })}";

  static String m4(type) => "${Intl.select(type, {
            'HONEY_LOCAL': 'Miel local',
            'HONEY_ACACIA': 'Miel d\'acacia',
            'HONEY_ANZER': 'Miel d\'Anzer',
            'HONEY_BLOSSOM': 'Blossom Honey',
            'HONEY_ALFALFA': 'Miel de luzerne',
            'HONEY_AVOCADO': 'Miel d\'avocat',
            'HONEY_BUCKWHEAT': 'Miel de sarrasin',
            'HONEY_BLUEBERRY': 'Miel de myrtille',
            'HONEY_CHESTNUT': 'Miel de châtaignier',
            'HONEY_CLOVER': 'Miel de trèfle',
            'HONEY_EUCALYPTUS': 'Miel d\'eucalyptus',
            'HONEY_FOREST': 'Miel de forêt',
            'HONEY_MANUKA': 'Miel de manuka',
            'HONEY_LAVENDER': 'Miel de lavande',
            'HONEY_ORANGE_BLOSSOM': 'Miel de fleur d\'oranger',
            'HONEY_RAPE': 'Miel de viol',
            'HONEY_SAGE': 'Miel de sauge',
            'HONEY_MIXED': 'Miel mélangé',
            'HONEY_UNKNOWN': 'Type inconnu',
            'other': 'Unknown',
          })}";

  static String m5(type) => "${Intl.select(type, {
            'common_error_serverError':
                'Quelque chose s\'est mal passé pendant que nous parlions avec notre serveur. Veuillez réessayer et si le problème perciste, contactez nous pour le soutien.',
            'common_error_insufficientPermission':
                'Vous avez une autorisation insuffisante pour accéder à ce document. Veuillez vous vérifier avec votre administrateur pour ajouter des autorisations.',
            'common_error_emulatorError': 'Erreur d\'émulateur.',
            'actions_error_noInspections':
                'Vous n\'avez aucune inspection pour cette ruche. Vous pouvez ajouter votre première inspection en cliquant sur le bouton ci-dessous. Si vous pensez qu\'il y a une erreur, essayez Actualiser la page dans le menu en haut à droite.',
            'actions_error_invalidInspectionDocument':
                'Le document d\'inspection que vous recherchez est invalide ou corrompu. Veuillez noter l\'identifiant en haut à droite et contactez-nous pour support.',
            'actions_error_missingInspectionDocument':
                'Le document d\'inspection que vous recherchez manque de notre base de données. Veuillez noter l\'identifiant en haut à droite et contactez-nous pour support.',
            'actions_error_noFeedings':
                'Vous n\'avez pas de nourrissons pour cette ruche. Vous pouvez ajouter votre première alimentation en cliquant sur le bouton ci-dessous. Si vous pensez qu\'il y a une erreur, essayez Actualiser la page dans le menu en haut à droite.',
            'actions_error_invalidFeedingDocument':
                'Le document d\'alimentation que vous recherchez est invalide ou corrompu. Veuillez noter l\'identifiant en haut à droite et contactez-nous pour support.',
            'actions_error_missingFeedingDocument':
                'Le document d\'alimentation que vous recherchez manque de notre base de données. Veuillez noter l\'identifiant en haut à droite et contactez-nous pour support.',
            'actions_error_noHarvest':
                'Vous n\'avez aucune récolte pour cette ruche. Vous pouvez ajouter votre première récolte en cliquant sur le bouton ci-dessous. Si vous pensez qu\'il y a une erreur, essayez Actualiser la page dans le menu en haut à droite.',
            'actions_error_invalidHarvestDocument':
                'Le document de récolte que vous recherchez est invalide ou corrompu. Veuillez noter l\'identifiant en haut à droite et contactez-nous pour support.',
            'actions_error_missingHarvestDocument':
                'Le document de récolte que vous recherchez est absent de notre base de données. Veuillez noter l\'identifiant en haut à droite et contactez-nous pour support.',
            'other': 'Unknown',
          })}";

  static String m6(type) => "${Intl.select(type, {
            'common_error_serverError': 'erreur du serveur',
            'common_error_insufficientPermission': 'Permissions insuffisantes',
            'common_error_emulatorError': 'Erreur d\'émulateur',
            'actions_error_noInspections': 'Aucune inspection',
            'actions_error_invalidInspectionDocument': 'Inspection invalide',
            'actions_error_missingInspectionDocument': 'Inspection manquante',
            'actions_error_noFeedings': 'Pas d\'alimentation',
            'actions_error_invalidFeedingDocument': 'Alimentation non valide',
            'actions_error_missingFeedingDocument': 'Alimentation manquante',
            'actions_error_noHarvest': 'Pas de récoltes',
            'actions_error_invalidHarvestDocument': 'Récolte non valide',
            'actions_error_missingHarvestDocument': 'Récolte manquante',
            'other': 'Unknown',
          })}";

  static String m7(failure) => "${Intl.select(failure, {
            'alerts_error_noAlerts': 'Aucune alerte trouvée.',
            'other': 'Erreur d\'alerte.',
          })}";

  static String m8(title, hardware) => "${Intl.select(title, {
            'alerts_error_short': 'Court-circuit ${hardware}.',
            'alerts_error_noSoftware':
                'Échec de la mise à jour du micrologiciel.',
            'alerts_error_load': '${hardware} n\'a pas réussi à démarrer.',
            'alerts_error_contact': '${hardware} a perdu le contact.',
            'alerts_error_eeprom': 'La mémoire du ${hardware} est corrompue.',
            'other': 'Alerte inconnue.',
          })}";

  static String m9(type) => "${Intl.select(type, {
            'common_error_serverError':
                'Quelque chose s\'est mal passé pendant que nous parlions avec notre serveur. Veuillez réessayer et si le problème perciste, contactez nous pour le soutien.',
            'common_error_insufficientPermission':
                'Vous avez une autorisation insuffisante pour accéder à ce document. Veuillez vous vérifier avec votre administrateur pour ajouter des autorisations.',
            'common_error_emulatorError': 'Erreur d\'émulateur.',
            'apiary_error_invalidDocument':
                'Le document de ruches que vous recherchez est invalide ou corrompu. Veuillez noter l\'identifiant en haut à droite et contactez-nous pour support.',
            'apiary_error_missingDocument':
                'Le document des ruches que vous recherchez est absent de notre base de données. Veuillez noter l\'identifiant en haut à droite et contactez-nous pour support.',
            'apiary_error_missingConfig':
                'Le rucher est manquant, c\'est le fichier de configuration. S\'il vous plaît essayez de rafraîchir la page et si le problème perciste, contactez-nous pour le soutien.',
            'apiary_error_noApiaries':
                'Vous ne semblez pas encore avoir des résidus d\'abiaries. Vous pouvez cliquer sur le bouton pour ajouter votre premier rucher ou vous rafraîchir dans le menu si vous pensez qu\'il y avait une erreur.',
            'apiary_error_invalidLocation':
                'L\'emplacement n\'a pas été défini pour ce rucher, il n\'est donc pas possible d\'obtenir des données météo. Vous pouvez modifier les détails des éventuels et ajouter un emplacement afin de voir les données météorologiques.',
            'other': 'Unknown',
          })}";

  static String m10(failure) => "${Intl.select(failure, {
            'auth_error_cancelledByUser': 'Annulé par l\'utilisateur.',
            'common_error_serverError': 'Erreur côté serveur.',
            'auth_error_emailAlreadyInUse': '',
            'auth_error_accountAlreadyExists': 'Courriel déjà utilisé.',
            'auth_error_invalidEmailAndPassword':
                'Combinaison email et mot de passe invalide.',
            'auth_error_missingUserDoc':
                'Votre document utilisateur est manquant, veuillez nous contacter pour obtenir de l\'aide.',
            'auth_error_missingUserSettings':
                'Vos paramètres d\'utilisateur sont manquants, veuillez nous contacter pour obtenir de l\'aide.',
            'auth_error_invalidUserDoc':
                'Votre document d\'utilisateur n\'est pas valide, veuillez nous contacter pour obtenir de l\'aide.',
            'auth_error_invalidUserSettings':
                'Vos paramètres d\'utilisateur sont invalides, veuillez nous contacter pour obtenir de l\'aide.',
            'common_error_insufficientPermission': 'Permissions insuffisantes.',
            'other': 'Erreur d\'authentification.',
          })}";

  static String m11(failure) => "${Intl.select(failure, {
            'auth_error_invalidEmail':
                'Veuillez saisir une adresse électronique valide.',
            'auth_error_shortPassword':
                'Veuillez utiliser un mot de passe plus long.',
            'auth_error_invalidPassword':
                'Veuillez inclure (au moins) une lettre majuscule et un chiffre.',
            'auth_error_longDisplayName':
                'Veuillez saisir un nom d\'affichage plus court (max 16 caractères).',
            'auth_error_invalidisplayName':
                'Veuillez entrer un nom d\'affichage valide.',
            'auth_error_invalidDateFormat': 'Format de date non valide.',
            'auth_error_invalidUnitSystem': 'Système d\'unité non valide.',
            'other': 'Erreur de valeur d\'authentification.',
          })}";

  static String m12(type) => "${Intl.select(type, {
            'common_error_serverError': 'erreur du serveur',
            'common_error_insufficientPermission': 'Permissions insuffisantes',
            'common_error_emulatorError': 'Erreur d\'émulateur',
            'auth_error_cancelledByUser': 'Annulé',
            'auth_error_emailAlreadyInUse': 'Le mail existe',
            'auth_error_accountAlreadyExists': 'Compte existe',
            'auth_error_invalidEmailAndPassword': 'Combo invalide',
            'auth_error_missingUserDoc': 'Utilisateur manquant',
            'auth_error_missingUserSettings': 'Paramètres manquants',
            'auth_error_invalidUserDoc': 'Utilisateur invalide',
            'auth_error_invalidUserSettings': 'Paramètres non valides',
            'other': 'Unknown',
          })}";

  static String m13(format) => "${Intl.select(format, {
            'eu': 'EU (dd/MM/yyyy)',
            'us': 'US (MM/dd/yyyy)',
            'swiss': 'Suisse (dd.mm.yyyy)',
            'other': 'invalid',
          })}";

  static String m14(format) => "${Intl.select(format, {
            'metric': 'Métrique',
            'imperial': 'Impérial',
            'other': 'invalid',
          })}";

  static String m15(type) => "${Intl.select(type, {
            'common_error_serverError':
                'Quelque chose s\'est mal passé pendant que nous parlions avec notre serveur. Veuillez réessayer et si le problème perciste, contactez nous pour le soutien.',
            'common_error_insufficientPermission':
                'Vous avez une autorisation insuffisante pour accéder à ce document. Veuillez vous vérifier avec votre administrateur pour ajouter des autorisations.',
            'common_error_emulatorError': 'Erreur d\'émulateur.',
            'common_error_noWeatherData':
                'Il n\'y a pas de données météo pour vos résidus. Veuillez vérifier que l\'emplacement est valide et si le problème perciste, veuillez nous contacter pour assistance.',
            'common_error_location':
                'Il y avait un problème lors de la restauration de l\'emplacement. S\'il vous plaît vérifier que l\'emplacement est valide et si le problème perciste, veuillez nous contacter pour assistance.',
            'common_error_missingLocationPermission':
                'Vous n\'avez pas donné la permission d\'utiliser l\'emplacement de l\'appareil. Pour utiliser cette fonctionnalité, veuillez mettre à jour vos autorisations dans vos paramètres.',
            'common_error_missingCameraPermission':
                'Vous n\'avez pas donné la permission d\'utiliser la caméra de l\'appareil. Pour utiliser cette fonctionnalité, veuillez mettre à jour vos autorisations dans vos paramètres.',
            'common_error_missingGalleryPermission':
                'Vous n\'avez pas autorisé à utiliser les images de l\'appareil. Pour utiliser cette fonctionnalité, veuillez mettre à jour vos autorisations dans vos paramètres.',
            'hive_error_invalidDocument':
                'Le document est invalide ou corrompu. Veuillez noter l\'identifiant en haut à droite et contactez-nous pour support.',
            'common_error_missingTasks':
                'Vous n\'avez aucune tâche actuellement sur ce rucher. Vous pouvez ajouter une nouvelle tâche en cliquant sur le bouton ci-dessous. Si vous pensez qu\'il y a une erreur, essayez Actualiser la page dans le menu en haut à droite.',
            'other': 'Unknown',
          })}";

  static String m16(type) => "${Intl.select(type, {
            'common_error_serverError':
                'Quelque chose s\'est mal passé pendant que nous parlions avec notre serveur. Veuillez réessayer et si le problème perciste, contactez nous pour le soutien.',
            'common_error_insufficientPermission':
                'Vous avez une autorisation insuffisante pour accéder à ce document. Veuillez vous vérifier avec votre administrateur pour ajouter des autorisations.',
            'common_error_emulatorError': 'Erreur d\'émulateur.',
            'common_error_missingValue': 'entrer un nombre, SVP',
            'common_error_invalidEntity':
                'La valeur sélectionnée n\'est pas valide. Veuillez sélectionner un autre.',
            'auth_error_invalidEmail': 'Veuillez entrer un email valide.',
            'auth_error_shortPassword':
                'Veuillez utiliser un mot de passe de plus de 8 caractères.',
            'auth_error_invalidPassword':
                'Veuillez inclure (au moins) une lettre et un numéro de majuscule.',
            'auth_error_longDisplayName':
                'Veuillez entrer un nom d\'affichage plus court (max 16 caractères).',
            'auth_error_invalidDisplayName':
                'Veuillez entrer un nom d\'affichage valide. Évitez les caractères et les symboles spéciaux.',
            'auth_error_invalidDateFormat':
                'Veuillez entrer un format de date valide.',
            'auth_error_invalidUnitSystem':
                'Veuillez entrer un système d\'unité valide.',
            'common_error_invalidTaskPriority':
                'S\'il vous plaît entrer une priorité valide.',
            'common_error_invalidObservation':
                'Veuillez entrer une observation valide.',
            'common_error_invalidNormal':
                'Veuillez entrer une valeur comprise entre 0 et 1.',
            'common_error_invalidAmount':
                'Veuillez entrer un montant valide. Ne peut pas être un montant négatif.',
            'common_error_invalidLogType':
                'Veuillez entrer un type de journal valide.',
            'other': 'Unknown',
          })}";

  static String m17(type) => "${Intl.select(type, {
            'common_error_serverError': 'erreur du serveur',
            'common_error_insufficientPermission': 'Permissions insuffisantes',
            'common_error_emulatorError': 'Erreur d\'émulateur',
            'common_error_noWeatherData': 'Pas de temps',
            'common_error_location': 'Erreur de localisation',
            'common_error_missingLocationPermission':
                'Autorisations manquantes',
            'common_error_missingCameraPermission': 'Autorisations manquantes',
            'common_error_missingGalleryPermission': 'Autorisations manquantes',
            'hive_error_invalidDocument': 'Document invalide',
            'common_error_missingTasks': 'Tâches manquantes',
            'other': 'Unknown',
          })}";

  static String m18(bool) => "${Intl.select(bool, {
            'true': 'Vrai',
            'false': 'Faux',
            'other': 'Unknown',
          })}";

  static String m19(type) => "${Intl.select(type, {
            'LOW': 'Meugler',
            'MEDIUM': 'Moyen',
            'HIGH': 'Haut',
            'other': 'Unknown',
          })}";

  static String m20(page) => "${Intl.select(page, {
            'ConnectTab': 'Connectez',
            'AlertsRoute': 'Alertes',
            'HardwareRoute': 'Matériel',
            'HardwareDetailsRoute': 'Détails',
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
      "${Intl.plural(count, zero: 'jours', one: 'jour', other: 'jours')}";

  static String m24(count) =>
      "${Intl.plural(count, zero: 'Heures', one: 'Heure', other: 'Heures')}";

  static String m25(failure) => "${Intl.select(failure, {
            'database_error_missingUserDoc':
                'Votre document utilisateur est manquant, veuillez nous contacter pour obtenir de l\'aide.',
            'database_error_missingUserSettings':
                'Vos paramètres d\'utilisateur sont manquants, veuillez nous contacter pour obtenir de l\'aide.',
            'database_error_invalidUserDoc':
                'Votre document d\'utilisateur n\'est pas valide, veuillez nous contacter pour obtenir de l\'aide.',
            'database_error_invalidUserSettings':
                'Vos paramètres d\'utilisateur sont invalides, veuillez nous contacter pour obtenir de l\'aide.',
            'common_error_permissionDenied': 'Autorisations insuffisantes.',
            'common_error_serverError': 'Erreur de serveur.',
            'other': 'Erreur de base de données.',
          })}";

  static String m26(failure) => "${Intl.select(failure, {
            'database_error_invalidHiveType':
                'Type de ruche non valide, veuillez mettre à jour.',
            'other': 'Erreur de base de données.',
          })}";

  static String m27(type) => "${Intl.select(type, {
            'APIBRAIN': 'SET APIARY',
            'HIVE_CONNECT': 'SET HIVE',
            'other': 'SET LOCATION',
          })}";

  static String m28(failure) => "${Intl.select(failure, {
            'hardware_error_noConnect':
                'Nous ne détectons rien de connecté à ce matériel.',
            'hardware_error_noCombs':
                'Nous ne détectons pas de peignes pour ce matériel.',
            'hardware_error_noTemperature':
                'Nous ne détectons pas de relevés de température récents pour ce matériel.',
            'hardware_error_noWeight':
                'Nous ne détectons aucun relevé de poids récent pour ce matériel.',
            'hardware_error_noHeartbeat':
                'Nous ne détectons aucun battement de cœur récent pour ce matériel.',
            'hardware_error_noTreatments':
                'Nous ne détectons pas de traitements récents pour ce matériel.',
            'other': 'Erreur matérielle auxiliaire.',
          })}";

  static String m29(failure) => "${Intl.select(failure, {
            'connect_error_timeout':
                'Le Bluetooth s\'est arrêté avant de trouver un matériel Vatorex.  Veuillez vérifier que votre matériel est allumé et que le voyant Bluetooth est actif.',
            'connect_error_bluetoothNotAvailable':
                'Bluetooth n\'est pas disponible.  Veuillez vérifier que votre Bluetooth est activé ou que vous disposez de Bluetooth sur cet appareil.',
            'connect_error_invalidBleResp':
                'Réponse invalide de Bluetooth.  Veuillez réessayer et si le problème persiste, contactez l\'assistance de Vatorex.',
            'connect_error_notConnected':
                'Die Hardware ist nicht über Bluetooth verbunden.  Bitte gehen Sie zurück zur Hauptseite und versuchen Sie erneut, die Hardware zu verbinden.  Wenn das Problem weiterhin besteht, versuchen Sie, die Hardware aus- und wieder einzuschalten.',
            'connect_error_deviceIsBusy':
                'Le matériel est actuellement occupé par une autre action.  Veuillez attendre quelques minutes et réessayer.',
            'connect_error_alreadyConnected': 'Le matériel est déjà connecté.',
            'connect_error_intialization':
                'Le matériel n\'a pas réussi à initialiser la communication.  Veuillez cliquer sur Connecter pour réessayer.  Si le problème persiste, essayez d\'éteindre et de rallumer le matériel.',
            'connect_error_deviceNotPrepared':
                'Le matériel n\'est pas préparé.  Veuillez attendre un moment et réessayer.',
            'connect_error_bluetoothError':
                'Un problème est survenu lors de la communication avec le Bluetooth.  Veuillez vérifier le message d\'erreur ci-dessous et réessayer.  Si le problème persiste, veuillez nous contacter pour obtenir de l\'aide.',
            'connect_error_notFound':
                'Aucun matériel Vatorex n\'a été trouvé via Bluetooth.  Veuillez vous assurer que la lumière bleue est allumée sur le matériel et réessayez.  Vous devrez peut-être vous rapprocher ou éteindre et rallumer le matériel si le problème persiste.',
            'other': 'Erreur Bluetooth.',
          })}";

  static String m30(failure) => "${Intl.select(failure, {
            'ERROR_EEPROM': 'EEPROM',
            'ERROR_SHORT': 'COURT',
            'ERROR_NO_SOFTWARE': 'SOFTWARE',
            'ERROR_LOAD': 'CHARGE',
            'ERROR_CONTACT': 'CONTACT',
            'other': 'Hardware error.',
          })}";

  static String m31(failure) => "${Intl.select(failure, {
            'hardware_error_missingHardwareDoc':
                'Le document relatif au matériel est manquant, veuillez nous contacter pour obtenir de l\'aide.',
            'hardware_error_invalidHardwareDoc':
                'Le document relatif au matériel n\'est pas valide, veuillez nous contacter pour obtenir de l\'aide.',
            'hardware_error_noHardware':
                'Aucun matériel n\'a été trouvé dans notre système.',
            'hardware_error_alreadyRegistered':
                'Ce matériel est déjà enregistré au nom de quelqu\'un d\'autre. Veuillez contacter le propriétaire pour lui accorder l\'accès.',
            'hardware_error_notRegistered':
                'Le matériel n\'est pas enregistré dans notre système.  Si vous souhaitez l\'enregistrer dans votre compte, cliquez sur le bouton \"Enregistrer\" ci-dessous.',
            'hardware_error_searchNotFound': 'Aucun résultat.',
            'hardware_error_nothingToSearch':
                'Aucun matériel n\'est enregistré. Veuillez enregistrer un matériel avant de lancer une recherche.',
            'hardware_error_noHardwareLocation':
                'Aucun emplacement pour le matériel n\'a été trouvé.  Veuillez ajouter au moins un rucher et une ruche à l\'application ‹HiveManager›.',
            'hardware_error_sameLocationSet':
                'Le matériel se trouve déjà ici.  Veuillez sélectionner un autre emplacement.',
            'other': 'Erreur matérielle.',
          })}";

  static String m32(failure) => "${Intl.select(failure, {
            'hardware_error_invalidType': 'Type de matériel non valide.',
            'other': 'Défaut de valeur matérielle.',
          })}";

  static String m33(type) => "${Intl.select(type, {
            'APIBRAIN': 'Changer de ruche',
            'HIVE_CONNECT': 'Changez la ruche',
            'other': 'Changement de lieu',
          })}";

  static String m34(error) =>
      "Le document matériel contient une erreur de valeur : [${error}].  Nous sommes désolés pour ce problème. Veuillez contacter le service d\'assistance avec cette erreur.";

  static String m35(type) => "${Intl.select(type, {
            'APIBRAIN': '‹ApiBrain›',
            'HIVE_CONNECT': '‹Hive Connect›',
            'COMB': 'Peigne',
            'other': 'Type de matériel non valide',
          })}";

  static String m36(type) => "${Intl.select(type, {
            'common_error_serverError':
                'Quelque chose s\'est mal passé pendant que nous parlions avec notre serveur. Veuillez réessayer et si le problème perciste, contactez nous pour le soutien.',
            'common_error_insufficientPermission':
                'Vous avez une autorisation insuffisante pour accéder à ce document. Veuillez vous vérifier avec votre administrateur pour ajouter des autorisations.',
            'common_error_emulatorError': 'Erreur d\'émulateur.',
            'hive_error_invalidDocument':
                'Le document de la ruche que vous recherchez est invalide ou corrompu. Veuillez noter l\'identifiant en haut à droite et contactez-nous pour support.',
            'hive_error_missingDocument':
                'Le document de la ruche que vous recherchez manque de notre base de données. Veuillez noter l\'identifiant en haut à droite et contactez-nous pour support.',
            'hive_error_missingConfig':
                'La ruche manque son fichier de configuration. S\'il vous plaît essayez de rafraîchir la page et si le problème perciste, contactez-nous pour le soutien.',
            'hive_error_missingColony':
                'La ruche n\'a pas de colonie. Vous pouvez cliquer sur le bouton pour ajouter une nouvelle colonie ou sélectionner Actualiser dans le menu si vous pensez qu\'il y avait une erreur.',
            'hive_error_missingQueen':
                'Vous n\'avez pas de reines vivantes à l\'intérieur de cette ruche. Lorsque vous courez votre ruche, vous pouvez ajouter ses informations en cliquant sur le bouton ci-dessous.',
            'hive_error_noHives':
                'Vous ne semblez pas encore avoir de ruches encore. Vous pouvez cliquer sur le bouton pour ajouter votre première ruche ou sélectionner Actualiser dans le menu si vous pensez qu\'il y avait une erreur.',
            'other': 'Unknown',
          })}";

  static String m37(type) => "${Intl.select(type, {
            'common_error_serverError': 'erreur du serveur',
            'common_error_insufficientPermission': 'Permissions insuffisantes',
            'common_error_emulatorError': 'Erreur d\'émulateur',
            'hive_error_invalidDocument': 'Ruche non valide',
            'hive_error_missingDocument': 'Ruche manquante',
            'hive_error_missingConfig': 'Configuration de la ruche manquante',
            'hive_error_missingColony': 'Colonie manquante',
            'hive_error_missingQueen': 'Reine manquante',
            'hive_error_noHives': 'Aucune ruche',
            'other': 'Unknown',
          })}";

  static String m38(type) => "${Intl.select(type, {
            'QUEEN_BOUGHT': 'Achetée',
            'QUEEN_RAISED': 'Élevée',
            'QUEEN_WILD': 'Sauvage',
            'QUEEN_UNKNOWN': 'Origine inconnue',
            'other': 'Unknown',
          })}";

  static String m39(type) => "${Intl.select(type, {
            'APIS_MELLIFERA': 'européen',
            'APIS_MELLIFERA_MELLIFERA': 'Sombre',
            'APIS_MELLIFERA_LIGUSTICA': 'italien',
            'APIS_MELLIFERA_CARNICA': 'Carniolan',
            'APIS_MELLIFERA_CAUCASICA': 'caucasien',
            'APIS_MELLIFERA_IBERIENSIS': 'Espagnol',
            'APIS_MELLIFERA_SCUTELLATA': 'Plaine',
            'APIS_MELLIFERA_MONTICOLA': 'Montagnes',
            'APIS_MELLIFERA_CAPENSIS': 'Cap',
            'APIS_X_BUCKFAST': 'Buccaste',
            'APIS_CERANA': 'Est',
            'APIS_DORSATA': 'Géant',
            'SCUTELLATA_X_LIGUSTICA': 'Africilisé',
            'RACE_MIXED': 'Mixte',
            'RACE_UNKNOWN': 'Inconnu',
            'other': 'Unknown',
          })}";

  static String m40(type) => "${Intl.select(type, {
            'APIS_MELLIFERA': 'Apis mellifera',
            'APIS_MELLIFERA_MELLIFERA': 'Apis mellifera (mellifera)',
            'APIS_MELLIFERA_LIGUSTICA': 'Apis mellifera (ligustica)',
            'APIS_MELLIFERA_CARNICA': 'Apis mellifera (carnica)',
            'APIS_MELLIFERA_CAUCASICA': 'Apis mellifera (caucasica)',
            'APIS_MELLIFERA_IBERIENSIS': 'Apis mellifera (iberiensis)',
            'APIS_MELLIFERA_SCUTELLATA': 'Apis mellifera (scutellata)',
            'APIS_MELLIFERA_MONTICOLA': 'Apis mellifera (monticola)',
            'APIS_MELLIFERA_CAPENSIS': 'Apis mellifera (capensis)',
            'APIS_X_BUCKFAST': 'Apis x Buckfast',
            'APIS_CERANA': 'Apis cerana',
            'APIS_DORSATA': 'Apis dorsata',
            'SCUTELLATA_X_LIGUSTICA': 'Scutellata x Ligustica',
            'RACE_MIXED': 'Mixed',
            'RACE_UNKNOWN': 'Unknown',
            'other': 'Unknown taxonomy.',
          })}";

  static String m41(type) => "${Intl.select(type, {
            'LOW': 'Meugler',
            'MEDIUM': 'Milieu',
            'HIGH': 'Haut',
            'other': 'Unknown',
          })}";

  static String m42(type) => "${Intl.select(type, {
            'COLONY_NUC': 'Nucle',
            'COLONY_SWARM': 'Essaim',
            'COLONY_ARTIFICIAL_SWARM': 'Essaim artificiel',
            'COLONY_COMMERCIAL': 'Commercial',
            'COLONY_CUTOUT': 'Découper',
            'COLONY_UNKNOWN': 'Inconnu',
            'other': 'Unknown',
          })}";

  static String m43(type) => "${Intl.select(type, {
            'MAGAZINE': 'Magazine',
            'BEE_HOUSE': 'Maison de la ruche',
            'SKEP': 'Panier',
            'LOG_HIVE': 'Ruches à bûches',
            'NUC': 'Ruche nucleus',
            'TOP_BAR': 'Top Bar',
            'LONG_BOX': 'Boîte longue',
            'BIENENKISTE': 'Bienenkiste',
            'other': 'Unknown',
          })}";

  static String m44(type) => "${Intl.select(type, {
            'HORIZONTAL': 'Horizontale',
            'VERTICAL': 'Verticale',
            'other': 'Unknown',
          })}";

  static String m45(type) => "${Intl.select(type, {
            'LANGSTROTH_STANDARD': 'Langstroth',
            'LANGSTROTH_JUMBO': 'Langstroth Jumbo',
            'BS_NATIONAL': 'BS National',
            'BS_COMMERCIAL': 'BS Commercial',
            'ROSE': 'Rose',
            'SMITH': 'Smith',
            'SEGEBERGER_BEUTE': 'Ruche Segeberger',
            'FRANKENBEUTE': 'Frankenbeute',
            'DEUTSCHES_NORMALMASS': 'Standard allemand',
            'DADANT_BLATT': 'Dadant Blatt',
            'DADANT_US': 'Dadant US',
            'ZANDER': 'Zadant',
            'ZANDER_ALPINE': 'Zander',
            'ZADANT': 'Zander alpin',
            'FLOW': 'Flow',
            'MINI_PLUS': 'Mini Plus',
            'WARRE_STANDARD': 'Warre',
            'WBC_STANDARD': 'Standard WBC',
            'CDB_STANDARD': 'Standard CDB',
            'SCHWEIZER_MAGAZIN': 'Magazine suisse',
            'HELVETICA': 'Helvetica',
            'OTHER_MAGAZINE': 'Autre',
            'SLOVENIAN': 'Slovène',
            'SCHWEIZERKASTEN': 'Standard suisse',
            'SPUEHLER': 'Spühler',
            'OTHER_BEE_HOUSE': 'Autre',
            'SKEP_BASKET': 'Ruche à panier',
            'SUN_HIVE': 'Sun Hive',
            'LOG_HIVE': 'Journal Hive',
            'KENYAN': 'Ruche kenyane Top Bar',
            'BEEHAUS': 'Beehaus',
            'DARTINGTON_LONG_DEEP': 'Dartington Long Deep',
            'OTHER_TOP_BAR': 'Autre',
            'LAYENS': 'Layens',
            'GOLDEN': 'doré',
            'LANGSTROTH_LONG': 'Langstroth horizontale',
            'OTHER_LONG_BOX': 'Autre',
            'BIENENKISTE': 'Bienenkiste',
            'DADANT_NUC': 'Dadant Nucléus',
            'LANGSTROTH_NUC': 'Langstroth Nucléus',
            'BS_NATIONAL_NUC': 'BS National Nucléus',
            'BS_COMMERCIAL_NUC': 'Commercial BS Nucléus',
            'SMITH_NUC': 'Smith Nucléus',
            'MINI_NUC': 'Mini Nucléus',
            'OTHER_NUC': 'Autre',
            'other': 'Unknown',
          })}";

  static String m46(type) => "${Intl.select(type, {
            'RED': 'Rouge',
            'WHITE': 'Blanche',
            'BLUE': 'Bleue',
            'GREEN': 'Verte',
            'YELLOW': 'Jaune',
            'other': 'Unknown',
          })}";

  static String m47(count) =>
      "${Intl.plural(count, zero: '${count} Cadres', one: '${count} Cadre', other: '${count} Cadres')}";

  static String m48(type) => "${Intl.select(type, {
            'common_error_serverError':
                'Quelque chose s\'est mal passé pendant que nous parlions avec notre serveur. Veuillez réessayer et si le problème perciste, contactez nous pour le soutien.',
            'common_error_insufficientPermission':
                'Vous avez une autorisation insuffisante pour accéder à ce document. Veuillez vous vérifier avec votre administrateur pour ajouter des autorisations.',
            'common_error_emulatorError': 'Erreur d\'émulateur.',
            'log_error_noLogs':
                'Il n\'y a pas encore de journaux pour ce rucher. Vous pouvez ajouter votre premier journal en cliquant sur le bouton ci-dessous. Si vous pensez qu\'il y a une erreur, essayez Actualiser la page dans le menu en haut à droite.',
            'log_error_invalidDocument':
                'Le document de journal que vous recherchez est invalide ou corrompu. Veuillez noter l\'identifiant en haut à droite et contactez-nous pour support.',
            'log_error_missingDocument':
                'Le document de journal que vous recherchez manque de notre base de données. Veuillez noter l\'identifiant en haut à droite et contactez-nous pour support.',
            'other': 'Unknown',
          })}";

  static String m49(method, amount) => "${Intl.select(method, {
            'STICKY_BOARD': '${amount} varroa (/jour)',
            'other': '${amount} varroa (/100 abeilles)',
          })}";

  static String m50(apiary) => "${apiary}créé";

  static String m51(apiary) => "${apiary}supprimé";

  static String m52(hive) => "${hive}créé";

  static String m53(hive) => "${hive}supprimé";

  static String m54(hive, apiary) => "${hive}déplacé vers ${apiary}";

  static String m55(queen) => "${queen}créé";

  static String m56(queen) => "${queen}supprimé";

  static String m57(queen) => "${queen}est mort";

  static String m58(queen) => "${queen}déplacé";

  static String m59(oldQueen, queen) => "${oldQueen}remplacé par ${queen}";

  static String m60(severity) => "Le braquage ${severity}";

  static String m61(caught) => "Essaimé ${caught}";

  static String m62(method) => "traitement ${method}";

  static String m63(severity) => "Comte de Varroa ${severity}";

  static String m64(type) => "Note météo ${type}";

  static String m65(type) => "${Intl.select(type, {
            'common_error_serverError': 'erreur du serveur',
            'common_error_insufficientPermission': 'Permissions insuffisantes',
            'common_error_emulatorError': 'Erreur d\'émulateur',
            'log_error_noLogs': 'Pas de journaux',
            'log_error_invalidDocument': 'Journal non valide',
            'log_error_missingDocument': 'Journal manquant',
            'other': 'Unknown',
          })}";

  static String m66(type) => "${Intl.select(type, {
            'USER_CREATED': 'Créé par l\'utilisateur',
            'USER_UPDATED': 'Mise à jour de l\'utilisateur',
            'APIARY_CREATED': 'Rubia créé',
            'APIARY_UPDATED': 'Apiable mise à jour',
            'APIARY_DELETED': 'Apiaire supprimé',
            'HIVE_CREATED': 'Hive créé',
            'HIVE_MOVED': 'Ruche déplacé',
            'HIVE_UPDATED': 'HIVE mise à jour',
            'HIVE_DELETED': 'HIVE supprimée',
            'HARDWARE_REGISTERED': 'Matériel enregistré',
            'COLONY_CREATED': 'Colonie créée',
            'COLONY_UPDATED': 'Colony mises à jour',
            'COLONY_MOVED': 'La colonie a déménagé',
            'COLONY_DELETED': 'Colonie supprimée',
            'COLONY_DIED': 'La colonie est morte',
            'QUEEN_CREATED': 'Reine créée',
            'QUEEN_DELETED': 'Reine supprimé',
            'QUEEN_UPDATED': 'Reine mise à jour',
            'QUEEN_MOVED': 'Queen a déménagé',
            'QUEEN_SUPERSEDED': 'Reine remplaça',
            'QUEEN_DIED': 'Queen est morte',
            'INSPECTION_CREATED': 'Inspection créée',
            'INSPECTION_UPDATED': 'Inspection mise à jour',
            'INSPECTION_DELETED': 'Inspection supprimée',
            'FEEDING_CREATED': 'Alimentation créée',
            'FEEDING_UPDATED': 'Alimentation mise à jour',
            'FEEDING_DELETED': 'Alimentation supprimée',
            'HARVEST_CREATED': 'Récolte créée',
            'HARVEST_UPDATED': 'Récolte mise à jour',
            'HARVEST_DELETED': 'Récolte supprimé',
            'TASK_CREATED': 'Tâche créée',
            'TASK_COMPLETED': 'Tâche terminée',
            'TASK_ARCHIVED': 'Tâche archivée',
            'TASK_DELETED': 'Tâche supprimée',
            'IMPORTED': 'Document importé',
            'ROBBING': 'Vol',
            'WEATHER': 'Temps',
            'VARROA_COUNT': 'Nombre de varroa',
            'TREATMENT': 'Traitement',
            'SWARMED': 'Essaimé',
            'NOTE': 'Noter',
            'other': 'Unknown',
          })}";

  static String m67(type) => "${Intl.select(type, {
            'CLOTH_ABOVE': 'Tissu ci-dessus',
            'CLOTH_BELOW': 'Chiffon ci-dessous',
            'LIE_BAG': 'Loyer',
            'NASSENHEIDER': 'Disperman Nassenheider',
            'SHELL': 'Coquille',
            'VAPORIZE': 'Vaporisateur',
            'SPRAY': 'Pulvérisation',
            'TRICKLE': 'Ruisselant',
            'GEL_STRIP': 'Bande de gel',
            'PLATELETS': 'Plaquettes',
            'CONTACT_STRIP': 'Bande de contact',
            'VARROA_SOLUTION': 'Kit Vatorex Varroa',
            'VARROA_CONTROLLER': 'Varroa Controller',
            'VARROA_KILL': 'Varroa kill II',
            'MITE_ZAPPER': 'Mite zapper',
            'BIENENSAUNA': 'Biénensaune',
            'PATTIES': 'Galettes',
            'TRAP': 'Piège',
            'UNKNOWN': 'Inconnu',
            'other': 'Unknown',
          })}";

  static String m68(type) => "${Intl.select(type, {
            'AMITRAZ': 'Amitraz',
            'B401': 'B401',
            'COUMAPHOS': 'Coumaphos',
            'FLUVALINATE': 'Fluvalinate',
            'FORMIC_ACID': 'Acide formique',
            'FLUMERTHRIN': 'Flumerthrin',
            'FUMIDIL_B': 'Fumidil-B',
            'HOPS_BETA_ACID': 'Houblon acide bêta',
            'LACTIC_ACID': 'Acide lactique',
            'MENTHOL': 'Menthol',
            'OXALIC_ACID': 'Acide oxalique',
            'PARADICHLOROBENZENE': 'Paradichlorobenzène',
            'PERMETHRIN': 'Perméthrine',
            'TERRAMYCIN': 'Terramycine',
            'THYMOL': 'Thymol',
            'TYLOSIN': 'Tylosine',
            'HEAT': 'Traitement thermique',
            'DIATOMACSIOUS_EARTH': 'Terre de diatomées',
            'DRONE_COMB_TRAPS': 'Drone peigne piège',
            'MITE_TRAPS': 'Piège à acariens',
            'MOTH_TRAPS': 'Pièges à papillon',
            'BEETLE_TRAPS': 'Pièges à coléoptères',
            'OTHER': 'Autre',
            'other': 'Unknown',
          })}";

  static String m69(type) => "${Intl.select(type, {
            'STICKY_BOARD': 'Bâton collant',
            'POWDERED_SUGAR': 'Sucre en poudre',
            'ALCOHOL_WASH': 'Lavage d\'alcool',
            'ETHER_ROLL': 'Éther rouleau',
            'other': 'Unknown',
          })}";

  static String m70(type) => "${Intl.select(type, {
            'DARK_CLOUD': 'Nuage sombre',
            'FOGGY': 'Brumeux',
            'SUN': 'Soleil',
            'PARTIAL_SHOWERS': 'Douches partielles',
            'PARTIAL_SUN': 'Soleil partiel',
            'SHADED': 'Ombragé',
            'RAIN': 'Pluie',
            'SNOW': 'Neige',
            'STORM': 'Tempête',
            'WIND': 'Vent',
            'other': 'Unknown',
          })}";

  static String m71(failure) => "${Intl.select(failure, {
            'push_error_serverError': 'Erreur de serveur.',
            'push_error_permissionDenied': 'Autorisations insuffisantes.',
            'other': 'Erreur de notification de poussée.',
          })}";

  static String m72(failure) => "${Intl.select(failure, {
            'search_error_nFCNotAvailable':
                'La technologie NFC n\'est pas disponible sur votre appareil.',
            'search_error_nFCNotFound': 'Aucun tag NFC n\'a été trouvé.',
            'search_error_timeout': 'NFC a expiré. Veuillez réessayer.',
            'search_error_invalidNFC':
                'Le tag NFC n\'est pas reconnu, assurez-vous qu\'il s\'agit d\'un matériel Vatorex.',
            'search_error_nDEFNotWritten':
                'Le tag NFC n\'est pas encore écrit, veuillez réinitialiser le matériel. Si le problème persiste, contactez-nous pour obtenir de l\'aide.',
            'search_error_noCachedMessage':
                'Le tag NFC a été écrit de manière incorrecte, veuillez réinitialiser le matériel. Si le problème persiste, contactez-nous pour obtenir de l\'aide.',
            'other': 'Erreur de recherche NFC.',
          })}";

  static String m73(tag) =>
      "Nous avons trouvé un tag NFC !\\nÉtiquette: ${tag}\\nVeuillez patienter pendant que nous vous emmenons à la page des détails du matériel.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "action_text_FeedType": m0,
        "action_text_apiaryType": m1,
        "action_text_disease": m2,
        "action_text_exposureType": m3,
        "action_text_honeyType": m4,
        "actions_error_actionFailure": m5,
        "actions_error_feedingFailureTitle":
            MessageLookupByLibrary.simpleMessage("Panne d\'alimentation"),
        "actions_error_harvestFailureMessage": MessageLookupByLibrary.simpleMessage(
            "Quelque chose s\'est mal passé lors de la récolte de cette ruche. Vérifiez l\'erreur ci-dessous et si le problème persiste, contactez-nous pour obtenir de l\'aide."),
        "actions_error_harvestFailureTitle":
            MessageLookupByLibrary.simpleMessage("Échec de récolte"),
        "actions_error_inspectionFailureMessage":
            MessageLookupByLibrary.simpleMessage(
                "Quelque chose s\'est mal passé lors des inspections de cette ruche. Vérifiez l\'erreur ci-dessous et si le problème persiste, contactez-nous pour obtenir de l\'aide."),
        "actions_error_inspectionFailureTitle":
            MessageLookupByLibrary.simpleMessage("Panne d\'inspection"),
        "actions_error_noFeedingsMessage": MessageLookupByLibrary.simpleMessage(
            "Vous n\'avez aucune alimentation pour cette ruche. Ajoutez votre première inspection afin de voir l\'état des ruches."),
        "actions_error_noInspectionsMessage": MessageLookupByLibrary.simpleMessage(
            "Vous n\'avez aucune inspection pour cette ruche. Ajoutez votre première inspection afin de voir l\'état des ruches."),
        "actions_form_activityHelper": MessageLookupByLibrary.simpleMessage(
            "Quelle est la quantité d\'activité de recherche de nourriture qui sort à l\'avant de la ruche ?"),
        "actions_form_activityTitle":
            MessageLookupByLibrary.simpleMessage("Activité"),
        "actions_form_addFeeding":
            MessageLookupByLibrary.simpleMessage("AJOUTER DE L\'ALIMENTATION"),
        "actions_form_addHarvest":
            MessageLookupByLibrary.simpleMessage("AJOUTER UNE RÉCOLTE"),
        "actions_form_amount": MessageLookupByLibrary.simpleMessage("Montant"),
        "actions_form_amountOptional":
            MessageLookupByLibrary.simpleMessage("Montant (Facultatif)"),
        "actions_form_boxesAmountOptional":
            MessageLookupByLibrary.simpleMessage("Boîtes (en option)"),
        "actions_form_diseaseHelper": MessageLookupByLibrary.simpleMessage(
            "Sélectionnez tous les ravageurs et maladies détectés au cours de l\'inspection."),
        "actions_form_diseaseTitle":
            MessageLookupByLibrary.simpleMessage("Parasite/maladie (s)"),
        "actions_form_editFeeding":
            MessageLookupByLibrary.simpleMessage("MODIFIER L\'ALIMENTATION"),
        "actions_form_editHarvest":
            MessageLookupByLibrary.simpleMessage("MODIFIER LA RÉCOLTE"),
        "actions_form_editInspectionTitle":
            MessageLookupByLibrary.simpleMessage("Modifier l\'inspection"),
        "actions_form_edtiFeeding":
            MessageLookupByLibrary.simpleMessage("Modifier l\'alimentation"),
        "actions_form_feedAmountHelper": MessageLookupByLibrary.simpleMessage(
            "Entrez la quantité d\'aliments donnés aux abeilles"),
        "actions_form_feedType":
            MessageLookupByLibrary.simpleMessage("Type d\'alimentation"),
        "actions_form_feedTypeHelper": MessageLookupByLibrary.simpleMessage(
            "Sélectionnez le type d\'aliment donné à vos abeilles"),
        "actions_form_feedingDateHelper": MessageLookupByLibrary.simpleMessage(
            "Sélectionnez la date de l\'alimentation"),
        "actions_form_feedingPictureHelper": MessageLookupByLibrary.simpleMessage(
            "Prenez une photo de plusieurs images sélectionnées à inclure dans votre alimentation."),
        "actions_form_feedingProbiotics":
            MessageLookupByLibrary.simpleMessage("Avec probiotiques"),
        "actions_form_framesAmountHelper": MessageLookupByLibrary.simpleMessage(
            "Entrez le nombre d\'images sur votre configuration"),
        "actions_form_framesAmountOptional":
            MessageLookupByLibrary.simpleMessage("Cadres (en option)"),
        "actions_form_harvestBoxesAmountHelper":
            MessageLookupByLibrary.simpleMessage(
                "Entrez le nombre de boîtes de votre configuration"),
        "actions_form_harvestDateHelper": MessageLookupByLibrary.simpleMessage(
            "Sélectionnez la date de la récolte"),
        "actions_form_harvestHoneyAmountHelper":
            MessageLookupByLibrary.simpleMessage(
                "Entrez la quantité de miel récoltée"),
        "actions_form_harvestPictureHelper": MessageLookupByLibrary.simpleMessage(
            "Prenez une photo de plusieurs images sélectionnées à inclure dans votre récolte."),
        "actions_form_harvestWaterContentHelper":
            MessageLookupByLibrary.simpleMessage(
                "Entrez le pourcentage d\'eau"),
        "actions_form_honeyType":
            MessageLookupByLibrary.simpleMessage("Type de miel"),
        "actions_form_honeyTypeHelper":
            MessageLookupByLibrary.simpleMessage("Miel Type de récolte"),
        "actions_form_inspectionDateHelper":
            MessageLookupByLibrary.simpleMessage(
                "Sélectionnez la date de l\'inspection."),
        "actions_form_inspectionNoteHelper": MessageLookupByLibrary.simpleMessage(
            "Entrez toutes les notes supplémentaires concernant les observations de l\'inspection."),
        "actions_form_inspectionPictureHelper":
            MessageLookupByLibrary.simpleMessage(
                "Prenez une photo de plusieurs images sélectionnées à inclure dans votre inspection."),
        "actions_form_moodHelper": MessageLookupByLibrary.simpleMessage(
            "Dans quelle mesure les abeilles sont-elles agressives et protectrices ?"),
        "actions_form_moodTitle":
            MessageLookupByLibrary.simpleMessage("Humeur"),
        "actions_form_newFeeding":
            MessageLookupByLibrary.simpleMessage("Nouveau Feeding"),
        "actions_form_newHarvest":
            MessageLookupByLibrary.simpleMessage("Nouvelle récolte"),
        "actions_form_newInspectionTitle":
            MessageLookupByLibrary.simpleMessage("Nouvelle inspection"),
        "actions_form_noteTitle":
            MessageLookupByLibrary.simpleMessage("Remarque"),
        "actions_form_obsHelper": MessageLookupByLibrary.simpleMessage(
            "Sélectionnez ce que vous avez vu au cours de l\'inspection. Appuyez longuement pour obtenir la description de chaque icône."),
        "actions_form_observationsTitle":
            MessageLookupByLibrary.simpleMessage("Observation (s)"),
        "actions_form_patternHelper": MessageLookupByLibrary.simpleMessage(
            "Quelle est la solidité du motif de couvée ?"),
        "actions_form_patternTitle":
            MessageLookupByLibrary.simpleMessage("Motif"),
        "actions_form_storageTitle":
            MessageLookupByLibrary.simpleMessage("Rangement"),
        "actions_form_strengthHelper": MessageLookupByLibrary.simpleMessage(
            "Quelle est la force de la colonie ? Combien de cadres complets d\'abeilles ?"),
        "actions_form_strengthTitle":
            MessageLookupByLibrary.simpleMessage("Force"),
        "actions_form_strorageHelper": MessageLookupByLibrary.simpleMessage(
            "Combien de magasins de miel possède la colonie ?"),
        "actions_form_waterContentOptional":
            MessageLookupByLibrary.simpleMessage("Teneur en eau (en option)"),
        "actions_menu_editFeeding":
            MessageLookupByLibrary.simpleMessage("Modifier l\'alimentation"),
        "actions_menu_editHarvest":
            MessageLookupByLibrary.simpleMessage("Modifier Harvest"),
        "actions_menu_editInspection":
            MessageLookupByLibrary.simpleMessage("Modifier l\'inspection"),
        "actions_nav_Harvest": MessageLookupByLibrary.simpleMessage("Moisson"),
        "actions_nav_feeding":
            MessageLookupByLibrary.simpleMessage("alimentation"),
        "actions_nav_feedings":
            MessageLookupByLibrary.simpleMessage("Les tétées"),
        "actions_nav_harvests":
            MessageLookupByLibrary.simpleMessage("Récoltes"),
        "actions_nav_inspection":
            MessageLookupByLibrary.simpleMessage("Inspection"),
        "actions_nav_inspections":
            MessageLookupByLibrary.simpleMessage("Inspections"),
        "actions_snack_actionFailure": m6,
        "actions_snack_feedingCreated":
            MessageLookupByLibrary.simpleMessage("Alimentation créée"),
        "actions_snack_feedingSaved":
            MessageLookupByLibrary.simpleMessage("Alimentation enregistrée"),
        "actions_snack_harvestCreated":
            MessageLookupByLibrary.simpleMessage("Récolte créée"),
        "actions_snack_harvestDeleted":
            MessageLookupByLibrary.simpleMessage("Récolte supprimée"),
        "actions_snack_harvestSaved":
            MessageLookupByLibrary.simpleMessage("Récolte enregistrée"),
        "actions_snack_inspectionCreated":
            MessageLookupByLibrary.simpleMessage("Inspection créée"),
        "actions_snack_inspectionDeleted":
            MessageLookupByLibrary.simpleMessage("Inspection supprimée"),
        "actions_snack_inspectionSaved":
            MessageLookupByLibrary.simpleMessage("Inspection enregistrée"),
        "actions_table_dateHeader":
            MessageLookupByLibrary.simpleMessage("Date"),
        "actions_table_moodHeader":
            MessageLookupByLibrary.simpleMessage("Humeur"),
        "actions_table_storageHeader":
            MessageLookupByLibrary.simpleMessage("Rangement"),
        "actions_table_strengthHeader":
            MessageLookupByLibrary.simpleMessage("Force"),
        "actions_text_obsCappedBrood":
            MessageLookupByLibrary.simpleMessage("Couvain coiffé"),
        "actions_text_obsEggs": MessageLookupByLibrary.simpleMessage("Oeufs"),
        "actions_text_obsLarva": MessageLookupByLibrary.simpleMessage("Larve"),
        "actions_text_obsQueen": MessageLookupByLibrary.simpleMessage("Queen"),
        "actions_text_obsQueenCell":
            MessageLookupByLibrary.simpleMessage("Cellule Queen"),
        "actions_word_diseasesSection":
            MessageLookupByLibrary.simpleMessage("MALADIE (S)"),
        "actions_word_observationSection":
            MessageLookupByLibrary.simpleMessage("OBSERVATIONS"),
        "alert_dialog_delete_message": MessageLookupByLibrary.simpleMessage(""),
        "alert_dialog_delete_title": MessageLookupByLibrary.simpleMessage(""),
        "alerts_card_errorTitle":
            MessageLookupByLibrary.simpleMessage("Échec des alertes"),
        "alerts_error_alertsFailure": m7,
        "alerts_error_cardTitle": m8,
        "alerts_message_noAlerts": MessageLookupByLibrary.simpleMessage(
            "Vous n\'avez aucune alerte en cours. Lorsqu\'un nouveau problème survient avec l\'un de vos matériels, vous recevez une notification push et un message."),
        "alerts_title_noAlerts":
            MessageLookupByLibrary.simpleMessage("Aucune alerte"),
        "apiaries_page_noApiaries": MessageLookupByLibrary.simpleMessage(
            "Vous ne semblez pas avoir encore ajouté de ruchers. Vous pouvez cliquer sur le bouton pour ajouter votre premier rucher ou sélectionner Actualiser dans le menu si vous pensez qu\'une erreur s\'est produite."),
        "apiaries_page_title_noApiaries":
            MessageLookupByLibrary.simpleMessage("Pas encore de ruchers."),
        "apiary_button_addApiary":
            MessageLookupByLibrary.simpleMessage("AJOUTER UN RUCHER"),
        "apiary_button_addHive":
            MessageLookupByLibrary.simpleMessage("AJOUTER UNE RUCHE"),
        "apiary_error_apiaryFailure": m9,
        "apiary_error_apiaryFailureTitle":
            MessageLookupByLibrary.simpleMessage("Panne du rucher"),
        "apiary_error_missingConfigMessage": MessageLookupByLibrary.simpleMessage(
            "Il manque un fichier de configuration à ce rucher. Vous devrez peut-être actualiser la page à l\'aide du bouton ci-dessous. Si le problème persiste, veuillez nous contacter pour obtenir de l\'aide."),
        "apiary_error_missingConfigTitle":
            MessageLookupByLibrary.simpleMessage("Configuration manquante."),
        "apiary_error_noHivesMessage": MessageLookupByLibrary.simpleMessage(
            "Ce rucher est actuellement vide. Si vous souhaitez ajouter votre première ruche, cliquez sur le bouton ci-dessous. Si vous pensez qu\'il y a une erreur, essayez d\'actualiser la page à partir du menu en haut à droite."),
        "apiary_error_noHivesTitle":
            MessageLookupByLibrary.simpleMessage("Pas d\'urticaire."),
        "apiary_exposure": MessageLookupByLibrary.simpleMessage("Exposition"),
        "apiary_form_apiaryExposureHelper":
            MessageLookupByLibrary.simpleMessage(
                "Quel type d\'exposition au soleil votre rucher"),
        "apiary_form_apiaryLocationHelper":
            MessageLookupByLibrary.simpleMessage("Emplacement de votre rucher"),
        "apiary_form_apiaryNameHelper":
            MessageLookupByLibrary.simpleMessage("Nom qui sera affiché"),
        "apiary_form_apiarySerialHelper": MessageLookupByLibrary.simpleMessage(
            "Champ optionnel. Numéro de série du rucher"),
        "apiary_form_apiaryTypeHelper":
            MessageLookupByLibrary.simpleMessage("Type de rucher"),
        "apiary_form_locationHelper": MessageLookupByLibrary.simpleMessage(
            "Sur la carte, appuyez sur l\'emplacement du rucher. Utilisez la barre de recherche si ce n\'est pas à proximité de votre position actuelle."),
        "apiary_form_locationSetTo": MessageLookupByLibrary.simpleMessage(""),
        "apiary_form_useCurrentLocation":
            MessageLookupByLibrary.simpleMessage(""),
        "apiary_menu_addApiary":
            MessageLookupByLibrary.simpleMessage("Ajouter un rucher"),
        "apiary_menu_addHive":
            MessageLookupByLibrary.simpleMessage("Ajouter une ruche"),
        "apiary_menu_addLog":
            MessageLookupByLibrary.simpleMessage("Ajouter un journal"),
        "apiary_menu_addTask":
            MessageLookupByLibrary.simpleMessage("Ajouter une tâche"),
        "apiary_menu_allApiaries":
            MessageLookupByLibrary.simpleMessage("Tous les ruchers"),
        "apiary_menu_edit":
            MessageLookupByLibrary.simpleMessage("Modifier le rucher"),
        "apiary_message_noApiaryMessage": MessageLookupByLibrary.simpleMessage(
            "Vous ne semblez pas avoir encore ajouté de ruchers. Vous pouvez cliquer sur le bouton pour ajouter votre premier rucher ou sélectionner Actualiser dans le menu si vous pensez qu\'une erreur s\'est produite."),
        "apiary_message_noApiaryTitle":
            MessageLookupByLibrary.simpleMessage("Pas encore de ruchers."),
        "apiary_new_apiary":
            MessageLookupByLibrary.simpleMessage("Nouveau rucher"),
        "apiary_snack_apiaryCreated":
            MessageLookupByLibrary.simpleMessage("Création d\'un rucher"),
        "apiary_snack_apiaryRemoved": MessageLookupByLibrary.simpleMessage(""),
        "apiary_snack_apiarySaved":
            MessageLookupByLibrary.simpleMessage("Ruche sauvée"),
        "apiary_sun_exposure_full_sun":
            MessageLookupByLibrary.simpleMessage("Sunny"),
        "apiary_sun_exposure_half_shaded":
            MessageLookupByLibrary.simpleMessage("Partiel"),
        "apiary_sun_exposure_shaded":
            MessageLookupByLibrary.simpleMessage("Ombré"),
        "apiary_title_apiaryDetails":
            MessageLookupByLibrary.simpleMessage("Détail du rucher"),
        "apiary_type": MessageLookupByLibrary.simpleMessage("Type"),
        "apiary_type_mixed": MessageLookupByLibrary.simpleMessage("Mixte"),
        "apiary_type_rural": MessageLookupByLibrary.simpleMessage("ruraux"),
        "apiary_type_urban": MessageLookupByLibrary.simpleMessage("Urbain"),
        "apiary_weather_forecastTitle":
            MessageLookupByLibrary.simpleMessage("Prévisions"),
        "apiary_word_hivesSection":
            MessageLookupByLibrary.simpleMessage("RUCHES"),
        "auth_button_appleLogin":
            MessageLookupByLibrary.simpleMessage("Connectez-vous avec Apple"),
        "auth_button_changePassword":
            MessageLookupByLibrary.simpleMessage("CHANGER LE MOT DE"),
        "auth_button_createAccount":
            MessageLookupByLibrary.simpleMessage("CRÉER UN COMPTE"),
        "auth_button_deleteAccount":
            MessageLookupByLibrary.simpleMessage("SUPPRIMER UN COMPTE"),
        "auth_button_editAccount":
            MessageLookupByLibrary.simpleMessage("MODIFIER UN COMPTE"),
        "auth_button_facebookLogin": MessageLookupByLibrary.simpleMessage(
            "Connectez-vous avec Facebook"),
        "auth_button_googleLogin":
            MessageLookupByLibrary.simpleMessage("Connectez-vous avec Google"),
        "auth_button_login": MessageLookupByLibrary.simpleMessage("CONNEXION"),
        "auth_button_passwordlessLogin":
            MessageLookupByLibrary.simpleMessage("Connexion sans mot de passe"),
        "auth_button_resetPassword":
            MessageLookupByLibrary.simpleMessage("ENVOYER UN E-MAIL"),
        "auth_button_restPassword":
            MessageLookupByLibrary.simpleMessage("Oublié ?"),
        "auth_dialog_deleteAccountContent": MessageLookupByLibrary.simpleMessage(
            "Vous êtes sûr ? Une fois que vous aurez confirmé, vous ne pourrez plus revenir en arrière."),
        "auth_dialog_deleteAccountTitle":
            MessageLookupByLibrary.simpleMessage("Supprimer le compte ?"),
        "auth_error_authFailure": m10,
        "auth_error_missingTerms": MessageLookupByLibrary.simpleMessage(
            "Vous devez accepter les CGV avant de poursuivre."),
        "auth_error_valueFailure": m11,
        "auth_form_addressHelper": MessageLookupByLibrary.simpleMessage(
            "Vous pouvez également saisir votre adresse."),
        "auth_form_bioHelper": MessageLookupByLibrary.simpleMessage(
            "Entrez une brève description de vous."),
        "auth_form_displayNameHelper": MessageLookupByLibrary.simpleMessage(
            "Entrez un nom d\'affichage. (max 24 caractères)"),
        "auth_form_firstNameHelper":
            MessageLookupByLibrary.simpleMessage("Entrez votre prénom."),
        "auth_form_lastNameHelper": MessageLookupByLibrary.simpleMessage(
            "Entrez votre nom de famille."),
        "auth_form_phoneHelper": MessageLookupByLibrary.simpleMessage(
            "Vous pouvez également saisir votre numéro de téléphone."),
        "auth_menu_editAccount":
            MessageLookupByLibrary.simpleMessage("Modifier le compte"),
        "auth_menu_linkAccounts":
            MessageLookupByLibrary.simpleMessage("Comptes de liaison"),
        "auth_menu_settings":
            MessageLookupByLibrary.simpleMessage("Paramètres"),
        "auth_message_createAccountSuccess":
            MessageLookupByLibrary.simpleMessage("Succès ! Compte créé"),
        "auth_message_emailSent":
            MessageLookupByLibrary.simpleMessage("Le succès ! E-mail envoyé"),
        "auth_message_loginSuccess":
            MessageLookupByLibrary.simpleMessage("Le succès ! Connecté"),
        "auth_route_createAccount": MessageLookupByLibrary.simpleMessage(
            "Vous n\'avez pas de compte ? Inscrivez-vous sur"),
        "auth_route_login": MessageLookupByLibrary.simpleMessage(
            "Vous avez déjà un compte ? Connectez-vous à"),
        "auth_snack_authFailure": m12,
        "auth_switch_termsAndService": MessageLookupByLibrary.simpleMessage(
            "J\'accepte les conditions de service et la politique de confidentialité de Vatorex."),
        "auth_text_dateFormat": m13,
        "auth_text_resetPasswordInstructions": MessageLookupByLibrary.simpleMessage(
            "Veuillez saisir l\'adresse électronique associée à votre compte et appuyer sur le bouton \"Envoyer l\'e-mail\".  Nous vous enverrons un e-mail avec le lien de changement de mot de passe."),
        "auth_text_unitSystem": m14,
        "auth_title_accountPage":
            MessageLookupByLibrary.simpleMessage("Compte"),
        "auth_title_address": MessageLookupByLibrary.simpleMessage("Adresse"),
        "auth_title_biography": MessageLookupByLibrary.simpleMessage("Bio"),
        "auth_title_createAccountPage":
            MessageLookupByLibrary.simpleMessage("Créer un compte"),
        "auth_title_dateFormat":
            MessageLookupByLibrary.simpleMessage("Format de la date"),
        "auth_title_firstName": MessageLookupByLibrary.simpleMessage("Prénom"),
        "auth_title_lastName":
            MessageLookupByLibrary.simpleMessage("Nom de famille"),
        "auth_title_loginPage":
            MessageLookupByLibrary.simpleMessage("Connexion"),
        "auth_title_phone":
            MessageLookupByLibrary.simpleMessage("Numéro de téléphone"),
        "auth_title_resetPasswordPage": MessageLookupByLibrary.simpleMessage(
            "Réinitialiser le mot de passe"),
        "auth_title_unitSystem":
            MessageLookupByLibrary.simpleMessage("Système d\'unités"),
        "button_add_apiary":
            MessageLookupByLibrary.simpleMessage("Ajouter un rucher"),
        "common_button_account": MessageLookupByLibrary.simpleMessage("Compte"),
        "common_button_addTask":
            MessageLookupByLibrary.simpleMessage("AJOUTER UNE TÂCHE"),
        "common_button_alerts": MessageLookupByLibrary.simpleMessage("Alertes"),
        "common_button_connect":
            MessageLookupByLibrary.simpleMessage("CONNECTER"),
        "common_button_contact":
            MessageLookupByLibrary.simpleMessage("Contact"),
        "common_button_delete":
            MessageLookupByLibrary.simpleMessage("SUPPRIMER"),
        "common_button_download":
            MessageLookupByLibrary.simpleMessage("TÉLÉCHARGER"),
        "common_button_edit": MessageLookupByLibrary.simpleMessage("MODIFIER"),
        "common_button_file": MessageLookupByLibrary.simpleMessage("DOSSIER"),
        "common_button_files":
            MessageLookupByLibrary.simpleMessage("FICHIER (S)"),
        "common_button_hardware":
            MessageLookupByLibrary.simpleMessage("Matériel informatique"),
        "common_button_help": MessageLookupByLibrary.simpleMessage("Help"),
        "common_button_home": MessageLookupByLibrary.simpleMessage("MAISON"),
        "common_button_newFeatures":
            MessageLookupByLibrary.simpleMessage("Nouvelles fonctionnalités"),
        "common_button_photo": MessageLookupByLibrary.simpleMessage("PHOTO"),
        "common_button_reportIssue":
            MessageLookupByLibrary.simpleMessage("PROBLÈME DE RAPPORT"),
        "common_button_retry":
            MessageLookupByLibrary.simpleMessage("ACTUALISER"),
        "common_button_save": MessageLookupByLibrary.simpleMessage("SAUVER"),
        "common_button_search":
            MessageLookupByLibrary.simpleMessage("CHERCHER"),
        "common_button_settings":
            MessageLookupByLibrary.simpleMessage("PARAMÈTRES"),
        "common_button_signOut":
            MessageLookupByLibrary.simpleMessage("DÉCONNECTEZ-VOUS"),
        "common_button_tasks": MessageLookupByLibrary.simpleMessage("TÂCHES"),
        "common_error_commonFailure": m15,
        "common_error_noFeedingsTitle":
            MessageLookupByLibrary.simpleMessage("Pas de repas"),
        "common_error_noHarvestsMessage": MessageLookupByLibrary.simpleMessage(
            "Vous n\'avez aucune récolte pour cette ruche. Ajoutez votre première inspection afin de voir l\'état des ruches."),
        "common_error_noHarvestsTitle":
            MessageLookupByLibrary.simpleMessage("Pas de récoltes"),
        "common_error_noInspectionsTitle":
            MessageLookupByLibrary.simpleMessage("Aucune inspection"),
        "common_error_noStatusTitle":
            MessageLookupByLibrary.simpleMessage("Aucun statut"),
        "common_error_permissionTitle":
            MessageLookupByLibrary.simpleMessage("Permission insuffisante"),
        "common_error_serverTitle":
            MessageLookupByLibrary.simpleMessage("Erreur du serveur"),
        "common_error_valueFailure": m16,
        "common_form_dateTitle": MessageLookupByLibrary.simpleMessage("Date"),
        "common_form_editTaskTitle":
            MessageLookupByLibrary.simpleMessage("Modifier la tâche"),
        "common_form_newTaskTitle":
            MessageLookupByLibrary.simpleMessage("Nouvelle tâche"),
        "common_form_pictureTitle":
            MessageLookupByLibrary.simpleMessage("Photo"),
        "common_form_picturesTitle":
            MessageLookupByLibrary.simpleMessage("Photo (s)"),
        "common_form_severityTitle":
            MessageLookupByLibrary.simpleMessage("Gravité"),
        "common_form_taskDescriptionHelper":
            MessageLookupByLibrary.simpleMessage(
                "Rédigez une brève description de la tâche."),
        "common_form_taskDescriptionTitle":
            MessageLookupByLibrary.simpleMessage("Description de la tâche"),
        "common_form_taskDueDateHelper": MessageLookupByLibrary.simpleMessage(
            "Sélectionnez la date d\'échéance de la tâche."),
        "common_form_taskDueDateTitle":
            MessageLookupByLibrary.simpleMessage("Date d\'échéance"),
        "common_form_taskPriorityHelper": MessageLookupByLibrary.simpleMessage(
            "Sélectionnez la priorité de la tâche."),
        "common_form_taskPriorityTitle":
            MessageLookupByLibrary.simpleMessage("Priorité"),
        "common_input_showArchived":
            MessageLookupByLibrary.simpleMessage("Afficher les archives"),
        "common_message_contact": MessageLookupByLibrary.simpleMessage(
            "Besoin d\'aide ? Contactez-nous"),
        "common_message_failureTitle":
            MessageLookupByLibrary.simpleMessage("Panne commune"),
        "common_message_missingId":
            MessageLookupByLibrary.simpleMessage("ID manquant"),
        "common_message_noTasksMessage": MessageLookupByLibrary.simpleMessage(
            "Vous n\'avez actuellement aucune tâche sur ce rucher. Vous pouvez ajouter une nouvelle tâche en cliquant sur le bouton ci-dessous."),
        "common_message_noTasksTitle":
            MessageLookupByLibrary.simpleMessage("Aucune tâche"),
        "common_message_noUserTasksMessage": MessageLookupByLibrary.simpleMessage(
            "Vous n\'avez actuellement aucune tâche sur ce rucher. Vous pouvez accéder à votre rucher ou à votre ruche et cliquer sur l\'onglet des tâches pour ajouter des tâches."),
        "common_nav_tasksTitle": MessageLookupByLibrary.simpleMessage("Tâches"),
        "common_snack_commonFailure": m17,
        "common_snack_dismiss": MessageLookupByLibrary.simpleMessage("Rejeter"),
        "common_snack_taskCreated":
            MessageLookupByLibrary.simpleMessage("Tâche créée"),
        "common_snack_taskDeleted":
            MessageLookupByLibrary.simpleMessage("Tâche supprimée"),
        "common_snack_taskSaved":
            MessageLookupByLibrary.simpleMessage("Tâche enregistrée"),
        "common_table_contact":
            MessageLookupByLibrary.simpleMessage("Contacter"),
        "common_table_controls": MessageLookupByLibrary.simpleMessage("CTRL"),
        "common_table_device": MessageLookupByLibrary.simpleMessage("Appareil"),
        "common_table_error": MessageLookupByLibrary.simpleMessage("ERR."),
        "common_table_errors": MessageLookupByLibrary.simpleMessage("Erreurs"),
        "common_table_hiveId": MessageLookupByLibrary.simpleMessage("RucheId"),
        "common_table_registered":
            MessageLookupByLibrary.simpleMessage("inscrit"),
        "common_table_treatment":
            MessageLookupByLibrary.simpleMessage("Traiter"),
        "common_text_boolean": m18,
        "common_text_failed": MessageLookupByLibrary.simpleMessage("Raté !"),
        "common_text_initialize":
            MessageLookupByLibrary.simpleMessage("Initialisation..."),
        "common_text_loading":
            MessageLookupByLibrary.simpleMessage("Chargement..."),
        "common_text_missingData":
            MessageLookupByLibrary.simpleMessage("Aucune donnée de capteur..."),
        "common_text_severity": m19,
        "common_text_weather": MessageLookupByLibrary.simpleMessage("Météo"),
        "common_title_pages": m20,
        "common_units_temperatureValue": m21,
        "common_units_weightValue": m22,
        "common_word_Amt": MessageLookupByLibrary.simpleMessage("AMT"),
        "common_word_activity":
            MessageLookupByLibrary.simpleMessage("Activité"),
        "common_word_allTime":
            MessageLookupByLibrary.simpleMessage("Tous les temps"),
        "common_word_amount": MessageLookupByLibrary.simpleMessage("Montant"),
        "common_word_apiary": MessageLookupByLibrary.simpleMessage("rucher"),
        "common_word_average": MessageLookupByLibrary.simpleMessage("Moyenne"),
        "common_word_bees":
            MessageLookupByLibrary.simpleMessage("Les abeilles"),
        "common_word_cancel": MessageLookupByLibrary.simpleMessage("Annuler"),
        "common_word_caught": MessageLookupByLibrary.simpleMessage("Pris"),
        "common_word_colonies":
            MessageLookupByLibrary.simpleMessage("Colonies"),
        "common_word_colour": MessageLookupByLibrary.simpleMessage("Couleur"),
        "common_word_commands":
            MessageLookupByLibrary.simpleMessage("Commandes"),
        "common_word_confirm":
            MessageLookupByLibrary.simpleMessage("Confirmer"),
        "common_word_connection":
            MessageLookupByLibrary.simpleMessage("Connexion"),
        "common_word_controls":
            MessageLookupByLibrary.simpleMessage("Commandes"),
        "common_word_date": MessageLookupByLibrary.simpleMessage("Date"),
        "common_word_day": m23,
        "common_word_defence": MessageLookupByLibrary.simpleMessage("Défense"),
        "common_word_disconnected":
            MessageLookupByLibrary.simpleMessage("Déconnecté"),
        "common_word_displayName":
            MessageLookupByLibrary.simpleMessage("Nom d\'affichage"),
        "common_word_email": MessageLookupByLibrary.simpleMessage("Courriel"),
        "common_word_empty": MessageLookupByLibrary.simpleMessage("Vide"),
        "common_word_english": MessageLookupByLibrary.simpleMessage("Anglais"),
        "common_word_error": MessageLookupByLibrary.simpleMessage("Erreur"),
        "common_word_french": MessageLookupByLibrary.simpleMessage("Français"),
        "common_word_german": MessageLookupByLibrary.simpleMessage("Allemand"),
        "common_word_hardware":
            MessageLookupByLibrary.simpleMessage("matériel"),
        "common_word_harvests":
            MessageLookupByLibrary.simpleMessage("Récoltes"),
        "common_word_heartbeat":
            MessageLookupByLibrary.simpleMessage("HeartBeat"),
        "common_word_high": MessageLookupByLibrary.simpleMessage("HAUT"),
        "common_word_hive": MessageLookupByLibrary.simpleMessage("Ruche"),
        "common_word_honey": MessageLookupByLibrary.simpleMessage("Miel"),
        "common_word_hour": m24,
        "common_word_humidity":
            MessageLookupByLibrary.simpleMessage("humidité"),
        "common_word_id": MessageLookupByLibrary.simpleMessage("ID"),
        "common_word_ideal":
            MessageLookupByLibrary.simpleMessage("Couvain idéal"),
        "common_word_italian": MessageLookupByLibrary.simpleMessage("Italien"),
        "common_word_lastSeason":
            MessageLookupByLibrary.simpleMessage("La saison dernière"),
        "common_word_low": MessageLookupByLibrary.simpleMessage("FAIBLE"),
        "common_word_medium": MessageLookupByLibrary.simpleMessage("MILIEU"),
        "common_word_missing": MessageLookupByLibrary.simpleMessage("manquant"),
        "common_word_mood": MessageLookupByLibrary.simpleMessage("Humeur"),
        "common_word_notesSection":
            MessageLookupByLibrary.simpleMessage("NOTES"),
        "common_word_origin": MessageLookupByLibrary.simpleMessage("Origine"),
        "common_word_password":
            MessageLookupByLibrary.simpleMessage("Mot de passe"),
        "common_word_pattern": MessageLookupByLibrary.simpleMessage("Motif"),
        "common_word_queen": MessageLookupByLibrary.simpleMessage("Queen"),
        "common_word_queens": MessageLookupByLibrary.simpleMessage("Queens"),
        "common_word_read": MessageLookupByLibrary.simpleMessage("Lire"),
        "common_word_selected":
            MessageLookupByLibrary.simpleMessage("sélectionné"),
        "common_word_sort": MessageLookupByLibrary.simpleMessage("Trier"),
        "common_word_statusSection":
            MessageLookupByLibrary.simpleMessage("STATUT"),
        "common_word_storage":
            MessageLookupByLibrary.simpleMessage("Rangement"),
        "common_word_strength": MessageLookupByLibrary.simpleMessage("Force"),
        "common_word_temperature":
            MessageLookupByLibrary.simpleMessage("Température"),
        "common_word_theme": MessageLookupByLibrary.simpleMessage("Thème"),
        "common_word_thisSeason":
            MessageLookupByLibrary.simpleMessage("Cette saison"),
        "common_word_timestamp":
            MessageLookupByLibrary.simpleMessage("Horodatage"),
        "common_word_total": MessageLookupByLibrary.simpleMessage("Total"),
        "common_word_totalWeight":
            MessageLookupByLibrary.simpleMessage("Total (poids)"),
        "common_word_treatment":
            MessageLookupByLibrary.simpleMessage("Traitement"),
        "common_word_type": MessageLookupByLibrary.simpleMessage("Type"),
        "common_word_varroa": MessageLookupByLibrary.simpleMessage("Varroa"),
        "common_word_weight": MessageLookupByLibrary.simpleMessage("Poids"),
        "commone_word_software":
            MessageLookupByLibrary.simpleMessage("Logiciels"),
        "connect_button_connect":
            MessageLookupByLibrary.simpleMessage("RELIER"),
        "connect_button_reinitialize":
            MessageLookupByLibrary.simpleMessage("RÉINITIALISER"),
        "connect_button_scan": MessageLookupByLibrary.simpleMessage("BALAYAGE"),
        "connect_card_bluetoothErrorMessage": MessageLookupByLibrary.simpleMessage(
            "Une erreur s\'est produite lors de la connexion via Bluetooth. Vérifiez que votre Bluetooth est activé et réessayez."),
        "connect_card_bluetoothErrorTitle":
            MessageLookupByLibrary.simpleMessage("Erreur Bluetooth"),
        "connect_card_debugErrorTitle":
            MessageLookupByLibrary.simpleMessage("Erreur de débogage"),
        "connect_card_failedDownload": MessageLookupByLibrary.simpleMessage(
            "Parfois, lors de la connexion, tous les fichiers ne sont pas correctement téléchargés. Consultez la liste ci-dessous et réessayez tous les fichiers qui n\'ont pas pu être chargés. Si vous ne parvenez pas à télécharger les fichiers, désactivez l\'ApiBrain et attendez 10 minutes avant de réinitialiser et d\'essayer à nouveau."),
        "connect_card_initialText": MessageLookupByLibrary.simpleMessage(
            "Cliquez sur le bouton pour lancer la recherche par Bluetooth de tout matériel Vatorex à proximité. Assurez-vous que le Bluetooth est activé sur votre téléphone et sur le matériel."),
        "connect_card_scanTitle":
            MessageLookupByLibrary.simpleMessage("Numérisation avec Bluetooth"),
        "connect_card_timeoutMessage": MessageLookupByLibrary.simpleMessage(
            "Délai de connexion, assurez-vous que votre appareil est connecté."),
        "connect_card_turnOnBluetoothText": MessageLookupByLibrary.simpleMessage(
            "Apibrain n\'est pas connecté. Veuillez vérifier que votre matériel est allumé et que la lumière Bluetooth est active."),
        "connect_card_turnOnBluetoothTitle":
            MessageLookupByLibrary.simpleMessage("Apibrain non connecté"),
        "connect_debug_getConfigTitle":
            MessageLookupByLibrary.simpleMessage("Obtenez Konfig"),
        "connect_debug_getInfoTitle":
            MessageLookupByLibrary.simpleMessage("Obtenir des informations"),
        "connect_debug_getStateTitle":
            MessageLookupByLibrary.simpleMessage("Obtenir l\'état"),
        "connect_error_connectBluetooth": MessageLookupByLibrary.simpleMessage(
            "Veuillez vous connecter à votre appareil via Bluetooth."),
        "connect_loading_downloadingFiles":
            MessageLookupByLibrary.simpleMessage(
                "Chargement de fichiers à partir du matériel connecté..."),
        "connect_message_commLineSuccess":
            MessageLookupByLibrary.simpleMessage("Succès CommLine"),
        "connect_message_downloadSuccess":
            MessageLookupByLibrary.simpleMessage("Succès"),
        "connect_message_initializeSuccess":
            MessageLookupByLibrary.simpleMessage("Succès d\'initialisation"),
        "connect_message_missingCommLine":
            MessageLookupByLibrary.simpleMessage("CommLine manquante"),
        "connect_message_notInitialized":
            MessageLookupByLibrary.simpleMessage("Non initialisé"),
        "connect_page_title":
            MessageLookupByLibrary.simpleMessage("Page de connexion"),
        "connect_snack_error":
            MessageLookupByLibrary.simpleMessage("Erreur de connexion."),
        "connect_text_gettingCommands": MessageLookupByLibrary.simpleMessage(
            "Obtention des commandes initiales"),
        "connect_text_notRegistered":
            MessageLookupByLibrary.simpleMessage("Non enregistré"),
        "connect_word_scanningDevices":
            MessageLookupByLibrary.simpleMessage("Appareils de numérisation"),
        "database_error_databaseFailure": m25,
        "database_error_valueFailure": m26,
        "database_message_saveSuccess":
            MessageLookupByLibrary.simpleMessage("Sauvé."),
        "database_message_updateSuccess":
            MessageLookupByLibrary.simpleMessage("Mis à jour."),
        "datatbase_card_errorTitle": MessageLookupByLibrary.simpleMessage(
            "Défaillance de la base de données"),
        "feeding_page_probiotics":
            MessageLookupByLibrary.simpleMessage("PROBIOTIQUES"),
        "feeding_page_withProbiotics":
            MessageLookupByLibrary.simpleMessage("Avec probiotiques"),
        "feeding_page_withoutProbiotics":
            MessageLookupByLibrary.simpleMessage("Sans probiotiques"),
        "hardware_button_createHardware":
            MessageLookupByLibrary.simpleMessage("CRÉER DU MATÉRIEL"),
        "hardware_button_nfcSearch":
            MessageLookupByLibrary.simpleMessage("SCAN AVEC NFC"),
        "hardware_button_registerHardware":
            MessageLookupByLibrary.simpleMessage("MATÉRIEL DE REGISTRE"),
        "hardware_button_setLocation": m27,
        "hardware_button_testConnection":
            MessageLookupByLibrary.simpleMessage("Connexion de test"),
        "hardware_button_testSetup":
            MessageLookupByLibrary.simpleMessage("Configuration du test"),
        "hardware_card_createHardwareMessage": MessageLookupByLibrary.simpleMessage(
            "Le document relatif à ce matériel est introuvable sur notre système. Cela signifie probablement qu\'il ne s\'est pas encore connecté via IoT. Vous pouvez créer le document à l\'aide du bouton ci-dessous et il sera mis à jour au cours du prochain cycle IoT."),
        "hardware_card_errorTitle":
            MessageLookupByLibrary.simpleMessage("Défaillance du matériel"),
        "hardware_card_missingHardwareData": MessageLookupByLibrary.simpleMessage(
            "Le document que vous recherchez ne se trouve pas sur le matériel connecté ou dans notre base de données. Éteignez et rallumez l\'appareil, puis réessayez."),
        "hardware_card_noHardwareMessage": MessageLookupByLibrary.simpleMessage(
            "Aucun matériel Vatorex n\'est attaché à ce rucher. Si vous possédez du matériel Vatorex et que vous souhaitez le lier à votre compte, téléchargez l\'application Hive Connector, enregistrez votre matériel et définissez l\'emplacement. \n\nSi vous pensez qu\'il y a une erreur, essayez d\'actualiser la page à partir du menu en haut à droite."),
        "hardware_card_noHardwareTitle":
            MessageLookupByLibrary.simpleMessage("Matériel introuvable."),
        "hardware_card_unregisteredTitle":
            MessageLookupByLibrary.simpleMessage("Matériel non enregistré"),
        "hardware_chartTitle_sinceSync":
            MessageLookupByLibrary.simpleMessage("depuis Sync"),
        "hardware_dialog_missingLocation": MessageLookupByLibrary.simpleMessage(
            "Vous n\'avez nulle part où ajouter de matériel."),
        "hardware_dialog_setLocationHiveManager":
            MessageLookupByLibrary.simpleMessage(
                "Si vous utilisez l\'application ‹HiveManager›, vous pourrez voir toutes les informations de capteur de votre rucher ou de votre ruche."),
        "hardware_dialog_setLocationInstruction":
            MessageLookupByLibrary.simpleMessage(
                "Sélectionnez dans la liste ci-dessous l\'endroit où vous possédez actuellement ce matériel."),
        "hardware_dialog_setLocationTitle":
            MessageLookupByLibrary.simpleMessage("Définir l\'emplacement"),
        "hardware_error_auxiliaryFailure": m28,
        "hardware_error_connectFailure": m29,
        "hardware_error_hardwareError": m30,
        "hardware_error_hardwareFailure": m31,
        "hardware_error_valueFailure": m32,
        "hardware_form_selectLocation":
            MessageLookupByLibrary.simpleMessage("Sélectionnez l\'emplacement"),
        "hardware_loading_disconnected": MessageLookupByLibrary.simpleMessage(
            "Le matériel a été déconnecté..."),
        "hardware_menu_byApiary":
            MessageLookupByLibrary.simpleMessage("Par Apiary"),
        "hardware_menu_byHive":
            MessageLookupByLibrary.simpleMessage("Par Hive"),
        "hardware_menu_byType":
            MessageLookupByLibrary.simpleMessage("Par le matériel"),
        "hardware_menu_changeLocation": m33,
        "hardware_menu_debug": MessageLookupByLibrary.simpleMessage("Débogage"),
        "hardware_menu_recentlyRegistered":
            MessageLookupByLibrary.simpleMessage("Enregistrés récemment"),
        "hardware_menu_recentlySynced":
            MessageLookupByLibrary.simpleMessage("Synchronisation récente"),
        "hardware_message_cardInvalid": MessageLookupByLibrary.simpleMessage(
            "Un problème est survenu lors de la récupération de votre document.  Nous sommes désolés pour ce problème. Veuillez contacter le service d\'assistance pour signaler cette erreur."),
        "hardware_message_cardValueError": m34,
        "hardware_message_missingHardware": MessageLookupByLibrary.simpleMessage(
            "Vous ne semblez pas avoir connecté/enregistré de matériel.  Veuillez connecter votre premier appareil."),
        "hardware_message_waitingForSync": MessageLookupByLibrary.simpleMessage(
            "En attendant la première synchronisation..."),
        "hardware_message_waitingForTreatment":
            MessageLookupByLibrary.simpleMessage(
                "En attendant le traitement..."),
        "hardware_test_getConfig": MessageLookupByLibrary.simpleMessage(
            "Obtention des configurations."),
        "hardware_test_needLog":
            MessageLookupByLibrary.simpleMessage("Vérification des journaux."),
        "hardware_test_scanAllLight":
            MessageLookupByLibrary.simpleMessage("Recherche de modifications."),
        "hardware_test_syncIot":
            MessageLookupByLibrary.simpleMessage("Sync_IoT"),
        "hardware_test_testIot":
            MessageLookupByLibrary.simpleMessage("Test de la connexion IoT."),
        "hardware_text_hardwareType": m35,
        "hardware_text_lastSync":
            MessageLookupByLibrary.simpleMessage("Dernière Sync"),
        "hardware_text_lastTreatment":
            MessageLookupByLibrary.simpleMessage("depuis le traitement"),
        "hardware_title_noHardware":
            MessageLookupByLibrary.simpleMessage("Aucun matériel enregistré"),
        "harvest_page_Honey": MessageLookupByLibrary.simpleMessage("Miel"),
        "harvest_page_boxes": MessageLookupByLibrary.simpleMessage("Boites"),
        "harvest_page_frames": MessageLookupByLibrary.simpleMessage("Cadres"),
        "hive_button_addFeeding":
            MessageLookupByLibrary.simpleMessage("Ajouter une alimentation"),
        "hive_button_addHarvest":
            MessageLookupByLibrary.simpleMessage("Ajouter une récolte"),
        "hive_button_addInspection":
            MessageLookupByLibrary.simpleMessage("AJOUTER UNE INSPECTION"),
        "hive_button_addQueen":
            MessageLookupByLibrary.simpleMessage("AJOUTER UNE REINE"),
        "hive_error_hiveFailure": m36,
        "hive_error_missingHiveTitle":
            MessageLookupByLibrary.simpleMessage("Document de ruche manquant"),
        "hive_error_noColonyMessage":
            MessageLookupByLibrary.simpleMessage("Ruche vide"),
        "hive_error_noQueenMessage":
            MessageLookupByLibrary.simpleMessage("Queenless"),
        "hive_form_beeRaceHelper": MessageLookupByLibrary.simpleMessage(
            "Sélectionnez la sous-espèce de votre reine."),
        "hive_form_beeRaceTitle":
            MessageLookupByLibrary.simpleMessage("Course d\'abeilles"),
        "hive_form_categoryHelper": MessageLookupByLibrary.simpleMessage(
            "Sélectionnez la façon dont les boîtes s\'affichent."),
        "hive_form_colonyBought":
            MessageLookupByLibrary.simpleMessage("Acheté"),
        "hive_form_colonyTypeHelper": MessageLookupByLibrary.simpleMessage(
            "Sélectionnez le type de colonie."),
        "hive_form_colonyTypeTitle":
            MessageLookupByLibrary.simpleMessage("Type de colonie"),
        "hive_form_currentApiaryTitle":
            MessageLookupByLibrary.simpleMessage("Rucher actuel"),
        "hive_form_directionHelper": MessageLookupByLibrary.simpleMessage(
            "Sélectionnez la direction dans laquelle les boîtes s\'empilent."),
        "hive_form_editColonyTitle":
            MessageLookupByLibrary.simpleMessage("Éditer Colony"),
        "hive_form_editHiveTitle":
            MessageLookupByLibrary.simpleMessage("Éditer Hive"),
        "hive_form_editQueenTitle":
            MessageLookupByLibrary.simpleMessage("Éditer Queen"),
        "hive_form_framesHelper": MessageLookupByLibrary.simpleMessage(
            "Sélectionnez le nombre de cadres dans une zone."),
        "hive_form_hiveName":
            MessageLookupByLibrary.simpleMessage("Nom de la ruche"),
        "hive_form_hiveNameHelper": MessageLookupByLibrary.simpleMessage(
            "Sélectionnez un nom pour la ruche. (max 24 caractères)"),
        "hive_form_hivePictureHelper": MessageLookupByLibrary.simpleMessage(
            "Sélectionnez une image à utiliser pour votre ruche."),
        "hive_form_hiveTypeHelper": MessageLookupByLibrary.simpleMessage(
            "Effectuez une recherche dans la liste des types de ruches ou utilisez la commande Modifier pour sélectionner par catégorie."),
        "hive_form_hiveTypeTitle":
            MessageLookupByLibrary.simpleMessage("Type de ruche"),
        "hive_form_moveHiveTitle":
            MessageLookupByLibrary.simpleMessage("Déplacer la ruche"),
        "hive_form_newColonyTitle":
            MessageLookupByLibrary.simpleMessage("New Colony"),
        "hive_form_newHiveTitle":
            MessageLookupByLibrary.simpleMessage("Nouvelle ruche"),
        "hive_form_newQueenTitle":
            MessageLookupByLibrary.simpleMessage("Nouveau Queen"),
        "hive_form_queenAlive": MessageLookupByLibrary.simpleMessage("Alive"),
        "hive_form_queenClipped":
            MessageLookupByLibrary.simpleMessage("Clippé"),
        "hive_form_queenColorHelper": MessageLookupByLibrary.simpleMessage(
            "De quelle couleur la reine est-elle marquée ?"),
        "hive_form_queenColorTitle":
            MessageLookupByLibrary.simpleMessage("Couleur Queen"),
        "hive_form_queenMated":
            MessageLookupByLibrary.simpleMessage("Accouplé"),
        "hive_form_queenNameHelper": MessageLookupByLibrary.simpleMessage(
            "Choisissez un nom pour votre reine."),
        "hive_form_queenNameTitle":
            MessageLookupByLibrary.simpleMessage("Nom de la reine"),
        "hive_form_queenOriginHelper": MessageLookupByLibrary.simpleMessage(
            "Sélectionnez d\'où vient la reine."),
        "hive_form_queenOriginTitle":
            MessageLookupByLibrary.simpleMessage("Reine Origin"),
        "hive_form_recentlySwarmedHelper": MessageLookupByLibrary.simpleMessage(
            "Sélectionnez les ruches qui ont essaimé au cours des derniers jours."),
        "hive_form_recentlySwarmedTitle":
            MessageLookupByLibrary.simpleMessage("Récemment essaimé"),
        "hive_form_serialNumberHelper": MessageLookupByLibrary.simpleMessage(
            "Le cas échéant, saisissez un numéro de série ou un identifiant."),
        "hive_form_serialNumberTitle": MessageLookupByLibrary.simpleMessage(
            "Numéro de série (facultatif)"),
        "hive_form_toApiaryHelper": MessageLookupByLibrary.simpleMessage(
            "Sélectionnez dans la liste le rucher vers lequel vous souhaitez déplacer cette ruche."),
        "hive_form_toApiaryTitle":
            MessageLookupByLibrary.simpleMessage("Vers le rucher"),
        "hive_form_typeHelper": MessageLookupByLibrary.simpleMessage(
            "Sélectionnez le type de ruche."),
        "hive_form_unmarked":
            MessageLookupByLibrary.simpleMessage("(Pas marquée)"),
        "hive_form_wildSwarmSelect":
            MessageLookupByLibrary.simpleMessage("(Wild Swarm)"),
        "hive_menu_addColony":
            MessageLookupByLibrary.simpleMessage("Ajouter une colonie"),
        "hive_menu_addFeeding":
            MessageLookupByLibrary.simpleMessage("Ajouter une alimentation"),
        "hive_menu_addHarvest":
            MessageLookupByLibrary.simpleMessage("Ajouter une récolte"),
        "hive_menu_addInspection":
            MessageLookupByLibrary.simpleMessage("Ajouter une inspection"),
        "hive_menu_addLog":
            MessageLookupByLibrary.simpleMessage("Ajouter un journal"),
        "hive_menu_addTask":
            MessageLookupByLibrary.simpleMessage("Ajouter une tâche"),
        "hive_menu_edit": MessageLookupByLibrary.simpleMessage("Éditer Hive"),
        "hive_menu_editColony":
            MessageLookupByLibrary.simpleMessage("Éditer Colony"),
        "hive_menu_moveHive":
            MessageLookupByLibrary.simpleMessage("Déplacer la ruche"),
        "hive_menu_refresh": MessageLookupByLibrary.simpleMessage("Actualiser"),
        "hive_message_missingColonyMessage": MessageLookupByLibrary.simpleMessage(
            "Cette ruche ne possède aucune colonie active à l\'intérieur. Pour commencer à ajouter des actions et à suivre des reines, veuillez ajouter une colonie à partir du bouton Action rapide ou du menu supérieur."),
        "hive_message_missingColonyTitle":
            MessageLookupByLibrary.simpleMessage("Colonie manquante"),
        "hive_message_missingQueens":
            MessageLookupByLibrary.simpleMessage("Aucune reine en vie."),
        "hive_snack_colonyAdded":
            MessageLookupByLibrary.simpleMessage("Colony ajoutée"),
        "hive_snack_colonyRemoved":
            MessageLookupByLibrary.simpleMessage("Colonie supprimée."),
        "hive_snack_colonySaved":
            MessageLookupByLibrary.simpleMessage("Colonie sauvée"),
        "hive_snack_hiveCreated":
            MessageLookupByLibrary.simpleMessage("Ruche créée"),
        "hive_snack_hiveFailure": m37,
        "hive_snack_hiveMoved":
            MessageLookupByLibrary.simpleMessage("La ruche a déménagé."),
        "hive_snack_hiveRemoved":
            MessageLookupByLibrary.simpleMessage("La ruche a été supprimée."),
        "hive_snack_hiveSaved":
            MessageLookupByLibrary.simpleMessage("Ruche sauvée"),
        "hive_snack_queenAdded":
            MessageLookupByLibrary.simpleMessage("Queen Ajouté"),
        "hive_snack_queenRemoved":
            MessageLookupByLibrary.simpleMessage("Queen supprimé."),
        "hive_snack_queenSaved":
            MessageLookupByLibrary.simpleMessage("Reine sauvée"),
        "hive_text_QueenOrigin": m38,
        "hive_text_beeRace": m39,
        "hive_text_beeTaxonomy": m40,
        "hive_text_bodyTrait": m41,
        "hive_text_colonyType": m42,
        "hive_text_hiveCategory": m43,
        "hive_text_hiveDirection": m44,
        "hive_text_hiveType": m45,
        "hive_text_queenColor": m46,
        "hive_text_race": MessageLookupByLibrary.simpleMessage("Course"),
        "hive_text_superceded":
            MessageLookupByLibrary.simpleMessage("< Superceded >"),
        "hive_title_hiveDetails":
            MessageLookupByLibrary.simpleMessage("Détails de la ruche"),
        "hive_word_category": MessageLookupByLibrary.simpleMessage("Catégorie"),
        "hive_word_direction":
            MessageLookupByLibrary.simpleMessage("Direction"),
        "hive_word_frameCount": m47,
        "hive_word_frames": MessageLookupByLibrary.simpleMessage("Cadres"),
        "hive_word_queenless":
            MessageLookupByLibrary.simpleMessage("Queenless"),
        "hive_word_queensSection":
            MessageLookupByLibrary.simpleMessage("REINES"),
        "hive_word_type": MessageLookupByLibrary.simpleMessage("Type"),
        "link_accounts_linkAppleID": MessageLookupByLibrary.simpleMessage(""),
        "link_accounts_linkEmail": MessageLookupByLibrary.simpleMessage(""),
        "link_accounts_linkFacebook": MessageLookupByLibrary.simpleMessage(""),
        "link_accounts_linkGoogle": MessageLookupByLibrary.simpleMessage(""),
        "log_text_robbing": MessageLookupByLibrary.simpleMessage("Le braquage"),
        "log_text_varroaCount":
            MessageLookupByLibrary.simpleMessage("Comte de Varroa"),
        "logs_button_addLog":
            MessageLookupByLibrary.simpleMessage("AJOUTER UN JOURNAL"),
        "logs_button_addSample":
            MessageLookupByLibrary.simpleMessage("AJOUTER UN ÉCHANTILLON"),
        "logs_error_logFailure": m48,
        "logs_error_logsFailureTitle":
            MessageLookupByLibrary.simpleMessage("Panne des journaux"),
        "logs_error_noLogsMessage": MessageLookupByLibrary.simpleMessage(
            "Il n\'y a pas encore de journaux. Vous pouvez ajouter votre premier journal en cliquant sur le bouton ci-dessous. Si vous pensez qu\'il y a une erreur, essayez d\'actualiser la page à partir du menu en haut à droite."),
        "logs_error_noLogsTitle":
            MessageLookupByLibrary.simpleMessage("Pas de journaux"),
        "logs_form_batchNoTitle":
            MessageLookupByLibrary.simpleMessage("N° de lot (Facultatif)"),
        "logs_form_batchnoHelper": MessageLookupByLibrary.simpleMessage(
            "Entrez le numéro de lot médical de votre traitement."),
        "logs_form_concentrationHelper": MessageLookupByLibrary.simpleMessage(
            "Entrez la force d\'un traitement en pourcentage."),
        "logs_form_concentrationTitle":
            MessageLookupByLibrary.simpleMessage("Concentration (facultatif)"),
        "logs_form_dateInsertedHelper": MessageLookupByLibrary.simpleMessage(
            "Sélectionnez la date à laquelle le tableau adhésif a été inséré."),
        "logs_form_dateInsertedTitle":
            MessageLookupByLibrary.simpleMessage("Date d\'insertion"),
        "logs_form_editLogTitle":
            MessageLookupByLibrary.simpleMessage("Modifier le journal"),
        "logs_form_humidityHelper": MessageLookupByLibrary.simpleMessage(
            "Enregistrez éventuellement l\'humidité du jour."),
        "logs_form_humidityTitle":
            MessageLookupByLibrary.simpleMessage("Humidité (en option)"),
        "logs_form_infectionType": m49,
        "logs_form_logTypeHelper": MessageLookupByLibrary.simpleMessage(
            "Sélectionnez un type de journal"),
        "logs_form_logTypeTitle":
            MessageLookupByLibrary.simpleMessage("Type d\'événement"),
        "logs_form_missingLogType": MessageLookupByLibrary.simpleMessage(
            "Veuillez sélectionner un type de journal"),
        "logs_form_newLogTitle":
            MessageLookupByLibrary.simpleMessage("Nouveau journal"),
        "logs_form_robbingSeverityHelper": MessageLookupByLibrary.simpleMessage(
            "Sélectionnez la gravité du braquage."),
        "logs_form_temperatureHelper": MessageLookupByLibrary.simpleMessage(
            "Vous pouvez également enregistrer la température du jour."),
        "logs_form_temperatureTitle":
            MessageLookupByLibrary.simpleMessage("Température (en option)"),
        "logs_form_treatmentAmountHelper": MessageLookupByLibrary.simpleMessage(
            "Entrez la quantité de traitement en unités."),
        "logs_form_treatmentAmountTitle":
            MessageLookupByLibrary.simpleMessage("Montant (optionnel)"),
        "logs_form_treatmentApplicationHelper":
            MessageLookupByLibrary.simpleMessage(
                "Sélectionnez la façon dont le traitement est appliqué."),
        "logs_form_treatmentApplicationTitle":
            MessageLookupByLibrary.simpleMessage("Demande"),
        "logs_form_treatmentMethodHelper": MessageLookupByLibrary.simpleMessage(
            "Sélectionnez le type de traitement utilisé."),
        "logs_form_treatmentMethodTitle":
            MessageLookupByLibrary.simpleMessage("Méthode"),
        "logs_form_varroaCountHelper": MessageLookupByLibrary.simpleMessage(
            "Entrez le nombre total de varroa sur le tableau."),
        "logs_form_varroaCountTitle":
            MessageLookupByLibrary.simpleMessage("Comte de Varroa"),
        "logs_form_varroaMethodHelper": MessageLookupByLibrary.simpleMessage(
            "Sélectionnez la méthode de comptage du varroa."),
        "logs_form_varroaMethodTitile":
            MessageLookupByLibrary.simpleMessage("Méthode"),
        "logs_form_weatherHelper": MessageLookupByLibrary.simpleMessage(
            "Sélectionnez les événements météorologiques que vous souhaitez enregistrer. Appuyez longuement pour voir le nom de la météo."),
        "logs_form_weatherTitle":
            MessageLookupByLibrary.simpleMessage("Type (s) de météo"),
        "logs_message_apiaryCreated": m50,
        "logs_message_apiaryDeleted": m51,
        "logs_message_caught":
            MessageLookupByLibrary.simpleMessage("et attrapé"),
        "logs_message_colonyCreated":
            MessageLookupByLibrary.simpleMessage("Colony créée"),
        "logs_message_colonyDeleted":
            MessageLookupByLibrary.simpleMessage("Colony supprimée"),
        "logs_message_colonyDied":
            MessageLookupByLibrary.simpleMessage("Colony est mort"),
        "logs_message_colonyMoved":
            MessageLookupByLibrary.simpleMessage("Colony a déménagé"),
        "logs_message_feedingCreated":
            MessageLookupByLibrary.simpleMessage("Alimentation créée"),
        "logs_message_feedingDeleted":
            MessageLookupByLibrary.simpleMessage("Alimentation supprimée"),
        "logs_message_hardwareRegistered":
            MessageLookupByLibrary.simpleMessage("Matériel enregistré"),
        "logs_message_harvestCreated":
            MessageLookupByLibrary.simpleMessage("Récolte créée"),
        "logs_message_harvestDeleted":
            MessageLookupByLibrary.simpleMessage("Récolte supprimée"),
        "logs_message_hiveCreated": m52,
        "logs_message_hiveDeleted": m53,
        "logs_message_hiveMoved": m54,
        "logs_message_inspectionCreated":
            MessageLookupByLibrary.simpleMessage("Inspection créée"),
        "logs_message_inspectionDeleted":
            MessageLookupByLibrary.simpleMessage("Inspection supprimée"),
        "logs_message_noSamples":
            MessageLookupByLibrary.simpleMessage("Aucun échantillon."),
        "logs_message_note":
            MessageLookupByLibrary.simpleMessage("La note a été créée"),
        "logs_message_queenCreated": m55,
        "logs_message_queenDeleted": m56,
        "logs_message_queenDied": m57,
        "logs_message_queenMoved": m58,
        "logs_message_queenSuperseded": m59,
        "logs_message_robbing": m60,
        "logs_message_swarmed": m61,
        "logs_message_treatment": m62,
        "logs_message_userCreated":
            MessageLookupByLibrary.simpleMessage("Créé par l\'utilisateur"),
        "logs_message_varroaCount": m63,
        "logs_message_weather": m64,
        "logs_snack_logCreated":
            MessageLookupByLibrary.simpleMessage("Journal créé"),
        "logs_snack_logFailure": m65,
        "logs_snack_logSaved":
            MessageLookupByLibrary.simpleMessage("Enregistrements de journal"),
        "logs_text_infection":
            MessageLookupByLibrary.simpleMessage("Infection"),
        "logs_text_logType": m66,
        "logs_text_logs": MessageLookupByLibrary.simpleMessage("Logs"),
        "logs_text_logsSection":
            MessageLookupByLibrary.simpleMessage("JOURNAUX"),
        "logs_text_samples":
            MessageLookupByLibrary.simpleMessage("échantillons"),
        "logs_text_treatment":
            MessageLookupByLibrary.simpleMessage("traitement"),
        "logs_text_treatmentApplication": m67,
        "logs_text_treatmentMethod": m68,
        "logs_text_varroaMethod": m69,
        "logs_text_weatherType": m70,
        "message_noStatsAvailable": MessageLookupByLibrary.simpleMessage(
            "Il n\'y a pas de statistiques pour cette saison"),
        "new_apiary_apiary_name":
            MessageLookupByLibrary.simpleMessage("Nom du rucher"),
        "new_apiary_apiary_serial": MessageLookupByLibrary.simpleMessage(
            "Numéro de série (facultatif)"),
        "new_apiary_location":
            MessageLookupByLibrary.simpleMessage("Emplacement"),
        "no_weather_data_message": MessageLookupByLibrary.simpleMessage(
            "Impossible d\'obtenir les données météorologiques. Assurez-vous que la connexion Internet est disponible"),
        "no_weather_data_title": MessageLookupByLibrary.simpleMessage(
            "Prévisions météorologiques non disponibles"),
        "pushNotification_error_pushNotificationFailure": m71,
        "seach_message_scanning": MessageLookupByLibrary.simpleMessage(
            "Scanner... Veuillez placer le téléphone à côté du matériel jusqu\'à ce que la connexion soit établie."),
        "search_button_scan": MessageLookupByLibrary.simpleMessage("BALAYAGE"),
        "search_card_errorTitle":
            MessageLookupByLibrary.simpleMessage("Échec du NFC"),
        "search_card_scanTitle":
            MessageLookupByLibrary.simpleMessage("Scanner NFC"),
        "search_error_searchFailure": m72,
        "search_message_foundTag": m73,
        "search_message_startScan": MessageLookupByLibrary.simpleMessage(
            "Cliquez sur le bouton pour initialiser la lecture NFC.  Vous devrez placer le téléphone à côté du matériel pour lire le tag NFC."),
        "search_title_tagFound":
            MessageLookupByLibrary.simpleMessage("Trouvé !"),
        "title_noStatsAvailable": MessageLookupByLibrary.simpleMessage(
            "Aucune statistique disponible"),
        "weather_tab_minMax": MessageLookupByLibrary.simpleMessage("Min | Max"),
        "weather_tab_rain": MessageLookupByLibrary.simpleMessage("pluie")
      };
}
