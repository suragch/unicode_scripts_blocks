
// Regex to help generate code from
// https://www.unicode.org/Public/12.0.0/ucd/Scripts.txt
//
// ^([0-9a-fA-F]{4,5})\.\.([0-9a-fA-F]{4,5}).+$
// (codeUnit >= 0x$1 && codeUnit <= 0x$2) ||
//
// ^([0-9a-fA-F]{4,5}).+$
// (codeUnit == 0x$1) ||

/// This class contains methods for testing whether a code unit is a part of a
/// particular Unicode script. A script refers to a particular writing system
/// and its characters are not necessarily all in a single code block. Read this
/// for more: http://www.unicode.org/reports/tr24/
class UnicodeScript {

  /// Common refers to code points that are used in multiple scripts. Punctuation
  /// and emoji for example. See Script_Extensions for more:
  /// http://www.unicode.org/reports/tr24/#Script_Extensions
  /// This class does not implement Script_Extensions.
  static bool isCommon(int codeUnit) {
    return ((codeUnit >= 0x0000 && codeUnit <= 0x001F) ||
        (codeUnit == 0x0020) ||
        (codeUnit >= 0x0021 && codeUnit <= 0x0023) ||
        (codeUnit == 0x0024) ||
        (codeUnit >= 0x0025 && codeUnit <= 0x0027) ||
        (codeUnit == 0x0028) ||
        (codeUnit == 0x0029) ||
        (codeUnit == 0x002A) ||
        (codeUnit == 0x002B) ||
        (codeUnit == 0x002C) ||
        (codeUnit == 0x002D) ||
        (codeUnit >= 0x002E && codeUnit <= 0x002F) ||
        (codeUnit >= 0x0030 && codeUnit <= 0x0039) ||
        (codeUnit >= 0x003A && codeUnit <= 0x003B) ||
        (codeUnit >= 0x003C && codeUnit <= 0x003E) ||
        (codeUnit >= 0x003F && codeUnit <= 0x0040) ||
        (codeUnit == 0x005B) ||
        (codeUnit == 0x005C) ||
        (codeUnit == 0x005D) ||
        (codeUnit == 0x005E) ||
        (codeUnit == 0x005F) ||
        (codeUnit == 0x0060) ||
        (codeUnit == 0x007B) ||
        (codeUnit == 0x007C) ||
        (codeUnit == 0x007D) ||
        (codeUnit == 0x007E) ||
        (codeUnit >= 0x007F && codeUnit <= 0x009F) ||
        (codeUnit == 0x00A0) ||
        (codeUnit == 0x00A1) ||
        (codeUnit >= 0x00A2 && codeUnit <= 0x00A5) ||
        (codeUnit == 0x00A6) ||
        (codeUnit == 0x00A7) ||
        (codeUnit == 0x00A8) ||
        (codeUnit == 0x00A9) ||
        (codeUnit == 0x00AB) ||
        (codeUnit == 0x00AC) ||
        (codeUnit == 0x00AD) ||
        (codeUnit == 0x00AE) ||
        (codeUnit == 0x00AF) ||
        (codeUnit == 0x00B0) ||
        (codeUnit == 0x00B1) ||
        (codeUnit >= 0x00B2 && codeUnit <= 0x00B3) ||
        (codeUnit == 0x00B4) ||
        (codeUnit == 0x00B5) ||
        (codeUnit >= 0x00B6 && codeUnit <= 0x00B7) ||
        (codeUnit == 0x00B8) ||
        (codeUnit == 0x00B9) ||
        (codeUnit == 0x00BB) ||
        (codeUnit >= 0x00BC && codeUnit <= 0x00BE) ||
        (codeUnit == 0x00BF) ||
        (codeUnit == 0x00D7) ||
        (codeUnit == 0x00F7) ||
        (codeUnit >= 0x02B9 && codeUnit <= 0x02C1) ||
        (codeUnit >= 0x02C2 && codeUnit <= 0x02C5) ||
        (codeUnit >= 0x02C6 && codeUnit <= 0x02D1) ||
        (codeUnit >= 0x02D2 && codeUnit <= 0x02DF) ||
        (codeUnit >= 0x02E5 && codeUnit <= 0x02E9) ||
        (codeUnit == 0x02EC) ||
        (codeUnit == 0x02ED) ||
        (codeUnit == 0x02EE) ||
        (codeUnit >= 0x02EF && codeUnit <= 0x02FF) ||
        (codeUnit == 0x0374) ||
        (codeUnit == 0x037E) ||
        (codeUnit == 0x0385) ||
        (codeUnit == 0x0387) ||
        (codeUnit == 0x0589) ||
        (codeUnit == 0x0605) ||
        (codeUnit == 0x060C) ||
        (codeUnit == 0x061B) ||
        (codeUnit == 0x061F) ||
        (codeUnit == 0x0640) ||
        (codeUnit == 0x06DD) ||
        (codeUnit == 0x08E2) ||
        (codeUnit >= 0x0964 && codeUnit <= 0x0965) ||
        (codeUnit == 0x0E3F) ||
        (codeUnit >= 0x0FD5 && codeUnit <= 0x0FD8) ||
        (codeUnit == 0x10FB) ||
        (codeUnit >= 0x16EB && codeUnit <= 0x16ED) ||
        (codeUnit >= 0x1735 && codeUnit <= 0x1736) ||
        (codeUnit >= 0x1802 && codeUnit <= 0x1803) ||
        (codeUnit == 0x1805) ||
        (codeUnit == 0x1CD3) ||
        (codeUnit == 0x1CE1) ||
        (codeUnit >= 0x1CE9 && codeUnit <= 0x1CEC) ||
        (codeUnit >= 0x1CEE && codeUnit <= 0x1CF3) ||
        (codeUnit >= 0x1CF5 && codeUnit <= 0x1CF6) ||
        (codeUnit == 0x1CF7) ||
        (codeUnit == 0x1CFA) ||
        (codeUnit >= 0x2000 && codeUnit <= 0x200A) ||
        (codeUnit == 0x200B) ||
        (codeUnit >= 0x200E && codeUnit <= 0x200F) ||
        (codeUnit >= 0x2010 && codeUnit <= 0x2015) ||
        (codeUnit >= 0x2016 && codeUnit <= 0x2017) ||
        (codeUnit == 0x2018) ||
        (codeUnit == 0x2019) ||
        (codeUnit == 0x201A) ||
        (codeUnit >= 0x201B && codeUnit <= 0x201C) ||
        (codeUnit == 0x201D) ||
        (codeUnit == 0x201E) ||
        (codeUnit == 0x201F) ||
        (codeUnit >= 0x2020 && codeUnit <= 0x2027) ||
        (codeUnit == 0x2028) ||
        (codeUnit == 0x2029) ||
        (codeUnit >= 0x202A && codeUnit <= 0x202E) ||
        (codeUnit == 0x202F) ||
        (codeUnit >= 0x2030 && codeUnit <= 0x2038) ||
        (codeUnit == 0x2039) ||
        (codeUnit == 0x203A) ||
        (codeUnit >= 0x203B && codeUnit <= 0x203E) ||
        (codeUnit >= 0x203F && codeUnit <= 0x2040) ||
        (codeUnit >= 0x2041 && codeUnit <= 0x2043) ||
        (codeUnit == 0x2044) ||
        (codeUnit == 0x2045) ||
        (codeUnit == 0x2046) ||
        (codeUnit >= 0x2047 && codeUnit <= 0x2051) ||
        (codeUnit == 0x2052) ||
        (codeUnit == 0x2053) ||
        (codeUnit == 0x2054) ||
        (codeUnit >= 0x2055 && codeUnit <= 0x205E) ||
        (codeUnit == 0x205F) ||
        (codeUnit >= 0x2060 && codeUnit <= 0x2064) ||
        (codeUnit >= 0x2066 && codeUnit <= 0x206F) ||
        (codeUnit == 0x2070) ||
        (codeUnit >= 0x2074 && codeUnit <= 0x2079) ||
        (codeUnit >= 0x207A && codeUnit <= 0x207C) ||
        (codeUnit == 0x207D) ||
        (codeUnit == 0x207E) ||
        (codeUnit >= 0x2080 && codeUnit <= 0x2089) ||
        (codeUnit >= 0x208A && codeUnit <= 0x208C) ||
        (codeUnit == 0x208D) ||
        (codeUnit == 0x208E) ||
        (codeUnit >= 0x20A0 && codeUnit <= 0x20BF) ||
        (codeUnit >= 0x2100 && codeUnit <= 0x2101) ||
        (codeUnit == 0x2102) ||
        (codeUnit >= 0x2103 && codeUnit <= 0x2106) ||
        (codeUnit == 0x2107) ||
        (codeUnit >= 0x2108 && codeUnit <= 0x2109) ||
        (codeUnit >= 0x210A && codeUnit <= 0x2113) ||
        (codeUnit == 0x2114) ||
        (codeUnit == 0x2115) ||
        (codeUnit >= 0x2116 && codeUnit <= 0x2117) ||
        (codeUnit == 0x2118) ||
        (codeUnit >= 0x2119 && codeUnit <= 0x211D) ||
        (codeUnit >= 0x211E && codeUnit <= 0x2123) ||
        (codeUnit == 0x2124) ||
        (codeUnit == 0x2125) ||
        (codeUnit == 0x2127) ||
        (codeUnit == 0x2128) ||
        (codeUnit == 0x2129) ||
        (codeUnit >= 0x212C && codeUnit <= 0x212D) ||
        (codeUnit == 0x212E) ||
        (codeUnit >= 0x212F && codeUnit <= 0x2131) ||
        (codeUnit >= 0x2133 && codeUnit <= 0x2134) ||
        (codeUnit >= 0x2135 && codeUnit <= 0x2138) ||
        (codeUnit == 0x2139) ||
        (codeUnit >= 0x213A && codeUnit <= 0x213B) ||
        (codeUnit >= 0x213C && codeUnit <= 0x213F) ||
        (codeUnit >= 0x2140 && codeUnit <= 0x2144) ||
        (codeUnit >= 0x2145 && codeUnit <= 0x2149) ||
        (codeUnit == 0x214A) ||
        (codeUnit == 0x214B) ||
        (codeUnit >= 0x214C && codeUnit <= 0x214D) ||
        (codeUnit == 0x214F) ||
        (codeUnit >= 0x2150 && codeUnit <= 0x215F) ||
        (codeUnit == 0x2189) ||
        (codeUnit >= 0x218A && codeUnit <= 0x218B) ||
        (codeUnit >= 0x2190 && codeUnit <= 0x2194) ||
        (codeUnit >= 0x2195 && codeUnit <= 0x2199) ||
        (codeUnit >= 0x219A && codeUnit <= 0x219B) ||
        (codeUnit >= 0x219C && codeUnit <= 0x219F) ||
        (codeUnit == 0x21A0) ||
        (codeUnit >= 0x21A1 && codeUnit <= 0x21A2) ||
        (codeUnit == 0x21A3) ||
        (codeUnit >= 0x21A4 && codeUnit <= 0x21A5) ||
        (codeUnit == 0x21A6) ||
        (codeUnit >= 0x21A7 && codeUnit <= 0x21AD) ||
        (codeUnit == 0x21AE) ||
        (codeUnit >= 0x21AF && codeUnit <= 0x21CD) ||
        (codeUnit >= 0x21CE && codeUnit <= 0x21CF) ||
        (codeUnit >= 0x21D0 && codeUnit <= 0x21D1) ||
        (codeUnit == 0x21D2) ||
        (codeUnit == 0x21D3) ||
        (codeUnit == 0x21D4) ||
        (codeUnit >= 0x21D5 && codeUnit <= 0x21F3) ||
        (codeUnit >= 0x21F4 && codeUnit <= 0x22FF) ||
        (codeUnit >= 0x2300 && codeUnit <= 0x2307) ||
        (codeUnit == 0x2308) ||
        (codeUnit == 0x2309) ||
        (codeUnit == 0x230A) ||
        (codeUnit == 0x230B) ||
        (codeUnit >= 0x230C && codeUnit <= 0x231F) ||
        (codeUnit >= 0x2320 && codeUnit <= 0x2321) ||
        (codeUnit >= 0x2322 && codeUnit <= 0x2328) ||
        (codeUnit == 0x2329) ||
        (codeUnit == 0x232A) ||
        (codeUnit >= 0x232B && codeUnit <= 0x237B) ||
        (codeUnit == 0x237C) ||
        (codeUnit >= 0x237D && codeUnit <= 0x239A) ||
        (codeUnit >= 0x239B && codeUnit <= 0x23B3) ||
        (codeUnit >= 0x23B4 && codeUnit <= 0x23DB) ||
        (codeUnit >= 0x23DC && codeUnit <= 0x23E1) ||
        (codeUnit >= 0x23E2 && codeUnit <= 0x2426) ||
        (codeUnit >= 0x2440 && codeUnit <= 0x244A) ||
        (codeUnit >= 0x2460 && codeUnit <= 0x249B) ||
        (codeUnit >= 0x249C && codeUnit <= 0x24E9) ||
        (codeUnit >= 0x24EA && codeUnit <= 0x24FF) ||
        (codeUnit >= 0x2500 && codeUnit <= 0x25B6) ||
        (codeUnit == 0x25B7) ||
        (codeUnit >= 0x25B8 && codeUnit <= 0x25C0) ||
        (codeUnit == 0x25C1) ||
        (codeUnit >= 0x25C2 && codeUnit <= 0x25F7) ||
        (codeUnit >= 0x25F8 && codeUnit <= 0x25FF) ||
        (codeUnit >= 0x2600 && codeUnit <= 0x266E) ||
        (codeUnit == 0x266F) ||
        (codeUnit >= 0x2670 && codeUnit <= 0x2767) ||
        (codeUnit == 0x2768) ||
        (codeUnit == 0x2769) ||
        (codeUnit == 0x276A) ||
        (codeUnit == 0x276B) ||
        (codeUnit == 0x276C) ||
        (codeUnit == 0x276D) ||
        (codeUnit == 0x276E) ||
        (codeUnit == 0x276F) ||
        (codeUnit == 0x2770) ||
        (codeUnit == 0x2771) ||
        (codeUnit == 0x2772) ||
        (codeUnit == 0x2773) ||
        (codeUnit == 0x2774) ||
        (codeUnit == 0x2775) ||
        (codeUnit >= 0x2776 && codeUnit <= 0x2793) ||
        (codeUnit >= 0x2794 && codeUnit <= 0x27BF) ||
        (codeUnit >= 0x27C0 && codeUnit <= 0x27C4) ||
        (codeUnit == 0x27C5) ||
        (codeUnit == 0x27C6) ||
        (codeUnit >= 0x27C7 && codeUnit <= 0x27E5) ||
        (codeUnit == 0x27E6) ||
        (codeUnit == 0x27E7) ||
        (codeUnit == 0x27E8) ||
        (codeUnit == 0x27E9) ||
        (codeUnit == 0x27EA) ||
        (codeUnit == 0x27EB) ||
        (codeUnit == 0x27EC) ||
        (codeUnit == 0x27ED) ||
        (codeUnit == 0x27EE) ||
        (codeUnit == 0x27EF) ||
        (codeUnit >= 0x27F0 && codeUnit <= 0x27FF) ||
        (codeUnit >= 0x2900 && codeUnit <= 0x2982) ||
        (codeUnit == 0x2983) ||
        (codeUnit == 0x2984) ||
        (codeUnit == 0x2985) ||
        (codeUnit == 0x2986) ||
        (codeUnit == 0x2987) ||
        (codeUnit == 0x2988) ||
        (codeUnit == 0x2989) ||
        (codeUnit == 0x298A) ||
        (codeUnit == 0x298B) ||
        (codeUnit == 0x298C) ||
        (codeUnit == 0x298D) ||
        (codeUnit == 0x298E) ||
        (codeUnit == 0x298F) ||
        (codeUnit == 0x2990) ||
        (codeUnit == 0x2991) ||
        (codeUnit == 0x2992) ||
        (codeUnit == 0x2993) ||
        (codeUnit == 0x2994) ||
        (codeUnit == 0x2995) ||
        (codeUnit == 0x2996) ||
        (codeUnit == 0x2997) ||
        (codeUnit == 0x2998) ||
        (codeUnit >= 0x2999 && codeUnit <= 0x29D7) ||
        (codeUnit == 0x29D8) ||
        (codeUnit == 0x29D9) ||
        (codeUnit == 0x29DA) ||
        (codeUnit == 0x29DB) ||
        (codeUnit >= 0x29DC && codeUnit <= 0x29FB) ||
        (codeUnit == 0x29FC) ||
        (codeUnit == 0x29FD) ||
        (codeUnit >= 0x29FE && codeUnit <= 0x2AFF) ||
        (codeUnit >= 0x2B00 && codeUnit <= 0x2B2F) ||
        (codeUnit >= 0x2B30 && codeUnit <= 0x2B44) ||
        (codeUnit >= 0x2B45 && codeUnit <= 0x2B46) ||
        (codeUnit >= 0x2B47 && codeUnit <= 0x2B4C) ||
        (codeUnit >= 0x2B4D && codeUnit <= 0x2B73) ||
        (codeUnit >= 0x2B76 && codeUnit <= 0x2B95) ||
        (codeUnit >= 0x2B98 && codeUnit <= 0x2BFF) ||
        (codeUnit >= 0x2E00 && codeUnit <= 0x2E01) ||
        (codeUnit == 0x2E02) ||
        (codeUnit == 0x2E03) ||
        (codeUnit == 0x2E04) ||
        (codeUnit == 0x2E05) ||
        (codeUnit >= 0x2E06 && codeUnit <= 0x2E08) ||
        (codeUnit == 0x2E09) ||
        (codeUnit == 0x2E0A) ||
        (codeUnit == 0x2E0B) ||
        (codeUnit == 0x2E0C) ||
        (codeUnit == 0x2E0D) ||
        (codeUnit >= 0x2E0E && codeUnit <= 0x2E16) ||
        (codeUnit == 0x2E17) ||
        (codeUnit >= 0x2E18 && codeUnit <= 0x2E19) ||
        (codeUnit == 0x2E1A) ||
        (codeUnit == 0x2E1B) ||
        (codeUnit == 0x2E1C) ||
        (codeUnit == 0x2E1D) ||
        (codeUnit >= 0x2E1E && codeUnit <= 0x2E1F) ||
        (codeUnit == 0x2E20) ||
        (codeUnit == 0x2E21) ||
        (codeUnit == 0x2E22) ||
        (codeUnit == 0x2E23) ||
        (codeUnit == 0x2E24) ||
        (codeUnit == 0x2E25) ||
        (codeUnit == 0x2E26) ||
        (codeUnit == 0x2E27) ||
        (codeUnit == 0x2E28) ||
        (codeUnit == 0x2E29) ||
        (codeUnit >= 0x2E2A && codeUnit <= 0x2E2E) ||
        (codeUnit == 0x2E2F) ||
        (codeUnit >= 0x2E30 && codeUnit <= 0x2E39) ||
        (codeUnit >= 0x2E3A && codeUnit <= 0x2E3B) ||
        (codeUnit >= 0x2E3C && codeUnit <= 0x2E3F) ||
        (codeUnit == 0x2E40) ||
        (codeUnit == 0x2E41) ||
        (codeUnit == 0x2E42) ||
        (codeUnit >= 0x2E43 && codeUnit <= 0x2E4F) ||
        (codeUnit >= 0x2FF0 && codeUnit <= 0x2FFB) ||
        (codeUnit == 0x3000) ||
        (codeUnit >= 0x3001 && codeUnit <= 0x3003) ||
        (codeUnit == 0x3004) ||
        (codeUnit == 0x3006) ||
        (codeUnit == 0x3008) ||
        (codeUnit == 0x3009) ||
        (codeUnit == 0x300A) ||
        (codeUnit == 0x300B) ||
        (codeUnit == 0x300C) ||
        (codeUnit == 0x300D) ||
        (codeUnit == 0x300E) ||
        (codeUnit == 0x300F) ||
        (codeUnit == 0x3010) ||
        (codeUnit == 0x3011) ||
        (codeUnit >= 0x3012 && codeUnit <= 0x3013) ||
        (codeUnit == 0x3014) ||
        (codeUnit == 0x3015) ||
        (codeUnit == 0x3016) ||
        (codeUnit == 0x3017) ||
        (codeUnit == 0x3018) ||
        (codeUnit == 0x3019) ||
        (codeUnit == 0x301A) ||
        (codeUnit == 0x301B) ||
        (codeUnit == 0x301C) ||
        (codeUnit == 0x301D) ||
        (codeUnit >= 0x301E && codeUnit <= 0x301F) ||
        (codeUnit == 0x3020) ||
        (codeUnit == 0x3030) ||
        (codeUnit >= 0x3031 && codeUnit <= 0x3035) ||
        (codeUnit >= 0x3036 && codeUnit <= 0x3037) ||
        (codeUnit == 0x303C) ||
        (codeUnit == 0x303D) ||
        (codeUnit >= 0x303E && codeUnit <= 0x303F) ||
        (codeUnit >= 0x309B && codeUnit <= 0x309C) ||
        (codeUnit == 0x30A0) ||
        (codeUnit == 0x30FB) ||
        (codeUnit == 0x30FC) ||
        (codeUnit >= 0x3190 && codeUnit <= 0x3191) ||
        (codeUnit >= 0x3192 && codeUnit <= 0x3195) ||
        (codeUnit >= 0x3196 && codeUnit <= 0x319F) ||
        (codeUnit >= 0x31C0 && codeUnit <= 0x31E3) ||
        (codeUnit >= 0x3220 && codeUnit <= 0x3229) ||
        (codeUnit >= 0x322A && codeUnit <= 0x3247) ||
        (codeUnit >= 0x3248 && codeUnit <= 0x324F) ||
        (codeUnit == 0x3250) ||
        (codeUnit >= 0x3251 && codeUnit <= 0x325F) ||
        (codeUnit == 0x327F) ||
        (codeUnit >= 0x3280 && codeUnit <= 0x3289) ||
        (codeUnit >= 0x328A && codeUnit <= 0x32B0) ||
        (codeUnit >= 0x32B1 && codeUnit <= 0x32BF) ||
        (codeUnit >= 0x32C0 && codeUnit <= 0x32CF) ||
        (codeUnit >= 0x3358 && codeUnit <= 0x33FF) ||
        (codeUnit >= 0x4DC0 && codeUnit <= 0x4DFF) ||
        (codeUnit >= 0xA700 && codeUnit <= 0xA716) ||
        (codeUnit >= 0xA717 && codeUnit <= 0xA71F) ||
        (codeUnit >= 0xA720 && codeUnit <= 0xA721) ||
        (codeUnit == 0xA788) ||
        (codeUnit >= 0xA789 && codeUnit <= 0xA78A) ||
        (codeUnit >= 0xA830 && codeUnit <= 0xA835) ||
        (codeUnit >= 0xA836 && codeUnit <= 0xA837) ||
        (codeUnit == 0xA838) ||
        (codeUnit == 0xA839) ||
        (codeUnit == 0xA92E) ||
        (codeUnit == 0xA9CF) ||
        (codeUnit == 0xAB5B) ||
        (codeUnit == 0xFD3E) ||
        (codeUnit == 0xFD3F) ||
        (codeUnit >= 0xFE10 && codeUnit <= 0xFE16) ||
        (codeUnit == 0xFE17) ||
        (codeUnit == 0xFE18) ||
        (codeUnit == 0xFE19) ||
        (codeUnit == 0xFE30) ||
        (codeUnit >= 0xFE31 && codeUnit <= 0xFE32) ||
        (codeUnit >= 0xFE33 && codeUnit <= 0xFE34) ||
        (codeUnit == 0xFE35) ||
        (codeUnit == 0xFE36) ||
        (codeUnit == 0xFE37) ||
        (codeUnit == 0xFE38) ||
        (codeUnit == 0xFE39) ||
        (codeUnit == 0xFE3A) ||
        (codeUnit == 0xFE3B) ||
        (codeUnit == 0xFE3C) ||
        (codeUnit == 0xFE3D) ||
        (codeUnit == 0xFE3E) ||
        (codeUnit == 0xFE3F) ||
        (codeUnit == 0xFE40) ||
        (codeUnit == 0xFE41) ||
        (codeUnit == 0xFE42) ||
        (codeUnit == 0xFE43) ||
        (codeUnit == 0xFE44) ||
        (codeUnit >= 0xFE45 && codeUnit <= 0xFE46) ||
        (codeUnit == 0xFE47) ||
        (codeUnit == 0xFE48) ||
        (codeUnit >= 0xFE49 && codeUnit <= 0xFE4C) ||
        (codeUnit >= 0xFE4D && codeUnit <= 0xFE4F) ||
        (codeUnit >= 0xFE50 && codeUnit <= 0xFE52) ||
        (codeUnit >= 0xFE54 && codeUnit <= 0xFE57) ||
        (codeUnit == 0xFE58) ||
        (codeUnit == 0xFE59) ||
        (codeUnit == 0xFE5A) ||
        (codeUnit == 0xFE5B) ||
        (codeUnit == 0xFE5C) ||
        (codeUnit == 0xFE5D) ||
        (codeUnit == 0xFE5E) ||
        (codeUnit >= 0xFE5F && codeUnit <= 0xFE61) ||
        (codeUnit == 0xFE62) ||
        (codeUnit == 0xFE63) ||
        (codeUnit >= 0xFE64 && codeUnit <= 0xFE66) ||
        (codeUnit == 0xFE68) ||
        (codeUnit == 0xFE69) ||
        (codeUnit >= 0xFE6A && codeUnit <= 0xFE6B) ||
        (codeUnit == 0xFEFF) ||
        (codeUnit >= 0xFF01 && codeUnit <= 0xFF03) ||
        (codeUnit == 0xFF04) ||
        (codeUnit >= 0xFF05 && codeUnit <= 0xFF07) ||
        (codeUnit == 0xFF08) ||
        (codeUnit == 0xFF09) ||
        (codeUnit == 0xFF0A) ||
        (codeUnit == 0xFF0B) ||
        (codeUnit == 0xFF0C) ||
        (codeUnit == 0xFF0D) ||
        (codeUnit >= 0xFF0E && codeUnit <= 0xFF0F) ||
        (codeUnit >= 0xFF10 && codeUnit <= 0xFF19) ||
        (codeUnit >= 0xFF1A && codeUnit <= 0xFF1B) ||
        (codeUnit >= 0xFF1C && codeUnit <= 0xFF1E) ||
        (codeUnit >= 0xFF1F && codeUnit <= 0xFF20) ||
        (codeUnit == 0xFF3B) ||
        (codeUnit == 0xFF3C) ||
        (codeUnit == 0xFF3D) ||
        (codeUnit == 0xFF3E) ||
        (codeUnit == 0xFF3F) ||
        (codeUnit == 0xFF40) ||
        (codeUnit == 0xFF5B) ||
        (codeUnit == 0xFF5C) ||
        (codeUnit == 0xFF5D) ||
        (codeUnit == 0xFF5E) ||
        (codeUnit == 0xFF5F) ||
        (codeUnit == 0xFF60) ||
        (codeUnit == 0xFF61) ||
        (codeUnit == 0xFF62) ||
        (codeUnit == 0xFF63) ||
        (codeUnit >= 0xFF64 && codeUnit <= 0xFF65) ||
        (codeUnit == 0xFF70) ||
        (codeUnit >= 0xFF9E && codeUnit <= 0xFF9F) ||
        (codeUnit >= 0xFFE0 && codeUnit <= 0xFFE1) ||
        (codeUnit == 0xFFE2) ||
        (codeUnit == 0xFFE3) ||
        (codeUnit == 0xFFE4) ||
        (codeUnit >= 0xFFE5 && codeUnit <= 0xFFE6) ||
        (codeUnit == 0xFFE8) ||
        (codeUnit >= 0xFFE9 && codeUnit <= 0xFFEC) ||
        (codeUnit >= 0xFFED && codeUnit <= 0xFFEE) ||
        (codeUnit >= 0xFFF9 && codeUnit <= 0xFFFB) ||
        (codeUnit >= 0xFFFC && codeUnit <= 0xFFFD) ||
        (codeUnit >= 0x10100 && codeUnit <= 0x10102) ||
        (codeUnit >= 0x10107 && codeUnit <= 0x10133) ||
        (codeUnit >= 0x10137 && codeUnit <= 0x1013F) ||
        (codeUnit >= 0x10190 && codeUnit <= 0x1019B) ||
        (codeUnit >= 0x101D0 && codeUnit <= 0x101FC) ||
        (codeUnit >= 0x102E1 && codeUnit <= 0x102FB) ||
        (codeUnit == 0x16FE2) ||
        (codeUnit == 0x16FE3) ||
        (codeUnit >= 0x1BCA0 && codeUnit <= 0x1BCA3) ||
        (codeUnit >= 0x1D000 && codeUnit <= 0x1D0F5) ||
        (codeUnit >= 0x1D100 && codeUnit <= 0x1D126) ||
        (codeUnit >= 0x1D129 && codeUnit <= 0x1D164) ||
        (codeUnit >= 0x1D165 && codeUnit <= 0x1D166) ||
        (codeUnit >= 0x1D16A && codeUnit <= 0x1D16C) ||
        (codeUnit >= 0x1D16D && codeUnit <= 0x1D172) ||
        (codeUnit >= 0x1D173 && codeUnit <= 0x1D17A) ||
        (codeUnit >= 0x1D183 && codeUnit <= 0x1D184) ||
        (codeUnit >= 0x1D18C && codeUnit <= 0x1D1A9) ||
        (codeUnit >= 0x1D1AE && codeUnit <= 0x1D1E8) ||
        (codeUnit >= 0x1D2E0 && codeUnit <= 0x1D2F3) ||
        (codeUnit >= 0x1D300 && codeUnit <= 0x1D356) ||
        (codeUnit >= 0x1D360 && codeUnit <= 0x1D378) ||
        (codeUnit >= 0x1D400 && codeUnit <= 0x1D454) ||
        (codeUnit >= 0x1D456 && codeUnit <= 0x1D49C) ||
        (codeUnit >= 0x1D49E && codeUnit <= 0x1D49F) ||
        (codeUnit == 0x1D4A2) ||
        (codeUnit >= 0x1D4A5 && codeUnit <= 0x1D4A6) ||
        (codeUnit >= 0x1D4A9 && codeUnit <= 0x1D4AC) ||
        (codeUnit >= 0x1D4AE && codeUnit <= 0x1D4B9) ||
        (codeUnit == 0x1D4BB) ||
        (codeUnit >= 0x1D4BD && codeUnit <= 0x1D4C3) ||
        (codeUnit >= 0x1D4C5 && codeUnit <= 0x1D505) ||
        (codeUnit >= 0x1D507 && codeUnit <= 0x1D50A) ||
        (codeUnit >= 0x1D50D && codeUnit <= 0x1D514) ||
        (codeUnit >= 0x1D516 && codeUnit <= 0x1D51C) ||
        (codeUnit >= 0x1D51E && codeUnit <= 0x1D539) ||
        (codeUnit >= 0x1D53B && codeUnit <= 0x1D53E) ||
        (codeUnit >= 0x1D540 && codeUnit <= 0x1D544) ||
        (codeUnit == 0x1D546) ||
        (codeUnit >= 0x1D54A && codeUnit <= 0x1D550) ||
        (codeUnit >= 0x1D552 && codeUnit <= 0x1D6A5) ||
        (codeUnit >= 0x1D6A8 && codeUnit <= 0x1D6C0) ||
        (codeUnit == 0x1D6C1) ||
        (codeUnit >= 0x1D6C2 && codeUnit <= 0x1D6DA) ||
        (codeUnit == 0x1D6DB) ||
        (codeUnit >= 0x1D6DC && codeUnit <= 0x1D6FA) ||
        (codeUnit == 0x1D6FB) ||
        (codeUnit >= 0x1D6FC && codeUnit <= 0x1D714) ||
        (codeUnit == 0x1D715) ||
        (codeUnit >= 0x1D716 && codeUnit <= 0x1D734) ||
        (codeUnit == 0x1D735) ||
        (codeUnit >= 0x1D736 && codeUnit <= 0x1D74E) ||
        (codeUnit == 0x1D74F) ||
        (codeUnit >= 0x1D750 && codeUnit <= 0x1D76E) ||
        (codeUnit == 0x1D76F) ||
        (codeUnit >= 0x1D770 && codeUnit <= 0x1D788) ||
        (codeUnit == 0x1D789) ||
        (codeUnit >= 0x1D78A && codeUnit <= 0x1D7A8) ||
        (codeUnit == 0x1D7A9) ||
        (codeUnit >= 0x1D7AA && codeUnit <= 0x1D7C2) ||
        (codeUnit == 0x1D7C3) ||
        (codeUnit >= 0x1D7C4 && codeUnit <= 0x1D7CB) ||
        (codeUnit >= 0x1D7CE && codeUnit <= 0x1D7FF) ||
        (codeUnit >= 0x1EC71 && codeUnit <= 0x1ECAB) ||
        (codeUnit == 0x1ECAC) ||
        (codeUnit >= 0x1ECAD && codeUnit <= 0x1ECAF) ||
        (codeUnit == 0x1ECB0) ||
        (codeUnit >= 0x1ECB1 && codeUnit <= 0x1ECB4) ||
        (codeUnit >= 0x1ED01 && codeUnit <= 0x1ED2D) ||
        (codeUnit == 0x1ED2E) ||
        (codeUnit >= 0x1ED2F && codeUnit <= 0x1ED3D) ||
        (codeUnit >= 0x1F000 && codeUnit <= 0x1F02B) ||
        (codeUnit >= 0x1F030 && codeUnit <= 0x1F093) ||
        (codeUnit >= 0x1F0A0 && codeUnit <= 0x1F0AE) ||
        (codeUnit >= 0x1F0B1 && codeUnit <= 0x1F0BF) ||
        (codeUnit >= 0x1F0C1 && codeUnit <= 0x1F0CF) ||
        (codeUnit >= 0x1F0D1 && codeUnit <= 0x1F0F5) ||
        (codeUnit >= 0x1F100 && codeUnit <= 0x1F10C) ||
        (codeUnit >= 0x1F110 && codeUnit <= 0x1F16C) ||
        (codeUnit >= 0x1F170 && codeUnit <= 0x1F1AC) ||
        (codeUnit >= 0x1F1E6 && codeUnit <= 0x1F1FF) ||
        (codeUnit >= 0x1F201 && codeUnit <= 0x1F202) ||
        (codeUnit >= 0x1F210 && codeUnit <= 0x1F23B) ||
        (codeUnit >= 0x1F240 && codeUnit <= 0x1F248) ||
        (codeUnit >= 0x1F250 && codeUnit <= 0x1F251) ||
        (codeUnit >= 0x1F260 && codeUnit <= 0x1F265) ||
        (codeUnit >= 0x1F300 && codeUnit <= 0x1F3FA) ||
        (codeUnit >= 0x1F3FB && codeUnit <= 0x1F3FF) ||
        (codeUnit >= 0x1F400 && codeUnit <= 0x1F6D5) ||
        (codeUnit >= 0x1F6E0 && codeUnit <= 0x1F6EC) ||
        (codeUnit >= 0x1F6F0 && codeUnit <= 0x1F6FA) ||
        (codeUnit >= 0x1F700 && codeUnit <= 0x1F773) ||
        (codeUnit >= 0x1F780 && codeUnit <= 0x1F7D8) ||
        (codeUnit >= 0x1F7E0 && codeUnit <= 0x1F7EB) ||
        (codeUnit >= 0x1F800 && codeUnit <= 0x1F80B) ||
        (codeUnit >= 0x1F810 && codeUnit <= 0x1F847) ||
        (codeUnit >= 0x1F850 && codeUnit <= 0x1F859) ||
        (codeUnit >= 0x1F860 && codeUnit <= 0x1F887) ||
        (codeUnit >= 0x1F890 && codeUnit <= 0x1F8AD) ||
        (codeUnit >= 0x1F900 && codeUnit <= 0x1F90B) ||
        (codeUnit >= 0x1F90D && codeUnit <= 0x1F971) ||
        (codeUnit >= 0x1F973 && codeUnit <= 0x1F976) ||
        (codeUnit >= 0x1F97A && codeUnit <= 0x1F9A2) ||
        (codeUnit >= 0x1F9A5 && codeUnit <= 0x1F9AA) ||
        (codeUnit >= 0x1F9AE && codeUnit <= 0x1F9CA) ||
        (codeUnit >= 0x1F9CD && codeUnit <= 0x1FA53) ||
        (codeUnit >= 0x1FA60 && codeUnit <= 0x1FA6D) ||
        (codeUnit >= 0x1FA70 && codeUnit <= 0x1FA73) ||
        (codeUnit >= 0x1FA78 && codeUnit <= 0x1FA7A) ||
        (codeUnit >= 0x1FA80 && codeUnit <= 0x1FA82) ||
        (codeUnit >= 0x1FA90 && codeUnit <= 0x1FA95) ||
        (codeUnit == 0xE0001) ||
        (codeUnit >= 0xE0020 && codeUnit <= 0xE007F));
  }

