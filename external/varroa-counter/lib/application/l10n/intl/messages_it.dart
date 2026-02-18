// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a it locale. All the
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
  String get localeName => 'it';

  static String m0(type) => "${Intl.select(type, {
            'FEED_SYRUP_1TO1': 'Sciroppo 1: 1',
            'FEED_SYRUP_2TO1': 'Sciroppo 2: 1',
            'FEED_SYRUP_3TO2': 'Sciroppo 3: 2',
            'FEED_FONDANT': 'Fondente',
            'FEED_HONEY': 'Tesoro',
            'FEED_BEE_BREAD': 'Polline',
            'FEED_SYRUP_INVERTED': 'Sciroppo invertito',
            'FEED_UNKNOWN': 'Sconosciuto',
            'other': 'Unknown',
          })}";

  static String m1(type) => "${Intl.select(type, {
            'URBAN': 'Urbano',
            'RURAL': 'Rurale',
            'MIXED': 'Misto',
            'other': 'Unknown',
          })}";

  static String m2(type) => "${Intl.select(type, {
            'DISEASE_AMERICAN_FOULBROOD': 'American Foulbrood.',
            'DISEASE_EUROPEAN_FOULBROOD': 'Foulbrood europeo',
            'DISEASE_BALD_BROOD': 'Bald Brodo.',
            'DISEASE_BLISTER_BEETLES': 'Blister Beetles.',
            'DISEASE_CHALKBROOD': 'Chalkbrood.',
            'DISEASE_CHEWED_PUPAE': 'Pupe di masticare',
            'DISEASE_DEFORMED_WING_VIRUS': 'Virus dell\'ala deformata',
            'DISEASE_HIVE_BEETLE': 'Hive Beetle.',
            'DISEASE_SEVERE_HIVE_BEETLE': 'Grave Beetle Hive.',
            'DISEASE_K_WING_VIRUS': 'K virus dell ala',
            'DISEASE_MOLD': 'Muffa',
            'DISEASE_NOSEMA': 'Nosema.',
            'DISEASE_CHRONIC_BEE_PARALYSIS_VIRUS':
                'Virus di paralisi ape cronica',
            'DISEASE_STONEBROOD': 'Pietra di pietra',
            'DISEASE_TRACHEAL_MITE': 'Acari tracheale',
            'DISEASE_TROPILAELAPS': 'TropilaElaps.',
            'DISEASE_VARROA_MITES': 'Varroa Mites.',
            'DISEASE_SEVERE_VARROA_MITES': 'Gravi acari di varroa.',
            'DISEASE_SEVERE_WAX_MOTH': 'Grave falena di cera',
            'DISEASE_ASIAN_HORNET': 'Calabrone asiatico',
            'DISEASE_OTHER': 'Altro',
            'other': 'Unknown',
          })}";

  static String m3(type) => "${Intl.select(type, {
            'SHADED': 'Ombreggiato',
            'HALF_SHADED': 'Parziale',
            'FULL_SUN': 'Soleggiato',
            'other': 'Unknown',
          })}";

  static String m4(type) => "${Intl.select(type, {
            'HONEY_LOCAL': 'Miele locale',
            'HONEY_ACACIA': 'Acacia Honey.',
            'HONEY_ANZER': 'ANZER HONEY.',
            'HONEY_BLOSSOM': 'Blossom Honey.',
            'HONEY_ALFALFA': 'Alfalfa Honey.',
            'HONEY_AVOCADO': 'Miele di avocado',
            'HONEY_BUCKWHEAT': 'Miele del grano saraceno',
            'HONEY_BLUEBERRY': 'Miele di mirtillo',
            'HONEY_CHESTNUT': 'Miele di castagne',
            'HONEY_CLOVER': 'Miele di trifoglio',
            'HONEY_EUCALYPTUS': 'Eucaliptus Honey.',
            'HONEY_FOREST': 'Miele della foresta',
            'HONEY_MANUKA': 'Miele di Manuka',
            'HONEY_LAVENDER': 'Miele della lavanda',
            'HONEY_ORANGE_BLOSSOM': 'Miele del fiore d\'arancia',
            'HONEY_RAPE': 'Guida al miele',
            'HONEY_SAGE': 'Saggio miele',
            'HONEY_MIXED': 'Miele misto',
            'HONEY_UNKNOWN': 'Miele sconosciuto',
            'other': 'Unknown',
          })}";

  static String m5(type) => "${Intl.select(type, {
            'common_error_serverError':
                'Qualcosa è andato storto mentre stavamo parlando con il nostro server. Si prega di riprovare e se i percisti del problema ci raggiungano per il supporto.',
            'common_error_insufficientPermission':
                'Non hai il permesso insufficiente per accedere a questo documento. Si prega di controllare con il tuo amministratore per aggiungere autorizzazioni.',
            'common_error_emulatorError': 'Errore emulatore.',
            'actions_error_noInspections':
                'Non hai alcuna ispezione per questo alveare. Puoi aggiungere la prima ispezione facendo clic sul pulsante qui sotto. Se pensi che ci sia un errore, prova a aggiornare la pagina dal menu in alto a destra.',
            'actions_error_invalidInspectionDocument':
                'Il documento di ispezione che stai cercando non è valido o corrotto. Si prega di notare l\'ID in alto a destra e contattaci per il supporto.',
            'actions_error_missingInspectionDocument':
                'Il documento di ispezione che stai cercando è mancante dal nostro database. Si prega di notare l\'ID in alto a destra e contattaci per il supporto.',
            'actions_error_noFeedings':
                'Non hai qualche alimento per questo alveare. Puoi aggiungere la prima alimentazione facendo clic sul pulsante qui sotto. Se pensi che ci sia un errore, prova a aggiornare la pagina dal menu in alto a destra.',
            'actions_error_invalidFeedingDocument':
                'Il documento di alimentazione che stai cercando non è valido o corrotto. Si prega di notare l\'ID in alto a destra e contattaci per il supporto.',
            'actions_error_missingFeedingDocument':
                'Il documento di alimentazione che stai cercando è mancante dal nostro database. Si prega di notare l\'ID in alto a destra e contattaci per il supporto.',
            'actions_error_noHarvest':
                'Non hai nessun raccolto per questo alveare. Puoi aggiungere la tua prima vendemmia facendo clic sul pulsante qui sotto. Se pensi che ci sia un errore, prova a aggiornare la pagina dal menu in alto a destra.',
            'actions_error_invalidHarvestDocument':
                'Il documento del raccolto che stai cercando non è valido o corrotto. Si prega di notare l\'ID in alto a destra e contattaci per il supporto.',
            'actions_error_missingHarvestDocument':
                'Il documento del raccolto che stai cercando è mancante dal nostro database. Si prega di notare l\'ID in alto a destra e contattaci per il supporto.',
            'other': 'Unknown',
          })}";

  static String m6(type) => "${Intl.select(type, {
            'common_error_serverError': 'Errore del server',
            'common_error_insufficientPermission': 'Permessi insufficienti',
            'common_error_emulatorError': 'Errore emulatore',
            'actions_error_noInspections': 'Nessuna ispezione',
            'actions_error_invalidInspectionDocument': 'Ispezione non valida',
            'actions_error_missingInspectionDocument': 'Ispezione mancante',
            'actions_error_noFeedings': 'Nessuna alimentazione',
            'actions_error_invalidFeedingDocument': 'Alimentazione non valida',
            'actions_error_missingFeedingDocument': 'Mancata alimentazione',
            'actions_error_noHarvest': 'Nessun raccolto',
            'actions_error_invalidHarvestDocument': 'Raccolto non valido',
            'actions_error_missingHarvestDocument': 'Raccolta mancante',
            'other': 'Unknown',
          })}";

  static String m7(failure) => "${Intl.select(failure, {
            'alerts_error_noAlerts': 'Nessun allarme trovato.',
            'other': 'Avvisi di errore.',
          })}";

  static String m8(title, hardware) => "${Intl.select(title, {
            'alerts_error_short': 'Cortocircuito ${hardware}.',
            'alerts_error_noSoftware': 'Aggiornamento del firmware fallito.',
            'alerts_error_load': '${hardware} non è riuscito ad avviarsi.',
            'alerts_error_contact': '${hardware} ha perso il contatto.',
            'alerts_error_eeprom': 'La memoria ${hardware} è corrotta.',
            'other': 'Allarme sconosciuto.',
          })}";

  static String m9(type) => "${Intl.select(type, {
            'common_error_serverError':
                'Qualcosa è andato storto mentre stavamo parlando con il nostro server. Si prega di riprovare e se i percisti del problema ci raggiungano per il supporto.',
            'common_error_insufficientPermission':
                'Non hai il permesso insufficiente per accedere a questo documento. Si prega di controllare con il tuo amministratore per aggiungere autorizzazioni.',
            'common_error_emulatorError': 'Errore emulatore.',
            'apiary_error_invalidDocument':
                'Il documento Apory che stai cercando non è valido o corrotto. Si prega di notare l\'ID in alto a destra e contattaci per il supporto.',
            'apiary_error_missingDocument':
                'Il documento dell\'apiario che stai cercando è mancante dal nostro database. Si prega di notare l\'ID in alto a destra e contattaci per il supporto.',
            'apiary_error_missingConfig':
                'L\'apiario manca il suo file di configurazione. Si prega di provare a rinfrescare la pagina e se i percisti del problema, raggiungerci per il supporto.',
            'apiary_error_noApiaries':
                'Non ti sembra ancora di avere altri apiari. È possibile fare clic sul pulsante per aggiungere il primo apiario o selezionare Aggiorna dal menu se pensi che ci sia stato un errore.',
            'apiary_error_invalidLocation':
                'La posizione non è stata impostata per questo apiario in modo che non sia possibile ottenere i dati meteorologici. È possibile modificare i dettagli dell\'apiario e aggiungere una posizione per vedere i dati meteorologici.',
            'other': 'Unknown',
          })}";

  static String m10(failure) => "${Intl.select(failure, {
            'auth_error_cancelledByUser': 'Annullato dall\'utente.',
            'common_error_serverError': 'Errore lato server.',
            'auth_error_emailAlreadyInUse': 'Email già in uso.',
            'auth_error_accountAlreadyExists': 'L\'account esiste già.',
            'auth_error_invalidEmailAndPassword':
                'Combinazione di email e password non valida.',
            'auth_error_missingUserDoc':
                'Il tuo documento utente è mancante, contattaci per il supporto.',
            'auth_error_missingUserSettings':
                'Le tue impostazioni utente sono mancanti, contattaci per il supporto.',
            'auth_error_invalidUserDoc':
                'Il tuo documento utente non è valido, contattaci per assistenza.',
            'auth_error_invalidUserSettings':
                'Le tue impostazioni utente non sono valide, contattaci per il supporto.',
            'common_error_insufficientPermission': 'Permessi insufficienti.',
            'other': 'Errore di autenticazione.',
          })}";

  static String m11(failure) => "${Intl.select(failure, {
            'auth_error_invalidEmail': 'Si prega di inserire un\'email valida.',
            'auth_error_shortPassword':
                'Si prega di utilizzare una password più lunga.',
            'auth_error_invalidPassword':
                'Si prega di includere (almeno) una lettera maiuscola e un numero.',
            'auth_error_longDisplayName':
                'Inserisci un nome di visualizzazione più breve (max 16 caratteri).',
            'auth_error_invalidisplayName':
                'Inserisci un nome di visualizzazione valido.',
            'auth_error_invalidDateFormat': 'Formato di data non valido.',
            'auth_error_invalidUnitSystem': 'Sistema di unità non valido.',
            'other': 'Errore nel valore di autenticazione.',
          })}";

  static String m12(type) => "${Intl.select(type, {
            'common_error_serverError': 'Errore del server',
            'common_error_insufficientPermission': 'Permessi insufficienti',
            'common_error_emulatorError': 'Errore emulatore',
            'auth_error_cancelledByUser': 'Annullato',
            'auth_error_emailAlreadyInUse': 'Email esiste',
            'auth_error_accountAlreadyExists': 'L\'account esiste',
            'auth_error_invalidEmailAndPassword': 'Combo non valido',
            'auth_error_missingUserDoc': 'Manca utente',
            'auth_error_missingUserSettings': 'Impostazioni mancanti',
            'auth_error_invalidUserDoc': 'Utente non valido',
            'auth_error_invalidUserSettings': 'Impostazioni non valide',
            'other': 'Unknown',
          })}";

  static String m13(format) => "${Intl.select(format, {
            'eu': 'EU (dd/MM/yyyy)',
            'us': 'US (MM/dd/yyyy)',
            'swiss': 'Svizzera (dd.mm.yyyy)',
            'other': 'invalid',
          })}";

  static String m14(format) => "${Intl.select(format, {
            'metric': 'Metrico',
            'imperial': 'Imperial',
            'other': 'invalid',
          })}";

  static String m15(type) => "${Intl.select(type, {
            'common_error_serverError':
                'Qualcosa è andato storto mentre stavamo parlando con il nostro server. Si prega di riprovare e se i percisti del problema ci raggiungano per il supporto.',
            'common_error_insufficientPermission':
                'Non hai il permesso insufficiente per accedere a questo documento. Si prega di controllare con il tuo amministratore per aggiungere autorizzazioni.',
            'common_error_emulatorError': 'Errore emulatore.',
            'common_error_noWeatherData':
                'Non ci sono dati meteo per la posizione degli apiari. Si prega di verificare che la posizione sia valida e se i percisti del problema, vi preghiamo di contattarci per il supporto.',
            'common_error_location':
                'C\'era un problema quando si tiene il recupero della posizione. Si prega di controllare che la posizione sia valida e se i percisti del problema, vi preghiamo di contattarci per il supporto.',
            'common_error_missingLocationPermission':
                'Non hai dato il permesso di utilizzare la posizione del dispositivo. Per utilizzare questa funzione, aggiornare le autorizzazioni nelle tue impostazioni.',
            'common_error_missingCameraPermission':
                'Non hai dato il permesso di utilizzare la fotocamera del dispositivo. Per utilizzare questa funzione, aggiornare le autorizzazioni nelle tue impostazioni.',
            'common_error_missingGalleryPermission':
                'Non hai dato il permesso di utilizzare le immagini del dispositivo. Per utilizzare questa funzione, aggiornare le autorizzazioni nelle tue impostazioni.',
            'hive_error_invalidDocument':
                'Il documento non è valido o corrotto. Si prega di notare l\'ID in alto a destra e contattaci per il supporto.',
            'common_error_missingTasks':
                'Non hai attività attualmente su questo apiario. È possibile aggiungere una nuova attività facendo clic sul pulsante qui sotto. Se pensi che ci sia un errore, prova a aggiornare la pagina dal menu in alto a destra.',
            'other': 'Unknown',
          })}";

  static String m16(type) => "${Intl.select(type, {
            'common_error_serverError':
                'Qualcosa è andato storto mentre stavamo parlando con il nostro server. Si prega di riprovare e se i percisti del problema ci raggiungano per il supporto.',
            'common_error_insufficientPermission':
                'Non hai il permesso insufficiente per accedere a questo documento. Si prega di controllare con il tuo amministratore per aggiungere autorizzazioni.',
            'common_error_emulatorError': 'Errore emulatore.',
            'common_error_missingValue': 'Per favore inserisci un valore',
            'common_error_invalidEntity':
                'Il valore selezionato non è valido. Si prega di selezionare un altro.',
            'auth_error_invalidEmail': 'Inserisci una email valida.',
            'auth_error_shortPassword':
                'Si prega di utilizzare una password più di 8 caratteri.',
            'auth_error_invalidPassword':
                'Si prega di includere (almeno) una lettera maiuscola e numero.',
            'auth_error_longDisplayName':
                'Si prega di inserire un nome visualizzato più breve (max 16 char).',
            'auth_error_invalidDisplayName':
                'Si prega di inserire un nome visualizzato valido. Evita personaggi e simboli speciali.',
            'auth_error_invalidDateFormat':
                'Si prega di inserire un formato di data valido.',
            'auth_error_invalidUnitSystem':
                'Si prega di inserire un sistema di unità valido.',
            'common_error_invalidTaskPriority':
                'Si prega di inserire una priorità valida.',
            'common_error_invalidObservation':
                'Si prega di inserire un\'osservazione valida.',
            'common_error_invalidNormal':
                'Si prega di inserire un valore compreso tra 0 e 1.',
            'common_error_invalidAmount':
                'Si prega di inserire un importo valido. Non può essere una quantità negativa.',
            'common_error_invalidLogType':
                'Si prega di inserire un tipo di registro valido.',
            'other': 'Unknown',
          })}";

  static String m17(type) => "${Intl.select(type, {
            'common_error_serverError': 'Errore del server',
            'common_error_insufficientPermission': 'Permessi insufficienti',
            'common_error_emulatorError': 'Errore emulatore',
            'common_error_noWeatherData': 'Nessun tempo',
            'common_error_location': 'Errore di posizione',
            'common_error_missingLocationPermission': 'Autorizzazioni mancanti',
            'common_error_missingCameraPermission': 'Autorizzazioni mancanti',
            'common_error_missingGalleryPermission': 'Autorizzazioni mancanti',
            'hive_error_invalidDocument': 'Documento non valido',
            'common_error_missingTasks': 'Compiti mancanti',
            'other': 'Unknown',
          })}";

  static String m18(bool) => "${Intl.select(bool, {
            'true': 'Vero',
            'false': 'Falso',
            'other': 'Unknown',
          })}";

  static String m19(type) => "${Intl.select(type, {
            'LOW': 'Basso',
            'MEDIUM': 'medio',
            'HIGH': 'Alto',
            'other': 'Unknown',
          })}";

  static String m20(page) => "${Intl.select(page, {
            'ConnectTab': 'Collegare',
            'AlertsRoute': 'Avvisi',
            'HardwareRoute': 'Hardware',
            'HardwareDetailsRoute': 'Dettagli',
            'other': 'Pagina',
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
      "${Intl.plural(count, zero: 'giorni', one: 'giorno', other: 'giorni')}";

  static String m24(count) =>
      "${Intl.plural(count, zero: 'Ore', one: 'Ora', other: 'Ore')}";

  static String m25(failure) => "${Intl.select(failure, {
            'database_error_missingUserDoc':
                'Il tuo documento utente è mancante, contattaci per il supporto.',
            'database_error_missingUserSettings':
                'Le tue impostazioni utente sono mancanti, contattaci per il supporto.',
            'database_error_invalidUserDoc':
                'Il tuo documento utente non è valido, contattaci per assistenza.',
            'database_error_invalidUserSettings':
                'Le tue impostazioni utente non sono valide, contattaci per il supporto.',
            'common_error_permissionDenied': 'Permessi insufficienti.',
            'common_error_serverError': 'Errore del server.',
            'other': 'Errore del database.',
          })}";

  static String m26(failure) => "${Intl.select(failure, {
            'database_error_invalidHiveType':
                'Tipo di alveare non valido, si prega di aggiornare.',
            'other': 'Errore del database.',
          })}";

  static String m27(type) => "${Intl.select(type, {
            'APIBRAIN': 'SET APIARY',
            'HIVE_CONNECT': 'SET HIVE',
            'other': 'SET LOCATION',
          })}";

  static String m28(failure) => "${Intl.select(failure, {
            'hardware_error_noConnect':
                'Non rileviamo nulla collegato a questo hardware.',
            'hardware_error_noCombs':
                'Non rileviamo alcun pettine per questo hardware.',
            'hardware_error_noTemperature':
                'Non rileviamo alcuna lettura di temperatura recente per questo hardware.',
            'hardware_error_noWeight':
                'Non rileviamo alcuna lettura di peso recente per questo hardware.',
            'hardware_error_noHeartbeat':
                'Non rileviamo alcun battito cardiaco recente per questo hardware.',
            'hardware_error_noTreatments':
                'Non rileviamo alcun trattamento recente per questo hardware.',
            'other': 'Errore hardware ausiliario.',
          })}";

  static String m29(failure) => "${Intl.select(failure, {
            'connect_error_timeout':
                'Il Bluetooth è scaduto prima di trovare qualsiasi hardware Vatorex.  Controlla che il tuo hardware sia acceso e che la luce del Bluetooth sia attiva.',
            'connect_error_bluetoothNotAvailable':
                'Il Bluetooth non è disponibile.  Per favore, controlla che il tuo Bluetooth sia acceso o che tu abbia il Bluetooth su questo dispositivo.',
            'connect_error_invalidBleResp':
                'Risposta non valida dal Bluetooth.  Si prega di riprovare e se il problema persiste, contattare Vatorex per il supporto.',
            'connect_error_notConnected':
                'L\'hardware non è collegato via Bluetooth.  Torna alla pagina principale e prova a collegare di nuovo l\'hardware.  Se il problema continua, prova a spegnere e riaccendere l\'hardware.',
            'connect_error_deviceIsBusy':
                'L\'hardware è attualmente impegnato in un\'altra azione.  Si prega di attendere qualche minuto e riprovare.',
            'connect_error_alreadyConnected': 'L\'hardware è già collegato.',
            'connect_error_intialization':
                'L\'hardware non è riuscito a inizializzare la comunicazione.  Per favore clicca su connect per riprovare.  Se il problema continua, prova a spegnere e riaccendere l\'hardware.',
            'connect_error_deviceNotPrepared':
                'L\'hardware non è preparato.  Si prega di attendere un momento e riprovare.',
            'connect_error_bluetoothError':
                'Qualcosa è andato storto durante la comunicazione con il Bluetooth.  Si prega di controllare il messaggio di errore qui sotto e riprovare.  Se il problema continua, contattaci per assistenza.',
            'connect_error_notFound':
                'Nessun hardware Vatorex è stato trovato tramite Bluetooth.  Si prega di assicurarsi che la luce blu sia accesa sull\'hardware e riprovare.  Potrebbe essere necessario essere più vicini o spegnere e riaccendere l\'hardware se il problema continua.',
            'other': 'Errore Bluetooth.',
          })}";

  static String m30(failure) => "${Intl.select(failure, {
            'ERROR_EEPROM': 'EEPROM',
            'ERROR_SHORT': 'BREVE',
            'ERROR_NO_SOFTWARE': 'SOFTWARE',
            'ERROR_LOAD': 'CARICO',
            'ERROR_CONTACT': 'CONTATTO',
            'other': 'Hardware error.',
          })}";

  static String m31(failure) => "${Intl.select(failure, {
            'hardware_error_missingHardwareDoc':
                'Il documento hardware è mancante, contattateci per il supporto.',
            'hardware_error_invalidHardwareDoc':
                'Il documento hardware non è valido, contattaci per il supporto.',
            'hardware_error_noHardware':
                'Nessun hardware è stato trovato nel nostro sistema.',
            'hardware_error_alreadyRegistered':
                'Questo hardware è già registrato a qualcun altro. Si prega di contattare il proprietario per concedere l\'accesso.',
            'hardware_error_notRegistered':
                'L\'hardware non è registrato nel nostro sistema.  Se vuoi registrarlo nel tuo account, premi il pulsante \"Registra\" qui sotto.',
            'hardware_error_searchNotFound': 'Nessun risultato.',
            'hardware_error_nothingToSearch':
                'Nessun hardware è registrato. Si prega di registrare un hardware prima della ricerca.',
            'hardware_error_noHardwareLocation':
                'Nessuna posizione per l\'hardware trovata.  Si prega di aggiungere almeno un apiario e un alveare all\'app ‹HiveManager›.',
            'hardware_error_sameLocationSet':
                'L\'hardware si trova già qui.  Si prega di selezionare un\'altra posizione.',
            'other': 'Errore hardware.',
          })}";

  static String m32(failure) => "${Intl.select(failure, {
            'hardware_error_invalidType': 'Tipo di hardware non valido.',
            'other': 'Guasto del valore dell\'hardware.',
          })}";

  static String m33(type) => "${Intl.select(type, {
            'APIBRAIN': 'Cambiare apiario',
            'HIVE_CONNECT': 'Cambiare alveare',
            'other': 'Cambia posizione',
          })}";

  static String m34(error) =>
      "Il documento hardware contiene un errore di valore: [${error}].  Siamo spiacenti per il problema, si prega di contattare il supporto per questo errore.";

  static String m35(type) => "${Intl.select(type, {
            'APIBRAIN': '‹ApiBrain›',
            'HIVE_CONNECT': '‹Hive Connect›',
            'COMB': 'Pettine',
            'other': 'Tipo di hardware non valido',
          })}";

  static String m36(type) => "${Intl.select(type, {
            'common_error_serverError':
                'Qualcosa è andato storto mentre stavamo parlando con il nostro server. Si prega di riprovare e se i percisti del problema ci raggiungano per il supporto.',
            'common_error_insufficientPermission':
                'Non hai il permesso insufficiente per accedere a questo documento. Si prega di controllare con il tuo amministratore per aggiungere autorizzazioni.',
            'common_error_emulatorError': 'Errore emulatore.',
            'hive_error_invalidDocument':
                'Il documento dell\'alveare che stai cercando non è valido o corrotto. Si prega di notare l\'ID in alto a destra e contattaci per il supporto.',
            'hive_error_missingDocument':
                'Il documento dell\'alveare che stai cercando è mancante dal nostro database. Si prega di notare l\'ID in alto a destra e contattaci per il supporto.',
            'hive_error_missingConfig':
                'L\'alveare manca il file di configurazione. Si prega di provare a rinfrescare la pagina e se i percisti del problema, raggiungerci per il supporto.',
            'hive_error_missingColony':
                'L\'alveare non ha una colonia. È possibile fare clic sul pulsante per aggiungere una nuova colonia o selezionare Aggiorna dal menu se pensi che ci sia stato un errore.',
            'hive_error_missingQueen':
                'Non hai queeni vivi all\'interno di questo alveare. Quando hai richiesto il tuo alveare, puoi aggiungere i suoi dettagli facendo clic sul pulsante qui sotto.',
            'hive_error_noHives':
                'Non ti sembra ancora che altri alveari. È possibile fare clic sul pulsante per aggiungere il primo alveare o selezionare Aggiorna dal menu se pensi che ci sia stato un errore.',
            'other': 'Unknown',
          })}";

  static String m37(type) => "${Intl.select(type, {
            'common_error_serverError': 'Errore del server',
            'common_error_insufficientPermission': 'Permessi insufficienti',
            'common_error_emulatorError': 'Errore emulatore',
            'hive_error_invalidDocument': 'Hive non valido',
            'hive_error_missingDocument': 'Hive mancante',
            'hive_error_missingConfig': 'Config',
            'hive_error_missingColony': 'Colonia mancante',
            'hive_error_missingQueen': 'Missing Queen.',
            'hive_error_noHives': 'Nessun alveare',
            'other': 'Unknown',
          })}";

  static String m38(type) => "${Intl.select(type, {
            'QUEEN_BOUGHT': 'Comprato',
            'QUEEN_RAISED': 'Sollevato',
            'QUEEN_WILD': 'Selvaggio',
            'QUEEN_UNKNOWN': 'Origine sconosciuta',
            'other': 'Unknown',
          })}";

  static String m39(type) => "${Intl.select(type, {
            'APIS_MELLIFERA': 'europeo',
            'APIS_MELLIFERA_MELLIFERA': 'Scuro',
            'APIS_MELLIFERA_LIGUSTICA': 'italiano',
            'APIS_MELLIFERA_CARNICA': 'Carniolano',
            'APIS_MELLIFERA_CAUCASICA': 'caucasico',
            'APIS_MELLIFERA_IBERIENSIS': 'spagnolo',
            'APIS_MELLIFERA_SCUTELLATA': 'Pianura',
            'APIS_MELLIFERA_MONTICOLA': 'Altopiano',
            'APIS_MELLIFERA_CAPENSIS': 'Cape',
            'APIS_X_BUCKFAST': 'Buckfast.',
            'APIS_CERANA': 'Orientale',
            'APIS_DORSATA': 'Gigante',
            'SCUTELLATA_X_LIGUSTICA': 'Africano',
            'RACE_MIXED': 'Misto',
            'RACE_UNKNOWN': 'Sconosciuto',
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
            'LOW': 'Basso',
            'MEDIUM': 'Medio',
            'HIGH': 'Alto',
            'other': 'Unknown',
          })}";

  static String m42(type) => "${Intl.select(type, {
            'COLONY_NUC': 'Nuc.',
            'COLONY_SWARM': 'Sciame',
            'COLONY_ARTIFICIAL_SWARM': 'Sciame artificiale',
            'COLONY_COMMERCIAL': 'Commerciale',
            'COLONY_CUTOUT': 'Ritagliare',
            'COLONY_UNKNOWN': 'Sconosciuto',
            'other': 'Unknown',
          })}";

  static String m43(type) => "${Intl.select(type, {
            'MAGAZINE': 'Rivista',
            'BEE_HOUSE': 'Ape House.',
            'SKEP': 'Corbello',
            'LOG_HIVE': 'Log hive.',
            'NUC': 'Nuc.',
            'TOP_BAR': 'Barra superiore',
            'LONG_BOX': 'Scatola lunga',
            'BIENENKISTE': 'Bienenkiste.',
            'other': 'Unknown',
          })}";

  static String m44(type) => "${Intl.select(type, {
            'HORIZONTAL': 'Orizzontale',
            'VERTICAL': 'Verticale',
            'other': 'Unknown',
          })}";

  static String m45(type) => "${Intl.select(type, {
            'LANGSTROTH_STANDARD': 'Langstroth.',
            'LANGSTROTH_JUMBO': 'Langstroth Jumbo.',
            'BS_NATIONAL': 'BS National.',
            'BS_COMMERCIAL': 'BS Commercial.',
            'ROSE': 'Rosa',
            'SMITH': 'fabbro',
            'SEGEBERGER_BEUTE': 'Segeberger.',
            'FRANKENBEUTE': 'Frankenbeute.',
            'DEUTSCHES_NORMALMASS': 'Standard tedesco',
            'DADANT_BLATT': 'Dadant Blatt',
            'DADANT_US': 'DADANTE US.',
            'ZANDER': 'Zaducante',
            'ZANDER_ALPINE': 'Zandiere',
            'ZADANT': 'Zander Alpine.',
            'FLOW': 'Flusso',
            'MINI_PLUS': 'Mini plus.',
            'WARRE_STANDARD': 'Merci',
            'WBC_STANDARD': 'WBC Standard.',
            'CDB_STANDARD': 'Standard cdb.',
            'SCHWEIZER_MAGAZIN': 'Swiss Magazine.',
            'HELVETICA': 'Helvetica.',
            'OTHER_MAGAZINE': 'Altro',
            'SLOVENIAN': 'sloveno',
            'SCHWEIZERKASTEN': 'Standard svizzero',
            'SPUEHLER': 'Spuehler.',
            'OTHER_BEE_HOUSE': 'Altro',
            'SKEP_BASKET': 'Cesto di Skep.',
            'SUN_HIVE': 'Sun Hive.',
            'LOG_HIVE': 'Log hive.',
            'KENYAN': 'Kenyan Top Bar Hive',
            'BEEHAUS': 'Beehaus.',
            'DARTINGTON_LONG_DEEP': 'Dartington Long Deep.',
            'OTHER_TOP_BAR': 'Altro',
            'LAYENS': 'Layenes.',
            'GOLDEN': 'd\'oro',
            'LANGSTROTH_LONG': 'Longstrotth a lungo',
            'OTHER_LONG_BOX': 'Altro',
            'BIENENKISTE': 'Bienenkiste.',
            'DADANT_NUC': 'Dadant Nuc.',
            'LANGSTROTH_NUC': 'Langstroth Nuc.',
            'BS_NATIONAL_NUC': 'BS National Nuc.',
            'BS_COMMERCIAL_NUC': 'BS Commercial Nuc.',
            'SMITH_NUC': 'Smith Nuc.',
            'MINI_NUC': 'Mini nuc.',
            'OTHER_NUC': 'Altro',
            'other': 'Unknown',
          })}";

  static String m46(type) => "${Intl.select(type, {
            'RED': 'rosso',
            'WHITE': 'bianco',
            'BLUE': 'Blu',
            'GREEN': 'Verde',
            'YELLOW': 'Giallo',
            'other': 'Unknown',
          })}";

  static String m47(count) =>
      "${Intl.plural(count, zero: '${count} telaio', one: '${count} telaio', other: '${count} telaio')}";

  static String m48(type) => "${Intl.select(type, {
            'common_error_serverError':
                'Qualcosa è andato storto mentre stavamo parlando con il nostro server. Si prega di riprovare e se i percisti del problema ci raggiungano per il supporto.',
            'common_error_insufficientPermission':
                'Non hai il permesso insufficiente per accedere a questo documento. Si prega di controllare con il tuo amministratore per aggiungere autorizzazioni.',
            'common_error_emulatorError': 'Errore emulatore.',
            'log_error_noLogs':
                'Non ci sono ancora log per questo apiario. Puoi aggiungere il tuo primo registro facendo clic sul pulsante qui sotto. Se pensi che ci sia un errore, prova a aggiornare la pagina dal menu in alto a destra.',
            'log_error_invalidDocument':
                'Il documento di registro che stai cercando non è valido o corrotto. Si prega di notare l\'ID in alto a destra e contattaci per il supporto.',
            'log_error_missingDocument':
                'Il documento di registro che stai cercando è mancante dal nostro database. Si prega di notare l\'ID in alto a destra e contattaci per il supporto.',
            'other': 'Unknown',
          })}";

  static String m49(method, amount) => "${Intl.select(method, {
            'STICKY_BOARD': '${amount} varroa (/giorno)',
            'other': '${amount} varroa (/100 api)',
          })}";

  static String m50(apiary) => "${apiary}creato";

  static String m51(apiary) => "${apiary}cancellato";

  static String m52(hive) => "${hive}creato";

  static String m53(hive) => "${hive}cancellato";

  static String m54(hive, apiary) => "${hive}spostato in ${apiary}";

  static String m55(queen) => "${queen}creato";

  static String m56(queen) => "${queen}cancellato";

  static String m57(queen) => "${queen}morto";

  static String m58(queen) => "${queen}spostato";

  static String m59(oldQueen, queen) => "${oldQueen}sostituito da ${queen}";

  static String m60(severity) => "Derubare ${severity}";

  static String m61(caught) => "brulicante ${caught}";

  static String m62(method) => "Trattamento ${method}";

  static String m63(severity) => "Contea di Varroa ${severity}";

  static String m64(type) => "Nota meteo ${type}";

  static String m65(type) => "${Intl.select(type, {
            'common_error_serverError': 'Errore del server',
            'common_error_insufficientPermission': 'Permessi insufficienti',
            'common_error_emulatorError': 'Errore emulatore',
            'log_error_noLogs': 'Nessun registro.',
            'log_error_invalidDocument': 'Registro non valido',
            'log_error_missingDocument': 'Log mancante',
            'other': 'Unknown',
          })}";

  static String m66(type) => "${Intl.select(type, {
            'USER_CREATED': 'Utente creato',
            'USER_UPDATED': 'Utente aggiornato',
            'APIARY_CREATED': 'Apiario creato',
            'APIARY_UPDATED': 'APIAY AGGIORNATO',
            'APIARY_DELETED': 'Apiario cancellato',
            'HIVE_CREATED': 'Hive creato',
            'HIVE_MOVED': 'Hive spostata',
            'HIVE_UPDATED': 'Hive Aggiornato.',
            'HIVE_DELETED': 'Hive soppresso',
            'HARDWARE_REGISTERED': 'Hardware registrato.',
            'COLONY_CREATED': 'Colonia creata',
            'COLONY_UPDATED': 'COLONIA AGGIORNATO',
            'COLONY_MOVED': 'Colonia spostata',
            'COLONY_DELETED': 'Colonia cancellata',
            'COLONY_DIED': 'La colonia è morta',
            'QUEEN_CREATED': 'Regina creata',
            'QUEEN_DELETED': 'Queen cancellato',
            'QUEEN_UPDATED': 'Regina aggiornata',
            'QUEEN_MOVED': 'La regina si trasferisce',
            'QUEEN_SUPERSEDED': 'La regina sostituita',
            'QUEEN_DIED': 'La regina è morta',
            'INSPECTION_CREATED': 'Ispezione creata',
            'INSPECTION_UPDATED': 'ISPEZIONE AGGIORNATO',
            'INSPECTION_DELETED': 'Ispezione cancellata',
            'FEEDING_CREATED': 'Alimentazione creata',
            'FEEDING_UPDATED': 'Alimentazione aggiornata',
            'FEEDING_DELETED': 'Alimentazione cancellata',
            'HARVEST_CREATED': 'Raccolto creato',
            'HARVEST_UPDATED': 'Raccolta aggiornata',
            'HARVEST_DELETED': 'Raccolto cancellato',
            'TASK_CREATED': 'Attività creata',
            'TASK_COMPLETED': 'Attività completata',
            'TASK_ARCHIVED': 'Compito archiviato',
            'TASK_DELETED': 'Attività cancellata',
            'IMPORTED': 'Documento importato',
            'ROBBING': 'Derubo',
            'WEATHER': 'Tempo metereologico',
            'VARROA_COUNT': 'Count di Varroa',
            'TREATMENT': 'Trattamento',
            'SWARMED': 'Brulicato',
            'NOTE': 'Nota',
            'other': 'Unknown',
          })}";

  static String m67(type) => "${Intl.select(type, {
            'CLOTH_ABOVE': 'Panno sopra.',
            'CLOTH_BELOW': 'Panno sotto.',
            'LIE_BAG': 'Bugia',
            'NASSENHEIDER': 'Dispersore nassenheider',
            'SHELL': 'Guscio',
            'VAPORIZE': 'Vaporizzante',
            'SPRAY': 'Spruzzatura',
            'TRICKLE': 'Gocciolante',
            'GEL_STRIP': 'Gel striscia',
            'PLATELETS': 'Piastrine',
            'CONTACT_STRIP': 'Contatta Striscia',
            'VARROA_SOLUTION': 'Vatorex Varroa Kit.',
            'VARROA_CONTROLLER': 'Controller Varroa.',
            'VARROA_KILL': 'Varroa Kill II.',
            'MITE_ZAPPER': 'Acaro zapper.',
            'BIENENSAUNA': 'Bienensauna',
            'PATTIES': 'Polpette',
            'TRAP': 'Trappola',
            'UNKNOWN': 'Sconosciuto',
            'other': 'Unknown',
          })}";

  static String m68(type) => "${Intl.select(type, {
            'AMITRAZ': 'Amitraz.',
            'B401': 'B402.',
            'COUMAPHOS': 'Coumaphos.',
            'FLUVALINATE': 'Fluvalinate.',
            'FORMIC_ACID': 'Acido formico',
            'FLUMERTHRIN': 'Flumertrin.',
            'FUMIDIL_B': 'Fumidil-B.',
            'HOPS_BETA_ACID': 'Hops Beta Acid.',
            'LACTIC_ACID': 'Acido lattico',
            'MENTHOL': 'Mentolo',
            'OXALIC_ACID': 'Acido ossalico',
            'PARADICHLOROBENZENE': 'Paradichlorobenzene.',
            'PERMETHRIN': 'Permethrin.',
            'TERRAMYCIN': 'Terramanycin.',
            'THYMOL': 'Timolo',
            'TYLOSIN': 'Tylosin.',
            'HEAT': 'Trattamento termico',
            'DIATOMACSIOUS_EARTH': 'Terra diatomaciosa',
            'DRONE_COMB_TRAPS': 'Drone pettine traps.',
            'MITE_TRAPS': 'Trap di acaro',
            'MOTH_TRAPS': 'Trappole di falena',
            'BEETLE_TRAPS': 'Trappole di coleottero',
            'OTHER': 'Altro',
            'other': 'Unknown',
          })}";

  static String m69(type) => "${Intl.select(type, {
            'STICKY_BOARD': 'Bordo appiccicoso',
            'POWDERED_SUGAR': 'Zucchero a velo',
            'ALCOHOL_WASH': 'Lavaggio alcolico',
            'ETHER_ROLL': 'Rotolo di etere',
            'other': 'Unknown',
          })}";

  static String m70(type) => "${Intl.select(type, {
            'DARK_CLOUD': 'Nuvola scura',
            'FOGGY': 'Nebbioso',
            'SUN': 'Soleggiato',
            'PARTIAL_SHOWERS': 'Docce parziali',
            'PARTIAL_SUN': 'Sole parziale',
            'SHADED': 'Ombreggiato',
            'RAIN': 'Piovoso',
            'SNOW': 'Nevoso',
            'STORM': 'Tempestoso',
            'WIND': 'Ventoso',
            'other': 'Unknown',
          })}";

  static String m71(failure) => "${Intl.select(failure, {
            'push_error_serverError': 'Errore del server.',
            'push_error_permissionDenied': 'Permessi insufficienti.',
            'other': 'Errore di notifica push.',
          })}";

  static String m72(failure) => "${Intl.select(failure, {
            'search_error_nFCNotAvailable':
                'L\'NFC non è disponibile sul tuo dispositivo.',
            'search_error_nFCNotFound': 'Nessun tag NFC è stato trovato.',
            'search_error_timeout': 'NFC è scaduto. Si prega di riprovare.',
            'search_error_invalidNFC':
                'Il tag NFC non viene riconosciuto, assicurati che sia un hardware Vatorex.',
            'search_error_nDEFNotWritten':
                'Il tag NFC non è ancora scritto, si prega di resettare l\'hardware. Se il problema persiste, contattaci per il supporto.',
            'search_error_noCachedMessage':
                'Il tag NFC è stato scritto in modo errato, si prega di resettare l\'hardware. Se il problema persiste, contattaci per il supporto.',
            'other': 'Errore di ricerca NFC.',
          })}";

  static String m73(tag) =>
      "Abbiamo trovato un tag NFC!\\nTag: ${tag}\\nPer favore aspetta mentre ti portiamo alla pagina dei dettagli dell\'hardware.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "action_text_FeedType": m0,
        "action_text_apiaryType": m1,
        "action_text_disease": m2,
        "action_text_exposureType": m3,
        "action_text_honeyType": m4,
        "actions_error_actionFailure": m5,
        "actions_error_feedingFailureTitle":
            MessageLookupByLibrary.simpleMessage(
                "Fallimento dell\'alimentazione"),
        "actions_error_harvestFailureMessage": MessageLookupByLibrary.simpleMessage(
            "Qualcosa è andato storto durante la raccolta di questo alveare. Controlla l\'errore di seguito e se il problema persiste, contattaci per assistenza."),
        "actions_error_harvestFailureTitle":
            MessageLookupByLibrary.simpleMessage("Fallimento del raccolto"),
        "actions_error_inspectionFailureMessage":
            MessageLookupByLibrary.simpleMessage(
                "Qualcosa è andato storto durante le ispezioni per questo alveare. Controlla l\'errore di seguito e se il problema persiste, contattaci per assistenza."),
        "actions_error_inspectionFailureTitle":
            MessageLookupByLibrary.simpleMessage("Errore di ispezione"),
        "actions_error_noFeedingsMessage": MessageLookupByLibrary.simpleMessage(
            "Non hai cibo per questo alveare. Aggiungi la tua prima ispezione per vedere lo stato degli alveari."),
        "actions_error_noInspectionsMessage": MessageLookupByLibrary.simpleMessage(
            "Non ci sono ispezioni per questo alveare. Aggiungi la tua prima ispezione per vedere lo stato degli alveari."),
        "actions_form_activityHelper": MessageLookupByLibrary.simpleMessage(
            "Quanta attività di foraggiamento sta uscendo dalla parte anteriore dell\'alveare?"),
        "actions_form_activityTitle":
            MessageLookupByLibrary.simpleMessage("Attività"),
        "actions_form_addFeeding":
            MessageLookupByLibrary.simpleMessage("AGGIUNGERE ALIMENTAZIONE"),
        "actions_form_addHarvest":
            MessageLookupByLibrary.simpleMessage("AGGIUNGI IL RACCOLTO"),
        "actions_form_amount": MessageLookupByLibrary.simpleMessage("Importo"),
        "actions_form_amountOptional":
            MessageLookupByLibrary.simpleMessage("Importo (facoltativo)"),
        "actions_form_boxesAmountOptional":
            MessageLookupByLibrary.simpleMessage("Scatole (facoltative)"),
        "actions_form_diseaseHelper": MessageLookupByLibrary.simpleMessage(
            "Seleziona tutti i parassiti/malattie che sono stati trovati durante l\'ispezione."),
        "actions_form_diseaseTitle":
            MessageLookupByLibrary.simpleMessage("Parassiti/malattie"),
        "actions_form_editFeeding":
            MessageLookupByLibrary.simpleMessage("MODIFICA ALIMENTAZIONE"),
        "actions_form_editHarvest":
            MessageLookupByLibrary.simpleMessage("MODIFICA VENDEMMIA"),
        "actions_form_editInspectionTitle":
            MessageLookupByLibrary.simpleMessage("Modifica ispezione"),
        "actions_form_edtiFeeding":
            MessageLookupByLibrary.simpleMessage("Modifica alimentazione"),
        "actions_form_feedAmountHelper": MessageLookupByLibrary.simpleMessage(
            "Inserisci la quantità di mangime somministrata alle api"),
        "actions_form_feedType":
            MessageLookupByLibrary.simpleMessage("Tipo di alimentazione"),
        "actions_form_feedTypeHelper": MessageLookupByLibrary.simpleMessage(
            "Seleziona il tipo di mangime dato alle tue api"),
        "actions_form_feedingDateHelper": MessageLookupByLibrary.simpleMessage(
            "Seleziona la data di alimentazione"),
        "actions_form_feedingPictureHelper": MessageLookupByLibrary.simpleMessage(
            "Scatta una foto di più immagini selezionate da includere nella poppata."),
        "actions_form_feedingProbiotics":
            MessageLookupByLibrary.simpleMessage("Con probiotici"),
        "actions_form_framesAmountHelper": MessageLookupByLibrary.simpleMessage(
            "Inserisci la quantità di fotogrammi sulla configurazione"),
        "actions_form_framesAmountOptional":
            MessageLookupByLibrary.simpleMessage("Cornici (opzionale)"),
        "actions_form_harvestBoxesAmountHelper":
            MessageLookupByLibrary.simpleMessage(
                "Inserisci il numero di pacchi nella configurazione"),
        "actions_form_harvestDateHelper": MessageLookupByLibrary.simpleMessage(
            "Seleziona la data della vendemmia"),
        "actions_form_harvestHoneyAmountHelper":
            MessageLookupByLibrary.simpleMessage(
                "Inserisci la quantità di miele raccolto"),
        "actions_form_harvestPictureHelper": MessageLookupByLibrary.simpleMessage(
            "Scatta una foto di più immagini selezionate da includere nel tuo raccolto."),
        "actions_form_harvestWaterContentHelper":
            MessageLookupByLibrary.simpleMessage(
                "Inserisci la percentuale di acqua"),
        "actions_form_honeyType":
            MessageLookupByLibrary.simpleMessage("Tipo di miele"),
        "actions_form_honeyTypeHelper":
            MessageLookupByLibrary.simpleMessage("Miele Tipo di raccolta"),
        "actions_form_inspectionDateHelper":
            MessageLookupByLibrary.simpleMessage(
                "Seleziona la data dell\'ispezione."),
        "actions_form_inspectionNoteHelper": MessageLookupByLibrary.simpleMessage(
            "Inserire eventuali note aggiuntive relative alle osservazioni dell\'ispezione."),
        "actions_form_inspectionPictureHelper":
            MessageLookupByLibrary.simpleMessage(
                "Scatta una foto di più immagini selezionate da includere nell\'ispezione."),
        "actions_form_moodHelper": MessageLookupByLibrary.simpleMessage(
            "Quanto sono aggressive/produttive le api?"),
        "actions_form_moodTitle": MessageLookupByLibrary.simpleMessage("Mood"),
        "actions_form_newFeeding":
            MessageLookupByLibrary.simpleMessage("Nuova alimentazione"),
        "actions_form_newHarvest":
            MessageLookupByLibrary.simpleMessage("Nuovo raccolto"),
        "actions_form_newInspectionTitle":
            MessageLookupByLibrary.simpleMessage("Nuova ispezione"),
        "actions_form_noteTitle": MessageLookupByLibrary.simpleMessage("Nota"),
        "actions_form_obsHelper": MessageLookupByLibrary.simpleMessage(
            "Seleziona ciò che hai visto durante l\'ispezione. Premi a lungo per ottenere le descrizioni di ciascuna icona."),
        "actions_form_observationsTitle":
            MessageLookupByLibrary.simpleMessage("Osservazione (i)"),
        "actions_form_patternHelper": MessageLookupByLibrary.simpleMessage(
            "Quanto è solido il motivo della covata?"),
        "actions_form_patternTitle":
            MessageLookupByLibrary.simpleMessage("Motivo"),
        "actions_form_storageTitle":
            MessageLookupByLibrary.simpleMessage("Conservazione"),
        "actions_form_strengthHelper": MessageLookupByLibrary.simpleMessage(
            "Quanto è forte la colonia? Quanti fotogrammi completi di ape?"),
        "actions_form_strengthTitle":
            MessageLookupByLibrary.simpleMessage("Forza"),
        "actions_form_strorageHelper": MessageLookupByLibrary.simpleMessage(
            "Quanti negozi di miele ha la colonia?"),
        "actions_form_waterContentOptional":
            MessageLookupByLibrary.simpleMessage(
                "Contenuto idrico (opzionale)"),
        "actions_menu_editFeeding":
            MessageLookupByLibrary.simpleMessage("Modifica alimentazione"),
        "actions_menu_editHarvest":
            MessageLookupByLibrary.simpleMessage("Modifica Harvest"),
        "actions_menu_editInspection":
            MessageLookupByLibrary.simpleMessage("Modifica ispezione"),
        "actions_nav_Harvest": MessageLookupByLibrary.simpleMessage("Harvest"),
        "actions_nav_feeding":
            MessageLookupByLibrary.simpleMessage("Alimentazione"),
        "actions_nav_feedings": MessageLookupByLibrary.simpleMessage("poppate"),
        "actions_nav_harvests":
            MessageLookupByLibrary.simpleMessage("Vendemmie"),
        "actions_nav_inspection":
            MessageLookupByLibrary.simpleMessage("ispezione"),
        "actions_nav_inspections":
            MessageLookupByLibrary.simpleMessage("Le ispezioni"),
        "actions_snack_actionFailure": m6,
        "actions_snack_feedingCreated":
            MessageLookupByLibrary.simpleMessage("Alimentazione creata"),
        "actions_snack_feedingSaved":
            MessageLookupByLibrary.simpleMessage("Alimentazione salvata"),
        "actions_snack_harvestCreated":
            MessageLookupByLibrary.simpleMessage("Vendemmia creata"),
        "actions_snack_harvestDeleted":
            MessageLookupByLibrary.simpleMessage("Vendemmia eliminata"),
        "actions_snack_harvestSaved":
            MessageLookupByLibrary.simpleMessage("Raccolto salvato"),
        "actions_snack_inspectionCreated":
            MessageLookupByLibrary.simpleMessage("Ispezione creata"),
        "actions_snack_inspectionDeleted":
            MessageLookupByLibrary.simpleMessage("Ispezione eliminata"),
        "actions_snack_inspectionSaved":
            MessageLookupByLibrary.simpleMessage("Inspection salvato"),
        "actions_table_dateHeader":
            MessageLookupByLibrary.simpleMessage("Data"),
        "actions_table_moodHeader":
            MessageLookupByLibrary.simpleMessage("Mood"),
        "actions_table_storageHeader":
            MessageLookupByLibrary.simpleMessage("Conservazione"),
        "actions_table_strengthHeader":
            MessageLookupByLibrary.simpleMessage("Forza"),
        "actions_text_obsCappedBrood":
            MessageLookupByLibrary.simpleMessage("covata con cappuccio"),
        "actions_text_obsEggs": MessageLookupByLibrary.simpleMessage("Uova"),
        "actions_text_obsLarva": MessageLookupByLibrary.simpleMessage("Larva"),
        "actions_text_obsQueen": MessageLookupByLibrary.simpleMessage("Regina"),
        "actions_text_obsQueenCell":
            MessageLookupByLibrary.simpleMessage("Cellula regina"),
        "actions_word_diseasesSection":
            MessageLookupByLibrary.simpleMessage("MALATTIA/E"),
        "actions_word_observationSection":
            MessageLookupByLibrary.simpleMessage("OSSERVAZIONI"),
        "alert_dialog_delete_message": MessageLookupByLibrary.simpleMessage(""),
        "alert_dialog_delete_title": MessageLookupByLibrary.simpleMessage(""),
        "alerts_card_errorTitle":
            MessageLookupByLibrary.simpleMessage("Avvisi falliti"),
        "alerts_error_alertsFailure": m7,
        "alerts_error_cardTitle": m8,
        "alerts_message_noAlerts": MessageLookupByLibrary.simpleMessage(
            "Non ci sono avvisi attuali. Quando si verifica un nuovo problema con un componente hardware, riceverai una notifica push e un messaggio."),
        "alerts_title_noAlerts":
            MessageLookupByLibrary.simpleMessage("Nessun avviso"),
        "apiaries_page_noApiaries": MessageLookupByLibrary.simpleMessage(
            "Sembra che tu non abbia ancora aggiunto apiari. Puoi fare clic sul pulsante per aggiungere il tuo primo apiario o selezionare Aggiorna dal menu se pensi che ci sia stato un errore."),
        "apiaries_page_title_noApiaries":
            MessageLookupByLibrary.simpleMessage("Ancora nessun apiario."),
        "apiary_button_addApiary":
            MessageLookupByLibrary.simpleMessage("AGGIUNGI APIARIO"),
        "apiary_button_addHive":
            MessageLookupByLibrary.simpleMessage("AGGIUNGI HIVE"),
        "apiary_error_apiaryFailure": m9,
        "apiary_error_apiaryFailureTitle":
            MessageLookupByLibrary.simpleMessage("Fallimento dell\'apiario"),
        "apiary_error_missingConfigMessage": MessageLookupByLibrary.simpleMessage(
            "A questo apiario manca un file di configurazione. Potrebbe essere necessario aggiornare la pagina con il pulsante in basso e se il problema persiste, contattaci per assistenza."),
        "apiary_error_missingConfigTitle":
            MessageLookupByLibrary.simpleMessage("Config mancante."),
        "apiary_error_noHivesMessage": MessageLookupByLibrary.simpleMessage(
            "Questo apiario è attualmente vuoto. Se desideri aggiungere il tuo primo alveare, fai clic sul pulsante qui sotto. Se pensi che ci sia un errore prova ad aggiornare la pagina dal menu in alto a destra."),
        "apiary_error_noHivesTitle":
            MessageLookupByLibrary.simpleMessage("Niente alveari."),
        "apiary_exposure": MessageLookupByLibrary.simpleMessage("Esposizione"),
        "apiary_form_apiaryExposureHelper":
            MessageLookupByLibrary.simpleMessage(
                "Che tipo di esposizione solare ha il tuo apiario"),
        "apiary_form_apiaryLocationHelper":
            MessageLookupByLibrary.simpleMessage("Posizione del tuo apiario"),
        "apiary_form_apiaryNameHelper":
            MessageLookupByLibrary.simpleMessage("Nome che verrà visualizzato"),
        "apiary_form_apiarySerialHelper": MessageLookupByLibrary.simpleMessage(
            "Campo opzionale. Numero di serie dell\'apiario"),
        "apiary_form_apiaryTypeHelper":
            MessageLookupByLibrary.simpleMessage("Tipo di apiario"),
        "apiary_form_locationHelper": MessageLookupByLibrary.simpleMessage(
            "Sulla mappa, tocca la posizione dell\'Apiario. Usa la barra di ricerca se non sei vicino alla tua posizione attuale."),
        "apiary_form_locationSetTo": MessageLookupByLibrary.simpleMessage(""),
        "apiary_form_useCurrentLocation":
            MessageLookupByLibrary.simpleMessage(""),
        "apiary_menu_addApiary":
            MessageLookupByLibrary.simpleMessage("Aggiungi apiario"),
        "apiary_menu_addHive":
            MessageLookupByLibrary.simpleMessage("Aggiungi alveare"),
        "apiary_menu_addLog":
            MessageLookupByLibrary.simpleMessage("Aggiungi registro"),
        "apiary_menu_addTask":
            MessageLookupByLibrary.simpleMessage("Aggiungi attività"),
        "apiary_menu_allApiaries":
            MessageLookupByLibrary.simpleMessage("Tutti gli apiari"),
        "apiary_menu_edit":
            MessageLookupByLibrary.simpleMessage("Modifica apiario"),
        "apiary_message_noApiaryMessage": MessageLookupByLibrary.simpleMessage(
            "Sembra che tu non abbia ancora aggiunto apiari. Puoi fare clic sul pulsante per aggiungere il tuo primo apiario o selezionare Aggiorna dal menu se pensi che ci sia stato un errore."),
        "apiary_message_noApiaryTitle":
            MessageLookupByLibrary.simpleMessage("Ancora nessun apiario."),
        "apiary_new_apiary":
            MessageLookupByLibrary.simpleMessage("Nuovo apiario"),
        "apiary_snack_apiaryCreated":
            MessageLookupByLibrary.simpleMessage("Apiario creato"),
        "apiary_snack_apiaryRemoved": MessageLookupByLibrary.simpleMessage(""),
        "apiary_snack_apiarySaved":
            MessageLookupByLibrary.simpleMessage("Apiario salvato\n"),
        "apiary_sun_exposure_full_sun":
            MessageLookupByLibrary.simpleMessage("Sunny"),
        "apiary_sun_exposure_half_shaded":
            MessageLookupByLibrary.simpleMessage("Parziale"),
        "apiary_sun_exposure_shaded":
            MessageLookupByLibrary.simpleMessage("Ombreggiato"),
        "apiary_title_apiaryDetails":
            MessageLookupByLibrary.simpleMessage("Dettaglio apiario"),
        "apiary_type": MessageLookupByLibrary.simpleMessage("Tipo"),
        "apiary_type_mixed": MessageLookupByLibrary.simpleMessage("Misto"),
        "apiary_type_rural": MessageLookupByLibrary.simpleMessage("Rurale"),
        "apiary_type_urban": MessageLookupByLibrary.simpleMessage("Urban"),
        "apiary_weather_forecastTitle":
            MessageLookupByLibrary.simpleMessage("Previsione"),
        "apiary_word_hivesSection":
            MessageLookupByLibrary.simpleMessage("ORTICARIA"),
        "auth_button_appleLogin":
            MessageLookupByLibrary.simpleMessage("Accedi con Apple"),
        "auth_button_changePassword":
            MessageLookupByLibrary.simpleMessage("CAMBIA PASSWORD"),
        "auth_button_createAccount":
            MessageLookupByLibrary.simpleMessage("CREARE UN ACCOUNT"),
        "auth_button_deleteAccount":
            MessageLookupByLibrary.simpleMessage("ELIMINA ACCOUNT"),
        "auth_button_editAccount":
            MessageLookupByLibrary.simpleMessage("MODIFICA ACCOUNT"),
        "auth_button_facebookLogin":
            MessageLookupByLibrary.simpleMessage("Accedi con Facebook"),
        "auth_button_googleLogin":
            MessageLookupByLibrary.simpleMessage("Accedi con Google"),
        "auth_button_login": MessageLookupByLibrary.simpleMessage("ACCESSO"),
        "auth_button_passwordlessLogin":
            MessageLookupByLibrary.simpleMessage("Accesso senza password"),
        "auth_button_resetPassword":
            MessageLookupByLibrary.simpleMessage("INVIARE E-MAIL"),
        "auth_button_restPassword":
            MessageLookupByLibrary.simpleMessage("Dimenticato?"),
        "auth_dialog_deleteAccountContent": MessageLookupByLibrary.simpleMessage(
            "Sei sicuro? Una volta confermato, non sarà possibile annullarlo."),
        "auth_dialog_deleteAccountTitle":
            MessageLookupByLibrary.simpleMessage("Cancellare l\'account?"),
        "auth_error_authFailure": m10,
        "auth_error_missingTerms": MessageLookupByLibrary.simpleMessage(
            "Devi accettare i T&C prima di continuare."),
        "auth_error_valueFailure": m11,
        "auth_form_addressHelper": MessageLookupByLibrary.simpleMessage(
            "Se lo desideri, inserisci il tuo indirizzo."),
        "auth_form_bioHelper": MessageLookupByLibrary.simpleMessage(
            "Inserisci una breve descrizione di te stesso."),
        "auth_form_displayNameHelper": MessageLookupByLibrary.simpleMessage(
            "Immettere un nome visualizzato. (max 24 caratteri)"),
        "auth_form_firstNameHelper":
            MessageLookupByLibrary.simpleMessage("Inserisci il tuo nome."),
        "auth_form_lastNameHelper":
            MessageLookupByLibrary.simpleMessage("Inserisci il tuo cognome."),
        "auth_form_phoneHelper": MessageLookupByLibrary.simpleMessage(
            "Facoltativamente inserisci il tuo numero di telefono."),
        "auth_menu_editAccount":
            MessageLookupByLibrary.simpleMessage("Modifica account"),
        "auth_menu_linkAccounts":
            MessageLookupByLibrary.simpleMessage("Conti di collegamento"),
        "auth_menu_settings":
            MessageLookupByLibrary.simpleMessage("Impostazioni"),
        "auth_message_createAccountSuccess":
            MessageLookupByLibrary.simpleMessage("Successo! Account creato"),
        "auth_message_emailSent":
            MessageLookupByLibrary.simpleMessage("Successo! Email inviata"),
        "auth_message_loginSuccess":
            MessageLookupByLibrary.simpleMessage("Successo! Accesso"),
        "auth_route_createAccount": MessageLookupByLibrary.simpleMessage(
            "Non hai un account? Registrati"),
        "auth_route_login":
            MessageLookupByLibrary.simpleMessage("Hai già un account? Accedi"),
        "auth_snack_authFailure": m12,
        "auth_switch_termsAndService": MessageLookupByLibrary.simpleMessage(
            "Accetto i Termini di servizio e l\'Informativa sulla privacy di Vatorex."),
        "auth_text_dateFormat": m13,
        "auth_text_resetPasswordInstructions": MessageLookupByLibrary.simpleMessage(
            "Inserisci l\'email associata al tuo account e premi il pulsante \"Invia email\".  Ti invieremo un\'email con il link per cambiare la password."),
        "auth_text_unitSystem": m14,
        "auth_title_accountPage": MessageLookupByLibrary.simpleMessage("Conto"),
        "auth_title_address": MessageLookupByLibrary.simpleMessage("Indirizzo"),
        "auth_title_biography": MessageLookupByLibrary.simpleMessage("Bio"),
        "auth_title_createAccountPage":
            MessageLookupByLibrary.simpleMessage("Creare un account"),
        "auth_title_dateFormat":
            MessageLookupByLibrary.simpleMessage("Formato della data"),
        "auth_title_firstName": MessageLookupByLibrary.simpleMessage("Nome"),
        "auth_title_lastName": MessageLookupByLibrary.simpleMessage("Cognome"),
        "auth_title_loginPage": MessageLookupByLibrary.simpleMessage("Accesso"),
        "auth_title_phone":
            MessageLookupByLibrary.simpleMessage("Numero di telefono"),
        "auth_title_resetPasswordPage":
            MessageLookupByLibrary.simpleMessage("Ripristina la password"),
        "auth_title_unitSystem":
            MessageLookupByLibrary.simpleMessage("Sistema di unità"),
        "button_add_apiary":
            MessageLookupByLibrary.simpleMessage("Aggiungi apiario"),
        "common_button_account": MessageLookupByLibrary.simpleMessage("Conto"),
        "common_button_addTask":
            MessageLookupByLibrary.simpleMessage("AGGIUNGI ATTIVITÀ"),
        "common_button_alerts": MessageLookupByLibrary.simpleMessage("Avvisi"),
        "common_button_connect":
            MessageLookupByLibrary.simpleMessage("CONNETTI"),
        "common_button_contact":
            MessageLookupByLibrary.simpleMessage("Contatta"),
        "common_button_delete":
            MessageLookupByLibrary.simpleMessage("ELIMINARE"),
        "common_button_download":
            MessageLookupByLibrary.simpleMessage("SCARICA"),
        "common_button_edit": MessageLookupByLibrary.simpleMessage("MODIFICA"),
        "common_button_file": MessageLookupByLibrary.simpleMessage("FILE"),
        "common_button_files": MessageLookupByLibrary.simpleMessage("FILE"),
        "common_button_hardware":
            MessageLookupByLibrary.simpleMessage("Hardware"),
        "common_button_help": MessageLookupByLibrary.simpleMessage("Aiuto"),
        "common_button_home": MessageLookupByLibrary.simpleMessage("CASA"),
        "common_button_newFeatures":
            MessageLookupByLibrary.simpleMessage("Nuove caratteristiche"),
        "common_button_photo": MessageLookupByLibrary.simpleMessage("FOTO"),
        "common_button_reportIssue":
            MessageLookupByLibrary.simpleMessage("PROBLEMA RAPPORTO"),
        "common_button_retry": MessageLookupByLibrary.simpleMessage("AGGIORNA"),
        "common_button_save": MessageLookupByLibrary.simpleMessage("SALVARE"),
        "common_button_search": MessageLookupByLibrary.simpleMessage("RICERCA"),
        "common_button_settings":
            MessageLookupByLibrary.simpleMessage("IMPOSTAZIONI"),
        "common_button_signOut": MessageLookupByLibrary.simpleMessage("USCIRE"),
        "common_button_tasks": MessageLookupByLibrary.simpleMessage("COMPITI"),
        "common_error_commonFailure": m15,
        "common_error_noFeedingsTitle":
            MessageLookupByLibrary.simpleMessage("Nessuna poppata"),
        "common_error_noHarvestsMessage": MessageLookupByLibrary.simpleMessage(
            "Non ci sono raccolti per questo alveare. Aggiungi la tua prima ispezione per vedere lo stato degli alveari."),
        "common_error_noHarvestsTitle":
            MessageLookupByLibrary.simpleMessage("Nessun raccolto"),
        "common_error_noInspectionsTitle":
            MessageLookupByLibrary.simpleMessage("Nessuna ispezione"),
        "common_error_noStatusTitle":
            MessageLookupByLibrary.simpleMessage("Nessuno stato"),
        "common_error_permissionTitle": MessageLookupByLibrary.simpleMessage(
            "Autorizzazione insufficiente"),
        "common_error_serverTitle":
            MessageLookupByLibrary.simpleMessage("Errore del server"),
        "common_error_valueFailure": m16,
        "common_form_dateTitle": MessageLookupByLibrary.simpleMessage("Data"),
        "common_form_editTaskTitle":
            MessageLookupByLibrary.simpleMessage("Modifica attività"),
        "common_form_newTaskTitle":
            MessageLookupByLibrary.simpleMessage("Nuova attività"),
        "common_form_pictureTitle":
            MessageLookupByLibrary.simpleMessage("Immagine"),
        "common_form_picturesTitle":
            MessageLookupByLibrary.simpleMessage("Foto (s)"),
        "common_form_severityTitle":
            MessageLookupByLibrary.simpleMessage("Gravità"),
        "common_form_taskDescriptionHelper":
            MessageLookupByLibrary.simpleMessage(
                "Scrivi una breve descrizione dell\'attività."),
        "common_form_taskDescriptionTitle":
            MessageLookupByLibrary.simpleMessage("Descrizione attività"),
        "common_form_taskDueDateHelper": MessageLookupByLibrary.simpleMessage(
            "Seleziona la data di scadenza per l\'attività."),
        "common_form_taskDueDateTitle":
            MessageLookupByLibrary.simpleMessage("Data di scadenza"),
        "common_form_taskPriorityHelper": MessageLookupByLibrary.simpleMessage(
            "Seleziona la priorità dell\'attività."),
        "common_form_taskPriorityTitle":
            MessageLookupByLibrary.simpleMessage("Priorità"),
        "common_input_showArchived":
            MessageLookupByLibrary.simpleMessage("Mostra archiviato"),
        "common_message_contact": MessageLookupByLibrary.simpleMessage(
            "Hai bisogno di più aiuto? contattaci"),
        "common_message_failureTitle":
            MessageLookupByLibrary.simpleMessage("Guasto comune"),
        "common_message_missingId":
            MessageLookupByLibrary.simpleMessage("ID mancante"),
        "common_message_noTasksMessage": MessageLookupByLibrary.simpleMessage(
            "Al momento non hai nessun compito in questo apiario. È possibile aggiungere una nuova attività facendo clic sul pulsante in basso."),
        "common_message_noTasksTitle":
            MessageLookupByLibrary.simpleMessage("Nessuna attività"),
        "common_message_noUserTasksMessage": MessageLookupByLibrary.simpleMessage(
            "Al momento non hai nessun compito in questo apiario. Puoi andare al tuo apiario o all\'alveare e fare clic sulla scheda delle attività per aggiungere attività."),
        "common_nav_tasksTitle":
            MessageLookupByLibrary.simpleMessage("Compiti"),
        "common_snack_commonFailure": m17,
        "common_snack_dismiss":
            MessageLookupByLibrary.simpleMessage("Licenziare"),
        "common_snack_taskCreated":
            MessageLookupByLibrary.simpleMessage("Task creato"),
        "common_snack_taskDeleted":
            MessageLookupByLibrary.simpleMessage("Attività eliminata"),
        "common_snack_taskSaved":
            MessageLookupByLibrary.simpleMessage("Attività salvata"),
        "common_table_contact":
            MessageLookupByLibrary.simpleMessage("Contatti"),
        "common_table_controls": MessageLookupByLibrary.simpleMessage("CTRL"),
        "common_table_device":
            MessageLookupByLibrary.simpleMessage("Dispositivo"),
        "common_table_error": MessageLookupByLibrary.simpleMessage("ERRARE."),
        "common_table_errors": MessageLookupByLibrary.simpleMessage("Errori"),
        "common_table_hiveId": MessageLookupByLibrary.simpleMessage("HiveID"),
        "common_table_registered":
            MessageLookupByLibrary.simpleMessage("Registrato"),
        "common_table_treatment": MessageLookupByLibrary.simpleMessage("Treat"),
        "common_text_boolean": m18,
        "common_text_failed": MessageLookupByLibrary.simpleMessage("Fallito!"),
        "common_text_initialize":
            MessageLookupByLibrary.simpleMessage("Inizializzazione..."),
        "common_text_loading":
            MessageLookupByLibrary.simpleMessage("Caricamento..."),
        "common_text_missingData":
            MessageLookupByLibrary.simpleMessage("Nessun dato sensore..."),
        "common_text_severity": m19,
        "common_text_weather": MessageLookupByLibrary.simpleMessage("Meteo"),
        "common_title_pages": m20,
        "common_units_temperatureValue": m21,
        "common_units_weightValue": m22,
        "common_word_Amt": MessageLookupByLibrary.simpleMessage("TAPPETINO"),
        "common_word_activity":
            MessageLookupByLibrary.simpleMessage("Attività"),
        "common_word_allTime":
            MessageLookupByLibrary.simpleMessage("Tutto il tempo"),
        "common_word_amount": MessageLookupByLibrary.simpleMessage("Importo"),
        "common_word_apiary": MessageLookupByLibrary.simpleMessage("apiario"),
        "common_word_average": MessageLookupByLibrary.simpleMessage("Media"),
        "common_word_bees": MessageLookupByLibrary.simpleMessage("Api"),
        "common_word_cancel": MessageLookupByLibrary.simpleMessage("Cancella"),
        "common_word_caught": MessageLookupByLibrary.simpleMessage("Catturato"),
        "common_word_colonies": MessageLookupByLibrary.simpleMessage("colonie"),
        "common_word_colour": MessageLookupByLibrary.simpleMessage("Colore"),
        "common_word_commands": MessageLookupByLibrary.simpleMessage("Comandi"),
        "common_word_confirm":
            MessageLookupByLibrary.simpleMessage("Confermare"),
        "common_word_connection":
            MessageLookupByLibrary.simpleMessage("Connessione"),
        "common_word_controls": MessageLookupByLibrary.simpleMessage("Comandi"),
        "common_word_date": MessageLookupByLibrary.simpleMessage("Data"),
        "common_word_day": m23,
        "common_word_defence": MessageLookupByLibrary.simpleMessage("Difesa"),
        "common_word_disconnected":
            MessageLookupByLibrary.simpleMessage("Disconnesso"),
        "common_word_displayName":
            MessageLookupByLibrary.simpleMessage("Nome del display"),
        "common_word_email": MessageLookupByLibrary.simpleMessage("E-mail"),
        "common_word_empty": MessageLookupByLibrary.simpleMessage("Vuoto"),
        "common_word_english": MessageLookupByLibrary.simpleMessage("Inglese"),
        "common_word_error": MessageLookupByLibrary.simpleMessage("Errore"),
        "common_word_french": MessageLookupByLibrary.simpleMessage("Francese"),
        "common_word_german": MessageLookupByLibrary.simpleMessage("Tedesco"),
        "common_word_hardware":
            MessageLookupByLibrary.simpleMessage("Hardware"),
        "common_word_harvests":
            MessageLookupByLibrary.simpleMessage("Vendemmie"),
        "common_word_heartbeat":
            MessageLookupByLibrary.simpleMessage("HeartBeat"),
        "common_word_high": MessageLookupByLibrary.simpleMessage("ALTO"),
        "common_word_hive": MessageLookupByLibrary.simpleMessage("Alveare"),
        "common_word_honey": MessageLookupByLibrary.simpleMessage("Miele"),
        "common_word_hour": m24,
        "common_word_humidity": MessageLookupByLibrary.simpleMessage("Umidità"),
        "common_word_id": MessageLookupByLibrary.simpleMessage("ID"),
        "common_word_ideal":
            MessageLookupByLibrary.simpleMessage("covata ideale"),
        "common_word_italian": MessageLookupByLibrary.simpleMessage("Italiano"),
        "common_word_lastSeason":
            MessageLookupByLibrary.simpleMessage("La scorsa stagione"),
        "common_word_low": MessageLookupByLibrary.simpleMessage("BASSO"),
        "common_word_medium": MessageLookupByLibrary.simpleMessage("METÀ"),
        "common_word_missing": MessageLookupByLibrary.simpleMessage("perso"),
        "common_word_mood": MessageLookupByLibrary.simpleMessage("Mood"),
        "common_word_notesSection":
            MessageLookupByLibrary.simpleMessage("NOTE"),
        "common_word_origin": MessageLookupByLibrary.simpleMessage("Origine"),
        "common_word_password":
            MessageLookupByLibrary.simpleMessage("Password"),
        "common_word_pattern": MessageLookupByLibrary.simpleMessage("Motivo"),
        "common_word_queen": MessageLookupByLibrary.simpleMessage("Regina"),
        "common_word_queens": MessageLookupByLibrary.simpleMessage("Regine"),
        "common_word_read": MessageLookupByLibrary.simpleMessage("Leggi"),
        "common_word_selected":
            MessageLookupByLibrary.simpleMessage("Selezionato"),
        "common_word_sort": MessageLookupByLibrary.simpleMessage("Ordina"),
        "common_word_statusSection":
            MessageLookupByLibrary.simpleMessage("STATO"),
        "common_word_storage":
            MessageLookupByLibrary.simpleMessage("Conservazione"),
        "common_word_strength": MessageLookupByLibrary.simpleMessage("Forza"),
        "common_word_temperature":
            MessageLookupByLibrary.simpleMessage("Temperatura"),
        "common_word_theme": MessageLookupByLibrary.simpleMessage("Tema"),
        "common_word_thisSeason":
            MessageLookupByLibrary.simpleMessage("Questa stagione"),
        "common_word_timestamp":
            MessageLookupByLibrary.simpleMessage("Timestamp"),
        "common_word_total": MessageLookupByLibrary.simpleMessage("Totale"),
        "common_word_totalWeight":
            MessageLookupByLibrary.simpleMessage("Totale (peso)"),
        "common_word_treatment":
            MessageLookupByLibrary.simpleMessage("Trattamento"),
        "common_word_type": MessageLookupByLibrary.simpleMessage("Tipo"),
        "common_word_varroa": MessageLookupByLibrary.simpleMessage("Varroa"),
        "common_word_weight": MessageLookupByLibrary.simpleMessage("Peso"),
        "commone_word_software":
            MessageLookupByLibrary.simpleMessage("Software"),
        "connect_button_connect":
            MessageLookupByLibrary.simpleMessage("CONNETTERSI"),
        "connect_button_reinitialize":
            MessageLookupByLibrary.simpleMessage("REINIZIALIZZARE"),
        "connect_button_scan":
            MessageLookupByLibrary.simpleMessage("SCANSIONE"),
        "connect_card_bluetoothErrorMessage": MessageLookupByLibrary.simpleMessage(
            "Si è verificato un errore durante la connessione con Bluetooth. Verifica che il Bluetooth sia acceso e riprova."),
        "connect_card_bluetoothErrorTitle":
            MessageLookupByLibrary.simpleMessage("Errore Bluetooth"),
        "connect_card_debugErrorTitle":
            MessageLookupByLibrary.simpleMessage("Errore di debug"),
        "connect_card_failedDownload": MessageLookupByLibrary.simpleMessage(
            "A volte durante la connessione, non tutti i file vengono scaricati correttamente. Controlla l\'elenco riportato di seguito e riprova tutti i file che non sono stati caricati. Se non riesci a scaricare i file, spegni ApiBrain e attendi 10 prima di resettare e riprovare."),
        "connect_card_initialText": MessageLookupByLibrary.simpleMessage(
            "Fare clic sul pulsante per avviare la scansione con Bluetooth per qualsiasi hardware Vatorex nelle vicinanze. Assicurati che il Bluetooth sia abilitato sul telefono e sull\'hardware."),
        "connect_card_scanTitle":
            MessageLookupByLibrary.simpleMessage("Scansione con Bluetooth"),
        "connect_card_timeoutMessage": MessageLookupByLibrary.simpleMessage(
            "Timeout connessione, assicurati che il tuo dispositivo sia connesso."),
        "connect_card_turnOnBluetoothText": MessageLookupByLibrary.simpleMessage(
            "Apibrain non è connesso. controlla che il tuo hardware sia acceso e che la luce del Bluetooth sia attiva"),
        "connect_card_turnOnBluetoothTitle":
            MessageLookupByLibrary.simpleMessage("Apibrain non collegato"),
        "connect_debug_getConfigTitle":
            MessageLookupByLibrary.simpleMessage("Ottieni Konfig"),
        "connect_debug_getInfoTitle":
            MessageLookupByLibrary.simpleMessage("Ottieni informazioni"),
        "connect_debug_getStateTitle":
            MessageLookupByLibrary.simpleMessage("Ottieni stato"),
        "connect_error_connectBluetooth": MessageLookupByLibrary.simpleMessage(
            "Connettiti al tuo dispositivo tramite bluetooth."),
        "connect_loading_downloadingFiles":
            MessageLookupByLibrary.simpleMessage(
                "Caricamento di file dall\'hardware connesso in corso..."),
        "connect_message_commLineSuccess":
            MessageLookupByLibrary.simpleMessage("Successo CommLine"),
        "connect_message_downloadSuccess":
            MessageLookupByLibrary.simpleMessage("Successo"),
        "connect_message_initializeSuccess":
            MessageLookupByLibrary.simpleMessage("Inizializzazione riuscita"),
        "connect_message_missingCommLine":
            MessageLookupByLibrary.simpleMessage("CommLine mancante"),
        "connect_message_notInitialized":
            MessageLookupByLibrary.simpleMessage("Non inizializzato"),
        "connect_page_title":
            MessageLookupByLibrary.simpleMessage("Pagina Connetti"),
        "connect_snack_error":
            MessageLookupByLibrary.simpleMessage("Errore di connessione."),
        "connect_text_gettingCommands":
            MessageLookupByLibrary.simpleMessage("Ottenere i comandi iniziali"),
        "connect_text_notRegistered":
            MessageLookupByLibrary.simpleMessage("Non registrato"),
        "connect_word_scanningDevices":
            MessageLookupByLibrary.simpleMessage("Dispositivi di scansione"),
        "database_error_databaseFailure": m25,
        "database_error_valueFailure": m26,
        "database_message_saveSuccess":
            MessageLookupByLibrary.simpleMessage("Salvato."),
        "database_message_updateSuccess":
            MessageLookupByLibrary.simpleMessage("Aggiornato."),
        "datatbase_card_errorTitle":
            MessageLookupByLibrary.simpleMessage("Guasto del database"),
        "feeding_page_probiotics":
            MessageLookupByLibrary.simpleMessage("PROBIOTICI"),
        "feeding_page_withProbiotics":
            MessageLookupByLibrary.simpleMessage("Con probiotici"),
        "feeding_page_withoutProbiotics":
            MessageLookupByLibrary.simpleMessage("Senza probiotici"),
        "hardware_button_createHardware":
            MessageLookupByLibrary.simpleMessage("CREARE HARDWARE"),
        "hardware_button_nfcSearch":
            MessageLookupByLibrary.simpleMessage("SCANSIONE CON NFC"),
        "hardware_button_registerHardware":
            MessageLookupByLibrary.simpleMessage("REGISTRARE L\'HARDWARE"),
        "hardware_button_setLocation": m27,
        "hardware_button_testConnection":
            MessageLookupByLibrary.simpleMessage("Connessione di prova"),
        "hardware_button_testSetup":
            MessageLookupByLibrary.simpleMessage("Configurazione test"),
        "hardware_card_createHardwareMessage": MessageLookupByLibrary.simpleMessage(
            "Il documento per questo hardware non è stato trovato nel nostro sistema. Questo probabilmente significa che non si è ancora connesso tramite IoT. Puoi creare il documento utilizzando il pulsante qui sotto e verrà aggiornato durante il prossimo ciclo IoT."),
        "hardware_card_errorTitle":
            MessageLookupByLibrary.simpleMessage("Guasto hardware"),
        "hardware_card_missingHardwareData": MessageLookupByLibrary.simpleMessage(
            "Il documento che stai cercando non si trova nell\'hardware connesso o nel nostro database. Spegni e riaccendi il dispositivo e riprova."),
        "hardware_card_noHardwareMessage": MessageLookupByLibrary.simpleMessage(
            "Non è presente alcun hardware Vatorex collegato a questo apiario. Se disponi di hardware Vatorex e desideri collegarlo al tuo account, scarica l\'app Hive Connector, registra il tuo hardware e imposta la posizione. \n\nSe pensi che ci sia un errore prova ad aggiornare la pagina dal menu in alto a destra."),
        "hardware_card_noHardwareTitle":
            MessageLookupByLibrary.simpleMessage("Hardware non trovato."),
        "hardware_card_unregisteredTitle":
            MessageLookupByLibrary.simpleMessage("Hardware non registrato"),
        "hardware_chartTitle_sinceSync":
            MessageLookupByLibrary.simpleMessage("da quando Sync"),
        "hardware_dialog_missingLocation": MessageLookupByLibrary.simpleMessage(
            "Non hai nessun posto dove aggiungere un hardware."),
        "hardware_dialog_setLocationHiveManager":
            MessageLookupByLibrary.simpleMessage(
                "Se utilizzi l\'app ‹HiveManager›, sarai in grado di vedere tutte le informazioni sui sensori dal tuo Apiario o Alveare."),
        "hardware_dialog_setLocationInstruction":
            MessageLookupByLibrary.simpleMessage(
                "Seleziona dall\'elenco qui sotto dove hai attualmente questo hardware."),
        "hardware_dialog_setLocationTitle":
            MessageLookupByLibrary.simpleMessage("Impostare la posizione"),
        "hardware_error_auxiliaryFailure": m28,
        "hardware_error_connectFailure": m29,
        "hardware_error_hardwareError": m30,
        "hardware_error_hardwareFailure": m31,
        "hardware_error_valueFailure": m32,
        "hardware_form_selectLocation":
            MessageLookupByLibrary.simpleMessage("Seleziona posizione"),
        "hardware_loading_disconnected": MessageLookupByLibrary.simpleMessage(
            "L\'hardware è stato scollegato..."),
        "hardware_menu_byApiary":
            MessageLookupByLibrary.simpleMessage("Da Apiary"),
        "hardware_menu_byHive": MessageLookupByLibrary.simpleMessage("Da Hive"),
        "hardware_menu_byType":
            MessageLookupByLibrary.simpleMessage("Per hardware"),
        "hardware_menu_changeLocation": m33,
        "hardware_menu_debug": MessageLookupByLibrary.simpleMessage("Debug"),
        "hardware_menu_recentlyRegistered":
            MessageLookupByLibrary.simpleMessage("Registrato di recente"),
        "hardware_menu_recentlySynced":
            MessageLookupByLibrary.simpleMessage("Sincronizzato di recente"),
        "hardware_message_cardInvalid": MessageLookupByLibrary.simpleMessage(
            "Qualcosa è andato storto durante il recupero del tuo documento.  Siamo spiacenti per il problema, per favore contatta il supporto per questo errore."),
        "hardware_message_cardValueError": m34,
        "hardware_message_missingHardware": MessageLookupByLibrary.simpleMessage(
            "Sembra che tu non abbia collegato/registrato alcun hardware.  Per favore, collega il tuo primo dispositivo."),
        "hardware_message_waitingForSync": MessageLookupByLibrary.simpleMessage(
            "In attesa della prima sincronizzazione..."),
        "hardware_message_waitingForTreatment":
            MessageLookupByLibrary.simpleMessage(
                "In attesa del trattamento..."),
        "hardware_test_getConfig":
            MessageLookupByLibrary.simpleMessage("Ottenere le configurazioni."),
        "hardware_test_needLog":
            MessageLookupByLibrary.simpleMessage("Controllo dei registri."),
        "hardware_test_scanAllLight":
            MessageLookupByLibrary.simpleMessage("Scansione per le modifiche."),
        "hardware_test_syncIot":
            MessageLookupByLibrary.simpleMessage("Sync_IoT"),
        "hardware_test_testIot":
            MessageLookupByLibrary.simpleMessage("Test della connessione IoT."),
        "hardware_text_hardwareType": m35,
        "hardware_text_lastSync":
            MessageLookupByLibrary.simpleMessage("Ultimo sync"),
        "hardware_text_lastTreatment":
            MessageLookupByLibrary.simpleMessage("dal trattamento"),
        "hardware_title_noHardware":
            MessageLookupByLibrary.simpleMessage("Nessun hardware registrato"),
        "harvest_page_Honey": MessageLookupByLibrary.simpleMessage("Miele"),
        "harvest_page_boxes": MessageLookupByLibrary.simpleMessage("Scatole"),
        "harvest_page_frames": MessageLookupByLibrary.simpleMessage("Telai"),
        "hive_button_addFeeding":
            MessageLookupByLibrary.simpleMessage("Aggiungi alimentazione"),
        "hive_button_addHarvest":
            MessageLookupByLibrary.simpleMessage("Aggiungi Harvest"),
        "hive_button_addInspection":
            MessageLookupByLibrary.simpleMessage("AGGIUNGI ISPEZIONE"),
        "hive_button_addQueen":
            MessageLookupByLibrary.simpleMessage("AGGIUNGI REGINA"),
        "hive_error_hiveFailure": m36,
        "hive_error_missingHiveTitle":
            MessageLookupByLibrary.simpleMessage("Documento Hive mancante"),
        "hive_error_noColonyMessage":
            MessageLookupByLibrary.simpleMessage("Alveare vuoto"),
        "hive_error_noQueenMessage":
            MessageLookupByLibrary.simpleMessage("Queenless"),
        "hive_form_beeRaceHelper": MessageLookupByLibrary.simpleMessage(
            "Seleziona la sottospecie della tua regina."),
        "hive_form_beeRaceTitle":
            MessageLookupByLibrary.simpleMessage("Bee Race"),
        "hive_form_categoryHelper": MessageLookupByLibrary.simpleMessage(
            "Seleziona come appaiono le caselle."),
        "hive_form_colonyBought":
            MessageLookupByLibrary.simpleMessage("Acquistato"),
        "hive_form_colonyTypeHelper": MessageLookupByLibrary.simpleMessage(
            "Seleziona il tipo di colonia."),
        "hive_form_colonyTypeTitle":
            MessageLookupByLibrary.simpleMessage("Tipo colonia"),
        "hive_form_currentApiaryTitle":
            MessageLookupByLibrary.simpleMessage("Apiario attuale"),
        "hive_form_directionHelper": MessageLookupByLibrary.simpleMessage(
            "Seleziona in che direzione si impilano le scatole."),
        "hive_form_editColonyTitle":
            MessageLookupByLibrary.simpleMessage("Modifica colonia"),
        "hive_form_editHiveTitle":
            MessageLookupByLibrary.simpleMessage("Modifica alveare"),
        "hive_form_editQueenTitle":
            MessageLookupByLibrary.simpleMessage("Modifica Queen"),
        "hive_form_framesHelper": MessageLookupByLibrary.simpleMessage(
            "Seleziona quante cornici ci sono in una casella."),
        "hive_form_hiveName": MessageLookupByLibrary.simpleMessage("Nome Hive"),
        "hive_form_hiveNameHelper": MessageLookupByLibrary.simpleMessage(
            "Seleziona un nome per l\'alveare. (max 24 caratteri)"),
        "hive_form_hivePictureHelper": MessageLookupByLibrary.simpleMessage(
            "Seleziona un\'immagine da usare per il tuo alveare."),
        "hive_form_hiveTypeHelper": MessageLookupByLibrary.simpleMessage(
            "Cerca nell\'elenco dei tipi di alveari o usa modifica per selezionare per categoria."),
        "hive_form_hiveTypeTitle":
            MessageLookupByLibrary.simpleMessage("Tipo alveare"),
        "hive_form_moveHiveTitle":
            MessageLookupByLibrary.simpleMessage("Spostare l\'alveare"),
        "hive_form_newColonyTitle":
            MessageLookupByLibrary.simpleMessage("Nuova colonia"),
        "hive_form_newHiveTitle":
            MessageLookupByLibrary.simpleMessage("Nuovo alveare"),
        "hive_form_newQueenTitle":
            MessageLookupByLibrary.simpleMessage("Nuova regina"),
        "hive_form_queenAlive": MessageLookupByLibrary.simpleMessage("Alive"),
        "hive_form_queenClipped":
            MessageLookupByLibrary.simpleMessage("Ritagliato"),
        "hive_form_queenColorHelper": MessageLookupByLibrary.simpleMessage(
            "Di che colore è contrassegnata la regina."),
        "hive_form_queenColorTitle":
            MessageLookupByLibrary.simpleMessage("Colore regina"),
        "hive_form_queenMated":
            MessageLookupByLibrary.simpleMessage("Accoppiato"),
        "hive_form_queenNameHelper": MessageLookupByLibrary.simpleMessage(
            "Seleziona un nome per la tua regina."),
        "hive_form_queenNameTitle":
            MessageLookupByLibrary.simpleMessage("Nome della regina"),
        "hive_form_queenOriginHelper": MessageLookupByLibrary.simpleMessage(
            "Seleziona da dove viene la regina."),
        "hive_form_queenOriginTitle":
            MessageLookupByLibrary.simpleMessage("Regina Origin"),
        "hive_form_recentlySwarmedHelper": MessageLookupByLibrary.simpleMessage(
            "Seleziona gli alveari che si sono sciamati negli ultimi giorni."),
        "hive_form_recentlySwarmedTitle":
            MessageLookupByLibrary.simpleMessage("Recentemente sciamato"),
        "hive_form_serialNumberHelper": MessageLookupByLibrary.simpleMessage(
            "È possibile inserire un numero di serie o un ID."),
        "hive_form_serialNumberTitle":
            MessageLookupByLibrary.simpleMessage("Numero di serie (opzionale)"),
        "hive_form_toApiaryHelper": MessageLookupByLibrary.simpleMessage(
            "Seleziona dall\'elenco in quale apiario desideri spostare questo alveare."),
        "hive_form_toApiaryTitle":
            MessageLookupByLibrary.simpleMessage("A Apiary"),
        "hive_form_typeHelper": MessageLookupByLibrary.simpleMessage(
            "Seleziona il tipo di alveare."),
        "hive_form_unmarked":
            MessageLookupByLibrary.simpleMessage("(Unmarked)"),
        "hive_form_wildSwarmSelect":
            MessageLookupByLibrary.simpleMessage("(Wild Swarm)"),
        "hive_menu_addColony":
            MessageLookupByLibrary.simpleMessage("Aggiungi Colony"),
        "hive_menu_addFeeding":
            MessageLookupByLibrary.simpleMessage("Aggiungi alimentazione"),
        "hive_menu_addHarvest":
            MessageLookupByLibrary.simpleMessage("Aggiungi Harvest"),
        "hive_menu_addInspection":
            MessageLookupByLibrary.simpleMessage("Aggiungi ispezione"),
        "hive_menu_addLog":
            MessageLookupByLibrary.simpleMessage("Aggiungi registro"),
        "hive_menu_addTask":
            MessageLookupByLibrary.simpleMessage("Aggiungi attività"),
        "hive_menu_edit":
            MessageLookupByLibrary.simpleMessage("Modifica alveare"),
        "hive_menu_editColony":
            MessageLookupByLibrary.simpleMessage("Modifica colonia"),
        "hive_menu_moveHive":
            MessageLookupByLibrary.simpleMessage("Spostare l\'alveare"),
        "hive_menu_refresh": MessageLookupByLibrary.simpleMessage("Aggiorna"),
        "hive_message_missingColonyMessage": MessageLookupByLibrary.simpleMessage(
            "Questo alveare non ha alcuna colonia attiva all\'interno. Per iniziare ad aggiungere azioni e tracciare le regine, aggiungi una colonia dal pulsante Azione rapida o dal menu in alto."),
        "hive_message_missingColonyTitle":
            MessageLookupByLibrary.simpleMessage("Colonia mancante"),
        "hive_message_missingQueens":
            MessageLookupByLibrary.simpleMessage("Nessuna regina viva."),
        "hive_snack_colonyAdded":
            MessageLookupByLibrary.simpleMessage("Colony aggiunto"),
        "hive_snack_colonyRemoved":
            MessageLookupByLibrary.simpleMessage("Colony rimosso."),
        "hive_snack_colonySaved":
            MessageLookupByLibrary.simpleMessage("Colonia salvata"),
        "hive_snack_hiveCreated":
            MessageLookupByLibrary.simpleMessage("Hive creato"),
        "hive_snack_hiveFailure": m37,
        "hive_snack_hiveMoved":
            MessageLookupByLibrary.simpleMessage("Hive si è trasferito."),
        "hive_snack_hiveRemoved":
            MessageLookupByLibrary.simpleMessage("Hive cancellato."),
        "hive_snack_hiveSaved":
            MessageLookupByLibrary.simpleMessage("Hive salvato"),
        "hive_snack_queenAdded":
            MessageLookupByLibrary.simpleMessage("Aggiunta la regina"),
        "hive_snack_queenRemoved":
            MessageLookupByLibrary.simpleMessage("Regina cancellata."),
        "hive_snack_queenSaved":
            MessageLookupByLibrary.simpleMessage("Regina salvata"),
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
            MessageLookupByLibrary.simpleMessage("< Superceded >"),
        "hive_title_hiveDetails":
            MessageLookupByLibrary.simpleMessage("Dettagli dell\'alveare"),
        "hive_word_category": MessageLookupByLibrary.simpleMessage("Categoria"),
        "hive_word_direction":
            MessageLookupByLibrary.simpleMessage("Direzione"),
        "hive_word_frameCount": m47,
        "hive_word_frames": MessageLookupByLibrary.simpleMessage("Telai"),
        "hive_word_queenless":
            MessageLookupByLibrary.simpleMessage("Queenless"),
        "hive_word_queensSection":
            MessageLookupByLibrary.simpleMessage("REGINE"),
        "hive_word_type": MessageLookupByLibrary.simpleMessage("Tipo"),
        "link_accounts_linkAppleID": MessageLookupByLibrary.simpleMessage(""),
        "link_accounts_linkEmail": MessageLookupByLibrary.simpleMessage(""),
        "link_accounts_linkFacebook": MessageLookupByLibrary.simpleMessage(""),
        "link_accounts_linkGoogle": MessageLookupByLibrary.simpleMessage(""),
        "log_text_robbing": MessageLookupByLibrary.simpleMessage("Derubare"),
        "log_text_varroaCount":
            MessageLookupByLibrary.simpleMessage("Contea di Varroa"),
        "logs_button_addLog":
            MessageLookupByLibrary.simpleMessage("AGGIUNGI REGISTRO"),
        "logs_button_addSample":
            MessageLookupByLibrary.simpleMessage("AGGIUNGI CAMPIONE"),
        "logs_error_logFailure": m48,
        "logs_error_logsFailureTitle":
            MessageLookupByLibrary.simpleMessage("Errore nei log"),
        "logs_error_noLogsMessage": MessageLookupByLibrary.simpleMessage(
            "Non ci sono ancora registri. Puoi aggiungere il tuo primo registro facendo clic sul pulsante in basso. Se pensi che ci sia un errore prova ad aggiornare la pagina dal menu in alto a destra."),
        "logs_error_noLogsTitle":
            MessageLookupByLibrary.simpleMessage("Nessun log"),
        "logs_form_batchNoTitle":
            MessageLookupByLibrary.simpleMessage("Lotto n. (opzionale)"),
        "logs_form_batchnoHelper": MessageLookupByLibrary.simpleMessage(
            "Immettere il numero di lotto medico del trattamento."),
        "logs_form_concentrationHelper": MessageLookupByLibrary.simpleMessage(
            "Inserisci quanto è forte un trattamento in percentuale."),
        "logs_form_concentrationTitle": MessageLookupByLibrary.simpleMessage(
            "Concentrazione (facoltativa)"),
        "logs_form_dateInsertedHelper": MessageLookupByLibrary.simpleMessage(
            "Seleziona la data in cui è stata inserita la bacheca adesiva."),
        "logs_form_dateInsertedTitle":
            MessageLookupByLibrary.simpleMessage("Data di inserimento"),
        "logs_form_editLogTitle":
            MessageLookupByLibrary.simpleMessage("Modifica registro"),
        "logs_form_humidityHelper": MessageLookupByLibrary.simpleMessage(
            "Facoltativamente, registra l\'umidità del giorno."),
        "logs_form_humidityTitle":
            MessageLookupByLibrary.simpleMessage("Umidità (opzionale)"),
        "logs_form_infectionType": m49,
        "logs_form_logTypeHelper": MessageLookupByLibrary.simpleMessage(
            "Seleziona un tipo di registro"),
        "logs_form_logTypeTitle":
            MessageLookupByLibrary.simpleMessage("Tipo di evento"),
        "logs_form_missingLogType": MessageLookupByLibrary.simpleMessage(
            "Seleziona un tipo di registro"),
        "logs_form_newLogTitle":
            MessageLookupByLibrary.simpleMessage("Nuovo registro"),
        "logs_form_robbingSeverityHelper": MessageLookupByLibrary.simpleMessage(
            "Seleziona quanto è grave la rapina."),
        "logs_form_temperatureHelper": MessageLookupByLibrary.simpleMessage(
            "Facoltativamente registrare la temperatura del giorno."),
        "logs_form_temperatureTitle":
            MessageLookupByLibrary.simpleMessage("Temperatura (opzionale)"),
        "logs_form_treatmentAmountHelper": MessageLookupByLibrary.simpleMessage(
            "Inserisci la quantità di trattamento con le unità."),
        "logs_form_treatmentAmountTitle":
            MessageLookupByLibrary.simpleMessage("Importo (facoltativo)"),
        "logs_form_treatmentApplicationHelper":
            MessageLookupByLibrary.simpleMessage(
                "Seleziona come applicare il trattamento."),
        "logs_form_treatmentApplicationTitle":
            MessageLookupByLibrary.simpleMessage("Applicazione"),
        "logs_form_treatmentMethodHelper": MessageLookupByLibrary.simpleMessage(
            "Seleziona il tipo di trattamento che è stato utilizzato."),
        "logs_form_treatmentMethodTitle":
            MessageLookupByLibrary.simpleMessage("Metodo"),
        "logs_form_varroaCountHelper": MessageLookupByLibrary.simpleMessage(
            "Inserisci il numero totale di varroa sulla lavagna."),
        "logs_form_varroaCountTitle":
            MessageLookupByLibrary.simpleMessage("Contea di Varroa"),
        "logs_form_varroaMethodHelper": MessageLookupByLibrary.simpleMessage(
            "Seleziona il metodo di conteggio della varroa."),
        "logs_form_varroaMethodTitile":
            MessageLookupByLibrary.simpleMessage("Metodo"),
        "logs_form_weatherHelper": MessageLookupByLibrary.simpleMessage(
            "Seleziona gli eventi meteorologici che desideri registrare. Tieni premuto per vedere il nome del tempo."),
        "logs_form_weatherTitle":
            MessageLookupByLibrary.simpleMessage("Tipo (i) meteo"),
        "logs_message_apiaryCreated": m50,
        "logs_message_apiaryDeleted": m51,
        "logs_message_caught":
            MessageLookupByLibrary.simpleMessage("e catturati"),
        "logs_message_colonyCreated":
            MessageLookupByLibrary.simpleMessage("Colonia creata"),
        "logs_message_colonyDeleted":
            MessageLookupByLibrary.simpleMessage("Colony cancellato"),
        "logs_message_colonyDied":
            MessageLookupByLibrary.simpleMessage("Colony è morto"),
        "logs_message_colonyMoved":
            MessageLookupByLibrary.simpleMessage("Colony spostato"),
        "logs_message_feedingCreated":
            MessageLookupByLibrary.simpleMessage("Alimentazione creata"),
        "logs_message_feedingDeleted":
            MessageLookupByLibrary.simpleMessage("Alimentazione eliminata"),
        "logs_message_hardwareRegistered":
            MessageLookupByLibrary.simpleMessage("Hardware registrato"),
        "logs_message_harvestCreated":
            MessageLookupByLibrary.simpleMessage("Vendemmia creata"),
        "logs_message_harvestDeleted":
            MessageLookupByLibrary.simpleMessage("Vendemmia eliminata"),
        "logs_message_hiveCreated": m52,
        "logs_message_hiveDeleted": m53,
        "logs_message_hiveMoved": m54,
        "logs_message_inspectionCreated":
            MessageLookupByLibrary.simpleMessage("Ispezione creata"),
        "logs_message_inspectionDeleted":
            MessageLookupByLibrary.simpleMessage("Ispezione eliminata"),
        "logs_message_noSamples":
            MessageLookupByLibrary.simpleMessage("Nessun campione."),
        "logs_message_note":
            MessageLookupByLibrary.simpleMessage("La nota è stata creata"),
        "logs_message_queenCreated": m55,
        "logs_message_queenDeleted": m56,
        "logs_message_queenDied": m57,
        "logs_message_queenMoved": m58,
        "logs_message_queenSuperseded": m59,
        "logs_message_robbing": m60,
        "logs_message_swarmed": m61,
        "logs_message_treatment": m62,
        "logs_message_userCreated":
            MessageLookupByLibrary.simpleMessage("Creato dall\'utente"),
        "logs_message_varroaCount": m63,
        "logs_message_weather": m64,
        "logs_snack_logCreated":
            MessageLookupByLibrary.simpleMessage("Log creato"),
        "logs_snack_logFailure": m65,
        "logs_snack_logSaved":
            MessageLookupByLibrary.simpleMessage("Salvataggi log"),
        "logs_text_infection":
            MessageLookupByLibrary.simpleMessage("Infezione"),
        "logs_text_logType": m66,
        "logs_text_logs": MessageLookupByLibrary.simpleMessage("Tronchi"),
        "logs_text_logsSection":
            MessageLookupByLibrary.simpleMessage("TRONCHI"),
        "logs_text_samples": MessageLookupByLibrary.simpleMessage("Campioni"),
        "logs_text_treatment":
            MessageLookupByLibrary.simpleMessage("Trattamento"),
        "logs_text_treatmentApplication": m67,
        "logs_text_treatmentMethod": m68,
        "logs_text_varroaMethod": m69,
        "logs_text_weatherType": m70,
        "message_noStatsAvailable": MessageLookupByLibrary.simpleMessage(
            "Non ci sono statistiche per questa stagione"),
        "new_apiary_apiary_name":
            MessageLookupByLibrary.simpleMessage("Nome apiario"),
        "new_apiary_apiary_serial":
            MessageLookupByLibrary.simpleMessage("Numero di serie (opzionale)"),
        "new_apiary_location":
            MessageLookupByLibrary.simpleMessage("Posizione"),
        "no_weather_data_message": MessageLookupByLibrary.simpleMessage(
            "Impossibile ottenere i dati meteorologici. Assicurati che la connessione internet sia disponibile"),
        "no_weather_data_title": MessageLookupByLibrary.simpleMessage(
            "Previsioni meteo non disponibili"),
        "pushNotification_error_pushNotificationFailure": m71,
        "seach_message_scanning": MessageLookupByLibrary.simpleMessage(
            "Scansione... Si prega di posizionare il telefono vicino all\'hardware fino a quando la connessione è stata effettuata."),
        "search_button_scan": MessageLookupByLibrary.simpleMessage("SCANSIONE"),
        "search_card_errorTitle":
            MessageLookupByLibrary.simpleMessage("Fallimento NFC"),
        "search_card_scanTitle":
            MessageLookupByLibrary.simpleMessage("Scansione NFC"),
        "search_error_searchFailure": m72,
        "search_message_foundTag": m73,
        "search_message_startScan": MessageLookupByLibrary.simpleMessage(
            "Fare clic sul pulsante per inizializzare la scansione NFC.  Dovrai posizionare il telefono vicino all\'hardware per leggere il tag NFC."),
        "search_title_tagFound":
            MessageLookupByLibrary.simpleMessage("Trovato!"),
        "title_noStatsAvailable": MessageLookupByLibrary.simpleMessage(
            "Nessuna statistica disponibile"),
        "weather_tab_minMax": MessageLookupByLibrary.simpleMessage("Min | Max"),
        "weather_tab_rain": MessageLookupByLibrary.simpleMessage("Pioggia")
      };
}
