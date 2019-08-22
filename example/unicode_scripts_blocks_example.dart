import 'package:unicode_scripts_blocks/unicode_scripts_blocks.dart';

main() {

  final thaiChar = 'ด'.codeUnitAt(0);
  final latinChar = 'a'.codeUnitAt(0);
  
  if (UnicodeScript.isThai(thaiChar)) {
    print('this script is Thai');
  } else {
    print('not Thai');
  }

  if (UnicodeBlock.isBasicLatin(latinChar)) {
    print('this block is Basic Latin');
  } else {
    print('not Basic Latin');
  }
}