  static bool isLatin(int codeUnit) {
    return ((codeUnit >= 0x0041 && codeUnit <= 0x005A) ||
        (codeUnit >= 0x0061 && codeUnit <= 0x007A) ||
        (codeUnit == 0x00AA) ||
        (codeUnit == 0x00BA) ||
        (codeUnit >= 0x00C0 && codeUnit <= 0x00D6) ||
        (codeUnit >= 0x00D8 && codeUnit <= 0x00F6) ||
        (codeUnit >= 0x00F8 && codeUnit <= 0x01BA) ||
        (codeUnit == 0x01BB) ||
        (codeUnit >= 0x01BC && codeUnit <= 0x01BF) ||
        (codeUnit >= 0x01C0 && codeUnit <= 0x01C3) ||
        (codeUnit >= 0x01C4 && codeUnit <= 0x0293) ||
        (codeUnit == 0x0294) ||
        (codeUnit >= 0x0295 && codeUnit <= 0x02AF) ||
        (codeUnit >= 0x02B0 && codeUnit <= 0x02B8) ||
        (codeUnit >= 0x02E0 && codeUnit <= 0x02E4) ||
        (codeUnit >= 0x1D00 && codeUnit <= 0x1D25) ||
        (codeUnit >= 0x1D2C && codeUnit <= 0x1D5C) ||
        (codeUnit >= 0x1D62 && codeUnit <= 0x1D65) ||
        (codeUnit >= 0x1D6B && codeUnit <= 0x1D77) ||
        (codeUnit >= 0x1D79 && codeUnit <= 0x1D9A) ||
        (codeUnit >= 0x1D9B && codeUnit <= 0x1DBE) ||
        (codeUnit >= 0x1E00 && codeUnit <= 0x1EFF) ||
        (codeUnit == 0x2071) ||
        (codeUnit == 0x207F) ||
        (codeUnit >= 0x2090 && codeUnit <= 0x209C) ||
        (codeUnit >= 0x212A && codeUnit <= 0x212B) ||
        (codeUnit == 0x2132) ||
        (codeUnit == 0x214E) ||
        (codeUnit >= 0x2160 && codeUnit <= 0x2182) ||
        (codeUnit >= 0x2183 && codeUnit <= 0x2184) ||
        (codeUnit >= 0x2185 && codeUnit <= 0x2188) ||
        (codeUnit >= 0x2C60 && codeUnit <= 0x2C7B) ||
        (codeUnit >= 0x2C7C && codeUnit <= 0x2C7D) ||
        (codeUnit >= 0x2C7E && codeUnit <= 0x2C7F) ||
        (codeUnit >= 0xA722 && codeUnit <= 0xA76F) ||
        (codeUnit == 0xA770) ||
        (codeUnit >= 0xA771 && codeUnit <= 0xA787) ||
        (codeUnit >= 0xA78B && codeUnit <= 0xA78E) ||
        (codeUnit == 0xA78F) ||
        (codeUnit >= 0xA790 && codeUnit <= 0xA7BF) ||
        (codeUnit >= 0xA7C2 && codeUnit <= 0xA7C6) ||
        (codeUnit == 0xA7F7) ||
        (codeUnit >= 0xA7F8 && codeUnit <= 0xA7F9) ||
        (codeUnit == 0xA7FA) ||
        (codeUnit >= 0xA7FB && codeUnit <= 0xA7FF) ||
        (codeUnit >= 0xAB30 && codeUnit <= 0xAB5A) ||
        (codeUnit >= 0xAB5C && codeUnit <= 0xAB5F) ||
        (codeUnit >= 0xAB60 && codeUnit <= 0xAB64) ||
        (codeUnit >= 0xAB66 && codeUnit <= 0xAB67) ||
        (codeUnit >= 0xFB00 && codeUnit <= 0xFB06) ||
        (codeUnit >= 0xFF21 && codeUnit <= 0xFF3A) ||
        (codeUnit >= 0xFF41 && codeUnit <= 0xFF5A)
    );
  }

