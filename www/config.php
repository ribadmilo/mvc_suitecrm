<?php
// created: 2015-09-14 16:20:58
$sugar_config = array (
  'addAjaxBannedModules' =>
  array (
    0 => 'SecurityGroups',
  ),
  'admin_access_control' => false,
  'admin_export_only' => false,
  'aod' =>
  array (
    'enable_aod' => true,
  ),
  'aop' =>
  array (
    'distribution_method' => 'roundRobin',
    'case_closure_email_template_id' => 'ec10d56a-6dc7-1833-c6a3-5509661c8f62',
    'joomla_account_creation_email_template_id' => 'ef0f7037-7945-1ce2-cdc4-55096647a18c',
    'case_creation_email_template_id' => 'f25d339f-e48a-356a-486f-55096662d79b',
    'contact_email_template_id' => '54d30800-d41f-216a-8fe5-5509661dfd74',
    'user_email_template_id' => '98ed0226-946b-457f-f753-55096696e11c',
  ),
  'aos' =>
  array (
    'version' => '5.3.3',
    'contracts' =>
    array (
      'renewalReminderPeriod' => '14',
    ),
    'lineItems' =>
    array (
      'totalTax' => false,
      'enableGroups' => true,
    ),
    'invoices' =>
    array (
      'initialNumber' => '1',
    ),
    'quotes' =>
    array (
      'initialNumber' => '1',
    ),
  ),
  'cache_dir' => 'cache/',
  'calculate_response_time' => true,
  'calendar' =>
  array (
    'default_view' => 'week',
    'show_calls_by_default' => true,
    'show_tasks_by_default' => true,
    'show_completed_by_default' => true,
    'editview_width' => 990,
    'editview_height' => 485,
    'day_timestep' => 15,
    'week_timestep' => 30,
    'items_draggable' => true,
    'items_resizable' => true,
    'enable_repeat' => true,
    'max_repeat_count' => 1000,
  ),
  'chartEngine' => 'Jit',
  'common_ml_dir' => '',
  'create_default_user' => false,
  'cron' =>
  array (
    'max_cron_jobs' => 10,
    'max_cron_runtime' => 30,
    'min_cron_interval' => 30,
  ),
  'currency' => '',
  'dashlet_auto_refresh_min' => '30',
  'dashlet_display_row_options' =>
  array (
    0 => '1',
    1 => '3',
    2 => '5',
    3 => '10',
  ),
  'date_formats' =>
  array (
    'Y-m-d' => '2010-12-23',
    'm-d-Y' => '12-23-2010',
    'd-m-Y' => '23-12-2010',
    'Y/m/d' => '2010/12/23',
    'm/d/Y' => '12/23/2010',
    'd/m/Y' => '23/12/2010',
    'Y.m.d' => '2010.12.23',
    'd.m.Y' => '23.12.2010',
    'm.d.Y' => '12.23.2010',
  ),
  'datef' => 'm/d/Y',
  'dbconfig' =>
  array (
    'db_host_name' => 'localhost',
    'db_host_instance' => 'SQLEXPRESS',
    'db_user_name' => 'root',
    'db_password' => 'root',
    'db_name' => 'suitecrm',
    'db_type' => 'mysql',
    'db_port' => '',
    'db_manager' => 'MysqliManager',
  ),
  'dbconfigoption' =>
  array (
    'persistent' => true,
    'autofree' => false,
    'debug' => 0,
    'ssl' => false,
  ),
  'default_action' => 'index',
  'default_charset' => 'UTF-8',
  'default_currencies' =>
  array (
    'AUD' =>
    array (
      'name' => 'Australian Dollars',
      'iso4217' => 'AUD',
      'symbol' => '$',
    ),
    'BRL' =>
    array (
      'name' => 'Brazilian Reais',
      'iso4217' => 'BRL',
      'symbol' => 'R$',
    ),
    'GBP' =>
    array (
      'name' => 'British Pounds',
      'iso4217' => 'GBP',
      'symbol' => '£',
    ),
    'CAD' =>
    array (
      'name' => 'Canadian Dollars',
      'iso4217' => 'CAD',
      'symbol' => '$',
    ),
    'CNY' =>
    array (
      'name' => 'Chinese Yuan',
      'iso4217' => 'CNY',
      'symbol' => '￥',
    ),
    'EUR' =>
    array (
      'name' => 'Euro',
      'iso4217' => 'EUR',
      'symbol' => '€',
    ),
    'HKD' =>
    array (
      'name' => 'Hong Kong Dollars',
      'iso4217' => 'HKD',
      'symbol' => '$',
    ),
    'INR' =>
    array (
      'name' => 'Indian Rupees',
      'iso4217' => 'INR',
      'symbol' => '₨',
    ),
    'KRW' =>
    array (
      'name' => 'Korean Won',
      'iso4217' => 'KRW',
      'symbol' => '₩',
    ),
    'YEN' =>
    array (
      'name' => 'Japanese Yen',
      'iso4217' => 'JPY',
      'symbol' => '¥',
    ),
    'MXM' =>
    array (
      'name' => 'Mexican Pesos',
      'iso4217' => 'MXM',
      'symbol' => '$',
    ),
    'SGD' =>
    array (
      'name' => 'Singaporean Dollars',
      'iso4217' => 'SGD',
      'symbol' => '$',
    ),
    'CHF' =>
    array (
      'name' => 'Swiss Franc',
      'iso4217' => 'CHF',
      'symbol' => 'SFr.',
    ),
    'THB' =>
    array (
      'name' => 'Thai Baht',
      'iso4217' => 'THB',
      'symbol' => '฿',
    ),
    'USD' =>
    array (
      'name' => 'US Dollars',
      'iso4217' => 'USD',
      'symbol' => '$',
    ),
  ),
  'default_currency_iso4217' => 'USD',
  'default_currency_name' => 'US Dollars',
  'default_currency_significant_digits' => 2,
  'default_currency_symbol' => '$',
  'default_date_format' => 'm/d/Y',
  'default_decimal_seperator' => '.',
  'default_email_charset' => 'UTF-8',
  'default_email_client' => 'sugar',
  'default_email_editor' => 'html',
  'default_export_charset' => 'UTF-8',
  'default_language' => 'en_us',
  'default_locale_name_format' => 's f l',
  'default_max_tabs' => '7',
  'default_module' => 'Home',
  'default_module_favicon' => false,
  'default_navigation_paradigm' => 'gm',
  'default_number_grouping_seperator' => ',',
  'default_password' => '',
  'default_permissions' =>
  array (
    'dir_mode' => 1528,
    'file_mode' => 432,
    'user' => '',
    'group' => '',
  ),
  'default_subpanel_links' => false,
  'default_subpanel_tabs' => true,
  'default_swap_last_viewed' => false,
  'default_swap_shortcuts' => false,
  'default_theme' => 'SuiteR',
  'default_time_format' => 'h:ia',
  'default_user_is_admin' => false,
  'default_user_name' => '',
  'demoData' => 'no',
  'developerMode' => false,
  'disable_convert_lead' => false,
  'disable_export' => false,
  'disable_persistent_connections' => 'false',
  'display_email_template_variable_chooser' => false,
  'display_inbound_email_buttons' => false,
  'dump_slow_queries' => false,
  'email_address_separator' => ',',
  'email_default_client' => 'sugar',
  'email_default_delete_attachments' => true,
  'email_default_editor' => 'html',
  'enable_action_menu' => true,
  'export_delimiter' => ',',
  'export_excel_compatible' => false,
  'history_max_viewed' => 50,
  'host_name' => '192.168.56.101',
  'import_max_execution_time' => 3600,
  'import_max_records_per_file' => 100,
  'import_max_records_total_limit' => '',
  'installer_locked' => true,
  'jobs' =>
  array (
    'min_retry_interval' => 30,
    'max_retries' => 5,
    'timeout' => 86400,
  ),
  'js_custom_version' => 1,
  'js_lang_version' => 6,
  'languages' =>
  array (
    'en_us' => 'English (US)',
    'es_es' => 'Español (ES)',
    'ru_ru' => 'Русский (RU)',
  ),
  'large_scale_test' => false,
  'lead_conv_activity_opt' => 'donothing',
  'list_max_entries_per_page' => 20,
  'list_max_entries_per_subpanel' => 10,
  'lock_default_user_name' => false,
  'lock_homepage' => true,
  'lock_subpanels' => false,
  'log_dir' => '.',
  'log_file' => 'suitecrm.log',
  'log_memory_usage' => false,
  'logger' =>
  array (
    'level' => 'fatal',
    'file' =>
    array (
      'ext' => '.log',
      'name' => 'suitecrm',
      'dateFormat' => '%c',
      'maxSize' => '10MB',
      'maxLogs' => 10,
      'suffix' => '',
    ),
  ),
  'max_dashlets_homepage' => '15',
  'name_formats' =>
  array (
    's f l' => 's f l',
    'f l' => 'f l',
    's l' => 's l',
    'l, s f' => 'l, s f',
    'l, f' => 'l, f',
    's l, f' => 's l, f',
    'l s f' => 'l s f',
    'l f s' => 'l f s',
  ),
  'passwordsetting' =>
  array (
    'SystemGeneratedPasswordON' => true,
    'generatepasswordtmpl' => 'a9f912b1-7699-1445-1eab-550966eeacc4',
    'lostpasswordtmpl' => 'ada00900-f559-15e9-7f13-550966c50b7a',
    'forgotpasswordON' => true,
    'linkexpiration' => true,
    'linkexpirationtime' => 24,
    'linkexpirationtype' => 60,
    'systexpiration' => 1,
    'systexpirationtime' => 7,
    'systexpirationtype' => '0',
    'systexpirationlogin' => '',
    'minpwdlength' => 6,
    'oneupper' => false,
    'onelower' => false,
    'onenumber' => false,
  ),
  'portal_view' => 'single_user',
  'require_accounts' => true,
  'resource_management' =>
  array (
    'special_query_limit' => 50000,
    'special_query_modules' =>
    array (
      0 => 'Reports',
      1 => 'Export',
      2 => 'Import',
      3 => 'Administration',
      4 => 'Sync',
    ),
    'default_limit' => 20000,
  ),
  'rss_cache_time' => '10800',
  'save_query' => 'all',
  'search_wildcard_char' => '%',
  'search_wildcard_infront' => false,
  'securitysuite_additive' => true,
  'securitysuite_filter_user_list' => false,
  'securitysuite_inherit_assigned' => true,
  'securitysuite_inherit_creator' => true,
  'securitysuite_inherit_parent' => true,
  'securitysuite_popup_select' => false,
  'securitysuite_strict_rights' => false,
  'securitysuite_user_popup' => true,
  'securitysuite_user_role_precedence' => true,
  'securitysuite_version' => '6.5.17',
  'session_dir' => '',
  'showDetailData' => true,
  'showThemePicker' => true,
  'site_url' => 'http://192.168.56.101',
  'slow_query_time_msec' => '100',
  'stack_trace_errors' => false,
  'sugar_version' => '6.5.20',
  'sugarbeet' => false,
  'suitecrm_version' => '7.2.1',
  'theme_settings' =>
  array (
    'SuiteR' =>
    array (
      'display_sidebar' => false,
      'navbar' => '025716',
      'navbar_hover' => '025716',
      'navbar_font' => 'FFFFFF',
      'navbar_link_hover' => 'FFFFFF',
      'dropdown_menu' => 'F7F7F7',
      'dropdown_menu_link' => '025716',
      'dropdown_menu_link_hover' => 'F7F7F7',
      'button' => '025716',
      'button_hover' => 'c8d6d1',
      'button_link' => 'FFFFFF',
      'button_link_hover' => '025716',
      'page_header' => '025716',
      'page_link' => '025716',
      'dashlet' => 'c8d6d1',
      'icon' => 'FFFFFF',
    ),
  ),
  'time_formats' =>
  array (
    'H:i' => '23:00',
    'h:ia' => '11:00pm',
    'h:iA' => '11:00PM',
    'h:i a' => '11:00 pm',
    'h:i A' => '11:00 PM',
    'H.i' => '23.00',
    'h.ia' => '11.00pm',
    'h.iA' => '11.00PM',
    'h.i a' => '11.00 pm',
    'h.i A' => '11.00 PM',
  ),
  'timef' => 'H:i',
  'tmp_dir' => 'cache/xml/',
  'tracker_max_display_length' => 15,
  'translation_string_prefix' => false,
  'unique_key' => 'd48fac178ca392a2e75da6d2130fde4f',
  'upload_badext' =>
  array (
    0 => 'php',
    1 => 'php3',
    2 => 'php4',
    3 => 'php5',
    4 => 'pl',
    5 => 'cgi',
    6 => 'py',
    7 => 'asp',
    8 => 'cfm',
    9 => 'js',
    10 => 'vbs',
    11 => 'html',
    12 => 'htm',
    13 => 'phtml',
  ),
  'upload_dir' => 'upload/',
  'upload_maxsize' => 30000000,
  'use_common_ml_dir' => false,
  'use_real_names' => true,
  'vcal_time' => '2',
  'verify_client_ip' => true,
);
