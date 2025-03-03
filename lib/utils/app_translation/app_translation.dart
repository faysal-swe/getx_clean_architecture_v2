import 'package:get/get.dart';
import 'package:getx_clean_architecture_v2/utils/app_translation/app_english.dart';

class AppTranslation extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_US': enUSLanguages,
      };
}
