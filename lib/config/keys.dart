import 'package:flutter/material.dart';

// Auth
const Key keyAuthEmailField = Key("auth_email_field");
const Key keyAuthEmailTextField = Key("auth_email_text_field");
const Key keyAuthPasswordField = Key("auth_password_field");
const Key keyAuthDisplayNameField = Key("auth_display_name_field");
const Key keyAuthTermsCheckbox = Key("auth_terms_checkbox");
const Key keyAuthDateFormatDropdown = Key("auth_date_format_dropdown");
const Key keyAuthUnitSystemDropdown = Key("auth_unit_system_dropdown");

const Key keyAuthLoginButton = Key("auth_email_login_button");
const Key keyAuthCreateAccountButton = Key("auth_create_account_button");
const Key keyAuthSettingsButton = Key("auth_settings_button");
const Key keyAuthEditSettingsButton = Key("auth_edit_settings_button");
const Key keyAuthEditAccountButton = Key("auth_edit_account_button");
const Key keyAuthResetPasswordButton = Key("auth_reset_password_button");
const Key keyAuthDeleteAccountButton = Key("auth_delete_account_button");
const Key keyAuthLoginWithGoogleButton = Key("auth_google_login_button");
const Key keyAuthLoginWithAppleButton = Key("auth_apple_login_button");
const Key keyAuthLoginWithFacebookButton = Key("auth_facebook_login_button");

const Key keyAuthNavCreateAccountButton = Key("auth_nav_create_account_button");
const Key keyAuthNavLoginButton = Key("auth_nav_login_button");

const Key keyAuthAccountForm = Key("auth_account_form");
const Key keyAuthSettingsForm = Key("auth_settings_form");

const Key keyAuthErrorSnackbar = Key("auth_snackbar_error");
const Key keyAuthSuccessSnackbar = Key("auth_snackbar_success");

const Key keyAuthResetPasswordMessage = Key("auth_reset_password_message");

const Key keyAuthDeleteAccountDialog = Key("auth_delete_account_dialog");

// Alerts
const Key keyAlertsErrorSnackbar = Key("alerts_snackbar_error");

const Key keyAlertsSuccessSnackbar = Key("alerts_snackbar_success");
const Key keyAlertsSortButton = Key("alerts_sort_button");

const Key keyAlertsInvalidIcon = Key("alerts_invalid_Icon");
const Key keyAlertsTreatmentIcon = Key("alerts_treatment_Icon");
const Key keyAlertsBatteryIcon = Key("alerts_battery_Icon");
const Key keyAlertsConnectionIcon = Key("alerts_connection_Icon");
const Key keyAlertsSensorIcon = Key("alerts_sensor_Icon");
const Key keyAlertsSoftwareIcon = Key("alerts_software_Icon");

// Push Notification
const Key keyPushSuccessSnackbar = Key("push_snackbar_success");

// Hardware

const Key keyHardwareErrorSnackbar = Key("hardware_snackbar_error");
const Key keyHardwareSuccessSnackbar = Key("hardware_snackbar_success");

const Key keyHardwareErrorCard = Key("hardware_error_card");
const Key keyHardwareValidCard = Key("hardware_valid_card");
const Key keyHardwareInvalidCard = Key("hardware_invalid_card");

const Key keyHeartbeatChart = Key("hardware_heartbeat_chart");
const Key keyTempuratureChart = Key("hardware_tempurature_chart");
const Key keyWeightChart = Key("hardware_weight_chart");
const Key keyTreatmentChart = Key("hardware_treatment_chart");
const Key keyCombTable = Key("hardware_comb_table");
const Key keySyncedGuage = Key("hardware_synced_guage");
const Key keyMissingSyncedGuage = Key("hardware_missingSynced_guage");

const Key keyMissingHardwarePage = Key("hardware_missing_page");
const Key keyInvalidHardwarePage = Key("hardware_invalid_page");
const Key keyValidHardwarePage = Key("hardware_valid_page");

const Key keySearchPage = Key("search_page");
const Key keySearchInitialCard = Key("search_initial_card");
const Key keySearchScanningCard = Key("search_scanning_card");
const Key keySearchFailedCard = Key("search_failed_card");
const Key keySearchFoundCard = Key("search_found_card");

const Key keySearchToggleButton = Key("search_toggle_button");
const Key keySearchNFCButton = Key("search_NFC_button");
const Key keySearchScanButton = Key("search_scan_button");

const Key keyConnectFAB = Key("hardware_connect_fab");
const Key keyHardwareDetailNavButton = Key("hardware_detail_nav_button");
const Key keyHardwareSortButton = Key("hardware_sort_button");