  static bool isGreek(int codeUnit) {
    return ((codeUnit >= 0x0370 && codeUnit <= 0x0373) ||
        (codeUnit == 0x0375) ||
        (codeUnit >= 0x0376 && codeUnit <= 0x0377) ||
        (codeUnit == 0x037A) ||
        (codeUnit >= 0x037B && codeUnit <= 0x037D) ||
        (codeUnit == 0x037F) ||
        (codeUnit == 0x0384) ||
        (codeUnit == 0x0386) ||
        (codeUnit >= 0x0388 && codeUnit <= 0x038A) ||
        (codeUnit == 0x038C) ||
        (codeUnit >= 0x038E && codeUnit <= 0x03A1) ||
        (codeUnit >= 0x03A3 && codeUnit <= 0x03E1) ||
        (codeUnit >= 0x03F0 && codeUnit <= 0x03F5) ||
        (codeUnit == 0x03F6) ||
        (codeUnit >= 0x03F7 && codeUnit <= 0x03FF) ||
        (codeUnit >= 0x1D26 && codeUnit <= 0x1D2A) ||
        (codeUnit >= 0x1D5D && codeUnit <= 0x1D61) ||
        (codeUnit >= 0x1D66 && codeUnit <= 0x1D6A) ||
        (codeUnit == 0x1DBF) ||
        (codeUnit >= 0x1F00 && codeUnit <= 0x1F15) ||
        (codeUnit >= 0x1F18 && codeUnit <= 0x1F1D) ||
        (codeUnit >= 0x1F20 && codeUnit <= 0x1F45) ||
        (codeUnit >= 0x1F48 && codeUnit <= 0x1F4D) ||
        (codeUnit >= 0x1F50 && codeUnit <= 0x1F57) ||
        (codeUnit == 0x1F59) ||
        (codeUnit == 0x1F5B) ||
        (codeUnit == 0x1F5D) ||
        (codeUnit >= 0x1F5F && codeUnit <= 0x1F7D) ||
        (codeUnit >= 0x1F80 && codeUnit <= 0x1FB4) ||
        (codeUnit >= 0x1FB6 && codeUnit <= 0x1FBC) ||
        (codeUnit == 0x1FBD) ||
        (codeUnit == 0x1FBE) ||
        (codeUnit >= 0x1FBF && codeUnit <= 0x1FC1) ||
        (codeUnit >= 0x1FC2 && codeUnit <= 0x1FC4) ||
        (codeUnit >= 0x1FC6 && codeUnit <= 0x1FCC) ||
        (codeUnit >= 0x1FCD && codeUnit <= 0x1FCF) ||
        (codeUnit >= 0x1FD0 && codeUnit <= 0x1FD3) ||
        (codeUnit >= 0x1FD6 && codeUnit <= 0x1FDB) ||
        (codeUnit >= 0x1FDD && codeUnit <= 0x1FDF) ||
        (codeUnit >= 0x1FE0 && codeUnit <= 0x1FEC) ||
        (codeUnit >= 0x1FED && codeUnit <= 0x1FEF) ||
        (codeUnit >= 0x1FF2 && codeUnit <= 0x1FF4) ||
        (codeUnit >= 0x1FF6 && codeUnit <= 0x1FFC) ||
        (codeUnit >= 0x1FFD && codeUnit <= 0x1FFE) ||
        (codeUnit == 0x2126) ||
        (codeUnit == 0xAB65) ||
        (codeUnit >= 0x10140 && codeUnit <= 0x10174) ||
        (codeUnit >= 0x10175 && codeUnit <= 0x10178) ||
        (codeUnit >= 0x10179 && codeUnit <= 0x10189) ||
        (codeUnit >= 0x1018A && codeUnit <= 0x1018B) ||
        (codeUnit >= 0x1018C && codeUnit <= 0x1018E) ||
        (codeUnit == 0x101A0) ||
        (codeUnit >= 0x1D200 && codeUnit <= 0x1D241) ||
        (codeUnit >= 0x1D242 && codeUnit <= 0x1D244) ||
        (codeUnit == 0x1D245)
    );
  }


  static bool isCyrillic(int codeUnit) {
    return ((codeUnit >= 0x0400 && codeUnit <= 0x0481) ||
            (codeUnit == 0x0482) ||
            (codeUnit >= 0x0483 && codeUnit <= 0x0484) ||
            (codeUnit == 0x0487) ||
            (codeUnit >= 0x0488 && codeUnit <= 0x0489) ||
            (codeUnit >= 0x048A && codeUnit <= 0x052F) ||
            (codeUnit >= 0x1C80 && codeUnit <= 0x1C88) ||
            (codeUnit == 0x1D2B) ||
            (codeUnit == 0x1D78) ||
            (codeUnit >= 0x2DE0 && codeUnit <= 0x2DFF) ||
            (codeUnit >= 0xA640 && codeUnit <= 0xA66D) ||
            (codeUnit == 0xA66E) ||
            (codeUnit == 0xA66F) ||
            (codeUnit >= 0xA670 && codeUnit <= 0xA672) ||
            (codeUnit == 0xA673) ||
            (codeUnit >= 0xA674 && codeUnit <= 0xA67D) ||
            (codeUnit == 0xA67E) ||
            (codeUnit == 0xA67F) ||
            (codeUnit >= 0xA680 && codeUnit <= 0xA69B) ||
            (codeUnit >= 0xA69C && codeUnit <= 0xA69D) ||
            (codeUnit >= 0xA69E && codeUnit <= 0xA69F) ||
            (codeUnit >= 0xFE2E && codeUnit <= 0xFE2F)
    );
  }

  static bool isArmenian(int codeUnit) {
    return ((codeUnit >= 0x0531 && codeUnit <= 0x0556) ||
        (codeUnit == 0x0559) ||
        (codeUnit >= 0x055A && codeUnit <= 0x055F) ||
        (codeUnit >= 0x0560 && codeUnit <= 0x0588) ||
        (codeUnit == 0x058A) ||
        (codeUnit >= 0x058D && codeUnit <= 0x058E) ||
        (codeUnit == 0x058F) ||
        (codeUnit >= 0xFB13 && codeUnit <= 0xFB17)
    );
  }

  static bool isHebrew(int codeUnit) {
    return ((codeUnit >= 0x0591 && codeUnit <= 0x05BD) ||
        (codeUnit == 0x05BE) ||
        (codeUnit == 0x05BF) ||
        (codeUnit == 0x05C0) ||
        (codeUnit >= 0x05C1 && codeUnit <= 0x05C2) ||
        (codeUnit == 0x05C3) ||
        (codeUnit >= 0x05C4 && codeUnit <= 0x05C5) ||
        (codeUnit == 0x05C6) ||
        (codeUnit == 0x05C7) ||
        (codeUnit >= 0x05D0 && codeUnit <= 0x05EA) ||
        (codeUnit >= 0x05EF && codeUnit <= 0x05F2) ||
        (codeUnit >= 0x05F3 && codeUnit <= 0x05F4) ||
        (codeUnit == 0xFB1D) ||
        (codeUnit == 0xFB1E) ||
        (codeUnit >= 0xFB1F && codeUnit <= 0xFB28) ||
        (codeUnit == 0xFB29) ||
        (codeUnit >= 0xFB2A && codeUnit <= 0xFB36) ||
        (codeUnit >= 0xFB38 && codeUnit <= 0xFB3C) ||
        (codeUnit == 0xFB3E) ||
        (codeUnit >= 0xFB40 && codeUnit <= 0xFB41) ||
        (codeUnit >= 0xFB43 && codeUnit <= 0xFB44) ||
        (codeUnit >= 0xFB46 && codeUnit <= 0xFB4F)
    );
  }

  static bool isArabic(int codeUnit) {
    return ((codeUnit >= 0x0600 && codeUnit <= 0x0604) ||
        (codeUnit >= 0x0606 && codeUnit <= 0x0608) ||
        (codeUnit >= 0x0609 && codeUnit <= 0x060A) ||
        (codeUnit == 0x060B) ||
        (codeUnit == 0x060D) ||
        (codeUnit >= 0x060E && codeUnit <= 0x060F) ||
        (codeUnit >= 0x0610 && codeUnit <= 0x061A) ||
        (codeUnit == 0x061C) ||
        (codeUnit == 0x061E) ||
        (codeUnit >= 0x0620 && codeUnit <= 0x063F) ||
        (codeUnit >= 0x0641 && codeUnit <= 0x064A) ||
        (codeUnit >= 0x0656 && codeUnit <= 0x065F) ||
        (codeUnit >= 0x0660 && codeUnit <= 0x0669) ||
        (codeUnit >= 0x066A && codeUnit <= 0x066D) ||
        (codeUnit >= 0x066E && codeUnit <= 0x066F) ||
        (codeUnit >= 0x0671 && codeUnit <= 0x06D3) ||
        (codeUnit == 0x06D4) ||
        (codeUnit == 0x06D5) ||
        (codeUnit >= 0x06D6 && codeUnit <= 0x06DC) ||
        (codeUnit == 0x06DE) ||
        (codeUnit >= 0x06DF && codeUnit <= 0x06E4) ||
        (codeUnit >= 0x06E5 && codeUnit <= 0x06E6) ||
        (codeUnit >= 0x06E7 && codeUnit <= 0x06E8) ||
        (codeUnit == 0x06E9) ||
        (codeUnit >= 0x06EA && codeUnit <= 0x06ED) ||
        (codeUnit >= 0x06EE && codeUnit <= 0x06EF) ||
        (codeUnit >= 0x06F0 && codeUnit <= 0x06F9) ||
        (codeUnit >= 0x06FA && codeUnit <= 0x06FC) ||
        (codeUnit >= 0x06FD && codeUnit <= 0x06FE) ||
        (codeUnit == 0x06FF) ||
        (codeUnit >= 0x0750 && codeUnit <= 0x077F) ||
        (codeUnit >= 0x08A0 && codeUnit <= 0x08B4) ||
        (codeUnit >= 0x08B6 && codeUnit <= 0x08BD) ||
        (codeUnit >= 0x08D3 && codeUnit <= 0x08E1) ||
        (codeUnit >= 0x08E3 && codeUnit <= 0x08FF) ||
        (codeUnit >= 0xFB50 && codeUnit <= 0xFBB1) ||
        (codeUnit >= 0xFBB2 && codeUnit <= 0xFBC1) ||
        (codeUnit >= 0xFBD3 && codeUnit <= 0xFD3D) ||
        (codeUnit >= 0xFD50 && codeUnit <= 0xFD8F) ||
        (codeUnit >= 0xFD92 && codeUnit <= 0xFDC7) ||
        (codeUnit >= 0xFDF0 && codeUnit <= 0xFDFB) ||
        (codeUnit == 0xFDFC) ||
        (codeUnit == 0xFDFD) ||
        (codeUnit >= 0xFE70 && codeUnit <= 0xFE74) ||
        (codeUnit >= 0xFE76 && codeUnit <= 0xFEFC) ||
        (codeUnit >= 0x10E60 && codeUnit <= 0x10E7E) ||
        (codeUnit >= 0x1EE00 && codeUnit <= 0x1EE03) ||
        (codeUnit >= 0x1EE05 && codeUnit <= 0x1EE1F) ||
        (codeUnit >= 0x1EE21 && codeUnit <= 0x1EE22) ||
        (codeUnit == 0x1EE24) ||
        (codeUnit == 0x1EE27) ||
        (codeUnit >= 0x1EE29 && codeUnit <= 0x1EE32) ||
        (codeUnit >= 0x1EE34 && codeUnit <= 0x1EE37) ||
        (codeUnit == 0x1EE39) ||
        (codeUnit == 0x1EE3B) ||
        (codeUnit == 0x1EE42) ||
        (codeUnit == 0x1EE47) ||
        (codeUnit == 0x1EE49) ||
        (codeUnit == 0x1EE4B) ||
        (codeUnit >= 0x1EE4D && codeUnit <= 0x1EE4F) ||
        (codeUnit >= 0x1EE51 && codeUnit <= 0x1EE52) ||
        (codeUnit == 0x1EE54) ||
        (codeUnit == 0x1EE57) ||
        (codeUnit == 0x1EE59) ||
        (codeUnit == 0x1EE5B) ||
        (codeUnit == 0x1EE5D) ||
        (codeUnit == 0x1EE5F) ||
        (codeUnit >= 0x1EE61 && codeUnit <= 0x1EE62) ||
        (codeUnit == 0x1EE64) ||
        (codeUnit >= 0x1EE67 && codeUnit <= 0x1EE6A) ||
        (codeUnit >= 0x1EE6C && codeUnit <= 0x1EE72) ||
        (codeUnit >= 0x1EE74 && codeUnit <= 0x1EE77) ||
        (codeUnit >= 0x1EE79 && codeUnit <= 0x1EE7C) ||
        (codeUnit == 0x1EE7E) ||
        (codeUnit >= 0x1EE80 && codeUnit <= 0x1EE89) ||
        (codeUnit >= 0x1EE8B && codeUnit <= 0x1EE9B) ||
        (codeUnit >= 0x1EEA1 && codeUnit <= 0x1EEA3) ||
        (codeUnit >= 0x1EEA5 && codeUnit <= 0x1EEA9) ||
        (codeUnit >= 0x1EEAB && codeUnit <= 0x1EEBB) ||
        (codeUnit >= 0x1EEF0 && codeUnit <= 0x1EEF1)
    );
  }

  static bool isSyriac(int codeUnit) {
    return ((codeUnit >= 0x0700 && codeUnit <= 0x070D) ||
        (codeUnit == 0x070F) ||
        (codeUnit == 0x0710) ||
        (codeUnit == 0x0711) ||
        (codeUnit >= 0x0712 && codeUnit <= 0x072F) ||
        (codeUnit >= 0x0730 && codeUnit <= 0x074A) ||
        (codeUnit >= 0x074D && codeUnit <= 0x074F) ||
        (codeUnit >= 0x0860 && codeUnit <= 0x086A)
    );
  }

  static bool isThaana(int codeUnit) {
    return ((codeUnit >= 0x0780 && codeUnit <= 0x07A5) ||
        (codeUnit >= 0x07A6 && codeUnit <= 0x07B0) ||
        (codeUnit == 0x07B1)
    );
  }

  static bool isDevanagari(int codeUnit) {
    return ((codeUnit >= 0x0900 && codeUnit <= 0x0902) ||
        (codeUnit == 0x0903) ||
        (codeUnit >= 0x0904 && codeUnit <= 0x0939) ||
        (codeUnit == 0x093A) ||
        (codeUnit == 0x093B) ||
        (codeUnit == 0x093C) ||
        (codeUnit == 0x093D) ||
        (codeUnit >= 0x093E && codeUnit <= 0x0940) ||
        (codeUnit >= 0x0941 && codeUnit <= 0x0948) ||
        (codeUnit >= 0x0949 && codeUnit <= 0x094C) ||
        (codeUnit == 0x094D) ||
        (codeUnit >= 0x094E && codeUnit <= 0x094F) ||
        (codeUnit == 0x0950) ||
        (codeUnit >= 0x0955 && codeUnit <= 0x0957) ||
        (codeUnit >= 0x0958 && codeUnit <= 0x0961) ||
        (codeUnit >= 0x0962 && codeUnit <= 0x0963) ||
        (codeUnit >= 0x0966 && codeUnit <= 0x096F) ||
        (codeUnit == 0x0970) ||
        (codeUnit == 0x0971) ||
        (codeUnit >= 0x0972 && codeUnit <= 0x097F) ||
        (codeUnit >= 0xA8E0 && codeUnit <= 0xA8F1) ||
        (codeUnit >= 0xA8F2 && codeUnit <= 0xA8F7) ||
        (codeUnit >= 0xA8F8 && codeUnit <= 0xA8FA) ||
        (codeUnit == 0xA8FB) ||
        (codeUnit == 0xA8FC) ||
        (codeUnit >= 0xA8FD && codeUnit <= 0xA8FE) ||
        (codeUnit == 0xA8FF)
    );
  }

