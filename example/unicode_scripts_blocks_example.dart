import 'package:unicode_scripts_blocks/src/script.dart';
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

  final scripts = UnicodeScript2.scripts;
  final punc = scripts.where((script) => script.category.startsWith('P'));
  for (Script p in punc) {
    print('${p.start} ${p.end} ${p.propertyValue} ${p.category}');
  }
  // String myString = ',;';
  // for (int codeUnit in myString.codeUnits) {
  //   if (isPunctuation(codeUnit)) {
  //     // do sth
  //   }
  // }
  //for (int i; i < myString.length; i++) {}
}

// bool isPunctuation(int codeUnit) {
//   final scripts = UnicodeScript2.scripts;
//   final punc = scripts.where((script) => script.category.startsWith('P'));
//   for (Script p in punc) {
//     print('${p.start} ${p.end} ${p.propertyValue} ${p.category}');
//   }
//   //UnicodeScript2.scripts.where((script) );
// }