const Key keyHardwareInvalidIcon = Key("hardware_invalid_icon");
const Key keyHardwareApiBrainIcon = Key("hardware_apibrain_icon");
const Key keyHardwareHiveConnectIcon = Key("hardware_hive_connect_icon");

// Hive
const Key keyHiveMissingColony = Key("hive_missing_colony");
const Key keyHiveMissingQueen = Key("hive_missing_queen");
const Key keyHiveMissingTasks = Key("hive_missing_tasks");

const Key keyHiveStatusTab = Key("hive_tab_status");
const Key keyHiveActionTab = Key("hive_tab_action");
const Key keyHiveLogTab = Key("hive_tab_log");
const Key keyHiveTaskTab = Key("hive_tab_task");
const Key keyHiveHardwareTab = Key("hive_tab_hardware");
const Key keyHiveStatsTab = Key("hive_tab_stats");

const Key keyHiveStatusTabButton = Key("hive_button_status");
const Key keyHiveActionTabButton = Key("hive_button_action");
const Key keyHiveLogTabButton = Key("hive_button_log");
const Key keyHiveTaskTabButton = Key("hive_button_task");
const Key keyHiveHardwareTabButton = Key("hive_button_hardware");
const Key keyHiveStatsTabButton = Key("hive_button_stats");
const Key keyHiveEditButton = Key("hive_button_edit");
const Key keyHiveSaveButton = Key("hive_button_save");
const Key keyHiveTypeEditButton = Key("hive_button_editType");
const Key keyHiveAddColonyButton = Key("hive_button_addColony");
const Key keyHiveAddQueenButton = Key("hive_button_addQueen");
const Key keyHiveDeleteButton = Key("hive_button_delete");
const Key keyHiveArchiveButton = Key("hive_button_archive");

const Key keyHiveFormError = Key("hive_form_error");
const Key keyHiveFormHelper = Key("hive_form_error");
const Key keyHiveFormNameInput = Key("hive_form_nameInput");
const Key keyHiveFormFramesDropdown = Key("hive_form_framesDropdown");
const Key keyHiveFormTypeDropdown = Key("hive_form_typeDropdown");
const Key keyHiveFormCategoryDropdown = Key("hive_form_categoryDropdown");
const Key keyHiveFormDirectionDropdown = Key("hive_form_directionDropdown");
const Key keyHiveColonyOriginDropdown = Key("hive_form_colonyOriginDropdown");
const Key keyHiveQueenOriginDropdown = Key("hive_form_queenOriginDropdown");
const Key keyHiveBeeRaceDropdown = Key("hive_form_beeRaceDropdown");
const Key keyHiveQueenColorDropdown = Key("hive_form_queenColorDropdown");
const Key keyHiveSwarmDropdown = Key("hive_form_swarmDropdown");

const Key keyHiveSuccessSnackbar = Key("hive_snackbar_success");
const Key keyHiveFailureSnackbar = Key("hive_snackbar_failure");

// Common
const Key keyCommonInitialIndicator = Key("common_initial_indicator");
const Key keyCommonLoadingIndicator = Key("common_loading_indicator");
const Key keyCommonFailedIndicator = Key("common_failed_indicator");

const Key keyCommonContactButton = Key("common_contact_button");
const Key keyCommonIssueButton = Key("common_issue_button");
const Key keyCommonAccountButton = Key("common_account_button");
const Key keyCommonHardwareButton = Key("common_hardware_button");
const Key keyCommonAlertsButton = Key("common_alerts_button");
const Key keyCommonNewFeatureButton = Key("common_new_feature_button");
const Key keyCommonSignOutButton = Key("common_signOut_button");
const Key keyCommonShowArchiveButton = Key("common_showArchived_button");

const Key keyCommonDescriptionInput = Key("common_description_input");

const Key keyCommonFormImageHelper = Key("common_form_imageHelper");
const Key keyCommonFormImageError = Key("common_form_imageError");

const Key keyCommonFailureSnackbar = Key("common_snackbar_failure");
const Key keyCommonSuccessSnackbar = Key("common_snackbar_success");

GlobalKey<ScaffoldState> keyDashboardPage =
    GlobalKey<ScaffoldState>(debugLabel: "dashboard_page");
GlobalKey<ScaffoldState> keyAccountTab =
    GlobalKey<ScaffoldState>(debugLabel: "account-tab");

const Key keyAccountPage = Key("account_page");
const Key keyCreateAccountPage = Key("create_account_page");
const Key keyLoginPage = Key("login_page");
const Key keyResetPasswordPage = Key("reset_password_page");

const Key keyHomeTab = Key("home_page");
const Key keyHivePage = Key("hive_page");
const Key keyTaskPage = Key("task_page");
const Key keyApiaryDetailsPage = Key("apiary_details_page");
const Key keyHiveDetailsPage = Key("hive_details_page");