  static bool isBengali(int codeUnit) {
    return ((codeUnit == 0x0980) ||
        (codeUnit == 0x0981) ||
        (codeUnit >= 0x0982 && codeUnit <= 0x0983) ||
        (codeUnit >= 0x0985 && codeUnit <= 0x098C) ||
        (codeUnit >= 0x098F && codeUnit <= 0x0990) ||
        (codeUnit >= 0x0993 && codeUnit <= 0x09A8) ||
        (codeUnit >= 0x09AA && codeUnit <= 0x09B0) ||
        (codeUnit == 0x09B2) ||
        (codeUnit >= 0x09B6 && codeUnit <= 0x09B9) ||
        (codeUnit == 0x09BC) ||
        (codeUnit == 0x09BD) ||
        (codeUnit >= 0x09BE && codeUnit <= 0x09C0) ||
        (codeUnit >= 0x09C1 && codeUnit <= 0x09C4) ||
        (codeUnit >= 0x09C7 && codeUnit <= 0x09C8) ||
        (codeUnit >= 0x09CB && codeUnit <= 0x09CC) ||
        (codeUnit == 0x09CD) ||
        (codeUnit == 0x09CE) ||
        (codeUnit == 0x09D7) ||
        (codeUnit >= 0x09DC && codeUnit <= 0x09DD) ||
        (codeUnit >= 0x09DF && codeUnit <= 0x09E1) ||
        (codeUnit >= 0x09E2 && codeUnit <= 0x09E3) ||
        (codeUnit >= 0x09E6 && codeUnit <= 0x09EF) ||
        (codeUnit >= 0x09F0 && codeUnit <= 0x09F1) ||
        (codeUnit >= 0x09F2 && codeUnit <= 0x09F3) ||
        (codeUnit >= 0x09F4 && codeUnit <= 0x09F9) ||
        (codeUnit == 0x09FA) ||
        (codeUnit == 0x09FB) ||
        (codeUnit == 0x09FC) ||
        (codeUnit == 0x09FD) ||
        (codeUnit == 0x09FE)
    );
  }

  static bool isGurmukhi(int codeUnit) {
    return ((codeUnit >= 0x0A01 && codeUnit <= 0x0A02) ||
        (codeUnit == 0x0A03) ||
        (codeUnit >= 0x0A05 && codeUnit <= 0x0A0A) ||
        (codeUnit >= 0x0A0F && codeUnit <= 0x0A10) ||
        (codeUnit >= 0x0A13 && codeUnit <= 0x0A28) ||
        (codeUnit >= 0x0A2A && codeUnit <= 0x0A30) ||
        (codeUnit >= 0x0A32 && codeUnit <= 0x0A33) ||
        (codeUnit >= 0x0A35 && codeUnit <= 0x0A36) ||
        (codeUnit >= 0x0A38 && codeUnit <= 0x0A39) ||
        (codeUnit == 0x0A3C) ||
        (codeUnit >= 0x0A3E && codeUnit <= 0x0A40) ||
        (codeUnit >= 0x0A41 && codeUnit <= 0x0A42) ||
        (codeUnit >= 0x0A47 && codeUnit <= 0x0A48) ||
        (codeUnit >= 0x0A4B && codeUnit <= 0x0A4D) ||
        (codeUnit == 0x0A51) ||
        (codeUnit >= 0x0A59 && codeUnit <= 0x0A5C) ||
        (codeUnit == 0x0A5E) ||
        (codeUnit >= 0x0A66 && codeUnit <= 0x0A6F) ||
        (codeUnit >= 0x0A70 && codeUnit <= 0x0A71) ||
        (codeUnit >= 0x0A72 && codeUnit <= 0x0A74) ||
        (codeUnit == 0x0A75) ||
        (codeUnit == 0x0A76)
    );
  }

  static bool isGujarati(int codeUnit) {
    return ((codeUnit >= 0x0A81 && codeUnit <= 0x0A82) ||
        (codeUnit == 0x0A83) ||
        (codeUnit >= 0x0A85 && codeUnit <= 0x0A8D) ||
        (codeUnit >= 0x0A8F && codeUnit <= 0x0A91) ||
        (codeUnit >= 0x0A93 && codeUnit <= 0x0AA8) ||
        (codeUnit >= 0x0AAA && codeUnit <= 0x0AB0) ||
        (codeUnit >= 0x0AB2 && codeUnit <= 0x0AB3) ||
        (codeUnit >= 0x0AB5 && codeUnit <= 0x0AB9) ||
        (codeUnit == 0x0ABC) ||
        (codeUnit == 0x0ABD) ||
        (codeUnit >= 0x0ABE && codeUnit <= 0x0AC0) ||
        (codeUnit >= 0x0AC1 && codeUnit <= 0x0AC5) ||
        (codeUnit >= 0x0AC7 && codeUnit <= 0x0AC8) ||
        (codeUnit == 0x0AC9) ||
        (codeUnit >= 0x0ACB && codeUnit <= 0x0ACC) ||
        (codeUnit == 0x0ACD) ||
        (codeUnit == 0x0AD0) ||
        (codeUnit >= 0x0AE0 && codeUnit <= 0x0AE1) ||
        (codeUnit >= 0x0AE2 && codeUnit <= 0x0AE3) ||
        (codeUnit >= 0x0AE6 && codeUnit <= 0x0AEF) ||
        (codeUnit == 0x0AF0) ||
        (codeUnit == 0x0AF1) ||
        (codeUnit == 0x0AF9) ||
        (codeUnit >= 0x0AFA && codeUnit <= 0x0AFF)
    );
  }

  static bool isOriya(int codeUnit) {
    return ((codeUnit == 0x0B01) ||
        (codeUnit >= 0x0B02 && codeUnit <= 0x0B03) ||
        (codeUnit >= 0x0B05 && codeUnit <= 0x0B0C) ||
        (codeUnit >= 0x0B0F && codeUnit <= 0x0B10) ||
        (codeUnit >= 0x0B13 && codeUnit <= 0x0B28) ||
        (codeUnit >= 0x0B2A && codeUnit <= 0x0B30) ||
        (codeUnit >= 0x0B32 && codeUnit <= 0x0B33) ||
        (codeUnit >= 0x0B35 && codeUnit <= 0x0B39) ||
        (codeUnit == 0x0B3C) ||
        (codeUnit == 0x0B3D) ||
        (codeUnit == 0x0B3E) ||
        (codeUnit == 0x0B3F) ||
        (codeUnit == 0x0B40) ||
        (codeUnit >= 0x0B41 && codeUnit <= 0x0B44) ||
        (codeUnit >= 0x0B47 && codeUnit <= 0x0B48) ||
        (codeUnit >= 0x0B4B && codeUnit <= 0x0B4C) ||
        (codeUnit == 0x0B4D) ||
        (codeUnit == 0x0B56) ||
        (codeUnit == 0x0B57) ||
        (codeUnit >= 0x0B5C && codeUnit <= 0x0B5D) ||
        (codeUnit >= 0x0B5F && codeUnit <= 0x0B61) ||
        (codeUnit >= 0x0B62 && codeUnit <= 0x0B63) ||
        (codeUnit >= 0x0B66 && codeUnit <= 0x0B6F) ||
        (codeUnit == 0x0B70) ||
        (codeUnit == 0x0B71) ||
        (codeUnit >= 0x0B72 && codeUnit <= 0x0B77)
    );
  }

  static bool isTamil(int codeUnit) {
    return ((codeUnit == 0x0B82) ||
        (codeUnit == 0x0B83) ||
        (codeUnit >= 0x0B85 && codeUnit <= 0x0B8A) ||
        (codeUnit >= 0x0B8E && codeUnit <= 0x0B90) ||
        (codeUnit >= 0x0B92 && codeUnit <= 0x0B95) ||
        (codeUnit >= 0x0B99 && codeUnit <= 0x0B9A) ||
        (codeUnit == 0x0B9C) ||
        (codeUnit >= 0x0B9E && codeUnit <= 0x0B9F) ||
        (codeUnit >= 0x0BA3 && codeUnit <= 0x0BA4) ||
        (codeUnit >= 0x0BA8 && codeUnit <= 0x0BAA) ||
        (codeUnit >= 0x0BAE && codeUnit <= 0x0BB9) ||
        (codeUnit >= 0x0BBE && codeUnit <= 0x0BBF) ||
        (codeUnit == 0x0BC0) ||
        (codeUnit >= 0x0BC1 && codeUnit <= 0x0BC2) ||
        (codeUnit >= 0x0BC6 && codeUnit <= 0x0BC8) ||
        (codeUnit >= 0x0BCA && codeUnit <= 0x0BCC) ||
        (codeUnit == 0x0BCD) ||
        (codeUnit == 0x0BD0) ||
        (codeUnit == 0x0BD7) ||
        (codeUnit >= 0x0BE6 && codeUnit <= 0x0BEF) ||
        (codeUnit >= 0x0BF0 && codeUnit <= 0x0BF2) ||
        (codeUnit >= 0x0BF3 && codeUnit <= 0x0BF8) ||
        (codeUnit == 0x0BF9) ||
        (codeUnit == 0x0BFA) ||
        (codeUnit >= 0x11FC0 && codeUnit <= 0x11FD4) ||
        (codeUnit >= 0x11FD5 && codeUnit <= 0x11FDC) ||
        (codeUnit >= 0x11FDD && codeUnit <= 0x11FE0) ||
        (codeUnit >= 0x11FE1 && codeUnit <= 0x11FF1) ||
        (codeUnit == 0x11FFF)
    );
  }

  static bool isTelugu(int codeUnit) {
    return ((codeUnit == 0x0C00) ||
        (codeUnit >= 0x0C01 && codeUnit <= 0x0C03) ||
        (codeUnit == 0x0C04) ||
        (codeUnit >= 0x0C05 && codeUnit <= 0x0C0C) ||
        (codeUnit >= 0x0C0E && codeUnit <= 0x0C10) ||
        (codeUnit >= 0x0C12 && codeUnit <= 0x0C28) ||
        (codeUnit >= 0x0C2A && codeUnit <= 0x0C39) ||
        (codeUnit == 0x0C3D) ||
        (codeUnit >= 0x0C3E && codeUnit <= 0x0C40) ||
        (codeUnit >= 0x0C41 && codeUnit <= 0x0C44) ||
        (codeUnit >= 0x0C46 && codeUnit <= 0x0C48) ||
        (codeUnit >= 0x0C4A && codeUnit <= 0x0C4D) ||
        (codeUnit >= 0x0C55 && codeUnit <= 0x0C56) ||
        (codeUnit >= 0x0C58 && codeUnit <= 0x0C5A) ||
        (codeUnit >= 0x0C60 && codeUnit <= 0x0C61) ||
        (codeUnit >= 0x0C62 && codeUnit <= 0x0C63) ||
        (codeUnit >= 0x0C66 && codeUnit <= 0x0C6F) ||
        (codeUnit == 0x0C77) ||
        (codeUnit >= 0x0C78 && codeUnit <= 0x0C7E) ||
        (codeUnit == 0x0C7F)
    );
  }

  static bool isKannada(int codeUnit) {
    return ((codeUnit == 0x0C80) ||
        (codeUnit == 0x0C81) ||
        (codeUnit >= 0x0C82 && codeUnit <= 0x0C83) ||
        (codeUnit == 0x0C84) ||
        (codeUnit >= 0x0C85 && codeUnit <= 0x0C8C) ||
        (codeUnit >= 0x0C8E && codeUnit <= 0x0C90) ||
        (codeUnit >= 0x0C92 && codeUnit <= 0x0CA8) ||
        (codeUnit >= 0x0CAA && codeUnit <= 0x0CB3) ||
        (codeUnit >= 0x0CB5 && codeUnit <= 0x0CB9) ||
        (codeUnit == 0x0CBC) ||
        (codeUnit == 0x0CBD) ||
        (codeUnit == 0x0CBE) ||
        (codeUnit == 0x0CBF) ||
        (codeUnit >= 0x0CC0 && codeUnit <= 0x0CC4) ||
        (codeUnit == 0x0CC6) ||
        (codeUnit >= 0x0CC7 && codeUnit <= 0x0CC8) ||
        (codeUnit >= 0x0CCA && codeUnit <= 0x0CCB) ||
        (codeUnit >= 0x0CCC && codeUnit <= 0x0CCD) ||
        (codeUnit >= 0x0CD5 && codeUnit <= 0x0CD6) ||
        (codeUnit == 0x0CDE) ||
        (codeUnit >= 0x0CE0 && codeUnit <= 0x0CE1) ||
        (codeUnit >= 0x0CE2 && codeUnit <= 0x0CE3) ||
        (codeUnit >= 0x0CE6 && codeUnit <= 0x0CEF) ||
        (codeUnit >= 0x0CF1 && codeUnit <= 0x0CF2)
    );
  }

  static bool isMalayalam(int codeUnit) {
    return ((codeUnit >= 0x0D00 && codeUnit <= 0x0D01) ||
        (codeUnit >= 0x0D02 && codeUnit <= 0x0D03) ||
        (codeUnit >= 0x0D05 && codeUnit <= 0x0D0C) ||
        (codeUnit >= 0x0D0E && codeUnit <= 0x0D10) ||
        (codeUnit >= 0x0D12 && codeUnit <= 0x0D3A) ||
        (codeUnit >= 0x0D3B && codeUnit <= 0x0D3C) ||
        (codeUnit == 0x0D3D) ||
        (codeUnit >= 0x0D3E && codeUnit <= 0x0D40) ||
        (codeUnit >= 0x0D41 && codeUnit <= 0x0D44) ||
        (codeUnit >= 0x0D46 && codeUnit <= 0x0D48) ||
        (codeUnit >= 0x0D4A && codeUnit <= 0x0D4C) ||
        (codeUnit == 0x0D4D) ||
        (codeUnit == 0x0D4E) ||
        (codeUnit == 0x0D4F) ||
        (codeUnit >= 0x0D54 && codeUnit <= 0x0D56) ||
        (codeUnit == 0x0D57) ||
        (codeUnit >= 0x0D58 && codeUnit <= 0x0D5E) ||
        (codeUnit >= 0x0D5F && codeUnit <= 0x0D61) ||
        (codeUnit >= 0x0D62 && codeUnit <= 0x0D63) ||
        (codeUnit >= 0x0D66 && codeUnit <= 0x0D6F) ||
        (codeUnit >= 0x0D70 && codeUnit <= 0x0D78) ||
        (codeUnit == 0x0D79) ||
        (codeUnit >= 0x0D7A && codeUnit <= 0x0D7F)
    );
  }

  static bool isSinhala(int codeUnit) {
    return ((codeUnit >= 0x0D82 && codeUnit <= 0x0D83) ||
        (codeUnit >= 0x0D85 && codeUnit <= 0x0D96) ||
        (codeUnit >= 0x0D9A && codeUnit <= 0x0DB1) ||
        (codeUnit >= 0x0DB3 && codeUnit <= 0x0DBB) ||
        (codeUnit == 0x0DBD) ||
        (codeUnit >= 0x0DC0 && codeUnit <= 0x0DC6) ||
        (codeUnit == 0x0DCA) ||
        (codeUnit >= 0x0DCF && codeUnit <= 0x0DD1) ||
        (codeUnit >= 0x0DD2 && codeUnit <= 0x0DD4) ||
        (codeUnit == 0x0DD6) ||
        (codeUnit >= 0x0DD8 && codeUnit <= 0x0DDF) ||
        (codeUnit >= 0x0DE6 && codeUnit <= 0x0DEF) ||
        (codeUnit >= 0x0DF2 && codeUnit <= 0x0DF3) ||
        (codeUnit == 0x0DF4) ||
        (codeUnit == 0x111E1 && codeUnit <= 0x111F4)
    );
  }

  static bool isThai(int codeUnit) {
    return ((codeUnit >= 0x0E01 && codeUnit <= 0x0E30) ||
        (codeUnit == 0x0E31) ||
        (codeUnit >= 0x0E32 && codeUnit <= 0x0E33) ||
        (codeUnit >= 0x0E34 && codeUnit <= 0x0E3A) ||
        (codeUnit >= 0x0E40 && codeUnit <= 0x0E45) ||
        (codeUnit == 0x0E46) ||
        (codeUnit >= 0x0E47 && codeUnit <= 0x0E4E) ||
        (codeUnit == 0x0E4F) ||
        (codeUnit >= 0x0E50 && codeUnit <= 0x0E59) ||
        (codeUnit >= 0x0E5A && codeUnit <= 0x0E5B));
  }

  static bool isLao(int codeUnit) {
    return ((codeUnit >= 0x0E81 && codeUnit <= 0x0E82) ||
        (codeUnit == 0x0E84) ||
        (codeUnit >= 0x0E86 && codeUnit <= 0x0E8A) ||
        (codeUnit >= 0x0E8C && codeUnit <= 0x0EA3) ||
        (codeUnit == 0x0EA5) ||
        (codeUnit >= 0x0EA7 && codeUnit <= 0x0EB0) ||
        (codeUnit == 0x0EB1) ||
        (codeUnit >= 0x0EB2 && codeUnit <= 0x0EB3) ||
        (codeUnit >= 0x0EB4 && codeUnit <= 0x0EBC) ||
        (codeUnit == 0x0EBD) ||
        (codeUnit >= 0x0EC0 && codeUnit <= 0x0EC4) ||
        (codeUnit == 0x0EC6) ||
        (codeUnit >= 0x0EC8 && codeUnit <= 0x0ECD) ||
        (codeUnit >= 0x0ED0 && codeUnit <= 0x0ED9) ||
        (codeUnit >= 0x0EDC && codeUnit <= 0x0EDF)
    );
  }

