# Unicode Scripts and Blocks

A tool for checking if a code unit belongs to a Unicode Script or Block

## Background

Unicode code points are divided into code blocks that generally contains characters within the same or related writing systems. For example [Basic Latin](https://en.wikipedia.org/wiki/Basic_Latin_(Unicode_block)) or [Arabic](https://en.wikipedia.org/wiki/Arabic_(Unicode_block)). However, the complete character set needed for a writing system is often spread across a number of code blocks. This character set is referred to as a script. If you want to know what writing system a particular character belongs to, it is generally more accurate to use the Unicode script data rather than the block data. You can read more about the difference [here](http://www.unicode.org/reports/tr24/#Scripts_and_Blocks).

This library provides a way to test whether a given code point belongs to some particular Unicode script or block. It was generated from the Unicode 12.0 [Scripts.txt](https://www.unicode.org/Public/12.0.0/ucd/Scripts.txt) and [Blocks.txt](https://www.unicode.org/Public/12.0.0/ucd/Blocks.txt) data files. This library is exhaustive in that it implements every script and block in those data files.

## Usage

A simple usage example:

```dart
import 'package:unicode_scripts_blocks/unicode_scripts_blocks.dart';

main() {
  // Unicode Block
  int space = 0x0020;
  bool isBasicLatin = UnicodeBlock.isBasicLatin(latinChar); // true

  // Unicode Script
  int thaiChar = 'ด'.codeUnitAt(0);
  bool isThai = UnicodeScript.isThai(thaiChar); // true
}
```

## Contributing

Your help and pull requests are welcome.

Here are some known issues:

- Many of the single code point checks in `UnicodeScripts` are consecutive, meaning they could be consolidated into ranges, which would probably improve performance.
- The lookup algorithm is O(n). I'm sure this could be improved with a better data structure.
- There are tests for each code block and script but there isn't 100% code coverage. It would be good to at least test characters in scripts with code points higher than U+10000 to make sure they don't get accidentally omitted in future updates.

Features to add:

- Return the Block name or Script property value as a string when given a code point.
- Having a completely automatic code generator that takes the data file and produces the code would make updates for future version of Unicode much easier.
- The most recent version of the script and block data files can be found here: [Scripts](https://www.unicode.org/reports/tr41/tr41-24.html#Data24), [Blocks](https://www.unicode.org/reports/tr41/tr41-24.html#Blocks).
