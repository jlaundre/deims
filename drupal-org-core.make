api = 2
core = 7.x

; Drupal core
projects[drupal][type] = core
projects[drupal][version] = 7.59

; Ensure that hook_field_presave() is run for default field values.
; @see https://drupal.org/node/1899498
projects[drupal][patch][] = "https://www.drupal.org/files/field_hook_presave_and_load_for_default_values_1.patch"
; Add support for formatter weights.
; @see https://drupal.org/node/1982776
projects[drupal][patch][] = "https://www.drupal.org/files/issues/formatter_weight-1982776-29.patch"
; Uncomment settings.local.php support in settings.php
; @see https://drupal.org/node/1118520 and https://www.drupal.org/node/2620332
projects[drupal][patch][] = https://www.drupal.org/files/issues/2620332-settings-local-uncommented-do-not-test.patch