  static bool isTibetan(int codeUnit) {
    return ((codeUnit == 0x0F00) ||
        (codeUnit >= 0x0F01 && codeUnit <= 0x0F03) ||
        (codeUnit >= 0x0F04 && codeUnit <= 0x0F12) ||
        (codeUnit == 0x0F13) ||
        (codeUnit == 0x0F14) ||
        (codeUnit >= 0x0F15 && codeUnit <= 0x0F17) ||
        (codeUnit >= 0x0F18 && codeUnit <= 0x0F19) ||
        (codeUnit >= 0x0F1A && codeUnit <= 0x0F1F) ||
        (codeUnit >= 0x0F20 && codeUnit <= 0x0F29) ||
        (codeUnit >= 0x0F2A && codeUnit <= 0x0F33) ||
        (codeUnit == 0x0F34) ||
        (codeUnit == 0x0F35) ||
        (codeUnit == 0x0F36) ||
        (codeUnit == 0x0F37) ||
        (codeUnit == 0x0F38) ||
        (codeUnit == 0x0F39) ||
        (codeUnit == 0x0F3A) ||
        (codeUnit == 0x0F3B) ||
        (codeUnit == 0x0F3C) ||
        (codeUnit == 0x0F3D) ||
        (codeUnit >= 0x0F3E && codeUnit <= 0x0F3F) ||
        (codeUnit >= 0x0F40 && codeUnit <= 0x0F47) ||
        (codeUnit >= 0x0F49 && codeUnit <= 0x0F6C) ||
        (codeUnit >= 0x0F71 && codeUnit <= 0x0F7E) ||
        (codeUnit == 0x0F7F) ||
        (codeUnit >= 0x0F80 && codeUnit <= 0x0F84) ||
        (codeUnit == 0x0F85) ||
        (codeUnit >= 0x0F86 && codeUnit <= 0x0F87) ||
        (codeUnit >= 0x0F88 && codeUnit <= 0x0F8C) ||
        (codeUnit >= 0x0F8D && codeUnit <= 0x0F97) ||
        (codeUnit >= 0x0F99 && codeUnit <= 0x0FBC) ||
        (codeUnit >= 0x0FBE && codeUnit <= 0x0FC5) ||
        (codeUnit == 0x0FC6) ||
        (codeUnit >= 0x0FC7 && codeUnit <= 0x0FCC) ||
        (codeUnit >= 0x0FCE && codeUnit <= 0x0FCF) ||
        (codeUnit >= 0x0FD0 && codeUnit <= 0x0FD4) ||
        (codeUnit >= 0x0FD9 && codeUnit <= 0x0FDA)
    );
  }

  static bool isMyanmar(int codeUnit) {
    return ((codeUnit >= 0x1000 && codeUnit <= 0x102A) ||
        (codeUnit >= 0x102B && codeUnit <= 0x102C) ||
        (codeUnit >= 0x102D && codeUnit <= 0x1030) ||
        (codeUnit == 0x1031) ||
        (codeUnit >= 0x1032 && codeUnit <= 0x1037) ||
        (codeUnit == 0x1038) ||
        (codeUnit >= 0x1039 && codeUnit <= 0x103A) ||
        (codeUnit >= 0x103B && codeUnit <= 0x103C) ||
        (codeUnit >= 0x103D && codeUnit <= 0x103E) ||
        (codeUnit == 0x103F) ||
        (codeUnit >= 0x1040 && codeUnit <= 0x1049) ||
        (codeUnit >= 0x104A && codeUnit <= 0x104F) ||
        (codeUnit >= 0x1050 && codeUnit <= 0x1055) ||
        (codeUnit >= 0x1056 && codeUnit <= 0x1057) ||
        (codeUnit >= 0x1058 && codeUnit <= 0x1059) ||
        (codeUnit >= 0x105A && codeUnit <= 0x105D) ||
        (codeUnit >= 0x105E && codeUnit <= 0x1060) ||
        (codeUnit == 0x1061) ||
        (codeUnit >= 0x1062 && codeUnit <= 0x1064) ||
        (codeUnit >= 0x1065 && codeUnit <= 0x1066) ||
        (codeUnit >= 0x1067 && codeUnit <= 0x106D) ||
        (codeUnit >= 0x106E && codeUnit <= 0x1070) ||
        (codeUnit >= 0x1071 && codeUnit <= 0x1074) ||
        (codeUnit >= 0x1075 && codeUnit <= 0x1081) ||
        (codeUnit == 0x1082) ||
        (codeUnit >= 0x1083 && codeUnit <= 0x1084) ||
        (codeUnit >= 0x1085 && codeUnit <= 0x1086) ||
        (codeUnit >= 0x1087 && codeUnit <= 0x108C) ||
        (codeUnit == 0x108D) ||
        (codeUnit == 0x108E) ||
        (codeUnit == 0x108F) ||
        (codeUnit >= 0x1090 && codeUnit <= 0x1099) ||
        (codeUnit >= 0x109A && codeUnit <= 0x109C) ||
        (codeUnit == 0x109D) ||
        (codeUnit >= 0x109E && codeUnit <= 0x109F) ||
        (codeUnit >= 0xA9E0 && codeUnit <= 0xA9E4) ||
        (codeUnit == 0xA9E5) ||
        (codeUnit == 0xA9E6) ||
        (codeUnit >= 0xA9E7 && codeUnit <= 0xA9EF) ||
        (codeUnit >= 0xA9F0 && codeUnit <= 0xA9F9) ||
        (codeUnit >= 0xA9FA && codeUnit <= 0xA9FE) ||
        (codeUnit >= 0xAA60 && codeUnit <= 0xAA6F) ||
        (codeUnit == 0xAA70) ||
        (codeUnit >= 0xAA71 && codeUnit <= 0xAA76) ||
        (codeUnit >= 0xAA77 && codeUnit <= 0xAA79) ||
        (codeUnit == 0xAA7A) ||
        (codeUnit == 0xAA7B) ||
        (codeUnit == 0xAA7C) ||
        (codeUnit == 0xAA7D) ||
        (codeUnit >= 0xAA7E && codeUnit <= 0xAA7F)
    );
  }

  static bool isGeorgian(int codeUnit) {
    return ((codeUnit >= 0x10A0 && codeUnit <= 0x10C5) ||
        (codeUnit == 0x10C7) ||
        (codeUnit == 0x10CD) ||
        (codeUnit >= 0x10D0 && codeUnit <= 0x10FA) ||
        (codeUnit == 0x10FC) ||
        (codeUnit >= 0x10FD && codeUnit <= 0x10FF) ||
        (codeUnit >= 0x1C90 && codeUnit <= 0x1CBA) ||
        (codeUnit >= 0x1CBD && codeUnit <= 0x1CBF) ||
        (codeUnit >= 0x2D00 && codeUnit <= 0x2D25) ||
        (codeUnit == 0x2D27) ||
        (codeUnit == 0x2D2D)
    );
  }

  static bool isHangul(int codeUnit) {
    return ((codeUnit >= 0x1100 && codeUnit <= 0x11FF) ||
        (codeUnit >= 0x302E && codeUnit <= 0x302F) ||
        (codeUnit >= 0x3131 && codeUnit <= 0x318E) ||
        (codeUnit >= 0x3200 && codeUnit <= 0x321E) ||
        (codeUnit >= 0x3260 && codeUnit <= 0x327E) ||
        (codeUnit >= 0xA960 && codeUnit <= 0xA97C) ||
        (codeUnit >= 0xAC00 && codeUnit <= 0xD7A3) ||
        (codeUnit >= 0xD7B0 && codeUnit <= 0xD7C6) ||
        (codeUnit >= 0xD7CB && codeUnit <= 0xD7FB) ||
        (codeUnit >= 0xFFA0 && codeUnit <= 0xFFBE) ||
        (codeUnit >= 0xFFC2 && codeUnit <= 0xFFC7) ||
        (codeUnit >= 0xFFCA && codeUnit <= 0xFFCF) ||
        (codeUnit >= 0xFFD2 && codeUnit <= 0xFFD7) ||
        (codeUnit >= 0xFFDA && codeUnit <= 0xFFDC)
    );
  }

  static bool isEthiopic(int codeUnit) {
    return ((codeUnit >= 0x1200 && codeUnit <= 0x1248) ||
        (codeUnit >= 0x124A && codeUnit <= 0x124D) ||
        (codeUnit >= 0x1250 && codeUnit <= 0x1256) ||
        (codeUnit == 0x1258) ||
        (codeUnit >= 0x125A && codeUnit <= 0x125D) ||
        (codeUnit >= 0x1260 && codeUnit <= 0x1288) ||
        (codeUnit >= 0x128A && codeUnit <= 0x128D) ||
        (codeUnit >= 0x1290 && codeUnit <= 0x12B0) ||
        (codeUnit >= 0x12B2 && codeUnit <= 0x12B5) ||
        (codeUnit >= 0x12B8 && codeUnit <= 0x12BE) ||
        (codeUnit == 0x12C0) ||
        (codeUnit >= 0x12C2 && codeUnit <= 0x12C5) ||
        (codeUnit >= 0x12C8 && codeUnit <= 0x12D6) ||
        (codeUnit >= 0x12D8 && codeUnit <= 0x1310) ||
        (codeUnit >= 0x1312 && codeUnit <= 0x1315) ||
        (codeUnit >= 0x1318 && codeUnit <= 0x135A) ||
        (codeUnit >= 0x135D && codeUnit <= 0x135F) ||
        (codeUnit >= 0x1360 && codeUnit <= 0x1368) ||
        (codeUnit >= 0x1369 && codeUnit <= 0x137C) ||
        (codeUnit >= 0x1380 && codeUnit <= 0x138F) ||
        (codeUnit >= 0x1390 && codeUnit <= 0x1399) ||
        (codeUnit >= 0x2D80 && codeUnit <= 0x2D96) ||
        (codeUnit >= 0x2DA0 && codeUnit <= 0x2DA6) ||
        (codeUnit >= 0x2DA8 && codeUnit <= 0x2DAE) ||
        (codeUnit >= 0x2DB0 && codeUnit <= 0x2DB6) ||
        (codeUnit >= 0x2DB8 && codeUnit <= 0x2DBE) ||
        (codeUnit >= 0x2DC0 && codeUnit <= 0x2DC6) ||
        (codeUnit >= 0x2DC8 && codeUnit <= 0x2DCE) ||
        (codeUnit >= 0x2DD0 && codeUnit <= 0x2DD6) ||
        (codeUnit >= 0x2DD8 && codeUnit <= 0x2DDE) ||
        (codeUnit >= 0xAB01 && codeUnit <= 0xAB06) ||
        (codeUnit >= 0xAB09 && codeUnit <= 0xAB0E) ||
        (codeUnit >= 0xAB11 && codeUnit <= 0xAB16) ||
        (codeUnit >= 0xAB20 && codeUnit <= 0xAB26) ||
        (codeUnit >= 0xAB28 && codeUnit <= 0xAB2E)
    );
  }

  static bool isCherokee(int codeUnit) {
    return ((codeUnit >= 0x13A0 && codeUnit <= 0x13F5) ||
        (codeUnit >= 0x13F8 && codeUnit <= 0x13FD) ||
        (codeUnit >= 0xAB70 && codeUnit <= 0xABBF)
    );
  }

  static bool isCanadianAboriginal(int codeUnit) {
    return ((codeUnit == 0x1400) ||
        (codeUnit >= 0x1401 && codeUnit <= 0x166C) ||
        (codeUnit == 0x166D) ||
        (codeUnit == 0x166E) ||
        (codeUnit >= 0x166F && codeUnit <= 0x167F) ||
        (codeUnit >= 0x18B0 && codeUnit <= 0x18F5)
    );
  }

  static bool isOgham(int codeUnit) {
    return ((codeUnit == 0x1680) ||
        (codeUnit >= 0x1681 && codeUnit <= 0x169A) ||
        (codeUnit == 0x169B) ||
        (codeUnit == 0x169C)
    );
  }

  static bool isRunic(int codeUnit) {
    return ((codeUnit >= 0x16A0 && codeUnit <= 0x16EA) ||
        (codeUnit >= 0x16EE && codeUnit <= 0x16F0) ||
        (codeUnit >= 0x16F1 && codeUnit <= 0x16F8)
    );
  }

  static bool isKhmer(int codeUnit) {
    return ((codeUnit >= 0x1780 && codeUnit <= 0x17B3) ||
        (codeUnit >= 0x17B4 && codeUnit <= 0x17B5) ||
        (codeUnit == 0x17B6) ||
        (codeUnit >= 0x17B7 && codeUnit <= 0x17BD) ||
        (codeUnit >= 0x17BE && codeUnit <= 0x17C5) ||
        (codeUnit == 0x17C6) ||
        (codeUnit >= 0x17C7 && codeUnit <= 0x17C8) ||
        (codeUnit >= 0x17C9 && codeUnit <= 0x17D3) ||
        (codeUnit >= 0x17D4 && codeUnit <= 0x17D6) ||
        (codeUnit == 0x17D7) ||
        (codeUnit >= 0x17D8 && codeUnit <= 0x17DA) ||
        (codeUnit == 0x17DB) ||
        (codeUnit == 0x17DC) ||
        (codeUnit == 0x17DD) ||
        (codeUnit >= 0x17E0 && codeUnit <= 0x17E9) ||
        (codeUnit >= 0x17F0 && codeUnit <= 0x17F9) ||
        (codeUnit >= 0x19E0 && codeUnit <= 0x19FF)
    );
  }

  static bool isMongolian(int codeUnit) {
    return ((codeUnit >= 0x1800 && codeUnit <= 0x1801) ||
        (codeUnit == 0x1804) ||
        (codeUnit == 0x1806) ||
        (codeUnit >= 0x1807 && codeUnit <= 0x180A) ||
        (codeUnit >= 0x180B && codeUnit <= 0x180D) ||
        (codeUnit == 0x180E) ||
        (codeUnit >= 0x1810 && codeUnit <= 0x1819) ||
        (codeUnit >= 0x1820 && codeUnit <= 0x1842) ||
        (codeUnit == 0x1843) ||
        (codeUnit >= 0x1844 && codeUnit <= 0x1878) ||
        (codeUnit >= 0x1880 && codeUnit <= 0x1884) ||
        (codeUnit >= 0x1885 && codeUnit <= 0x1886) ||
        (codeUnit >= 0x1887 && codeUnit <= 0x18A8) ||
        (codeUnit == 0x18A9) ||
        (codeUnit == 0x18AA) ||
        (codeUnit >= 0x11660 && codeUnit <= 0x1166C)
    );
  }

  static bool isHiragana(int codeUnit) {
    return ((codeUnit >= 0x3041 && codeUnit <= 0x3096) ||
        (codeUnit >= 0x309D && codeUnit <= 0x309E) ||
        (codeUnit == 0x309F) ||
        (codeUnit >= 0x1B001 && codeUnit <= 0x1B11E) ||
        (codeUnit >= 0x1B150 && codeUnit <= 0x1B152) ||
        (codeUnit == 0x1F200)
    );
  }

  static bool isKatakana(int codeUnit) {
    return ((codeUnit >= 0x30A1 && codeUnit <= 0x30FA) ||
        (codeUnit >= 0x30FD && codeUnit <= 0x30FE) ||
        (codeUnit == 0x30FF) ||
        (codeUnit >= 0x31F0 && codeUnit <= 0x31FF) ||
        (codeUnit >= 0x32D0 && codeUnit <= 0x32FE) ||
        (codeUnit >= 0x3300 && codeUnit <= 0x3357) ||
        (codeUnit >= 0xFF66 && codeUnit <= 0xFF6F) ||
        (codeUnit >= 0xFF71 && codeUnit <= 0xFF9D) ||
        (codeUnit == 0x1B000) ||
        (codeUnit >= 0x1B164 && codeUnit <= 0x1B167)
    );
  }

  static bool isBopomofo(int codeUnit) {
    return ((codeUnit >= 0x02EA && codeUnit <= 0x02EB) ||
        (codeUnit >= 0x3105 && codeUnit <= 0x312F) ||
        (codeUnit >= 0x31A0 && codeUnit <= 0x31BA)
    );
  }

  /// Han refers to Han ideographs, that is Chinese (CJK) characters.
  static bool isHan(int codeUnit) {
    return ((codeUnit >= 0x2E80 && codeUnit <= 0x2E99) ||
        (codeUnit >= 0x2E9B && codeUnit <= 0x2EF3) ||
        (codeUnit >= 0x2F00 && codeUnit <= 0x2FD5) ||
        (codeUnit == 0x3005) ||
        (codeUnit == 0x3007) ||
        (codeUnit >= 0x3021 && codeUnit <= 0x3029) ||
        (codeUnit >= 0x3038 && codeUnit <= 0x303A) ||
        (codeUnit == 0x303B) ||
        (codeUnit >= 0x3400 && codeUnit <= 0x4DB5) ||
        (codeUnit >= 0x4E00 && codeUnit <= 0x9FEF) ||
        (codeUnit >= 0xF900 && codeUnit <= 0xFA6D) ||
        (codeUnit >= 0xFA70 && codeUnit <= 0xFAD9) ||
        (codeUnit >= 0x20000 && codeUnit <= 0x2A6D6) ||
        (codeUnit >= 0x2A700 && codeUnit <= 0x2B734) ||
        (codeUnit >= 0x2B740 && codeUnit <= 0x2B81D) ||
        (codeUnit >= 0x2B820 && codeUnit <= 0x2CEA1) ||
        (codeUnit >= 0x2CEB0 && codeUnit <= 0x2EBE0) ||
        (codeUnit >= 0x2F800 && codeUnit <= 0x2FA1D)
    );
  }

  static bool isYi(int codeUnit) {
    return ((codeUnit >= 0xA000 && codeUnit <= 0xA014) ||
        (codeUnit == 0xA015) ||
        (codeUnit >= 0xA016 && codeUnit <= 0xA48C) ||
        (codeUnit >= 0xA490 && codeUnit <= 0xA4C6)
    );
  }

  static bool isOldItalic(int codeUnit) {
    return ((codeUnit >= 0x10300 && codeUnit <= 0x1031F) ||
        (codeUnit >= 0x10320 && codeUnit <= 0x10323) ||
        (codeUnit >= 0x1032D && codeUnit <= 0x1032F)
    );
  }

  static bool isGothic(int codeUnit) {
    return ((codeUnit >= 0x10330 && codeUnit <= 0x10340) ||
        (codeUnit == 0x10341) ||
        (codeUnit >= 0x10342 && codeUnit <= 0x10349) ||
        (codeUnit == 0x1034A)
    );
  }

  static bool isDeseret(int codeUnit) {
    return (codeUnit >= 0x10400 && codeUnit <= 0x1044F);
  }

  /// Inherited code units are things like joiners. They take the script of the
  /// character that precedes it.
  static bool isInherited(int codeUnit) {
    return ((codeUnit >= 0x0300 && codeUnit <= 0x036F) ||
        (codeUnit >= 0x0485 && codeUnit <= 0x0486) ||
        (codeUnit >= 0x064B && codeUnit <= 0x0655) ||
        (codeUnit == 0x0670) ||
        (codeUnit >= 0x0951 && codeUnit <= 0x0954) ||
        (codeUnit >= 0x1AB0 && codeUnit <= 0x1ABD) ||
        (codeUnit == 0x1ABE) ||
        (codeUnit >= 0x1CD0 && codeUnit <= 0x1CD2) ||
        (codeUnit >= 0x1CD4 && codeUnit <= 0x1CE0) ||
        (codeUnit >= 0x1CE2 && codeUnit <= 0x1CE8) ||
        (codeUnit == 0x1CED) ||
        (codeUnit == 0x1CF4) ||
        (codeUnit >= 0x1CF8 && codeUnit <= 0x1CF9) ||
        (codeUnit >= 0x1DC0 && codeUnit <= 0x1DF9) ||
        (codeUnit >= 0x1DFB && codeUnit <= 0x1DFF) ||
        (codeUnit >= 0x200C && codeUnit <= 0x200D) ||
        (codeUnit >= 0x20D0 && codeUnit <= 0x20DC) ||
        (codeUnit >= 0x20DD && codeUnit <= 0x20E0) ||
        (codeUnit == 0x20E1) ||
        (codeUnit >= 0x20E2 && codeUnit <= 0x20E4) ||
        (codeUnit >= 0x20E5 && codeUnit <= 0x20F0) ||
        (codeUnit >= 0x302A && codeUnit <= 0x302D) ||
        (codeUnit >= 0x3099 && codeUnit <= 0x309A) ||
        (codeUnit >= 0xFE00 && codeUnit <= 0xFE0F) ||
        (codeUnit >= 0xFE20 && codeUnit <= 0xFE2D) ||
        (codeUnit == 0x101FD) ||
        (codeUnit == 0x102E0) ||
        (codeUnit == 0x1133B) ||
        (codeUnit >= 0x1D167 && codeUnit <= 0x1D169) ||
        (codeUnit >= 0x1D17B && codeUnit <= 0x1D182) ||
        (codeUnit >= 0x1D185 && codeUnit <= 0x1D18B) ||
        (codeUnit >= 0x1D1AA && codeUnit <= 0x1D1AD) ||
        (codeUnit >= 0xE0100 && codeUnit <= 0xE01EF)
    );
  }

