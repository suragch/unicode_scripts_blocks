class UnicodeBlock {
  
  static bool isBasicLatin(int codeUnit) {
    return codeUnit >= 0x0000 && codeUnit <= 0x007F;
  }

  static bool isLatin1Supplement(int codeUnit) {
    return codeUnit >= 0x0080 && codeUnit <= 0x00FF;
  }

  static bool isLatinExtendedA(int codeUnit) {
    return codeUnit >= 0x0100 && codeUnit <= 0x017F;
  }

  static bool isLatinExtendedB(int codeUnit) {
    return codeUnit >= 0x0180 && codeUnit <= 0x024F;
  }

  static bool isIPAExtensions(int codeUnit) {
    return codeUnit >= 0x0250 && codeUnit <= 0x02AF;
  }

  static bool isSpacingModifierLetters(int codeUnit) {
    return codeUnit >= 0x02B0 && codeUnit <= 0x02FF;
  }

  static bool isCombiningDiacriticalMarks(int codeUnit) {
    return codeUnit >= 0x0300 && codeUnit <= 0x036F;
  }

  static bool isGreekAndCoptic(int codeUnit) {
    return codeUnit >= 0x0370 && codeUnit <= 0x03FF;
  }

  static bool isCyrillic(int codeUnit) {
    return codeUnit >= 0x0400 && codeUnit <= 0x04FF;
  }

  static bool isCyrillicSupplement(int codeUnit) {
    return codeUnit >= 0x0500 && codeUnit <= 0x052F;
  }

  static bool isArmenian(int codeUnit) {
    return codeUnit >= 0x0530 && codeUnit <= 0x058F;
  }

  static bool isHebrew(int codeUnit) {
    return codeUnit >= 0x0590 && codeUnit <= 0x05FF;
  }

  static bool isArabic(int codeUnit) {
    return codeUnit >= 0x0600 && codeUnit <= 0x06FF;
  }

  static bool isSyriac(int codeUnit) {
    return codeUnit >= 0x0700 && codeUnit <= 0x074F;
  }

  static bool isArabicSupplement(int codeUnit) {
    return codeUnit >= 0x0750 && codeUnit <= 0x077F;
  }

  static bool isThaana(int codeUnit) {
    return codeUnit >= 0x0780 && codeUnit <= 0x07BF;
  }

  static bool isNKo(int codeUnit) {
    return codeUnit >= 0x07C0 && codeUnit <= 0x07FF;
  }

  static bool isSamaritan(int codeUnit) {
    return codeUnit >= 0x0800 && codeUnit <= 0x083F;
  }

  static bool isMandaic(int codeUnit) {
    return codeUnit >= 0x0840 && codeUnit <= 0x085F;
  }

  static bool isSyriacSupplement(int codeUnit) {
    return codeUnit >= 0x0860 && codeUnit <= 0x086F;
  }

  static bool isArabicExtendedA(int codeUnit) {
    return codeUnit >= 0x08A0 && codeUnit <= 0x08FF;
  }

  static bool isDevanagari(int codeUnit) {
    return codeUnit >= 0x0900 && codeUnit <= 0x097F;
  }

  static bool isBengali(int codeUnit) {
    return codeUnit >= 0x0980 && codeUnit <= 0x09FF;
  }

  static bool isGurmukhi(int codeUnit) {
    return codeUnit >= 0x0A00 && codeUnit <= 0x0A7F;
  }

  static bool isGujarati(int codeUnit) {
    return codeUnit >= 0x0A80 && codeUnit <= 0x0AFF;
  }

  static bool isOriya(int codeUnit) {
    return codeUnit >= 0x0B00 && codeUnit <= 0x0B7F;
  }

  static bool isTamil(int codeUnit) {
    return codeUnit >= 0x0B80 && codeUnit <= 0x0BFF;
  }

  static bool isTelugu(int codeUnit) {
    return codeUnit >= 0x0C00 && codeUnit <= 0x0C7F;
  }

  static bool isKannada(int codeUnit) {
    return codeUnit >= 0x0C80 && codeUnit <= 0x0CFF;
  }

  static bool isMalayalam(int codeUnit) {
    return codeUnit >= 0x0D00 && codeUnit <= 0x0D7F;
  }

  static bool isSinhala(int codeUnit) {
    return codeUnit >= 0x0D80 && codeUnit <= 0x0DFF;
  }

  static bool isThai(int codeUnit) {
    return codeUnit >= 0x0E00 && codeUnit <= 0x0E7F;
  }

  static bool isLao(int codeUnit) {
    return codeUnit >= 0x0E80 && codeUnit <= 0x0EFF;
  }

  static bool isTibetan(int codeUnit) {
    return codeUnit >= 0x0F00 && codeUnit <= 0x0FFF;
  }

  static bool isMyanmar(int codeUnit) {
    return codeUnit >= 0x1000 && codeUnit <= 0x109F;
  }

  static bool isGeorgian(int codeUnit) {
    return codeUnit >= 0x10A0 && codeUnit <= 0x10FF;
  }

  static bool isHangulJamo(int codeUnit) {
    return codeUnit >= 0x1100 && codeUnit <= 0x11FF;
  }

  static bool isEthiopic(int codeUnit) {
    return codeUnit >= 0x1200 && codeUnit <= 0x137F;
  }

  static bool isEthiopicSupplement(int codeUnit) {
    return codeUnit >= 0x1380 && codeUnit <= 0x139F;
  }

  static bool isCherokee(int codeUnit) {
    return codeUnit >= 0x13A0 && codeUnit <= 0x13FF;
  }

  static bool isUnifiedCanadianAboriginalSyllabics(int codeUnit) {
    return codeUnit >= 0x1400 && codeUnit <= 0x167F;
  }

  static bool isOgham(int codeUnit) {
    return codeUnit >= 0x1680 && codeUnit <= 0x169F;
  }

  static bool isRunic(int codeUnit) {
    return codeUnit >= 0x16A0 && codeUnit <= 0x16FF;
  }

  static bool isTagalog(int codeUnit) {
    return codeUnit >= 0x1700 && codeUnit <= 0x171F;
  }

  static bool isHanunoo(int codeUnit) {
    return codeUnit >= 0x1720 && codeUnit <= 0x173F;
  }

  static bool isBuhid(int codeUnit) {
    return codeUnit >= 0x1740 && codeUnit <= 0x175F;
  }

  static bool isTagbanwa(int codeUnit) {
    return codeUnit >= 0x1760 && codeUnit <= 0x177F;
  }

  static bool isKhmer(int codeUnit) {
    return codeUnit >= 0x1780 && codeUnit <= 0x17FF;
  }

  static bool isMongolian(int codeUnit) {
    return codeUnit >= 0x1800 && codeUnit <= 0x18AF;
  }

  static bool isUnifiedCanadianAboriginalSyllabicsExtended(int codeUnit) {
    return codeUnit >= 0x18B0 && codeUnit <= 0x18FF;
  }

  static bool isLimbu(int codeUnit) {
    return codeUnit >= 0x1900 && codeUnit <= 0x194F;
  }

  static bool isTaiLe(int codeUnit) {
    return codeUnit >= 0x1950 && codeUnit <= 0x197F;
  }

  static bool isNewTaiLue(int codeUnit) {
    return codeUnit >= 0x1980 && codeUnit <= 0x19DF;
  }

  static bool isKhmerSymbols(int codeUnit) {
    return codeUnit >= 0x19E0 && codeUnit <= 0x19FF;
  }

  static bool isBuginese(int codeUnit) {
    return codeUnit >= 0x1A00 && codeUnit <= 0x1A1F;
  }

  static bool isTaiTham(int codeUnit) {
    return codeUnit >= 0x1A20 && codeUnit <= 0x1AAF;
  }

  static bool isCombiningDiacriticalMarksExtended(int codeUnit) {
    return codeUnit >= 0x1AB0 && codeUnit <= 0x1AFF;
  }

  static bool isBalinese(int codeUnit) {
    return codeUnit >= 0x1B00 && codeUnit <= 0x1B7F;
  }

  static bool isSundanese(int codeUnit) {
    return codeUnit >= 0x1B80 && codeUnit <= 0x1BBF;
  }

  static bool isBatak(int codeUnit) {
    return codeUnit >= 0x1BC0 && codeUnit <= 0x1BFF;
  }

  static bool isLepcha(int codeUnit) {
    return codeUnit >= 0x1C00 && codeUnit <= 0x1C4F;
  }

  static bool isOlChiki(int codeUnit) {
    return codeUnit >= 0x1C50 && codeUnit <= 0x1C7F;
  }

  static bool isCyrillicExtendedC(int codeUnit) {
    return codeUnit >= 0x1C80 && codeUnit <= 0x1C8F;
  }

  static bool isGeorgianExtended(int codeUnit) {
    return codeUnit >= 0x1C90 && codeUnit <= 0x1CBF;
  }

  static bool isSundaneseSupplement(int codeUnit) {
    return codeUnit >= 0x1CC0 && codeUnit <= 0x1CCF;
  }

  static bool isVedicExtensions(int codeUnit) {
    return codeUnit >= 0x1CD0 && codeUnit <= 0x1CFF;
  }

  static bool isPhoneticExtensions(int codeUnit) {
    return codeUnit >= 0x1D00 && codeUnit <= 0x1D7F;
  }

  static bool isPhoneticExtensionsSupplement(int codeUnit) {
    return codeUnit >= 0x1D80 && codeUnit <= 0x1DBF;
  }

  static bool isCombiningDiacriticalMarksSupplement(int codeUnit) {
    return codeUnit >= 0x1DC0 && codeUnit <= 0x1DFF;
  }

  static bool isLatinExtendedAdditional(int codeUnit) {
    return codeUnit >= 0x1E00 && codeUnit <= 0x1EFF;
  }

  static bool isGreekExtended(int codeUnit) {
    return codeUnit >= 0x1F00 && codeUnit <= 0x1FFF;
  }

  static bool isGeneralPunctuation(int codeUnit) {
    return codeUnit >= 0x2000 && codeUnit <= 0x206F;
  }

  static bool isSuperscriptsAndSubscripts(int codeUnit) {
    return codeUnit >= 0x2070 && codeUnit <= 0x209F;
  }

  static bool isCurrencySymbols(int codeUnit) {
    return codeUnit >= 0x20A0 && codeUnit <= 0x20CF;
  }

  static bool isCombiningDiacriticalMarksforSymbols(int codeUnit) {
    return codeUnit >= 0x20D0 && codeUnit <= 0x20FF;
  }

  static bool isLetterlikeSymbols(int codeUnit) {
    return codeUnit >= 0x2100 && codeUnit <= 0x214F;
  }

  static bool isNumberForms(int codeUnit) {
    return codeUnit >= 0x2150 && codeUnit <= 0x218F;
  }

  static bool isArrows(int codeUnit) {
    return codeUnit >= 0x2190 && codeUnit <= 0x21FF;
  }

  static bool isMathematicalOperators(int codeUnit) {
    return codeUnit >= 0x2200 && codeUnit <= 0x22FF;
  }

  static bool isMiscellaneousTechnical(int codeUnit) {
    return codeUnit >= 0x2300 && codeUnit <= 0x23FF;
  }

  static bool isControlPictures(int codeUnit) {
    return codeUnit >= 0x2400 && codeUnit <= 0x243F;
  }

  static bool isOpticalCharacterRecognition(int codeUnit) {
    return codeUnit >= 0x2440 && codeUnit <= 0x245F;
  }

  static bool isEnclosedAlphanumerics(int codeUnit) {
    return codeUnit >= 0x2460 && codeUnit <= 0x24FF;
  }

  static bool isBoxDrawing(int codeUnit) {
    return codeUnit >= 0x2500 && codeUnit <= 0x257F;
  }

  static bool isBlockElements(int codeUnit) {
    return codeUnit >= 0x2580 && codeUnit <= 0x259F;
  }

  static bool isGeometricShapes(int codeUnit) {
    return codeUnit >= 0x25A0 && codeUnit <= 0x25FF;
  }

  static bool isMiscellaneousSymbols(int codeUnit) {
    return codeUnit >= 0x2600 && codeUnit <= 0x26FF;
  }

  static bool isDingbats(int codeUnit) {
    return codeUnit >= 0x2700 && codeUnit <= 0x27BF;
  }

  static bool isMiscellaneousMathematicalSymbolsA(int codeUnit) {
    return codeUnit >= 0x27C0 && codeUnit <= 0x27EF;
  }

  static bool isSupplementalArrowsA(int codeUnit) {
    return codeUnit >= 0x27F0 && codeUnit <= 0x27FF;
  }

  static bool isBraillePatterns(int codeUnit) {
    return codeUnit >= 0x2800 && codeUnit <= 0x28FF;
  }

  static bool isSupplementalArrowsB(int codeUnit) {
    return codeUnit >= 0x2900 && codeUnit <= 0x297F;
  }

  static bool isMiscellaneousMathematicalSymbolsB(int codeUnit) {
    return codeUnit >= 0x2980 && codeUnit <= 0x29FF;
  }

  static bool isSupplementalMathematicalOperators(int codeUnit) {
    return codeUnit >= 0x2A00 && codeUnit <= 0x2AFF;
  }

  static bool isMiscellaneousSymbolsAndArrows(int codeUnit) {
    return codeUnit >= 0x2B00 && codeUnit <= 0x2BFF;
  }

  static bool isGlagolitic(int codeUnit) {
    return codeUnit >= 0x2C00 && codeUnit <= 0x2C5F;
  }

  static bool isLatinExtendedC(int codeUnit) {
    return codeUnit >= 0x2C60 && codeUnit <= 0x2C7F;
  }

  static bool isCoptic(int codeUnit) {
    return codeUnit >= 0x2C80 && codeUnit <= 0x2CFF;
  }

  static bool isGeorgianSupplement(int codeUnit) {
    return codeUnit >= 0x2D00 && codeUnit <= 0x2D2F;
  }

  static bool isTifinagh(int codeUnit) {
    return codeUnit >= 0x2D30 && codeUnit <= 0x2D7F;
  }

  static bool isEthiopicExtended(int codeUnit) {
    return codeUnit >= 0x2D80 && codeUnit <= 0x2DDF;
  }

  static bool isCyrillicExtendedA(int codeUnit) {
    return codeUnit >= 0x2DE0 && codeUnit <= 0x2DFF;
  }

  static bool isSupplementalPunctuation(int codeUnit) {
    return codeUnit >= 0x2E00 && codeUnit <= 0x2E7F;
  }

  static bool isCJKRadicalsSupplement(int codeUnit) {
    return codeUnit >= 0x2E80 && codeUnit <= 0x2EFF;
  }

  static bool isKangxiRadicals(int codeUnit) {
    return codeUnit >= 0x2F00 && codeUnit <= 0x2FDF;
  }

  static bool isIdeographicDescriptionCharacters(int codeUnit) {
    return codeUnit >= 0x2FF0 && codeUnit <= 0x2FFF;
  }

  static bool isCJKSymbolsAndPunctuation(int codeUnit) {
    return codeUnit >= 0x3000 && codeUnit <= 0x303F;
  }

  static bool isHiragana(int codeUnit) {
    return codeUnit >= 0x3040 && codeUnit <= 0x309F;
  }

  static bool isKatakana(int codeUnit) {
    return codeUnit >= 0x30A0 && codeUnit <= 0x30FF;
  }

  static bool isBopomofo(int codeUnit) {
    return codeUnit >= 0x3100 && codeUnit <= 0x312F;
  }

  static bool isHangulCompatibilityJamo(int codeUnit) {
    return codeUnit >= 0x3130 && codeUnit <= 0x318F;
  }

  static bool isKanbun(int codeUnit) {
    return codeUnit >= 0x3190 && codeUnit <= 0x319F;
  }

  static bool isBopomofoExtended(int codeUnit) {
    return codeUnit >= 0x31A0 && codeUnit <= 0x31BF;
  }

  static bool isCJKStrokes(int codeUnit) {
    return codeUnit >= 0x31C0 && codeUnit <= 0x31EF;
  }

  static bool isKatakanaPhoneticExtensions(int codeUnit) {
    return codeUnit >= 0x31F0 && codeUnit <= 0x31FF;
  }

  static bool isEnclosedCJKLettersAndMonths(int codeUnit) {
    return codeUnit >= 0x3200 && codeUnit <= 0x32FF;
  }

  static bool isCJKCompatibility(int codeUnit) {
    return codeUnit >= 0x3300 && codeUnit <= 0x33FF;
  }

  static bool isCJKUnifiedIdeographsExtensionA(int codeUnit) {
    return codeUnit >= 0x3400 && codeUnit <= 0x4DBF;
  }

  static bool isYijingHexagramSymbols(int codeUnit) {
    return codeUnit >= 0x4DC0 && codeUnit <= 0x4DFF;
  }

  static bool isCJKUnifiedIdeographs(int codeUnit) {
    return codeUnit >= 0x4E00 && codeUnit <= 0x9FFF;
  }

  static bool isYiSyllables(int codeUnit) {
    return codeUnit >= 0xA000 && codeUnit <= 0xA48F;
  }

  static bool isYiRadicals(int codeUnit) {
    return codeUnit >= 0xA490 && codeUnit <= 0xA4CF;
  }

  static bool isLisu(int codeUnit) {
    return codeUnit >= 0xA4D0 && codeUnit <= 0xA4FF;
  }

  static bool isVai(int codeUnit) {
    return codeUnit >= 0xA500 && codeUnit <= 0xA63F;
  }

  static bool isCyrillicExtendedB(int codeUnit) {
    return codeUnit >= 0xA640 && codeUnit <= 0xA69F;
  }

  static bool isBamum(int codeUnit) {
    return codeUnit >= 0xA6A0 && codeUnit <= 0xA6FF;
  }

  static bool isModifierToneLetters(int codeUnit) {
    return codeUnit >= 0xA700 && codeUnit <= 0xA71F;
  }

  static bool isLatinExtendedD(int codeUnit) {
    return codeUnit >= 0xA720 && codeUnit <= 0xA7FF;
  }

  static bool isSylotiNagri(int codeUnit) {
    return codeUnit >= 0xA800 && codeUnit <= 0xA82F;
  }

  static bool isCommonIndicNumberForms(int codeUnit) {
    return codeUnit >= 0xA830 && codeUnit <= 0xA83F;
  }

  static bool isPhagspa(int codeUnit) {
    return codeUnit >= 0xA840 && codeUnit <= 0xA87F;
  }

  static bool isSaurashtra(int codeUnit) {
    return codeUnit >= 0xA880 && codeUnit <= 0xA8DF;
  }

  static bool isDevanagariExtended(int codeUnit) {
    return codeUnit >= 0xA8E0 && codeUnit <= 0xA8FF;
  }

  static bool isKayahLi(int codeUnit) {
    return codeUnit >= 0xA900 && codeUnit <= 0xA92F;
  }

  static bool isRejang(int codeUnit) {
    return codeUnit >= 0xA930 && codeUnit <= 0xA95F;
  }

  static bool isHangulJamoExtendedA(int codeUnit) {
    return codeUnit >= 0xA960 && codeUnit <= 0xA97F;
  }

  static bool isJavanese(int codeUnit) {
    return codeUnit >= 0xA980 && codeUnit <= 0xA9DF;
  }

  static bool isMyanmarExtendedB(int codeUnit) {
    return codeUnit >= 0xA9E0 && codeUnit <= 0xA9FF;
  }

  static bool isCham(int codeUnit) {
    return codeUnit >= 0xAA00 && codeUnit <= 0xAA5F;
  }

  static bool isMyanmarExtendedA(int codeUnit) {
    return codeUnit >= 0xAA60 && codeUnit <= 0xAA7F;
  }

  static bool isTaiViet(int codeUnit) {
    return codeUnit >= 0xAA80 && codeUnit <= 0xAADF;
  }

  static bool isMeeteiMayekExtensions(int codeUnit) {
    return codeUnit >= 0xAAE0 && codeUnit <= 0xAAFF;
  }

  static bool isEthiopicExtendedA(int codeUnit) {
    return codeUnit >= 0xAB00 && codeUnit <= 0xAB2F;
  }

  static bool isLatinExtendedE(int codeUnit) {
    return codeUnit >= 0xAB30 && codeUnit <= 0xAB6F;
  }

  static bool isCherokeeSupplement(int codeUnit) {
    return codeUnit >= 0xAB70 && codeUnit <= 0xABBF;
  }

  static bool isMeeteiMayek(int codeUnit) {
    return codeUnit >= 0xABC0 && codeUnit <= 0xABFF;
  }

  static bool isHangulSyllables(int codeUnit) {
    return codeUnit >= 0xAC00 && codeUnit <= 0xD7AF;
  }

  static bool isHangulJamoExtendedB(int codeUnit) {
    return codeUnit >= 0xD7B0 && codeUnit <= 0xD7FF;
  }

  static bool isHighSurrogates(int codeUnit) {
    return codeUnit >= 0xD800 && codeUnit <= 0xDB7F;
  }

  static bool isHighPrivateUseSurrogates(int codeUnit) {
    return codeUnit >= 0xDB80 && codeUnit <= 0xDBFF;
  }

  static bool isLowSurrogates(int codeUnit) {
    return codeUnit >= 0xDC00 && codeUnit <= 0xDFFF;
  }

  static bool isPrivateUseArea(int codeUnit) {
    return codeUnit >= 0xE000 && codeUnit <= 0xF8FF;
  }

  static bool isCJKCompatibilityIdeographs(int codeUnit) {
    return codeUnit >= 0xF900 && codeUnit <= 0xFAFF;
  }

  static bool isAlphabeticPresentationForms(int codeUnit) {
    return codeUnit >= 0xFB00 && codeUnit <= 0xFB4F;
  }

  static bool isArabicPresentationFormsA(int codeUnit) {
    return codeUnit >= 0xFB50 && codeUnit <= 0xFDFF;
  }

  static bool isVariationSelectors(int codeUnit) {
    return codeUnit >= 0xFE00 && codeUnit <= 0xFE0F;
  }

  static bool isVerticalForms(int codeUnit) {
    return codeUnit >= 0xFE10 && codeUnit <= 0xFE1F;
  }

  static bool isCombiningHalfMarks(int codeUnit) {
    return codeUnit >= 0xFE20 && codeUnit <= 0xFE2F;
  }

  static bool isCJKCompatibilityForms(int codeUnit) {
    return codeUnit >= 0xFE30 && codeUnit <= 0xFE4F;
  }

  static bool isSmallFormVariants(int codeUnit) {
    return codeUnit >= 0xFE50 && codeUnit <= 0xFE6F;
  }

  static bool isArabicPresentationFormsB(int codeUnit) {
    return codeUnit >= 0xFE70 && codeUnit <= 0xFEFF;
  }

  static bool isHalfwidthAndFullwidthForms(int codeUnit) {
    return codeUnit >= 0xFF00 && codeUnit <= 0xFFEF;
  }

  static bool isSpecials(int codeUnit) {
    return codeUnit >= 0xFFF0 && codeUnit <= 0xFFFF;
  }

  static bool isLinearBSyllabary(int codeUnit) {
    return codeUnit >= 0x10000 && codeUnit <= 0x1007F;
  }

  static bool isLinearBIdeograms(int codeUnit) {
    return codeUnit >= 0x10080 && codeUnit <= 0x100FF;
  }

  static bool isAegeanNumbers(int codeUnit) {
    return codeUnit >= 0x10100 && codeUnit <= 0x1013F;
  }

  static bool isAncientGreekNumbers(int codeUnit) {
    return codeUnit >= 0x10140 && codeUnit <= 0x1018F;
  }

  static bool isAncientSymbols(int codeUnit) {
    return codeUnit >= 0x10190 && codeUnit <= 0x101CF;
  }

  static bool isPhaistosDisc(int codeUnit) {
    return codeUnit >= 0x101D0 && codeUnit <= 0x101FF;
  }

  static bool isLycian(int codeUnit) {
    return codeUnit >= 0x10280 && codeUnit <= 0x1029F;
  }

  static bool isCarian(int codeUnit) {
    return codeUnit >= 0x102A0 && codeUnit <= 0x102DF;
  }

  static bool isCopticEpactNumbers(int codeUnit) {
    return codeUnit >= 0x102E0 && codeUnit <= 0x102FF;
  }

  static bool isOldItalic(int codeUnit) {
    return codeUnit >= 0x10300 && codeUnit <= 0x1032F;
  }

  static bool isGothic(int codeUnit) {
    return codeUnit >= 0x10330 && codeUnit <= 0x1034F;
  }

  static bool isOldPermic(int codeUnit) {
    return codeUnit >= 0x10350 && codeUnit <= 0x1037F;
  }

  static bool isUgaritic(int codeUnit) {
    return codeUnit >= 0x10380 && codeUnit <= 0x1039F;
  }

  static bool isOldPersian(int codeUnit) {
    return codeUnit >= 0x103A0 && codeUnit <= 0x103DF;
  }

  static bool isDeseret(int codeUnit) {
    return codeUnit >= 0x10400 && codeUnit <= 0x1044F;
  }

  static bool isShavian(int codeUnit) {
    return codeUnit >= 0x10450 && codeUnit <= 0x1047F;
  }

  static bool isOsmanya(int codeUnit) {
    return codeUnit >= 0x10480 && codeUnit <= 0x104AF;
  }

  static bool isOsage(int codeUnit) {
    return codeUnit >= 0x104B0 && codeUnit <= 0x104FF;
  }

  static bool isElbasan(int codeUnit) {
    return codeUnit >= 0x10500 && codeUnit <= 0x1052F;
  }

  static bool isCaucasianAlbanian(int codeUnit) {
    return codeUnit >= 0x10530 && codeUnit <= 0x1056F;
  }

  static bool isLinearA(int codeUnit) {
    return codeUnit >= 0x10600 && codeUnit <= 0x1077F;
  }

  static bool isCypriotSyllabary(int codeUnit) {
    return codeUnit >= 0x10800 && codeUnit <= 0x1083F;
  }

  static bool isImperialAramaic(int codeUnit) {
    return codeUnit >= 0x10840 && codeUnit <= 0x1085F;
  }

  static bool isPalmyrene(int codeUnit) {
    return codeUnit >= 0x10860 && codeUnit <= 0x1087F;
  }

  static bool isNabataean(int codeUnit) {
    return codeUnit >= 0x10880 && codeUnit <= 0x108AF;
  }

  static bool isHatran(int codeUnit) {
    return codeUnit >= 0x108E0 && codeUnit <= 0x108FF;
  }

  static bool isPhoenician(int codeUnit) {
    return codeUnit >= 0x10900 && codeUnit <= 0x1091F;
  }

  static bool isLydian(int codeUnit) {
    return codeUnit >= 0x10920 && codeUnit <= 0x1093F;
  }

  static bool isMeroiticHieroglyphs(int codeUnit) {
    return codeUnit >= 0x10980 && codeUnit <= 0x1099F;
  }

  static bool isMeroiticCursive(int codeUnit) {
    return codeUnit >= 0x109A0 && codeUnit <= 0x109FF;
  }

  static bool isKharoshthi(int codeUnit) {
    return codeUnit >= 0x10A00 && codeUnit <= 0x10A5F;
  }

  static bool isOldSouthArabian(int codeUnit) {
    return codeUnit >= 0x10A60 && codeUnit <= 0x10A7F;
  }

  static bool isOldNorthArabian(int codeUnit) {
    return codeUnit >= 0x10A80 && codeUnit <= 0x10A9F;
  }

  static bool isManichaean(int codeUnit) {
    return codeUnit >= 0x10AC0 && codeUnit <= 0x10AFF;
  }

  static bool isAvestan(int codeUnit) {
    return codeUnit >= 0x10B00 && codeUnit <= 0x10B3F;
  }

  static bool isInscriptionalParthian(int codeUnit) {
    return codeUnit >= 0x10B40 && codeUnit <= 0x10B5F;
  }

  static bool isInscriptionalPahlavi(int codeUnit) {
    return codeUnit >= 0x10B60 && codeUnit <= 0x10B7F;
  }

  static bool isPsalterPahlavi(int codeUnit) {
    return codeUnit >= 0x10B80 && codeUnit <= 0x10BAF;
  }

  static bool isOldTurkic(int codeUnit) {
    return codeUnit >= 0x10C00 && codeUnit <= 0x10C4F;
  }

  static bool isOldHungarian(int codeUnit) {
    return codeUnit >= 0x10C80 && codeUnit <= 0x10CFF;
  }

  static bool isHanifiRohingya(int codeUnit) {
    return codeUnit >= 0x10D00 && codeUnit <= 0x10D3F;
  }

  static bool isRumiNumeralSymbols(int codeUnit) {
    return codeUnit >= 0x10E60 && codeUnit <= 0x10E7F;
  }

  static bool isOldSogdian(int codeUnit) {
    return codeUnit >= 0x10F00 && codeUnit <= 0x10F2F;
  }

  static bool isSogdian(int codeUnit) {
    return codeUnit >= 0x10F30 && codeUnit <= 0x10F6F;
  }

  static bool isElymaic(int codeUnit) {
    return codeUnit >= 0x10FE0 && codeUnit <= 0x10FFF;
  }

  static bool isBrahmi(int codeUnit) {
    return codeUnit >= 0x11000 && codeUnit <= 0x1107F;
  }

  static bool isKaithi(int codeUnit) {
    return codeUnit >= 0x11080 && codeUnit <= 0x110CF;
  }

  static bool isSoraSompeng(int codeUnit) {
    return codeUnit >= 0x110D0 && codeUnit <= 0x110FF;
  }

  static bool isChakma(int codeUnit) {
    return codeUnit >= 0x11100 && codeUnit <= 0x1114F;
  }

  static bool isMahajani(int codeUnit) {
    return codeUnit >= 0x11150 && codeUnit <= 0x1117F;
  }

  static bool isSharada(int codeUnit) {
    return codeUnit >= 0x11180 && codeUnit <= 0x111DF;
  }

  static bool isSinhalaArchaicNumbers(int codeUnit) {
    return codeUnit >= 0x111E0 && codeUnit <= 0x111FF;
  }

  static bool isKhojki(int codeUnit) {
    return codeUnit >= 0x11200 && codeUnit <= 0x1124F;
  }

  static bool isMultani(int codeUnit) {
    return codeUnit >= 0x11280 && codeUnit <= 0x112AF;
  }

  static bool isKhudawadi(int codeUnit) {
    return codeUnit >= 0x112B0 && codeUnit <= 0x112FF;
  }

  static bool isGrantha(int codeUnit) {
    return codeUnit >= 0x11300 && codeUnit <= 0x1137F;
  }

  static bool isNewa(int codeUnit) {
    return codeUnit >= 0x11400 && codeUnit <= 0x1147F;
  }

  static bool isTirhuta(int codeUnit) {
    return codeUnit >= 0x11480 && codeUnit <= 0x114DF;
  }

  static bool isSiddham(int codeUnit) {
    return codeUnit >= 0x11580 && codeUnit <= 0x115FF;
  }

  static bool isModi(int codeUnit) {
    return codeUnit >= 0x11600 && codeUnit <= 0x1165F;
  }

  static bool isMongolianSupplement(int codeUnit) {
    return codeUnit >= 0x11660 && codeUnit <= 0x1167F;
  }

  static bool isTakri(int codeUnit) {
    return codeUnit >= 0x11680 && codeUnit <= 0x116CF;
  }

  static bool isAhom(int codeUnit) {
    return codeUnit >= 0x11700 && codeUnit <= 0x1173F;
  }

  static bool isDogra(int codeUnit) {
    return codeUnit >= 0x11800 && codeUnit <= 0x1184F;
  }

  static bool isWarangCiti(int codeUnit) {
    return codeUnit >= 0x118A0 && codeUnit <= 0x118FF;
  }

  static bool isNandinagari(int codeUnit) {
    return codeUnit >= 0x119A0 && codeUnit <= 0x119FF;
  }

  static bool isZanabazarSquare(int codeUnit) {
    return codeUnit >= 0x11A00 && codeUnit <= 0x11A4F;
  }

  static bool isSoyombo(int codeUnit) {
    return codeUnit >= 0x11A50 && codeUnit <= 0x11AAF;
  }

  static bool isPauCinHau(int codeUnit) {
    return codeUnit >= 0x11AC0 && codeUnit <= 0x11AFF;
  }

  static bool isBhaiksuki(int codeUnit) {
    return codeUnit >= 0x11C00 && codeUnit <= 0x11C6F;
  }

  static bool isMarchen(int codeUnit) {
    return codeUnit >= 0x11C70 && codeUnit <= 0x11CBF;
  }

  static bool isMasaramGondi(int codeUnit) {
    return codeUnit >= 0x11D00 && codeUnit <= 0x11D5F;
  }

  static bool isGunjalaGondi(int codeUnit) {
    return codeUnit >= 0x11D60 && codeUnit <= 0x11DAF;
  }

  static bool isMakasar(int codeUnit) {
    return codeUnit >= 0x11EE0 && codeUnit <= 0x11EFF;
  }

  static bool isTamilSupplement(int codeUnit) {
    return codeUnit >= 0x11FC0 && codeUnit <= 0x11FFF;
  }

  static bool isCuneiform(int codeUnit) {
    return codeUnit >= 0x12000 && codeUnit <= 0x123FF;
  }

  static bool isCuneiformNumbersAndPunctuation(int codeUnit) {
    return codeUnit >= 0x12400 && codeUnit <= 0x1247F;
  }

  static bool isEarlyDynasticCuneiform(int codeUnit) {
    return codeUnit >= 0x12480 && codeUnit <= 0x1254F;
  }

  static bool isEgyptianHieroglyphs(int codeUnit) {
    return codeUnit >= 0x13000 && codeUnit <= 0x1342F;
  }

  static bool isEgyptianHieroglyphFormatControls(int codeUnit) {
    return codeUnit >= 0x13430 && codeUnit <= 0x1343F;
  }

  static bool isAnatolianHieroglyphs(int codeUnit) {
    return codeUnit >= 0x14400 && codeUnit <= 0x1467F;
  }

  static bool isBamumSupplement(int codeUnit) {
    return codeUnit >= 0x16800 && codeUnit <= 0x16A3F;
  }

  static bool isMro(int codeUnit) {
    return codeUnit >= 0x16A40 && codeUnit <= 0x16A6F;
  }

  static bool isBassaVah(int codeUnit) {
    return codeUnit >= 0x16AD0 && codeUnit <= 0x16AFF;
  }

  static bool isPahawhHmong(int codeUnit) {
    return codeUnit >= 0x16B00 && codeUnit <= 0x16B8F;
  }

  static bool isMedefaidrin(int codeUnit) {
    return codeUnit >= 0x16E40 && codeUnit <= 0x16E9F;
  }

  static bool isMiao(int codeUnit) {
    return codeUnit >= 0x16F00 && codeUnit <= 0x16F9F;
  }

  static bool isIdeographicSymbolsAndPunctuation(int codeUnit) {
    return codeUnit >= 0x16FE0 && codeUnit <= 0x16FFF;
  }

  static bool isTangut(int codeUnit) {
    return codeUnit >= 0x17000 && codeUnit <= 0x187FF;
  }

  static bool isTangutComponents(int codeUnit) {
    return codeUnit >= 0x18800 && codeUnit <= 0x18AFF;
  }

  static bool isKanaSupplement(int codeUnit) {
    return codeUnit >= 0x1B000 && codeUnit <= 0x1B0FF;
  }

  static bool isKanaExtendedA(int codeUnit) {
    return codeUnit >= 0x1B100 && codeUnit <= 0x1B12F;
  }

  static bool isSmallKanaExtension(int codeUnit) {
    return codeUnit >= 0x1B130 && codeUnit <= 0x1B16F;
  }

  static bool isNushu(int codeUnit) {
    return codeUnit >= 0x1B170 && codeUnit <= 0x1B2FF;
  }

  static bool isDuployan(int codeUnit) {
    return codeUnit >= 0x1BC00 && codeUnit <= 0x1BC9F;
  }

  static bool isShorthAndFormatControls(int codeUnit) {
    return codeUnit >= 0x1BCA0 && codeUnit <= 0x1BCAF;
  }

  static bool isByzantineMusicalSymbols(int codeUnit) {
    return codeUnit >= 0x1D000 && codeUnit <= 0x1D0FF;
  }

  static bool isMusicalSymbols(int codeUnit) {
    return codeUnit >= 0x1D100 && codeUnit <= 0x1D1FF;
  }

  static bool isAncientGreekMusicalNotation(int codeUnit) {
    return codeUnit >= 0x1D200 && codeUnit <= 0x1D24F;
  }

  static bool isMayanNumerals(int codeUnit) {
    return codeUnit >= 0x1D2E0 && codeUnit <= 0x1D2FF;
  }

  static bool isTaiXuanJingSymbols(int codeUnit) {
    return codeUnit >= 0x1D300 && codeUnit <= 0x1D35F;
  }

  static bool isCountingRodNumerals(int codeUnit) {
    return codeUnit >= 0x1D360 && codeUnit <= 0x1D37F;
  }

  static bool isMathematicalAlphanumericSymbols(int codeUnit) {
    return codeUnit >= 0x1D400 && codeUnit <= 0x1D7FF;
  }

  static bool isSuttonSignWriting(int codeUnit) {
    return codeUnit >= 0x1D800 && codeUnit <= 0x1DAAF;
  }

  static bool isGlagoliticSupplement(int codeUnit) {
    return codeUnit >= 0x1E000 && codeUnit <= 0x1E02F;
  }

  static bool isNyiakengPuachueHmong(int codeUnit) {
    return codeUnit >= 0x1E100 && codeUnit <= 0x1E14F;
  }

  static bool isWancho(int codeUnit) {
    return codeUnit >= 0x1E2C0 && codeUnit <= 0x1E2FF;
  }

  static bool isMendeKikakui(int codeUnit) {
    return codeUnit >= 0x1E800 && codeUnit <= 0x1E8DF;
  }

  static bool isAdlam(int codeUnit) {
    return codeUnit >= 0x1E900 && codeUnit <= 0x1E95F;
  }

  static bool isIndicSiyaqNumbers(int codeUnit) {
    return codeUnit >= 0x1EC70 && codeUnit <= 0x1ECBF;
  }

  static bool isOttomanSiyaqNumbers(int codeUnit) {
    return codeUnit >= 0x1ED00 && codeUnit <= 0x1ED4F;
  }

  static bool isArabicMathematicalAlphabeticSymbols(int codeUnit) {
    return codeUnit >= 0x1EE00 && codeUnit <= 0x1EEFF;
  }

  static bool isMahjongTiles(int codeUnit) {
    return codeUnit >= 0x1F000 && codeUnit <= 0x1F02F;
  }

  static bool isDominoTiles(int codeUnit) {
    return codeUnit >= 0x1F030 && codeUnit <= 0x1F09F;
  }

  static bool isPlayingCards(int codeUnit) {
    return codeUnit >= 0x1F0A0 && codeUnit <= 0x1F0FF;
  }

  static bool isEnclosedAlphanumericSupplement(int codeUnit) {
    return codeUnit >= 0x1F100 && codeUnit <= 0x1F1FF;
  }

  static bool isEnclosedIdeographicSupplement(int codeUnit) {
    return codeUnit >= 0x1F200 && codeUnit <= 0x1F2FF;
  }

  static bool isMiscellaneousSymbolsAndPictographs(int codeUnit) {
    return codeUnit >= 0x1F300 && codeUnit <= 0x1F5FF;
  }

  static bool isEmoticons(int codeUnit) {
    return codeUnit >= 0x1F600 && codeUnit <= 0x1F64F;
  }

  static bool isOrnamentalDingbats(int codeUnit) {
    return codeUnit >= 0x1F650 && codeUnit <= 0x1F67F;
  }

  static bool isTransportAndMapSymbols(int codeUnit) {
    return codeUnit >= 0x1F680 && codeUnit <= 0x1F6FF;
  }

  static bool isAlchemicalSymbols(int codeUnit) {
    return codeUnit >= 0x1F700 && codeUnit <= 0x1F77F;
  }

  static bool isGeometricShapesExtended(int codeUnit) {
    return codeUnit >= 0x1F780 && codeUnit <= 0x1F7FF;
  }

  static bool isSupplementalArrowsC(int codeUnit) {
    return codeUnit >= 0x1F800 && codeUnit <= 0x1F8FF;
  }

  static bool isSupplementalSymbolsAndPictographs(int codeUnit) {
    return codeUnit >= 0x1F900 && codeUnit <= 0x1F9FF;
  }

  static bool isChessSymbols(int codeUnit) {
    return codeUnit >= 0x1FA00 && codeUnit <= 0x1FA6F;
  }

  static bool isSymbolsAndPictographsExtendedA(int codeUnit) {
    return codeUnit >= 0x1FA70 && codeUnit <= 0x1FAFF;
  }

  static bool isCJKUnifiedIdeographsExtensionB(int codeUnit) {
    return codeUnit >= 0x20000 && codeUnit <= 0x2A6DF;
  }

  static bool isCJKUnifiedIdeographsExtensionC(int codeUnit) {
    return codeUnit >= 0x2A700 && codeUnit <= 0x2B73F;
  }

  static bool isCJKUnifiedIdeographsExtensionD(int codeUnit) {
    return codeUnit >= 0x2B740 && codeUnit <= 0x2B81F;
  }

  static bool isCJKUnifiedIdeographsExtensionE(int codeUnit) {
    return codeUnit >= 0x2B820 && codeUnit <= 0x2CEAF;
  }

  static bool isCJKUnifiedIdeographsExtensionF(int codeUnit) {
    return codeUnit >= 0x2CEB0 && codeUnit <= 0x2EBEF;
  }

  static bool isCJKCompatibilityIdeographsSupplement(int codeUnit) {
    return codeUnit >= 0x2F800 && codeUnit <= 0x2FA1F;
  }

  static bool isTags(int codeUnit) {
    return codeUnit >= 0xE0000 && codeUnit <= 0xE007F;
  }

  static bool isVariationSelectorsSupplement(int codeUnit) {
    return codeUnit >= 0xE0100 && codeUnit <= 0xE01EF;
  }

  static bool isSupplementaryPrivateUseAreaA(int codeUnit) {
    return codeUnit >= 0xF0000 && codeUnit <= 0xFFFFF;
  }

  static bool isSupplementaryPrivateUseAreaB(int codeUnit) {
    return codeUnit >= 0x100000 && codeUnit <= 0x10FFFF;
  }

}