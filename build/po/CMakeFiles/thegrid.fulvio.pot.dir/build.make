# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/fulvio/Dropbox/ubuntu-devel/my-apps/theGrid/source/theGrid

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/fulvio/Dropbox/ubuntu-devel/my-apps/theGrid/source/theGrid/build

# Utility rule file for thegrid.fulvio.pot.

# Include the progress variables for this target.
include po/CMakeFiles/thegrid.fulvio.pot.dir/progress.make

po/CMakeFiles/thegrid.fulvio.pot:
	$(CMAKE_COMMAND) -E cmake_progress_report /home/fulvio/Dropbox/ubuntu-devel/my-apps/theGrid/source/theGrid/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating translation template"
	cd /home/fulvio/Dropbox/ubuntu-devel/my-apps/theGrid/source/theGrid/build/po && /usr/bin/intltool-extract --update --type=gettext/ini --srcdir=/home/fulvio/Dropbox/ubuntu-devel/my-apps/theGrid/source/theGrid theGrid.desktop.in
	cd /home/fulvio/Dropbox/ubuntu-devel/my-apps/theGrid/source/theGrid/build/po && /usr/bin/xgettext -o thegrid.fulvio.pot -D /home/fulvio/Dropbox/ubuntu-devel/my-apps/theGrid/source/theGrid/po -D /home/fulvio/Dropbox/ubuntu-devel/my-apps/theGrid/source/theGrid/build/po --from-code=UTF-8 --c++ --qt --language=javascript --add-comments=TRANSLATORS --keyword=tr --keyword=tr:1,2 --keyword=N_ --keyword=_ --package-name='thegrid.fulvio' ../qml/SavedContentsDelegate.qml ../qml/ProductInfo.qml ../qml/SavedContentPage.qml ../qml/Settings.qml ../qml/Main.qml ../qml/SaveDialog.qml ../qml/uriUtils.js ../qml/Utility.js ../qml/Storage.js ../qml/oxide.js ../qml/www/thegrid.js ../qml/www/src/sensei-grid.js ../qml/www/src/sensei-row-actions.js ../qml/www/src/sensei-editors.js ../qml/www/lib/jquery/dist/jquery.min.js ../qml/www/lib/jquery/dist/jquery.js ../qml/www/lib/jquery/src/callbacks.js ../qml/www/lib/jquery/src/css/defaultDisplay.js ../qml/www/lib/jquery/src/css/swap.js ../qml/www/lib/jquery/src/css/addGetHookIf.js ../qml/www/lib/jquery/src/css/support.js ../qml/www/lib/jquery/src/css/curCSS.js ../qml/www/lib/jquery/src/css/var/isHidden.js ../qml/www/lib/jquery/src/css/var/rmargin.js ../qml/www/lib/jquery/src/css/var/rnumnonpx.js ../qml/www/lib/jquery/src/css/var/cssExpand.js ../qml/www/lib/jquery/src/css/var/getStyles.js ../qml/www/lib/jquery/src/css/hiddenVisibleSelectors.js ../qml/www/lib/jquery/src/selector.js ../qml/www/lib/jquery/src/event.js ../qml/www/lib/jquery/src/dimensions.js ../qml/www/lib/jquery/src/ajax.js ../qml/www/lib/jquery/src/traversing.js ../qml/www/lib/jquery/src/data/Data.js ../qml/www/lib/jquery/src/data/var/data_user.js ../qml/www/lib/jquery/src/data/var/data_priv.js ../qml/www/lib/jquery/src/data/accepts.js ../qml/www/lib/jquery/src/queue/delay.js ../qml/www/lib/jquery/src/deprecated.js ../qml/www/lib/jquery/src/selector-sizzle.js ../qml/www/lib/jquery/src/queue.js ../qml/www/lib/jquery/src/serialize.js ../qml/www/lib/jquery/src/traversing/var/rneedsContext.js ../qml/www/lib/jquery/src/traversing/findFilter.js ../qml/www/lib/jquery/src/data.js ../qml/www/lib/jquery/src/manipulation/support.js ../qml/www/lib/jquery/src/manipulation/var/rcheckableType.js ../qml/www/lib/jquery/src/manipulation/_evalUrl.js ../qml/www/lib/jquery/src/exports/global.js ../qml/www/lib/jquery/src/exports/amd.js ../qml/www/lib/jquery/src/ajax/parseJSON.js ../qml/www/lib/jquery/src/ajax/script.js ../qml/www/lib/jquery/src/ajax/xhr.js ../qml/www/lib/jquery/src/ajax/jsonp.js ../qml/www/lib/jquery/src/ajax/load.js ../qml/www/lib/jquery/src/ajax/var/rquery.js ../qml/www/lib/jquery/src/ajax/var/nonce.js ../qml/www/lib/jquery/src/ajax/parseXML.js ../qml/www/lib/jquery/src/jquery.js ../qml/www/lib/jquery/src/intro.js ../qml/www/lib/jquery/src/outro.js ../qml/www/lib/jquery/src/css.js ../qml/www/lib/jquery/src/core/ready.js ../qml/www/lib/jquery/src/core/init.js ../qml/www/lib/jquery/src/core/access.js ../qml/www/lib/jquery/src/core/parseHTML.js ../qml/www/lib/jquery/src/core/var/rsingleTag.js ../qml/www/lib/jquery/src/offset.js ../qml/www/lib/jquery/src/event/ajax.js ../qml/www/lib/jquery/src/event/support.js ../qml/www/lib/jquery/src/event/alias.js ../qml/www/lib/jquery/src/var/push.js ../qml/www/lib/jquery/src/var/pnum.js ../qml/www/lib/jquery/src/var/hasOwn.js ../qml/www/lib/jquery/src/var/indexOf.js ../qml/www/lib/jquery/src/var/toString.js ../qml/www/lib/jquery/src/var/rnotwhite.js ../qml/www/lib/jquery/src/var/class2type.js ../qml/www/lib/jquery/src/var/arr.js ../qml/www/lib/jquery/src/var/support.js ../qml/www/lib/jquery/src/var/strundefined.js ../qml/www/lib/jquery/src/var/concat.js ../qml/www/lib/jquery/src/var/slice.js ../qml/www/lib/jquery/src/manipulation.js ../qml/www/lib/jquery/src/effects/Tween.js ../qml/www/lib/jquery/src/effects/animatedSelector.js ../qml/www/lib/jquery/src/wrap.js ../qml/www/lib/jquery/src/deferred.js ../qml/www/lib/jquery/src/attributes.js ../qml/www/lib/jquery/src/selector-native.js ../qml/www/lib/jquery/src/attributes/classes.js ../qml/www/lib/jquery/src/attributes/support.js ../qml/www/lib/jquery/src/attributes/prop.js ../qml/www/lib/jquery/src/attributes/attr.js ../qml/www/lib/jquery/src/attributes/val.js ../qml/www/lib/jquery/src/core.js ../qml/www/lib/jquery/src/effects.js ../qml/www/lib/jquery/src/sizzle/dist/sizzle.min.js ../qml/www/lib/jquery/src/sizzle/dist/sizzle.js ../qml/www/lib/lodash/lodash.min.js ../qml/www/lib/lodash/lodash.js ../qml/www/lib/typeahead.js/dist/typeahead.bundle.min.js ../qml/www/lib/typeahead.js/dist/typeahead.jquery.min.js ../qml/www/lib/typeahead.js/dist/bloodhound.min.js ../qml/www/lib/typeahead.js/dist/bloodhound.js ../qml/www/lib/typeahead.js/dist/typeahead.jquery.js ../qml/www/lib/typeahead.js/dist/typeahead.bundle.js ../qml/www/lib/typeahead.js/karma.conf.js ../qml/www/lib/typeahead.js/Gruntfile.js ../qml/www/lib/typeahead.js/src/bloodhound/prefetch.js ../qml/www/lib/typeahead.js/src/bloodhound/options_parser.js ../qml/www/lib/typeahead.js/src/bloodhound/tokenizers.js ../qml/www/lib/typeahead.js/src/bloodhound/persistent_storage.js ../qml/www/lib/typeahead.js/src/bloodhound/search_index.js ../qml/www/lib/typeahead.js/src/bloodhound/bloodhound.js ../qml/www/lib/typeahead.js/src/bloodhound/lru_cache.js ../qml/www/lib/typeahead.js/src/bloodhound/version.js ../qml/www/lib/typeahead.js/src/bloodhound/remote.js ../qml/www/lib/typeahead.js/src/bloodhound/transport.js ../qml/www/lib/typeahead.js/src/typeahead/plugin.js ../qml/www/lib/typeahead.js/src/typeahead/highlight.js ../qml/www/lib/typeahead.js/src/typeahead/menu.js ../qml/www/lib/typeahead.js/src/typeahead/www.js ../qml/www/lib/typeahead.js/src/typeahead/default_menu.js ../qml/www/lib/typeahead.js/src/typeahead/typeahead.js ../qml/www/lib/typeahead.js/src/typeahead/event_bus.js ../qml/www/lib/typeahead.js/src/typeahead/dataset.js ../qml/www/lib/typeahead.js/src/typeahead/input.js ../qml/www/lib/typeahead.js/src/typeahead/event_emitter.js ../qml/www/lib/typeahead.js/src/common/utils.js ../qml/www/lib/typeahead.js/test/integration/test.js ../qml/www/lib/typeahead.js/test/helpers/typeahead_mocks.js ../qml/www/lib/typeahead.js/test/bloodhound/remote_spec.js ../qml/www/lib/typeahead.js/test/bloodhound/prefetch_spec.js ../qml/www/lib/typeahead.js/test/bloodhound/transport_spec.js ../qml/www/lib/typeahead.js/test/bloodhound/persistent_storage_spec.js ../qml/www/lib/typeahead.js/test/bloodhound/options_parser_spec.js ../qml/www/lib/typeahead.js/test/bloodhound/bloodhound_spec.js ../qml/www/lib/typeahead.js/test/bloodhound/tokenizers_spec.js ../qml/www/lib/typeahead.js/test/bloodhound/lru_cache_spec.js ../qml/www/lib/typeahead.js/test/bloodhound/search_index_spec.js ../qml/www/lib/typeahead.js/test/typeahead/input_spec.js ../qml/www/lib/typeahead.js/test/typeahead/default_results_spec.js ../qml/www/lib/typeahead.js/test/typeahead/event_emitter_spec.js ../qml/www/lib/typeahead.js/test/typeahead/typeahead_spec.js ../qml/www/lib/typeahead.js/test/typeahead/results_spec.js ../qml/www/lib/typeahead.js/test/typeahead/dataset_spec.js ../qml/www/lib/typeahead.js/test/typeahead/highlight_spec.js ../qml/www/lib/typeahead.js/test/typeahead/plugin_spec.js ../qml/www/lib/typeahead.js/test/typeahead/event_bus_spec.js ../qml/www/lib/typeahead.js/test/fixtures/ajax_responses.js ../qml/www/lib/typeahead.js/test/fixtures/html.js ../qml/www/lib/typeahead.js/test/fixtures/data.js ../qml/www/lib/pickadate/tests/qunit.js ../qml/www/lib/pickadate/tests/jquery.2.0.0.js ../qml/www/lib/pickadate/tests/jquery.1.9.1.js ../qml/www/lib/pickadate/tests/units/base.js ../qml/www/lib/pickadate/tests/units/date.js ../qml/www/lib/pickadate/tests/units/time.js ../qml/www/lib/pickadate/tests/jquery.1.7.0.js ../qml/www/lib/pickadate/Gruntfile.js ../qml/www/lib/pickadate/version-bump.js ../qml/www/lib/pickadate/lib/picker.date.js ../qml/www/lib/pickadate/lib/picker.time.js ../qml/www/lib/pickadate/lib/compressed/picker.date.js ../qml/www/lib/pickadate/lib/compressed/picker.time.js ../qml/www/lib/pickadate/lib/compressed/picker.js ../qml/www/lib/pickadate/lib/compressed/legacy.js ../qml/www/lib/pickadate/lib/compressed/translations/es_ES.js ../qml/www/lib/pickadate/lib/compressed/translations/hr_HR.js ../qml/www/lib/pickadate/lib/compressed/translations/is_IS.js ../qml/www/lib/pickadate/lib/compressed/translations/tr_TR.js ../qml/www/lib/pickadate/lib/compressed/translations/sl_SI.js ../qml/www/lib/pickadate/lib/compressed/translations/nl_NL.js ../qml/www/lib/pickadate/lib/compressed/translations/gl_ES.js ../qml/www/lib/pickadate/lib/compressed/translations/lt_LT.js ../qml/www/lib/pickadate/lib/compressed/translations/de_DE.js ../qml/www/lib/pickadate/lib/compressed/translations/pl_PL.js ../qml/www/lib/pickadate/lib/compressed/translations/uk_UA.js ../qml/www/lib/pickadate/lib/compressed/translations/et_EE.js ../qml/www/lib/pickadate/lib/compressed/translations/ro_RO.js ../qml/www/lib/pickadate/lib/compressed/translations/fi_FI.js ../qml/www/lib/pickadate/lib/compressed/translations/fr_FR.js ../qml/www/lib/pickadate/lib/compressed/translations/id_ID.js ../qml/www/lib/pickadate/lib/compressed/translations/fa_IR.js ../qml/www/lib/pickadate/lib/compressed/translations/da_DK.js ../qml/www/lib/pickadate/lib/compressed/translations/pt_BR.js ../qml/www/lib/pickadate/lib/compressed/translations/lv_LV.js ../qml/www/lib/pickadate/lib/compressed/translations/pt_PT.js ../qml/www/lib/pickadate/lib/compressed/translations/ru_RU.js ../qml/www/lib/pickadate/lib/compressed/translations/hu_HU.js ../qml/www/lib/pickadate/lib/compressed/translations/ko_KR.js ../qml/www/lib/pickadate/lib/compressed/translations/hi_IN.js ../qml/www/lib/pickadate/lib/compressed/translations/ne_NP.js ../qml/www/lib/pickadate/lib/compressed/translations/eu_ES.js ../qml/www/lib/pickadate/lib/compressed/translations/ja_JP.js ../qml/www/lib/pickadate/lib/compressed/translations/ca_ES.js ../qml/www/lib/pickadate/lib/compressed/translations/it_IT.js ../qml/www/lib/pickadate/lib/compressed/translations/no_NO.js ../qml/www/lib/pickadate/lib/compressed/translations/vi_VN.js ../qml/www/lib/pickadate/lib/compressed/translations/bg_BG.js ../qml/www/lib/pickadate/lib/compressed/translations/zh_CN.js ../qml/www/lib/pickadate/lib/compressed/translations/sv_SE.js ../qml/www/lib/pickadate/lib/compressed/translations/bs_BA.js ../qml/www/lib/pickadate/lib/compressed/translations/el_GR.js ../qml/www/lib/pickadate/lib/compressed/translations/ar.js ../qml/www/lib/pickadate/lib/compressed/translations/he_IL.js ../qml/www/lib/pickadate/lib/compressed/translations/sk_SK.js ../qml/www/lib/pickadate/lib/compressed/translations/cs_CZ.js ../qml/www/lib/pickadate/lib/compressed/translations/zh_TW.js ../qml/www/lib/pickadate/lib/compressed/translations/th_TH.js ../qml/www/lib/pickadate/lib/compressed/translations/nb_NO.js ../qml/www/lib/pickadate/lib/picker.js ../qml/www/lib/pickadate/lib/legacy.js ../qml/www/lib/pickadate/lib/translations/es_ES.js ../qml/www/lib/pickadate/lib/translations/hr_HR.js ../qml/www/lib/pickadate/lib/translations/is_IS.js ../qml/www/lib/pickadate/lib/translations/tr_TR.js ../qml/www/lib/pickadate/lib/translations/sl_SI.js ../qml/www/lib/pickadate/lib/translations/nl_NL.js ../qml/www/lib/pickadate/lib/translations/gl_ES.js ../qml/www/lib/pickadate/lib/translations/lt_LT.js ../qml/www/lib/pickadate/lib/translations/de_DE.js ../qml/www/lib/pickadate/lib/translations/pl_PL.js ../qml/www/lib/pickadate/lib/translations/uk_UA.js ../qml/www/lib/pickadate/lib/translations/et_EE.js ../qml/www/lib/pickadate/lib/translations/ro_RO.js ../qml/www/lib/pickadate/lib/translations/fi_FI.js ../qml/www/lib/pickadate/lib/translations/fr_FR.js ../qml/www/lib/pickadate/lib/translations/id_ID.js ../qml/www/lib/pickadate/lib/translations/fa_IR.js ../qml/www/lib/pickadate/lib/translations/da_DK.js ../qml/www/lib/pickadate/lib/translations/pt_BR.js ../qml/www/lib/pickadate/lib/translations/lv_LV.js ../qml/www/lib/pickadate/lib/translations/pt_PT.js ../qml/www/lib/pickadate/lib/translations/ru_RU.js ../qml/www/lib/pickadate/lib/translations/hu_HU.js ../qml/www/lib/pickadate/lib/translations/ko_KR.js ../qml/www/lib/pickadate/lib/translations/hi_IN.js ../qml/www/lib/pickadate/lib/translations/ne_NP.js ../qml/www/lib/pickadate/lib/translations/eu_ES.js ../qml/www/lib/pickadate/lib/translations/ja_JP.js ../qml/www/lib/pickadate/lib/translations/ca_ES.js ../qml/www/lib/pickadate/lib/translations/it_IT.js ../qml/www/lib/pickadate/lib/translations/vi_VN.js ../qml/www/lib/pickadate/lib/translations/bg_BG.js ../qml/www/lib/pickadate/lib/translations/zh_CN.js ../qml/www/lib/pickadate/lib/translations/sv_SE.js ../qml/www/lib/pickadate/lib/translations/bs_BA.js ../qml/www/lib/pickadate/lib/translations/el_GR.js ../qml/www/lib/pickadate/lib/translations/ar.js ../qml/www/lib/pickadate/lib/translations/he_IL.js ../qml/www/lib/pickadate/lib/translations/sk_SK.js ../qml/www/lib/pickadate/lib/translations/cs_CZ.js ../qml/www/lib/pickadate/lib/translations/zh_TW.js ../qml/www/lib/pickadate/lib/translations/th_TH.js ../qml/www/lib/pickadate/lib/translations/nb_NO.js ../qml/www/lib/pickadate/version-commit.js ../qml/www/lib/bootstrap/dist/js/bootstrap.min.js ../qml/www/lib/bootstrap/dist/js/bootstrap.js ../qml/www/lib/bootstrap/Gruntfile.js ../qml/www/lib/bootstrap/grunt/bs-lessdoc-parser.js ../qml/www/lib/bootstrap/grunt/bs-glyphicons-data-generator.js ../qml/www/lib/bootstrap/grunt/bs-raw-files-generator.js ../qml/www/lib/bootstrap/js/collapse.js ../qml/www/lib/bootstrap/js/scrollspy.js ../qml/www/lib/bootstrap/js/button.js ../qml/www/lib/bootstrap/js/modal.js ../qml/www/lib/bootstrap/js/tab.js ../qml/www/lib/bootstrap/js/affix.js ../qml/www/lib/bootstrap/js/tooltip.js ../qml/www/lib/bootstrap/js/popover.js ../qml/www/lib/bootstrap/js/transition.js ../qml/www/lib/bootstrap/js/dropdown.js ../qml/www/lib/bootstrap/js/alert.js ../qml/www/lib/bootstrap/js/carousel.js ../qml/www/lib/summernote/dist/summernote.js ../qml/www/lib/summernote/dist/summernote.min.js ../qml/www/lib/summernote/dist/lang/summernote-lt-LT.min.js ../qml/www/lib/summernote/dist/lang/summernote-es-EU.min.js ../qml/www/lib/summernote/dist/lang/summernote-uk-UA.js ../qml/www/lib/summernote/dist/lang/summernote-cs-CZ.min.js ../qml/www/lib/summernote/dist/lang/summernote-it-IT.js ../qml/www/lib/summernote/dist/lang/summernote-pt-BR.js ../qml/www/lib/summernote/dist/lang/summernote-pl-PL.js ../qml/www/lib/summernote/dist/lang/summernote-fr-FR.js ../qml/www/lib/summernote/dist/lang/summernote-bg-BG.js ../qml/www/lib/summernote/dist/lang/summernote-sk-SK.min.js ../qml/www/lib/summernote/dist/lang/summernote-nl-NL.js ../qml/www/lib/summernote/dist/lang/summernote-pt-BR.min.js ../qml/www/lib/summernote/dist/lang/summernote-de-DE.min.js ../qml/www/lib/summernote/dist/lang/summernote-nb-NO.min.js ../qml/www/lib/summernote/dist/lang/summernote-sr-RS.js ../qml/www/lib/summernote/dist/lang/summernote-sk-SK.js ../qml/www/lib/summernote/dist/lang/summernote-zh-TW.js ../qml/www/lib/summernote/dist/lang/summernote-ru-RU.js ../qml/www/lib/summernote/dist/lang/summernote-es-EU.js ../qml/www/lib/summernote/dist/lang/summernote-nl-NL.min.js ../qml/www/lib/summernote/dist/lang/summernote-ru-RU.min.js ../qml/www/lib/summernote/dist/lang/summernote-fi-FI.js ../qml/www/lib/summernote/dist/lang/summernote-ja-JP.min.js ../qml/www/lib/summernote/dist/lang/summernote-id-ID.min.js ../qml/www/lib/summernote/dist/lang/summernote-sl-SI.js ../qml/www/lib/summernote/dist/lang/summernote-ca-ES.min.js ../qml/www/lib/summernote/dist/lang/summernote-ar-AR.js ../qml/www/lib/summernote/dist/lang/summernote-da-DK.js ../qml/www/lib/summernote/dist/lang/summernote-vi-VN.js ../qml/www/lib/summernote/dist/lang/summernote-fi-FI.min.js ../qml/www/lib/summernote/dist/lang/summernote-sr-RS-Latin.js ../qml/www/lib/summernote/dist/lang/summernote-ro-RO.min.js ../qml/www/lib/summernote/dist/lang/summernote-ja-JP.js ../qml/www/lib/summernote/dist/lang/summernote-de-DE.js ../qml/www/lib/summernote/dist/lang/summernote-hu-HU.min.js ../qml/www/lib/summernote/dist/lang/summernote-pt-PT.min.js ../qml/www/lib/summernote/dist/lang/summernote-zh-CN.min.js ../qml/www/lib/summernote/dist/lang/summernote-pl-PL.min.js ../qml/www/lib/summernote/dist/lang/summernote-zh-CN.js ../qml/www/lib/summernote/dist/lang/summernote-ko-KR.js ../qml/www/lib/summernote/dist/lang/summernote-ar-AR.min.js ../qml/www/lib/summernote/dist/lang/summernote-th-TH.js ../qml/www/lib/summernote/dist/lang/summernote-sr-RS.min.js ../qml/www/lib/summernote/dist/lang/summernote-hu-HU.js ../qml/www/lib/summernote/dist/lang/summernote-ca-ES.js ../qml/www/lib/summernote/dist/lang/summernote-ro-RO.js ../qml/www/lib/summernote/dist/lang/summernote-id-ID.js ../qml/www/lib/summernote/dist/lang/summernote-sl-SI.min.js ../qml/www/lib/summernote/dist/lang/summernote-sv-SE.js ../qml/www/lib/summernote/dist/lang/summernote-uk-UA.min.js ../qml/www/lib/summernote/dist/lang/summernote-sr-RS-Latin.min.js ../qml/www/lib/summernote/dist/lang/summernote-fa-IR.js ../qml/www/lib/summernote/dist/lang/summernote-es-ES.min.js ../qml/www/lib/summernote/dist/lang/summernote-lt-LT.js ../qml/www/lib/summernote/dist/lang/summernote-cs-CZ.js ../qml/www/lib/summernote/dist/lang/summernote-pt-PT.js ../qml/www/lib/summernote/dist/lang/summernote-th-TH.min.js ../qml/www/lib/summernote/dist/lang/summernote-tr-TR.js ../qml/www/lib/summernote/dist/lang/summernote-he-IL.min.js ../qml/www/lib/summernote/dist/lang/summernote-sv-SE.min.js ../qml/www/lib/summernote/dist/lang/summernote-fr-FR.min.js ../qml/www/lib/summernote/dist/lang/summernote-zh-TW.min.js ../qml/www/lib/summernote/dist/lang/summernote-da-DK.min.js ../qml/www/lib/summernote/dist/lang/summernote-it-IT.min.js ../qml/www/lib/summernote/dist/lang/summernote-vi-VN.min.js ../qml/www/lib/summernote/dist/lang/summernote-he-IL.js ../qml/www/lib/summernote/dist/lang/summernote-tr-TR.min.js ../qml/www/lib/summernote/dist/lang/summernote-fa-IR.min.js ../qml/www/lib/summernote/dist/lang/summernote-bg-BG.min.js ../qml/www/lib/summernote/dist/lang/summernote-es-ES.js ../qml/www/lib/summernote/dist/lang/summernote-nb-NO.js ../qml/www/lib/summernote/dist/lang/summernote-ko-KR.min.js ../qml/www/lib/summernote/src/js/lite/module/Toolbar.js ../qml/www/lib/summernote/src/js/lite/settings.js ../qml/www/lib/summernote/src/js/lite/ui.js ../qml/www/lib/summernote/src/js/summernote.js ../qml/www/lib/summernote/src/js/base/module/Dropzone.js ../qml/www/lib/summernote/src/js/base/module/Editor.js ../qml/www/lib/summernote/src/js/base/module/Placeholder.js ../qml/www/lib/summernote/src/js/base/module/Clipboard.js ../qml/www/lib/summernote/src/js/base/module/Statusbar.js ../qml/www/lib/summernote/src/js/base/module/Fullscreen.js ../qml/www/lib/summernote/src/js/base/module/Codeview.js ../qml/www/lib/summernote/src/js/base/module/AutoLink.js ../qml/www/lib/summernote/src/js/base/module/Handle.js ../qml/www/lib/summernote/src/js/base/module/AutoSync.js ../qml/www/lib/summernote/src/js/base/summernote-en-US.js ../qml/www/lib/summernote/src/js/base/renderer.js ../qml/www/lib/summernote/src/js/base/core/async.js ../qml/www/lib/summernote/src/js/base/core/range.js ../qml/www/lib/summernote/src/js/base/core/func.js ../qml/www/lib/summernote/src/js/base/core/key.js ../qml/www/lib/summernote/src/js/base/core/agent.js ../qml/www/lib/summernote/src/js/base/core/list.js ../qml/www/lib/summernote/src/js/base/core/dom.js ../qml/www/lib/summernote/src/js/base/editing/Style.js ../qml/www/lib/summernote/src/js/base/editing/Table.js ../qml/www/lib/summernote/src/js/base/editing/Bullet.js ../qml/www/lib/summernote/src/js/base/editing/History.js ../qml/www/lib/summernote/src/js/base/editing/Typing.js ../qml/www/lib/summernote/src/js/base/Context.js ../qml/www/lib/summernote/src/js/bs3/module/LinkDialog.js ../qml/www/lib/summernote/src/js/bs3/module/HelpDialog.js ../qml/www/lib/summernote/src/js/bs3/module/ImagePopover.js ../qml/www/lib/summernote/src/js/bs3/module/Toolbar.js ../qml/www/lib/summernote/src/js/bs3/module/AirPopover.js ../qml/www/lib/summernote/src/js/bs3/module/VideoDialog.js ../qml/www/lib/summernote/src/js/bs3/module/HintPopover.js ../qml/www/lib/summernote/src/js/bs3/module/Buttons.js ../qml/www/lib/summernote/src/js/bs3/module/LinkPopover.js ../qml/www/lib/summernote/src/js/bs3/module/ImageDialog.js ../qml/www/lib/summernote/src/js/bs3/settings.js ../qml/www/lib/summernote/src/js/bs3/ui.js ../qml/www/lib/summernote/src/js/intro.js ../qml/www/lib/summernote/src/js/outro.js ../qml/www/lib/summernote/src/js/app.js ../qml/www/lib/summernote/plugin/specialchars/summernote-ext-specialchars.js ../qml/www/lib/summernote/plugin/hello/summernote-ext-hello.js ../qml/www/lib/summernote/lang/summernote-uk-UA.js ../qml/www/lib/summernote/lang/summernote-it-IT.js ../qml/www/lib/summernote/lang/summernote-pt-BR.js ../qml/www/lib/summernote/lang/summernote-pl-PL.js ../qml/www/lib/summernote/lang/summernote-fr-FR.js ../qml/www/lib/summernote/lang/summernote-bg-BG.js ../qml/www/lib/summernote/lang/summernote-nl-NL.js ../qml/www/lib/summernote/lang/summernote-sr-RS.js ../qml/www/lib/summernote/lang/summernote-sk-SK.js ../qml/www/lib/summernote/lang/summernote-zh-TW.js ../qml/www/lib/summernote/lang/summernote-ru-RU.js ../qml/www/lib/summernote/lang/summernote-es-EU.js ../qml/www/lib/summernote/lang/summernote-fi-FI.js ../qml/www/lib/summernote/lang/summernote-sl-SI.js ../qml/www/lib/summernote/lang/summernote-ar-AR.js ../qml/www/lib/summernote/lang/summernote-da-DK.js ../qml/www/lib/summernote/lang/summernote-vi-VN.js ../qml/www/lib/summernote/lang/summernote-sr-RS-Latin.js ../qml/www/lib/summernote/lang/summernote-ja-JP.js ../qml/www/lib/summernote/lang/summernote-de-DE.js ../qml/www/lib/summernote/lang/summernote-zh-CN.js ../qml/www/lib/summernote/lang/summernote-ko-KR.js ../qml/www/lib/summernote/lang/summernote-th-TH.js ../qml/www/lib/summernote/lang/summernote-hu-HU.js ../qml/www/lib/summernote/lang/summernote-ca-ES.js ../qml/www/lib/summernote/lang/summernote-ro-RO.js ../qml/www/lib/summernote/lang/summernote-id-ID.js ../qml/www/lib/summernote/lang/summernote-sv-SE.js ../qml/www/lib/summernote/lang/summernote-fa-IR.js ../qml/www/lib/summernote/lang/summernote-lt-LT.js ../qml/www/lib/summernote/lang/summernote-cs-CZ.js ../qml/www/lib/summernote/lang/summernote-pt-PT.js ../qml/www/lib/summernote/lang/summernote-tr-TR.js ../qml/www/lib/summernote/lang/summernote-he-IL.js ../qml/www/lib/summernote/lang/summernote-es-ES.js ../qml/www/lib/summernote/lang/summernote-nb-NO.js ../qml/www/lib/summernote/meteor/test.js ../qml/www/lib/summernote/meteor/package-standalone.js ../qml/www/lib/summernote/meteor/package.js ../qml/www/lib/isInViewport/lib/isInViewport.js ../qml/www/lib/isInViewport/lib/isInViewport.min.js theGrid.desktop.in.h
	cd /home/fulvio/Dropbox/ubuntu-devel/my-apps/theGrid/source/theGrid/build/po && /usr/bin/cmake -E copy thegrid.fulvio.pot /home/fulvio/Dropbox/ubuntu-devel/my-apps/theGrid/source/theGrid/po