  static bool isTagalog(int codeUnit) {
    return ((codeUnit >= 0x1700 && codeUnit <= 0x170C) ||
        (codeUnit >= 0x170E && codeUnit <= 0x1711) ||
        (codeUnit >= 0x1712 && codeUnit <= 0x1714)
    );
  }

  static bool isHanunoo(int codeUnit) {
    return ((codeUnit >= 0x1720 && codeUnit <= 0x1731) ||
        (codeUnit >= 0x1732 && codeUnit <= 0x1734)
    );
  }

  static bool isBuhid(int codeUnit) {
    return ((codeUnit >= 0x1740 && codeUnit <= 0x1751) ||
        (codeUnit >= 0x1752 && codeUnit <= 0x1753)
    );
  }

  static bool isTagbanwa(int codeUnit) {
    return ((codeUnit >= 0x1760 && codeUnit <= 0x176C) ||
        (codeUnit >= 0x176E && codeUnit <= 0x1770) ||
        (codeUnit >= 0x1772 && codeUnit <= 0x1773)
    );
  }

  static bool isLimbu(int codeUnit) {
    return ((codeUnit >= 0x1900 && codeUnit <= 0x191E) ||
        (codeUnit >= 0x1920 && codeUnit <= 0x1922) ||
        (codeUnit >= 0x1923 && codeUnit <= 0x1926) ||
        (codeUnit >= 0x1927 && codeUnit <= 0x1928) ||
        (codeUnit >= 0x1929 && codeUnit <= 0x192B) ||
        (codeUnit >= 0x1930 && codeUnit <= 0x1931) ||
        (codeUnit == 0x1932) ||
        (codeUnit >= 0x1933 && codeUnit <= 0x1938) ||
        (codeUnit >= 0x1939 && codeUnit <= 0x193B) ||
        (codeUnit == 0x1940) ||
        (codeUnit >= 0x1944 && codeUnit <= 0x1945) ||
        (codeUnit >= 0x1946 && codeUnit <= 0x194F)
    );
  }

  static bool isTaiLe(int codeUnit) {
    return ((codeUnit >= 0x1950 && codeUnit <= 0x196D) ||
        (codeUnit >= 0x1970 && codeUnit <= 0x1974)
    );
  }

  static bool isLinearB(int codeUnit) {
    return ((codeUnit >= 0x10000 && codeUnit <= 0x1000B) ||
        (codeUnit >= 0x1000D && codeUnit <= 0x10026) ||
        (codeUnit >= 0x10028 && codeUnit <= 0x1003A) ||
        (codeUnit >= 0x1003C && codeUnit <= 0x1003D) ||
        (codeUnit >= 0x1003F && codeUnit <= 0x1004D) ||
        (codeUnit >= 0x10050 && codeUnit <= 0x1005D) ||
        (codeUnit >= 0x10080 && codeUnit <= 0x100FA)
    );
  }

  static bool isUgaritic(int codeUnit) {
    return ((codeUnit >= 0x10380 && codeUnit <= 0x1039D) ||
        (codeUnit == 0x1039F)
    );
  }

  static bool isShavian(int codeUnit) {
    return (codeUnit >= 0x10450 && codeUnit <= 0x1047F);
  }

  static bool isOsmanya(int codeUnit) {
    return ((codeUnit >= 0x10480 && codeUnit <= 0x1049D) ||
        (codeUnit >= 0x104A0 && codeUnit <= 0x104A9)
    );
  }

  static bool isCypriot(int codeUnit) {
    return ((codeUnit >= 0x10800 && codeUnit <= 0x10805) ||
        (codeUnit == 0x10808) ||
        (codeUnit >= 0x1080A && codeUnit <= 0x10835) ||
        (codeUnit >= 0x10837 && codeUnit <= 0x10838) ||
        (codeUnit == 0x1083C) ||
        (codeUnit == 0x1083F)
    );
  }

  static bool isBraille(int codeUnit) {
    return (codeUnit >= 0x2800 && codeUnit <= 0x28FF);
  }

  static bool isBuginese(int codeUnit) {
    return ((codeUnit >= 0x1A00 && codeUnit <= 0x1A16) ||
        (codeUnit >= 0x1A17 && codeUnit <= 0x1A18) ||
        (codeUnit >= 0x1A19 && codeUnit <= 0x1A1A) ||
        (codeUnit == 0x1A1B) ||
        (codeUnit >= 0x1A1E && codeUnit <= 0x1A1F)
    );
  }

  static bool isCoptic(int codeUnit) {
    return ((codeUnit >= 0x03E2 && codeUnit <= 0x03EF) ||
        (codeUnit >= 0x2C80 && codeUnit <= 0x2CE4) ||
        (codeUnit >= 0x2CE5 && codeUnit <= 0x2CEA) ||
        (codeUnit >= 0x2CEB && codeUnit <= 0x2CEE) ||
        (codeUnit >= 0x2CEF && codeUnit <= 0x2CF1) ||
        (codeUnit >= 0x2CF2 && codeUnit <= 0x2CF3) ||
        (codeUnit >= 0x2CF9 && codeUnit <= 0x2CFC) ||
        (codeUnit == 0x2CFD) ||
        (codeUnit >= 0x2CFE && codeUnit <= 0x2CFF)
    );
  }

  static bool isNewTaiLue(int codeUnit) {
    return ((codeUnit >= 0x1980 && codeUnit <= 0x19AB) ||
        (codeUnit >= 0x19B0 && codeUnit <= 0x19C9) ||
        (codeUnit >= 0x19D0 && codeUnit <= 0x19D9) ||
        (codeUnit == 0x19DA) ||
        (codeUnit >= 0x19DE && codeUnit <= 0x19DF)
    );
  }

  static bool isGlagolitic(int codeUnit) {
    return ((codeUnit >= 0x2C00 && codeUnit <= 0x2C2E) ||
        (codeUnit >= 0x2C30 && codeUnit <= 0x2C5E) ||
        (codeUnit >= 0x1E000 && codeUnit <= 0x1E006) ||
        (codeUnit >= 0x1E008 && codeUnit <= 0x1E018) ||
        (codeUnit >= 0x1E01B && codeUnit <= 0x1E021) ||
        (codeUnit >= 0x1E023 && codeUnit <= 0x1E024) ||
        (codeUnit >= 0x1E026 && codeUnit <= 0x1E02A)
    );
  }

  static bool isTifinagh(int codeUnit) {
    return ((codeUnit >= 0x2D30 && codeUnit <= 0x2D67) ||
        (codeUnit == 0x2D6F) ||
        (codeUnit == 0x2D70) ||
        (codeUnit == 0x2D7F)
    );
  }

  static bool isSylotiNagri(int codeUnit) {
    return ((codeUnit >= 0xA800 && codeUnit <= 0xA801) ||
        (codeUnit == 0xA802) ||
        (codeUnit >= 0xA803 && codeUnit <= 0xA805) ||
        (codeUnit == 0xA806) ||
        (codeUnit >= 0xA807 && codeUnit <= 0xA80A) ||
        (codeUnit == 0xA80B) ||
        (codeUnit >= 0xA80C && codeUnit <= 0xA822) ||
        (codeUnit >= 0xA823 && codeUnit <= 0xA824) ||
        (codeUnit >= 0xA825 && codeUnit <= 0xA826) ||
        (codeUnit == 0xA827) ||
        (codeUnit >= 0xA828 && codeUnit <= 0xA82B)
    );
  }

  static bool isOldPersian(int codeUnit) {
    return ((codeUnit >= 0x103A0 && codeUnit <= 0x103C3) ||
        (codeUnit >= 0x103C8 && codeUnit <= 0x103CF) ||
        (codeUnit == 0x103D0) ||
        (codeUnit >= 0x103D1 && codeUnit <= 0x103D5)
    );
  }

  static bool isKharoshthi(int codeUnit) {
    return ((codeUnit == 0x10A00) ||
        (codeUnit >= 0x10A01 && codeUnit <= 0x10A03) ||
        (codeUnit >= 0x10A05 && codeUnit <= 0x10A06) ||
        (codeUnit >= 0x10A0C && codeUnit <= 0x10A0F) ||
        (codeUnit >= 0x10A10 && codeUnit <= 0x10A13) ||
        (codeUnit >= 0x10A15 && codeUnit <= 0x10A17) ||
        (codeUnit >= 0x10A19 && codeUnit <= 0x10A35) ||
        (codeUnit >= 0x10A38 && codeUnit <= 0x10A3A) ||
        (codeUnit == 0x10A3F) ||
        (codeUnit >= 0x10A40 && codeUnit <= 0x10A48) ||
        (codeUnit >= 0x10A50 && codeUnit <= 0x10A58)
    );
  }

  static bool isBalinese(int codeUnit) {
    return ((codeUnit >= 0x1B00 && codeUnit <= 0x1B03) ||
        (codeUnit == 0x1B04) ||
        (codeUnit >= 0x1B05 && codeUnit <= 0x1B33) ||
        (codeUnit == 0x1B34) ||
        (codeUnit == 0x1B35) ||
        (codeUnit >= 0x1B36 && codeUnit <= 0x1B3A) ||
        (codeUnit == 0x1B3B) ||
        (codeUnit == 0x1B3C) ||
        (codeUnit >= 0x1B3D && codeUnit <= 0x1B41) ||
        (codeUnit == 0x1B42) ||
        (codeUnit >= 0x1B43 && codeUnit <= 0x1B44) ||
        (codeUnit >= 0x1B45 && codeUnit <= 0x1B4B) ||
        (codeUnit >= 0x1B50 && codeUnit <= 0x1B59) ||
        (codeUnit >= 0x1B5A && codeUnit <= 0x1B60) ||
        (codeUnit >= 0x1B61 && codeUnit <= 0x1B6A) ||
        (codeUnit >= 0x1B6B && codeUnit <= 0x1B73) ||
        (codeUnit >= 0x1B74 && codeUnit <= 0x1B7C)
    );
  }

  static bool isCuneiform(int codeUnit) {
    return ((codeUnit >= 0x12000 && codeUnit <= 0x12399) ||
        (codeUnit >= 0x12400 && codeUnit <= 0x1246E) ||
        (codeUnit >= 0x12470 && codeUnit <= 0x12474) ||
        (codeUnit >= 0x12480 && codeUnit <= 0x12543)
    );
  }

  static bool isPhoenician(int codeUnit) {
    return ((codeUnit >= 0x10900 && codeUnit <= 0x10915) ||
        (codeUnit >= 0x10916 && codeUnit <= 0x1091B) ||
        (codeUnit == 0x1091F)
    );
  }

  static bool isPhagsPa(int codeUnit) {
    return ((codeUnit >= 0xA840 && codeUnit <= 0xA873) ||
        (codeUnit >= 0xA874 && codeUnit <= 0xA877)
    );
  }

  static bool isNko(int codeUnit) {
    return ((codeUnit >= 0x07C0 && codeUnit <= 0x07C9) ||
        (codeUnit >= 0x07CA && codeUnit <= 0x07EA) ||
        (codeUnit >= 0x07EB && codeUnit <= 0x07F3) ||
        (codeUnit >= 0x07F4 && codeUnit <= 0x07F5) ||
        (codeUnit == 0x07F6) ||
        (codeUnit >= 0x07F7 && codeUnit <= 0x07F9) ||
        (codeUnit == 0x07FA) ||
        (codeUnit == 0x07FD) ||
        (codeUnit >= 0x07FE && codeUnit <= 0x07FF)
    );
  }

  static bool isSundanese(int codeUnit) {
    return ((codeUnit >= 0x1B80 && codeUnit <= 0x1B81) ||
        (codeUnit == 0x1B82) ||
        (codeUnit >= 0x1B83 && codeUnit <= 0x1BA0) ||
        (codeUnit == 0x1BA1) ||
        (codeUnit >= 0x1BA2 && codeUnit <= 0x1BA5) ||
        (codeUnit >= 0x1BA6 && codeUnit <= 0x1BA7) ||
        (codeUnit >= 0x1BA8 && codeUnit <= 0x1BA9) ||
        (codeUnit == 0x1BAA) ||
        (codeUnit >= 0x1BAB && codeUnit <= 0x1BAD) ||
        (codeUnit >= 0x1BAE && codeUnit <= 0x1BAF) ||
        (codeUnit >= 0x1BB0 && codeUnit <= 0x1BB9) ||
        (codeUnit >= 0x1BBA && codeUnit <= 0x1BBF) ||
        (codeUnit >= 0x1CC0 && codeUnit <= 0x1CC7)
    );
  }

  static bool isLepcha(int codeUnit) {
    return ((codeUnit >= 0x1C00 && codeUnit <= 0x1C23) ||
        (codeUnit >= 0x1C24 && codeUnit <= 0x1C2B) ||
        (codeUnit >= 0x1C2C && codeUnit <= 0x1C33) ||
        (codeUnit >= 0x1C34 && codeUnit <= 0x1C35) ||
        (codeUnit >= 0x1C36 && codeUnit <= 0x1C37) ||
        (codeUnit >= 0x1C3B && codeUnit <= 0x1C3F) ||
        (codeUnit >= 0x1C40 && codeUnit <= 0x1C49) ||
        (codeUnit >= 0x1C4D && codeUnit <= 0x1C4F)
    );
  }

  static bool isOlChiki(int codeUnit) {
    return ((codeUnit >= 0x1C50 && codeUnit <= 0x1C59) ||
        (codeUnit >= 0x1C5A && codeUnit <= 0x1C77) ||
        (codeUnit >= 0x1C78 && codeUnit <= 0x1C7D) ||
        (codeUnit >= 0x1C7E && codeUnit <= 0x1C7F)
    );
  }

  static bool isVai(int codeUnit) {
    return ((codeUnit >= 0xA500 && codeUnit <= 0xA60B) ||
        (codeUnit == 0xA60C) ||
        (codeUnit >= 0xA60D && codeUnit <= 0xA60F) ||
        (codeUnit >= 0xA610 && codeUnit <= 0xA61F) ||
        (codeUnit >= 0xA620 && codeUnit <= 0xA629) ||
        (codeUnit >= 0xA62A && codeUnit <= 0xA62B)
    );
  }

  static bool isSaurashtra(int codeUnit) {
    return ((codeUnit >= 0xA880 && codeUnit <= 0xA881) ||
        (codeUnit >= 0xA882 && codeUnit <= 0xA8B3) ||
        (codeUnit >= 0xA8B4 && codeUnit <= 0xA8C3) ||
        (codeUnit >= 0xA8C4 && codeUnit <= 0xA8C5) ||
        (codeUnit >= 0xA8CE && codeUnit <= 0xA8CF) ||
        (codeUnit >= 0xA8D0 && codeUnit <= 0xA8D9)
    );
  }

  static bool isKayahLi(int codeUnit) {
    return ((codeUnit >= 0xA900 && codeUnit <= 0xA909) ||
        (codeUnit >= 0xA90A && codeUnit <= 0xA925) ||
        (codeUnit >= 0xA926 && codeUnit <= 0xA92D) ||
        (codeUnit == 0xA92F)
    );
  }

  static bool isRejang(int codeUnit) {
    return ((codeUnit >= 0xA930 && codeUnit <= 0xA946) ||
        (codeUnit >= 0xA947 && codeUnit <= 0xA951) ||
        (codeUnit >= 0xA952 && codeUnit <= 0xA953) ||
        (codeUnit == 0xA95F)
    );
  }

  static bool isLycian(int codeUnit) {
    return (codeUnit >= 0x10280 && codeUnit <= 0x1029C);
  }

  static bool isCarian(int codeUnit) {
    return (codeUnit >= 0x102A0 && codeUnit <= 0x102D0);
  }

  static bool isLydian(int codeUnit) {
    return ((codeUnit >= 0x10920 && codeUnit <= 0x10939) ||
        (codeUnit == 0x1093F)
    );
  }

  static bool isCham(int codeUnit) {
    return ((codeUnit >= 0xAA00 && codeUnit <= 0xAA28) ||
        (codeUnit >= 0xAA29 && codeUnit <= 0xAA2E) ||
        (codeUnit >= 0xAA2F && codeUnit <= 0xAA30) ||
        (codeUnit >= 0xAA31 && codeUnit <= 0xAA32) ||
        (codeUnit >= 0xAA33 && codeUnit <= 0xAA34) ||
        (codeUnit >= 0xAA35 && codeUnit <= 0xAA36) ||
        (codeUnit >= 0xAA40 && codeUnit <= 0xAA42) ||
        (codeUnit == 0xAA43) ||
        (codeUnit >= 0xAA44 && codeUnit <= 0xAA4B) ||
        (codeUnit == 0xAA4C) ||
        (codeUnit == 0xAA4D) ||
        (codeUnit >= 0xAA50 && codeUnit <= 0xAA59) ||
        (codeUnit >= 0xAA5C && codeUnit <= 0xAA5F)
    );
  }

  static bool isTaiTham(int codeUnit) {
    return ((codeUnit >= 0x1A20 && codeUnit <= 0x1A54) ||
        (codeUnit == 0x1A55) ||
        (codeUnit == 0x1A56) ||
        (codeUnit == 0x1A57) ||
        (codeUnit >= 0x1A58 && codeUnit <= 0x1A5E) ||
        (codeUnit == 0x1A60) ||
        (codeUnit == 0x1A61) ||
        (codeUnit == 0x1A62) ||
        (codeUnit >= 0x1A63 && codeUnit <= 0x1A64) ||
        (codeUnit >= 0x1A65 && codeUnit <= 0x1A6C) ||
        (codeUnit >= 0x1A6D && codeUnit <= 0x1A72) ||
        (codeUnit >= 0x1A73 && codeUnit <= 0x1A7C) ||
        (codeUnit == 0x1A7F) ||
        (codeUnit >= 0x1A80 && codeUnit <= 0x1A89) ||
        (codeUnit >= 0x1A90 && codeUnit <= 0x1A99) ||
        (codeUnit >= 0x1AA0 && codeUnit <= 0x1AA6) ||
        (codeUnit == 0x1AA7) ||
        (codeUnit >= 0x1AA8 && codeUnit <= 0x1AAD)
    );
  }

