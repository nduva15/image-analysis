// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class Localize {
  Localize();

  static Localize? _current;

  static Localize get current {
    assert(_current != null,
        'No instance of Localize was loaded. Try to initialize the Localize delegate before accessing Localize.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<Localize> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = Localize();
      Localize._current = instance;

      return instance;
    });
  }

  static Localize of(BuildContext context) {
    final instance = Localize.maybeOf(context);
    assert(instance != null,
        'No instance of Localize present in the widget tree. Did you add Localize.delegate in localizationsDelegates?');
    return instance!;
  }

  static Localize? maybeOf(BuildContext context) {
    return Localizations.of<Localize>(context, Localize);
  }

  /// `{type, select, common_error_serverError{Something went wrong while we were talking with our server. Please try again and if the problem percists, reach out to us for support.} common_error_insufficientPermission{You have insufficient permission to access this document. Please check you with your admin for adding permissions.} common_error_emulatorError{Emulator Error.} actions_error_noInspections{You don’t have any inspections for this hive. You can add your first inspection by clicking the button below. If you think there is an error then try refresh the page from the menu in top right.} actions_error_invalidInspectionDocument{The inspection document you are looking for is invalid or corrupt.  Please note the ID in the top right and contact us for support.} actions_error_missingInspectionDocument{The inspection document you are looking for is missing from our database.  Please note the ID in the top right and contact us for support.} actions_error_noFeedings{You don’t have any feedings for this hive. You can add your first feeding by clicking the button below. If you think there is an error then try refresh the page from the menu in top right.} actions_error_invalidFeedingDocument{The feeding document you are looking for is invalid or corrupt.  Please note the ID in the top right and contact us for support.} actions_error_missingFeedingDocument{The feeding document you are looking for is missing from our database.  Please note the ID in the top right and contact us for support.} actions_error_noHarvest{You don’t have any harvest for this hive. You can add your first harvest by clicking the button below. If you think there is an error then try refresh the page from the menu in top right.} actions_error_invalidHarvestDocument{The harvest document you are looking for is invalid or corrupt.  Please note the ID in the top right and contact us for support.} actions_error_missingHarvestDocument{The harvest document you are looking for is missing from our database.  Please note the ID in the top right and contact us for support.} other{Unknown}}`
  String actions_error_actionFailure(Object type) {
    return Intl.select(
      type,
      {
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
      },
      name: 'actions_error_actionFailure',
      desc: '',
      args: [type],
    );
  }

  /// `Feeding Failure`
  String get actions_error_feedingFailureTitle {
    return Intl.message(
      'Feeding Failure',
      name: 'actions_error_feedingFailureTitle',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong while getting the harvests for this hive.  Please check the error below and if the problem continues, contact us for support.`
  String get actions_error_harvestFailureMessage {
    return Intl.message(
      'Something went wrong while getting the harvests for this hive.  Please check the error below and if the problem continues, contact us for support.',
      name: 'actions_error_harvestFailureMessage',
      desc: '',
      args: [],
    );
  }

  /// `Harvest Failure`
  String get actions_error_harvestFailureTitle {
    return Intl.message(
      'Harvest Failure',
      name: 'actions_error_harvestFailureTitle',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong while getting the inspections for this hive.  Please check the error below and if the problem continues, contact us for support.`
  String get actions_error_inspectionFailureMessage {
    return Intl.message(
      'Something went wrong while getting the inspections for this hive.  Please check the error below and if the problem continues, contact us for support.',
      name: 'actions_error_inspectionFailureMessage',
      desc: '',
      args: [],
    );
  }

  /// `Inspection Failure`
  String get actions_error_inspectionFailureTitle {
    return Intl.message(
      'Inspection Failure',
      name: 'actions_error_inspectionFailureTitle',
      desc: '',
      args: [],
    );
  }

  /// `You don’t have any feedings for this hive yes.  Add your first feeding in order to update your hive.`
  String get actions_error_noFeedingsMessage {
    return Intl.message(
      'You don’t have any feedings for this hive yes.  Add your first feeding in order to update your hive.',
      name: 'actions_error_noFeedingsMessage',
      desc: '',
      args: [],
    );
  }

  /// `You don’t have any inspections for this hive.  Add your first inspection in order to see the hives status.`
  String get actions_error_noInspectionsMessage {
    return Intl.message(
      'You don’t have any inspections for this hive.  Add your first inspection in order to see the hives status.',
      name: 'actions_error_noInspectionsMessage',
      desc: '',
      args: [],
    );
  }

  /// `How much foraging activity is coming out the front of the hive?`
  String get actions_form_activityHelper {
    return Intl.message(
      'How much foraging activity is coming out the front of the hive?',
      name: 'actions_form_activityHelper',
      desc: '',
      args: [],
    );
  }

  /// `Activity`
  String get actions_form_activityTitle {
    return Intl.message(
      'Activity',
      name: 'actions_form_activityTitle',
      desc: '',
      args: [],
    );
  }

  /// `ADD FEEDING`
  String get actions_form_addFeeding {
    return Intl.message(
      'ADD FEEDING',
      name: 'actions_form_addFeeding',
      desc: '',
      args: [],
    );
  }

  /// `ADD HARVEST`
  String get actions_form_addHarvest {
    return Intl.message(
      'ADD HARVEST',
      name: 'actions_form_addHarvest',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get actions_form_amount {
    return Intl.message(
      'Amount',
      name: 'actions_form_amount',
      desc: '',
      args: [],
    );
  }

  /// `Amount (Optional)`
  String get actions_form_amountOptional {
    return Intl.message(
      'Amount (Optional)',
      name: 'actions_form_amountOptional',
      desc: '',
      args: [],
    );
  }

  /// `Boxes (Optional)`
  String get actions_form_boxesAmountOptional {
    return Intl.message(
      'Boxes (Optional)',
      name: 'actions_form_boxesAmountOptional',
      desc: '',
      args: [],
    );
  }

  /// `Select all pests/diseases that were found during the inspection.`
  String get actions_form_diseaseHelper {
    return Intl.message(
      'Select all pests/diseases that were found during the inspection.',
      name: 'actions_form_diseaseHelper',
      desc: '',
      args: [],
    );
  }

  /// `Pests/Diseases`
  String get actions_form_diseaseTitle {
    return Intl.message(
      'Pests/Diseases',
      name: 'actions_form_diseaseTitle',
      desc: '',
      args: [],
    );
  }

  /// `EDIT FEEDING`
  String get actions_form_editFeeding {
    return Intl.message(
      'EDIT FEEDING',
      name: 'actions_form_editFeeding',
      desc: '',
      args: [],
    );
  }

  /// `EDIT HARVEST`
  String get actions_form_editHarvest {
    return Intl.message(
      'EDIT HARVEST',
      name: 'actions_form_editHarvest',
      desc: '',
      args: [],
    );
  }

  /// `Edit Inspection`
  String get actions_form_editInspectionTitle {
    return Intl.message(
      'Edit Inspection',
      name: 'actions_form_editInspectionTitle',
      desc: '',
      args: [],
    );
  }

  /// `Edit Feeding`
  String get actions_form_edtiFeeding {
    return Intl.message(
      'Edit Feeding',
      name: 'actions_form_edtiFeeding',
      desc: '',
      args: [],
    );
  }

  /// `Enter the amount of feed given to the bees`
  String get actions_form_feedAmountHelper {
    return Intl.message(
      'Enter the amount of feed given to the bees',
      name: 'actions_form_feedAmountHelper',
      desc: '',
      args: [],
    );
  }

  /// `Select the date of the feeding`
  String get actions_form_feedingDateHelper {
    return Intl.message(
      'Select the date of the feeding',
      name: 'actions_form_feedingDateHelper',
      desc: '',
      args: [],
    );
  }

  /// `Take a picture or select multiple images to include with your feeding.`
  String get actions_form_feedingPictureHelper {
    return Intl.message(
      'Take a picture or select multiple images to include with your feeding.',
      name: 'actions_form_feedingPictureHelper',
      desc: '',
      args: [],
    );
  }

  /// `With Probiotics`
  String get actions_form_feedingProbiotics {
    return Intl.message(
      'With Probiotics',
      name: 'actions_form_feedingProbiotics',
      desc: '',
      args: [],
    );
  }

  /// `Feed Type`
  String get actions_form_feedType {
    return Intl.message(
      'Feed Type',
      name: 'actions_form_feedType',
      desc: '',
      args: [],
    );
  }

  /// `Select the type of feed given to your bees`
  String get actions_form_feedTypeHelper {
    return Intl.message(
      'Select the type of feed given to your bees',
      name: 'actions_form_feedTypeHelper',
      desc: '',
      args: [],
    );
  }

  /// `Enter the amount of frames on you setup`
  String get actions_form_framesAmountHelper {
    return Intl.message(
      'Enter the amount of frames on you setup',
      name: 'actions_form_framesAmountHelper',
      desc: '',
      args: [],
    );
  }

  /// `Frames (Optional)`
  String get actions_form_framesAmountOptional {
    return Intl.message(
      'Frames (Optional)',
      name: 'actions_form_framesAmountOptional',
      desc: '',
      args: [],
    );
  }

  /// `Enter the amount of boxes on you setup`
  String get actions_form_harvestBoxesAmountHelper {
    return Intl.message(
      'Enter the amount of boxes on you setup',
      name: 'actions_form_harvestBoxesAmountHelper',
      desc: '',
      args: [],
    );
  }

  /// `Select the date of the harvest`
  String get actions_form_harvestDateHelper {
    return Intl.message(
      'Select the date of the harvest',
      name: 'actions_form_harvestDateHelper',
      desc: '',
      args: [],
    );
  }

  /// `Enter the amount of honey harvested`
  String get actions_form_harvestHoneyAmountHelper {
    return Intl.message(
      'Enter the amount of honey harvested',
      name: 'actions_form_harvestHoneyAmountHelper',
      desc: '',
      args: [],
    );
  }

  /// `Take a picture or select multiple images to include with your harvest.`
  String get actions_form_harvestPictureHelper {
    return Intl.message(
      'Take a picture or select multiple images to include with your harvest.',
      name: 'actions_form_harvestPictureHelper',
      desc: '',
      args: [],
    );
  }

  /// `Enter the percentage of water`
  String get actions_form_harvestWaterContentHelper {
    return Intl.message(
      'Enter the percentage of water',
      name: 'actions_form_harvestWaterContentHelper',
      desc: '',
      args: [],
    );
  }

  /// `Honey Type`
  String get actions_form_honeyType {
    return Intl.message(
      'Honey Type',
      name: 'actions_form_honeyType',
      desc: '',
      args: [],
    );
  }

  /// `Honey Type of the harvest`
  String get actions_form_honeyTypeHelper {
    return Intl.message(
      'Honey Type of the harvest',
      name: 'actions_form_honeyTypeHelper',
      desc: '',
      args: [],
    );
  }

  /// `Select the date of the inspection.`
  String get actions_form_inspectionDateHelper {
    return Intl.message(
      'Select the date of the inspection.',
      name: 'actions_form_inspectionDateHelper',
      desc: '',
      args: [],
    );
  }

  /// `Enter any additional notes of observations from the inspection.`
  String get actions_form_inspectionNoteHelper {
    return Intl.message(
      'Enter any additional notes of observations from the inspection.',
      name: 'actions_form_inspectionNoteHelper',
      desc: '',
      args: [],
    );
  }

  /// `Take a picture or select multiple images to include with your inspection.`
  String get actions_form_inspectionPictureHelper {
    return Intl.message(
      'Take a picture or select multiple images to include with your inspection.',
      name: 'actions_form_inspectionPictureHelper',
      desc: '',
      args: [],
    );
  }

  /// `How aggressive/prodective are the bees?`
  String get actions_form_moodHelper {
    return Intl.message(
      'How aggressive/prodective are the bees?',
      name: 'actions_form_moodHelper',
      desc: '',
      args: [],
    );
  }

  /// `Mood`
  String get actions_form_moodTitle {
    return Intl.message(
      'Mood',
      name: 'actions_form_moodTitle',
      desc: '',
      args: [],
    );
  }

  /// `New Feeding`
  String get actions_form_newFeeding {
    return Intl.message(
      'New Feeding',
      name: 'actions_form_newFeeding',
      desc: '',
      args: [],
    );
  }

  /// `New Harvest`
  String get actions_form_newHarvest {
    return Intl.message(
      'New Harvest',
      name: 'actions_form_newHarvest',
      desc: '',
      args: [],
    );
  }

  /// `New Inspection`
  String get actions_form_newInspectionTitle {
    return Intl.message(
      'New Inspection',
      name: 'actions_form_newInspectionTitle',
      desc: '',
      args: [],
    );
  }

  /// `Note`
  String get actions_form_noteTitle {
    return Intl.message(
      'Note',
      name: 'actions_form_noteTitle',
      desc: '',
      args: [],
    );
  }

  /// `Observations`
  String get actions_form_observationsTitle {
    return Intl.message(
      'Observations',
      name: 'actions_form_observationsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Select what you saw during the inspection.  Long press to get descriptions of each icon.`
  String get actions_form_obsHelper {
    return Intl.message(
      'Select what you saw during the inspection.  Long press to get descriptions of each icon.',
      name: 'actions_form_obsHelper',
      desc: '',
      args: [],
    );
  }

  /// `How solid does the brood pattern look?`
  String get actions_form_patternHelper {
    return Intl.message(
      'How solid does the brood pattern look?',
      name: 'actions_form_patternHelper',
      desc: '',
      args: [],
    );
  }

  /// `Pattern`
  String get actions_form_patternTitle {
    return Intl.message(
      'Pattern',
      name: 'actions_form_patternTitle',
      desc: '',
      args: [],
    );
  }

  /// `Storage`
  String get actions_form_storageTitle {
    return Intl.message(
      'Storage',
      name: 'actions_form_storageTitle',
      desc: '',
      args: [],
    );
  }

  /// `How strong is the colony? How many full frames of bee?`
  String get actions_form_strengthHelper {
    return Intl.message(
      'How strong is the colony? How many full frames of bee?',
      name: 'actions_form_strengthHelper',
      desc: '',
      args: [],
    );
  }

  /// `Strength`
  String get actions_form_strengthTitle {
    return Intl.message(
      'Strength',
      name: 'actions_form_strengthTitle',
      desc: '',
      args: [],
    );
  }

  /// `How much honey stores do the colony have?`
  String get actions_form_strorageHelper {
    return Intl.message(
      'How much honey stores do the colony have?',
      name: 'actions_form_strorageHelper',
      desc: '',
      args: [],
    );
  }

  /// `Water Content (Optional)`
  String get actions_form_waterContentOptional {
    return Intl.message(
      'Water Content (Optional)',
      name: 'actions_form_waterContentOptional',
      desc: '',
      args: [],
    );
  }

  /// `Edit Feeding`
  String get actions_menu_editFeeding {
    return Intl.message(
      'Edit Feeding',
      name: 'actions_menu_editFeeding',
      desc: '',
      args: [],
    );
  }

  /// `Edit Harvest`
  String get actions_menu_editHarvest {
    return Intl.message(
      'Edit Harvest',
      name: 'actions_menu_editHarvest',
      desc: '',
      args: [],
    );
  }

  /// `Edit Inspection`
  String get actions_menu_editInspection {
    return Intl.message(
      'Edit Inspection',
      name: 'actions_menu_editInspection',
      desc: '',
      args: [],
    );
  }

  /// `Feeding`
  String get actions_nav_feeding {
    return Intl.message(
      'Feeding',
      name: 'actions_nav_feeding',
      desc: '',
      args: [],
    );
  }

  /// `Feedings`
  String get actions_nav_feedings {
    return Intl.message(
      'Feedings',
      name: 'actions_nav_feedings',
      desc: '',
      args: [],
    );
  }

  /// `Harvest`
  String get actions_nav_Harvest {
    return Intl.message(
      'Harvest',
      name: 'actions_nav_Harvest',
      desc: '',
      args: [],
    );
  }

  /// `Harvests`
  String get actions_nav_harvests {
    return Intl.message(
      'Harvests',
      name: 'actions_nav_harvests',
      desc: '',
      args: [],
    );
  }

  /// `Inspection`
  String get actions_nav_inspection {
    return Intl.message(
      'Inspection',
      name: 'actions_nav_inspection',
      desc: '',
      args: [],
    );
  }

  /// `Inspections`
  String get actions_nav_inspections {
    return Intl.message(
      'Inspections',
      name: 'actions_nav_inspections',
      desc: '',
      args: [],
    );
  }

  /// `{type, select, common_error_serverError{Server Error} common_error_insufficientPermission{Insufficient Permissions} common_error_emulatorError{Emulator Error} actions_error_noInspections{No Inspections} actions_error_invalidInspectionDocument{Invalid Inspection} actions_error_missingInspectionDocument{Missing Inspection} actions_error_noFeedings{No Feedings} actions_error_invalidFeedingDocument{Invalid Feeding} actions_error_missingFeedingDocument{Missing Feeding} actions_error_noHarvest{No Harvests} actions_error_invalidHarvestDocument{Invalid Harvest} actions_error_missingHarvestDocument{Missing Harvest} other{Unknown}}`
  String actions_snack_actionFailure(Object type) {
    return Intl.select(
      type,
      {
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
      },
      name: 'actions_snack_actionFailure',
      desc: '',
      args: [type],
    );
  }

  /// `Feeding Created`
  String get actions_snack_feedingCreated {
    return Intl.message(
      'Feeding Created',
      name: 'actions_snack_feedingCreated',
      desc: '',
      args: [],
    );
  }

  /// `Feeding Saved`
  String get actions_snack_feedingSaved {
    return Intl.message(
      'Feeding Saved',
      name: 'actions_snack_feedingSaved',
      desc: '',
      args: [],
    );
  }

  /// `Harvest Created`
  String get actions_snack_harvestCreated {
    return Intl.message(
      'Harvest Created',
      name: 'actions_snack_harvestCreated',
      desc: '',
      args: [],
    );
  }

  /// `Harvest Deleted`
  String get actions_snack_harvestDeleted {
    return Intl.message(
      'Harvest Deleted',
      name: 'actions_snack_harvestDeleted',
      desc: '',
      args: [],
    );
  }

  /// `Harvest Saved`
  String get actions_snack_harvestSaved {
    return Intl.message(
      'Harvest Saved',
      name: 'actions_snack_harvestSaved',
      desc: '',
      args: [],
    );
  }

  /// `Inspection Created`
  String get actions_snack_inspectionCreated {
    return Intl.message(
      'Inspection Created',
      name: 'actions_snack_inspectionCreated',
      desc: '',
      args: [],
    );
  }

  /// `Inspection Deleted`
  String get actions_snack_inspectionDeleted {
    return Intl.message(
      'Inspection Deleted',
      name: 'actions_snack_inspectionDeleted',
      desc: '',
      args: [],
    );
  }

  /// `Inspection Saved`
  String get actions_snack_inspectionSaved {
    return Intl.message(
      'Inspection Saved',
      name: 'actions_snack_inspectionSaved',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get actions_table_dateHeader {
    return Intl.message(
      'Date',
      name: 'actions_table_dateHeader',
      desc: '',
      args: [],
    );
  }

  /// `Mood`
  String get actions_table_moodHeader {
    return Intl.message(
      'Mood',
      name: 'actions_table_moodHeader',
      desc: '',
      args: [],
    );
  }

  /// `Storage`
  String get actions_table_storageHeader {
    return Intl.message(
      'Storage',
      name: 'actions_table_storageHeader',
      desc: '',
      args: [],
    );
  }

  /// `Strength`
  String get actions_table_strengthHeader {
    return Intl.message(
      'Strength',
      name: 'actions_table_strengthHeader',
      desc: '',
      args: [],
    );
  }

  /// `Capped Brood`
  String get actions_text_obsCappedBrood {
    return Intl.message(
      'Capped Brood',
      name: 'actions_text_obsCappedBrood',
      desc: '',
      args: [],
    );
  }

  /// `Eggs`
  String get actions_text_obsEggs {
    return Intl.message(
      'Eggs',
      name: 'actions_text_obsEggs',
      desc: '',
      args: [],
    );
  }

  /// `Larva`
  String get actions_text_obsLarva {
    return Intl.message(
      'Larva',
      name: 'actions_text_obsLarva',
      desc: '',
      args: [],
    );
  }

  /// `Queen`
  String get actions_text_obsQueen {
    return Intl.message(
      'Queen',
      name: 'actions_text_obsQueen',
      desc: '',
      args: [],
    );
  }

  /// `Queen Cell`
  String get actions_text_obsQueenCell {
    return Intl.message(
      'Queen Cell',
      name: 'actions_text_obsQueenCell',
      desc: '',
      args: [],
    );
  }

  /// `DISEASE(S)`
  String get actions_word_diseasesSection {
    return Intl.message(
      'DISEASE(S)',
      name: 'actions_word_diseasesSection',
      desc: '',
      args: [],
    );
  }

  /// `OBSERVATIONS`
  String get actions_word_observationSection {
    return Intl.message(
      'OBSERVATIONS',
      name: 'actions_word_observationSection',
      desc: '',
      args: [],
    );
  }

  /// `{type, select, URBAN{Urban} RURAL{Rural} MIXED{Mixed} other{Unknown}}`
  String action_text_apiaryType(Object type) {
    return Intl.select(
      type,
      {
        'URBAN': 'Urban',
        'RURAL': 'Rural',
        'MIXED': 'Mixed',
        'other': 'Unknown',
      },
      name: 'action_text_apiaryType',
      desc: '',
      args: [type],
    );
  }

  /// `{type, select, DISEASE_AMERICAN_FOULBROOD{American Foulbrood (AFB)} DISEASE_EUROPEAN_FOULBROOD{European Foulbrood (EFB)} DISEASE_BALD_BROOD{Bald Brood} DISEASE_BLISTER_BEETLES{Blister Beetles} DISEASE_CHALKBROOD{Chalkbrood} DISEASE_CHEWED_PUPAE{Chewed Pupae} DISEASE_DEFORMED_WING_VIRUS{Deformed Wing Virus (DWV)} DISEASE_HIVE_BEETLE{Small Hive Beetle} DISEASE_SEVERE_HIVE_BEETLE{Small Hive Beetle (Severe)} DISEASE_K_WING_VIRUS{K Wing Virus} DISEASE_MOLD{Mold} DISEASE_NOSEMA{Nosema} DISEASE_CHRONIC_BEE_PARALYSIS_VIRUS{Chronic Bee Paralysis Virus (CBPV)} DISEASE_STONEBROOD{Stonebrood} DISEASE_TRACHEAL_MITE{Tracheal Mite} DISEASE_TROPILAELAPS{Tropilaelaps Mites} DISEASE_VARROA_MITES{Varroa Mites} DISEASE_SEVERE_VARROA_MITES{Varroa Mites (Severe)} DISEASE_SEVERE_WAX_MOTH{Wax Moth} DISEASE_ASIAN_HORNET{Asian Hornet (Vespa velutina)} DISEASE_OTHER{Other} other{unknown disease.}}`
  String action_text_disease(Object type) {
    return Intl.select(
      type,
      {
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
      },
      name: 'action_text_disease',
      desc: '',
      args: [type],
    );
  }

  /// `{type, select, SHADED{Shaded} HALF_SHADED{Partial} FULL_SUN{Sunny} other{Unknown}}`
  String action_text_exposureType(Object type) {
    return Intl.select(
      type,
      {
        'SHADED': 'Shaded',
        'HALF_SHADED': 'Partial',
        'FULL_SUN': 'Sunny',
        'other': 'Unknown',
      },
      name: 'action_text_exposureType',
      desc: '',
      args: [type],
    );
  }

  /// `{type, select, FEED_SYRUP_1TO1{Syrup 1:1} FEED_SYRUP_2TO1{Syrup 2:1} FEED_SYRUP_3TO2{Syrup 3:2} FEED_FONDANT{Fondant} FEED_HONEY{Honey} FEED_BEE_BREAD{Pollen Patties} FEED_SYRUP_INVERTED{Inverted Syrup} FEED_UNKNOWN{Unknown} other{Unknown}}`
  String action_text_FeedType(Object type) {
    return Intl.select(
      type,
      {
        'FEED_SYRUP_1TO1': 'Syrup 1:1',
        'FEED_SYRUP_2TO1': 'Syrup 2:1',
        'FEED_SYRUP_3TO2': 'Syrup 3:2',
        'FEED_FONDANT': 'Fondant',
        'FEED_HONEY': 'Honey',
        'FEED_BEE_BREAD': 'Pollen Patties',
        'FEED_SYRUP_INVERTED': 'Inverted Syrup',
        'FEED_UNKNOWN': 'Unknown',
        'other': 'Unknown',
      },
      name: 'action_text_FeedType',
      desc: '',
      args: [type],
    );
  }

  /// `{type, select, HONEY_LOCAL{Local Honey} HONEY_ACACIA{Acacia Honey} HONEY_ANZER{Anzer Honey} HONEY_BLOSSOM{Blossom Honey} HONEY_ALFALFA{Alfalfa Honey} HONEY_AVOCADO{Avocado Honey} HONEY_BUCKWHEAT{Buckwheat Honey} HONEY_BLUEBERRY{Blueberry Honey} HONEY_CHESTNUT{Chestnut Honey} HONEY_CLOVER{Clover Honey} HONEY_EUCALYPTUS{Eucaliptus Honey} HONEY_FOREST{Forest Honey} HONEY_MANUKA{Manuka Honey} HONEY_LAVENDER{Lavender Honey} HONEY_ORANGE_BLOSSOM{Orange Blossom Honey} HONEY_RAPE{Rape Honey} HONEY_SAGE{Sage Honey} HONEY_MIXED{Mixed Honey} HONEY_UNKNOWN{Unknown honey} other{Unknown}}`
  String action_text_honeyType(Object type) {
    return Intl.select(
      type,
      {
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
      },
      name: 'action_text_honeyType',
      desc: '',
      args: [type],
    );
  }

  /// `Are you sure you want to delete this item?`
  String get alert_dialog_delete_message {
    return Intl.message(
      'Are you sure you want to delete this item?',
      name: 'alert_dialog_delete_message',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Delete`
  String get alert_dialog_delete_title {
    return Intl.message(
      'Confirm Delete',
      name: 'alert_dialog_delete_title',
      desc: '',
      args: [],
    );
  }

  /// `Alerts Failure`
  String get alerts_card_errorTitle {
    return Intl.message(
      'Alerts Failure',
      name: 'alerts_card_errorTitle',
      desc: '',
      args: [],
    );
  }

  /// `{failure, select, alerts_error_noAlerts{No Alerts Found.} other{Alerts Error.}}`
  String alerts_error_alertsFailure(Object failure) {
    return Intl.select(
      failure,
      {
        'alerts_error_noAlerts': 'No Alerts Found.',
        'other': 'Alerts Error.',
      },
      name: 'alerts_error_alertsFailure',
      desc: '',
      args: [failure],
    );
  }

  /// `{title, select, alerts_error_short{{hardware} short circuit.} alerts_error_noSoftware{Failed firmware update.} alerts_error_load{{hardware} failed to boot.} alerts_error_contact{{hardware} lost contact.} alerts_error_eeprom{{hardware} memory is corrupt.} other{Unknown alert.}}`
  String alerts_error_cardTitle(Object title, Object hardware) {
    return Intl.select(
      title,
      {
        'alerts_error_short': '$hardware short circuit.',
        'alerts_error_noSoftware': 'Failed firmware update.',
        'alerts_error_load': '$hardware failed to boot.',
        'alerts_error_contact': '$hardware lost contact.',
        'alerts_error_eeprom': '$hardware memory is corrupt.',
        'other': 'Unknown alert.',
      },
      name: 'alerts_error_cardTitle',
      desc: '',
      args: [title, hardware],
    );
  }

  /// `You have no current alerts.  When a new issue arises with one of your hardware, you will receive a push notification and a message.`
  String get alerts_message_noAlerts {
    return Intl.message(
      'You have no current alerts.  When a new issue arises with one of your hardware, you will receive a push notification and a message.',
      name: 'alerts_message_noAlerts',
      desc: '',
      args: [],
    );
  }

  /// `No Alerts`
  String get alerts_title_noAlerts {
    return Intl.message(
      'No Alerts',
      name: 'alerts_title_noAlerts',
      desc: '',
      args: [],
    );
  }

  /// `You don’t seem to have any apiaries added yet.  You can click the button to add your first apiary or select refresh from the menu if you think there was an error.`
  String get apiaries_page_noApiaries {
    return Intl.message(
      'You don’t seem to have any apiaries added yet.  You can click the button to add your first apiary or select refresh from the menu if you think there was an error.',
      name: 'apiaries_page_noApiaries',
      desc: '',
      args: [],
    );
  }

  /// `No apiaries yet.`
  String get apiaries_page_title_noApiaries {
    return Intl.message(
      'No apiaries yet.',
      name: 'apiaries_page_title_noApiaries',
      desc: '',
      args: [],
    );
  }

  /// `ADD APIARY`
  String get apiary_button_addApiary {
    return Intl.message(
      'ADD APIARY',
      name: 'apiary_button_addApiary',
      desc: '',
      args: [],
    );
  }

  /// `ADD HIVE`
  String get apiary_button_addHive {
    return Intl.message(
      'ADD HIVE',
      name: 'apiary_button_addHive',
      desc: '',
      args: [],
    );
  }

  /// `{type, select, common_error_serverError{Something went wrong while we were talking with our server. Please try again and if the problem percists, reach out to us for support.} common_error_insufficientPermission{You have insufficient permission to access this document. Please check you with your admin for adding permissions.} common_error_emulatorError{Emulator Error.} apiary_error_invalidDocument{The apiary document you are looking for is invalid or corrupt.  Please note the ID in the top right and contact us for support.} apiary_error_missingDocument{The apiary document you are looking for is missing from our database.  Please note the ID in the top right and contact us for support.} apiary_error_missingConfig{The apiary is missing it's config file.  Please try refreshing the page and if the problem percists, reach out to us for support.} apiary_error_noApiaries{You don’t seem to have any apiaries added yet. You can click the button to add your first apiary or select refresh from the menu if you think there was an error.} apiary_error_invalidLocation{The location has not been set for this apiary so it is not possible to get weather data. You can edit the apiary details and add a location in order to see weather data.} other{Unknown}}`
  String apiary_error_apiaryFailure(Object type) {
    return Intl.select(
      type,
      {
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
      },
      name: 'apiary_error_apiaryFailure',
      desc: '',
      args: [type],
    );
  }

  /// `Apiary Failure`
  String get apiary_error_apiaryFailureTitle {
    return Intl.message(
      'Apiary Failure',
      name: 'apiary_error_apiaryFailureTitle',
      desc: '',
      args: [],
    );
  }

  /// `This apiary is missing a config file.  You might need to refresh the page with the button below and if the problem continues please contact us for support.`
  String get apiary_error_missingConfigMessage {
    return Intl.message(
      'This apiary is missing a config file.  You might need to refresh the page with the button below and if the problem continues please contact us for support.',
      name: 'apiary_error_missingConfigMessage',
      desc: '',
      args: [],
    );
  }

  /// `Missing Config.`
  String get apiary_error_missingConfigTitle {
    return Intl.message(
      'Missing Config.',
      name: 'apiary_error_missingConfigTitle',
      desc: '',
      args: [],
    );
  }

  /// `This apiary is currently empty.  If you would like to add your first hive, click the button below.  If you think there is an error then try refresh the page from the menu in top right.`
  String get apiary_error_noHivesMessage {
    return Intl.message(
      'This apiary is currently empty.  If you would like to add your first hive, click the button below.  If you think there is an error then try refresh the page from the menu in top right.',
      name: 'apiary_error_noHivesMessage',
      desc: '',
      args: [],
    );
  }

  /// `No Hives.`
  String get apiary_error_noHivesTitle {
    return Intl.message(
      'No Hives.',
      name: 'apiary_error_noHivesTitle',
      desc: '',
      args: [],
    );
  }

  /// `Exposure`
  String get apiary_exposure {
    return Intl.message(
      'Exposure',
      name: 'apiary_exposure',
      desc: '',
      args: [],
    );
  }

  /// `What kind of Sun Exposure your apiary has`
  String get apiary_form_apiaryExposureHelper {
    return Intl.message(
      'What kind of Sun Exposure your apiary has',
      name: 'apiary_form_apiaryExposureHelper',
      desc: '',
      args: [],
    );
  }

  /// `Location of your Apiary`
  String get apiary_form_apiaryLocationHelper {
    return Intl.message(
      'Location of your Apiary',
      name: 'apiary_form_apiaryLocationHelper',
      desc: '',
      args: [],
    );
  }

  /// `Name that will be displayed`
  String get apiary_form_apiaryNameHelper {
    return Intl.message(
      'Name that will be displayed',
      name: 'apiary_form_apiaryNameHelper',
      desc: '',
      args: [],
    );
  }

  /// `Optional Field. Serial number of the apiary`
  String get apiary_form_apiarySerialHelper {
    return Intl.message(
      'Optional Field. Serial number of the apiary',
      name: 'apiary_form_apiarySerialHelper',
      desc: '',
      args: [],
    );
  }

  /// `Type of your Apiary`
  String get apiary_form_apiaryTypeHelper {
    return Intl.message(
      'Type of your Apiary',
      name: 'apiary_form_apiaryTypeHelper',
      desc: '',
      args: [],
    );
  }

  /// `On the map, tap the location of the Apiary.  Use the search bar if not around your current location.`
  String get apiary_form_locationHelper {
    return Intl.message(
      'On the map, tap the location of the Apiary.  Use the search bar if not around your current location.',
      name: 'apiary_form_locationHelper',
      desc: '',
      args: [],
    );
  }

  /// `Location set to:`
  String get apiary_form_locationSetTo {
    return Intl.message(
      'Location set to:',
      name: 'apiary_form_locationSetTo',
      desc: '',
      args: [],
    );
  }

  /// `Use current Location`
  String get apiary_form_useCurrentLocation {
    return Intl.message(
      'Use current Location',
      name: 'apiary_form_useCurrentLocation',
      desc: '',
      args: [],
    );
  }

  /// `Add Apiary`
  String get apiary_menu_addApiary {
    return Intl.message(
      'Add Apiary',
      name: 'apiary_menu_addApiary',
      desc: '',
      args: [],
    );
  }

  /// `Add Hive`
  String get apiary_menu_addHive {
    return Intl.message(
      'Add Hive',
      name: 'apiary_menu_addHive',
      desc: '',
      args: [],
    );
  }

  /// `Add Log`
  String get apiary_menu_addLog {
    return Intl.message(
      'Add Log',
      name: 'apiary_menu_addLog',
      desc: '',
      args: [],
    );
  }

  /// `Add Task`
  String get apiary_menu_addTask {
    return Intl.message(
      'Add Task',
      name: 'apiary_menu_addTask',
      desc: '',
      args: [],
    );
  }

  /// `All Apiaries`
  String get apiary_menu_allApiaries {
    return Intl.message(
      'All Apiaries',
      name: 'apiary_menu_allApiaries',
      desc: '',
      args: [],
    );
  }

  /// `Edit Apiary`
  String get apiary_menu_edit {
    return Intl.message(
      'Edit Apiary',
      name: 'apiary_menu_edit',
      desc: '',
      args: [],
    );
  }

  /// `You don’t seem to have any apiaries added yet.  You can click the button to add your first apiary or select refresh from the menu if you think there was an error.`
  String get apiary_message_noApiaryMessage {
    return Intl.message(
      'You don’t seem to have any apiaries added yet.  You can click the button to add your first apiary or select refresh from the menu if you think there was an error.',
      name: 'apiary_message_noApiaryMessage',
      desc: '',
      args: [],
    );
  }

  /// `No apiaries yet.`
  String get apiary_message_noApiaryTitle {
    return Intl.message(
      'No apiaries yet.',
      name: 'apiary_message_noApiaryTitle',
      desc: '',
      args: [],
    );
  }

  /// `New Apiary`
  String get apiary_new_apiary {
    return Intl.message(
      'New Apiary',
      name: 'apiary_new_apiary',
      desc: '',
      args: [],
    );
  }

  /// `Apiary Created`
  String get apiary_snack_apiaryCreated {
    return Intl.message(
      'Apiary Created',
      name: 'apiary_snack_apiaryCreated',
      desc: '',
      args: [],
    );
  }

  /// `Apiary deleted`
  String get apiary_snack_apiaryRemoved {
    return Intl.message(
      'Apiary deleted',
      name: 'apiary_snack_apiaryRemoved',
      desc: '',
      args: [],
    );
  }

  /// `Apiary Saved`
  String get apiary_snack_apiarySaved {
    return Intl.message(
      'Apiary Saved',
      name: 'apiary_snack_apiarySaved',
      desc: '',
      args: [],
    );
  }

  /// `Sunny`
  String get apiary_sun_exposure_full_sun {
    return Intl.message(
      'Sunny',
      name: 'apiary_sun_exposure_full_sun',
      desc: '',
      args: [],
    );
  }

  /// `Partial`
  String get apiary_sun_exposure_half_shaded {
    return Intl.message(
      'Partial',
      name: 'apiary_sun_exposure_half_shaded',
      desc: '',
      args: [],
    );
  }

  /// `Shaded`
  String get apiary_sun_exposure_shaded {
    return Intl.message(
      'Shaded',
      name: 'apiary_sun_exposure_shaded',
      desc: '',
      args: [],
    );
  }

  /// `Apiary Detail`
  String get apiary_title_apiaryDetails {
    return Intl.message(
      'Apiary Detail',
      name: 'apiary_title_apiaryDetails',
      desc: '',
      args: [],
    );
  }

  /// `Type`
  String get apiary_type {
    return Intl.message(
      'Type',
      name: 'apiary_type',
      desc: '',
      args: [],
    );
  }

  /// `Mixed`
  String get apiary_type_mixed {
    return Intl.message(
      'Mixed',
      name: 'apiary_type_mixed',
      desc: '',
      args: [],
    );
  }

  /// `Rural`
  String get apiary_type_rural {
    return Intl.message(
      'Rural',
      name: 'apiary_type_rural',
      desc: '',
      args: [],
    );
  }

  /// `Urban`
  String get apiary_type_urban {
    return Intl.message(
      'Urban',
      name: 'apiary_type_urban',
      desc: '',
      args: [],
    );
  }

  /// `Forecast`
  String get apiary_weather_forecastTitle {
    return Intl.message(
      'Forecast',
      name: 'apiary_weather_forecastTitle',
      desc: '',
      args: [],
    );
  }

  /// `HIVES`
  String get apiary_word_hivesSection {
    return Intl.message(
      'HIVES',
      name: 'apiary_word_hivesSection',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Apple`
  String get auth_button_appleLogin {
    return Intl.message(
      'Sign in with Apple',
      name: 'auth_button_appleLogin',
      desc: '',
      args: [],
    );
  }

  /// `CHANGE PASSWORD`
  String get auth_button_changePassword {
    return Intl.message(
      'CHANGE PASSWORD',
      name: 'auth_button_changePassword',
      desc: '',
      args: [],
    );
  }

  /// `CREATE ACCOUNT`
  String get auth_button_createAccount {
    return Intl.message(
      'CREATE ACCOUNT',
      name: 'auth_button_createAccount',
      desc: '',
      args: [],
    );
  }

  /// `DELETE ACCOUNT`
  String get auth_button_deleteAccount {
    return Intl.message(
      'DELETE ACCOUNT',
      name: 'auth_button_deleteAccount',
      desc: '',
      args: [],
    );
  }

  /// `EDIT ACCOUNT`
  String get auth_button_editAccount {
    return Intl.message(
      'EDIT ACCOUNT',
      name: 'auth_button_editAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Facebook`
  String get auth_button_facebookLogin {
    return Intl.message(
      'Sign in with Facebook',
      name: 'auth_button_facebookLogin',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Google`
  String get auth_button_googleLogin {
    return Intl.message(
      'Sign in with Google',
      name: 'auth_button_googleLogin',
      desc: '',
      args: [],
    );
  }

  /// `LOGIN`
  String get auth_button_login {
    return Intl.message(
      'LOGIN',
      name: 'auth_button_login',
      desc: '',
      args: [],
    );
  }

  /// `Paswordless Login`
  String get auth_button_passwordlessLogin {
    return Intl.message(
      'Paswordless Login',
      name: 'auth_button_passwordlessLogin',
      desc: '',
      args: [],
    );
  }

  /// `SEND EMAIL`
  String get auth_button_resetPassword {
    return Intl.message(
      'SEND EMAIL',
      name: 'auth_button_resetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Forgotten?`
  String get auth_button_restPassword {
    return Intl.message(
      'Forgotten?',
      name: 'auth_button_restPassword',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure? Once you confirm you will not be able to undo it.`
  String get auth_dialog_deleteAccountContent {
    return Intl.message(
      'Are you sure? Once you confirm you will not be able to undo it.',
      name: 'auth_dialog_deleteAccountContent',
      desc: '',
      args: [],
    );
  }

  /// `Delete Account?`
  String get auth_dialog_deleteAccountTitle {
    return Intl.message(
      'Delete Account?',
      name: 'auth_dialog_deleteAccountTitle',
      desc: '',
      args: [],
    );
  }

  /// `{failure, select, auth_error_cancelledByUser{Cancelled by User.} common_error_serverError{Server side error.} auth_error_emailAlreadyInUse{Email already in use.} auth_error_accountAlreadyExists{Account already exists.} auth_error_invalidEmailAndPassword{Invalid email and password combo.} auth_error_missingUserDoc{Missing User Document.} auth_error_missingUserSettings{Missing Settings.} auth_error_invalidUserDoc{Invalid User Document.} auth_error_invalidUserSettings{Invalid Settings.} common_error_insufficientPermission{Insufficient Permissions.} auth_error_missingUserDoc{Your user document is missing, please contact us for support.} auth_error_missingUserSettings{Your user settings is missing, please contact us for support.} auth_error_invalidUserDoc{Your user document is invalid, please contact us for support.} auth_error_invalidUserSettings{Your user settings is invalid, please contact us for support.} other{Authentication error.}}`
  String auth_error_authFailure(Object failure) {
    return Intl.select(
      failure,
      {
        'auth_error_cancelledByUser': 'Cancelled by User.',
        'common_error_serverError': 'Server side error.',
        'auth_error_emailAlreadyInUse': 'Email already in use.',
        'auth_error_accountAlreadyExists': 'Account already exists.',
        'auth_error_invalidEmailAndPassword':
            'Invalid email and password combo.',
        'auth_error_missingUserDoc': 'Missing User Document.',
        'auth_error_missingUserSettings': 'Missing Settings.',
        'auth_error_invalidUserDoc': 'Invalid User Document.',
        'auth_error_invalidUserSettings': 'Invalid Settings.',
        'common_error_insufficientPermission': 'Insufficient Permissions.',
        'other': 'Authentication error.',
      },
      name: 'auth_error_authFailure',
      desc: '',
      args: [failure],
    );
  }

  /// `You must accept the T&C's before continuing.`
  String get auth_error_missingTerms {
    return Intl.message(
      'You must accept the T&C\'s before continuing.',
      name: 'auth_error_missingTerms',
      desc: '',
      args: [],
    );
  }

  /// `{failure, select, auth_error_invalidEmail{Please enter a valid email.} auth_error_shortPassword{Please use a longer password.} auth_error_invalidPassword{Please include (at least) one capital letter and number.} auth_error_longDisplayName{Please enter a shorter display name (max 16 char).} auth_error_invalidisplayName{Please enter a valid display name.} auth_error_invalidDateFormat{Invalid date format.} auth_error_invalidUnitSystem{Invalid unit system.} other{Authentication value error.}}`
  String auth_error_valueFailure(Object failure) {
    return Intl.select(
      failure,
      {
        'auth_error_invalidEmail': 'Please enter a valid email.',
        'auth_error_shortPassword': 'Please use a longer password.',
        'auth_error_invalidPassword':
            'Please include (at least) one capital letter and number.',
        'auth_error_longDisplayName':
            'Please enter a shorter display name (max 16 char).',
        'auth_error_invalidisplayName': 'Please enter a valid display name.',
        'auth_error_invalidDateFormat': 'Invalid date format.',
        'auth_error_invalidUnitSystem': 'Invalid unit system.',
        'other': 'Authentication value error.',
      },
      name: 'auth_error_valueFailure',
      desc: '',
      args: [failure],
    );
  }

  /// `Optionally enter your address.`
  String get auth_form_addressHelper {
    return Intl.message(
      'Optionally enter your address.',
      name: 'auth_form_addressHelper',
      desc: '',
      args: [],
    );
  }

  /// `Enter a short description of yourself.`
  String get auth_form_bioHelper {
    return Intl.message(
      'Enter a short description of yourself.',
      name: 'auth_form_bioHelper',
      desc: '',
      args: [],
    );
  }

  /// `Enter a display name. (max 24 char)`
  String get auth_form_displayNameHelper {
    return Intl.message(
      'Enter a display name. (max 24 char)',
      name: 'auth_form_displayNameHelper',
      desc: '',
      args: [],
    );
  }

  /// `Enter your first name.`
  String get auth_form_firstNameHelper {
    return Intl.message(
      'Enter your first name.',
      name: 'auth_form_firstNameHelper',
      desc: '',
      args: [],
    );
  }

  /// `Enter your last name.`
  String get auth_form_lastNameHelper {
    return Intl.message(
      'Enter your last name.',
      name: 'auth_form_lastNameHelper',
      desc: '',
      args: [],
    );
  }

  /// `Optionally enter your phone number.`
  String get auth_form_phoneHelper {
    return Intl.message(
      'Optionally enter your phone number.',
      name: 'auth_form_phoneHelper',
      desc: '',
      args: [],
    );
  }

  /// `Edit Account`
  String get auth_menu_editAccount {
    return Intl.message(
      'Edit Account',
      name: 'auth_menu_editAccount',
      desc: '',
      args: [],
    );
  }

  /// `Link Accounts`
  String get auth_menu_linkAccounts {
    return Intl.message(
      'Link Accounts',
      name: 'auth_menu_linkAccounts',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get auth_menu_settings {
    return Intl.message(
      'Settings',
      name: 'auth_menu_settings',
      desc: '',
      args: [],
    );
  }

  /// `Success! Account created`
  String get auth_message_createAccountSuccess {
    return Intl.message(
      'Success! Account created',
      name: 'auth_message_createAccountSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Success! Sent Email`
  String get auth_message_emailSent {
    return Intl.message(
      'Success! Sent Email',
      name: 'auth_message_emailSent',
      desc: '',
      args: [],
    );
  }

  /// `Success! Logged in`
  String get auth_message_loginSuccess {
    return Intl.message(
      'Success! Logged in',
      name: 'auth_message_loginSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Don’t have an account? Register`
  String get auth_route_createAccount {
    return Intl.message(
      'Don’t have an account? Register',
      name: 'auth_route_createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account? Login`
  String get auth_route_login {
    return Intl.message(
      'Already have an account? Login',
      name: 'auth_route_login',
      desc: '',
      args: [],
    );
  }

  /// `{type, select, common_error_serverError{Server Error} common_error_insufficientPermission{Insufficient Permissions} common_error_emulatorError{Emulator Error} auth_error_cancelledByUser{Cancelled} auth_error_emailAlreadyInUse{Email Exists} auth_error_accountAlreadyExists{Account Exists} auth_error_invalidEmailAndPassword{Invalid Combo} auth_error_missingUserDoc{Missing User} auth_error_missingUserSettings{Missing Settings} auth_error_invalidUserDoc{Invalid User} auth_error_invalidUserSettings{Invalid Settings} other{Unknown}}`
  String auth_snack_authFailure(Object type) {
    return Intl.select(
      type,
      {
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
      },
      name: 'auth_snack_authFailure',
      desc: '',
      args: [type],
    );
  }

  /// `I have read the Vatorex Terms of Service and Privacy Policy and agree to them.`
  String get auth_switch_termsAndService {
    return Intl.message(
      'I have read the Vatorex Terms of Service and Privacy Policy and agree to them.',
      name: 'auth_switch_termsAndService',
      desc: '',
      args: [],
    );
  }

  /// `{format, select, eu{EU (dd/MM/yyyy)} us{US (MM/dd/yyyy)} swiss{Swiss (dd.mm.yyy)} other{invalid}}`
  String auth_text_dateFormat(Object format) {
    return Intl.select(
      format,
      {
        'eu': 'EU (dd/MM/yyyy)',
        'us': 'US (MM/dd/yyyy)',
        'swiss': 'Swiss (dd.mm.yyy)',
        'other': 'invalid',
      },
      name: 'auth_text_dateFormat',
      desc: '',
      args: [format],
    );
  }

  /// `Please enter the email associated with your account and press the "Send Email" button.  We will send you an email with the change password link.`
  String get auth_text_resetPasswordInstructions {
    return Intl.message(
      'Please enter the email associated with your account and press the "Send Email" button.  We will send you an email with the change password link.',
      name: 'auth_text_resetPasswordInstructions',
      desc: '',
      args: [],
    );
  }

  /// `{format, select, metric{Metric} imperial{Imperial} other{invalid}}`
  String auth_text_unitSystem(Object format) {
    return Intl.select(
      format,
      {
        'metric': 'Metric',
        'imperial': 'Imperial',
        'other': 'invalid',
      },
      name: 'auth_text_unitSystem',
      desc: '',
      args: [format],
    );
  }

  /// `Account`
  String get auth_title_accountPage {
    return Intl.message(
      'Account',
      name: 'auth_title_accountPage',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get auth_title_address {
    return Intl.message(
      'Address',
      name: 'auth_title_address',
      desc: '',
      args: [],
    );
  }

  /// `Bio`
  String get auth_title_biography {
    return Intl.message(
      'Bio',
      name: 'auth_title_biography',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get auth_title_createAccountPage {
    return Intl.message(
      'Create Account',
      name: 'auth_title_createAccountPage',
      desc: '',
      args: [],
    );
  }

  /// `Date Format`
  String get auth_title_dateFormat {
    return Intl.message(
      'Date Format',
      name: 'auth_title_dateFormat',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get auth_title_firstName {
    return Intl.message(
      'First Name',
      name: 'auth_title_firstName',
      desc: '',
      args: [],
    );
  }

  /// `Last Name`
  String get auth_title_lastName {
    return Intl.message(
      'Last Name',
      name: 'auth_title_lastName',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get auth_title_loginPage {
    return Intl.message(
      'Login',
      name: 'auth_title_loginPage',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get auth_title_phone {
    return Intl.message(
      'Phone Number',
      name: 'auth_title_phone',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get auth_title_resetPasswordPage {
    return Intl.message(
      'Reset Password',
      name: 'auth_title_resetPasswordPage',
      desc: '',
      args: [],
    );
  }

  /// `Unit System`
  String get auth_title_unitSystem {
    return Intl.message(
      'Unit System',
      name: 'auth_title_unitSystem',
      desc: '',
      args: [],
    );
  }

  /// `Add Apiary`
  String get button_add_apiary {
    return Intl.message(
      'Add Apiary',
      name: 'button_add_apiary',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get common_button_account {
    return Intl.message(
      'Account',
      name: 'common_button_account',
      desc: '',
      args: [],
    );
  }

  /// `ADD TASK`
  String get common_button_addTask {
    return Intl.message(
      'ADD TASK',
      name: 'common_button_addTask',
      desc: '',
      args: [],
    );
  }

  /// `Alerts`
  String get common_button_alerts {
    return Intl.message(
      'Alerts',
      name: 'common_button_alerts',
      desc: '',
      args: [],
    );
  }

  /// `CONNECT`
  String get common_button_connect {
    return Intl.message(
      'CONNECT',
      name: 'common_button_connect',
      desc: '',
      args: [],
    );
  }

  /// `Contact`
  String get common_button_contact {
    return Intl.message(
      'Contact',
      name: 'common_button_contact',
      desc: '',
      args: [],
    );
  }

  /// `DELETE`
  String get common_button_delete {
    return Intl.message(
      'DELETE',
      name: 'common_button_delete',
      desc: '',
      args: [],
    );
  }

  /// `DOWNLOAD`
  String get common_button_download {
    return Intl.message(
      'DOWNLOAD',
      name: 'common_button_download',
      desc: '',
      args: [],
    );
  }

  /// `EDIT`
  String get common_button_edit {
    return Intl.message(
      'EDIT',
      name: 'common_button_edit',
      desc: '',
      args: [],
    );
  }

  /// `FILE`
  String get common_button_file {
    return Intl.message(
      'FILE',
      name: 'common_button_file',
      desc: '',
      args: [],
    );
  }

  /// `FILE(S)`
  String get common_button_files {
    return Intl.message(
      'FILE(S)',
      name: 'common_button_files',
      desc: '',
      args: [],
    );
  }

  /// `Hardware`
  String get common_button_hardware {
    return Intl.message(
      'Hardware',
      name: 'common_button_hardware',
      desc: '',
      args: [],
    );
  }

  /// `Help`
  String get common_button_help {
    return Intl.message(
      'Help',
      name: 'common_button_help',
      desc: '',
      args: [],
    );
  }

  /// `HOME`
  String get common_button_home {
    return Intl.message(
      'HOME',
      name: 'common_button_home',
      desc: '',
      args: [],
    );
  }

  /// `New Features`
  String get common_button_newFeatures {
    return Intl.message(
      'New Features',
      name: 'common_button_newFeatures',
      desc: '',
      args: [],
    );
  }

  /// `PHOTO`
  String get common_button_photo {
    return Intl.message(
      'PHOTO',
      name: 'common_button_photo',
      desc: '',
      args: [],
    );
  }

  /// `REPORT ISSUE`
  String get common_button_reportIssue {
    return Intl.message(
      'REPORT ISSUE',
      name: 'common_button_reportIssue',
      desc: '',
      args: [],
    );
  }

  /// `REFRESH`
  String get common_button_retry {
    return Intl.message(
      'REFRESH',
      name: 'common_button_retry',
      desc: '',
      args: [],
    );
  }

  /// `SAVE`
  String get common_button_save {
    return Intl.message(
      'SAVE',
      name: 'common_button_save',
      desc: '',
      args: [],
    );
  }

  /// `SEARCH`
  String get common_button_search {
    return Intl.message(
      'SEARCH',
      name: 'common_button_search',
      desc: '',
      args: [],
    );
  }

  /// `SETTINGS`
  String get common_button_settings {
    return Intl.message(
      'SETTINGS',
      name: 'common_button_settings',
      desc: '',
      args: [],
    );
  }

  /// `SIGN OUT`
  String get common_button_signOut {
    return Intl.message(
      'SIGN OUT',
      name: 'common_button_signOut',
      desc: '',
      args: [],
    );
  }

  /// `TASKS`
  String get common_button_tasks {
    return Intl.message(
      'TASKS',
      name: 'common_button_tasks',
      desc: '',
      args: [],
    );
  }

  /// `{type, select, common_error_serverError{Something went wrong while we were talking with our server. Please try again and if the problem persists, reach out to us for support.} common_error_insufficientPermission{You have insufficient permission to access this document. Please check you with your admin for adding permissions.} common_error_emulatorError{Emulator Error.} common_error_noWeatherData{There is no weather data for your apiaries location.  Please check that the location is valid and if the problem persists, please contact us for support.} common_error_location{There was a problem when retreiving the location.  Please check the location is valid and if the problem persists, please contact us for support.} common_error_missingLocationPermission{You have not given permission to use the device's location.  In order to use this feature, please update your permissions in your settings.} common_error_missingCameraPermission{You have not given permission to use the device's camera. In order to use this feature, please update your permissions in your settings.} common_error_missingGalleryPermission{You have not given permission to use the device's pictures. In order to use this feature, please update your permissions in your settings.} hive_error_invalidDocument{The document is invalid or corrupt.  Please note the ID in the top right and contact us for support.} common_error_missingTasks{You don’t have any tasks currently on this apiary. You can add a new task by clicking the button below. If you think there is an error then try refresh the page from the menu in top right.} other{Unknown}}`
  String common_error_commonFailure(Object type) {
    return Intl.select(
      type,
      {
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
      },
      name: 'common_error_commonFailure',
      desc: '',
      args: [type],
    );
  }

  /// `No Feedings`
  String get common_error_noFeedingsTitle {
    return Intl.message(
      'No Feedings',
      name: 'common_error_noFeedingsTitle',
      desc: '',
      args: [],
    );
  }

  /// `You don’t have any harvests for this hive yet.  Add your first harvest in order to update your hive.`
  String get common_error_noHarvestsMessage {
    return Intl.message(
      'You don’t have any harvests for this hive yet.  Add your first harvest in order to update your hive.',
      name: 'common_error_noHarvestsMessage',
      desc: '',
      args: [],
    );
  }

  /// `No Harvests`
  String get common_error_noHarvestsTitle {
    return Intl.message(
      'No Harvests',
      name: 'common_error_noHarvestsTitle',
      desc: '',
      args: [],
    );
  }

  /// `No Inspections`
  String get common_error_noInspectionsTitle {
    return Intl.message(
      'No Inspections',
      name: 'common_error_noInspectionsTitle',
      desc: '',
      args: [],
    );
  }

  /// `No Status`
  String get common_error_noStatusTitle {
    return Intl.message(
      'No Status',
      name: 'common_error_noStatusTitle',
      desc: '',
      args: [],
    );
  }

  /// `Insufficient Permission`
  String get common_error_permissionTitle {
    return Intl.message(
      'Insufficient Permission',
      name: 'common_error_permissionTitle',
      desc: '',
      args: [],
    );
  }

  /// `Server Error`
  String get common_error_serverTitle {
    return Intl.message(
      'Server Error',
      name: 'common_error_serverTitle',
      desc: '',
      args: [],
    );
  }

  /// `{type, select, common_error_serverError{Something went wrong while we were talking with our server. Please try again and if the problem percists, reach out to us for support.} common_error_insufficientPermission{You have insufficient permission to access this document. Please check you with your admin for adding permissions.} common_error_emulatorError{Emulator Error.} common_error_missingValue{Please enter a value} common_error_invalidEntity{The selected value is invalid. Please select another.} auth_error_invalidEmail{Please enter a valid email.} auth_error_shortPassword{Please use a password longer than 8 characters.} auth_error_invalidPassword{Please include (at least) one capital letter and number.} auth_error_longDisplayName{Please enter a shorter display name (max 16 char).} auth_error_invalidDisplayName{Please enter a valid display name. Avoid special characters and symbols.} auth_error_invalidDateFormat{Please enter a valid date format.} auth_error_invalidUnitSystem{Please enter a valid unit system.} common_error_invalidTaskPriority{Please enter a valid priority.} common_error_invalidObservation{Please enter a valid observation.} common_error_invalidNormal{Please enter a value between 0 and 1.} common_error_invalidAmount{Please enter a valid amount. Can not be a negative amount.} common_error_invalidLogType{Please enter a valid log type.} other{Unknown}}`
  String common_error_valueFailure(Object type) {
    return Intl.select(
      type,
      {
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
        'common_error_invalidTaskPriority': 'Please enter a valid priority.',
        'common_error_invalidObservation': 'Please enter a valid observation.',
        'common_error_invalidNormal': 'Please enter a value between 0 and 1.',
        'common_error_invalidAmount':
            'Please enter a valid amount. Can not be a negative amount.',
        'common_error_invalidLogType': 'Please enter a valid log type.',
        'other': 'Unknown',
      },
      name: 'common_error_valueFailure',
      desc: '',
      args: [type],
    );
  }

  /// `Software`
  String get commone_word_software {
    return Intl.message(
      'Software',
      name: 'commone_word_software',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get common_form_dateTitle {
    return Intl.message(
      'Date',
      name: 'common_form_dateTitle',
      desc: '',
      args: [],
    );
  }

  /// `Edit Task`
  String get common_form_editTaskTitle {
    return Intl.message(
      'Edit Task',
      name: 'common_form_editTaskTitle',
      desc: '',
      args: [],
    );
  }

  /// `New Task`
  String get common_form_newTaskTitle {
    return Intl.message(
      'New Task',
      name: 'common_form_newTaskTitle',
      desc: '',
      args: [],
    );
  }

  /// `Picture(s)`
  String get common_form_picturesTitle {
    return Intl.message(
      'Picture(s)',
      name: 'common_form_picturesTitle',
      desc: '',
      args: [],
    );
  }

  /// `Picture`
  String get common_form_pictureTitle {
    return Intl.message(
      'Picture',
      name: 'common_form_pictureTitle',
      desc: '',
      args: [],
    );
  }

  /// `Severity`
  String get common_form_severityTitle {
    return Intl.message(
      'Severity',
      name: 'common_form_severityTitle',
      desc: '',
      args: [],
    );
  }

  /// `Write a short description of the task.`
  String get common_form_taskDescriptionHelper {
    return Intl.message(
      'Write a short description of the task.',
      name: 'common_form_taskDescriptionHelper',
      desc: '',
      args: [],
    );
  }

  /// `Task Description`
  String get common_form_taskDescriptionTitle {
    return Intl.message(
      'Task Description',
      name: 'common_form_taskDescriptionTitle',
      desc: '',
      args: [],
    );
  }

  /// `Select the due date for the task.`
  String get common_form_taskDueDateHelper {
    return Intl.message(
      'Select the due date for the task.',
      name: 'common_form_taskDueDateHelper',
      desc: '',
      args: [],
    );
  }

  /// `Due Date`
  String get common_form_taskDueDateTitle {
    return Intl.message(
      'Due Date',
      name: 'common_form_taskDueDateTitle',
      desc: '',
      args: [],
    );
  }

  /// `Select the priority of the task.`
  String get common_form_taskPriorityHelper {
    return Intl.message(
      'Select the priority of the task.',
      name: 'common_form_taskPriorityHelper',
      desc: '',
      args: [],
    );
  }

  /// `Priority`
  String get common_form_taskPriorityTitle {
    return Intl.message(
      'Priority',
      name: 'common_form_taskPriorityTitle',
      desc: '',
      args: [],
    );
  }

  /// `Show Archived`
  String get common_input_showArchived {
    return Intl.message(
      'Show Archived',
      name: 'common_input_showArchived',
      desc: '',
      args: [],
    );
  }

  /// `Need more help? contact us`
  String get common_message_contact {
    return Intl.message(
      'Need more help? contact us',
      name: 'common_message_contact',
      desc: '',
      args: [],
    );
  }

  /// `Common Failure`
  String get common_message_failureTitle {
    return Intl.message(
      'Common Failure',
      name: 'common_message_failureTitle',
      desc: '',
      args: [],
    );
  }

  /// `Missing ID`
  String get common_message_missingId {
    return Intl.message(
      'Missing ID',
      name: 'common_message_missingId',
      desc: '',
      args: [],
    );
  }

  /// `You don’t have any tasks currently on this apiary.  You can add a new task by clicking the button below.`
  String get common_message_noTasksMessage {
    return Intl.message(
      'You don’t have any tasks currently on this apiary.  You can add a new task by clicking the button below.',
      name: 'common_message_noTasksMessage',
      desc: '',
      args: [],
    );
  }

  /// `No Tasks`
  String get common_message_noTasksTitle {
    return Intl.message(
      'No Tasks',
      name: 'common_message_noTasksTitle',
      desc: '',
      args: [],
    );
  }

  /// `You don’t have any tasks currently on this apiary.  You can navigate to your apiary or hive and click the task tab to add tasks.`
  String get common_message_noUserTasksMessage {
    return Intl.message(
      'You don’t have any tasks currently on this apiary.  You can navigate to your apiary or hive and click the task tab to add tasks.',
      name: 'common_message_noUserTasksMessage',
      desc: '',
      args: [],
    );
  }

  /// `Tasks`
  String get common_nav_tasksTitle {
    return Intl.message(
      'Tasks',
      name: 'common_nav_tasksTitle',
      desc: '',
      args: [],
    );
  }

  /// `{type, select, common_error_serverError{Server Error} common_error_insufficientPermission{Insufficient Permissions} common_error_emulatorError{Emulator Error} common_error_noWeatherData{No Weather} common_error_location{Location Error} common_error_missingLocationPermission{Missing Location Permissions} common_error_missingCameraPermission{Missing Camera Permissions} common_error_missingGalleryPermission{Missing Gallery Permissions} hive_error_invalidDocument{Invalid Document} common_error_missingTasks{Missing Tasks} other{Unknown}}`
  String common_snack_commonFailure(Object type) {
    return Intl.select(
      type,
      {
        'common_error_serverError': 'Server Error',
        'common_error_insufficientPermission': 'Insufficient Permissions',
        'common_error_emulatorError': 'Emulator Error',
        'common_error_noWeatherData': 'No Weather',
        'common_error_location': 'Location Error',
        'common_error_missingLocationPermission':
            'Missing Location Permissions',
        'common_error_missingCameraPermission': 'Missing Camera Permissions',
        'common_error_missingGalleryPermission': 'Missing Gallery Permissions',
        'hive_error_invalidDocument': 'Invalid Document',
        'common_error_missingTasks': 'Missing Tasks',
        'other': 'Unknown',
      },
      name: 'common_snack_commonFailure',
      desc: '',
      args: [type],
    );
  }

  /// `Dismiss`
  String get common_snack_dismiss {
    return Intl.message(
      'Dismiss',
      name: 'common_snack_dismiss',
      desc: '',
      args: [],
    );
  }

  /// `Task Created`
  String get common_snack_taskCreated {
    return Intl.message(
      'Task Created',
      name: 'common_snack_taskCreated',
      desc: '',
      args: [],
    );
  }

  /// `Task Deleted`
  String get common_snack_taskDeleted {
    return Intl.message(
      'Task Deleted',
      name: 'common_snack_taskDeleted',
      desc: '',
      args: [],
    );
  }

  /// `Task Saved`
  String get common_snack_taskSaved {
    return Intl.message(
      'Task Saved',
      name: 'common_snack_taskSaved',
      desc: '',
      args: [],
    );
  }

  /// `Contact`
  String get common_table_contact {
    return Intl.message(
      'Contact',
      name: 'common_table_contact',
      desc: '',
      args: [],
    );
  }

  /// `CTRL`
  String get common_table_controls {
    return Intl.message(
      'CTRL',
      name: 'common_table_controls',
      desc: '',
      args: [],
    );
  }

  /// `Device`
  String get common_table_device {
    return Intl.message(
      'Device',
      name: 'common_table_device',
      desc: '',
      args: [],
    );
  }

  /// `ERR.`
  String get common_table_error {
    return Intl.message(
      'ERR.',
      name: 'common_table_error',
      desc: '',
      args: [],
    );
  }

  /// `Errors`
  String get common_table_errors {
    return Intl.message(
      'Errors',
      name: 'common_table_errors',
      desc: '',
      args: [],
    );
  }

  /// `HiveID`
  String get common_table_hiveId {
    return Intl.message(
      'HiveID',
      name: 'common_table_hiveId',
      desc: '',
      args: [],
    );
  }

  /// `Registered`
  String get common_table_registered {
    return Intl.message(
      'Registered',
      name: 'common_table_registered',
      desc: '',
      args: [],
    );
  }

  /// `Treat`
  String get common_table_treatment {
    return Intl.message(
      'Treat',
      name: 'common_table_treatment',
      desc: '',
      args: [],
    );
  }

  /// `{bool, select, true{True} false{False} other{Unknown}}`
  String common_text_boolean(Object bool) {
    return Intl.select(
      bool,
      {
        'true': 'True',
        'false': 'False',
        'other': 'Unknown',
      },
      name: 'common_text_boolean',
      desc: '',
      args: [bool],
    );
  }

  /// `Failed!`
  String get common_text_failed {
    return Intl.message(
      'Failed!',
      name: 'common_text_failed',
      desc: '',
      args: [],
    );
  }

  /// `Initializing...`
  String get common_text_initialize {
    return Intl.message(
      'Initializing...',
      name: 'common_text_initialize',
      desc: '',
      args: [],
    );
  }

  /// `Loading...`
  String get common_text_loading {
    return Intl.message(
      'Loading...',
      name: 'common_text_loading',
      desc: '',
      args: [],
    );
  }

  /// `No Sensor Data...`
  String get common_text_missingData {
    return Intl.message(
      'No Sensor Data...',
      name: 'common_text_missingData',
      desc: '',
      args: [],
    );
  }

  /// `{type, select, LOW{Low} MEDIUM{Medium} HIGH{High} other{Unknown}}`
  String common_text_severity(Object type) {
    return Intl.select(
      type,
      {
        'LOW': 'Low',
        'MEDIUM': 'Medium',
        'HIGH': 'High',
        'other': 'Unknown',
      },
      name: 'common_text_severity',
      desc: '',
      args: [type],
    );
  }

  /// `Weather`
  String get common_text_weather {
    return Intl.message(
      'Weather',
      name: 'common_text_weather',
      desc: '',
      args: [],
    );
  }

  /// `{page, select, ConnectTab{Connect} AlertsRoute{Alerts} HardwareRoute{Hardware} HardwareDetailsRoute{Details} other{Page}}`
  String common_title_pages(Object page) {
    return Intl.select(
      page,
      {
        'ConnectTab': 'Connect',
        'AlertsRoute': 'Alerts',
        'HardwareRoute': 'Hardware',
        'HardwareDetailsRoute': 'Details',
        'other': 'Page',
      },
      name: 'common_title_pages',
      desc: '',
      args: [page],
    );
  }

  /// `{units, select, UNITS_METRIC{{value} °C} UNITS_IMPERIAL{{value} °F} other{{value} °C}}`
  String common_units_temperatureValue(Object units, Object value) {
    return Intl.select(
      units,
      {
        'UNITS_METRIC': '$value °C',
        'UNITS_IMPERIAL': '$value °F',
        'other': '$value °C',
      },
      name: 'common_units_temperatureValue',
      desc: '',
      args: [units, value],
    );
  }

  /// `{units, select, UNITS_METRIC{{value} Kg} UNITS_IMPERIAL{{value} lb} other{{value} Kg}}`
  String common_units_weightValue(Object units, Object value) {
    return Intl.select(
      units,
      {
        'UNITS_METRIC': '$value Kg',
        'UNITS_IMPERIAL': '$value lb',
        'other': '$value Kg',
      },
      name: 'common_units_weightValue',
      desc: '',
      args: [units, value],
    );
  }

  /// `Activity`
  String get common_word_activity {
    return Intl.message(
      'Activity',
      name: 'common_word_activity',
      desc: '',
      args: [],
    );
  }

  /// `All Time`
  String get common_word_allTime {
    return Intl.message(
      'All Time',
      name: 'common_word_allTime',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get common_word_amount {
    return Intl.message(
      'Amount',
      name: 'common_word_amount',
      desc: '',
      args: [],
    );
  }

  /// `AMT`
  String get common_word_Amt {
    return Intl.message(
      'AMT',
      name: 'common_word_Amt',
      desc: '',
      args: [],
    );
  }

  /// `Apiary`
  String get common_word_apiary {
    return Intl.message(
      'Apiary',
      name: 'common_word_apiary',
      desc: '',
      args: [],
    );
  }

  /// `Average`
  String get common_word_average {
    return Intl.message(
      'Average',
      name: 'common_word_average',
      desc: '',
      args: [],
    );
  }

  /// `Bees`
  String get common_word_bees {
    return Intl.message(
      'Bees',
      name: 'common_word_bees',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get common_word_cancel {
    return Intl.message(
      'Cancel',
      name: 'common_word_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Caught`
  String get common_word_caught {
    return Intl.message(
      'Caught',
      name: 'common_word_caught',
      desc: '',
      args: [],
    );
  }

  /// `Colonies`
  String get common_word_colonies {
    return Intl.message(
      'Colonies',
      name: 'common_word_colonies',
      desc: '',
      args: [],
    );
  }

  /// `Colour`
  String get common_word_colour {
    return Intl.message(
      'Colour',
      name: 'common_word_colour',
      desc: '',
      args: [],
    );
  }

  /// `Commands`
  String get common_word_commands {
    return Intl.message(
      'Commands',
      name: 'common_word_commands',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get common_word_confirm {
    return Intl.message(
      'Confirm',
      name: 'common_word_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Connection`
  String get common_word_connection {
    return Intl.message(
      'Connection',
      name: 'common_word_connection',
      desc: '',
      args: [],
    );
  }

  /// `Controls`
  String get common_word_controls {
    return Intl.message(
      'Controls',
      name: 'common_word_controls',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get common_word_date {
    return Intl.message(
      'Date',
      name: 'common_word_date',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, zero{Days} one{Day} other{Days}}`
  String common_word_day(num count) {
    return Intl.plural(
      count,
      zero: 'Days',
      one: 'Day',
      other: 'Days',
      name: 'common_word_day',
      desc: '',
      args: [count],
    );
  }

  /// `Defence`
  String get common_word_defence {
    return Intl.message(
      'Defence',
      name: 'common_word_defence',
      desc: '',
      args: [],
    );
  }

  /// `Disconnected`
  String get common_word_disconnected {
    return Intl.message(
      'Disconnected',
      name: 'common_word_disconnected',
      desc: '',
      args: [],
    );
  }

  /// `Display Name`
  String get common_word_displayName {
    return Intl.message(
      'Display Name',
      name: 'common_word_displayName',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get common_word_email {
    return Intl.message(
      'Email',
      name: 'common_word_email',
      desc: '',
      args: [],
    );
  }

  /// `Empty`
  String get common_word_empty {
    return Intl.message(
      'Empty',
      name: 'common_word_empty',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get common_word_english {
    return Intl.message(
      'English',
      name: 'common_word_english',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get common_word_error {
    return Intl.message(
      'Error',
      name: 'common_word_error',
      desc: '',
      args: [],
    );
  }

  /// `French`
  String get common_word_french {
    return Intl.message(
      'French',
      name: 'common_word_french',
      desc: '',
      args: [],
    );
  }

  /// `German`
  String get common_word_german {
    return Intl.message(
      'German',
      name: 'common_word_german',
      desc: '',
      args: [],
    );
  }

  /// `Hardware`
  String get common_word_hardware {
    return Intl.message(
      'Hardware',
      name: 'common_word_hardware',
      desc: '',
      args: [],
    );
  }

  /// `Harvests`
  String get common_word_harvests {
    return Intl.message(
      'Harvests',
      name: 'common_word_harvests',
      desc: '',
      args: [],
    );
  }

  /// `Heartbeat`
  String get common_word_heartbeat {
    return Intl.message(
      'Heartbeat',
      name: 'common_word_heartbeat',
      desc: '',
      args: [],
    );
  }

  /// `HIGH`
  String get common_word_high {
    return Intl.message(
      'HIGH',
      name: 'common_word_high',
      desc: '',
      args: [],
    );
  }

  /// `Hive`
  String get common_word_hive {
    return Intl.message(
      'Hive',
      name: 'common_word_hive',
      desc: '',
      args: [],
    );
  }

  /// `Honey`
  String get common_word_honey {
    return Intl.message(
      'Honey',
      name: 'common_word_honey',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, zero{Hours} one{Hour} other{Hours}}`
  String common_word_hour(num count) {
    return Intl.plural(
      count,
      zero: 'Hours',
      one: 'Hour',
      other: 'Hours',
      name: 'common_word_hour',
      desc: '',
      args: [count],
    );
  }

  /// `Humidity`
  String get common_word_humidity {
    return Intl.message(
      'Humidity',
      name: 'common_word_humidity',
      desc: '',
      args: [],
    );
  }

  /// `ID`
  String get common_word_id {
    return Intl.message(
      'ID',
      name: 'common_word_id',
      desc: '',
      args: [],
    );
  }

  /// `Ideal`
  String get common_word_ideal {
    return Intl.message(
      'Ideal',
      name: 'common_word_ideal',
      desc: '',
      args: [],
    );
  }

  /// `Italian`
  String get common_word_italian {
    return Intl.message(
      'Italian',
      name: 'common_word_italian',
      desc: '',
      args: [],
    );
  }

  /// `Last Season`
  String get common_word_lastSeason {
    return Intl.message(
      'Last Season',
      name: 'common_word_lastSeason',
      desc: '',
      args: [],
    );
  }

  /// `LOW`
  String get common_word_low {
    return Intl.message(
      'LOW',
      name: 'common_word_low',
      desc: '',
      args: [],
    );
  }

  /// `MID`
  String get common_word_medium {
    return Intl.message(
      'MID',
      name: 'common_word_medium',
      desc: '',
      args: [],
    );
  }

  /// `missing`
  String get common_word_missing {
    return Intl.message(
      'missing',
      name: 'common_word_missing',
      desc: '',
      args: [],
    );
  }

  /// `Mood`
  String get common_word_mood {
    return Intl.message(
      'Mood',
      name: 'common_word_mood',
      desc: '',
      args: [],
    );
  }

  /// `NOTES`
  String get common_word_notesSection {
    return Intl.message(
      'NOTES',
      name: 'common_word_notesSection',
      desc: '',
      args: [],
    );
  }

  /// `Origin`
  String get common_word_origin {
    return Intl.message(
      'Origin',
      name: 'common_word_origin',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get common_word_password {
    return Intl.message(
      'Password',
      name: 'common_word_password',
      desc: '',
      args: [],
    );
  }

  /// `Pattern`
  String get common_word_pattern {
    return Intl.message(
      'Pattern',
      name: 'common_word_pattern',
      desc: '',
      args: [],
    );
  }

  /// `Queen`
  String get common_word_queen {
    return Intl.message(
      'Queen',
      name: 'common_word_queen',
      desc: '',
      args: [],
    );
  }

  /// `Queens`
  String get common_word_queens {
    return Intl.message(
      'Queens',
      name: 'common_word_queens',
      desc: '',
      args: [],
    );
  }

  /// `Read`
  String get common_word_read {
    return Intl.message(
      'Read',
      name: 'common_word_read',
      desc: '',
      args: [],
    );
  }

  /// `Selected`
  String get common_word_selected {
    return Intl.message(
      'Selected',
      name: 'common_word_selected',
      desc: '',
      args: [],
    );
  }

  /// `Sort`
  String get common_word_sort {
    return Intl.message(
      'Sort',
      name: 'common_word_sort',
      desc: '',
      args: [],
    );
  }

  /// `STATUS`
  String get common_word_statusSection {
    return Intl.message(
      'STATUS',
      name: 'common_word_statusSection',
      desc: '',
      args: [],
    );
  }

  /// `Storage`
  String get common_word_storage {
    return Intl.message(
      'Storage',
      name: 'common_word_storage',
      desc: '',
      args: [],
    );
  }

  /// `Strength`
  String get common_word_strength {
    return Intl.message(
      'Strength',
      name: 'common_word_strength',
      desc: '',
      args: [],
    );
  }

  /// `Temperature`
  String get common_word_temperature {
    return Intl.message(
      'Temperature',
      name: 'common_word_temperature',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get common_word_theme {
    return Intl.message(
      'Theme',
      name: 'common_word_theme',
      desc: '',
      args: [],
    );
  }

  /// `This Season`
  String get common_word_thisSeason {
    return Intl.message(
      'This Season',
      name: 'common_word_thisSeason',
      desc: '',
      args: [],
    );
  }

  /// `Timestamp`
  String get common_word_timestamp {
    return Intl.message(
      'Timestamp',
      name: 'common_word_timestamp',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get common_word_total {
    return Intl.message(
      'Total',
      name: 'common_word_total',
      desc: '',
      args: [],
    );
  }

  /// `Total (weight)`
  String get common_word_totalWeight {
    return Intl.message(
      'Total (weight)',
      name: 'common_word_totalWeight',
      desc: '',
      args: [],
    );
  }

  /// `Treatment`
  String get common_word_treatment {
    return Intl.message(
      'Treatment',
      name: 'common_word_treatment',
      desc: '',
      args: [],
    );
  }

  /// `Type`
  String get common_word_type {
    return Intl.message(
      'Type',
      name: 'common_word_type',
      desc: '',
      args: [],
    );
  }

  /// `Varroa`
  String get common_word_varroa {
    return Intl.message(
      'Varroa',
      name: 'common_word_varroa',
      desc: '',
      args: [],
    );
  }

  /// `Weight`
  String get common_word_weight {
    return Intl.message(
      'Weight',
      name: 'common_word_weight',
      desc: '',
      args: [],
    );
  }

  /// `CONNECT`
  String get connect_button_connect {
    return Intl.message(
      'CONNECT',
      name: 'connect_button_connect',
      desc: '',
      args: [],
    );
  }

  /// `REINITIALIZE`
  String get connect_button_reinitialize {
    return Intl.message(
      'REINITIALIZE',
      name: 'connect_button_reinitialize',
      desc: '',
      args: [],
    );
  }

  /// `SCAN`
  String get connect_button_scan {
    return Intl.message(
      'SCAN',
      name: 'connect_button_scan',
      desc: '',
      args: [],
    );
  }

  /// `There was an error while connecting with Bluetooth.  Please check your Bluetooth is turned on and try again.`
  String get connect_card_bluetoothErrorMessage {
    return Intl.message(
      'There was an error while connecting with Bluetooth.  Please check your Bluetooth is turned on and try again.',
      name: 'connect_card_bluetoothErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Bluetooth Error`
  String get connect_card_bluetoothErrorTitle {
    return Intl.message(
      'Bluetooth Error',
      name: 'connect_card_bluetoothErrorTitle',
      desc: '',
      args: [],
    );
  }

  /// `Debug Error`
  String get connect_card_debugErrorTitle {
    return Intl.message(
      'Debug Error',
      name: 'connect_card_debugErrorTitle',
      desc: '',
      args: [],
    );
  }

  /// `Sometimes during connection, not all of the files are downloaded correctly.  Please check the list below and retry any files that failed to load.  If you are unable to download the files, please turn off the ApiBrain and wait 10 before resetting and trying again.`
  String get connect_card_failedDownload {
    return Intl.message(
      'Sometimes during connection, not all of the files are downloaded correctly.  Please check the list below and retry any files that failed to load.  If you are unable to download the files, please turn off the ApiBrain and wait 10 before resetting and trying again.',
      name: 'connect_card_failedDownload',
      desc: '',
      args: [],
    );
  }

  /// `Click the button to start scanning with Bluetooth for any nearby Vatorex hardware.  Make sure your Bluetooth is enabled on your phone and on the hardware.`
  String get connect_card_initialText {
    return Intl.message(
      'Click the button to start scanning with Bluetooth for any nearby Vatorex hardware.  Make sure your Bluetooth is enabled on your phone and on the hardware.',
      name: 'connect_card_initialText',
      desc: '',
      args: [],
    );
  }

  /// `Scanning with Bluetooth`
  String get connect_card_scanTitle {
    return Intl.message(
      'Scanning with Bluetooth',
      name: 'connect_card_scanTitle',
      desc: '',
      args: [],
    );
  }

  /// `Connection Timeout, make sure your device is connected.`
  String get connect_card_timeoutMessage {
    return Intl.message(
      'Connection Timeout, make sure your device is connected.',
      name: 'connect_card_timeoutMessage',
      desc: '',
      args: [],
    );
  }

  /// `Apibrain is not connected.  Please check that your hardware is turned on and the Bluetooth light is active.`
  String get connect_card_turnOnBluetoothText {
    return Intl.message(
      'Apibrain is not connected.  Please check that your hardware is turned on and the Bluetooth light is active.',
      name: 'connect_card_turnOnBluetoothText',
      desc: '',
      args: [],
    );
  }

  /// `Apibrain not connected`
  String get connect_card_turnOnBluetoothTitle {
    return Intl.message(
      'Apibrain not connected',
      name: 'connect_card_turnOnBluetoothTitle',
      desc: '',
      args: [],
    );
  }

  /// `Get Config`
  String get connect_debug_getConfigTitle {
    return Intl.message(
      'Get Config',
      name: 'connect_debug_getConfigTitle',
      desc: '',
      args: [],
    );
  }

  /// `Get Info`
  String get connect_debug_getInfoTitle {
    return Intl.message(
      'Get Info',
      name: 'connect_debug_getInfoTitle',
      desc: '',
      args: [],
    );
  }

  /// `Get State`
  String get connect_debug_getStateTitle {
    return Intl.message(
      'Get State',
      name: 'connect_debug_getStateTitle',
      desc: '',
      args: [],
    );
  }

  /// `Please connect to your device via bluetooth.`
  String get connect_error_connectBluetooth {
    return Intl.message(
      'Please connect to your device via bluetooth.',
      name: 'connect_error_connectBluetooth',
      desc: '',
      args: [],
    );
  }

  /// `Downloading files...`
  String get connect_loading_downloadingFiles {
    return Intl.message(
      'Downloading files...',
      name: 'connect_loading_downloadingFiles',
      desc: '',
      args: [],
    );
  }

  /// `CommLine Success`
  String get connect_message_commLineSuccess {
    return Intl.message(
      'CommLine Success',
      name: 'connect_message_commLineSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Success`
  String get connect_message_downloadSuccess {
    return Intl.message(
      'Success',
      name: 'connect_message_downloadSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Initialization Success`
  String get connect_message_initializeSuccess {
    return Intl.message(
      'Initialization Success',
      name: 'connect_message_initializeSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Missing CommLine`
  String get connect_message_missingCommLine {
    return Intl.message(
      'Missing CommLine',
      name: 'connect_message_missingCommLine',
      desc: '',
      args: [],
    );
  }

  /// `Not Initialized`
  String get connect_message_notInitialized {
    return Intl.message(
      'Not Initialized',
      name: 'connect_message_notInitialized',
      desc: '',
      args: [],
    );
  }

  /// `Connect Page`
  String get connect_page_title {
    return Intl.message(
      'Connect Page',
      name: 'connect_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Connection Error.`
  String get connect_snack_error {
    return Intl.message(
      'Connection Error.',
      name: 'connect_snack_error',
      desc: '',
      args: [],
    );
  }

  /// `Getting Initial Commands`
  String get connect_text_gettingCommands {
    return Intl.message(
      'Getting Initial Commands',
      name: 'connect_text_gettingCommands',
      desc: '',
      args: [],
    );
  }

  /// `Not Registered`
  String get connect_text_notRegistered {
    return Intl.message(
      'Not Registered',
      name: 'connect_text_notRegistered',
      desc: '',
      args: [],
    );
  }

  /// `Scanning Devices`
  String get connect_word_scanningDevices {
    return Intl.message(
      'Scanning Devices',
      name: 'connect_word_scanningDevices',
      desc: '',
      args: [],
    );
  }

  /// `{failure, select, database_error_missingUserDoc{Your user document is missing, please contact us for support.} database_error_missingUserSettings{Your user settings is missing, please contact us for support.} database_error_invalidUserDoc{Your user document is invalid, please contact us for support.} database_error_invalidUserSettings{Your user settings is invalid, please contact us for support.} common_error_permissionDenied{Insufficient permissions.} common_error_serverError{Server error.} other{Database error.}}`
  String database_error_databaseFailure(Object failure) {
    return Intl.select(
      failure,
      {
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
      },
      name: 'database_error_databaseFailure',
      desc: '',
      args: [failure],
    );
  }

  /// `{failure, select, database_error_invalidHiveType{Invalid Hive Type, please update.} other{Database error.}}`
  String database_error_valueFailure(Object failure) {
    return Intl.select(
      failure,
      {
        'database_error_invalidHiveType': 'Invalid Hive Type, please update.',
        'other': 'Database error.',
      },
      name: 'database_error_valueFailure',
      desc: '',
      args: [failure],
    );
  }

  /// `Saved.`
  String get database_message_saveSuccess {
    return Intl.message(
      'Saved.',
      name: 'database_message_saveSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Updated.`
  String get database_message_updateSuccess {
    return Intl.message(
      'Updated.',
      name: 'database_message_updateSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Database Failure`
  String get datatbase_card_errorTitle {
    return Intl.message(
      'Database Failure',
      name: 'datatbase_card_errorTitle',
      desc: '',
      args: [],
    );
  }

  /// `PROBIOTICS`
  String get feeding_page_probiotics {
    return Intl.message(
      'PROBIOTICS',
      name: 'feeding_page_probiotics',
      desc: '',
      args: [],
    );
  }

  /// `Without Probiotics`
  String get feeding_page_withoutProbiotics {
    return Intl.message(
      'Without Probiotics',
      name: 'feeding_page_withoutProbiotics',
      desc: '',
      args: [],
    );
  }

  /// `With Probiotics`
  String get feeding_page_withProbiotics {
    return Intl.message(
      'With Probiotics',
      name: 'feeding_page_withProbiotics',
      desc: '',
      args: [],
    );
  }

  /// `CREATE HARDWARE`
  String get hardware_button_createHardware {
    return Intl.message(
      'CREATE HARDWARE',
      name: 'hardware_button_createHardware',
      desc: '',
      args: [],
    );
  }

  /// `SCAN WITH NFC`
  String get hardware_button_nfcSearch {
    return Intl.message(
      'SCAN WITH NFC',
      name: 'hardware_button_nfcSearch',
      desc: '',
      args: [],
    );
  }

  /// `REGISTER HARDWARE`
  String get hardware_button_registerHardware {
    return Intl.message(
      'REGISTER HARDWARE',
      name: 'hardware_button_registerHardware',
      desc: '',
      args: [],
    );
  }

  /// `{type, select, APIBRAIN{SET APIARY} HIVE_CONNECT{SET HIVE} other{SET LOCATION}}`
  String hardware_button_setLocation(Object type) {
    return Intl.select(
      type,
      {
        'APIBRAIN': 'SET APIARY',
        'HIVE_CONNECT': 'SET HIVE',
        'other': 'SET LOCATION',
      },
      name: 'hardware_button_setLocation',
      desc: '',
      args: [type],
    );
  }

  /// `Test Connection`
  String get hardware_button_testConnection {
    return Intl.message(
      'Test Connection',
      name: 'hardware_button_testConnection',
      desc: '',
      args: [],
    );
  }

  /// `Test Setup`
  String get hardware_button_testSetup {
    return Intl.message(
      'Test Setup',
      name: 'hardware_button_testSetup',
      desc: '',
      args: [],
    );
  }

  /// `The document for this hardware is not found on our system.  This probably means that the Apibrain has not yet connected via IoT.  You can create the document using the button below and it will update during the next IoT cycle.`
  String get hardware_card_createHardwareMessage {
    return Intl.message(
      'The document for this hardware is not found on our system.  This probably means that the Apibrain has not yet connected via IoT.  You can create the document using the button below and it will update during the next IoT cycle.',
      name: 'hardware_card_createHardwareMessage',
      desc: '',
      args: [],
    );
  }

  /// `Hardware Failure`
  String get hardware_card_errorTitle {
    return Intl.message(
      'Hardware Failure',
      name: 'hardware_card_errorTitle',
      desc: '',
      args: [],
    );
  }

  /// `The document you are looking for is not on the connected hardware or in our database.  Please turn off and on the device and try again.`
  String get hardware_card_missingHardwareData {
    return Intl.message(
      'The document you are looking for is not on the connected hardware or in our database.  Please turn off and on the device and try again.',
      name: 'hardware_card_missingHardwareData',
      desc: '',
      args: [],
    );
  }

  /// `There is no Vatorex hardware attached to this apiary.  If you have Vatorex hardware and would like to link it to your account, please download the Hive Connector app, register your hardware, and set the location. \n\nIf you think there is an error then try refresh the page from the menu in top right.`
  String get hardware_card_noHardwareMessage {
    return Intl.message(
      'There is no Vatorex hardware attached to this apiary.  If you have Vatorex hardware and would like to link it to your account, please download the Hive Connector app, register your hardware, and set the location. \n\nIf you think there is an error then try refresh the page from the menu in top right.',
      name: 'hardware_card_noHardwareMessage',
      desc: '',
      args: [],
    );
  }

  /// `Hardware Not Found.`
  String get hardware_card_noHardwareTitle {
    return Intl.message(
      'Hardware Not Found.',
      name: 'hardware_card_noHardwareTitle',
      desc: '',
      args: [],
    );
  }

  /// `Unregistered Hardware`
  String get hardware_card_unregisteredTitle {
    return Intl.message(
      'Unregistered Hardware',
      name: 'hardware_card_unregisteredTitle',
      desc: '',
      args: [],
    );
  }

  /// `since Sync`
  String get hardware_chartTitle_sinceSync {
    return Intl.message(
      'since Sync',
      name: 'hardware_chartTitle_sinceSync',
      desc: '',
      args: [],
    );
  }

  /// `You dont have anywhere to add a hardware.`
  String get hardware_dialog_missingLocation {
    return Intl.message(
      'You dont have anywhere to add a hardware.',
      name: 'hardware_dialog_missingLocation',
      desc: '',
      args: [],
    );
  }

  /// `If you use the ‹Hive Manager› app, you will be able to see any sensor infomation from your Apiary or Hive.`
  String get hardware_dialog_setLocationHiveManager {
    return Intl.message(
      'If you use the ‹Hive Manager› app, you will be able to see any sensor infomation from your Apiary or Hive.',
      name: 'hardware_dialog_setLocationHiveManager',
      desc: '',
      args: [],
    );
  }

  /// `Select from the list below where you currently have this hardware.`
  String get hardware_dialog_setLocationInstruction {
    return Intl.message(
      'Select from the list below where you currently have this hardware.',
      name: 'hardware_dialog_setLocationInstruction',
      desc: '',
      args: [],
    );
  }

  /// `Set Location`
  String get hardware_dialog_setLocationTitle {
    return Intl.message(
      'Set Location',
      name: 'hardware_dialog_setLocationTitle',
      desc: '',
      args: [],
    );
  }

  /// `{failure, select, hardware_error_noConnect{We do not detect anything connected to this hardware.} hardware_error_noCombs{We do not detect any combs for this hardware.} hardware_error_noTemperature{We do not detect any recent temperature readings for this hardware.} hardware_error_noWeight{We do not detect any recent weight readings for this hardware.} hardware_error_noHeartbeat{We do not detect any recent heartbeats for this hardware.} hardware_error_noTreatments{We do not detect any recent treatments for this hardware.} other{Auxiliary hardware error.}}`
  String hardware_error_auxiliaryFailure(Object failure) {
    return Intl.select(
      failure,
      {
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
      },
      name: 'hardware_error_auxiliaryFailure',
      desc: '',
      args: [failure],
    );
  }

  /// `{failure, select, connect_error_timeout{Bluetooth timed out before finding any Vatorex hardware.  Please check that your hardware is turned on and the Bluetooth light is active.} connect_error_bluetoothNotAvailable{Bluetooth is not available.  Please check that your Bluetooth is turned on or that you have Bluetooth on this device.} connect_error_invalidBleResp{Invalid response from Bluetooth.  Please try again and if the problem persists, contact Vatorex for support.} connect_error_notConnected{The hardware is not connected via Bluetooth.  Please go back to the main page and try connect the hardware again.  If the problem continues, try turn off and on the hardware.} connect_error_deviceIsBusy{The hardware is currently busy with another action.  Please wait a few minutes and try again.} connect_error_alreadyConnected{The hardware is already connected.} connect_error_intialization{The hardware failed to initialize communication.  Please click connect to try again.  If the problem continues, try turning off and on the hardware.} connect_error_deviceNotPrepared{The hardware is not prepared.  Please wait a moment and try again.} connect_error_bluetoothError{Something went wrong while communicating with the Bluetooth.  Please check the error message below and try again.  If the problem continues, please contact us for assistance.} connect_error_notFound{No Vatorex hardware was found over Bluetooth.  Please make sure that the blue light is lit up on the hardware and try again.  You might need to be closer or turn off and on the hardware if the problem continues.} other{Bluetooth error.}}`
  String hardware_error_connectFailure(Object failure) {
    return Intl.select(
      failure,
      {
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
        'connect_error_alreadyConnected': 'The hardware is already connected.',
        'connect_error_intialization':
            'The hardware failed to initialize communication.  Please click connect to try again.  If the problem continues, try turning off and on the hardware.',
        'connect_error_deviceNotPrepared':
            'The hardware is not prepared.  Please wait a moment and try again.',
        'connect_error_bluetoothError':
            'Something went wrong while communicating with the Bluetooth.  Please check the error message below and try again.  If the problem continues, please contact us for assistance.',
        'connect_error_notFound':
            'No Vatorex hardware was found over Bluetooth.  Please make sure that the blue light is lit up on the hardware and try again.  You might need to be closer or turn off and on the hardware if the problem continues.',
        'other': 'Bluetooth error.',
      },
      name: 'hardware_error_connectFailure',
      desc: '',
      args: [failure],
    );
  }

  /// `{failure, select, ERROR_EEPROM{EEPROM} ERROR_SHORT{SHORT} ERROR_NO_SOFTWARE{SOFTWARE} ERROR_LOAD{LOAD} ERROR_CONTACT{CONTACT} other{Hardware error.}}`
  String hardware_error_hardwareError(Object failure) {
    return Intl.select(
      failure,
      {
        'ERROR_EEPROM': 'EEPROM',
        'ERROR_SHORT': 'SHORT',
        'ERROR_NO_SOFTWARE': 'SOFTWARE',
        'ERROR_LOAD': 'LOAD',
        'ERROR_CONTACT': 'CONTACT',
        'other': 'Hardware error.',
      },
      name: 'hardware_error_hardwareError',
      desc: '',
      args: [failure],
    );
  }

  /// `{failure, select, hardware_error_notConnected{The hardware is not connected via Bluetooth.  You will need to first connect the device before being able to receive data and send commands.} hardware_error_missingHardwareDoc{The hardware document is missing, please contact us for support.} hardware_error_invalidHardwareDoc{The hardware document is invalid, please contact us for support.} hardware_error_noHardware{No hardware was found in our system.} hardware_error_alreadyRegistered{This hardware is already registered to someone else. Please contact the owner to grant access.} hardware_error_searchNotFound{No results.} hardware_error_nothingToSearch{No hardware is registered. Please register hardware before searching.} hardware_error_noHardwareLocation{No locations for hardware found.  Please add at least one apiary and hive to the ‹HiveManager› app.} hardware_error_sameLocationSet{The hardware is already located here.  Please select another location.} other{Hardware error.}}`
  String hardware_error_hardwareFailure(Object failure) {
    return Intl.select(
      failure,
      {
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
      },
      name: 'hardware_error_hardwareFailure',
      desc: '',
      args: [failure],
    );
  }

  /// `{failure, select, hardware_error_invalidType{Invalid hardware type.} other{Hardware value failure.}}`
  String hardware_error_valueFailure(Object failure) {
    return Intl.select(
      failure,
      {
        'hardware_error_invalidType': 'Invalid hardware type.',
        'other': 'Hardware value failure.',
      },
      name: 'hardware_error_valueFailure',
      desc: '',
      args: [failure],
    );
  }

  /// `Select Location`
  String get hardware_form_selectLocation {
    return Intl.message(
      'Select Location',
      name: 'hardware_form_selectLocation',
      desc: '',
      args: [],
    );
  }

  /// `Hardware has been disconnected...`
  String get hardware_loading_disconnected {
    return Intl.message(
      'Hardware has been disconnected...',
      name: 'hardware_loading_disconnected',
      desc: '',
      args: [],
    );
  }

  /// `By Apiary`
  String get hardware_menu_byApiary {
    return Intl.message(
      'By Apiary',
      name: 'hardware_menu_byApiary',
      desc: '',
      args: [],
    );
  }

  /// `By Hive`
  String get hardware_menu_byHive {
    return Intl.message(
      'By Hive',
      name: 'hardware_menu_byHive',
      desc: '',
      args: [],
    );
  }

  /// `By Hardware`
  String get hardware_menu_byType {
    return Intl.message(
      'By Hardware',
      name: 'hardware_menu_byType',
      desc: '',
      args: [],
    );
  }

  /// `{type, select, APIBRAIN{Change Apiary} HIVE_CONNECT{Change Hive} other{Change Location}}`
  String hardware_menu_changeLocation(Object type) {
    return Intl.select(
      type,
      {
        'APIBRAIN': 'Change Apiary',
        'HIVE_CONNECT': 'Change Hive',
        'other': 'Change Location',
      },
      name: 'hardware_menu_changeLocation',
      desc: '',
      args: [type],
    );
  }

  /// `Debug`
  String get hardware_menu_debug {
    return Intl.message(
      'Debug',
      name: 'hardware_menu_debug',
      desc: '',
      args: [],
    );
  }

  /// `Recent Registered`
  String get hardware_menu_recentlyRegistered {
    return Intl.message(
      'Recent Registered',
      name: 'hardware_menu_recentlyRegistered',
      desc: '',
      args: [],
    );
  }

  /// `Recent Synced`
  String get hardware_menu_recentlySynced {
    return Intl.message(
      'Recent Synced',
      name: 'hardware_menu_recentlySynced',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong while retrieving your document.  We're sorry for the issue, please contact support with this error.`
  String get hardware_message_cardInvalid {
    return Intl.message(
      'Something went wrong while retrieving your document.  We\'re sorry for the issue, please contact support with this error.',
      name: 'hardware_message_cardInvalid',
      desc: '',
      args: [],
    );
  }

  /// `The hardware document contains a value error: [{error}].  We're sorry for the issue, please contact support with this error.`
  String hardware_message_cardValueError(Object error) {
    return Intl.message(
      'The hardware document contains a value error: [$error].  We\'re sorry for the issue, please contact support with this error.',
      name: 'hardware_message_cardValueError',
      desc: '',
      args: [error],
    );
  }

  /// `You don't seem to have connected/registered any hardware.  Please connect your first device.`
  String get hardware_message_missingHardware {
    return Intl.message(
      'You don\'t seem to have connected/registered any hardware.  Please connect your first device.',
      name: 'hardware_message_missingHardware',
      desc: '',
      args: [],
    );
  }

  /// `Waiting for first sync...`
  String get hardware_message_waitingForSync {
    return Intl.message(
      'Waiting for first sync...',
      name: 'hardware_message_waitingForSync',
      desc: '',
      args: [],
    );
  }

  /// `Waiting for treatment...`
  String get hardware_message_waitingForTreatment {
    return Intl.message(
      'Waiting for treatment...',
      name: 'hardware_message_waitingForTreatment',
      desc: '',
      args: [],
    );
  }

  /// `Getting configurations.`
  String get hardware_test_getConfig {
    return Intl.message(
      'Getting configurations.',
      name: 'hardware_test_getConfig',
      desc: '',
      args: [],
    );
  }

  /// `Checking Logs.`
  String get hardware_test_needLog {
    return Intl.message(
      'Checking Logs.',
      name: 'hardware_test_needLog',
      desc: '',
      args: [],
    );
  }

  /// `Scanning for changes.`
  String get hardware_test_scanAllLight {
    return Intl.message(
      'Scanning for changes.',
      name: 'hardware_test_scanAllLight',
      desc: '',
      args: [],
    );
  }

  /// `Synchronizing IoT.`
  String get hardware_test_syncIot {
    return Intl.message(
      'Synchronizing IoT.',
      name: 'hardware_test_syncIot',
      desc: '',
      args: [],
    );
  }

  /// `Testing IoT connection.`
  String get hardware_test_testIot {
    return Intl.message(
      'Testing IoT connection.',
      name: 'hardware_test_testIot',
      desc: '',
      args: [],
    );
  }

  /// `{type, select, APIBRAIN{‹Apibrain›} HIVE_CONNECT{‹Hive Connect›} COMB{Combs} other{Invalid Hardware Type}}`
  String hardware_text_hardwareType(Object type) {
    return Intl.select(
      type,
      {
        'APIBRAIN': '‹Apibrain›',
        'HIVE_CONNECT': '‹Hive Connect›',
        'COMB': 'Combs',
        'other': 'Invalid Hardware Type',
      },
      name: 'hardware_text_hardwareType',
      desc: '',
      args: [type],
    );
  }

  /// `Last Sync`
  String get hardware_text_lastSync {
    return Intl.message(
      'Last Sync',
      name: 'hardware_text_lastSync',
      desc: '',
      args: [],
    );
  }

  /// `since Treatment`
  String get hardware_text_lastTreatment {
    return Intl.message(
      'since Treatment',
      name: 'hardware_text_lastTreatment',
      desc: '',
      args: [],
    );
  }

  /// `No Hardware Registered`
  String get hardware_title_noHardware {
    return Intl.message(
      'No Hardware Registered',
      name: 'hardware_title_noHardware',
      desc: '',
      args: [],
    );
  }

  /// `Boxes`
  String get harvest_page_boxes {
    return Intl.message(
      'Boxes',
      name: 'harvest_page_boxes',
      desc: '',
      args: [],
    );
  }

  /// `Frames`
  String get harvest_page_frames {
    return Intl.message(
      'Frames',
      name: 'harvest_page_frames',
      desc: '',
      args: [],
    );
  }

  /// `Honey`
  String get harvest_page_Honey {
    return Intl.message(
      'Honey',
      name: 'harvest_page_Honey',
      desc: '',
      args: [],
    );
  }

  /// `Add Feeding`
  String get hive_button_addFeeding {
    return Intl.message(
      'Add Feeding',
      name: 'hive_button_addFeeding',
      desc: '',
      args: [],
    );
  }

  /// `Add Harvest`
  String get hive_button_addHarvest {
    return Intl.message(
      'Add Harvest',
      name: 'hive_button_addHarvest',
      desc: '',
      args: [],
    );
  }

  /// `ADD INSPECTION`
  String get hive_button_addInspection {
    return Intl.message(
      'ADD INSPECTION',
      name: 'hive_button_addInspection',
      desc: '',
      args: [],
    );
  }

  /// `ADD QUEEN`
  String get hive_button_addQueen {
    return Intl.message(
      'ADD QUEEN',
      name: 'hive_button_addQueen',
      desc: '',
      args: [],
    );
  }

  /// `{type, select, common_error_serverError{Something went wrong while we were talking with our server. Please try again and if the problem percists, reach out to us for support.} common_error_insufficientPermission{You have insufficient permission to access this document. Please check you with your admin for adding permissions.} common_error_emulatorError{Emulator Error.} hive_error_invalidDocument{The hive document you are looking for is invalid or corrupt.  Please note the ID in the top right and contact us for support.} hive_error_missingDocument{The hive document you are looking for is missing from our database.  Please note the ID in the top right and contact us for support.} hive_error_missingConfig{The hive is missing it's config file.  Please try refreshing the page and if the problem percists, reach out to us for support.} hive_error_missingColony{The hive does not have a colony.  You can click the button to add a new colony or select refresh from the menu if you think there was an error.} hive_error_missingQueen{You don’t have any alive queens inside this hive. When you requeen your hive, you can add her details by clicking the button below.} hive_error_noHives{You don’t seem to have any hives added yet. You can click the button to add your first hive or select refresh from the menu if you think there was an error.} other{Unknown}}`
  String hive_error_hiveFailure(Object type) {
    return Intl.select(
      type,
      {
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
      },
      name: 'hive_error_hiveFailure',
      desc: '',
      args: [type],
    );
  }

  /// `Missing Hive Document`
  String get hive_error_missingHiveTitle {
    return Intl.message(
      'Missing Hive Document',
      name: 'hive_error_missingHiveTitle',
      desc: '',
      args: [],
    );
  }

  /// `Empty Hive`
  String get hive_error_noColonyMessage {
    return Intl.message(
      'Empty Hive',
      name: 'hive_error_noColonyMessage',
      desc: '',
      args: [],
    );
  }

  /// `Queenless`
  String get hive_error_noQueenMessage {
    return Intl.message(
      'Queenless',
      name: 'hive_error_noQueenMessage',
      desc: '',
      args: [],
    );
  }

  /// `Select the sub-species of your queen.`
  String get hive_form_beeRaceHelper {
    return Intl.message(
      'Select the sub-species of your queen.',
      name: 'hive_form_beeRaceHelper',
      desc: '',
      args: [],
    );
  }

  /// `Bee Race`
  String get hive_form_beeRaceTitle {
    return Intl.message(
      'Bee Race',
      name: 'hive_form_beeRaceTitle',
      desc: '',
      args: [],
    );
  }

  /// `Select how the boxes appear.`
  String get hive_form_categoryHelper {
    return Intl.message(
      'Select how the boxes appear.',
      name: 'hive_form_categoryHelper',
      desc: '',
      args: [],
    );
  }

  /// `Bought`
  String get hive_form_colonyBought {
    return Intl.message(
      'Bought',
      name: 'hive_form_colonyBought',
      desc: '',
      args: [],
    );
  }

  /// `Select the type of colony.`
  String get hive_form_colonyTypeHelper {
    return Intl.message(
      'Select the type of colony.',
      name: 'hive_form_colonyTypeHelper',
      desc: '',
      args: [],
    );
  }

  /// `Colony Type`
  String get hive_form_colonyTypeTitle {
    return Intl.message(
      'Colony Type',
      name: 'hive_form_colonyTypeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Current Apiary`
  String get hive_form_currentApiaryTitle {
    return Intl.message(
      'Current Apiary',
      name: 'hive_form_currentApiaryTitle',
      desc: '',
      args: [],
    );
  }

  /// `Select which direction the boxes stack.`
  String get hive_form_directionHelper {
    return Intl.message(
      'Select which direction the boxes stack.',
      name: 'hive_form_directionHelper',
      desc: '',
      args: [],
    );
  }

  /// `Edit Colony`
  String get hive_form_editColonyTitle {
    return Intl.message(
      'Edit Colony',
      name: 'hive_form_editColonyTitle',
      desc: '',
      args: [],
    );
  }

  /// `Edit Hive`
  String get hive_form_editHiveTitle {
    return Intl.message(
      'Edit Hive',
      name: 'hive_form_editHiveTitle',
      desc: '',
      args: [],
    );
  }

  /// `Edit Queen`
  String get hive_form_editQueenTitle {
    return Intl.message(
      'Edit Queen',
      name: 'hive_form_editQueenTitle',
      desc: '',
      args: [],
    );
  }

  /// `Select how many frames are in a box.`
  String get hive_form_framesHelper {
    return Intl.message(
      'Select how many frames are in a box.',
      name: 'hive_form_framesHelper',
      desc: '',
      args: [],
    );
  }

  /// `Hive Name`
  String get hive_form_hiveName {
    return Intl.message(
      'Hive Name',
      name: 'hive_form_hiveName',
      desc: '',
      args: [],
    );
  }

  /// `Select a name for the hive. (max 24 char)`
  String get hive_form_hiveNameHelper {
    return Intl.message(
      'Select a name for the hive. (max 24 char)',
      name: 'hive_form_hiveNameHelper',
      desc: '',
      args: [],
    );
  }

  /// `Select an image to use for your hive.`
  String get hive_form_hivePictureHelper {
    return Intl.message(
      'Select an image to use for your hive.',
      name: 'hive_form_hivePictureHelper',
      desc: '',
      args: [],
    );
  }

  /// `Search the list of hive types or use edit to select by category.`
  String get hive_form_hiveTypeHelper {
    return Intl.message(
      'Search the list of hive types or use edit to select by category.',
      name: 'hive_form_hiveTypeHelper',
      desc: '',
      args: [],
    );
  }

  /// `Hive Type`
  String get hive_form_hiveTypeTitle {
    return Intl.message(
      'Hive Type',
      name: 'hive_form_hiveTypeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Move Hive`
  String get hive_form_moveHiveTitle {
    return Intl.message(
      'Move Hive',
      name: 'hive_form_moveHiveTitle',
      desc: '',
      args: [],
    );
  }

  /// `New Colony`
  String get hive_form_newColonyTitle {
    return Intl.message(
      'New Colony',
      name: 'hive_form_newColonyTitle',
      desc: '',
      args: [],
    );
  }

  /// `New Hive`
  String get hive_form_newHiveTitle {
    return Intl.message(
      'New Hive',
      name: 'hive_form_newHiveTitle',
      desc: '',
      args: [],
    );
  }

  /// `New Queen`
  String get hive_form_newQueenTitle {
    return Intl.message(
      'New Queen',
      name: 'hive_form_newQueenTitle',
      desc: '',
      args: [],
    );
  }

  /// `Alive`
  String get hive_form_queenAlive {
    return Intl.message(
      'Alive',
      name: 'hive_form_queenAlive',
      desc: '',
      args: [],
    );
  }

  /// `Clipped`
  String get hive_form_queenClipped {
    return Intl.message(
      'Clipped',
      name: 'hive_form_queenClipped',
      desc: '',
      args: [],
    );
  }

  /// `What color is the queen marked with?`
  String get hive_form_queenColorHelper {
    return Intl.message(
      'What color is the queen marked with?',
      name: 'hive_form_queenColorHelper',
      desc: '',
      args: [],
    );
  }

  /// `Queen Color`
  String get hive_form_queenColorTitle {
    return Intl.message(
      'Queen Color',
      name: 'hive_form_queenColorTitle',
      desc: '',
      args: [],
    );
  }

  /// `Mated`
  String get hive_form_queenMated {
    return Intl.message(
      'Mated',
      name: 'hive_form_queenMated',
      desc: '',
      args: [],
    );
  }

  /// `Select a name for you queen.`
  String get hive_form_queenNameHelper {
    return Intl.message(
      'Select a name for you queen.',
      name: 'hive_form_queenNameHelper',
      desc: '',
      args: [],
    );
  }

  /// `Queen Name`
  String get hive_form_queenNameTitle {
    return Intl.message(
      'Queen Name',
      name: 'hive_form_queenNameTitle',
      desc: '',
      args: [],
    );
  }

  /// `Select where the queen came from.`
  String get hive_form_queenOriginHelper {
    return Intl.message(
      'Select where the queen came from.',
      name: 'hive_form_queenOriginHelper',
      desc: '',
      args: [],
    );
  }

  /// `Queen Origin`
  String get hive_form_queenOriginTitle {
    return Intl.message(
      'Queen Origin',
      name: 'hive_form_queenOriginTitle',
      desc: '',
      args: [],
    );
  }

  /// `Select any hives that have swarmed in the last few days.`
  String get hive_form_recentlySwarmedHelper {
    return Intl.message(
      'Select any hives that have swarmed in the last few days.',
      name: 'hive_form_recentlySwarmedHelper',
      desc: '',
      args: [],
    );
  }

  /// `Recently Swarmed`
  String get hive_form_recentlySwarmedTitle {
    return Intl.message(
      'Recently Swarmed',
      name: 'hive_form_recentlySwarmedTitle',
      desc: '',
      args: [],
    );
  }

  /// `Optionally enter a serial number or ID.`
  String get hive_form_serialNumberHelper {
    return Intl.message(
      'Optionally enter a serial number or ID.',
      name: 'hive_form_serialNumberHelper',
      desc: '',
      args: [],
    );
  }

  /// `Serial Number (optional)`
  String get hive_form_serialNumberTitle {
    return Intl.message(
      'Serial Number (optional)',
      name: 'hive_form_serialNumberTitle',
      desc: '',
      args: [],
    );
  }

  /// `Select from the list which apiary you would like to move this hive to.`
  String get hive_form_toApiaryHelper {
    return Intl.message(
      'Select from the list which apiary you would like to move this hive to.',
      name: 'hive_form_toApiaryHelper',
      desc: '',
      args: [],
    );
  }

  /// `To Apiary`
  String get hive_form_toApiaryTitle {
    return Intl.message(
      'To Apiary',
      name: 'hive_form_toApiaryTitle',
      desc: '',
      args: [],
    );
  }

  /// `Select the type of hive.`
  String get hive_form_typeHelper {
    return Intl.message(
      'Select the type of hive.',
      name: 'hive_form_typeHelper',
      desc: '',
      args: [],
    );
  }

  /// `(Unmarked)`
  String get hive_form_unmarked {
    return Intl.message(
      '(Unmarked)',
      name: 'hive_form_unmarked',
      desc: '',
      args: [],
    );
  }

  /// `(Wild Swarm)`
  String get hive_form_wildSwarmSelect {
    return Intl.message(
      '(Wild Swarm)',
      name: 'hive_form_wildSwarmSelect',
      desc: '',
      args: [],
    );
  }

  /// `Add Colony`
  String get hive_menu_addColony {
    return Intl.message(
      'Add Colony',
      name: 'hive_menu_addColony',
      desc: '',
      args: [],
    );
  }

  /// `Add Feeding`
  String get hive_menu_addFeeding {
    return Intl.message(
      'Add Feeding',
      name: 'hive_menu_addFeeding',
      desc: '',
      args: [],
    );
  }

  /// `Add Harvest`
  String get hive_menu_addHarvest {
    return Intl.message(
      'Add Harvest',
      name: 'hive_menu_addHarvest',
      desc: '',
      args: [],
    );
  }

  /// `Add Inspection`
  String get hive_menu_addInspection {
    return Intl.message(
      'Add Inspection',
      name: 'hive_menu_addInspection',
      desc: '',
      args: [],
    );
  }

  /// `Add Log`
  String get hive_menu_addLog {
    return Intl.message(
      'Add Log',
      name: 'hive_menu_addLog',
      desc: '',
      args: [],
    );
  }

  /// `Add Task`
  String get hive_menu_addTask {
    return Intl.message(
      'Add Task',
      name: 'hive_menu_addTask',
      desc: '',
      args: [],
    );
  }

  /// `Edit Hive`
  String get hive_menu_edit {
    return Intl.message(
      'Edit Hive',
      name: 'hive_menu_edit',
      desc: '',
      args: [],
    );
  }

  /// `Edit Colony`
  String get hive_menu_editColony {
    return Intl.message(
      'Edit Colony',
      name: 'hive_menu_editColony',
      desc: '',
      args: [],
    );
  }

  /// `Move Hive`
  String get hive_menu_moveHive {
    return Intl.message(
      'Move Hive',
      name: 'hive_menu_moveHive',
      desc: '',
      args: [],
    );
  }

  /// `Refresh`
  String get hive_menu_refresh {
    return Intl.message(
      'Refresh',
      name: 'hive_menu_refresh',
      desc: '',
      args: [],
    );
  }

  /// `This hive does not have any active colony inside.  In order to start adding actions and tracking queens, please add a colony from the Quick Action button or top menu.`
  String get hive_message_missingColonyMessage {
    return Intl.message(
      'This hive does not have any active colony inside.  In order to start adding actions and tracking queens, please add a colony from the Quick Action button or top menu.',
      name: 'hive_message_missingColonyMessage',
      desc: '',
      args: [],
    );
  }

  /// `Missing Colony`
  String get hive_message_missingColonyTitle {
    return Intl.message(
      'Missing Colony',
      name: 'hive_message_missingColonyTitle',
      desc: '',
      args: [],
    );
  }

  /// `No queens alive.`
  String get hive_message_missingQueens {
    return Intl.message(
      'No queens alive.',
      name: 'hive_message_missingQueens',
      desc: '',
      args: [],
    );
  }

  /// `Colony Added`
  String get hive_snack_colonyAdded {
    return Intl.message(
      'Colony Added',
      name: 'hive_snack_colonyAdded',
      desc: '',
      args: [],
    );
  }

  /// `Colony removed.`
  String get hive_snack_colonyRemoved {
    return Intl.message(
      'Colony removed.',
      name: 'hive_snack_colonyRemoved',
      desc: '',
      args: [],
    );
  }

  /// `Colony Saved`
  String get hive_snack_colonySaved {
    return Intl.message(
      'Colony Saved',
      name: 'hive_snack_colonySaved',
      desc: '',
      args: [],
    );
  }

  /// `Hive Created`
  String get hive_snack_hiveCreated {
    return Intl.message(
      'Hive Created',
      name: 'hive_snack_hiveCreated',
      desc: '',
      args: [],
    );
  }

  /// `{type, select, common_error_serverError{Server Error} common_error_insufficientPermission{Insufficient Permissions} common_error_emulatorError{Emulator Error} hive_error_invalidDocument{Invalid Hive} hive_error_missingDocument{Missing Hive} hive_error_missingConfig{Missing Hive Config} hive_error_missingColony{Missing Colony} hive_error_missingQueen{Missing Queen} hive_error_noHives{No Hives} other{Unknown}}`
  String hive_snack_hiveFailure(Object type) {
    return Intl.select(
      type,
      {
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
      },
      name: 'hive_snack_hiveFailure',
      desc: '',
      args: [type],
    );
  }

  /// `Hive Moved.`
  String get hive_snack_hiveMoved {
    return Intl.message(
      'Hive Moved.',
      name: 'hive_snack_hiveMoved',
      desc: '',
      args: [],
    );
  }

  /// `Hive deleted.`
  String get hive_snack_hiveRemoved {
    return Intl.message(
      'Hive deleted.',
      name: 'hive_snack_hiveRemoved',
      desc: '',
      args: [],
    );
  }

  /// `Hive Saved`
  String get hive_snack_hiveSaved {
    return Intl.message(
      'Hive Saved',
      name: 'hive_snack_hiveSaved',
      desc: '',
      args: [],
    );
  }

  /// `Queen Added`
  String get hive_snack_queenAdded {
    return Intl.message(
      'Queen Added',
      name: 'hive_snack_queenAdded',
      desc: '',
      args: [],
    );
  }

  /// `Queen deleted.`
  String get hive_snack_queenRemoved {
    return Intl.message(
      'Queen deleted.',
      name: 'hive_snack_queenRemoved',
      desc: '',
      args: [],
    );
  }

  /// `Queen Saved`
  String get hive_snack_queenSaved {
    return Intl.message(
      'Queen Saved',
      name: 'hive_snack_queenSaved',
      desc: '',
      args: [],
    );
  }

  /// `{type, select, APIS_MELLIFERA{European} APIS_MELLIFERA_MELLIFERA{Dark} APIS_MELLIFERA_LIGUSTICA{Italian} APIS_MELLIFERA_CARNICA{Carniolan} APIS_MELLIFERA_CAUCASICA{Caucasian} APIS_MELLIFERA_IBERIENSIS{Spanish} APIS_MELLIFERA_SCUTELLATA{Lowland} APIS_MELLIFERA_MONTICOLA{Highland} APIS_MELLIFERA_CAPENSIS{Cape} APIS_X_BUCKFAST{Buckfast} APIS_CERANA{Eastern} APIS_DORSATA{Giant} SCUTELLATA_X_LIGUSTICA{Africanized} RACE_MIXED{Mixed} RACE_UNKNOWN{Unknown} other{Unknown}}`
  String hive_text_beeRace(Object type) {
    return Intl.select(
      type,
      {
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
      },
      name: 'hive_text_beeRace',
      desc: '',
      args: [type],
    );
  }

  /// `{type, select, APIS_MELLIFERA{Apis mellifera} APIS_MELLIFERA_MELLIFERA{Apis mellifera mellifera} APIS_MELLIFERA_LIGUSTICA{Apis mellifera ligustica} APIS_MELLIFERA_CARNICA{Apis mellifera carnica} APIS_MELLIFERA_CAUCASICA{Apis mellifera caucasica} APIS_MELLIFERA_IBERIENSIS{Apis mellifera iberiensis} APIS_MELLIFERA_SCUTELLATA{Apis mellifera scutellata} APIS_MELLIFERA_MONTICOLA{Apis mellifera monticola} APIS_MELLIFERA_CAPENSIS{Apis mellifera capensis} APIS_X_BUCKFAST{Apis x Buckfast} APIS_CERANA{Apis cerana} APIS_DORSATA{Apis dorsata} SCUTELLATA_X_LIGUSTICA{Scutellata x Ligustica} RACE_MIXED{Mixed} RACE_UNKNOWN{Unknown} other{Unknown taxonomy.}}`
  String hive_text_beeTaxonomy(Object type) {
    return Intl.select(
      type,
      {
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
      },
      name: 'hive_text_beeTaxonomy',
      desc: '',
      args: [type],
    );
  }

  /// `{type, select, LOW{Low} MEDIUM{Mid} HIGH{High} other{Unknown}}`
  String hive_text_bodyTrait(Object type) {
    return Intl.select(
      type,
      {
        'LOW': 'Low',
        'MEDIUM': 'Mid',
        'HIGH': 'High',
        'other': 'Unknown',
      },
      name: 'hive_text_bodyTrait',
      desc: '',
      args: [type],
    );
  }

  /// `{type, select, COLONY_NUC{Nuc} COLONY_SWARM{Swarm} COLONY_ARTIFICIAL_SWARM{Artificial Swarm} COLONY_COMMERCIAL{Commercial} COLONY_CUTOUT{Cutout} COLONY_UNKNOWN{Unknown} other{Unknown}}`
  String hive_text_colonyType(Object type) {
    return Intl.select(
      type,
      {
        'COLONY_NUC': 'Nuc',
        'COLONY_SWARM': 'Swarm',
        'COLONY_ARTIFICIAL_SWARM': 'Artificial Swarm',
        'COLONY_COMMERCIAL': 'Commercial',
        'COLONY_CUTOUT': 'Cutout',
        'COLONY_UNKNOWN': 'Unknown',
        'other': 'Unknown',
      },
      name: 'hive_text_colonyType',
      desc: '',
      args: [type],
    );
  }

  /// `{type, select, MAGAZINE{Magazine} BEE_HOUSE{Bee house} SKEP{Skep} LOG_HIVE{Log hive} NUC{Nuc} TOP_BAR{Top Bar} LONG_BOX{Long box} BIENENKISTE{Bienenkiste} other{Unknown}}`
  String hive_text_hiveCategory(Object type) {
    return Intl.select(
      type,
      {
        'MAGAZINE': 'Magazine',
        'BEE_HOUSE': 'Bee house',
        'SKEP': 'Skep',
        'LOG_HIVE': 'Log hive',
        'NUC': 'Nuc',
        'TOP_BAR': 'Top Bar',
        'LONG_BOX': 'Long box',
        'BIENENKISTE': 'Bienenkiste',
        'other': 'Unknown',
      },
      name: 'hive_text_hiveCategory',
      desc: '',
      args: [type],
    );
  }

  /// `{type, select, HORIZONTAL{Horizontal} VERTICAL{Vertical} other{Unknown}}`
  String hive_text_hiveDirection(Object type) {
    return Intl.select(
      type,
      {
        'HORIZONTAL': 'Horizontal',
        'VERTICAL': 'Vertical',
        'other': 'Unknown',
      },
      name: 'hive_text_hiveDirection',
      desc: '',
      args: [type],
    );
  }

  /// `{type, select, LANGSTROTH_STANDARD{Langstroth} LANGSTROTH_JUMBO{Langstroth Jumbo} BS_NATIONAL{BS National} BS_COMMERCIAL{BS Commercial} ROSE{Rose} SMITH{Smith} SEGEBERGER_BEUTE{Segeberger} FRANKENBEUTE{Frankenbeute} DEUTSCHES_NORMALMASS{German Standard} DADANT_BLATT{Dadant Blatt} DADANT_US{Dadant US} ZANDER{Zadant} ZANDER_ALPINE{Zander} ZADANT{Zander Alpine} FLOW{Flow} MINI_PLUS{Mini Plus} WARRE_STANDARD{Warre} WBC_STANDARD{WBC Standard} CDB_STANDARD{CDB Standard} SCHWEIZER_MAGAZIN{Swiss Magazine} HELVETICA{Helvetica} OTHER_MAGAZINE{Other} SLOVENIAN{Slovenian} SCHWEIZERKASTEN{Swiss Standard} SPUEHLER{Spuehler} OTHER_BEE_HOUSE{Other} SKEP_BASKET{Skep Basket} SUN_HIVE{Sun Hive} LOG_HIVE{Log Hive} KENYAN{Kenyan Top Bar Hive} BEEHAUS{Beehaus} DARTINGTON_LONG_DEEP{Dartington Long Deep} OTHER_TOP_BAR{Other} LAYENS{Layens} GOLDEN{Golden} LANGSTROTH_LONG{Long Langstroth} OTHER_LONG_BOX{Other} BIENENKISTE{Bienenkiste} DADANT_NUC{Dadant Nuc} LANGSTROTH_NUC{Langstroth Nuc} BS_NATIONAL_NUC{BS National Nuc} BS_COMMERCIAL_NUC{BS Commercial Nuc} SMITH_NUC{Smith Nuc} MINI_NUC{Mini Nuc} OTHER_NUC{Other} other{Unknown}}`
  String hive_text_hiveType(Object type) {
    return Intl.select(
      type,
      {
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
      },
      name: 'hive_text_hiveType',
      desc: '',
      args: [type],
    );
  }

  /// `{type, select, RED{Red} WHITE{White} BLUE{Blue} GREEN{Green} YELLOW{Yellow} other{Unknown}}`
  String hive_text_queenColor(Object type) {
    return Intl.select(
      type,
      {
        'RED': 'Red',
        'WHITE': 'White',
        'BLUE': 'Blue',
        'GREEN': 'Green',
        'YELLOW': 'Yellow',
        'other': 'Unknown',
      },
      name: 'hive_text_queenColor',
      desc: '',
      args: [type],
    );
  }

  /// `{type, select, QUEEN_BOUGHT{Bought} QUEEN_RAISED{Raised} QUEEN_WILD{Wild} QUEEN_UNKNOWN{Unknown origin} other{Unknown}}`
  String hive_text_QueenOrigin(Object type) {
    return Intl.select(
      type,
      {
        'QUEEN_BOUGHT': 'Bought',
        'QUEEN_RAISED': 'Raised',
        'QUEEN_WILD': 'Wild',
        'QUEEN_UNKNOWN': 'Unknown origin',
        'other': 'Unknown',
      },
      name: 'hive_text_QueenOrigin',
      desc: '',
      args: [type],
    );
  }

  /// `Race`
  String get hive_text_race {
    return Intl.message(
      'Race',
      name: 'hive_text_race',
      desc: '',
      args: [],
    );
  }

  /// `(Superceded)`
  String get hive_text_superceded {
    return Intl.message(
      '(Superceded)',
      name: 'hive_text_superceded',
      desc: '',
      args: [],
    );
  }

  /// `Hive Details`
  String get hive_title_hiveDetails {
    return Intl.message(
      'Hive Details',
      name: 'hive_title_hiveDetails',
      desc: '',
      args: [],
    );
  }

  /// `Category`
  String get hive_word_category {
    return Intl.message(
      'Category',
      name: 'hive_word_category',
      desc: '',
      args: [],
    );
  }

  /// `Direction`
  String get hive_word_direction {
    return Intl.message(
      'Direction',
      name: 'hive_word_direction',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, zero{{count} Frames} one{{count} Frame} other{{count} Frames}}`
  String hive_word_frameCount(num count) {
    return Intl.plural(
      count,
      zero: '$count Frames',
      one: '$count Frame',
      other: '$count Frames',
      name: 'hive_word_frameCount',
      desc: '',
      args: [count],
    );
  }

  /// `Frames`
  String get hive_word_frames {
    return Intl.message(
      'Frames',
      name: 'hive_word_frames',
      desc: '',
      args: [],
    );
  }

  /// `Queenless`
  String get hive_word_queenless {
    return Intl.message(
      'Queenless',
      name: 'hive_word_queenless',
      desc: '',
      args: [],
    );
  }

  /// `QUEENS`
  String get hive_word_queensSection {
    return Intl.message(
      'QUEENS',
      name: 'hive_word_queensSection',
      desc: '',
      args: [],
    );
  }

  /// `Type`
  String get hive_word_type {
    return Intl.message(
      'Type',
      name: 'hive_word_type',
      desc: '',
      args: [],
    );
  }

  /// `LINK APPLE ID`
  String get link_accounts_linkAppleID {
    return Intl.message(
      'LINK APPLE ID',
      name: 'link_accounts_linkAppleID',
      desc: '',
      args: [],
    );
  }

  /// `LINK EMAIL`
  String get link_accounts_linkEmail {
    return Intl.message(
      'LINK EMAIL',
      name: 'link_accounts_linkEmail',
      desc: '',
      args: [],
    );
  }

  /// `LINK FACEBOOK`
  String get link_accounts_linkFacebook {
    return Intl.message(
      'LINK FACEBOOK',
      name: 'link_accounts_linkFacebook',
      desc: '',
      args: [],
    );
  }

  /// `LINK GOOGLE`
  String get link_accounts_linkGoogle {
    return Intl.message(
      'LINK GOOGLE',
      name: 'link_accounts_linkGoogle',
      desc: '',
      args: [],
    );
  }

  /// `ADD LOG`
  String get logs_button_addLog {
    return Intl.message(
      'ADD LOG',
      name: 'logs_button_addLog',
      desc: '',
      args: [],
    );
  }

  /// `ADD SAMPLE`
  String get logs_button_addSample {
    return Intl.message(
      'ADD SAMPLE',
      name: 'logs_button_addSample',
      desc: '',
      args: [],
    );
  }

  /// `{type, select, common_error_serverError{Something went wrong while we were talking with our server. Please try again and if the problem persists, reach out to us for support.} common_error_insufficientPermission{You have insufficient permission to access this document. Please check you with your admin for adding permissions.} common_error_emulatorError{Emulator Error.} log_error_noLogs{There are no logs yet for this apiary. You can add your first log by clicking the button below. If you think there is an error then try refresh the page from the menu in top right.} log_error_invalidDocument{The log document you are looking for is invalid or corrupt.  Please note the ID in the top right and contact us for support.} log_error_missingDocument{The log document you are looking for is missing from our database.  Please note the ID in the top right and contact us for support.} other{Unknown}}`
  String logs_error_logFailure(Object type) {
    return Intl.select(
      type,
      {
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
      },
      name: 'logs_error_logFailure',
      desc: '',
      args: [type],
    );
  }

  /// `Logs Failure`
  String get logs_error_logsFailureTitle {
    return Intl.message(
      'Logs Failure',
      name: 'logs_error_logsFailureTitle',
      desc: '',
      args: [],
    );
  }

  /// `There are no logs yet.  You can add your first log by clicking the button below.  If you think there is an error then try refresh the page from the menu in top right.`
  String get logs_error_noLogsMessage {
    return Intl.message(
      'There are no logs yet.  You can add your first log by clicking the button below.  If you think there is an error then try refresh the page from the menu in top right.',
      name: 'logs_error_noLogsMessage',
      desc: '',
      args: [],
    );
  }

  /// `No Logs`
  String get logs_error_noLogsTitle {
    return Intl.message(
      'No Logs',
      name: 'logs_error_noLogsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter the medical batch number of your treatment.`
  String get logs_form_batchnoHelper {
    return Intl.message(
      'Enter the medical batch number of your treatment.',
      name: 'logs_form_batchnoHelper',
      desc: '',
      args: [],
    );
  }

  /// `Batch No. (optional)`
  String get logs_form_batchNoTitle {
    return Intl.message(
      'Batch No. (optional)',
      name: 'logs_form_batchNoTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter how strong of a concentration in percent.`
  String get logs_form_concentrationHelper {
    return Intl.message(
      'Enter how strong of a concentration in percent.',
      name: 'logs_form_concentrationHelper',
      desc: '',
      args: [],
    );
  }

  /// `Concentration (optional)`
  String get logs_form_concentrationTitle {
    return Intl.message(
      'Concentration (optional)',
      name: 'logs_form_concentrationTitle',
      desc: '',
      args: [],
    );
  }

  /// `Select the date that the sticky board was inserted.`
  String get logs_form_dateInsertedHelper {
    return Intl.message(
      'Select the date that the sticky board was inserted.',
      name: 'logs_form_dateInsertedHelper',
      desc: '',
      args: [],
    );
  }

  /// `Date Inserted`
  String get logs_form_dateInsertedTitle {
    return Intl.message(
      'Date Inserted',
      name: 'logs_form_dateInsertedTitle',
      desc: '',
      args: [],
    );
  }

  /// `Edit Log`
  String get logs_form_editLogTitle {
    return Intl.message(
      'Edit Log',
      name: 'logs_form_editLogTitle',
      desc: '',
      args: [],
    );
  }

  /// `Optionally record the day's humidity.`
  String get logs_form_humidityHelper {
    return Intl.message(
      'Optionally record the day\'s humidity.',
      name: 'logs_form_humidityHelper',
      desc: '',
      args: [],
    );
  }

  /// `Humidity (Optional)`
  String get logs_form_humidityTitle {
    return Intl.message(
      'Humidity (Optional)',
      name: 'logs_form_humidityTitle',
      desc: '',
      args: [],
    );
  }

  /// `{method, select, STICKY_BOARD{{amount} varroa (/day)} other{{amount} varroa (/100 bees)}}`
  String logs_form_infectionType(Object method, Object amount) {
    return Intl.select(
      method,
      {
        'STICKY_BOARD': '$amount varroa (/day)',
        'other': '$amount varroa (/100 bees)',
      },
      name: 'logs_form_infectionType',
      desc: '',
      args: [method, amount],
    );
  }

  /// `Select a log type`
  String get logs_form_logTypeHelper {
    return Intl.message(
      'Select a log type',
      name: 'logs_form_logTypeHelper',
      desc: '',
      args: [],
    );
  }

  /// `Log Type`
  String get logs_form_logTypeTitle {
    return Intl.message(
      'Log Type',
      name: 'logs_form_logTypeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Please select a log type`
  String get logs_form_missingLogType {
    return Intl.message(
      'Please select a log type',
      name: 'logs_form_missingLogType',
      desc: '',
      args: [],
    );
  }

  /// `New Log`
  String get logs_form_newLogTitle {
    return Intl.message(
      'New Log',
      name: 'logs_form_newLogTitle',
      desc: '',
      args: [],
    );
  }

  /// `Select how bad the robbing is.`
  String get logs_form_robbingSeverityHelper {
    return Intl.message(
      'Select how bad the robbing is.',
      name: 'logs_form_robbingSeverityHelper',
      desc: '',
      args: [],
    );
  }

  /// `Optionally record the day's Temperature.`
  String get logs_form_temperatureHelper {
    return Intl.message(
      'Optionally record the day\'s Temperature.',
      name: 'logs_form_temperatureHelper',
      desc: '',
      args: [],
    );
  }

  /// `Temperature (Optional)`
  String get logs_form_temperatureTitle {
    return Intl.message(
      'Temperature (Optional)',
      name: 'logs_form_temperatureTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter the amout of treatment with units.`
  String get logs_form_treatmentAmountHelper {
    return Intl.message(
      'Enter the amout of treatment with units.',
      name: 'logs_form_treatmentAmountHelper',
      desc: '',
      args: [],
    );
  }

  /// `Amount (optional)`
  String get logs_form_treatmentAmountTitle {
    return Intl.message(
      'Amount (optional)',
      name: 'logs_form_treatmentAmountTitle',
      desc: '',
      args: [],
    );
  }

  /// `Select how the treatment is applied.`
  String get logs_form_treatmentApplicationHelper {
    return Intl.message(
      'Select how the treatment is applied.',
      name: 'logs_form_treatmentApplicationHelper',
      desc: '',
      args: [],
    );
  }

  /// `Application`
  String get logs_form_treatmentApplicationTitle {
    return Intl.message(
      'Application',
      name: 'logs_form_treatmentApplicationTitle',
      desc: '',
      args: [],
    );
  }

  /// `Select what type of treatment was used.`
  String get logs_form_treatmentMethodHelper {
    return Intl.message(
      'Select what type of treatment was used.',
      name: 'logs_form_treatmentMethodHelper',
      desc: '',
      args: [],
    );
  }

  /// `Method`
  String get logs_form_treatmentMethodTitle {
    return Intl.message(
      'Method',
      name: 'logs_form_treatmentMethodTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter the total number of varroa on the board.`
  String get logs_form_varroaCountHelper {
    return Intl.message(
      'Enter the total number of varroa on the board.',
      name: 'logs_form_varroaCountHelper',
      desc: '',
      args: [],
    );
  }

  /// `Varroa Count`
  String get logs_form_varroaCountTitle {
    return Intl.message(
      'Varroa Count',
      name: 'logs_form_varroaCountTitle',
      desc: '',
      args: [],
    );
  }

  /// `Select the method of counting varroa.`
  String get logs_form_varroaMethodHelper {
    return Intl.message(
      'Select the method of counting varroa.',
      name: 'logs_form_varroaMethodHelper',
      desc: '',
      args: [],
    );
  }

  /// `Method`
  String get logs_form_varroaMethodTitile {
    return Intl.message(
      'Method',
      name: 'logs_form_varroaMethodTitile',
      desc: '',
      args: [],
    );
  }

  /// `Select any weather events you would like to log. Hold press to see weather name.`
  String get logs_form_weatherHelper {
    return Intl.message(
      'Select any weather events you would like to log. Hold press to see weather name.',
      name: 'logs_form_weatherHelper',
      desc: '',
      args: [],
    );
  }

  /// `Weather Type(s)`
  String get logs_form_weatherTitle {
    return Intl.message(
      'Weather Type(s)',
      name: 'logs_form_weatherTitle',
      desc: '',
      args: [],
    );
  }

  /// `{apiary} created`
  String logs_message_apiaryCreated(Object apiary) {
    return Intl.message(
      '$apiary created',
      name: 'logs_message_apiaryCreated',
      desc: '',
      args: [apiary],
    );
  }

  /// `{apiary} deleted`
  String logs_message_apiaryDeleted(Object apiary) {
    return Intl.message(
      '$apiary deleted',
      name: 'logs_message_apiaryDeleted',
      desc: '',
      args: [apiary],
    );
  }

  /// `and caught`
  String get logs_message_caught {
    return Intl.message(
      'and caught',
      name: 'logs_message_caught',
      desc: '',
      args: [],
    );
  }

  /// `Colony created`
  String get logs_message_colonyCreated {
    return Intl.message(
      'Colony created',
      name: 'logs_message_colonyCreated',
      desc: '',
      args: [],
    );
  }

  /// `Colony deleted`
  String get logs_message_colonyDeleted {
    return Intl.message(
      'Colony deleted',
      name: 'logs_message_colonyDeleted',
      desc: '',
      args: [],
    );
  }

  /// `Colony died`
  String get logs_message_colonyDied {
    return Intl.message(
      'Colony died',
      name: 'logs_message_colonyDied',
      desc: '',
      args: [],
    );
  }

  /// `Colony moved`
  String get logs_message_colonyMoved {
    return Intl.message(
      'Colony moved',
      name: 'logs_message_colonyMoved',
      desc: '',
      args: [],
    );
  }

  /// `Feeding created`
  String get logs_message_feedingCreated {
    return Intl.message(
      'Feeding created',
      name: 'logs_message_feedingCreated',
      desc: '',
      args: [],
    );
  }

  /// `Feeding deleted`
  String get logs_message_feedingDeleted {
    return Intl.message(
      'Feeding deleted',
      name: 'logs_message_feedingDeleted',
      desc: '',
      args: [],
    );
  }

  /// `Hardware registered`
  String get logs_message_hardwareRegistered {
    return Intl.message(
      'Hardware registered',
      name: 'logs_message_hardwareRegistered',
      desc: '',
      args: [],
    );
  }

  /// `Harvest created`
  String get logs_message_harvestCreated {
    return Intl.message(
      'Harvest created',
      name: 'logs_message_harvestCreated',
      desc: '',
      args: [],
    );
  }

  /// `Harvest deleted`
  String get logs_message_harvestDeleted {
    return Intl.message(
      'Harvest deleted',
      name: 'logs_message_harvestDeleted',
      desc: '',
      args: [],
    );
  }

  /// `{hive} created`
  String logs_message_hiveCreated(Object hive) {
    return Intl.message(
      '$hive created',
      name: 'logs_message_hiveCreated',
      desc: '',
      args: [hive],
    );
  }

  /// `{hive} deleted`
  String logs_message_hiveDeleted(Object hive) {
    return Intl.message(
      '$hive deleted',
      name: 'logs_message_hiveDeleted',
      desc: '',
      args: [hive],
    );
  }

  /// `{hive} moved to {apiary}`
  String logs_message_hiveMoved(Object hive, Object apiary) {
    return Intl.message(
      '$hive moved to $apiary',
      name: 'logs_message_hiveMoved',
      desc: '',
      args: [hive, apiary],
    );
  }

  /// `Inspection created`
  String get logs_message_inspectionCreated {
    return Intl.message(
      'Inspection created',
      name: 'logs_message_inspectionCreated',
      desc: '',
      args: [],
    );
  }

  /// `Inspection deleted`
  String get logs_message_inspectionDeleted {
    return Intl.message(
      'Inspection deleted',
      name: 'logs_message_inspectionDeleted',
      desc: '',
      args: [],
    );
  }

  /// `No samples.`
  String get logs_message_noSamples {
    return Intl.message(
      'No samples.',
      name: 'logs_message_noSamples',
      desc: '',
      args: [],
    );
  }

  /// `Note was created`
  String get logs_message_note {
    return Intl.message(
      'Note was created',
      name: 'logs_message_note',
      desc: '',
      args: [],
    );
  }

  /// `{queen} created`
  String logs_message_queenCreated(Object queen) {
    return Intl.message(
      '$queen created',
      name: 'logs_message_queenCreated',
      desc: '',
      args: [queen],
    );
  }

  /// `{queen} deleted`
  String logs_message_queenDeleted(Object queen) {
    return Intl.message(
      '$queen deleted',
      name: 'logs_message_queenDeleted',
      desc: '',
      args: [queen],
    );
  }

  /// `{queen} died`
  String logs_message_queenDied(Object queen) {
    return Intl.message(
      '$queen died',
      name: 'logs_message_queenDied',
      desc: '',
      args: [queen],
    );
  }

  /// `{queen} moved`
  String logs_message_queenMoved(Object queen) {
    return Intl.message(
      '$queen moved',
      name: 'logs_message_queenMoved',
      desc: '',
      args: [queen],
    );
  }

  /// `{oldQueen} superseded by {queen}`
  String logs_message_queenSuperseded(Object oldQueen, Object queen) {
    return Intl.message(
      '$oldQueen superseded by $queen',
      name: 'logs_message_queenSuperseded',
      desc: '',
      args: [oldQueen, queen],
    );
  }

  /// `Robbing {severity}`
  String logs_message_robbing(Object severity) {
    return Intl.message(
      'Robbing $severity',
      name: 'logs_message_robbing',
      desc: '',
      args: [severity],
    );
  }

  /// `Swarmed {caught}`
  String logs_message_swarmed(Object caught) {
    return Intl.message(
      'Swarmed $caught',
      name: 'logs_message_swarmed',
      desc: '',
      args: [caught],
    );
  }

  /// `Treatment {method}`
  String logs_message_treatment(Object method) {
    return Intl.message(
      'Treatment $method',
      name: 'logs_message_treatment',
      desc: '',
      args: [method],
    );
  }

  /// `User created`
  String get logs_message_userCreated {
    return Intl.message(
      'User created',
      name: 'logs_message_userCreated',
      desc: '',
      args: [],
    );
  }

  /// `Varroa count {severity}`
  String logs_message_varroaCount(Object severity) {
    return Intl.message(
      'Varroa count $severity',
      name: 'logs_message_varroaCount',
      desc: '',
      args: [severity],
    );
  }

  /// `Weather note {type}`
  String logs_message_weather(Object type) {
    return Intl.message(
      'Weather note $type',
      name: 'logs_message_weather',
      desc: '',
      args: [type],
    );
  }

  /// `Log Created`
  String get logs_snack_logCreated {
    return Intl.message(
      'Log Created',
      name: 'logs_snack_logCreated',
      desc: '',
      args: [],
    );
  }

  /// `{type, select, common_error_serverError{Server Error} common_error_insufficientPermission{Insufficient Permissions} common_error_emulatorError{Emulator Error} log_error_noLogs{No Logs} log_error_invalidDocument{Invalid Log} log_error_missingDocument{Missing Log} other{Unknown}}`
  String logs_snack_logFailure(Object type) {
    return Intl.select(
      type,
      {
        'common_error_serverError': 'Server Error',
        'common_error_insufficientPermission': 'Insufficient Permissions',
        'common_error_emulatorError': 'Emulator Error',
        'log_error_noLogs': 'No Logs',
        'log_error_invalidDocument': 'Invalid Log',
        'log_error_missingDocument': 'Missing Log',
        'other': 'Unknown',
      },
      name: 'logs_snack_logFailure',
      desc: '',
      args: [type],
    );
  }

  /// `Log Saved`
  String get logs_snack_logSaved {
    return Intl.message(
      'Log Saved',
      name: 'logs_snack_logSaved',
      desc: '',
      args: [],
    );
  }

  /// `Infection`
  String get logs_text_infection {
    return Intl.message(
      'Infection',
      name: 'logs_text_infection',
      desc: '',
      args: [],
    );
  }

  /// `Logs`
  String get logs_text_logs {
    return Intl.message(
      'Logs',
      name: 'logs_text_logs',
      desc: '',
      args: [],
    );
  }

  /// `LOGS`
  String get logs_text_logsSection {
    return Intl.message(
      'LOGS',
      name: 'logs_text_logsSection',
      desc: '',
      args: [],
    );
  }

  /// `{type, select, USER_CREATED{User Created} USER_UPDATED{User Updated} APIARY_CREATED{Apiary Created} APIARY_UPDATED{Apiary Updated} APIARY_DELETED{Apiary Deleted} HIVE_CREATED{Hive Created} HIVE_MOVED{Hive Moved} HIVE_UPDATED{Hive Updated} HIVE_DELETED{Hive Deleted} HARDWARE_REGISTERED{Hardware Registered} COLONY_CREATED{Colony Created} COLONY_UPDATED{Colony Updated} COLONY_MOVED{Colony Moved} COLONY_DELETED{Colony Deleted} COLONY_DIED{Colony Died} QUEEN_CREATED{Queen Created} QUEEN_DELETED{Queen Deleted} QUEEN_UPDATED{Queen Updated} QUEEN_MOVED{Queen Moved} QUEEN_SUPERSEDED{Queen Superseded} QUEEN_DIED{Queen Died} INSPECTION_CREATED{Inspection Created} INSPECTION_UPDATED{Inspection Updated} INSPECTION_DELETED{Inspection Deleted} FEEDING_CREATED{Feeding Created} FEEDING_UPDATED{Feeding Updated} FEEDING_DELETED{Feeding Deleted} HARVEST_CREATED{Harvest Created} HARVEST_UPDATED{Harvest Updated} HARVEST_DELETED{Harvest Deleted} TASK_CREATED{Task Created} TASK_COMPLETED{Task Completed} TASK_ARCHIVED{Task Archived} TASK_DELETED{Task Deleted} IMPORTED{Document Imported} ROBBING{Robbing} WEATHER{Weather} VARROA_COUNT{Varroa Count} TREATMENT{Treatment} SWARMED{Swarmed} NOTE{Note} other{Unknown}}`
  String logs_text_logType(Object type) {
    return Intl.select(
      type,
      {
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
      },
      name: 'logs_text_logType',
      desc: '',
      args: [type],
    );
  }

  /// `Samples`
  String get logs_text_samples {
    return Intl.message(
      'Samples',
      name: 'logs_text_samples',
      desc: '',
      args: [],
    );
  }

  /// `Treatment`
  String get logs_text_treatment {
    return Intl.message(
      'Treatment',
      name: 'logs_text_treatment',
      desc: '',
      args: [],
    );
  }

  /// `{type, select, CLOTH_ABOVE{Cloth Above} CLOTH_BELOW{Cloth Below} LIE_BAG{Lie bag} NASSENHEIDER{Nassenheider disperser} SHELL{Shell} VAPORIZE{Vaporizing} SPRAY{Spraying} TRICKLE{Trickling} GEL_STRIP{Gel strip} PLATELETS{Platelets} CONTACT_STRIP{Contact strip} VARROA_SOLUTION{Vatorex Varroa Kit} VARROA_CONTROLLER{Varroa Controller} VARROA_KILL{Varroa Kill II} MITE_ZAPPER{Mite Zapper} BIENENSAUNA{Bienensauna} PATTIES{Patties} TRAP{Trap} UNKNOWN{Unknown} other{Unknown}}`
  String logs_text_treatmentApplication(Object type) {
    return Intl.select(
      type,
      {
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
      },
      name: 'logs_text_treatmentApplication',
      desc: '',
      args: [type],
    );
  }

  /// `{type, select, AMITRAZ{Amitraz} B401{B402} COUMAPHOS{Coumaphos} FLUVALINATE{Fluvalinate} FORMIC_ACID{Formic acid} FLUMERTHRIN{Flumerthrin} FUMIDIL_B{Fumidil-B} HOPS_BETA_ACID{Hops beta acid} LACTIC_ACID{Lactic acid} MENTHOL{Menthol} OXALIC_ACID{Oxalic acid} PARADICHLOROBENZENE{Paradichlorobenzene} PERMETHRIN{Permethrin} TERRAMYCIN{Terramycin} THYMOL{Thymol} TYLOSIN{Tylosin} HEAT{Heat treatment} DIATOMACSIOUS_EARTH{Diatomacsious Earth} DRONE_COMB_TRAPS{Drone comb traps} MITE_TRAPS{Mite traps} MOTH_TRAPS{Moth traps} BEETLE_TRAPS{Beetle traps} OTHER{Other} other{Unknown}}`
  String logs_text_treatmentMethod(Object type) {
    return Intl.select(
      type,
      {
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
      },
      name: 'logs_text_treatmentMethod',
      desc: '',
      args: [type],
    );
  }

  /// `{type, select, STICKY_BOARD{Sticky Board} POWDERED_SUGAR{Powdered Sugar} ALCOHOL_WASH{Alcohol Wash} ETHER_ROLL{Ether Roll} other{Unknown}}`
  String logs_text_varroaMethod(Object type) {
    return Intl.select(
      type,
      {
        'STICKY_BOARD': 'Sticky Board',
        'POWDERED_SUGAR': 'Powdered Sugar',
        'ALCOHOL_WASH': 'Alcohol Wash',
        'ETHER_ROLL': 'Ether Roll',
        'other': 'Unknown',
      },
      name: 'logs_text_varroaMethod',
      desc: '',
      args: [type],
    );
  }

  /// `{type, select, DARK_CLOUD{Dark Cloud} FOGGY{Foggy} SUN{Sunny} PARTIAL_SHOWERS{Partial Showers} PARTIAL_SUN{Partial Sun} SHADED{Shaded} RAIN{Rainy} SNOW{Snowy} STORM{Stormy} WIND{Windy} other{Unknown}}`
  String logs_text_weatherType(Object type) {
    return Intl.select(
      type,
      {
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
      },
      name: 'logs_text_weatherType',
      desc: '',
      args: [type],
    );
  }

  /// `Robbing`
  String get log_text_robbing {
    return Intl.message(
      'Robbing',
      name: 'log_text_robbing',
      desc: '',
      args: [],
    );
  }

  /// `Varroa Count`
  String get log_text_varroaCount {
    return Intl.message(
      'Varroa Count',
      name: 'log_text_varroaCount',
      desc: '',
      args: [],
    );
  }

  /// `There are no stats for this Season`
  String get message_noStatsAvailable {
    return Intl.message(
      'There are no stats for this Season',
      name: 'message_noStatsAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Apiary Name`
  String get new_apiary_apiary_name {
    return Intl.message(
      'Apiary Name',
      name: 'new_apiary_apiary_name',
      desc: '',
      args: [],
    );
  }

  /// `Serial Number (Optional)`
  String get new_apiary_apiary_serial {
    return Intl.message(
      'Serial Number (Optional)',
      name: 'new_apiary_apiary_serial',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get new_apiary_location {
    return Intl.message(
      'Location',
      name: 'new_apiary_location',
      desc: '',
      args: [],
    );
  }

  /// `Unable to get weather data. Make sure internet connection is available`
  String get no_weather_data_message {
    return Intl.message(
      'Unable to get weather data. Make sure internet connection is available',
      name: 'no_weather_data_message',
      desc: '',
      args: [],
    );
  }

  /// `Weather forecast not available`
  String get no_weather_data_title {
    return Intl.message(
      'Weather forecast not available',
      name: 'no_weather_data_title',
      desc: '',
      args: [],
    );
  }

  /// `{failure, select, common_serverError{Server error.} common_permissionDenied{Insufficient permissions.} other{Push notification error.}}`
  String pushNotification_error_pushNotificationFailure(Object failure) {
    return Intl.select(
      failure,
      {
        'common_serverError': 'Server error.',
        'common_permissionDenied': 'Insufficient permissions.',
        'other': 'Push notification error.',
      },
      name: 'pushNotification_error_pushNotificationFailure',
      desc: '',
      args: [failure],
    );
  }

  /// `Scanning... Please place the phone next to the hardware until the connection has been made.`
  String get seach_message_scanning {
    return Intl.message(
      'Scanning... Please place the phone next to the hardware until the connection has been made.',
      name: 'seach_message_scanning',
      desc: '',
      args: [],
    );
  }

  /// `SCAN`
  String get search_button_scan {
    return Intl.message(
      'SCAN',
      name: 'search_button_scan',
      desc: '',
      args: [],
    );
  }

  /// `NFC Failure`
  String get search_card_errorTitle {
    return Intl.message(
      'NFC Failure',
      name: 'search_card_errorTitle',
      desc: '',
      args: [],
    );
  }

  /// `NFC Scan`
  String get search_card_scanTitle {
    return Intl.message(
      'NFC Scan',
      name: 'search_card_scanTitle',
      desc: '',
      args: [],
    );
  }

  /// `{failure, select, search_error_nFCNotAvailable{NFC is not available on your device.} search_error_nFCNotFound{No NFC tag was found.} search_error_timeout{NFC timed out. Please try again.} search_error_invalidNFC{NFC tag is not recognized, make sure it is a Vatorex hardware.} search_error_nDEFNotWritten{NFC tag is not written yet, please reset the hardware. If the issue persists, contact us for support.} search_error_noCachedMessage{NFC tag was written incorrectly, please reset the hardware. If the issue persists, contact us for support.} other{NFC search error.}}`
  String search_error_searchFailure(Object failure) {
    return Intl.select(
      failure,
      {
        'search_error_nFCNotAvailable': 'NFC is not available on your device.',
        'search_error_nFCNotFound': 'No NFC tag was found.',
        'search_error_timeout': 'NFC timed out. Please try again.',
        'search_error_invalidNFC':
            'NFC tag is not recognized, make sure it is a Vatorex hardware.',
        'search_error_nDEFNotWritten':
            'NFC tag is not written yet, please reset the hardware. If the issue persists, contact us for support.',
        'search_error_noCachedMessage':
            'NFC tag was written incorrectly, please reset the hardware. If the issue persists, contact us for support.',
        'other': 'NFC search error.',
      },
      name: 'search_error_searchFailure',
      desc: '',
      args: [failure],
    );
  }

  /// `We found an NFC tag!\nTag: {tag}\n  Please wait while we take you to the hardware details page.`
  String search_message_foundTag(Object tag) {
    return Intl.message(
      'We found an NFC tag!\\nTag: $tag\\n  Please wait while we take you to the hardware details page.',
      name: 'search_message_foundTag',
      desc: '',
      args: [tag],
    );
  }

  /// `Click the button to initialize NFC scanning.  You will need to place the phone next to the hardware to read the NFC tag.`
  String get search_message_startScan {
    return Intl.message(
      'Click the button to initialize NFC scanning.  You will need to place the phone next to the hardware to read the NFC tag.',
      name: 'search_message_startScan',
      desc: '',
      args: [],
    );
  }

  /// `Found!`
  String get search_title_tagFound {
    return Intl.message(
      'Found!',
      name: 'search_title_tagFound',
      desc: '',
      args: [],
    );
  }

  /// `No Stats Available`
  String get title_noStatsAvailable {
    return Intl.message(
      'No Stats Available',
      name: 'title_noStatsAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Min | Max`
  String get weather_tab_minMax {
    return Intl.message(
      'Min | Max',
      name: 'weather_tab_minMax',
      desc: '',
      args: [],
    );
  }

  /// `Rain`
  String get weather_tab_rain {
    return Intl.message(
      'Rain',
      name: 'weather_tab_rain',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<Localize> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'de'),
      Locale.fromSubtags(languageCode: 'fr'),
      Locale.fromSubtags(languageCode: 'it'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<Localize> load(Locale locale) => Localize.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