//Apiary
const Key keyApiaryPage = Key("apiary_page");
const Key keyApiaryImageContainer = Key("apiary_image_container");
const Key keyApiaryRadioButtonContainer = Key("apiary_radio_button_container");
const Key keyApiaryFormInfoButton = Key("apiary_form_info_button");
const Key keyApiaryLocationTextField = Key("apiary_location_text_field");
const Key keyApiaryPlacesResultsList = Key("apiary_places_result_list");
const Key keyApiarySaveButton = Key("apiary_save_button");
const Key keyApiaryFormErrors = Key("apiary_form_errors");
const Key keyApiaryNameForm = Key("apiary_name_form");
const Key keyApiarySerialNumberForm = Key("apiary_serial_number_form");
const Key keyApiaryExposureForm = Key("apiary_exposure_form");
const Key keyApiaryTypeForm = Key("apiary_type_form");

const Key keyApiaryHivesTab = Key("apiary_hives_tab");
const Key keyApiaryWeatherTab = Key("apiary_weather_tab");
const Key keyApiaryLogsTab = Key("apiary_logs_tab");
const Key keyApiaryTaskTab = Key("apiary_tasks_tab");
const Key keyApiaryHardwareTab = Key("apiary_hardware_tab");
const Key keyApiaryStatsTab = Key("apiary_stats_tab");

const Key keyApiaryHivesTabButton = Key("apiary_hives_tab_button");
const Key keyApiaryWeatherTabButton = Key("apiary_weather_tab_button");
const Key keyApiaryLogsTabButton = Key("apiary_logs_tab_button");
const Key keyApiaryTaskTabButton = Key("apiary_tasks_tab_button");
const Key keyApiaryHardwareTabButton = Key("apiary_hardware_tab_button");
const Key keyApiaryStatsTabButton = Key("apiary_stats_tab_button");

const Key keyApiaryCardErrorCard = Key("apiary_card_error_card");

const Key keyWeatherPageHeader = Key("weather_page_header");
const Key keyWeatherPageSubHeader = Key("weather_page_subHeader");
const Key keyWeatherDayForecastCard = Key("weather_day_forecast_card");
const Key keyWeatherErrorCard = Key("weather_error_card");

const Key keyFab = Key("fab");

const Key keyDiseaseDropdown = Key("disease_dropdown");
const Key keyStrengthSlider = Key("strength_slider");
const Key keyStorageSlider = Key("storage_slider");
const Key keyMoodSlider = Key("mood_slider");
const Key keyActivitySlider = Key("activity_slider");
const Key keyPatternSlider = Key("pattern_slider");

const Key keyAddLogButton = Key("logs_addLog_button");
const Key keyLogTemperature = Key("logs_temp_textField");
const Key keyLogHumidity = Key("logs_hum_textField");
const Key keyLogTypeDropdown = Key("logs_type_dropdown");
const Key keyLogSwarmCaughtSwitch = Key("logs_swarm_switch");
const Key keyAddSampleButton = Key("logs_addSample_button");
const Key keyLogInsertDate = Key("logs_insert_date");
const Key keyLogVarroaAmount = Key("logs_varroa_textField");
const Key keyVarroaMethodDropdown = Key("logs_VarroaMethod_dropdown");
const Key keyTreatmentMethodDropdown = Key("logs_treatmentMethod_dropdown");
const Key keyTreatmentApplicationDropdown =
    Key("logs_treatmentApplication_dropdown");

const Key keyTemperatureTab = Key("keyTemperatureTab");
const Key keyWeightTab = Key("keyWeightTab");
const Key keyTreatmentTab = Key("keyTreatmentTab");
const Key keyTreatmentAmountForm = Key("keyTreatmentAmountForm");
const Key keyTreatmentConcentrationForm = Key("keyTreatmentConcentrationForm");

const Key keyCommonFormError = Key("common_form_error");
const Key keyHarvestBoxesAmountTextField = Key("boxes_amount_textField");
const Key keyHarvestFramesAmountTextField = Key("frames_amount_textField");
const Key keyHarvestWaterContentTextField = Key("water_content_textField");
const Key keyHoneyTypeDropdown = Key("honey_type_dropdown");
const Key keyUnitsDropdown = Key("units_dropdown");
const Key keyCommonInfoButton = Key("common_info_button");
const Key keyCommonSaveButton = Key("common_save_button");

const Key keyFeedTypeDropdown = Key("feed_type_dropdown");
const Key keyAmountTextField = Key("amount_textField");
const Key keyUnitTypeDropdown = Key("unit_type_dropdown");