  static bool isTaiViet(int codeUnit) {
    return ((codeUnit >= 0xAA80 && codeUnit <= 0xAAAF) ||
        (codeUnit == 0xAAB0) ||
        (codeUnit == 0xAAB1) ||
        (codeUnit >= 0xAAB2 && codeUnit <= 0xAAB4) ||
        (codeUnit >= 0xAAB5 && codeUnit <= 0xAAB6) ||
        (codeUnit >= 0xAAB7 && codeUnit <= 0xAAB8) ||
        (codeUnit >= 0xAAB9 && codeUnit <= 0xAABD) ||
        (codeUnit >= 0xAABE && codeUnit <= 0xAABF) ||
        (codeUnit == 0xAAC0) ||
        (codeUnit == 0xAAC1) ||
        (codeUnit == 0xAAC2) ||
        (codeUnit >= 0xAADB && codeUnit <= 0xAADC) ||
        (codeUnit == 0xAADD) ||
        (codeUnit >= 0xAADE && codeUnit <= 0xAADF)
    );
  }

  static bool isAvestan(int codeUnit) {
    return ((codeUnit >= 0x10B00 && codeUnit <= 0x10B35) ||
        (codeUnit >= 0x10B39 && codeUnit <= 0x10B3F)
    );
  }

  static bool isEgyptianHieroglyphs(int codeUnit) {
    return ((codeUnit >= 0x13000 && codeUnit <= 0x1342E) ||
        (codeUnit >= 0x13430 && codeUnit <= 0x13438)
    );
  }

  static bool isSamaritan(int codeUnit) {
    return ((codeUnit >= 0x0800 && codeUnit <= 0x0815) ||
        (codeUnit >= 0x0816 && codeUnit <= 0x0819) ||
        (codeUnit == 0x081A) ||
        (codeUnit >= 0x081B && codeUnit <= 0x0823) ||
        (codeUnit == 0x0824) ||
        (codeUnit >= 0x0825 && codeUnit <= 0x0827) ||
        (codeUnit == 0x0828) ||
        (codeUnit >= 0x0829 && codeUnit <= 0x082D) ||
        (codeUnit >= 0x0830 && codeUnit <= 0x083E)
    );
  }

  static bool isLisu(int codeUnit) {
    return ((codeUnit >= 0xA4D0 && codeUnit <= 0xA4F7) ||
        (codeUnit >= 0xA4F8 && codeUnit <= 0xA4FD) ||
        (codeUnit >= 0xA4FE && codeUnit <= 0xA4FF)
    );
  }

  static bool isBamum(int codeUnit) {
    return ((codeUnit >= 0xA6A0 && codeUnit <= 0xA6E5) ||
        (codeUnit >= 0xA6E6 && codeUnit <= 0xA6EF) ||
        (codeUnit >= 0xA6F0 && codeUnit <= 0xA6F1) ||
        (codeUnit >= 0xA6F2 && codeUnit <= 0xA6F7) ||
        (codeUnit >= 0x16800 && codeUnit <= 0x16A38)
    );
  }

  static bool isJavanese(int codeUnit) {
    return ((codeUnit >= 0xA980 && codeUnit <= 0xA982) ||
        (codeUnit == 0xA983) ||
        (codeUnit >= 0xA984 && codeUnit <= 0xA9B2) ||
        (codeUnit == 0xA9B3) ||
        (codeUnit >= 0xA9B4 && codeUnit <= 0xA9B5) ||
        (codeUnit >= 0xA9B6 && codeUnit <= 0xA9B9) ||
        (codeUnit >= 0xA9BA && codeUnit <= 0xA9BB) ||
        (codeUnit >= 0xA9BC && codeUnit <= 0xA9BD) ||
        (codeUnit >= 0xA9BE && codeUnit <= 0xA9C0) ||
        (codeUnit >= 0xA9C1 && codeUnit <= 0xA9CD) ||
        (codeUnit >= 0xA9D0 && codeUnit <= 0xA9D9) ||
        (codeUnit >= 0xA9DE && codeUnit <= 0xA9DF)
    );
  }

  static bool isMeeteiMayek(int codeUnit) {
    return ((codeUnit >= 0xAAE0 && codeUnit <= 0xAAEA) ||
        (codeUnit == 0xAAEB) ||
        (codeUnit >= 0xAAEC && codeUnit <= 0xAAED) ||
        (codeUnit >= 0xAAEE && codeUnit <= 0xAAEF) ||
        (codeUnit >= 0xAAF0 && codeUnit <= 0xAAF1) ||
        (codeUnit == 0xAAF2) ||
        (codeUnit >= 0xAAF3 && codeUnit <= 0xAAF4) ||
        (codeUnit == 0xAAF5) ||
        (codeUnit == 0xAAF6) ||
        (codeUnit >= 0xABC0 && codeUnit <= 0xABE2) ||
        (codeUnit >= 0xABE3 && codeUnit <= 0xABE4) ||
        (codeUnit == 0xABE5) ||
        (codeUnit >= 0xABE6 && codeUnit <= 0xABE7) ||
        (codeUnit == 0xABE8) ||
        (codeUnit >= 0xABE9 && codeUnit <= 0xABEA) ||
        (codeUnit == 0xABEB) ||
        (codeUnit == 0xABEC) ||
        (codeUnit == 0xABED) ||
        (codeUnit >= 0xABF0 && codeUnit <= 0xABF9)
    );
  }

  static bool isImperialAramaic(int codeUnit) {
    return ((codeUnit >= 0x10840 && codeUnit <= 0x10855) ||
        (codeUnit == 0x10857) ||
        (codeUnit >= 0x10858 && codeUnit <= 0x1085F)
    );
  }

  static bool isOldSouthArabian(int codeUnit) {
    return ((codeUnit >= 0x10A60 && codeUnit <= 0x10A7C) ||
        (codeUnit >= 0x10A7D && codeUnit <= 0x10A7E) ||
        (codeUnit == 0x10A7F)
    );
  }

  static bool isInscriptionalParthian(int codeUnit) {
    return ((codeUnit >= 0x10B40 && codeUnit <= 0x10B55) ||
        (codeUnit >= 0x10B58 && codeUnit <= 0x10B5F)
    );
  }

  static bool isInscriptionalPahlavi(int codeUnit) {
    return ((codeUnit >= 0x10B60 && codeUnit <= 0x10B72) ||
        (codeUnit >= 0x10B78 && codeUnit <= 0x10B7F)
    );
  }

  static bool isOldTurkic(int codeUnit) {
    return (codeUnit >= 0x10C00 && codeUnit <= 0x10C48);
  }

  static bool isKaithi(int codeUnit) {
    return ((codeUnit >= 0x11080 && codeUnit <= 0x11081) ||
        (codeUnit == 0x11082) ||
        (codeUnit >= 0x11083 && codeUnit <= 0x110AF) ||
        (codeUnit >= 0x110B0 && codeUnit <= 0x110B2) ||
        (codeUnit >= 0x110B3 && codeUnit <= 0x110B6) ||
        (codeUnit >= 0x110B7 && codeUnit <= 0x110B8) ||
        (codeUnit >= 0x110B9 && codeUnit <= 0x110BA) ||
        (codeUnit >= 0x110BB && codeUnit <= 0x110BC) ||
        (codeUnit == 0x110BD) ||
        (codeUnit >= 0x110BE && codeUnit <= 0x110C1) ||
        (codeUnit == 0x110CD)
    );
  }

  static bool isBatak(int codeUnit) {
    return ((codeUnit >= 0x1BC0 && codeUnit <= 0x1BE5) ||
        (codeUnit == 0x1BE6) ||
        (codeUnit == 0x1BE7) ||
        (codeUnit >= 0x1BE8 && codeUnit <= 0x1BE9) ||
        (codeUnit >= 0x1BEA && codeUnit <= 0x1BEC) ||
        (codeUnit == 0x1BED) ||
        (codeUnit == 0x1BEE) ||
        (codeUnit >= 0x1BEF && codeUnit <= 0x1BF1) ||
        (codeUnit >= 0x1BF2 && codeUnit <= 0x1BF3) ||
        (codeUnit >= 0x1BFC && codeUnit <= 0x1BFF)
    );
  }

  static bool isBrahmi(int codeUnit) {
    return ((codeUnit == 0x11000) ||
        (codeUnit == 0x11001) ||
        (codeUnit == 0x11002) ||
        (codeUnit >= 0x11003 && codeUnit <= 0x11037) ||
        (codeUnit >= 0x11038 && codeUnit <= 0x11046) ||
        (codeUnit >= 0x11047 && codeUnit <= 0x1104D) ||
        (codeUnit >= 0x11052 && codeUnit <= 0x11065) ||
        (codeUnit >= 0x11066 && codeUnit <= 0x1106F) ||
        (codeUnit == 0x1107F)
    );
  }

  static bool isMandaic(int codeUnit) {
    return ((codeUnit >= 0x0840 && codeUnit <= 0x0858) ||
        (codeUnit >= 0x0859 && codeUnit <= 0x085B) ||
        (codeUnit == 0x085E)
    );
  }

  static bool isChakma(int codeUnit) {
    return ((codeUnit >= 0x11100 && codeUnit <= 0x11102) ||
        (codeUnit >= 0x11103 && codeUnit <= 0x11126) ||
        (codeUnit >= 0x11127 && codeUnit <= 0x1112B) ||
        (codeUnit == 0x1112C) ||
        (codeUnit >= 0x1112D && codeUnit <= 0x11134) ||
        (codeUnit >= 0x11136 && codeUnit <= 0x1113F) ||
        (codeUnit >= 0x11140 && codeUnit <= 0x11143) ||
        (codeUnit == 0x11144) ||
        (codeUnit >= 0x11145 && codeUnit <= 0x11146)
    );
  }

  static bool isMeroiticCursive(int codeUnit) {
    return ((codeUnit >= 0x109A0 && codeUnit <= 0x109B7) ||
        (codeUnit >= 0x109BC && codeUnit <= 0x109BD) ||
        (codeUnit >= 0x109BE && codeUnit <= 0x109BF) ||
        (codeUnit >= 0x109C0 && codeUnit <= 0x109CF) ||
        (codeUnit >= 0x109D2 && codeUnit <= 0x109FF)
    );
  }

  static bool isMeroiticHieroglyphs(int codeUnit) {
    return (codeUnit >= 0x10980 && codeUnit <= 0x1099F);
  }

  static bool isMiao(int codeUnit) {
    return ((codeUnit >= 0x16F00 && codeUnit <= 0x16F4A) ||
        (codeUnit == 0x16F4F) ||
        (codeUnit == 0x16F50) ||
        (codeUnit >= 0x16F51 && codeUnit <= 0x16F87) ||
        (codeUnit >= 0x16F8F && codeUnit <= 0x16F92) ||
        (codeUnit >= 0x16F93 && codeUnit <= 0x16F9F)
    );
  }

  static bool isSharada(int codeUnit) {
    return ((codeUnit >= 0x11180 && codeUnit <= 0x11181) ||
        (codeUnit == 0x11182) ||
        (codeUnit >= 0x11183 && codeUnit <= 0x111B2) ||
        (codeUnit >= 0x111B3 && codeUnit <= 0x111B5) ||
        (codeUnit >= 0x111B6 && codeUnit <= 0x111BE) ||
        (codeUnit >= 0x111BF && codeUnit <= 0x111C0) ||
        (codeUnit >= 0x111C1 && codeUnit <= 0x111C4) ||
        (codeUnit >= 0x111C5 && codeUnit <= 0x111C8) ||
        (codeUnit >= 0x111C9 && codeUnit <= 0x111CC) ||
        (codeUnit == 0x111CD) ||
        (codeUnit >= 0x111D0 && codeUnit <= 0x111D9) ||
        (codeUnit == 0x111DA) ||
        (codeUnit == 0x111DB) ||
        (codeUnit == 0x111DC) ||
        (codeUnit >= 0x111DD && codeUnit <= 0x111DF)
    );
  }

  static bool isSoraSompeng(int codeUnit) {
    return ((codeUnit >= 0x110D0 && codeUnit <= 0x110E8) ||
        (codeUnit >= 0x110F0 && codeUnit <= 0x110F9)
    );
  }

  static bool isTakri(int codeUnit) {
    return ((codeUnit >= 0x11680 && codeUnit <= 0x116AA) ||
        (codeUnit == 0x116AB) ||
        (codeUnit == 0x116AC) ||
        (codeUnit == 0x116AD) ||
        (codeUnit >= 0x116AE && codeUnit <= 0x116AF) ||
        (codeUnit >= 0x116B0 && codeUnit <= 0x116B5) ||
        (codeUnit == 0x116B6) ||
        (codeUnit == 0x116B7) ||
        (codeUnit == 0x116B8) ||
        (codeUnit >= 0x116C0 && codeUnit <= 0x116C9)
    );
  }

  static bool isCaucasianAlbanian(int codeUnit) {
    return ((codeUnit >= 0x10530 && codeUnit <= 0x10563) ||
        (codeUnit == 0x1056F)
    );
  }

  static bool isBassaVah(int codeUnit) {
    return ((codeUnit >= 0x16AD0 && codeUnit <= 0x16AED) ||
        (codeUnit >= 0x16AF0 && codeUnit <= 0x16AF4) ||
        (codeUnit == 0x16AF5)
    );
  }

  static bool isDuployan(int codeUnit) {
    return ((codeUnit >= 0x1BC00 && codeUnit <= 0x1BC6A) ||
        (codeUnit >= 0x1BC70 && codeUnit <= 0x1BC7C) ||
        (codeUnit >= 0x1BC80 && codeUnit <= 0x1BC88) ||
        (codeUnit >= 0x1BC90 && codeUnit <= 0x1BC99) ||
        (codeUnit == 0x1BC9C) ||
        (codeUnit >= 0x1BC9D && codeUnit <= 0x1BC9E) ||
        (codeUnit == 0x1BC9F)
    );
  }

  static bool isElbasan(int codeUnit) {
    return (codeUnit >= 0x10500 && codeUnit <= 0x10527);
  }

  static bool isGrantha(int codeUnit) {
    return ((codeUnit >= 0x11300 && codeUnit <= 0x11301) ||
        (codeUnit >= 0x11302 && codeUnit <= 0x11303) ||
        (codeUnit >= 0x11305 && codeUnit <= 0x1130C) ||
        (codeUnit >= 0x1130F && codeUnit <= 0x11310) ||
        (codeUnit >= 0x11313 && codeUnit <= 0x11328) ||
        (codeUnit >= 0x1132A && codeUnit <= 0x11330) ||
        (codeUnit >= 0x11332 && codeUnit <= 0x11333) ||
        (codeUnit >= 0x11335 && codeUnit <= 0x11339) ||
        (codeUnit == 0x1133C) ||
        (codeUnit == 0x1133D) ||
        (codeUnit >= 0x1133E && codeUnit <= 0x1133F) ||
        (codeUnit == 0x11340) ||
        (codeUnit >= 0x11341 && codeUnit <= 0x11344) ||
        (codeUnit >= 0x11347 && codeUnit <= 0x11348) ||
        (codeUnit >= 0x1134B && codeUnit <= 0x1134D) ||
        (codeUnit == 0x11350) ||
        (codeUnit == 0x11357) ||
        (codeUnit >= 0x1135D && codeUnit <= 0x11361) ||
        (codeUnit >= 0x11362 && codeUnit <= 0x11363) ||
        (codeUnit >= 0x11366 && codeUnit <= 0x1136C) ||
        (codeUnit >= 0x11370 && codeUnit <= 0x11374)
    );
  }

  static bool isPahawhHmong(int codeUnit) {
    return ((codeUnit >= 0x16B00 && codeUnit <= 0x16B2F) ||
        (codeUnit >= 0x16B30 && codeUnit <= 0x16B36) ||
        (codeUnit >= 0x16B37 && codeUnit <= 0x16B3B) ||
        (codeUnit >= 0x16B3C && codeUnit <= 0x16B3F) ||
        (codeUnit >= 0x16B40 && codeUnit <= 0x16B43) ||
        (codeUnit == 0x16B44) ||
        (codeUnit == 0x16B45) ||
        (codeUnit >= 0x16B50 && codeUnit <= 0x16B59) ||
        (codeUnit >= 0x16B5B && codeUnit <= 0x16B61) ||
        (codeUnit >= 0x16B63 && codeUnit <= 0x16B77) ||
        (codeUnit >= 0x16B7D && codeUnit <= 0x16B8F)
    );
  }

  static bool isKhojki(int codeUnit) {
    return ((codeUnit >= 0x11200 && codeUnit <= 0x11211) ||
        (codeUnit >= 0x11213 && codeUnit <= 0x1122B) ||
        (codeUnit >= 0x1122C && codeUnit <= 0x1122E) ||
        (codeUnit >= 0x1122F && codeUnit <= 0x11231) ||
        (codeUnit >= 0x11232 && codeUnit <= 0x11233) ||
        (codeUnit == 0x11234) ||
        (codeUnit == 0x11235) ||
        (codeUnit >= 0x11236 && codeUnit <= 0x11237) ||
        (codeUnit >= 0x11238 && codeUnit <= 0x1123D) ||
        (codeUnit == 0x1123E)
    );
  }

  static bool isLinearA(int codeUnit) {
    return ((codeUnit >= 0x10600 && codeUnit <= 0x10736) ||
        (codeUnit >= 0x10740 && codeUnit <= 0x10755) ||
        (codeUnit >= 0x10760 && codeUnit <= 0x10767)
    );
  }

  static bool isMahajani(int codeUnit) {
    return ((codeUnit >= 0x11150 && codeUnit <= 0x11172) ||
        (codeUnit == 0x11173) ||
        (codeUnit >= 0x11174 && codeUnit <= 0x11175) ||
        (codeUnit == 0x11176)
    );
  }

  static bool isManichaean(int codeUnit) {
    return ((codeUnit >= 0x10AC0 && codeUnit <= 0x10AC7) ||
        (codeUnit == 0x10AC8) ||
        (codeUnit >= 0x10AC9 && codeUnit <= 0x10AE4) ||
        (codeUnit >= 0x10AE5 && codeUnit <= 0x10AE6) ||
        (codeUnit >= 0x10AEB && codeUnit <= 0x10AEF) ||
        (codeUnit >= 0x10AF0 && codeUnit <= 0x10AF6)
    );
  }

  static bool isMendeKikakui(int codeUnit) {
    return ((codeUnit >= 0x1E800 && codeUnit <= 0x1E8C4) ||
        (codeUnit >= 0x1E8C7 && codeUnit <= 0x1E8CF) ||
        (codeUnit >= 0x1E8D0 && codeUnit <= 0x1E8D6)
    );
  }

