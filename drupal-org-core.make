api = 2
core = 7.x

; Drupal core
projects[drupal][type] = core
projects[drupal][version] = 7.22

; Ensure that hook_field_presave() is run for default field values.
; @see https://drupal.org/node/1899498
projects[drupal][patch][] = "http://drupal.org/files/1899498-field-default-value-invoke-presave.patch"
; Add support for formatter weights.
; @see https://drupal.org/node/1982776
projects[drupal][patch][] = "http://drupal.org/files/1982776-field-formatter-weight-do-not-test_0.patch"
; Uncomment settings.local.php support in settings.php
; @see https://drupal.org/node/1118520
projects[drupal][patch][] = "http://drupal.org/files/1118520-settings-local-uncommented-do-not-test.patch"
; Fix install failures if memory limit is set to -1
; @see https://drupal.org/node/1453984
projects[drupal][patch][] = "http://drupal.org/files/1453984-drupal-check-memory-limit_0.patch"

; Hide the profiles under /profiles, so DEIMS is the only one. This allows
; the installation to start at the Language selection screen, bypassing a
; baffling and silly choice, especially for non-native speakers.
; http://drupal.org/node/1780598#comment-6480088
projects[drupal][patch][] = "http://drupal.org/files/spark-install-1780598-5.patch"
; This requires a core bug fix to not show the profile selection page when only
; one profile is visible.
; http://drupal.org/node/1074108#comment-6463662
projects[drupal][patch][] = "http://drupal.org/files/1074108-skip-profile-16-7.x-do-not-test.patch"
