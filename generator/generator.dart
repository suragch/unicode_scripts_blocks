// This file is used to generate the list of scripts used in the lib folder.


import 'dart:convert';
import 'dart:io';

main() async {

  // create lines of text in the following format:
  // Script(0x0000, 0x0020, 'Greek', 'Pe'),

  File inputFile = File("generator/Scripts.txt");
  String fileText = await inputFile.readAsString();

  File outputFile = File("generator/output.txt");
  if (await outputFile.exists()) {
    await outputFile.delete();
  }

  // loop through each line in the string
  // ignore comments or empty lines
  LineSplitter ls = LineSplitter();
	List<String> lines = ls.convert(fileText);
  for (var line in lines) {
    if (line.trim() == '' || line.startsWith('#')) {
      continue;
    }

    // start
    final startRegex = RegExp(r'^[0-9a-fA-F]+');
    final startMatch = startRegex.firstMatch(line);
    final start = startMatch.group(0);

    // end
    final endRegex = RegExp(r'^.+\.\.([0-9a-fA-F]+).+;');
    final endMatch = endRegex.firstMatch(line);
    final end = endMatch?.group(1) ?? start;

    // script property value (ie, name)
    final nameRegex = RegExp(r'; (\w+) #');
    final nameMatch = nameRegex.firstMatch(line);
    final name = nameMatch.group(1);

    // category
    final categoryRegex = RegExp(r'; .+ # (.{2})');
    final categoryMatch = categoryRegex.firstMatch(line);
    final category = categoryMatch.group(1);

    final outputLine = "Script(0x$start, 0x$end, '$name', '$category'),";
    await outputFile.writeAsString("$outputLine\n", mode: FileMode.append);
    
    print(outputLine);
  }
  
}
