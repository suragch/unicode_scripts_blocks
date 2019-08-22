import 'package:unicode_scripts_blocks/unicode_scripts_blocks.dart';
import 'package:test/test.dart';

void main() {
  final latinCodeUnit = 'a'.codeUnitAt(0);
  final cjkCodeUnit = '好'.codeUnitAt(0);

  group('Script tests', () {
    test('Common', () {
      final character = 0x0020; // SPACE
      expect(UnicodeScript.isCommon(character), true);
      expect(UnicodeScript.isCommon(latinCodeUnit), false);
    });

    test('Latin', () {
      expect(UnicodeScript.isLatin(latinCodeUnit), true);
      expect(UnicodeScript.isLatin(cjkCodeUnit), false);
    });

    test('Greek', () {
      final character = 0x0370; // GREEK CAPITAL LETTER HETA
      expect(UnicodeScript.isGreek(character), true);
      expect(UnicodeScript.isGreek(latinCodeUnit), false);
    });

    test('Cyrillic', () {
      final character = 0x0481; // CYRILLIC SMALL LETTER KOPPA
      expect(UnicodeScript.isCyrillic(character), true);
      expect(UnicodeScript.isCyrillic(latinCodeUnit), false);
    });

    test('Armenian', () {
      final character = 0x0531; // ARMENIAN CAPITAL LETTER AYB
      expect(UnicodeScript.isArmenian(character), true);
      expect(UnicodeScript.isArmenian(latinCodeUnit), false);
    });

    test('Hebrew', () {
      final character = 0x0591; // HEBREW ACCENT ETNAHTA
      expect(UnicodeScript.isHebrew(character), true);
      expect(UnicodeScript.isHebrew(latinCodeUnit), false);
    });

    test('Arabic', () {
      final character = 0x0604; // ARABIC SIGN SAMVAT
      expect(UnicodeScript.isArabic(character), true);
      expect(UnicodeScript.isArabic(latinCodeUnit), false);
    });

    test('Syriac', () {
      final character = 0x0700; // SYRIAC END OF PARAGRAPH
      expect(UnicodeScript.isSyriac(character), true);
      expect(UnicodeScript.isSyriac(latinCodeUnit), false);
    });

    test('Thaana', () {
      final character = 0x0780; // THAANA LETTER HAA
      expect(UnicodeScript.isThaana(character), true);
      expect(UnicodeScript.isThaana(latinCodeUnit), false);
    });

    test('Devanagari', () {
      final character = 0x0900; // SIGN INVERTED CANDRABINDU
      expect(UnicodeScript.isDevanagari(character), true);
      expect(UnicodeScript.isDevanagari(latinCodeUnit), false);
    });

    test('Bengali', () {
      final character = 0x0980; // BENGALI ANJI
      expect(UnicodeScript.isBengali(character), true);
      expect(UnicodeScript.isBengali(latinCodeUnit), false);
    });

    test('Gurmukhi', () {
      final character = 0x0A02; // GURMUKHI SIGN BINDI
      expect(UnicodeScript.isGurmukhi(character), true);
      expect(UnicodeScript.isGurmukhi(latinCodeUnit), false);
    });

    test('Gujarati', () {
      final character = 0x0A82; // GUJARATI SIGN ANUSVARA
      expect(UnicodeScript.isGujarati(character), true);
      expect(UnicodeScript.isGujarati(latinCodeUnit), false);
    });

    test('Oriya', () {
      final character = 0x0B01; // GURMUKHI SIGN BINDI
      expect(UnicodeScript.isOriya(character), true);
      expect(UnicodeScript.isOriya(latinCodeUnit), false);
    });

    test('Tamil', () {
      final character = 0x0B82; // TAMIL SIGN ANUSVARA
      expect(UnicodeScript.isTamil(character), true);
      expect(UnicodeScript.isTamil(latinCodeUnit), false);
    });

    test('Telugu', () {
      final character = 0x0C00; // TELUGU SIGN COMBINING CANDRABINDU ABOVE
      expect(UnicodeScript.isTelugu(character), true);
      expect(UnicodeScript.isTelugu(latinCodeUnit), false);
    });

    test('Kannada', () {
      final character = 0x0C80; // KANNADA SIGN SPACING CANDRABINDU
      expect(UnicodeScript.isKannada(character), true);
      expect(UnicodeScript.isKannada(latinCodeUnit), false);
    });

    test('Malayalam', () {
      final character = 0x0D01; // MALAYALAM SIGN CANDRABINDU
      expect(UnicodeScript.isMalayalam(character), true);
      expect(UnicodeScript.isMalayalam(latinCodeUnit), false);
    });

    test('Sinhala', () {
      final character = 0x0D83; // SINHALA SIGN VISARGAYA
      expect(UnicodeScript.isSinhala(character), true);
      expect(UnicodeScript.isSinhala(latinCodeUnit), false);
    });

    test('Thai', () {
      final character = 0x0E30; // THAI CHARACTER SARA A
      expect(UnicodeScript.isThai(character), true);
      expect(UnicodeScript.isThai(latinCodeUnit), false);
    });

    test('Lao', () {
      final character = 0x0E82; // LAO LETTER KHO SUNG
      expect(UnicodeScript.isLao(character), true);
      expect(UnicodeScript.isLao(latinCodeUnit), false);
    });

    test('Tibetan', () {
      final character = 0x0F00; // TIBETAN SYLLABLE OM
      expect(UnicodeScript.isTibetan(character), true);
      expect(UnicodeScript.isTibetan(latinCodeUnit), false);
    });

    test('Myanmar', () {
      final character = 0x102A; // MYANMAR LETTER AU
      expect(UnicodeScript.isMyanmar(character), true);
      expect(UnicodeScript.isMyanmar(latinCodeUnit), false);
    });

    test('Georgian', () {
      final character = 0x10C5; // GEORGIAN CAPITAL LETTER HOE
      expect(UnicodeScript.isGeorgian(character), true);
      expect(UnicodeScript.isGeorgian(latinCodeUnit), false);
    });

    test('Hangul', () {
      final character = 0x11FF; // HANGUL JONGSEONG SSANGNIEUN
      expect(UnicodeScript.isHangul(character), true);
      expect(UnicodeScript.isHangul(latinCodeUnit), false);
    });

    test('Ethiopic', () {
      final character = 0x1248; // ETHIOPIC SYLLABLE QWA
      expect(UnicodeScript.isEthiopic(character), true);
      expect(UnicodeScript.isEthiopic(latinCodeUnit), false);
    });

    test('Cherokee', () {
      final character = 0x13F5; // CHEROKEE LETTER MV
      expect(UnicodeScript.isCherokee(character), true);
      expect(UnicodeScript.isCherokee(latinCodeUnit), false);
    });

    test('Canadian Aboriginal', () {
      final character = 0x1400; // CANADIAN SYLLABICS HYPHEN
      expect(UnicodeScript.isCanadianAboriginal(character), true);
      expect(UnicodeScript.isCanadianAboriginal(latinCodeUnit), false);
    });

    test('Ogham', () {
      final character = 0x1680; // OGHAM SPACE MARK
      expect(UnicodeScript.isOgham(character), true);
      expect(UnicodeScript.isOgham(latinCodeUnit), false);
    });

    test('Runic', () {
      final character = 0x16EA; // RUNIC LETTER X
      expect(UnicodeScript.isRunic(character), true);
      expect(UnicodeScript.isRunic(latinCodeUnit), false);
    });

    test('Khmer', () {
      final character = 0x17B3; // KHMER INDEPENDENT VOWEL QAU
      expect(UnicodeScript.isKhmer(character), true);
      expect(UnicodeScript.isKhmer(latinCodeUnit), false);
    });

    test('Mongolian', () {
      final character = 0x1800; // MONGOLIAN BIRGA
      expect(UnicodeScript.isMongolian(character), true);
      expect(UnicodeScript.isMongolian(latinCodeUnit), false);
    });

    test('Hiragana', () {
      final character = 0x3096; // HIRAGANA LETTER SMALL KE
      expect(UnicodeScript.isHiragana(character), true);
      expect(UnicodeScript.isHiragana(latinCodeUnit), false);
    });

    test('Katakana', () {
      final character = 0x30A1; // KATAKANA LETTER SMALL A
      expect(UnicodeScript.isKatakana(character), true);
      expect(UnicodeScript.isKatakana(latinCodeUnit), false);
    });

    test('Bopomofo', () {
      final character = 0x3105; // BOPOMOFO LETTER B
      expect(UnicodeScript.isBopomofo(character), true);
      expect(UnicodeScript.isBopomofo(latinCodeUnit), false);
    });

    test('Han', () {
      final character = 0x2E80; // CJK RADICAL REPEAT
      expect(UnicodeScript.isHan(character), true);
      expect(UnicodeScript.isHan(latinCodeUnit), false);
    });

    test('Yi', () {
      final character = 0xA000; // YI SYLLABLE IT
      expect(UnicodeScript.isYi(character), true);
      expect(UnicodeScript.isYi(latinCodeUnit), false);
    });

    test('Old Italic', () {
      final character = 0x10300; // OLD ITALIC LETTER A
      expect(UnicodeScript.isOldItalic(character), true);
      expect(UnicodeScript.isOldItalic(latinCodeUnit), false);
    });

    test('Gothic', () {
      final character = 0x10330; // GOTHIC LETTER AHSA
      expect(UnicodeScript.isGothic(character), true);
      expect(UnicodeScript.isGothic(latinCodeUnit), false);
    });

    test('Deseret', () {
      final character = 0x10400; // DESERET CAPITAL LETTER LONG I
      expect(UnicodeScript.isDeseret(character), true);
      expect(UnicodeScript.isDeseret(latinCodeUnit), false);
    });

    test('Inherited', () {
      final character = 0x0300; // COMBINING GRAVE ACCENT
      expect(UnicodeScript.isInherited(character), true);
      expect(UnicodeScript.isInherited(latinCodeUnit), false);
    });

    test('Tagalog', () {
      final character = 0x1700; // TAGALOG LETTER A
      expect(UnicodeScript.isTagalog(character), true);
      expect(UnicodeScript.isTagalog(latinCodeUnit), false);
    });

    test('Hanunoo', () {
      final character = 0x1720; // HANUNOO LETTER A
      expect(UnicodeScript.isHanunoo(character), true);
      expect(UnicodeScript.isHanunoo(latinCodeUnit), false);
    });

    test('Buhid', () {
      final character = 0x1740; // BUHID LETTER A
      expect(UnicodeScript.isBuhid(character), true);
      expect(UnicodeScript.isBuhid(latinCodeUnit), false);
    });

    test('Tagbanwa', () {
      final character = 0x1760; // TAGBANWA LETTER A
      expect(UnicodeScript.isTagbanwa(character), true);
      expect(UnicodeScript.isTagbanwa(latinCodeUnit), false);
    });

    test('Limbu', () {
      final character = 0x1900; // LIMBU VOWEL-CARRIER LETTER
      expect(UnicodeScript.isLimbu(character), true);
      expect(UnicodeScript.isLimbu(latinCodeUnit), false);
    });

    test('Tai Le', () {
      final character = 0x1950; // TAI LE LETTER KA
      expect(UnicodeScript.isTaiLe(character), true);
      expect(UnicodeScript.isTaiLe(latinCodeUnit), false);
    });

    test('Linear B', () {
      final character = 0x10000; // LINEAR B SYLLABLE B008 A
      expect(UnicodeScript.isLinearB(character), true);
      expect(UnicodeScript.isLinearB(latinCodeUnit), false);
    });

    test('Ugaritic', () {
      final character = 0x10380; // UGARITIC LETTER ALPA
      expect(UnicodeScript.isUgaritic(character), true);
      expect(UnicodeScript.isUgaritic(latinCodeUnit), false);
    });

    test('Shavian', () {
      final character = 0x10450; // SHAVIAN LETTER PEEP
      expect(UnicodeScript.isShavian(character), true);
      expect(UnicodeScript.isShavian(latinCodeUnit), false);
    });

    test('Osmanya', () {
      final character = 0x10480; // OSMANYA LETTER ALEF
      expect(UnicodeScript.isOsmanya(character), true);
      expect(UnicodeScript.isOsmanya(latinCodeUnit), false);
    });

    test('Cypriot', () {
      final character = 0x10800; // CYPRIOT SYLLABLE A
      expect(UnicodeScript.isCypriot(character), true);
      expect(UnicodeScript.isCypriot(latinCodeUnit), false);
    });

    test('Braille', () {
      final character = 0x2800; // BRAILLE PATTERN BLANK
      expect(UnicodeScript.isBraille(character), true);
      expect(UnicodeScript.isBraille(latinCodeUnit), false);
    });

    test('Buginese', () {
      final character = 0x1A00; // BUGINESE LETTER KA
      expect(UnicodeScript.isBuginese(character), true);
      expect(UnicodeScript.isBuginese(latinCodeUnit), false);
    });

    test('Coptic', () {
      final character = 0x03E2; // COPTIC CAPITAL LETTER SHEI
      expect(UnicodeScript.isCoptic(character), true);
      expect(UnicodeScript.isCoptic(latinCodeUnit), false);
    });

    test('New Tai Lue', () {
      final character = 0x1980; // NEW TAI LUE LETTER HIGH QA
      expect(UnicodeScript.isNewTaiLue(character), true);
      expect(UnicodeScript.isNewTaiLue(latinCodeUnit), false);
    });

    test('Glagolitic', () {
      final character = 0x2C00; // GLAGOLITIC CAPITAL LETTER AZU
      expect(UnicodeScript.isGlagolitic(character), true);
      expect(UnicodeScript.isGlagolitic(latinCodeUnit), false);
    });

    test('Tifinagh', () {
      final character = 0x2D30; // TIFINAGH LETTER YA
      expect(UnicodeScript.isTifinagh(character), true);
      expect(UnicodeScript.isTifinagh(latinCodeUnit), false);
    });

    test('Syloti Nagri', () {
      final character = 0xA800; // SYLOTI NAGRI LETTER A
      expect(UnicodeScript.isSylotiNagri(character), true);
      expect(UnicodeScript.isSylotiNagri(latinCodeUnit), false);
    });

    test('Old Persian', () {
      final character = 0x103A0; // OLD PERSIAN SIGN A
      expect(UnicodeScript.isOldPersian(character), true);
      expect(UnicodeScript.isOldPersian(latinCodeUnit), false);
    });

    test('Kharoshthi', () {
      final character = 0x10A00; // KHAROSHTHI LETTER A
      expect(UnicodeScript.isKharoshthi(character), true);
      expect(UnicodeScript.isKharoshthi(latinCodeUnit), false);
    });

    test('Balinese', () {
      final character = 0x1B00; // BALINESE SIGN ULU RICEM
      expect(UnicodeScript.isBalinese(character), true);
      expect(UnicodeScript.isBalinese(latinCodeUnit), false);
    });

    test('Cuneiform', () {
      final character = 0x12000; // CUNEIFORM SIGN A
      expect(UnicodeScript.isCuneiform(character), true);
      expect(UnicodeScript.isCuneiform(latinCodeUnit), false);
    });

    test('Cuneiform', () {
      final character = 0x12000; // CUNEIFORM SIGN A
      expect(UnicodeScript.isCuneiform(character), true);
      expect(UnicodeScript.isCuneiform(latinCodeUnit), false);
    });

    test('Phoenician', () {
      final character = 0x10900; // PHOENICIAN LETTER ALF
      expect(UnicodeScript.isPhoenician(character), true);
      expect(UnicodeScript.isPhoenician(latinCodeUnit), false);
    });

    test('PhagsPa', () {
      final character = 0xA840; // PHAGS-PA LETTER KA
      expect(UnicodeScript.isPhagsPa(character), true);
      expect(UnicodeScript.isPhagsPa(latinCodeUnit), false);
    });

    test('Nko', () {
      final character = 0x07C0; // NKO DIGIT ZERO
      expect(UnicodeScript.isNko(character), true);
      expect(UnicodeScript.isNko(latinCodeUnit), false);
    });

    test('Sundanese', () {
      final character = 0x1B80; // SUNDANESE SIGN PANYECEK
      expect(UnicodeScript.isSundanese(character), true);
      expect(UnicodeScript.isSundanese(latinCodeUnit), false);
    });

    test('Lepcha', () {
      final character = 0x1C00; // LEPCHA LETTER KA
      expect(UnicodeScript.isLepcha(character), true);
      expect(UnicodeScript.isLepcha(latinCodeUnit), false);
    });

    test('OlChiki', () {
      final character = 0x1C50; // OL CHIKI DIGIT ZERO
      expect(UnicodeScript.isOlChiki(character), true);
      expect(UnicodeScript.isOlChiki(latinCodeUnit), false);
    });

    test('Vai', () {
      final character = 0xA500; // VAI SYLLABLE EE
      expect(UnicodeScript.isVai(character), true);
      expect(UnicodeScript.isVai(latinCodeUnit), false);
    });

    test('Saurashtra', () {
      final character = 0xA880; // SAURASHTRA SIGN ANUSVARA
      expect(UnicodeScript.isSaurashtra(character), true);
      expect(UnicodeScript.isSaurashtra(latinCodeUnit), false);
    });

    test('KayahLi', () {
      final character = 0xA900; // KAYAH LI DIGIT ZERO
      expect(UnicodeScript.isKayahLi(character), true);
      expect(UnicodeScript.isKayahLi(latinCodeUnit), false);
    });

    test('Rejang', () {
      final character = 0xA930; // REJANG LETTER KA
      expect(UnicodeScript.isRejang(character), true);
      expect(UnicodeScript.isRejang(latinCodeUnit), false);
    });

    test('Lycian', () {
      final character = 0x10280; // LYCIAN LETTER A
      expect(UnicodeScript.isLycian(character), true);
      expect(UnicodeScript.isLycian(latinCodeUnit), false);
    });

    test('Carian', () {
      final character = 0x102A0; // CARIAN LETTER A
      expect(UnicodeScript.isCarian(character), true);
      expect(UnicodeScript.isCarian(latinCodeUnit), false);
    });

    test('Lydian', () {
      final character = 0x10920; // LYDIAN LETTER A
      expect(UnicodeScript.isLydian(character), true);
      expect(UnicodeScript.isLydian(latinCodeUnit), false);
    });

    test('Cham', () {
      final character = 0xAA00; // CHAM LETTER A
      expect(UnicodeScript.isCham(character), true);
      expect(UnicodeScript.isCham(latinCodeUnit), false);
    });

    test('TaiTham', () {
      final character = 0x1A20; // TAI THAM LETTER HIGH KA
      expect(UnicodeScript.isTaiTham(character), true);
      expect(UnicodeScript.isTaiTham(latinCodeUnit), false);
    });

    test('TaiViet', () {
      final character = 0xAA80; // TAI VIET LETTER LOW KO
      expect(UnicodeScript.isTaiViet(character), true);
      expect(UnicodeScript.isTaiViet(latinCodeUnit), false);
    });

    test('Avestan', () {
      final character = 0x10B00; // AVESTAN LETTER A
      expect(UnicodeScript.isAvestan(character), true);
      expect(UnicodeScript.isAvestan(latinCodeUnit), false);
    });

    test('EgyptianHieroglyphs', () {
      final character = 0x13000; //  EGYPTIAN HIEROGLYPH A001
      expect(UnicodeScript.isEgyptianHieroglyphs(character), true);
      expect(UnicodeScript.isEgyptianHieroglyphs(latinCodeUnit), false);
    });

    test('Samaritan', () {
      final character = 0x0800; // SAMARITAN LETTER ALAF
      expect(UnicodeScript.isSamaritan(character), true);
      expect(UnicodeScript.isSamaritan(latinCodeUnit), false);
    });

    test('Lisu', () {
      final character = 0xA4D0; // LISU LETTER BA
      expect(UnicodeScript.isLisu(character), true);
      expect(UnicodeScript.isLisu(latinCodeUnit), false);
    });

    test('Bamum', () {
      final character = 0xA6A0; // BAMUM LETTER A
      expect(UnicodeScript.isBamum(character), true);
      expect(UnicodeScript.isBamum(latinCodeUnit), false);
    });

    test('Javanese', () {
      final character = 0xA980; // JAVANESE SIGN PANYANGGA
      expect(UnicodeScript.isJavanese(character), true);
      expect(UnicodeScript.isJavanese(latinCodeUnit), false);
    });

    test('MeeteiMayek', () {
      final character = 0xAAE0; // MEETEI MAYEK LETTER E
      expect(UnicodeScript.isMeeteiMayek(character), true);
      expect(UnicodeScript.isMeeteiMayek(latinCodeUnit), false);
    });

    test('ImperialAramaic', () {
      final character = 0x10840; // IMPERIAL ARAMAIC LETTER ALEPH
      expect(UnicodeScript.isImperialAramaic(character), true);
      expect(UnicodeScript.isImperialAramaic(latinCodeUnit), false);
    });

    test('OldSouthArabian', () {
      final character = 0x10A60; // OLD SOUTH ARABIAN LETTER HE
      expect(UnicodeScript.isOldSouthArabian(character), true);
      expect(UnicodeScript.isOldSouthArabian(latinCodeUnit), false);
    });

    test('InscriptionalParthian', () {
      final character = 0x10B40; // INSCRIPTIONAL PARTHIAN LETTER ALEPH
      expect(UnicodeScript.isInscriptionalParthian(character), true);
      expect(UnicodeScript.isInscriptionalParthian(latinCodeUnit), false);
    });

    test('InscriptionalPahlavi', () {
      final character = 0x10B60; // INSCRIPTIONAL PAHLAVI LETTER ALEPH
      expect(UnicodeScript.isInscriptionalPahlavi(character), true);
      expect(UnicodeScript.isInscriptionalPahlavi(latinCodeUnit), false);
    });

    test('OldTurkic', () {
      final character = 0x10C00; // OLD TURKIC LETTER ORKHON A
      expect(UnicodeScript.isOldTurkic(character), true);
      expect(UnicodeScript.isOldTurkic(latinCodeUnit), false);
    });

    test('Kaithi', () {
      final character = 0x11080; // KAITHI SIGN CANDRABINDU
      expect(UnicodeScript.isKaithi(character), true);
      expect(UnicodeScript.isKaithi(latinCodeUnit), false);
    });

    test('Batak', () {
      final character = 0x1BC0; // BATAK LETTER A
      expect(UnicodeScript.isBatak(character), true);
      expect(UnicodeScript.isBatak(latinCodeUnit), false);
    });

    test('Brahmi', () {
      final character = 0x11000; // BRAHMI SIGN CANDRABINDU
      expect(UnicodeScript.isBrahmi(character), true);
      expect(UnicodeScript.isBrahmi(latinCodeUnit), false);
    });

    test('Mandaic', () {
      final character = 0x0840; // MANDAIC LETTER HALQA
      expect(UnicodeScript.isMandaic(character), true);
      expect(UnicodeScript.isMandaic(latinCodeUnit), false);
    });

    test('Chakma', () {
      final character = 0x11100; // CHAKMA SIGN CANDRABINDU
      expect(UnicodeScript.isChakma(character), true);
      expect(UnicodeScript.isChakma(latinCodeUnit), false);
    });

    test('MeroiticCursive', () {
      final character = 0x109A0; // MEROITIC CURSIVE LETTER A
      expect(UnicodeScript.isMeroiticCursive(character), true);
      expect(UnicodeScript.isMeroiticCursive(latinCodeUnit), false);
    });

    test('MeroiticHieroglyphs', () {
      final character = 0x10980; // MEROITIC HIEROGLYPHIC LETTER A
      expect(UnicodeScript.isMeroiticHieroglyphs(character), true);
      expect(UnicodeScript.isMeroiticHieroglyphs(latinCodeUnit), false);
    });

    test('Miao', () {
      final character = 0x16F00; // MIAO LETTER PA
      expect(UnicodeScript.isMiao(character), true);
      expect(UnicodeScript.isMiao(latinCodeUnit), false);
    });

    test('Sharada', () {
      final character = 0x11180; // SHARADA SIGN CANDRABINDU
      expect(UnicodeScript.isSharada(character), true);
      expect(UnicodeScript.isSharada(latinCodeUnit), false);
    });

    test('SoraSompeng', () {
      final character = 0x110D0; // SORA SOMPENG LETTER SAH
      expect(UnicodeScript.isSoraSompeng(character), true);
      expect(UnicodeScript.isSoraSompeng(latinCodeUnit), false);
    });

    test('Takri', () {
      final character = 0x11680; // TAKRI LETTER A
      expect(UnicodeScript.isTakri(character), true);
      expect(UnicodeScript.isTakri(latinCodeUnit), false);
    });

    test('CaucasianAlbanian', () {
      final character = 0x10530; // CAUCASIAN ALBANIAN LETTER ALT
      expect(UnicodeScript.isCaucasianAlbanian(character), true);
      expect(UnicodeScript.isCaucasianAlbanian(latinCodeUnit), false);
    });

    test('BassaVah', () {
      final character = 0x16AD0; // BASSA VAH LETTER ENNI
      expect(UnicodeScript.isBassaVah(character), true);
      expect(UnicodeScript.isBassaVah(latinCodeUnit), false);
    });

    test('Duployan', () {
      final character = 0x1BC00; // DUPLOYAN LETTER H
      expect(UnicodeScript.isDuployan(character), true);
      expect(UnicodeScript.isDuployan(latinCodeUnit), false);
    });

    test('Elbasan', () {
      final character = 0x10500; // ELBASAN LETTER A
      expect(UnicodeScript.isElbasan(character), true);
      expect(UnicodeScript.isElbasan(latinCodeUnit), false);
    });

    test('Grantha', () {
      final character = 0x11300; // GRANTHA SIGN COMBINING ANUSVARA ABOVE
      expect(UnicodeScript.isGrantha(character), true);
      expect(UnicodeScript.isGrantha(latinCodeUnit), false);
    });

    test('PahawhHmong', () {
      final character = 0x16B00; // PAHAWH HMONG VOWEL KEEB
      expect(UnicodeScript.isPahawhHmong(character), true);
      expect(UnicodeScript.isPahawhHmong(latinCodeUnit), false);
    });

    test('Khojki', () {
      final character = 0x11200; // KHOJKI LETTER A
      expect(UnicodeScript.isKhojki(character), true);
      expect(UnicodeScript.isKhojki(latinCodeUnit), false);
    });

    test('LinearA', () {
      final character = 0x10600; // LINEAR A SIGN AB001
      expect(UnicodeScript.isLinearA(character), true);
      expect(UnicodeScript.isLinearA(latinCodeUnit), false);
    });

    test('Mahajani', () {
      final character = 0x11150; // MAHAJANI LETTER A
      expect(UnicodeScript.isMahajani(character), true);
      expect(UnicodeScript.isMahajani(latinCodeUnit), false);
    });

    test('Manichaean', () {
      final character = 0x10AC0; // MANICHAEAN LETTER ALEPH
      expect(UnicodeScript.isManichaean(character), true);
      expect(UnicodeScript.isManichaean(latinCodeUnit), false);
    });

    test('MendeKikakui', () {
      final character = 0x1E800; // MENDE KIKAKUI SYLLABLE M001 KI
      expect(UnicodeScript.isMendeKikakui(character), true);
      expect(UnicodeScript.isMendeKikakui(latinCodeUnit), false);
    });

    test('Modi', () {
      final character = 0x11600; // MODI LETTER A
      expect(UnicodeScript.isModi(character), true);
      expect(UnicodeScript.isModi(latinCodeUnit), false);
    });

    test('Mro', () {
      final character = 0x16A40; // MRO LETTER TA
      expect(UnicodeScript.isMro(character), true);
      expect(UnicodeScript.isMro(latinCodeUnit), false);
    });

    test('OldNorthArabian', () {
      final character = 0x10A80; // OLD NORTH ARABIAN LETTER HEH
      expect(UnicodeScript.isOldNorthArabian(character), true);
      expect(UnicodeScript.isOldNorthArabian(latinCodeUnit), false);
    });

    test('Nabataean', () {
      final character = 0x10880; // NABATAEAN LETTER FINAL ALEPH
      expect(UnicodeScript.isNabataean(character), true);
      expect(UnicodeScript.isNabataean(latinCodeUnit), false);
    });

    test('Palmyrene', () {
      final character = 0x10860; // PALMYRENE LETTER ALEPH
      expect(UnicodeScript.isPalmyrene(character), true);
      expect(UnicodeScript.isPalmyrene(latinCodeUnit), false);
    });

    test('PauCinHau', () {
      final character = 0x11AC0; // PAU CIN HAU LETTER PA
      expect(UnicodeScript.isPauCinHau(character), true);
      expect(UnicodeScript.isPauCinHau(latinCodeUnit), false);
    });

    test('OldPermic', () {
      final character = 0x10350; // OLD PERMIC LETTER AN
      expect(UnicodeScript.isOldPermic(character), true);
      expect(UnicodeScript.isOldPermic(latinCodeUnit), false);
    });

    test('PsalterPahlavi', () {
      final character = 0x10B80; // PSALTER PAHLAVI LETTER ALEPH
      expect(UnicodeScript.isPsalterPahlavi(character), true);
      expect(UnicodeScript.isPsalterPahlavi(latinCodeUnit), false);
    });

    test('Siddham', () {
      final character = 0x11580; // SIDDHAM LETTER A
      expect(UnicodeScript.isSiddham(character), true);
      expect(UnicodeScript.isSiddham(latinCodeUnit), false);
    });

    test('Khudawadi', () {
      final character = 0x112B0; // KHUDAWADI LETTER A
      expect(UnicodeScript.isKhudawadi(character), true);
      expect(UnicodeScript.isKhudawadi(latinCodeUnit), false);
    });

    test('Tirhuta', () {
      final character = 0x11480; // TIRHUTA ANJI
      expect(UnicodeScript.isTirhuta(character), true);
      expect(UnicodeScript.isTirhuta(latinCodeUnit), false);
    });

    test('WarangCiti', () {
      final character = 0x118A0; // WARANG CITI CAPITAL LETTER NGAA
      expect(UnicodeScript.isWarangCiti(character), true);
      expect(UnicodeScript.isWarangCiti(latinCodeUnit), false);
    });

    test('Ahom', () {
      final character = 0x11700; // AHOM LETTER KA
      expect(UnicodeScript.isAhom(character), true);
      expect(UnicodeScript.isAhom(latinCodeUnit), false);
    });

    test('AnatolianHieroglyphs', () {
      final character = 0x14400; // ANATOLIAN HIEROGLYPH A001
      expect(UnicodeScript.isAnatolianHieroglyphs(character), true);
      expect(UnicodeScript.isAnatolianHieroglyphs(latinCodeUnit), false);
    });

    test('Hatran', () {
      final character = 0x108E0; // HATRAN LETTER ALEPH
      expect(UnicodeScript.isHatran(character), true);
      expect(UnicodeScript.isHatran(latinCodeUnit), false);
    });

    test('Multani', () {
      final character = 0x11280; // MULTANI LETTER A
      expect(UnicodeScript.isMultani(character), true);
      expect(UnicodeScript.isMultani(latinCodeUnit), false);
    });

    test('OldHungarian', () {
      final character = 0x10C80; // OLD HUNGARIAN CAPITAL LETTER A
      expect(UnicodeScript.isOldHungarian(character), true);
      expect(UnicodeScript.isOldHungarian(latinCodeUnit), false);
    });

    test('SignWriting', () {
      final character = 0x1D800; // SIGNWRITING HAND-FIST INDEX
      expect(UnicodeScript.isSignWriting(character), true);
      expect(UnicodeScript.isSignWriting(latinCodeUnit), false);
    });

    test('Adlam', () {
      final character = 0x1E900; // ADLAM CAPITAL LETTER ALIF
      expect(UnicodeScript.isAdlam(character), true);
      expect(UnicodeScript.isAdlam(latinCodeUnit), false);
    });

    test('Bhaiksuki', () {
      final character = 0x11C00; // BHAIKSUKI LETTER A
      expect(UnicodeScript.isBhaiksuki(character), true);
      expect(UnicodeScript.isBhaiksuki(latinCodeUnit), false);
    });

    test('Marchen', () {
      final character = 0x11C70; // MARCHEN HEAD MARK
      expect(UnicodeScript.isMarchen(character), true);
      expect(UnicodeScript.isMarchen(latinCodeUnit), false);
    });

    test('Newa', () {
      final character = 0x11400; // NEWA LETTER A
      expect(UnicodeScript.isNewa(character), true);
      expect(UnicodeScript.isNewa(latinCodeUnit), false);
    });

    test('Osage', () {
      final character = 0x104B0; // OSAGE CAPITAL LETTER A
      expect(UnicodeScript.isOsage(character), true);
      expect(UnicodeScript.isOsage(latinCodeUnit), false);
    });

    test('Tangut', () {
      final character = 0x16FE0; // TANGUT ITERATION MARK
      expect(UnicodeScript.isTangut(character), true);
      expect(UnicodeScript.isTangut(latinCodeUnit), false);
    });

    test('MasaramGondi', () {
      final character = 0x11D00; // MASARAM GONDI LETTER A
      expect(UnicodeScript.isMasaramGondi(character), true);
      expect(UnicodeScript.isMasaramGondi(latinCodeUnit), false);
    });

    test('Nushu', () {
      final character = 0x16FE1; // NUSHU ITERATION MARK
      expect(UnicodeScript.isNushu(character), true);
      expect(UnicodeScript.isNushu(latinCodeUnit), false);
    });

    test('Soyombo', () {
      final character = 0x11A50; // SOYOMBO LETTER A
      expect(UnicodeScript.isSoyombo(character), true);
      expect(UnicodeScript.isSoyombo(latinCodeUnit), false);
    });

    test('ZanabazarSquare', () {
      final character = 0x11A00; // ZANABAZAR SQUARE LETTER A
      expect(UnicodeScript.isZanabazarSquare(character), true);
      expect(UnicodeScript.isZanabazarSquare(latinCodeUnit), false);
    });

    test('Dogra', () {
      final character = 0x11800; // DOGRA LETTER A
      expect(UnicodeScript.isDogra(character), true);
      expect(UnicodeScript.isDogra(latinCodeUnit), false);
    });

    test('GunjalaGondi', () {
      final character = 0x11D60; // GUNJALA GONDI LETTER A
      expect(UnicodeScript.isGunjalaGondi(character), true);
      expect(UnicodeScript.isGunjalaGondi(latinCodeUnit), false);
    });

    test('Makasar', () {
      final character = 0x11EE0; // MAKASAR LETTER KA
      expect(UnicodeScript.isMakasar(character), true);
      expect(UnicodeScript.isMakasar(latinCodeUnit), false);
    });

    test('Medefaidrin', () {
      final character = 0x16E40; // MEDEFAIDRIN CAPITAL LETTER M
      expect(UnicodeScript.isMedefaidrin(character), true);
      expect(UnicodeScript.isMedefaidrin(latinCodeUnit), false);
    });

    test('HanifiRohingya', () {
      final character = 0x10D00; // HANIFI ROHINGYA LETTER A
      expect(UnicodeScript.isHanifiRohingya(character), true);
      expect(UnicodeScript.isHanifiRohingya(latinCodeUnit), false);
    });

    test('Sogdian', () {
      final character = 0x10F30; // SOGDIAN LETTER ALEPH
      expect(UnicodeScript.isSogdian(character), true);
      expect(UnicodeScript.isSogdian(latinCodeUnit), false);
    });

    test('OldSogdian', () {
      final character = 0x10F00; // OLD SOGDIAN LETTER ALEPH
      expect(UnicodeScript.isOldSogdian(character), true);
      expect(UnicodeScript.isOldSogdian(latinCodeUnit), false);
    });

    test('Elymaic', () {
      final character = 0x10FE0; // ELYMAIC LETTER ALEPH
      expect(UnicodeScript.isElymaic(character), true);
      expect(UnicodeScript.isElymaic(latinCodeUnit), false);
    });

    test('Nandinagari', () {
      final character = 0x119A0; // NANDINAGARI LETTER A
      expect(UnicodeScript.isNandinagari(character), true);
      expect(UnicodeScript.isNandinagari(latinCodeUnit), false);
    });

    test('NyiakengPuachueHmong', () {
      final character = 0x1E100; // NYIAKENG PUACHUE HMONG LETTER MA
      expect(UnicodeScript.isNyiakengPuachueHmong(character), true);
      expect(UnicodeScript.isNyiakengPuachueHmong(latinCodeUnit), false);
    });

    test('Wancho', () {
      final character = 0x1E2C0; // WANCHO LETTER AA
      expect(UnicodeScript.isWancho(character), true);
      expect(UnicodeScript.isWancho(latinCodeUnit), false);
    });
  });

  group('Block tests', () {

    test('Basic Latin', () {
      final character = 0x0000;
      expect(UnicodeBlock.isBasicLatin(character), true);
      expect(UnicodeBlock.isBasicLatin(cjkCodeUnit), false);
    });


    test('Latin-1 Supplement', () {
      final character = 0x0080;
      expect(UnicodeBlock.isLatin1Supplement(character), true);
      expect(UnicodeBlock.isLatin1Supplement(cjkCodeUnit), false);
    });


    test('Latin ExtendedA', () {
      final character = 0x0100;
      expect(UnicodeBlock.isLatinExtendedA(character), true);
      expect(UnicodeBlock.isLatinExtendedA(cjkCodeUnit), false);
    });


    test('Latin ExtendedB', () {
      final character = 0x0180;
      expect(UnicodeBlock.isLatinExtendedB(character), true);
      expect(UnicodeBlock.isLatinExtendedB(cjkCodeUnit), false);
    });


    test('IPAExtensions', () {
      final character = 0x0250;
      expect(UnicodeBlock.isIPAExtensions(character), true);
      expect(UnicodeBlock.isIPAExtensions(latinCodeUnit), false);
    });


    test('SpacingModifierLetters', () {
      final character = 0x02B0;
      expect(UnicodeBlock.isSpacingModifierLetters(character), true);
      expect(UnicodeBlock.isSpacingModifierLetters(latinCodeUnit), false);
    });


    test('CombiningDiacriticalMarks', () {
      final character = 0x0300;
      expect(UnicodeBlock.isCombiningDiacriticalMarks(character), true);
      expect(UnicodeBlock.isCombiningDiacriticalMarks(latinCodeUnit), false);
    });


    test('GreekandCoptic', () {
      final character = 0x0370;
      expect(UnicodeBlock.isGreekAndCoptic(character), true);
      expect(UnicodeBlock.isGreekAndCoptic(latinCodeUnit), false);
    });


    test('Cyrillic', () {
      final character = 0x0400;
      expect(UnicodeBlock.isCyrillic(character), true);
      expect(UnicodeBlock.isCyrillic(latinCodeUnit), false);
    });


    test('CyrillicSupplement', () {
      final character = 0x0500;
      expect(UnicodeBlock.isCyrillicSupplement(character), true);
      expect(UnicodeBlock.isCyrillicSupplement(latinCodeUnit), false);
    });


    test('Armenian', () {
      final character = 0x0530;
      expect(UnicodeBlock.isArmenian(character), true);
      expect(UnicodeBlock.isArmenian(latinCodeUnit), false);
    });


    test('Hebrew', () {
      final character = 0x0590;
      expect(UnicodeBlock.isHebrew(character), true);
      expect(UnicodeBlock.isHebrew(latinCodeUnit), false);
    });


    test('Arabic', () {
      final character = 0x0600;
      expect(UnicodeBlock.isArabic(character), true);
      expect(UnicodeBlock.isArabic(latinCodeUnit), false);
    });


    test('Syriac', () {
      final character = 0x0700;
      expect(UnicodeBlock.isSyriac(character), true);
      expect(UnicodeBlock.isSyriac(latinCodeUnit), false);
    });


    test('ArabicSupplement', () {
      final character = 0x0750;
      expect(UnicodeBlock.isArabicSupplement(character), true);
      expect(UnicodeBlock.isArabicSupplement(latinCodeUnit), false);
    });


    test('Thaana', () {
      final character = 0x0780;
      expect(UnicodeBlock.isThaana(character), true);
      expect(UnicodeBlock.isThaana(latinCodeUnit), false);
    });


    test('NKo', () {
      final character = 0x07C0;
      expect(UnicodeBlock.isNKo(character), true);
      expect(UnicodeBlock.isNKo(latinCodeUnit), false);
    });


    test('Samaritan', () {
      final character = 0x0800;
      expect(UnicodeBlock.isSamaritan(character), true);
      expect(UnicodeBlock.isSamaritan(latinCodeUnit), false);
    });


    test('Mandaic', () {
      final character = 0x0840;
      expect(UnicodeBlock.isMandaic(character), true);
      expect(UnicodeBlock.isMandaic(latinCodeUnit), false);
    });


    test('SyriacSupplement', () {
      final character = 0x0860;
      expect(UnicodeBlock.isSyriacSupplement(character), true);
      expect(UnicodeBlock.isSyriacSupplement(latinCodeUnit), false);
    });


    test('ArabicExtendedA', () {
      final character = 0x08A0;
      expect(UnicodeBlock.isArabicExtendedA(character), true);
      expect(UnicodeBlock.isArabicExtendedA(latinCodeUnit), false);
    });


    test('Devanagari', () {
      final character = 0x0900;
      expect(UnicodeBlock.isDevanagari(character), true);
      expect(UnicodeBlock.isDevanagari(latinCodeUnit), false);
    });


    test('Bengali', () {
      final character = 0x0980;
      expect(UnicodeBlock.isBengali(character), true);
      expect(UnicodeBlock.isBengali(latinCodeUnit), false);
    });


    test('Gurmukhi', () {
      final character = 0x0A00;
      expect(UnicodeBlock.isGurmukhi(character), true);
      expect(UnicodeBlock.isGurmukhi(latinCodeUnit), false);
    });


    test('Gujarati', () {
      final character = 0x0A80;
      expect(UnicodeBlock.isGujarati(character), true);
      expect(UnicodeBlock.isGujarati(latinCodeUnit), false);
    });


    test('Oriya', () {
      final character = 0x0B00;
      expect(UnicodeBlock.isOriya(character), true);
      expect(UnicodeBlock.isOriya(latinCodeUnit), false);
    });


    test('Tamil', () {
      final character = 0x0B80;
      expect(UnicodeBlock.isTamil(character), true);
      expect(UnicodeBlock.isTamil(latinCodeUnit), false);
    });


    test('Telugu', () {
      final character = 0x0C00;
      expect(UnicodeBlock.isTelugu(character), true);
      expect(UnicodeBlock.isTelugu(latinCodeUnit), false);
    });


    test('Kannada', () {
      final character = 0x0C80;
      expect(UnicodeBlock.isKannada(character), true);
      expect(UnicodeBlock.isKannada(latinCodeUnit), false);
    });


    test('Malayalam', () {
      final character = 0x0D00;
      expect(UnicodeBlock.isMalayalam(character), true);
      expect(UnicodeBlock.isMalayalam(latinCodeUnit), false);
    });


    test('Sinhala', () {
      final character = 0x0D80;
      expect(UnicodeBlock.isSinhala(character), true);
      expect(UnicodeBlock.isSinhala(latinCodeUnit), false);
    });


    test('Thai', () {
      final character = 0x0E00;
      expect(UnicodeBlock.isThai(character), true);
      expect(UnicodeBlock.isThai(latinCodeUnit), false);
    });


    test('Lao', () {
      final character = 0x0E80;
      expect(UnicodeBlock.isLao(character), true);
      expect(UnicodeBlock.isLao(latinCodeUnit), false);
    });


    test('Tibetan', () {
      final character = 0x0F00;
      expect(UnicodeBlock.isTibetan(character), true);
      expect(UnicodeBlock.isTibetan(latinCodeUnit), false);
    });


    test('Myanmar', () {
      final character = 0x1000;
      expect(UnicodeBlock.isMyanmar(character), true);
      expect(UnicodeBlock.isMyanmar(latinCodeUnit), false);
    });


    test('Georgian', () {
      final character = 0x10A0;
      expect(UnicodeBlock.isGeorgian(character), true);
      expect(UnicodeBlock.isGeorgian(latinCodeUnit), false);
    });


    test('HangulJamo', () {
      final character = 0x1100;
      expect(UnicodeBlock.isHangulJamo(character), true);
      expect(UnicodeBlock.isHangulJamo(latinCodeUnit), false);
    });


    test('Ethiopic', () {
      final character = 0x1200;
      expect(UnicodeBlock.isEthiopic(character), true);
      expect(UnicodeBlock.isEthiopic(latinCodeUnit), false);
    });


    test('EthiopicSupplement', () {
      final character = 0x1380;
      expect(UnicodeBlock.isEthiopicSupplement(character), true);
      expect(UnicodeBlock.isEthiopicSupplement(latinCodeUnit), false);
    });


    test('Cherokee', () {
      final character = 0x13A0;
      expect(UnicodeBlock.isCherokee(character), true);
      expect(UnicodeBlock.isCherokee(latinCodeUnit), false);
    });


    test('UnifiedCanadianAboriginalSyllabics', () {
      final character = 0x1400;
      expect(UnicodeBlock.isUnifiedCanadianAboriginalSyllabics(character), true);
      expect(UnicodeBlock.isUnifiedCanadianAboriginalSyllabics(latinCodeUnit), false);
    });


    test('Ogham', () {
      final character = 0x1680;
      expect(UnicodeBlock.isOgham(character), true);
      expect(UnicodeBlock.isOgham(latinCodeUnit), false);
    });


    test('Runic', () {
      final character = 0x16A0;
      expect(UnicodeBlock.isRunic(character), true);
      expect(UnicodeBlock.isRunic(latinCodeUnit), false);
    });


    test('Tagalog', () {
      final character = 0x1700;
      expect(UnicodeBlock.isTagalog(character), true);
      expect(UnicodeBlock.isTagalog(latinCodeUnit), false);
    });


    test('Hanunoo', () {
      final character = 0x1720;
      expect(UnicodeBlock.isHanunoo(character), true);
      expect(UnicodeBlock.isHanunoo(latinCodeUnit), false);
    });


    test('Buhid', () {
      final character = 0x1740;
      expect(UnicodeBlock.isBuhid(character), true);
      expect(UnicodeBlock.isBuhid(latinCodeUnit), false);
    });


    test('Tagbanwa', () {
      final character = 0x1760;
      expect(UnicodeBlock.isTagbanwa(character), true);
      expect(UnicodeBlock.isTagbanwa(latinCodeUnit), false);
    });


    test('Khmer', () {
      final character = 0x1780;
      expect(UnicodeBlock.isKhmer(character), true);
      expect(UnicodeBlock.isKhmer(latinCodeUnit), false);
    });


    test('Mongolian', () {
      final character = 0x1800;
      expect(UnicodeBlock.isMongolian(character), true);
      expect(UnicodeBlock.isMongolian(latinCodeUnit), false);
    });


    test('UnifiedCanadianAboriginalSyllabicsExtended', () {
      final character = 0x18B0;
      expect(UnicodeBlock.isUnifiedCanadianAboriginalSyllabicsExtended(character), true);
      expect(UnicodeBlock.isUnifiedCanadianAboriginalSyllabicsExtended(latinCodeUnit), false);
      });


    test('Limbu', () {
      final character = 0x1900;
      expect(UnicodeBlock.isLimbu(character), true);
      expect(UnicodeBlock.isLimbu(latinCodeUnit), false);
    });


    test('TaiLe', () {
      final character = 0x1950;
      expect(UnicodeBlock.isTaiLe(character), true);
      expect(UnicodeBlock.isTaiLe(latinCodeUnit), false);
    });


    test('NewTaiLue', () {
      final character = 0x1980;
      expect(UnicodeBlock.isNewTaiLue(character), true);
      expect(UnicodeBlock.isNewTaiLue(latinCodeUnit), false);
    });


    test('KhmerSymbols', () {
      final character = 0x19E0;
      expect(UnicodeBlock.isKhmerSymbols(character), true);
      expect(UnicodeBlock.isKhmerSymbols(latinCodeUnit), false);
    });


    test('Buginese', () {
      final character = 0x1A00;
      expect(UnicodeBlock.isBuginese(character), true);
      expect(UnicodeBlock.isBuginese(latinCodeUnit), false);
    });


    test('TaiTham', () {
      final character = 0x1A20;
      expect(UnicodeBlock.isTaiTham(character), true);
      expect(UnicodeBlock.isTaiTham(latinCodeUnit), false);
    });


    test('CombiningDiacriticalMarksExtended', () {
      final character = 0x1AB0;
      expect(UnicodeBlock.isCombiningDiacriticalMarksExtended(character), true);
      expect(UnicodeBlock.isCombiningDiacriticalMarksExtended(latinCodeUnit), false);
    });


    test('Balinese', () {
      final character = 0x1B00;
      expect(UnicodeBlock.isBalinese(character), true);
      expect(UnicodeBlock.isBalinese(latinCodeUnit), false);
    });


    test('Sundanese', () {
      final character = 0x1B80;
      expect(UnicodeBlock.isSundanese(character), true);
      expect(UnicodeBlock.isSundanese(latinCodeUnit), false);
    });


    test('Batak', () {
      final character = 0x1BC0;
      expect(UnicodeBlock.isBatak(character), true);
      expect(UnicodeBlock.isBatak(latinCodeUnit), false);
    });


    test('Lepcha', () {
      final character = 0x1C00;
      expect(UnicodeBlock.isLepcha(character), true);
      expect(UnicodeBlock.isLepcha(latinCodeUnit), false);
    });


    test('OlChiki', () {
      final character = 0x1C50;
      expect(UnicodeBlock.isOlChiki(character), true);
      expect(UnicodeBlock.isOlChiki(latinCodeUnit), false);
    });


    test('CyrillicExtendedC', () {
      final character = 0x1C80;
      expect(UnicodeBlock.isCyrillicExtendedC(character), true);
      expect(UnicodeBlock.isCyrillicExtendedC(latinCodeUnit), false);
    });


    test('GeorgianExtended', () {
      final character = 0x1C90;
      expect(UnicodeBlock.isGeorgianExtended(character), true);
      expect(UnicodeBlock.isGeorgianExtended(latinCodeUnit), false);
    });


    test('SundaneseSupplement', () {
      final character = 0x1CC0;
      expect(UnicodeBlock.isSundaneseSupplement(character), true);
      expect(UnicodeBlock.isSundaneseSupplement(latinCodeUnit), false);
    });


    test('VedicExtensions', () {
      final character = 0x1CD0;
      expect(UnicodeBlock.isVedicExtensions(character), true);
      expect(UnicodeBlock.isVedicExtensions(latinCodeUnit), false);
    });


    test('PhoneticExtensions', () {
      final character = 0x1D00;
      expect(UnicodeBlock.isPhoneticExtensions(character), true);
      expect(UnicodeBlock.isPhoneticExtensions(latinCodeUnit), false);
    });


    test('PhoneticExtensionsSupplement', () {
      final character = 0x1D80;
      expect(UnicodeBlock.isPhoneticExtensionsSupplement(character), true);
      expect(UnicodeBlock.isPhoneticExtensionsSupplement(latinCodeUnit), false);
    });


    test('CombiningDiacriticalMarksSupplement', () {
      final character = 0x1DC0;
      expect(UnicodeBlock.isCombiningDiacriticalMarksSupplement(character), true);
      expect(UnicodeBlock.isCombiningDiacriticalMarksSupplement(latinCodeUnit), false);
    });


    test('LatinExtendedAdditional', () {
      final character = 0x1E00;
      expect(UnicodeBlock.isLatinExtendedAdditional(character), true);
      expect(UnicodeBlock.isLatinExtendedAdditional(latinCodeUnit), false);
    });


    test('GreekExtended', () {
      final character = 0x1F00;
      expect(UnicodeBlock.isGreekExtended(character), true);
      expect(UnicodeBlock.isGreekExtended(latinCodeUnit), false);
    });


    test('GeneralPunctuation', () {
      final character = 0x2000;
      expect(UnicodeBlock.isGeneralPunctuation(character), true);
      expect(UnicodeBlock.isGeneralPunctuation(latinCodeUnit), false);
    });


    test('SuperscriptsandSubscripts', () {
      final character = 0x2070;
      expect(UnicodeBlock.isSuperscriptsAndSubscripts(character), true);
      expect(UnicodeBlock.isSuperscriptsAndSubscripts(latinCodeUnit), false);
    });


    test('CurrencySymbols', () {
      final character = 0x20A0;
      expect(UnicodeBlock.isCurrencySymbols(character), true);
      expect(UnicodeBlock.isCurrencySymbols(latinCodeUnit), false);
    });


    test('CombiningDiacriticalMarksforSymbols', () {
      final character = 0x20D0;
      expect(UnicodeBlock.isCombiningDiacriticalMarksforSymbols(character), true);
      expect(UnicodeBlock.isCombiningDiacriticalMarksforSymbols(latinCodeUnit), false);
      });


    test('LetterlikeSymbols', () {
      final character = 0x2100;
      expect(UnicodeBlock.isLetterlikeSymbols(character), true);
      expect(UnicodeBlock.isLetterlikeSymbols(latinCodeUnit), false);
    });


    test('NumberForms', () {
      final character = 0x2150;
      expect(UnicodeBlock.isNumberForms(character), true);
      expect(UnicodeBlock.isNumberForms(latinCodeUnit), false);
    });


    test('Arrows', () {
      final character = 0x2190;
      expect(UnicodeBlock.isArrows(character), true);
      expect(UnicodeBlock.isArrows(latinCodeUnit), false);
    });


    test('MathematicalOperators', () {
      final character = 0x2200;
      expect(UnicodeBlock.isMathematicalOperators(character), true);
      expect(UnicodeBlock.isMathematicalOperators(latinCodeUnit), false);
    });


    test('MiscellaneousTechnical', () {
      final character = 0x2300;
      expect(UnicodeBlock.isMiscellaneousTechnical(character), true);
      expect(UnicodeBlock.isMiscellaneousTechnical(latinCodeUnit), false);
    });


    test('ControlPictures', () {
      final character = 0x2400;
      expect(UnicodeBlock.isControlPictures(character), true);
      expect(UnicodeBlock.isControlPictures(latinCodeUnit), false);
    });


    test('OpticalCharacterRecognition', () {
      final character = 0x2440;
      expect(UnicodeBlock.isOpticalCharacterRecognition(character), true);
      expect(UnicodeBlock.isOpticalCharacterRecognition(latinCodeUnit), false);
    });


    test('EnclosedAlphanumerics', () {
      final character = 0x2460;
      expect(UnicodeBlock.isEnclosedAlphanumerics(character), true);
      expect(UnicodeBlock.isEnclosedAlphanumerics(latinCodeUnit), false);
    });


    test('BoxDrawing', () {
      final character = 0x2500;
      expect(UnicodeBlock.isBoxDrawing(character), true);
      expect(UnicodeBlock.isBoxDrawing(latinCodeUnit), false);
    });


    test('BlockElements', () {
      final character = 0x2580;
      expect(UnicodeBlock.isBlockElements(character), true);
      expect(UnicodeBlock.isBlockElements(latinCodeUnit), false);
    });


    test('GeometricShapes', () {
      final character = 0x25A0;
      expect(UnicodeBlock.isGeometricShapes(character), true);
      expect(UnicodeBlock.isGeometricShapes(latinCodeUnit), false);
    });


    test('MiscellaneousSymbols', () {
      final character = 0x2600;
      expect(UnicodeBlock.isMiscellaneousSymbols(character), true);
      expect(UnicodeBlock.isMiscellaneousSymbols(latinCodeUnit), false);
    });


    test('Dingbats', () {
      final character = 0x2700;
      expect(UnicodeBlock.isDingbats(character), true);
      expect(UnicodeBlock.isDingbats(latinCodeUnit), false);
    });


    test('MiscellaneousMathematicalSymbols-A', () {
      final character = 0x27C0;
      expect(UnicodeBlock.isMiscellaneousMathematicalSymbolsA(character), true);
      expect(UnicodeBlock.isMiscellaneousMathematicalSymbolsA(latinCodeUnit), false);
      });


    test('SupplementalArrowsA', () {
      final character = 0x27F0;
      expect(UnicodeBlock.isSupplementalArrowsA(character), true);
      expect(UnicodeBlock.isSupplementalArrowsA(latinCodeUnit), false);
    });


    test('BraillePatterns', () {
      final character = 0x2800;
      expect(UnicodeBlock.isBraillePatterns(character), true);
      expect(UnicodeBlock.isBraillePatterns(latinCodeUnit), false);
    });


    test('SupplementalArrowsB', () {
      final character = 0x2900;
      expect(UnicodeBlock.isSupplementalArrowsB(character), true);
      expect(UnicodeBlock.isSupplementalArrowsB(latinCodeUnit), false);
    });


    test('MiscellaneousMathematicalSymbolsB', () {
      final character = 0x2980;
      expect(UnicodeBlock.isMiscellaneousMathematicalSymbolsB(character), true);
      expect(UnicodeBlock.isMiscellaneousMathematicalSymbolsB(latinCodeUnit), false);
      });


    test('SupplementalMathematicalOperators', () {
      final character = 0x2A00;
      expect(UnicodeBlock.isSupplementalMathematicalOperators(character), true);
      expect(UnicodeBlock.isSupplementalMathematicalOperators(latinCodeUnit), false);
    });


    test('MiscellaneousSymbolsandArrows', () {
      final character = 0x2B00;
      expect(UnicodeBlock.isMiscellaneousSymbolsAndArrows(character), true);
      expect(UnicodeBlock.isMiscellaneousSymbolsAndArrows(latinCodeUnit), false);
    });


    test('Glagolitic', () {
      final character = 0x2C00;
      expect(UnicodeBlock.isGlagolitic(character), true);
      expect(UnicodeBlock.isGlagolitic(latinCodeUnit), false);
    });


    test('LatinExtendedC', () {
      final character = 0x2C60;
      expect(UnicodeBlock.isLatinExtendedC(character), true);
      expect(UnicodeBlock.isLatinExtendedC(latinCodeUnit), false);
    });


    test('Coptic', () {
      final character = 0x2C80;
      expect(UnicodeBlock.isCoptic(character), true);
      expect(UnicodeBlock.isCoptic(latinCodeUnit), false);
    });


    test('GeorgianSupplement', () {
      final character = 0x2D00;
      expect(UnicodeBlock.isGeorgianSupplement(character), true);
      expect(UnicodeBlock.isGeorgianSupplement(latinCodeUnit), false);
    });


    test('Tifinagh', () {
      final character = 0x2D30;
      expect(UnicodeBlock.isTifinagh(character), true);
      expect(UnicodeBlock.isTifinagh(latinCodeUnit), false);
    });


    test('EthiopicExtended', () {
      final character = 0x2D80;
      expect(UnicodeBlock.isEthiopicExtended(character), true);
      expect(UnicodeBlock.isEthiopicExtended(latinCodeUnit), false);
    });


    test('CyrillicExtendedA', () {
      final character = 0x2DE0;
      expect(UnicodeBlock.isCyrillicExtendedA(character), true);
      expect(UnicodeBlock.isCyrillicExtendedA(latinCodeUnit), false);
    });


    test('SupplementalPunctuation', () {
      final character = 0x2E00;
      expect(UnicodeBlock.isSupplementalPunctuation(character), true);
      expect(UnicodeBlock.isSupplementalPunctuation(latinCodeUnit), false);
    });


    test('CJKRadicalsSupplement', () {
      final character = 0x2E80;
      expect(UnicodeBlock.isCJKRadicalsSupplement(character), true);
      expect(UnicodeBlock.isCJKRadicalsSupplement(latinCodeUnit), false);
    });


    test('KangxiRadicals', () {
      final character = 0x2F00;
      expect(UnicodeBlock.isKangxiRadicals(character), true);
      expect(UnicodeBlock.isKangxiRadicals(latinCodeUnit), false);
    });


    test('IdeographicDescriptionCharacters', () {
      final character = 0x2FF0;
      expect(UnicodeBlock.isIdeographicDescriptionCharacters(character), true);
      expect(UnicodeBlock.isIdeographicDescriptionCharacters(latinCodeUnit), false);
    });


    test('CJKSymbolsandPunctuation', () {
      final character = 0x3000;
      expect(UnicodeBlock.isCJKSymbolsAndPunctuation(character), true);
      expect(UnicodeBlock.isCJKSymbolsAndPunctuation(latinCodeUnit), false);
    });


    test('Hiragana', () {
      final character = 0x3040;
      expect(UnicodeBlock.isHiragana(character), true);
      expect(UnicodeBlock.isHiragana(latinCodeUnit), false);
    });


    test('Katakana', () {
      final character = 0x30A0;
      expect(UnicodeBlock.isKatakana(character), true);
      expect(UnicodeBlock.isKatakana(latinCodeUnit), false);
    });


    test('Bopomofo', () {
      final character = 0x3100;
      expect(UnicodeBlock.isBopomofo(character), true);
      expect(UnicodeBlock.isBopomofo(latinCodeUnit), false);
    });


    test('HangulCompatibilityJamo', () {
      final character = 0x3130;
      expect(UnicodeBlock.isHangulCompatibilityJamo(character), true);
      expect(UnicodeBlock.isHangulCompatibilityJamo(latinCodeUnit), false);
    });


    test('Kanbun', () {
      final character = 0x3190;
      expect(UnicodeBlock.isKanbun(character), true);
      expect(UnicodeBlock.isKanbun(latinCodeUnit), false);
    });


    test('BopomofoExtended', () {
      final character = 0x31A0;
      expect(UnicodeBlock.isBopomofoExtended(character), true);
      expect(UnicodeBlock.isBopomofoExtended(latinCodeUnit), false);
    });


    test('CJKStrokes', () {
      final character = 0x31C0;
      expect(UnicodeBlock.isCJKStrokes(character), true);
      expect(UnicodeBlock.isCJKStrokes(latinCodeUnit), false);
    });


    test('KatakanaPhoneticExtensions', () {
      final character = 0x31F0;
      expect(UnicodeBlock.isKatakanaPhoneticExtensions(character), true);
      expect(UnicodeBlock.isKatakanaPhoneticExtensions(latinCodeUnit), false);
    });


    test('EnclosedCJKLettersandMonths', () {
      final character = 0x3200;
      expect(UnicodeBlock.isEnclosedCJKLettersAndMonths(character), true);
      expect(UnicodeBlock.isEnclosedCJKLettersAndMonths(latinCodeUnit), false);
      });


    test('CJKCompatibility', () {
      final character = 0x3300;
      expect(UnicodeBlock.isCJKCompatibility(character), true);
      expect(UnicodeBlock.isCJKCompatibility(latinCodeUnit), false);
    });


    test('CJKUnifiedIdeographsExtensionA', () {
      final character = 0x3400;
      expect(UnicodeBlock.isCJKUnifiedIdeographsExtensionA(character), true);
      expect(UnicodeBlock.isCJKUnifiedIdeographsExtensionA(latinCodeUnit), false);
      });


    test('YijingHexagramSymbols', () {
      final character = 0x4DC0;
      expect(UnicodeBlock.isYijingHexagramSymbols(character), true);
      expect(UnicodeBlock.isYijingHexagramSymbols(latinCodeUnit), false);
    });


    test('CJKUnifiedIdeographs', () {
      final character = 0x4E00;
      expect(UnicodeBlock.isCJKUnifiedIdeographs(character), true);
      expect(UnicodeBlock.isCJKUnifiedIdeographs(latinCodeUnit), false);
    });


    test('YiSyllables', () {
      final character = 0xA000;
      expect(UnicodeBlock.isYiSyllables(character), true);
      expect(UnicodeBlock.isYiSyllables(latinCodeUnit), false);
    });


    test('YiRadicals', () {
      final character = 0xA490;
      expect(UnicodeBlock.isYiRadicals(character), true);
      expect(UnicodeBlock.isYiRadicals(latinCodeUnit), false);
    });


    test('Lisu', () {
      final character = 0xA4D0;
      expect(UnicodeBlock.isLisu(character), true);
      expect(UnicodeBlock.isLisu(latinCodeUnit), false);
    });


    test('Vai', () {
      final character = 0xA500;
      expect(UnicodeBlock.isVai(character), true);
      expect(UnicodeBlock.isVai(latinCodeUnit), false);
    });


    test('CyrillicExtendedB', () {
      final character = 0xA640;
      expect(UnicodeBlock.isCyrillicExtendedB(character), true);
      expect(UnicodeBlock.isCyrillicExtendedB(latinCodeUnit), false);
    });


    test('Bamum', () {
      final character = 0xA6A0;
      expect(UnicodeBlock.isBamum(character), true);
      expect(UnicodeBlock.isBamum(latinCodeUnit), false);
    });


    test('ModifierToneLetters', () {
      final character = 0xA700;
      expect(UnicodeBlock.isModifierToneLetters(character), true);
      expect(UnicodeBlock.isModifierToneLetters(latinCodeUnit), false);
    });


    test('LatinExtendedD', () {
      final character = 0xA720;
      expect(UnicodeBlock.isLatinExtendedD(character), true);
      expect(UnicodeBlock.isLatinExtendedD(latinCodeUnit), false);
    });


    test('SylotiNagri', () {
      final character = 0xA800;
      expect(UnicodeBlock.isSylotiNagri(character), true);
      expect(UnicodeBlock.isSylotiNagri(latinCodeUnit), false);
    });


    test('CommonIndicNumberForms', () {
      final character = 0xA830;
      expect(UnicodeBlock.isCommonIndicNumberForms(character), true);
      expect(UnicodeBlock.isCommonIndicNumberForms(latinCodeUnit), false);
    });


    test('Phagspa', () {
      final character = 0xA840;
      expect(UnicodeBlock.isPhagspa(character), true);
      expect(UnicodeBlock.isPhagspa(latinCodeUnit), false);
    });


    test('Saurashtra', () {
      final character = 0xA880;
      expect(UnicodeBlock.isSaurashtra(character), true);
      expect(UnicodeBlock.isSaurashtra(latinCodeUnit), false);
    });


    test('DevanagariExtended', () {
      final character = 0xA8E0;
      expect(UnicodeBlock.isDevanagariExtended(character), true);
      expect(UnicodeBlock.isDevanagariExtended(latinCodeUnit), false);
    });


    test('KayahLi', () {
      final character = 0xA900;
      expect(UnicodeBlock.isKayahLi(character), true);
      expect(UnicodeBlock.isKayahLi(latinCodeUnit), false);
    });


    test('Rejang', () {
      final character = 0xA930;
      expect(UnicodeBlock.isRejang(character), true);
      expect(UnicodeBlock.isRejang(latinCodeUnit), false);
    });


    test('HangulJamoExtendedA', () {
      final character = 0xA960;
      expect(UnicodeBlock.isHangulJamoExtendedA(character), true);
      expect(UnicodeBlock.isHangulJamoExtendedA(latinCodeUnit), false);
      });


    test('Javanese', () {
      final character = 0xA980;
      expect(UnicodeBlock.isJavanese(character), true);
      expect(UnicodeBlock.isJavanese(latinCodeUnit), false);
    });


    test('MyanmarExtendedB', () {
      final character = 0xA9E0;
      expect(UnicodeBlock.isMyanmarExtendedB(character), true);
      expect(UnicodeBlock.isMyanmarExtendedB(latinCodeUnit), false);
    });


    test('Cham', () {
      final character = 0xAA00;
      expect(UnicodeBlock.isCham(character), true);
      expect(UnicodeBlock.isCham(latinCodeUnit), false);
    });


    test('MyanmarExtendedA', () {
      final character = 0xAA60;
      expect(UnicodeBlock.isMyanmarExtendedA(character), true);
      expect(UnicodeBlock.isMyanmarExtendedA(latinCodeUnit), false);
    });


    test('TaiViet', () {
      final character = 0xAA80;
      expect(UnicodeBlock.isTaiViet(character), true);
      expect(UnicodeBlock.isTaiViet(latinCodeUnit), false);
    });


    test('MeeteiMayekExtensions', () {
      final character = 0xAAE0;
      expect(UnicodeBlock.isMeeteiMayekExtensions(character), true);
      expect(UnicodeBlock.isMeeteiMayekExtensions(latinCodeUnit), false);
    });


    test('EthiopicExtendedA', () {
      final character = 0xAB00;
      expect(UnicodeBlock.isEthiopicExtendedA(character), true);
      expect(UnicodeBlock.isEthiopicExtendedA(latinCodeUnit), false);
    });


    test('LatinExtendedE', () {
      final character = 0xAB30;
      expect(UnicodeBlock.isLatinExtendedE(character), true);
      expect(UnicodeBlock.isLatinExtendedE(latinCodeUnit), false);
    });


    test('CherokeeSupplement', () {
      final character = 0xAB70;
      expect(UnicodeBlock.isCherokeeSupplement(character), true);
      expect(UnicodeBlock.isCherokeeSupplement(latinCodeUnit), false);
    });


    test('MeeteiMayek', () {
      final character = 0xABC0;
      expect(UnicodeBlock.isMeeteiMayek(character), true);
      expect(UnicodeBlock.isMeeteiMayek(latinCodeUnit), false);
    });


    test('HangulSyllables', () {
      final character = 0xAC00;
      expect(UnicodeBlock.isHangulSyllables(character), true);
      expect(UnicodeBlock.isHangulSyllables(latinCodeUnit), false);
    });


    test('HangulJamoExtendedB', () {
      final character = 0xD7B0;
      expect(UnicodeBlock.isHangulJamoExtendedB(character), true);
      expect(UnicodeBlock.isHangulJamoExtendedB(latinCodeUnit), false);
      });


    test('HighSurrogates', () {
      final character = 0xD800;
      expect(UnicodeBlock.isHighSurrogates(character), true);
      expect(UnicodeBlock.isHighSurrogates(latinCodeUnit), false);
    });


    test('HighPrivateUseSurrogates', () {
      final character = 0xDB80;
      expect(UnicodeBlock.isHighPrivateUseSurrogates(character), true);
      expect(UnicodeBlock.isHighPrivateUseSurrogates(latinCodeUnit), false);
    });


    test('LowSurrogates', () {
      final character = 0xDC00;
      expect(UnicodeBlock.isLowSurrogates(character), true);
      expect(UnicodeBlock.isLowSurrogates(latinCodeUnit), false);
    });


    test('PrivateUseArea', () {
      final character = 0xE000;
      expect(UnicodeBlock.isPrivateUseArea(character), true);
      expect(UnicodeBlock.isPrivateUseArea(latinCodeUnit), false);
    });


    test('CJKCompatibilityIdeographs', () {
      final character = 0xF900;
      expect(UnicodeBlock.isCJKCompatibilityIdeographs(character), true);
      expect(UnicodeBlock.isCJKCompatibilityIdeographs(latinCodeUnit), false);
    });


    test('AlphabeticPresentationForms', () {
      final character = 0xFB00;
      expect(UnicodeBlock.isAlphabeticPresentationForms(character), true);
      expect(UnicodeBlock.isAlphabeticPresentationForms(latinCodeUnit), false);
    });


    test('ArabicPresentationFormsA', () {
      final character = 0xFB50;
      expect(UnicodeBlock.isArabicPresentationFormsA(character), true);
      expect(UnicodeBlock.isArabicPresentationFormsA(latinCodeUnit), false);
      });


    test('VariationSelectors', () {
      final character = 0xFE00;
      expect(UnicodeBlock.isVariationSelectors(character), true);
      expect(UnicodeBlock.isVariationSelectors(latinCodeUnit), false);
    });


    test('VerticalForms', () {
      final character = 0xFE10;
      expect(UnicodeBlock.isVerticalForms(character), true);
      expect(UnicodeBlock.isVerticalForms(latinCodeUnit), false);
    });


    test('CombiningHalfMarks', () {
      final character = 0xFE20;
      expect(UnicodeBlock.isCombiningHalfMarks(character), true);
      expect(UnicodeBlock.isCombiningHalfMarks(latinCodeUnit), false);
    });


    test('CJKCompatibilityForms', () {
      final character = 0xFE30;
      expect(UnicodeBlock.isCJKCompatibilityForms(character), true);
      expect(UnicodeBlock.isCJKCompatibilityForms(latinCodeUnit), false);
    });


    test('SmallFormVariants', () {
      final character = 0xFE50;
      expect(UnicodeBlock.isSmallFormVariants(character), true);
      expect(UnicodeBlock.isSmallFormVariants(latinCodeUnit), false);
    });


    test('ArabicPresentationFormsB', () {
      final character = 0xFE70;
      expect(UnicodeBlock.isArabicPresentationFormsB(character), true);
      expect(UnicodeBlock.isArabicPresentationFormsB(latinCodeUnit), false);
      });


    test('HalfwidthandFullwidthForms', () {
      final character = 0xFF00;
      expect(UnicodeBlock.isHalfwidthAndFullwidthForms(character), true);
      expect(UnicodeBlock.isHalfwidthAndFullwidthForms(latinCodeUnit), false);
    });


    test('Specials', () {
      final character = 0xFFF0;
      expect(UnicodeBlock.isSpecials(character), true);
      expect(UnicodeBlock.isSpecials(latinCodeUnit), false);
    });


    test('LinearBSyllabary', () {
      final character = 0x10000;
      expect(UnicodeBlock.isLinearBSyllabary(character), true);
      expect(UnicodeBlock.isLinearBSyllabary(latinCodeUnit), false);
    });


    test('LinearBIdeograms', () {
      final character = 0x10080;
      expect(UnicodeBlock.isLinearBIdeograms(character), true);
      expect(UnicodeBlock.isLinearBIdeograms(latinCodeUnit), false);
    });


    test('AegeanNumbers', () {
      final character = 0x10100;
      expect(UnicodeBlock.isAegeanNumbers(character), true);
      expect(UnicodeBlock.isAegeanNumbers(latinCodeUnit), false);
    });


    test('AncientGreekNumbers', () {
      final character = 0x10140;
      expect(UnicodeBlock.isAncientGreekNumbers(character), true);
      expect(UnicodeBlock.isAncientGreekNumbers(latinCodeUnit), false);
    });


    test('AncientSymbols', () {
      final character = 0x10190;
      expect(UnicodeBlock.isAncientSymbols(character), true);
      expect(UnicodeBlock.isAncientSymbols(latinCodeUnit), false);
    });


    test('PhaistosDisc', () {
      final character = 0x101D0;
      expect(UnicodeBlock.isPhaistosDisc(character), true);
      expect(UnicodeBlock.isPhaistosDisc(latinCodeUnit), false);
    });


    test('Lycian', () {
      final character = 0x10280;
      expect(UnicodeBlock.isLycian(character), true);
      expect(UnicodeBlock.isLycian(latinCodeUnit), false);
    });


    test('Carian', () {
      final character = 0x102A0;
      expect(UnicodeBlock.isCarian(character), true);
      expect(UnicodeBlock.isCarian(latinCodeUnit), false);
    });


    test('CopticEpactNumbers', () {
      final character = 0x102E0;
      expect(UnicodeBlock.isCopticEpactNumbers(character), true);
      expect(UnicodeBlock.isCopticEpactNumbers(latinCodeUnit), false);
    });


    test('OldItalic', () {
      final character = 0x10300;
      expect(UnicodeBlock.isOldItalic(character), true);
      expect(UnicodeBlock.isOldItalic(latinCodeUnit), false);
    });


    test('Gothic', () {
      final character = 0x10330;
      expect(UnicodeBlock.isGothic(character), true);
      expect(UnicodeBlock.isGothic(latinCodeUnit), false);
    });


    test('OldPermic', () {
      final character = 0x10350;
      expect(UnicodeBlock.isOldPermic(character), true);
      expect(UnicodeBlock.isOldPermic(latinCodeUnit), false);
    });


    test('Ugaritic', () {
      final character = 0x10380;
      expect(UnicodeBlock.isUgaritic(character), true);
      expect(UnicodeBlock.isUgaritic(latinCodeUnit), false);
    });


    test('OldPersian', () {
      final character = 0x103A0;
      expect(UnicodeBlock.isOldPersian(character), true);
      expect(UnicodeBlock.isOldPersian(latinCodeUnit), false);
    });


    test('Deseret', () {
      final character = 0x10400;
      expect(UnicodeBlock.isDeseret(character), true);
      expect(UnicodeBlock.isDeseret(latinCodeUnit), false);
    });


    test('Shavian', () {
      final character = 0x10450;
      expect(UnicodeBlock.isShavian(character), true);
      expect(UnicodeBlock.isShavian(latinCodeUnit), false);
    });


    test('Osmanya', () {
      final character = 0x10480;
      expect(UnicodeBlock.isOsmanya(character), true);
      expect(UnicodeBlock.isOsmanya(latinCodeUnit), false);
    });


    test('Osage', () {
      final character = 0x104B0;
      expect(UnicodeBlock.isOsage(character), true);
      expect(UnicodeBlock.isOsage(latinCodeUnit), false);
    });


    test('Elbasan', () {
      final character = 0x10500;
      expect(UnicodeBlock.isElbasan(character), true);
      expect(UnicodeBlock.isElbasan(latinCodeUnit), false);
    });


    test('CaucasianAlbanian', () {
      final character = 0x10530;
      expect(UnicodeBlock.isCaucasianAlbanian(character), true);
      expect(UnicodeBlock.isCaucasianAlbanian(latinCodeUnit), false);
    });


    test('LinearA', () {
      final character = 0x10600;
      expect(UnicodeBlock.isLinearA(character), true);
      expect(UnicodeBlock.isLinearA(latinCodeUnit), false);
    });


    test('CypriotSyllabary', () {
      final character = 0x10800;
      expect(UnicodeBlock.isCypriotSyllabary(character), true);
      expect(UnicodeBlock.isCypriotSyllabary(latinCodeUnit), false);
    });


    test('ImperialAramaic', () {
      final character = 0x10840;
      expect(UnicodeBlock.isImperialAramaic(character), true);
      expect(UnicodeBlock.isImperialAramaic(latinCodeUnit), false);
    });


    test('Palmyrene', () {
      final character = 0x10860;
      expect(UnicodeBlock.isPalmyrene(character), true);
      expect(UnicodeBlock.isPalmyrene(latinCodeUnit), false);
    });


    test('Nabataean', () {
      final character = 0x10880;
      expect(UnicodeBlock.isNabataean(character), true);
      expect(UnicodeBlock.isNabataean(latinCodeUnit), false);
    });


    test('Hatran', () {
      final character = 0x108E0;
      expect(UnicodeBlock.isHatran(character), true);
      expect(UnicodeBlock.isHatran(latinCodeUnit), false);
    });


    test('Phoenician', () {
      final character = 0x10900;
      expect(UnicodeBlock.isPhoenician(character), true);
      expect(UnicodeBlock.isPhoenician(latinCodeUnit), false);
    });


    test('Lydian', () {
      final character = 0x10920;
      expect(UnicodeBlock.isLydian(character), true);
      expect(UnicodeBlock.isLydian(latinCodeUnit), false);
    });


    test('MeroiticHieroglyphs', () {
      final character = 0x10980;
      expect(UnicodeBlock.isMeroiticHieroglyphs(character), true);
      expect(UnicodeBlock.isMeroiticHieroglyphs(latinCodeUnit), false);
    });


    test('MeroiticCursive', () {
      final character = 0x109A0;
      expect(UnicodeBlock.isMeroiticCursive(character), true);
      expect(UnicodeBlock.isMeroiticCursive(latinCodeUnit), false);
    });


    test('Kharoshthi', () {
      final character = 0x10A00;
      expect(UnicodeBlock.isKharoshthi(character), true);
      expect(UnicodeBlock.isKharoshthi(latinCodeUnit), false);
    });


    test('OldSouthArabian', () {
      final character = 0x10A60;
      expect(UnicodeBlock.isOldSouthArabian(character), true);
      expect(UnicodeBlock.isOldSouthArabian(latinCodeUnit), false);
    });


    test('OldNorthArabian', () {
      final character = 0x10A80;
      expect(UnicodeBlock.isOldNorthArabian(character), true);
      expect(UnicodeBlock.isOldNorthArabian(latinCodeUnit), false);
    });


    test('Manichaean', () {
      final character = 0x10AC0;
      expect(UnicodeBlock.isManichaean(character), true);
      expect(UnicodeBlock.isManichaean(latinCodeUnit), false);
    });


    test('Avestan', () {
      final character = 0x10B00;
      expect(UnicodeBlock.isAvestan(character), true);
      expect(UnicodeBlock.isAvestan(latinCodeUnit), false);
    });


    test('InscriptionalParthian', () {
      final character = 0x10B40;
      expect(UnicodeBlock.isInscriptionalParthian(character), true);
      expect(UnicodeBlock.isInscriptionalParthian(latinCodeUnit), false);
    });


    test('InscriptionalPahlavi', () {
      final character = 0x10B60;
      expect(UnicodeBlock.isInscriptionalPahlavi(character), true);
      expect(UnicodeBlock.isInscriptionalPahlavi(latinCodeUnit), false);
    });


    test('PsalterPahlavi', () {
      final character = 0x10B80;
      expect(UnicodeBlock.isPsalterPahlavi(character), true);
      expect(UnicodeBlock.isPsalterPahlavi(latinCodeUnit), false);
    });


    test('OldTurkic', () {
      final character = 0x10C00;
      expect(UnicodeBlock.isOldTurkic(character), true);
      expect(UnicodeBlock.isOldTurkic(latinCodeUnit), false);
    });


    test('OldHungarian', () {
      final character = 0x10C80;
      expect(UnicodeBlock.isOldHungarian(character), true);
      expect(UnicodeBlock.isOldHungarian(latinCodeUnit), false);
    });


    test('HanifiRohingya', () {
      final character = 0x10D00;
      expect(UnicodeBlock.isHanifiRohingya(character), true);
      expect(UnicodeBlock.isHanifiRohingya(latinCodeUnit), false);
    });


    test('RumiNumeralSymbols', () {
      final character = 0x10E60;
      expect(UnicodeBlock.isRumiNumeralSymbols(character), true);
      expect(UnicodeBlock.isRumiNumeralSymbols(latinCodeUnit), false);
    });


    test('OldSogdian', () {
      final character = 0x10F00;
      expect(UnicodeBlock.isOldSogdian(character), true);
      expect(UnicodeBlock.isOldSogdian(latinCodeUnit), false);
    });


    test('Sogdian', () {
      final character = 0x10F30;
      expect(UnicodeBlock.isSogdian(character), true);
      expect(UnicodeBlock.isSogdian(latinCodeUnit), false);
    });


    test('Elymaic', () {
      final character = 0x10FE0;
      expect(UnicodeBlock.isElymaic(character), true);
      expect(UnicodeBlock.isElymaic(latinCodeUnit), false);
    });


    test('Brahmi', () {
      final character = 0x11000;
      expect(UnicodeBlock.isBrahmi(character), true);
      expect(UnicodeBlock.isBrahmi(latinCodeUnit), false);
    });


    test('Kaithi', () {
      final character = 0x11080;
      expect(UnicodeBlock.isKaithi(character), true);
      expect(UnicodeBlock.isKaithi(latinCodeUnit), false);
    });


    test('SoraSompeng', () {
      final character = 0x110D0;
      expect(UnicodeBlock.isSoraSompeng(character), true);
      expect(UnicodeBlock.isSoraSompeng(latinCodeUnit), false);
    });


    test('Chakma', () {
      final character = 0x11100;
      expect(UnicodeBlock.isChakma(character), true);
      expect(UnicodeBlock.isChakma(latinCodeUnit), false);
    });


    test('Mahajani', () {
      final character = 0x11150;
      expect(UnicodeBlock.isMahajani(character), true);
      expect(UnicodeBlock.isMahajani(latinCodeUnit), false);
    });


    test('Sharada', () {
      final character = 0x11180;
      expect(UnicodeBlock.isSharada(character), true);
      expect(UnicodeBlock.isSharada(latinCodeUnit), false);
    });


    test('SinhalaArchaicNumbers', () {
      final character = 0x111E0;
      expect(UnicodeBlock.isSinhalaArchaicNumbers(character), true);
      expect(UnicodeBlock.isSinhalaArchaicNumbers(latinCodeUnit), false);
    });


    test('Khojki', () {
      final character = 0x11200;
      expect(UnicodeBlock.isKhojki(character), true);
      expect(UnicodeBlock.isKhojki(latinCodeUnit), false);
    });


    test('Multani', () {
      final character = 0x11280;
      expect(UnicodeBlock.isMultani(character), true);
      expect(UnicodeBlock.isMultani(latinCodeUnit), false);
    });


    test('Khudawadi', () {
      final character = 0x112B0;
      expect(UnicodeBlock.isKhudawadi(character), true);
      expect(UnicodeBlock.isKhudawadi(latinCodeUnit), false);
    });


    test('Grantha', () {
      final character = 0x11300;
      expect(UnicodeBlock.isGrantha(character), true);
      expect(UnicodeBlock.isGrantha(latinCodeUnit), false);
    });


    test('Newa', () {
      final character = 0x11400;
      expect(UnicodeBlock.isNewa(character), true);
      expect(UnicodeBlock.isNewa(latinCodeUnit), false);
    });


    test('Tirhuta', () {
      final character = 0x11480;
      expect(UnicodeBlock.isTirhuta(character), true);
      expect(UnicodeBlock.isTirhuta(latinCodeUnit), false);
    });


    test('Siddham', () {
      final character = 0x11580;
      expect(UnicodeBlock.isSiddham(character), true);
      expect(UnicodeBlock.isSiddham(latinCodeUnit), false);
    });


    test('Modi', () {
      final character = 0x11600;
      expect(UnicodeBlock.isModi(character), true);
      expect(UnicodeBlock.isModi(latinCodeUnit), false);
    });


    test('MongolianSupplement', () {
      final character = 0x11660;
      expect(UnicodeBlock.isMongolianSupplement(character), true);
      expect(UnicodeBlock.isMongolianSupplement(latinCodeUnit), false);
    });


    test('Takri', () {
      final character = 0x11680;
      expect(UnicodeBlock.isTakri(character), true);
      expect(UnicodeBlock.isTakri(latinCodeUnit), false);
    });


    test('Ahom', () {
      final character = 0x11700;
      expect(UnicodeBlock.isAhom(character), true);
      expect(UnicodeBlock.isAhom(latinCodeUnit), false);
    });


    test('Dogra', () {
      final character = 0x11800;
      expect(UnicodeBlock.isDogra(character), true);
      expect(UnicodeBlock.isDogra(latinCodeUnit), false);
    });


    test('WarangCiti', () {
      final character = 0x118A0;
      expect(UnicodeBlock.isWarangCiti(character), true);
      expect(UnicodeBlock.isWarangCiti(latinCodeUnit), false);
    });


    test('Nandinagari', () {
      final character = 0x119A0;
      expect(UnicodeBlock.isNandinagari(character), true);
      expect(UnicodeBlock.isNandinagari(latinCodeUnit), false);
    });


    test('ZanabazarSquare', () {
      final character = 0x11A00;
      expect(UnicodeBlock.isZanabazarSquare(character), true);
      expect(UnicodeBlock.isZanabazarSquare(latinCodeUnit), false);
    });


    test('Soyombo', () {
      final character = 0x11A50;
      expect(UnicodeBlock.isSoyombo(character), true);
      expect(UnicodeBlock.isSoyombo(latinCodeUnit), false);
    });


    test('PauCinHau', () {
      final character = 0x11AC0;
      expect(UnicodeBlock.isPauCinHau(character), true);
      expect(UnicodeBlock.isPauCinHau(latinCodeUnit), false);
    });


    test('Bhaiksuki', () {
      final character = 0x11C00;
      expect(UnicodeBlock.isBhaiksuki(character), true);
      expect(UnicodeBlock.isBhaiksuki(latinCodeUnit), false);
    });


    test('Marchen', () {
      final character = 0x11C70;
      expect(UnicodeBlock.isMarchen(character), true);
      expect(UnicodeBlock.isMarchen(latinCodeUnit), false);
    });


    test('MasaramGondi', () {
      final character = 0x11D00;
      expect(UnicodeBlock.isMasaramGondi(character), true);
      expect(UnicodeBlock.isMasaramGondi(latinCodeUnit), false);
    });


    test('GunjalaGondi', () {
      final character = 0x11D60;
      expect(UnicodeBlock.isGunjalaGondi(character), true);
      expect(UnicodeBlock.isGunjalaGondi(latinCodeUnit), false);
    });


    test('Makasar', () {
      final character = 0x11EE0;
      expect(UnicodeBlock.isMakasar(character), true);
      expect(UnicodeBlock.isMakasar(latinCodeUnit), false);
    });


    test('TamilSupplement', () {
      final character = 0x11FC0;
      expect(UnicodeBlock.isTamilSupplement(character), true);
      expect(UnicodeBlock.isTamilSupplement(latinCodeUnit), false);
    });


    test('Cuneiform', () {
      final character = 0x12000;
      expect(UnicodeBlock.isCuneiform(character), true);
      expect(UnicodeBlock.isCuneiform(latinCodeUnit), false);
    });


    test('CuneiformNumbersandPunctuation', () {
      final character = 0x12400;
      expect(UnicodeBlock.isCuneiformNumbersAndPunctuation(character), true);
      expect(UnicodeBlock.isCuneiformNumbersAndPunctuation(latinCodeUnit), false);
    });


    test('EarlyDynasticCuneiform', () {
      final character = 0x12480;
      expect(UnicodeBlock.isEarlyDynasticCuneiform(character), true);
      expect(UnicodeBlock.isEarlyDynasticCuneiform(latinCodeUnit), false);
    });


    test('EgyptianHieroglyphs', () {
      final character = 0x13000;
      expect(UnicodeBlock.isEgyptianHieroglyphs(character), true);
      expect(UnicodeBlock.isEgyptianHieroglyphs(latinCodeUnit), false);
    });


    test('EgyptianHieroglyphFormatControls', () {
      final character = 0x13430;
      expect(UnicodeBlock.isEgyptianHieroglyphFormatControls(character), true);
      expect(UnicodeBlock.isEgyptianHieroglyphFormatControls(latinCodeUnit), false);
    });


    test('AnatolianHieroglyphs', () {
      final character = 0x14400;
      expect(UnicodeBlock.isAnatolianHieroglyphs(character), true);
      expect(UnicodeBlock.isAnatolianHieroglyphs(latinCodeUnit), false);
    });


    test('BamumSupplement', () {
      final character = 0x16800;
      expect(UnicodeBlock.isBamumSupplement(character), true);
      expect(UnicodeBlock.isBamumSupplement(latinCodeUnit), false);
    });


    test('Mro', () {
      final character = 0x16A40;
      expect(UnicodeBlock.isMro(character), true);
      expect(UnicodeBlock.isMro(latinCodeUnit), false);
    });


    test('BassaVah', () {
      final character = 0x16AD0;
      expect(UnicodeBlock.isBassaVah(character), true);
      expect(UnicodeBlock.isBassaVah(latinCodeUnit), false);
    });


    test('PahawhHmong', () {
      final character = 0x16B00;
      expect(UnicodeBlock.isPahawhHmong(character), true);
      expect(UnicodeBlock.isPahawhHmong(latinCodeUnit), false);
    });


    test('Medefaidrin', () {
      final character = 0x16E40;
      expect(UnicodeBlock.isMedefaidrin(character), true);
      expect(UnicodeBlock.isMedefaidrin(latinCodeUnit), false);
    });


    test('Miao', () {
      final character = 0x16F00;
      expect(UnicodeBlock.isMiao(character), true);
      expect(UnicodeBlock.isMiao(latinCodeUnit), false);
    });


    test('IdeographicSymbolsandPunctuation', () {
      final character = 0x16FE0;
      expect(UnicodeBlock.isIdeographicSymbolsAndPunctuation(character), true);
      expect(UnicodeBlock.isIdeographicSymbolsAndPunctuation(latinCodeUnit), false);
    });


    test('Tangut', () {
      final character = 0x17000;
      expect(UnicodeBlock.isTangut(character), true);
      expect(UnicodeBlock.isTangut(latinCodeUnit), false);
    });


    test('TangutComponents', () {
      final character = 0x18800;
      expect(UnicodeBlock.isTangutComponents(character), true);
      expect(UnicodeBlock.isTangutComponents(latinCodeUnit), false);
    });


    test('KanaSupplement', () {
      final character = 0x1B000;
      expect(UnicodeBlock.isKanaSupplement(character), true);
      expect(UnicodeBlock.isKanaSupplement(latinCodeUnit), false);
    });


    test('KanaExtendedA', () {
      final character = 0x1B100;
      expect(UnicodeBlock.isKanaExtendedA(character), true);
      expect(UnicodeBlock.isKanaExtendedA(latinCodeUnit), false);
    });


    test('SmallKanaExtension', () {
      final character = 0x1B130;
      expect(UnicodeBlock.isSmallKanaExtension(character), true);
      expect(UnicodeBlock.isSmallKanaExtension(latinCodeUnit), false);
    });


    test('Nushu', () {
      final character = 0x1B170;
      expect(UnicodeBlock.isNushu(character), true);
      expect(UnicodeBlock.isNushu(latinCodeUnit), false);
    });


    test('Duployan', () {
      final character = 0x1BC00;
      expect(UnicodeBlock.isDuployan(character), true);
      expect(UnicodeBlock.isDuployan(latinCodeUnit), false);
    });


    test('ShorthandFormatControls', () {
      final character = 0x1BCA0;
      expect(UnicodeBlock.isShorthAndFormatControls(character), true);
      expect(UnicodeBlock.isShorthAndFormatControls(latinCodeUnit), false);
    });


    test('ByzantineMusicalSymbols', () {
      final character = 0x1D000;
      expect(UnicodeBlock.isByzantineMusicalSymbols(character), true);
      expect(UnicodeBlock.isByzantineMusicalSymbols(latinCodeUnit), false);
    });


    test('MusicalSymbols', () {
      final character = 0x1D100;
      expect(UnicodeBlock.isMusicalSymbols(character), true);
      expect(UnicodeBlock.isMusicalSymbols(latinCodeUnit), false);
    });


    test('AncientGreekMusicalNotation', () {
      final character = 0x1D200;
      expect(UnicodeBlock.isAncientGreekMusicalNotation(character), true);
      expect(UnicodeBlock.isAncientGreekMusicalNotation(latinCodeUnit), false);
    });


    test('MayanNumerals', () {
      final character = 0x1D2E0;
      expect(UnicodeBlock.isMayanNumerals(character), true);
      expect(UnicodeBlock.isMayanNumerals(latinCodeUnit), false);
    });


    test('TaiXuanJingSymbols', () {
      final character = 0x1D300;
      expect(UnicodeBlock.isTaiXuanJingSymbols(character), true);
      expect(UnicodeBlock.isTaiXuanJingSymbols(latinCodeUnit), false);
    });


    test('CountingRodNumerals', () {
      final character = 0x1D360;
      expect(UnicodeBlock.isCountingRodNumerals(character), true);
      expect(UnicodeBlock.isCountingRodNumerals(latinCodeUnit), false);
    });


    test('MathematicalAlphanumericSymbols', () {
      final character = 0x1D400;
      expect(UnicodeBlock.isMathematicalAlphanumericSymbols(character), true);
      expect(UnicodeBlock.isMathematicalAlphanumericSymbols(latinCodeUnit), false);
    });


    test('SuttonSignWriting', () {
      final character = 0x1D800;
      expect(UnicodeBlock.isSuttonSignWriting(character), true);
      expect(UnicodeBlock.isSuttonSignWriting(latinCodeUnit), false);
    });


    test('GlagoliticSupplement', () {
      final character = 0x1E000;
      expect(UnicodeBlock.isGlagoliticSupplement(character), true);
      expect(UnicodeBlock.isGlagoliticSupplement(latinCodeUnit), false);
    });


    test('NyiakengPuachueHmong', () {
      final character = 0x1E100;
      expect(UnicodeBlock.isNyiakengPuachueHmong(character), true);
      expect(UnicodeBlock.isNyiakengPuachueHmong(latinCodeUnit), false);
    });


    test('Wancho', () {
      final character = 0x1E2C0;
      expect(UnicodeBlock.isWancho(character), true);
      expect(UnicodeBlock.isWancho(latinCodeUnit), false);
    });


    test('MendeKikakui', () {
      final character = 0x1E800;
      expect(UnicodeBlock.isMendeKikakui(character), true);
      expect(UnicodeBlock.isMendeKikakui(latinCodeUnit), false);
    });


    test('Adlam', () {
      final character = 0x1E900;
      expect(UnicodeBlock.isAdlam(character), true);
      expect(UnicodeBlock.isAdlam(latinCodeUnit), false);
    });


    test('IndicSiyaqNumbers', () {
      final character = 0x1EC70;
      expect(UnicodeBlock.isIndicSiyaqNumbers(character), true);
      expect(UnicodeBlock.isIndicSiyaqNumbers(latinCodeUnit), false);
    });


    test('OttomanSiyaqNumbers', () {
      final character = 0x1ED00;
      expect(UnicodeBlock.isOttomanSiyaqNumbers(character), true);
      expect(UnicodeBlock.isOttomanSiyaqNumbers(latinCodeUnit), false);
    });


    test('ArabicMathematicalAlphabeticSymbols', () {
      final character = 0x1EE00;
      expect(UnicodeBlock.isArabicMathematicalAlphabeticSymbols(character), true);
      expect(UnicodeBlock.isArabicMathematicalAlphabeticSymbols(latinCodeUnit), false);
    });


    test('MahjongTiles', () {
      final character = 0x1F000;
      expect(UnicodeBlock.isMahjongTiles(character), true);
      expect(UnicodeBlock.isMahjongTiles(latinCodeUnit), false);
    });


    test('DominoTiles', () {
      final character = 0x1F030;
      expect(UnicodeBlock.isDominoTiles(character), true);
      expect(UnicodeBlock.isDominoTiles(latinCodeUnit), false);
    });


    test('PlayingCards', () {
      final character = 0x1F0A0;
      expect(UnicodeBlock.isPlayingCards(character), true);
      expect(UnicodeBlock.isPlayingCards(latinCodeUnit), false);
    });


    test('EnclosedAlphanumericSupplement', () {
      final character = 0x1F100;
      expect(UnicodeBlock.isEnclosedAlphanumericSupplement(character), true);
      expect(UnicodeBlock.isEnclosedAlphanumericSupplement(latinCodeUnit), false);
    });


    test('EnclosedIdeographicSupplement', () {
      final character = 0x1F200;
      expect(UnicodeBlock.isEnclosedIdeographicSupplement(character), true);
      expect(UnicodeBlock.isEnclosedIdeographicSupplement(latinCodeUnit), false);
    });


    test('MiscellaneousSymbolsandPictographs', () {
      final character = 0x1F300;
      expect(UnicodeBlock.isMiscellaneousSymbolsAndPictographs(character), true);
      expect(UnicodeBlock.isMiscellaneousSymbolsAndPictographs(latinCodeUnit), false);
    });


    test('Emoticons', () {
      final character = 0x1F600;
      expect(UnicodeBlock.isEmoticons(character), true);
      expect(UnicodeBlock.isEmoticons(latinCodeUnit), false);
    });


    test('OrnamentalDingbats', () {
      final character = 0x1F650;
      expect(UnicodeBlock.isOrnamentalDingbats(character), true);
      expect(UnicodeBlock.isOrnamentalDingbats(latinCodeUnit), false);
    });


    test('TransportandMapSymbols', () {
      final character = 0x1F680;
      expect(UnicodeBlock.isTransportAndMapSymbols(character), true);
      expect(UnicodeBlock.isTransportAndMapSymbols(latinCodeUnit), false);
    });


    test('AlchemicalSymbols', () {
      final character = 0x1F700;
      expect(UnicodeBlock.isAlchemicalSymbols(character), true);
      expect(UnicodeBlock.isAlchemicalSymbols(latinCodeUnit), false);
    });


    test('GeometricShapesExtended', () {
      final character = 0x1F780;
      expect(UnicodeBlock.isGeometricShapesExtended(character), true);
      expect(UnicodeBlock.isGeometricShapesExtended(latinCodeUnit), false);
    });


    test('SupplementalArrowsC', () {
      final character = 0x1F800;
      expect(UnicodeBlock.isSupplementalArrowsC(character), true);
      expect(UnicodeBlock.isSupplementalArrowsC(latinCodeUnit), false);
    });


    test('SupplementalSymbolsandPictographs', () {
      final character = 0x1F900;
      expect(UnicodeBlock.isSupplementalSymbolsAndPictographs(character), true);
      expect(UnicodeBlock.isSupplementalSymbolsAndPictographs(latinCodeUnit), false);
    });


    test('ChessSymbols', () {
      final character = 0x1FA00;
      expect(UnicodeBlock.isChessSymbols(character), true);
      expect(UnicodeBlock.isChessSymbols(latinCodeUnit), false);
    });


    test('SymbolsandPictographsExtendedA', () {
      final character = 0x1FA70;
      expect(UnicodeBlock.isSymbolsAndPictographsExtendedA(character), true);
      expect(UnicodeBlock.isSymbolsAndPictographsExtendedA(latinCodeUnit), false);
    });


    test('CJKUnifiedIdeographsExtensionB', () {
      final character = 0x20000;
      expect(UnicodeBlock.isCJKUnifiedIdeographsExtensionB(character), true);
      expect(UnicodeBlock.isCJKUnifiedIdeographsExtensionB(latinCodeUnit), false);
      });


    test('CJKUnifiedIdeographsExtensionC', () {
      final character = 0x2A700;
      expect(UnicodeBlock.isCJKUnifiedIdeographsExtensionC(character), true);
      expect(UnicodeBlock.isCJKUnifiedIdeographsExtensionC(latinCodeUnit), false);
      });


    test('CJKUnifiedIdeographsExtensionD', () {
      final character = 0x2B740;
      expect(UnicodeBlock.isCJKUnifiedIdeographsExtensionD(character), true);
      expect(UnicodeBlock.isCJKUnifiedIdeographsExtensionD(latinCodeUnit), false);
      });


    test('CJKUnifiedIdeographsExtensionE', () {
      final character = 0x2B820;
      expect(UnicodeBlock.isCJKUnifiedIdeographsExtensionE(character), true);
      expect(UnicodeBlock.isCJKUnifiedIdeographsExtensionE(latinCodeUnit), false);
      });


    test('CJKUnifiedIdeographsExtensionF', () {
      final character = 0x2CEB0;
      expect(UnicodeBlock.isCJKUnifiedIdeographsExtensionF(character), true);
      expect(UnicodeBlock.isCJKUnifiedIdeographsExtensionF(latinCodeUnit), false);
      });


    test('CJKCompatibilityIdeographsSupplement', () {
      final character = 0x2F800;
      expect(UnicodeBlock.isCJKCompatibilityIdeographsSupplement(character), true);
      expect(UnicodeBlock.isCJKCompatibilityIdeographsSupplement(latinCodeUnit), false);
    });


    test('Tags', () {
      final character = 0xE0000;
      expect(UnicodeBlock.isTags(character), true);
      expect(UnicodeBlock.isTags(latinCodeUnit), false);
    });


    test('VariationSelectorsSupplement', () {
      final character = 0xE0100;
      expect(UnicodeBlock.isVariationSelectorsSupplement(character), true);
      expect(UnicodeBlock.isVariationSelectorsSupplement(latinCodeUnit), false);
    });


    test('SupplementaryPrivateUseAreaA', () {
      final character = 0xF0000;
      expect(UnicodeBlock.isSupplementaryPrivateUseAreaA(character), true);
      expect(UnicodeBlock.isSupplementaryPrivateUseAreaA(latinCodeUnit), false);
    });


    test('SupplementaryPrivateUseAreaB', () {
      final character = 0x100000;
      expect(UnicodeBlock.isSupplementaryPrivateUseAreaB(character), true);
      expect(UnicodeBlock.isSupplementaryPrivateUseAreaB(latinCodeUnit), false);
    });

  });
}


// Regex find and replace to help generate tests from
//
// # =+$\n\n([0-9a-fA-F]{4,5}).+; ([a-zA-Z_]+).{12}(.+)
// # ================================================\n\ntest('$2', () {\nfinal character = 0x$1; // $3\nexpect(UnicodeScript.is$2(character), true);\nexpect(UnicodeScript.is$2(latinCodeUnit), false);\n});\n\n