  static bool isModi(int codeUnit) {
    return ((codeUnit >= 0x11600 && codeUnit <= 0x1162F) ||
        (codeUnit >= 0x11630 && codeUnit <= 0x11632) ||
        (codeUnit >= 0x11633 && codeUnit <= 0x1163A) ||
        (codeUnit >= 0x1163B && codeUnit <= 0x1163C) ||
        (codeUnit == 0x1163D) ||
        (codeUnit == 0x1163E) ||
        (codeUnit >= 0x1163F && codeUnit <= 0x11640) ||
        (codeUnit >= 0x11641 && codeUnit <= 0x11643) ||
        (codeUnit == 0x11644) ||
        (codeUnit >= 0x11650 && codeUnit <= 0x11659)
    );
  }

  static bool isMro(int codeUnit) {
    return ((codeUnit >= 0x16A40 && codeUnit <= 0x16A5E) ||
        (codeUnit >= 0x16A60 && codeUnit <= 0x16A69) ||
        (codeUnit >= 0x16A6E && codeUnit <= 0x16A6F)
    );
  }

  static bool isOldNorthArabian(int codeUnit) {
    return ((codeUnit >= 0x10A80 && codeUnit <= 0x10A9C) ||
        (codeUnit >= 0x10A9D && codeUnit <= 0x10A9F)
    );
  }

  static bool isNabataean(int codeUnit) {
    return ((codeUnit >= 0x10880 && codeUnit <= 0x1089E) ||
        (codeUnit >= 0x108A7 && codeUnit <= 0x108AF)
    );
  }

  static bool isPalmyrene(int codeUnit) {
    return ((codeUnit >= 0x10860 && codeUnit <= 0x10876) ||
        (codeUnit >= 0x10877 && codeUnit <= 0x10878) ||
        (codeUnit >= 0x10879 && codeUnit <= 0x1087F)
    );
  }

  static bool isPauCinHau(int codeUnit) {
    return (codeUnit >= 0x11AC0 && codeUnit <= 0x11AF8);
  }

  static bool isOldPermic(int codeUnit) {
    return ((codeUnit >= 0x10350 && codeUnit <= 0x10375) ||
        (codeUnit >= 0x10376 && codeUnit <= 0x1037A)
    );
  }

  static bool isPsalterPahlavi(int codeUnit) {
    return ((codeUnit >= 0x10B80 && codeUnit <= 0x10B91) ||
        (codeUnit >= 0x10B99 && codeUnit <= 0x10B9C) ||
        (codeUnit >= 0x10BA9 && codeUnit <= 0x10BAF)
    );
  }

  static bool isSiddham(int codeUnit) {
    return ((codeUnit >= 0x11580 && codeUnit <= 0x115AE) ||
        (codeUnit >= 0x115AF && codeUnit <= 0x115B1) ||
        (codeUnit >= 0x115B2 && codeUnit <= 0x115B5) ||
        (codeUnit >= 0x115B8 && codeUnit <= 0x115BB) ||
        (codeUnit >= 0x115BC && codeUnit <= 0x115BD) ||
        (codeUnit == 0x115BE) ||
        (codeUnit >= 0x115BF && codeUnit <= 0x115C0) ||
        (codeUnit >= 0x115C1 && codeUnit <= 0x115D7) ||
        (codeUnit >= 0x115D8 && codeUnit <= 0x115DB) ||
        (codeUnit >= 0x115DC && codeUnit <= 0x115DD)
    );
  }

  static bool isKhudawadi(int codeUnit) {
    return ((codeUnit >= 0x112B0 && codeUnit <= 0x112DE) ||
        (codeUnit == 0x112DF) ||
        (codeUnit >= 0x112E0 && codeUnit <= 0x112E2) ||
        (codeUnit >= 0x112E3 && codeUnit <= 0x112EA) ||
        (codeUnit >= 0x112F0 && codeUnit <= 0x112F9)
    );
  }

  static bool isTirhuta(int codeUnit) {
    return ((codeUnit >= 0x11480 && codeUnit <= 0x114AF) ||
        (codeUnit >= 0x114B0 && codeUnit <= 0x114B2) ||
        (codeUnit >= 0x114B3 && codeUnit <= 0x114B8) ||
        (codeUnit == 0x114B9) ||
        (codeUnit == 0x114BA) ||
        (codeUnit >= 0x114BB && codeUnit <= 0x114BE) ||
        (codeUnit >= 0x114BF && codeUnit <= 0x114C0) ||
        (codeUnit == 0x114C1) ||
        (codeUnit >= 0x114C2 && codeUnit <= 0x114C3) ||
        (codeUnit >= 0x114C4 && codeUnit <= 0x114C5) ||
        (codeUnit == 0x114C6) ||
        (codeUnit == 0x114C7) ||
        (codeUnit >= 0x114D0 && codeUnit <= 0x114D9)
    );
  }

  static bool isWarangCiti(int codeUnit) {
    return ((codeUnit >= 0x118A0 && codeUnit <= 0x118DF) ||
        (codeUnit >= 0x118E0 && codeUnit <= 0x118E9) ||
        (codeUnit >= 0x118EA && codeUnit <= 0x118F2) ||
        (codeUnit == 0x118FF)
    );
  }

  static bool isAhom(int codeUnit) {
    return ((codeUnit >= 0x11700 && codeUnit <= 0x1171A) ||
        (codeUnit >= 0x1171D && codeUnit <= 0x1171F) ||
        (codeUnit >= 0x11720 && codeUnit <= 0x11721) ||
        (codeUnit >= 0x11722 && codeUnit <= 0x11725) ||
        (codeUnit == 0x11726) ||
        (codeUnit >= 0x11727 && codeUnit <= 0x1172B) ||
        (codeUnit >= 0x11730 && codeUnit <= 0x11739) ||
        (codeUnit >= 0x1173A && codeUnit <= 0x1173B) ||
        (codeUnit >= 0x1173C && codeUnit <= 0x1173E) ||
        (codeUnit == 0x1173F)
    );
  }

  static bool isAnatolianHieroglyphs(int codeUnit) {
    return (codeUnit >= 0x14400 && codeUnit <= 0x14646);
  }

  static bool isHatran(int codeUnit) {
    return ((codeUnit >= 0x108E0 && codeUnit <= 0x108F2) ||
        (codeUnit >= 0x108F4 && codeUnit <= 0x108F5) ||
        (codeUnit >= 0x108FB && codeUnit <= 0x108FF)
    );
  }

  static bool isMultani(int codeUnit) {
    return ((codeUnit >= 0x11280 && codeUnit <= 0x11286) ||
        (codeUnit == 0x11288) ||
        (codeUnit >= 0x1128A && codeUnit <= 0x1128D) ||
        (codeUnit >= 0x1128F && codeUnit <= 0x1129D) ||
        (codeUnit >= 0x1129F && codeUnit <= 0x112A8) ||
        (codeUnit == 0x112A9)
    );
  }

  static bool isOldHungarian(int codeUnit) {
    return ((codeUnit >= 0x10C80 && codeUnit <= 0x10CB2) ||
        (codeUnit >= 0x10CC0 && codeUnit <= 0x10CF2) ||
        (codeUnit >= 0x10CFA && codeUnit <= 0x10CFF)
    );
  }

  static bool isSignWriting(int codeUnit) {
    return ((codeUnit >= 0x1D800 && codeUnit <= 0x1D9FF) ||
        (codeUnit >= 0x1DA00 && codeUnit <= 0x1DA36) ||
        (codeUnit >= 0x1DA37 && codeUnit <= 0x1DA3A) ||
        (codeUnit >= 0x1DA3B && codeUnit <= 0x1DA6C) ||
        (codeUnit >= 0x1DA6D && codeUnit <= 0x1DA74) ||
        (codeUnit == 0x1DA75) ||
        (codeUnit >= 0x1DA76 && codeUnit <= 0x1DA83) ||
        (codeUnit == 0x1DA84) ||
        (codeUnit >= 0x1DA85 && codeUnit <= 0x1DA86) ||
        (codeUnit >= 0x1DA87 && codeUnit <= 0x1DA8B) ||
        (codeUnit >= 0x1DA9B && codeUnit <= 0x1DA9F) ||
        (codeUnit >= 0x1DAA1 && codeUnit <= 0x1DAAF)
    );
  }

  static bool isAdlam(int codeUnit) {
    return ((codeUnit >= 0x1E900 && codeUnit <= 0x1E943) ||
        (codeUnit >= 0x1E944 && codeUnit <= 0x1E94A) ||
        (codeUnit == 0x1E94B) ||
        (codeUnit >= 0x1E950 && codeUnit <= 0x1E959) ||
        (codeUnit >= 0x1E95E && codeUnit <= 0x1E95F)
    );
  }

  static bool isBhaiksuki(int codeUnit) {
    return ((codeUnit >= 0x11C00 && codeUnit <= 0x11C08) ||
        (codeUnit >= 0x11C0A && codeUnit <= 0x11C2E) ||
        (codeUnit == 0x11C2F) ||
        (codeUnit >= 0x11C30 && codeUnit <= 0x11C36) ||
        (codeUnit >= 0x11C38 && codeUnit <= 0x11C3D) ||
        (codeUnit == 0x11C3E) ||
        (codeUnit == 0x11C3F) ||
        (codeUnit == 0x11C40) ||
        (codeUnit >= 0x11C41 && codeUnit <= 0x11C45) ||
        (codeUnit >= 0x11C50 && codeUnit <= 0x11C59) ||
        (codeUnit >= 0x11C5A && codeUnit <= 0x11C6C)
    );
  }

  static bool isMarchen(int codeUnit) {
    return ((codeUnit >= 0x11C70 && codeUnit <= 0x11C71) ||
        (codeUnit >= 0x11C72 && codeUnit <= 0x11C8F) ||
        (codeUnit >= 0x11C92 && codeUnit <= 0x11CA7) ||
        (codeUnit == 0x11CA9) ||
        (codeUnit >= 0x11CAA && codeUnit <= 0x11CB0) ||
        (codeUnit == 0x11CB1) ||
        (codeUnit >= 0x11CB2 && codeUnit <= 0x11CB3) ||
        (codeUnit == 0x11CB4) ||
        (codeUnit >= 0x11CB5 && codeUnit <= 0x11CB6)
    );
  }

  static bool isNewa(int codeUnit) {
    return ((codeUnit >= 0x11400 && codeUnit <= 0x11434) ||
        (codeUnit >= 0x11435 && codeUnit <= 0x11437) ||
        (codeUnit >= 0x11438 && codeUnit <= 0x1143F) ||
        (codeUnit >= 0x11440 && codeUnit <= 0x11441) ||
        (codeUnit >= 0x11442 && codeUnit <= 0x11444) ||
        (codeUnit == 0x11445) ||
        (codeUnit == 0x11446) ||
        (codeUnit >= 0x11447 && codeUnit <= 0x1144A) ||
        (codeUnit >= 0x1144B && codeUnit <= 0x1144F) ||
        (codeUnit >= 0x11450 && codeUnit <= 0x11459) ||
        (codeUnit == 0x1145B) ||
        (codeUnit == 0x1145D) ||
        (codeUnit == 0x1145E) ||
        (codeUnit == 0x1145F)
    );
  }

  static bool isOsage(int codeUnit) {
    return ((codeUnit >= 0x104B0 && codeUnit <= 0x104D3) ||
        (codeUnit >= 0x104D8 && codeUnit <= 0x104FB)
    );
  }

  static bool isTangut(int codeUnit) {
    return ((codeUnit == 0x16FE0) ||
        (codeUnit >= 0x17000 && codeUnit <= 0x187F7) ||
        (codeUnit >= 0x18800 && codeUnit <= 0x18AF2)
    );
  }

  static bool isMasaramGondi(int codeUnit) {
    return ((codeUnit >= 0x11D00 && codeUnit <= 0x11D06) ||
        (codeUnit >= 0x11D08 && codeUnit <= 0x11D09) ||
        (codeUnit >= 0x11D0B && codeUnit <= 0x11D30) ||
        (codeUnit >= 0x11D31 && codeUnit <= 0x11D36) ||
        (codeUnit == 0x11D3A) ||
        (codeUnit >= 0x11D3C && codeUnit <= 0x11D3D) ||
        (codeUnit >= 0x11D3F && codeUnit <= 0x11D45) ||
        (codeUnit == 0x11D46) ||
        (codeUnit == 0x11D47) ||
        (codeUnit >= 0x11D50 && codeUnit <= 0x11D59)
    );
  }

  static bool isNushu(int codeUnit) {
    return ((codeUnit == 0x16FE1) ||
        (codeUnit >= 0x1B170 && codeUnit <= 0x1B2FB)
    );
  }

  static bool isSoyombo(int codeUnit) {
    return ((codeUnit == 0x11A50) ||
        (codeUnit >= 0x11A51 && codeUnit <= 0x11A56) ||
        (codeUnit >= 0x11A57 && codeUnit <= 0x11A58) ||
        (codeUnit >= 0x11A59 && codeUnit <= 0x11A5B) ||
        (codeUnit >= 0x11A5C && codeUnit <= 0x11A89) ||
        (codeUnit >= 0x11A8A && codeUnit <= 0x11A96) ||
        (codeUnit == 0x11A97) ||
        (codeUnit >= 0x11A98 && codeUnit <= 0x11A99) ||
        (codeUnit >= 0x11A9A && codeUnit <= 0x11A9C) ||
        (codeUnit == 0x11A9D) ||
        (codeUnit >= 0x11A9E && codeUnit <= 0x11AA2)
    );
  }

  static bool isZanabazarSquare(int codeUnit) {
    return ((codeUnit == 0x11A00) ||
        (codeUnit >= 0x11A01 && codeUnit <= 0x11A0A) ||
        (codeUnit >= 0x11A0B && codeUnit <= 0x11A32) ||
        (codeUnit >= 0x11A33 && codeUnit <= 0x11A38) ||
        (codeUnit == 0x11A39) ||
        (codeUnit == 0x11A3A) ||
        (codeUnit >= 0x11A3B && codeUnit <= 0x11A3E) ||
        (codeUnit >= 0x11A3F && codeUnit <= 0x11A46) ||
        (codeUnit == 0x11A47)
    );
  }

  static bool isDogra(int codeUnit) {
    return ((codeUnit >= 0x11800 && codeUnit <= 0x1182B) ||
        (codeUnit >= 0x1182C && codeUnit <= 0x1182E) ||
        (codeUnit >= 0x1182F && codeUnit <= 0x11837) ||
        (codeUnit == 0x11838) ||
        (codeUnit >= 0x11839 && codeUnit <= 0x1183A) ||
        (codeUnit == 0x1183B)
    );
  }

  static bool isGunjalaGondi(int codeUnit) {
    return ((codeUnit >= 0x11D60 && codeUnit <= 0x11D65) ||
        (codeUnit >= 0x11D67 && codeUnit <= 0x11D68) ||
        (codeUnit >= 0x11D6A && codeUnit <= 0x11D89) ||
        (codeUnit >= 0x11D8A && codeUnit <= 0x11D8E) ||
        (codeUnit >= 0x11D90 && codeUnit <= 0x11D91) ||
        (codeUnit >= 0x11D93 && codeUnit <= 0x11D94) ||
        (codeUnit == 0x11D95) ||
        (codeUnit == 0x11D96) ||
        (codeUnit == 0x11D97) ||
        (codeUnit == 0x11D98) ||
        (codeUnit >= 0x11DA0 && codeUnit <= 0x11DA9)
    );
  }

  static bool isMakasar(int codeUnit) {
    return ((codeUnit >= 0x11EE0 && codeUnit <= 0x11EF2) ||
        (codeUnit >= 0x11EF3 && codeUnit <= 0x11EF4) ||
        (codeUnit >= 0x11EF5 && codeUnit <= 0x11EF6) ||
        (codeUnit >= 0x11EF7 && codeUnit <= 0x11EF8)
    );
  }

  static bool isMedefaidrin(int codeUnit) {
    return ((codeUnit >= 0x16E40 && codeUnit <= 0x16E7F) ||
        (codeUnit >= 0x16E80 && codeUnit <= 0x16E96) ||
        (codeUnit >= 0x16E97 && codeUnit <= 0x16E9A)
    );
  }

  static bool isHanifiRohingya(int codeUnit) {
    return ((codeUnit >= 0x10D00 && codeUnit <= 0x10D23) ||
        (codeUnit >= 0x10D24 && codeUnit <= 0x10D27) ||
        (codeUnit >= 0x10D30 && codeUnit <= 0x10D39)
    );
  }

  static bool isSogdian(int codeUnit) {
    return ((codeUnit >= 0x10F30 && codeUnit <= 0x10F45) ||
        (codeUnit >= 0x10F46 && codeUnit <= 0x10F50) ||
        (codeUnit >= 0x10F51 && codeUnit <= 0x10F54) ||
        (codeUnit >= 0x10F55 && codeUnit <= 0x10F59)
    );
  }

  static bool isOldSogdian(int codeUnit) {
    return ((codeUnit >= 0x10F00 && codeUnit <= 0x10F1C) ||
        (codeUnit >= 0x10F1D && codeUnit <= 0x10F26) ||
        (codeUnit == 0x10F27)
    );
  }

  static bool isElymaic(int codeUnit) {
    return (codeUnit >= 0x10FE0 && codeUnit <= 0x10FF6);
  }

  static bool isNandinagari(int codeUnit) {
    return ((codeUnit >= 0x119A0 && codeUnit <= 0x119A7) ||
        (codeUnit >= 0x119AA && codeUnit <= 0x119D0) ||
        (codeUnit >= 0x119D1 && codeUnit <= 0x119D3) ||
        (codeUnit >= 0x119D4 && codeUnit <= 0x119D7) ||
        (codeUnit >= 0x119DA && codeUnit <= 0x119DB) ||
        (codeUnit >= 0x119DC && codeUnit <= 0x119DF) ||
        (codeUnit == 0x119E0) ||
        (codeUnit == 0x119E1) ||
        (codeUnit == 0x119E2) ||
        (codeUnit == 0x119E3) ||
        (codeUnit == 0x119E4)
    );
  }

  static bool isNyiakengPuachueHmong(int codeUnit) {
    return ((codeUnit >= 0x1E100 && codeUnit <= 0x1E12C) ||
        (codeUnit >= 0x1E130 && codeUnit <= 0x1E136) ||
        (codeUnit >= 0x1E137 && codeUnit <= 0x1E13D) ||
        (codeUnit >= 0x1E140 && codeUnit <= 0x1E149) ||
        (codeUnit == 0x1E14E) ||
        (codeUnit == 0x1E14F)
    );
  }

  static bool isWancho(int codeUnit) {
    return ((codeUnit >= 0x1E2C0 && codeUnit <= 0x1E2EB) ||
        (codeUnit >= 0x1E2EC && codeUnit <= 0x1E2EF) ||
        (codeUnit >= 0x1E2F0 && codeUnit <= 0x1E2F9) ||
        (codeUnit == 0x1E2FF)
    );
  }


}