thegrid.fulvio.pot: po/CMakeFiles/thegrid.fulvio.pot
thegrid.fulvio.pot: po/CMakeFiles/thegrid.fulvio.pot.dir/build.make
.PHONY : thegrid.fulvio.pot

# Rule to build all files generated by this target.
po/CMakeFiles/thegrid.fulvio.pot.dir/build: thegrid.fulvio.pot
.PHONY : po/CMakeFiles/thegrid.fulvio.pot.dir/build

po/CMakeFiles/thegrid.fulvio.pot.dir/clean:
	cd /home/fulvio/Dropbox/ubuntu-devel/my-apps/theGrid/source/theGrid/build/po && $(CMAKE_COMMAND) -P CMakeFiles/thegrid.fulvio.pot.dir/cmake_clean.cmake
.PHONY : po/CMakeFiles/thegrid.fulvio.pot.dir/clean

po/CMakeFiles/thegrid.fulvio.pot.dir/depend:
	cd /home/fulvio/Dropbox/ubuntu-devel/my-apps/theGrid/source/theGrid/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fulvio/Dropbox/ubuntu-devel/my-apps/theGrid/source/theGrid /home/fulvio/Dropbox/ubuntu-devel/my-apps/theGrid/source/theGrid/po /home/fulvio/Dropbox/ubuntu-devel/my-apps/theGrid/source/theGrid/build /home/fulvio/Dropbox/ubuntu-devel/my-apps/theGrid/source/theGrid/build/po /home/fulvio/Dropbox/ubuntu-devel/my-apps/theGrid/source/theGrid/build/po/CMakeFiles/thegrid.fulvio.pot.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : po/CMakeFiles/thegrid.fulvio.pot.dir/depend
