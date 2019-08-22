import 'script.dart';

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

static List<Script> scripts = [
    Script(0x0000, 0x001F, 'Common', 'Cc'),
    Script(0x0020, 0x0020, 'Common', 'Zs'),
    Script(0x0021, 0x0023, 'Common', 'Po'),
    Script(0x0024, 0x0024, 'Common', 'Sc'),
    Script(0x0025, 0x0027, 'Common', 'Po'),
    Script(0x0028, 0x0028, 'Common', 'Ps'),
    Script(0x0029, 0x0029, 'Common', 'Pe'),
    Script(0x002A, 0x002A, 'Common', 'Po'),
    Script(0x002B, 0x002B, 'Common', 'Sm'),
    Script(0x002C, 0x002C, 'Common', 'Po'),
    Script(0x002D, 0x002D, 'Common', 'Pd'),
    Script(0x002E, 0x002F, 'Common', 'Po'),
    Script(0x0030, 0x0039, 'Common', 'Nd'),
    Script(0x003A, 0x003B, 'Common', 'Po'),
    Script(0x003C, 0x003E, 'Common', 'Sm'),
    Script(0x003F, 0x0040, 'Common', 'Po'),
    Script(0x005B, 0x005B, 'Common', 'Ps'),
    Script(0x005C, 0x005C, 'Common', 'Po'),
    Script(0x005D, 0x005D, 'Common', 'Pe'),
    Script(0x005E, 0x005E, 'Common', 'Sk'),
    Script(0x005F, 0x005F, 'Common', 'Pc'),
    Script(0x0060, 0x0060, 'Common', 'Sk'),
    Script(0x007B, 0x007B, 'Common', 'Ps'),
    Script(0x007C, 0x007C, 'Common', 'Sm'),
    Script(0x007D, 0x007D, 'Common', 'Pe'),
    Script(0x007E, 0x007E, 'Common', 'Sm'),
    Script(0x007F, 0x009F, 'Common', 'Cc'),
    Script(0x00A0, 0x00A0, 'Common', 'Zs'),
    Script(0x00A1, 0x00A1, 'Common', 'Po'),
    Script(0x00A2, 0x00A5, 'Common', 'Sc'),
    Script(0x00A6, 0x00A6, 'Common', 'So'),
    Script(0x00A7, 0x00A7, 'Common', 'Po'),
    Script(0x00A8, 0x00A8, 'Common', 'Sk'),
    Script(0x00A9, 0x00A9, 'Common', 'So'),
    Script(0x00AB, 0x00AB, 'Common', 'Pi'),
    Script(0x00AC, 0x00AC, 'Common', 'Sm'),
    Script(0x00AD, 0x00AD, 'Common', 'Cf'),
    Script(0x00AE, 0x00AE, 'Common', 'So'),
    Script(0x00AF, 0x00AF, 'Common', 'Sk'),
    Script(0x00B0, 0x00B0, 'Common', 'So'),
    Script(0x00B1, 0x00B1, 'Common', 'Sm'),
    Script(0x00B2, 0x00B3, 'Common', 'No'),
    Script(0x00B4, 0x00B4, 'Common', 'Sk'),
    Script(0x00B5, 0x00B5, 'Common', 'L&'),
    Script(0x00B6, 0x00B7, 'Common', 'Po'),
    Script(0x00B8, 0x00B8, 'Common', 'Sk'),
    Script(0x00B9, 0x00B9, 'Common', 'No'),
    Script(0x00BB, 0x00BB, 'Common', 'Pf'),
    Script(0x00BC, 0x00BE, 'Common', 'No'),
    Script(0x00BF, 0x00BF, 'Common', 'Po'),
    Script(0x00D7, 0x00D7, 'Common', 'Sm'),
    Script(0x00F7, 0x00F7, 'Common', 'Sm'),
    Script(0x02B9, 0x02C1, 'Common', 'Lm'),
    Script(0x02C2, 0x02C5, 'Common', 'Sk'),
    Script(0x02C6, 0x02D1, 'Common', 'Lm'),
    Script(0x02D2, 0x02DF, 'Common', 'Sk'),
    Script(0x02E5, 0x02E9, 'Common', 'Sk'),
    Script(0x02EC, 0x02EC, 'Common', 'Lm'),
    Script(0x02ED, 0x02ED, 'Common', 'Sk'),
    Script(0x02EE, 0x02EE, 'Common', 'Lm'),
    Script(0x02EF, 0x02FF, 'Common', 'Sk'),
    Script(0x0374, 0x0374, 'Common', 'Lm'),
    Script(0x037E, 0x037E, 'Common', 'Po'),
    Script(0x0385, 0x0385, 'Common', 'Sk'),
    Script(0x0387, 0x0387, 'Common', 'Po'),
    Script(0x0589, 0x0589, 'Common', 'Po'),
    Script(0x0605, 0x0605, 'Common', 'Cf'),
    Script(0x060C, 0x060C, 'Common', 'Po'),
    Script(0x061B, 0x061B, 'Common', 'Po'),
    Script(0x061F, 0x061F, 'Common', 'Po'),
    Script(0x0640, 0x0640, 'Common', 'Lm'),
    Script(0x06DD, 0x06DD, 'Common', 'Cf'),
    Script(0x08E2, 0x08E2, 'Common', 'Cf'),
    Script(0x0964, 0x0965, 'Common', 'Po'),
    Script(0x0E3F, 0x0E3F, 'Common', 'Sc'),
    Script(0x0FD5, 0x0FD8, 'Common', 'So'),
    Script(0x10FB, 0x10FB, 'Common', 'Po'),
    Script(0x16EB, 0x16ED, 'Common', 'Po'),
    Script(0x1735, 0x1736, 'Common', 'Po'),
    Script(0x1802, 0x1803, 'Common', 'Po'),
    Script(0x1805, 0x1805, 'Common', 'Po'),
    Script(0x1CD3, 0x1CD3, 'Common', 'Po'),
    Script(0x1CE1, 0x1CE1, 'Common', 'Mc'),
    Script(0x1CE9, 0x1CEC, 'Common', 'Lo'),
    Script(0x1CEE, 0x1CF3, 'Common', 'Lo'),
    Script(0x1CF5, 0x1CF6, 'Common', 'Lo'),
    Script(0x1CF7, 0x1CF7, 'Common', 'Mc'),
    Script(0x1CFA, 0x1CFA, 'Common', 'Lo'),
    Script(0x2000, 0x200A, 'Common', 'Zs'),
    Script(0x200B, 0x200B, 'Common', 'Cf'),
    Script(0x200E, 0x200F, 'Common', 'Cf'),
    Script(0x2010, 0x2015, 'Common', 'Pd'),
    Script(0x2016, 0x2017, 'Common', 'Po'),
    Script(0x2018, 0x2018, 'Common', 'Pi'),
    Script(0x2019, 0x2019, 'Common', 'Pf'),
    Script(0x201A, 0x201A, 'Common', 'Ps'),
    Script(0x201B, 0x201C, 'Common', 'Pi'),
    Script(0x201D, 0x201D, 'Common', 'Pf'),
    Script(0x201E, 0x201E, 'Common', 'Ps'),
    Script(0x201F, 0x201F, 'Common', 'Pi'),
    Script(0x2020, 0x2027, 'Common', 'Po'),
    Script(0x2028, 0x2028, 'Common', 'Zl'),
    Script(0x2029, 0x2029, 'Common', 'Zp'),
    Script(0x202A, 0x202E, 'Common', 'Cf'),
    Script(0x202F, 0x202F, 'Common', 'Zs'),
    Script(0x2030, 0x2038, 'Common', 'Po'),
    Script(0x2039, 0x2039, 'Common', 'Pi'),
    Script(0x203A, 0x203A, 'Common', 'Pf'),
    Script(0x203B, 0x203E, 'Common', 'Po'),
    Script(0x203F, 0x2040, 'Common', 'Pc'),
    Script(0x2041, 0x2043, 'Common', 'Po'),
    Script(0x2044, 0x2044, 'Common', 'Sm'),
    Script(0x2045, 0x2045, 'Common', 'Ps'),
    Script(0x2046, 0x2046, 'Common', 'Pe'),
    Script(0x2047, 0x2051, 'Common', 'Po'),
    Script(0x2052, 0x2052, 'Common', 'Sm'),
    Script(0x2053, 0x2053, 'Common', 'Po'),
    Script(0x2054, 0x2054, 'Common', 'Pc'),
    Script(0x2055, 0x205E, 'Common', 'Po'),
    Script(0x205F, 0x205F, 'Common', 'Zs'),
    Script(0x2060, 0x2064, 'Common', 'Cf'),
    Script(0x2066, 0x206F, 'Common', 'Cf'),
    Script(0x2070, 0x2070, 'Common', 'No'),
    Script(0x2074, 0x2079, 'Common', 'No'),
    Script(0x207A, 0x207C, 'Common', 'Sm'),
    Script(0x207D, 0x207D, 'Common', 'Ps'),
    Script(0x207E, 0x207E, 'Common', 'Pe'),
    Script(0x2080, 0x2089, 'Common', 'No'),
    Script(0x208A, 0x208C, 'Common', 'Sm'),
    Script(0x208D, 0x208D, 'Common', 'Ps'),
    Script(0x208E, 0x208E, 'Common', 'Pe'),
    Script(0x20A0, 0x20BF, 'Common', 'Sc'),
    Script(0x2100, 0x2101, 'Common', 'So'),
    Script(0x2102, 0x2102, 'Common', 'L&'),
    Script(0x2103, 0x2106, 'Common', 'So'),
    Script(0x2107, 0x2107, 'Common', 'L&'),
    Script(0x2108, 0x2109, 'Common', 'So'),
    Script(0x210A, 0x2113, 'Common', 'L&'),
    Script(0x2114, 0x2114, 'Common', 'So'),
    Script(0x2115, 0x2115, 'Common', 'L&'),
    Script(0x2116, 0x2117, 'Common', 'So'),
    Script(0x2118, 0x2118, 'Common', 'Sm'),
    Script(0x2119, 0x211D, 'Common', 'L&'),
    Script(0x211E, 0x2123, 'Common', 'So'),
    Script(0x2124, 0x2124, 'Common', 'L&'),
    Script(0x2125, 0x2125, 'Common', 'So'),
    Script(0x2127, 0x2127, 'Common', 'So'),
    Script(0x2128, 0x2128, 'Common', 'L&'),
    Script(0x2129, 0x2129, 'Common', 'So'),
    Script(0x212C, 0x212D, 'Common', 'L&'),
    Script(0x212E, 0x212E, 'Common', 'So'),
    Script(0x212F, 0x2131, 'Common', 'L&'),
    Script(0x2133, 0x2134, 'Common', 'L&'),
    Script(0x2135, 0x2138, 'Common', 'Lo'),
    Script(0x2139, 0x2139, 'Common', 'L&'),
    Script(0x213A, 0x213B, 'Common', 'So'),
    Script(0x213C, 0x213F, 'Common', 'L&'),
    Script(0x2140, 0x2144, 'Common', 'Sm'),
    Script(0x2145, 0x2149, 'Common', 'L&'),
    Script(0x214A, 0x214A, 'Common', 'So'),
    Script(0x214B, 0x214B, 'Common', 'Sm'),
    Script(0x214C, 0x214D, 'Common', 'So'),
    Script(0x214F, 0x214F, 'Common', 'So'),
    Script(0x2150, 0x215F, 'Common', 'No'),
    Script(0x2189, 0x2189, 'Common', 'No'),
    Script(0x218A, 0x218B, 'Common', 'So'),
    Script(0x2190, 0x2194, 'Common', 'Sm'),
    Script(0x2195, 0x2199, 'Common', 'So'),
    Script(0x219A, 0x219B, 'Common', 'Sm'),
    Script(0x219C, 0x219F, 'Common', 'So'),
    Script(0x21A0, 0x21A0, 'Common', 'Sm'),
    Script(0x21A1, 0x21A2, 'Common', 'So'),
    Script(0x21A3, 0x21A3, 'Common', 'Sm'),
    Script(0x21A4, 0x21A5, 'Common', 'So'),
    Script(0x21A6, 0x21A6, 'Common', 'Sm'),
    Script(0x21A7, 0x21AD, 'Common', 'So'),
    Script(0x21AE, 0x21AE, 'Common', 'Sm'),
    Script(0x21AF, 0x21CD, 'Common', 'So'),
    Script(0x21CE, 0x21CF, 'Common', 'Sm'),
    Script(0x21D0, 0x21D1, 'Common', 'So'),
    Script(0x21D2, 0x21D2, 'Common', 'Sm'),
    Script(0x21D3, 0x21D3, 'Common', 'So'),
    Script(0x21D4, 0x21D4, 'Common', 'Sm'),
    Script(0x21D5, 0x21F3, 'Common', 'So'),
    Script(0x21F4, 0x22FF, 'Common', 'Sm'),
    Script(0x2300, 0x2307, 'Common', 'So'),
    Script(0x2308, 0x2308, 'Common', 'Ps'),
    Script(0x2309, 0x2309, 'Common', 'Pe'),
    Script(0x230A, 0x230A, 'Common', 'Ps'),
    Script(0x230B, 0x230B, 'Common', 'Pe'),
    Script(0x230C, 0x231F, 'Common', 'So'),
    Script(0x2320, 0x2321, 'Common', 'Sm'),
    Script(0x2322, 0x2328, 'Common', 'So'),
    Script(0x2329, 0x2329, 'Common', 'Ps'),
    Script(0x232A, 0x232A, 'Common', 'Pe'),
    Script(0x232B, 0x237B, 'Common', 'So'),
    Script(0x237C, 0x237C, 'Common', 'Sm'),
    Script(0x237D, 0x239A, 'Common', 'So'),
    Script(0x239B, 0x23B3, 'Common', 'Sm'),
    Script(0x23B4, 0x23DB, 'Common', 'So'),
    Script(0x23DC, 0x23E1, 'Common', 'Sm'),
    Script(0x23E2, 0x2426, 'Common', 'So'),
    Script(0x2440, 0x244A, 'Common', 'So'),
    Script(0x2460, 0x249B, 'Common', 'No'),
    Script(0x249C, 0x24E9, 'Common', 'So'),
    Script(0x24EA, 0x24FF, 'Common', 'No'),
    Script(0x2500, 0x25B6, 'Common', 'So'),
    Script(0x25B7, 0x25B7, 'Common', 'Sm'),
    Script(0x25B8, 0x25C0, 'Common', 'So'),
    Script(0x25C1, 0x25C1, 'Common', 'Sm'),
    Script(0x25C2, 0x25F7, 'Common', 'So'),
    Script(0x25F8, 0x25FF, 'Common', 'Sm'),
    Script(0x2600, 0x266E, 'Common', 'So'),
    Script(0x266F, 0x266F, 'Common', 'Sm'),
    Script(0x2670, 0x2767, 'Common', 'So'),
    Script(0x2768, 0x2768, 'Common', 'Ps'),
    Script(0x2769, 0x2769, 'Common', 'Pe'),
    Script(0x276A, 0x276A, 'Common', 'Ps'),
    Script(0x276B, 0x276B, 'Common', 'Pe'),
    Script(0x276C, 0x276C, 'Common', 'Ps'),
    Script(0x276D, 0x276D, 'Common', 'Pe'),
    Script(0x276E, 0x276E, 'Common', 'Ps'),
    Script(0x276F, 0x276F, 'Common', 'Pe'),
    Script(0x2770, 0x2770, 'Common', 'Ps'),
    Script(0x2771, 0x2771, 'Common', 'Pe'),
    Script(0x2772, 0x2772, 'Common', 'Ps'),
    Script(0x2773, 0x2773, 'Common', 'Pe'),
    Script(0x2774, 0x2774, 'Common', 'Ps'),
    Script(0x2775, 0x2775, 'Common', 'Pe'),
    Script(0x2776, 0x2793, 'Common', 'No'),
    Script(0x2794, 0x27BF, 'Common', 'So'),
    Script(0x27C0, 0x27C4, 'Common', 'Sm'),
    Script(0x27C5, 0x27C5, 'Common', 'Ps'),
    Script(0x27C6, 0x27C6, 'Common', 'Pe'),
    Script(0x27C7, 0x27E5, 'Common', 'Sm'),
    Script(0x27E6, 0x27E6, 'Common', 'Ps'),
    Script(0x27E7, 0x27E7, 'Common', 'Pe'),
    Script(0x27E8, 0x27E8, 'Common', 'Ps'),
    Script(0x27E9, 0x27E9, 'Common', 'Pe'),
    Script(0x27EA, 0x27EA, 'Common', 'Ps'),
    Script(0x27EB, 0x27EB, 'Common', 'Pe'),
    Script(0x27EC, 0x27EC, 'Common', 'Ps'),
    Script(0x27ED, 0x27ED, 'Common', 'Pe'),
    Script(0x27EE, 0x27EE, 'Common', 'Ps'),
    Script(0x27EF, 0x27EF, 'Common', 'Pe'),
    Script(0x27F0, 0x27FF, 'Common', 'Sm'),
    Script(0x2900, 0x2982, 'Common', 'Sm'),
    Script(0x2983, 0x2983, 'Common', 'Ps'),
    Script(0x2984, 0x2984, 'Common', 'Pe'),
    Script(0x2985, 0x2985, 'Common', 'Ps'),
    Script(0x2986, 0x2986, 'Common', 'Pe'),
    Script(0x2987, 0x2987, 'Common', 'Ps'),
    Script(0x2988, 0x2988, 'Common', 'Pe'),
    Script(0x2989, 0x2989, 'Common', 'Ps'),
    Script(0x298A, 0x298A, 'Common', 'Pe'),
    Script(0x298B, 0x298B, 'Common', 'Ps'),
    Script(0x298C, 0x298C, 'Common', 'Pe'),
    Script(0x298D, 0x298D, 'Common', 'Ps'),
    Script(0x298E, 0x298E, 'Common', 'Pe'),
    Script(0x298F, 0x298F, 'Common', 'Ps'),
    Script(0x2990, 0x2990, 'Common', 'Pe'),
    Script(0x2991, 0x2991, 'Common', 'Ps'),
    Script(0x2992, 0x2992, 'Common', 'Pe'),
    Script(0x2993, 0x2993, 'Common', 'Ps'),
    Script(0x2994, 0x2994, 'Common', 'Pe'),
    Script(0x2995, 0x2995, 'Common', 'Ps'),
    Script(0x2996, 0x2996, 'Common', 'Pe'),
    Script(0x2997, 0x2997, 'Common', 'Ps'),
    Script(0x2998, 0x2998, 'Common', 'Pe'),
    Script(0x2999, 0x29D7, 'Common', 'Sm'),
    Script(0x29D8, 0x29D8, 'Common', 'Ps'),
    Script(0x29D9, 0x29D9, 'Common', 'Pe'),
    Script(0x29DA, 0x29DA, 'Common', 'Ps'),
    Script(0x29DB, 0x29DB, 'Common', 'Pe'),
    Script(0x29DC, 0x29FB, 'Common', 'Sm'),
    Script(0x29FC, 0x29FC, 'Common', 'Ps'),
    Script(0x29FD, 0x29FD, 'Common', 'Pe'),
    Script(0x29FE, 0x2AFF, 'Common', 'Sm'),
    Script(0x2B00, 0x2B2F, 'Common', 'So'),
    Script(0x2B30, 0x2B44, 'Common', 'Sm'),
    Script(0x2B45, 0x2B46, 'Common', 'So'),
    Script(0x2B47, 0x2B4C, 'Common', 'Sm'),
    Script(0x2B4D, 0x2B73, 'Common', 'So'),
    Script(0x2B76, 0x2B95, 'Common', 'So'),
    Script(0x2B98, 0x2BFF, 'Common', 'So'),
    Script(0x2E00, 0x2E01, 'Common', 'Po'),
    Script(0x2E02, 0x2E02, 'Common', 'Pi'),
    Script(0x2E03, 0x2E03, 'Common', 'Pf'),
    Script(0x2E04, 0x2E04, 'Common', 'Pi'),
    Script(0x2E05, 0x2E05, 'Common', 'Pf'),
    Script(0x2E06, 0x2E08, 'Common', 'Po'),
    Script(0x2E09, 0x2E09, 'Common', 'Pi'),
    Script(0x2E0A, 0x2E0A, 'Common', 'Pf'),
    Script(0x2E0B, 0x2E0B, 'Common', 'Po'),
    Script(0x2E0C, 0x2E0C, 'Common', 'Pi'),
    Script(0x2E0D, 0x2E0D, 'Common', 'Pf'),
    Script(0x2E0E, 0x2E16, 'Common', 'Po'),
    Script(0x2E17, 0x2E17, 'Common', 'Pd'),
    Script(0x2E18, 0x2E19, 'Common', 'Po'),
    Script(0x2E1A, 0x2E1A, 'Common', 'Pd'),
    Script(0x2E1B, 0x2E1B, 'Common', 'Po'),
    Script(0x2E1C, 0x2E1C, 'Common', 'Pi'),
    Script(0x2E1D, 0x2E1D, 'Common', 'Pf'),
    Script(0x2E1E, 0x2E1F, 'Common', 'Po'),
    Script(0x2E20, 0x2E20, 'Common', 'Pi'),
    Script(0x2E21, 0x2E21, 'Common', 'Pf'),
    Script(0x2E22, 0x2E22, 'Common', 'Ps'),
    Script(0x2E23, 0x2E23, 'Common', 'Pe'),
    Script(0x2E24, 0x2E24, 'Common', 'Ps'),
    Script(0x2E25, 0x2E25, 'Common', 'Pe'),
    Script(0x2E26, 0x2E26, 'Common', 'Ps'),
    Script(0x2E27, 0x2E27, 'Common', 'Pe'),
    Script(0x2E28, 0x2E28, 'Common', 'Ps'),
    Script(0x2E29, 0x2E29, 'Common', 'Pe'),
    Script(0x2E2A, 0x2E2E, 'Common', 'Po'),
    Script(0x2E2F, 0x2E2F, 'Common', 'Lm'),
    Script(0x2E30, 0x2E39, 'Common', 'Po'),
    Script(0x2E3A, 0x2E3B, 'Common', 'Pd'),
    Script(0x2E3C, 0x2E3F, 'Common', 'Po'),
    Script(0x2E40, 0x2E40, 'Common', 'Pd'),
    Script(0x2E41, 0x2E41, 'Common', 'Po'),
    Script(0x2E42, 0x2E42, 'Common', 'Ps'),
    Script(0x2E43, 0x2E4F, 'Common', 'Po'),
    Script(0x2FF0, 0x2FFB, 'Common', 'So'),
    Script(0x3000, 0x3000, 'Common', 'Zs'),
    Script(0x3001, 0x3003, 'Common', 'Po'),
    Script(0x3004, 0x3004, 'Common', 'So'),
    Script(0x3006, 0x3006, 'Common', 'Lo'),
    Script(0x3008, 0x3008, 'Common', 'Ps'),
    Script(0x3009, 0x3009, 'Common', 'Pe'),
    Script(0x300A, 0x300A, 'Common', 'Ps'),
    Script(0x300B, 0x300B, 'Common', 'Pe'),
    Script(0x300C, 0x300C, 'Common', 'Ps'),
    Script(0x300D, 0x300D, 'Common', 'Pe'),
    Script(0x300E, 0x300E, 'Common', 'Ps'),
    Script(0x300F, 0x300F, 'Common', 'Pe'),
    Script(0x3010, 0x3010, 'Common', 'Ps'),
    Script(0x3011, 0x3011, 'Common', 'Pe'),
    Script(0x3012, 0x3013, 'Common', 'So'),
    Script(0x3014, 0x3014, 'Common', 'Ps'),
    Script(0x3015, 0x3015, 'Common', 'Pe'),
    Script(0x3016, 0x3016, 'Common', 'Ps'),
    Script(0x3017, 0x3017, 'Common', 'Pe'),
    Script(0x3018, 0x3018, 'Common', 'Ps'),
    Script(0x3019, 0x3019, 'Common', 'Pe'),
    Script(0x301A, 0x301A, 'Common', 'Ps'),
    Script(0x301B, 0x301B, 'Common', 'Pe'),
    Script(0x301C, 0x301C, 'Common', 'Pd'),
    Script(0x301D, 0x301D, 'Common', 'Ps'),
    Script(0x301E, 0x301F, 'Common', 'Pe'),
    Script(0x3020, 0x3020, 'Common', 'So'),
    Script(0x3030, 0x3030, 'Common', 'Pd'),
    Script(0x3031, 0x3035, 'Common', 'Lm'),
    Script(0x3036, 0x3037, 'Common', 'So'),
    Script(0x303C, 0x303C, 'Common', 'Lo'),
    Script(0x303D, 0x303D, 'Common', 'Po'),
    Script(0x303E, 0x303F, 'Common', 'So'),
    Script(0x309B, 0x309C, 'Common', 'Sk'),
    Script(0x30A0, 0x30A0, 'Common', 'Pd'),
    Script(0x30FB, 0x30FB, 'Common', 'Po'),
    Script(0x30FC, 0x30FC, 'Common', 'Lm'),
    Script(0x3190, 0x3191, 'Common', 'So'),
    Script(0x3192, 0x3195, 'Common', 'No'),
    Script(0x3196, 0x319F, 'Common', 'So'),
    Script(0x31C0, 0x31E3, 'Common', 'So'),
    Script(0x3220, 0x3229, 'Common', 'No'),
    Script(0x322A, 0x3247, 'Common', 'So'),
    Script(0x3248, 0x324F, 'Common', 'No'),
    Script(0x3250, 0x3250, 'Common', 'So'),
    Script(0x3251, 0x325F, 'Common', 'No'),
    Script(0x327F, 0x327F, 'Common', 'So'),
    Script(0x3280, 0x3289, 'Common', 'No'),
    Script(0x328A, 0x32B0, 'Common', 'So'),
    Script(0x32B1, 0x32BF, 'Common', 'No'),
    Script(0x32C0, 0x32CF, 'Common', 'So'),
    Script(0x32FF, 0x32FF, 'Common', 'So'),
    Script(0x3358, 0x33FF, 'Common', 'So'),
    Script(0x4DC0, 0x4DFF, 'Common', 'So'),
    Script(0xA700, 0xA716, 'Common', 'Sk'),
    Script(0xA717, 0xA71F, 'Common', 'Lm'),
    Script(0xA720, 0xA721, 'Common', 'Sk'),
    Script(0xA788, 0xA788, 'Common', 'Lm'),
    Script(0xA789, 0xA78A, 'Common', 'Sk'),
    Script(0xA830, 0xA835, 'Common', 'No'),
    Script(0xA836, 0xA837, 'Common', 'So'),
    Script(0xA838, 0xA838, 'Common', 'Sc'),
    Script(0xA839, 0xA839, 'Common', 'So'),
    Script(0xA92E, 0xA92E, 'Common', 'Po'),
    Script(0xA9CF, 0xA9CF, 'Common', 'Lm'),
    Script(0xAB5B, 0xAB5B, 'Common', 'Sk'),
    Script(0xFD3E, 0xFD3E, 'Common', 'Pe'),
    Script(0xFD3F, 0xFD3F, 'Common', 'Ps'),
    Script(0xFE10, 0xFE16, 'Common', 'Po'),
    Script(0xFE17, 0xFE17, 'Common', 'Ps'),
    Script(0xFE18, 0xFE18, 'Common', 'Pe'),
    Script(0xFE19, 0xFE19, 'Common', 'Po'),
    Script(0xFE30, 0xFE30, 'Common', 'Po'),
    Script(0xFE31, 0xFE32, 'Common', 'Pd'),
    Script(0xFE33, 0xFE34, 'Common', 'Pc'),
    Script(0xFE35, 0xFE35, 'Common', 'Ps'),
    Script(0xFE36, 0xFE36, 'Common', 'Pe'),
    Script(0xFE37, 0xFE37, 'Common', 'Ps'),
    Script(0xFE38, 0xFE38, 'Common', 'Pe'),
    Script(0xFE39, 0xFE39, 'Common', 'Ps'),
    Script(0xFE3A, 0xFE3A, 'Common', 'Pe'),
    Script(0xFE3B, 0xFE3B, 'Common', 'Ps'),
    Script(0xFE3C, 0xFE3C, 'Common', 'Pe'),
    Script(0xFE3D, 0xFE3D, 'Common', 'Ps'),
    Script(0xFE3E, 0xFE3E, 'Common', 'Pe'),
    Script(0xFE3F, 0xFE3F, 'Common', 'Ps'),
    Script(0xFE40, 0xFE40, 'Common', 'Pe'),
    Script(0xFE41, 0xFE41, 'Common', 'Ps'),
    Script(0xFE42, 0xFE42, 'Common', 'Pe'),
    Script(0xFE43, 0xFE43, 'Common', 'Ps'),
    Script(0xFE44, 0xFE44, 'Common', 'Pe'),
    Script(0xFE45, 0xFE46, 'Common', 'Po'),
    Script(0xFE47, 0xFE47, 'Common', 'Ps'),
    Script(0xFE48, 0xFE48, 'Common', 'Pe'),
    Script(0xFE49, 0xFE4C, 'Common', 'Po'),
    Script(0xFE4D, 0xFE4F, 'Common', 'Pc'),
    Script(0xFE50, 0xFE52, 'Common', 'Po'),
    Script(0xFE54, 0xFE57, 'Common', 'Po'),
    Script(0xFE58, 0xFE58, 'Common', 'Pd'),
    Script(0xFE59, 0xFE59, 'Common', 'Ps'),
    Script(0xFE5A, 0xFE5A, 'Common', 'Pe'),
    Script(0xFE5B, 0xFE5B, 'Common', 'Ps'),
    Script(0xFE5C, 0xFE5C, 'Common', 'Pe'),
    Script(0xFE5D, 0xFE5D, 'Common', 'Ps'),
    Script(0xFE5E, 0xFE5E, 'Common', 'Pe'),
    Script(0xFE5F, 0xFE61, 'Common', 'Po'),
    Script(0xFE62, 0xFE62, 'Common', 'Sm'),
    Script(0xFE63, 0xFE63, 'Common', 'Pd'),
    Script(0xFE64, 0xFE66, 'Common', 'Sm'),
    Script(0xFE68, 0xFE68, 'Common', 'Po'),
    Script(0xFE69, 0xFE69, 'Common', 'Sc'),
    Script(0xFE6A, 0xFE6B, 'Common', 'Po'),
    Script(0xFEFF, 0xFEFF, 'Common', 'Cf'),
    Script(0xFF01, 0xFF03, 'Common', 'Po'),
    Script(0xFF04, 0xFF04, 'Common', 'Sc'),
    Script(0xFF05, 0xFF07, 'Common', 'Po'),
    Script(0xFF08, 0xFF08, 'Common', 'Ps'),
    Script(0xFF09, 0xFF09, 'Common', 'Pe'),
    Script(0xFF0A, 0xFF0A, 'Common', 'Po'),
    Script(0xFF0B, 0xFF0B, 'Common', 'Sm'),
    Script(0xFF0C, 0xFF0C, 'Common', 'Po'),
    Script(0xFF0D, 0xFF0D, 'Common', 'Pd'),
    Script(0xFF0E, 0xFF0F, 'Common', 'Po'),
    Script(0xFF10, 0xFF19, 'Common', 'Nd'),
    Script(0xFF1A, 0xFF1B, 'Common', 'Po'),
    Script(0xFF1C, 0xFF1E, 'Common', 'Sm'),
    Script(0xFF1F, 0xFF20, 'Common', 'Po'),
    Script(0xFF3B, 0xFF3B, 'Common', 'Ps'),
    Script(0xFF3C, 0xFF3C, 'Common', 'Po'),
    Script(0xFF3D, 0xFF3D, 'Common', 'Pe'),
    Script(0xFF3E, 0xFF3E, 'Common', 'Sk'),
    Script(0xFF3F, 0xFF3F, 'Common', 'Pc'),
    Script(0xFF40, 0xFF40, 'Common', 'Sk'),
    Script(0xFF5B, 0xFF5B, 'Common', 'Ps'),
    Script(0xFF5C, 0xFF5C, 'Common', 'Sm'),
    Script(0xFF5D, 0xFF5D, 'Common', 'Pe'),
    Script(0xFF5E, 0xFF5E, 'Common', 'Sm'),
    Script(0xFF5F, 0xFF5F, 'Common', 'Ps'),
    Script(0xFF60, 0xFF60, 'Common', 'Pe'),
    Script(0xFF61, 0xFF61, 'Common', 'Po'),
    Script(0xFF62, 0xFF62, 'Common', 'Ps'),
    Script(0xFF63, 0xFF63, 'Common', 'Pe'),
    Script(0xFF64, 0xFF65, 'Common', 'Po'),
    Script(0xFF70, 0xFF70, 'Common', 'Lm'),
    Script(0xFF9E, 0xFF9F, 'Common', 'Lm'),
    Script(0xFFE0, 0xFFE1, 'Common', 'Sc'),
    Script(0xFFE2, 0xFFE2, 'Common', 'Sm'),
    Script(0xFFE3, 0xFFE3, 'Common', 'Sk'),
    Script(0xFFE4, 0xFFE4, 'Common', 'So'),
    Script(0xFFE5, 0xFFE6, 'Common', 'Sc'),
    Script(0xFFE8, 0xFFE8, 'Common', 'So'),
    Script(0xFFE9, 0xFFEC, 'Common', 'Sm'),
    Script(0xFFED, 0xFFEE, 'Common', 'So'),
    Script(0xFFF9, 0xFFFB, 'Common', 'Cf'),
    Script(0xFFFC, 0xFFFD, 'Common', 'So'),
    Script(0x10100, 0x10102, 'Common', 'Po'),
    Script(0x10107, 0x10133, 'Common', 'No'),
    Script(0x10137, 0x1013F, 'Common', 'So'),
    Script(0x10190, 0x1019B, 'Common', 'So'),
    Script(0x101D0, 0x101FC, 'Common', 'So'),
    Script(0x102E1, 0x102FB, 'Common', 'No'),
    Script(0x16FE2, 0x16FE2, 'Common', 'Po'),
    Script(0x16FE3, 0x16FE3, 'Common', 'Lm'),
    Script(0x1BCA0, 0x1BCA3, 'Common', 'Cf'),
    Script(0x1D000, 0x1D0F5, 'Common', 'So'),
    Script(0x1D100, 0x1D126, 'Common', 'So'),
    Script(0x1D129, 0x1D164, 'Common', 'So'),
    Script(0x1D165, 0x1D166, 'Common', 'Mc'),
    Script(0x1D16A, 0x1D16C, 'Common', 'So'),
    Script(0x1D16D, 0x1D172, 'Common', 'Mc'),
    Script(0x1D173, 0x1D17A, 'Common', 'Cf'),
    Script(0x1D183, 0x1D184, 'Common', 'So'),
    Script(0x1D18C, 0x1D1A9, 'Common', 'So'),
    Script(0x1D1AE, 0x1D1E8, 'Common', 'So'),
    Script(0x1D2E0, 0x1D2F3, 'Common', 'No'),
    Script(0x1D300, 0x1D356, 'Common', 'So'),
    Script(0x1D360, 0x1D378, 'Common', 'No'),
    Script(0x1D400, 0x1D454, 'Common', 'L&'),
    Script(0x1D456, 0x1D49C, 'Common', 'L&'),
    Script(0x1D49E, 0x1D49F, 'Common', 'L&'),
    Script(0x1D4A2, 0x1D4A2, 'Common', 'L&'),
    Script(0x1D4A5, 0x1D4A6, 'Common', 'L&'),
    Script(0x1D4A9, 0x1D4AC, 'Common', 'L&'),
    Script(0x1D4AE, 0x1D4B9, 'Common', 'L&'),
    Script(0x1D4BB, 0x1D4BB, 'Common', 'L&'),
    Script(0x1D4BD, 0x1D4C3, 'Common', 'L&'),
    Script(0x1D4C5, 0x1D505, 'Common', 'L&'),
    Script(0x1D507, 0x1D50A, 'Common', 'L&'),
    Script(0x1D50D, 0x1D514, 'Common', 'L&'),
    Script(0x1D516, 0x1D51C, 'Common', 'L&'),
    Script(0x1D51E, 0x1D539, 'Common', 'L&'),
    Script(0x1D53B, 0x1D53E, 'Common', 'L&'),
    Script(0x1D540, 0x1D544, 'Common', 'L&'),
    Script(0x1D546, 0x1D546, 'Common', 'L&'),
    Script(0x1D54A, 0x1D550, 'Common', 'L&'),
    Script(0x1D552, 0x1D6A5, 'Common', 'L&'),
    Script(0x1D6A8, 0x1D6C0, 'Common', 'L&'),
    Script(0x1D6C1, 0x1D6C1, 'Common', 'Sm'),
    Script(0x1D6C2, 0x1D6DA, 'Common', 'L&'),
    Script(0x1D6DB, 0x1D6DB, 'Common', 'Sm'),
    Script(0x1D6DC, 0x1D6FA, 'Common', 'L&'),
    Script(0x1D6FB, 0x1D6FB, 'Common', 'Sm'),
    Script(0x1D6FC, 0x1D714, 'Common', 'L&'),
    Script(0x1D715, 0x1D715, 'Common', 'Sm'),
    Script(0x1D716, 0x1D734, 'Common', 'L&'),
    Script(0x1D735, 0x1D735, 'Common', 'Sm'),
    Script(0x1D736, 0x1D74E, 'Common', 'L&'),
    Script(0x1D74F, 0x1D74F, 'Common', 'Sm'),
    Script(0x1D750, 0x1D76E, 'Common', 'L&'),
    Script(0x1D76F, 0x1D76F, 'Common', 'Sm'),
    Script(0x1D770, 0x1D788, 'Common', 'L&'),
    Script(0x1D789, 0x1D789, 'Common', 'Sm'),
    Script(0x1D78A, 0x1D7A8, 'Common', 'L&'),
    Script(0x1D7A9, 0x1D7A9, 'Common', 'Sm'),
    Script(0x1D7AA, 0x1D7C2, 'Common', 'L&'),
    Script(0x1D7C3, 0x1D7C3, 'Common', 'Sm'),
    Script(0x1D7C4, 0x1D7CB, 'Common', 'L&'),
    Script(0x1D7CE, 0x1D7FF, 'Common', 'Nd'),
    Script(0x1EC71, 0x1ECAB, 'Common', 'No'),
    Script(0x1ECAC, 0x1ECAC, 'Common', 'So'),
    Script(0x1ECAD, 0x1ECAF, 'Common', 'No'),
    Script(0x1ECB0, 0x1ECB0, 'Common', 'Sc'),
    Script(0x1ECB1, 0x1ECB4, 'Common', 'No'),
    Script(0x1ED01, 0x1ED2D, 'Common', 'No'),
    Script(0x1ED2E, 0x1ED2E, 'Common', 'So'),
    Script(0x1ED2F, 0x1ED3D, 'Common', 'No'),
    Script(0x1F000, 0x1F02B, 'Common', 'So'),
    Script(0x1F030, 0x1F093, 'Common', 'So'),
    Script(0x1F0A0, 0x1F0AE, 'Common', 'So'),
    Script(0x1F0B1, 0x1F0BF, 'Common', 'So'),
    Script(0x1F0C1, 0x1F0CF, 'Common', 'So'),
    Script(0x1F0D1, 0x1F0F5, 'Common', 'So'),
    Script(0x1F100, 0x1F10C, 'Common', 'No'),
    Script(0x1F110, 0x1F16C, 'Common', 'So'),
    Script(0x1F170, 0x1F1AC, 'Common', 'So'),
    Script(0x1F1E6, 0x1F1FF, 'Common', 'So'),
    Script(0x1F201, 0x1F202, 'Common', 'So'),
    Script(0x1F210, 0x1F23B, 'Common', 'So'),
    Script(0x1F240, 0x1F248, 'Common', 'So'),
    Script(0x1F250, 0x1F251, 'Common', 'So'),
    Script(0x1F260, 0x1F265, 'Common', 'So'),
    Script(0x1F300, 0x1F3FA, 'Common', 'So'),
    Script(0x1F3FB, 0x1F3FF, 'Common', 'Sk'),
    Script(0x1F400, 0x1F6D5, 'Common', 'So'),
    Script(0x1F6E0, 0x1F6EC, 'Common', 'So'),
    Script(0x1F6F0, 0x1F6FA, 'Common', 'So'),
    Script(0x1F700, 0x1F773, 'Common', 'So'),
    Script(0x1F780, 0x1F7D8, 'Common', 'So'),
    Script(0x1F7E0, 0x1F7EB, 'Common', 'So'),
    Script(0x1F800, 0x1F80B, 'Common', 'So'),
    Script(0x1F810, 0x1F847, 'Common', 'So'),
    Script(0x1F850, 0x1F859, 'Common', 'So'),
    Script(0x1F860, 0x1F887, 'Common', 'So'),
    Script(0x1F890, 0x1F8AD, 'Common', 'So'),
    Script(0x1F900, 0x1F90B, 'Common', 'So'),
    Script(0x1F90D, 0x1F971, 'Common', 'So'),
    Script(0x1F973, 0x1F976, 'Common', 'So'),
    Script(0x1F97A, 0x1F9A2, 'Common', 'So'),
    Script(0x1F9A5, 0x1F9AA, 'Common', 'So'),
    Script(0x1F9AE, 0x1F9CA, 'Common', 'So'),
    Script(0x1F9CD, 0x1FA53, 'Common', 'So'),
    Script(0x1FA60, 0x1FA6D, 'Common', 'So'),
    Script(0x1FA70, 0x1FA73, 'Common', 'So'),
    Script(0x1FA78, 0x1FA7A, 'Common', 'So'),
    Script(0x1FA80, 0x1FA82, 'Common', 'So'),
    Script(0x1FA90, 0x1FA95, 'Common', 'So'),
    Script(0xE0001, 0xE0001, 'Common', 'Cf'),
    Script(0xE0020, 0xE007F, 'Common', 'Cf'),
    Script(0x0041, 0x005A, 'Latin', 'L&'),
    Script(0x0061, 0x007A, 'Latin', 'L&'),
    Script(0x00AA, 0x00AA, 'Latin', 'Lo'),
    Script(0x00BA, 0x00BA, 'Latin', 'Lo'),
    Script(0x00C0, 0x00D6, 'Latin', 'L&'),
    Script(0x00D8, 0x00F6, 'Latin', 'L&'),
    Script(0x00F8, 0x01BA, 'Latin', 'L&'),
    Script(0x01BB, 0x01BB, 'Latin', 'Lo'),
    Script(0x01BC, 0x01BF, 'Latin', 'L&'),
    Script(0x01C0, 0x01C3, 'Latin', 'Lo'),
    Script(0x01C4, 0x0293, 'Latin', 'L&'),
    Script(0x0294, 0x0294, 'Latin', 'Lo'),
    Script(0x0295, 0x02AF, 'Latin', 'L&'),
    Script(0x02B0, 0x02B8, 'Latin', 'Lm'),
    Script(0x02E0, 0x02E4, 'Latin', 'Lm'),
    Script(0x1D00, 0x1D25, 'Latin', 'L&'),
    Script(0x1D2C, 0x1D5C, 'Latin', 'Lm'),
    Script(0x1D62, 0x1D65, 'Latin', 'Lm'),
    Script(0x1D6B, 0x1D77, 'Latin', 'L&'),
    Script(0x1D79, 0x1D9A, 'Latin', 'L&'),
    Script(0x1D9B, 0x1DBE, 'Latin', 'Lm'),
    Script(0x1E00, 0x1EFF, 'Latin', 'L&'),
    Script(0x2071, 0x2071, 'Latin', 'Lm'),
    Script(0x207F, 0x207F, 'Latin', 'Lm'),
    Script(0x2090, 0x209C, 'Latin', 'Lm'),
    Script(0x212A, 0x212B, 'Latin', 'L&'),
    Script(0x2132, 0x2132, 'Latin', 'L&'),
    Script(0x214E, 0x214E, 'Latin', 'L&'),
    Script(0x2160, 0x2182, 'Latin', 'Nl'),
    Script(0x2183, 0x2184, 'Latin', 'L&'),
    Script(0x2185, 0x2188, 'Latin', 'Nl'),
    Script(0x2C60, 0x2C7B, 'Latin', 'L&'),
    Script(0x2C7C, 0x2C7D, 'Latin', 'Lm'),
    Script(0x2C7E, 0x2C7F, 'Latin', 'L&'),
    Script(0xA722, 0xA76F, 'Latin', 'L&'),
    Script(0xA770, 0xA770, 'Latin', 'Lm'),
    Script(0xA771, 0xA787, 'Latin', 'L&'),
    Script(0xA78B, 0xA78E, 'Latin', 'L&'),
    Script(0xA78F, 0xA78F, 'Latin', 'Lo'),
    Script(0xA790, 0xA7BF, 'Latin', 'L&'),
    Script(0xA7C2, 0xA7C6, 'Latin', 'L&'),
    Script(0xA7F7, 0xA7F7, 'Latin', 'Lo'),
    Script(0xA7F8, 0xA7F9, 'Latin', 'Lm'),
    Script(0xA7FA, 0xA7FA, 'Latin', 'L&'),
    Script(0xA7FB, 0xA7FF, 'Latin', 'Lo'),
    Script(0xAB30, 0xAB5A, 'Latin', 'L&'),
    Script(0xAB5C, 0xAB5F, 'Latin', 'Lm'),
    Script(0xAB60, 0xAB64, 'Latin', 'L&'),
    Script(0xAB66, 0xAB67, 'Latin', 'L&'),
    Script(0xFB00, 0xFB06, 'Latin', 'L&'),
    Script(0xFF21, 0xFF3A, 'Latin', 'L&'),
    Script(0xFF41, 0xFF5A, 'Latin', 'L&'),
    Script(0x0370, 0x0373, 'Greek', 'L&'),
    Script(0x0375, 0x0375, 'Greek', 'Sk'),
    Script(0x0376, 0x0377, 'Greek', 'L&'),
    Script(0x037A, 0x037A, 'Greek', 'Lm'),
    Script(0x037B, 0x037D, 'Greek', 'L&'),
    Script(0x037F, 0x037F, 'Greek', 'L&'),
    Script(0x0384, 0x0384, 'Greek', 'Sk'),
    Script(0x0386, 0x0386, 'Greek', 'L&'),
    Script(0x0388, 0x038A, 'Greek', 'L&'),
    Script(0x038C, 0x038C, 'Greek', 'L&'),
    Script(0x038E, 0x03A1, 'Greek', 'L&'),
    Script(0x03A3, 0x03E1, 'Greek', 'L&'),
    Script(0x03F0, 0x03F5, 'Greek', 'L&'),
    Script(0x03F6, 0x03F6, 'Greek', 'Sm'),
    Script(0x03F7, 0x03FF, 'Greek', 'L&'),
    Script(0x1D26, 0x1D2A, 'Greek', 'L&'),
    Script(0x1D5D, 0x1D61, 'Greek', 'Lm'),
    Script(0x1D66, 0x1D6A, 'Greek', 'Lm'),
    Script(0x1DBF, 0x1DBF, 'Greek', 'Lm'),
    Script(0x1F00, 0x1F15, 'Greek', 'L&'),
    Script(0x1F18, 0x1F1D, 'Greek', 'L&'),
    Script(0x1F20, 0x1F45, 'Greek', 'L&'),
    Script(0x1F48, 0x1F4D, 'Greek', 'L&'),
    Script(0x1F50, 0x1F57, 'Greek', 'L&'),
    Script(0x1F59, 0x1F59, 'Greek', 'L&'),
    Script(0x1F5B, 0x1F5B, 'Greek', 'L&'),
    Script(0x1F5D, 0x1F5D, 'Greek', 'L&'),
    Script(0x1F5F, 0x1F7D, 'Greek', 'L&'),
    Script(0x1F80, 0x1FB4, 'Greek', 'L&'),
    Script(0x1FB6, 0x1FBC, 'Greek', 'L&'),
    Script(0x1FBD, 0x1FBD, 'Greek', 'Sk'),
    Script(0x1FBE, 0x1FBE, 'Greek', 'L&'),
    Script(0x1FBF, 0x1FC1, 'Greek', 'Sk'),
    Script(0x1FC2, 0x1FC4, 'Greek', 'L&'),
    Script(0x1FC6, 0x1FCC, 'Greek', 'L&'),
    Script(0x1FCD, 0x1FCF, 'Greek', 'Sk'),
    Script(0x1FD0, 0x1FD3, 'Greek', 'L&'),
    Script(0x1FD6, 0x1FDB, 'Greek', 'L&'),
    Script(0x1FDD, 0x1FDF, 'Greek', 'Sk'),
    Script(0x1FE0, 0x1FEC, 'Greek', 'L&'),
    Script(0x1FED, 0x1FEF, 'Greek', 'Sk'),
    Script(0x1FF2, 0x1FF4, 'Greek', 'L&'),
    Script(0x1FF6, 0x1FFC, 'Greek', 'L&'),
    Script(0x1FFD, 0x1FFE, 'Greek', 'Sk'),
    Script(0x2126, 0x2126, 'Greek', 'L&'),
    Script(0xAB65, 0xAB65, 'Greek', 'L&'),
    Script(0x10140, 0x10174, 'Greek', 'Nl'),
    Script(0x10175, 0x10178, 'Greek', 'No'),
    Script(0x10179, 0x10189, 'Greek', 'So'),
    Script(0x1018A, 0x1018B, 'Greek', 'No'),
    Script(0x1018C, 0x1018E, 'Greek', 'So'),
    Script(0x101A0, 0x101A0, 'Greek', 'So'),
    Script(0x1D200, 0x1D241, 'Greek', 'So'),
    Script(0x1D242, 0x1D244, 'Greek', 'Mn'),
    Script(0x1D245, 0x1D245, 'Greek', 'So'),
    Script(0x0400, 0x0481, 'Cyrillic', 'L&'),
    Script(0x0482, 0x0482, 'Cyrillic', 'So'),
    Script(0x0483, 0x0484, 'Cyrillic', 'Mn'),
    Script(0x0487, 0x0487, 'Cyrillic', 'Mn'),
    Script(0x0488, 0x0489, 'Cyrillic', 'Me'),
    Script(0x048A, 0x052F, 'Cyrillic', 'L&'),
    Script(0x1C80, 0x1C88, 'Cyrillic', 'L&'),
    Script(0x1D2B, 0x1D2B, 'Cyrillic', 'L&'),
    Script(0x1D78, 0x1D78, 'Cyrillic', 'Lm'),
    Script(0x2DE0, 0x2DFF, 'Cyrillic', 'Mn'),
    Script(0xA640, 0xA66D, 'Cyrillic', 'L&'),
    Script(0xA66E, 0xA66E, 'Cyrillic', 'Lo'),
    Script(0xA66F, 0xA66F, 'Cyrillic', 'Mn'),
    Script(0xA670, 0xA672, 'Cyrillic', 'Me'),
    Script(0xA673, 0xA673, 'Cyrillic', 'Po'),
    Script(0xA674, 0xA67D, 'Cyrillic', 'Mn'),
    Script(0xA67E, 0xA67E, 'Cyrillic', 'Po'),
    Script(0xA67F, 0xA67F, 'Cyrillic', 'Lm'),
    Script(0xA680, 0xA69B, 'Cyrillic', 'L&'),
    Script(0xA69C, 0xA69D, 'Cyrillic', 'Lm'),
    Script(0xA69E, 0xA69F, 'Cyrillic', 'Mn'),
    Script(0xFE2E, 0xFE2F, 'Cyrillic', 'Mn'),
    Script(0x0531, 0x0556, 'Armenian', 'L&'),
    Script(0x0559, 0x0559, 'Armenian', 'Lm'),
    Script(0x055A, 0x055F, 'Armenian', 'Po'),
    Script(0x0560, 0x0588, 'Armenian', 'L&'),
    Script(0x058A, 0x058A, 'Armenian', 'Pd'),
    Script(0x058D, 0x058E, 'Armenian', 'So'),
    Script(0x058F, 0x058F, 'Armenian', 'Sc'),
    Script(0xFB13, 0xFB17, 'Armenian', 'L&'),
    Script(0x0591, 0x05BD, 'Hebrew', 'Mn'),
    Script(0x05BE, 0x05BE, 'Hebrew', 'Pd'),
    Script(0x05BF, 0x05BF, 'Hebrew', 'Mn'),
    Script(0x05C0, 0x05C0, 'Hebrew', 'Po'),
    Script(0x05C1, 0x05C2, 'Hebrew', 'Mn'),
    Script(0x05C3, 0x05C3, 'Hebrew', 'Po'),
    Script(0x05C4, 0x05C5, 'Hebrew', 'Mn'),
    Script(0x05C6, 0x05C6, 'Hebrew', 'Po'),
    Script(0x05C7, 0x05C7, 'Hebrew', 'Mn'),
    Script(0x05D0, 0x05EA, 'Hebrew', 'Lo'),
    Script(0x05EF, 0x05F2, 'Hebrew', 'Lo'),
    Script(0x05F3, 0x05F4, 'Hebrew', 'Po'),
    Script(0xFB1D, 0xFB1D, 'Hebrew', 'Lo'),
    Script(0xFB1E, 0xFB1E, 'Hebrew', 'Mn'),
    Script(0xFB1F, 0xFB28, 'Hebrew', 'Lo'),
    Script(0xFB29, 0xFB29, 'Hebrew', 'Sm'),
    Script(0xFB2A, 0xFB36, 'Hebrew', 'Lo'),
    Script(0xFB38, 0xFB3C, 'Hebrew', 'Lo'),
    Script(0xFB3E, 0xFB3E, 'Hebrew', 'Lo'),
    Script(0xFB40, 0xFB41, 'Hebrew', 'Lo'),
    Script(0xFB43, 0xFB44, 'Hebrew', 'Lo'),
    Script(0xFB46, 0xFB4F, 'Hebrew', 'Lo'),
    Script(0x0600, 0x0604, 'Arabic', 'Cf'),
    Script(0x0606, 0x0608, 'Arabic', 'Sm'),
    Script(0x0609, 0x060A, 'Arabic', 'Po'),
    Script(0x060B, 0x060B, 'Arabic', 'Sc'),
    Script(0x060D, 0x060D, 'Arabic', 'Po'),
    Script(0x060E, 0x060F, 'Arabic', 'So'),
    Script(0x0610, 0x061A, 'Arabic', 'Mn'),
    Script(0x061C, 0x061C, 'Arabic', 'Cf'),
    Script(0x061E, 0x061E, 'Arabic', 'Po'),
    Script(0x0620, 0x063F, 'Arabic', 'Lo'),
    Script(0x0641, 0x064A, 'Arabic', 'Lo'),
    Script(0x0656, 0x065F, 'Arabic', 'Mn'),
    Script(0x0660, 0x0669, 'Arabic', 'Nd'),
    Script(0x066A, 0x066D, 'Arabic', 'Po'),
    Script(0x066E, 0x066F, 'Arabic', 'Lo'),
    Script(0x0671, 0x06D3, 'Arabic', 'Lo'),
    Script(0x06D4, 0x06D4, 'Arabic', 'Po'),
    Script(0x06D5, 0x06D5, 'Arabic', 'Lo'),
    Script(0x06D6, 0x06DC, 'Arabic', 'Mn'),
    Script(0x06DE, 0x06DE, 'Arabic', 'So'),
    Script(0x06DF, 0x06E4, 'Arabic', 'Mn'),
    Script(0x06E5, 0x06E6, 'Arabic', 'Lm'),
    Script(0x06E7, 0x06E8, 'Arabic', 'Mn'),
    Script(0x06E9, 0x06E9, 'Arabic', 'So'),
    Script(0x06EA, 0x06ED, 'Arabic', 'Mn'),
    Script(0x06EE, 0x06EF, 'Arabic', 'Lo'),
    Script(0x06F0, 0x06F9, 'Arabic', 'Nd'),
    Script(0x06FA, 0x06FC, 'Arabic', 'Lo'),
    Script(0x06FD, 0x06FE, 'Arabic', 'So'),
    Script(0x06FF, 0x06FF, 'Arabic', 'Lo'),
    Script(0x0750, 0x077F, 'Arabic', 'Lo'),
    Script(0x08A0, 0x08B4, 'Arabic', 'Lo'),
    Script(0x08B6, 0x08BD, 'Arabic', 'Lo'),
    Script(0x08D3, 0x08E1, 'Arabic', 'Mn'),
    Script(0x08E3, 0x08FF, 'Arabic', 'Mn'),
    Script(0xFB50, 0xFBB1, 'Arabic', 'Lo'),
    Script(0xFBB2, 0xFBC1, 'Arabic', 'Sk'),
    Script(0xFBD3, 0xFD3D, 'Arabic', 'Lo'),
    Script(0xFD50, 0xFD8F, 'Arabic', 'Lo'),
    Script(0xFD92, 0xFDC7, 'Arabic', 'Lo'),
    Script(0xFDF0, 0xFDFB, 'Arabic', 'Lo'),
    Script(0xFDFC, 0xFDFC, 'Arabic', 'Sc'),
    Script(0xFDFD, 0xFDFD, 'Arabic', 'So'),
    Script(0xFE70, 0xFE74, 'Arabic', 'Lo'),
    Script(0xFE76, 0xFEFC, 'Arabic', 'Lo'),
    Script(0x10E60, 0x10E7E, 'Arabic', 'No'),
    Script(0x1EE00, 0x1EE03, 'Arabic', 'Lo'),
    Script(0x1EE05, 0x1EE1F, 'Arabic', 'Lo'),
    Script(0x1EE21, 0x1EE22, 'Arabic', 'Lo'),
    Script(0x1EE24, 0x1EE24, 'Arabic', 'Lo'),
    Script(0x1EE27, 0x1EE27, 'Arabic', 'Lo'),
    Script(0x1EE29, 0x1EE32, 'Arabic', 'Lo'),
    Script(0x1EE34, 0x1EE37, 'Arabic', 'Lo'),
    Script(0x1EE39, 0x1EE39, 'Arabic', 'Lo'),
    Script(0x1EE3B, 0x1EE3B, 'Arabic', 'Lo'),
    Script(0x1EE42, 0x1EE42, 'Arabic', 'Lo'),
    Script(0x1EE47, 0x1EE47, 'Arabic', 'Lo'),
    Script(0x1EE49, 0x1EE49, 'Arabic', 'Lo'),
    Script(0x1EE4B, 0x1EE4B, 'Arabic', 'Lo'),
    Script(0x1EE4D, 0x1EE4F, 'Arabic', 'Lo'),
    Script(0x1EE51, 0x1EE52, 'Arabic', 'Lo'),
    Script(0x1EE54, 0x1EE54, 'Arabic', 'Lo'),
    Script(0x1EE57, 0x1EE57, 'Arabic', 'Lo'),
    Script(0x1EE59, 0x1EE59, 'Arabic', 'Lo'),
    Script(0x1EE5B, 0x1EE5B, 'Arabic', 'Lo'),
    Script(0x1EE5D, 0x1EE5D, 'Arabic', 'Lo'),
    Script(0x1EE5F, 0x1EE5F, 'Arabic', 'Lo'),
    Script(0x1EE61, 0x1EE62, 'Arabic', 'Lo'),
    Script(0x1EE64, 0x1EE64, 'Arabic', 'Lo'),
    Script(0x1EE67, 0x1EE6A, 'Arabic', 'Lo'),
    Script(0x1EE6C, 0x1EE72, 'Arabic', 'Lo'),
    Script(0x1EE74, 0x1EE77, 'Arabic', 'Lo'),
    Script(0x1EE79, 0x1EE7C, 'Arabic', 'Lo'),
    Script(0x1EE7E, 0x1EE7E, 'Arabic', 'Lo'),
    Script(0x1EE80, 0x1EE89, 'Arabic', 'Lo'),
    Script(0x1EE8B, 0x1EE9B, 'Arabic', 'Lo'),
    Script(0x1EEA1, 0x1EEA3, 'Arabic', 'Lo'),
    Script(0x1EEA5, 0x1EEA9, 'Arabic', 'Lo'),
    Script(0x1EEAB, 0x1EEBB, 'Arabic', 'Lo'),
    Script(0x1EEF0, 0x1EEF1, 'Arabic', 'Sm'),
    Script(0x0700, 0x070D, 'Syriac', 'Po'),
    Script(0x070F, 0x070F, 'Syriac', 'Cf'),
    Script(0x0710, 0x0710, 'Syriac', 'Lo'),
    Script(0x0711, 0x0711, 'Syriac', 'Mn'),
    Script(0x0712, 0x072F, 'Syriac', 'Lo'),
    Script(0x0730, 0x074A, 'Syriac', 'Mn'),
    Script(0x074D, 0x074F, 'Syriac', 'Lo'),
    Script(0x0860, 0x086A, 'Syriac', 'Lo'),
    Script(0x0780, 0x07A5, 'Thaana', 'Lo'),
    Script(0x07A6, 0x07B0, 'Thaana', 'Mn'),
    Script(0x07B1, 0x07B1, 'Thaana', 'Lo'),
    Script(0x0900, 0x0902, 'Devanagari', 'Mn'),
    Script(0x0903, 0x0903, 'Devanagari', 'Mc'),
    Script(0x0904, 0x0939, 'Devanagari', 'Lo'),
    Script(0x093A, 0x093A, 'Devanagari', 'Mn'),
    Script(0x093B, 0x093B, 'Devanagari', 'Mc'),
    Script(0x093C, 0x093C, 'Devanagari', 'Mn'),
    Script(0x093D, 0x093D, 'Devanagari', 'Lo'),
    Script(0x093E, 0x0940, 'Devanagari', 'Mc'),
    Script(0x0941, 0x0948, 'Devanagari', 'Mn'),
    Script(0x0949, 0x094C, 'Devanagari', 'Mc'),
    Script(0x094D, 0x094D, 'Devanagari', 'Mn'),
    Script(0x094E, 0x094F, 'Devanagari', 'Mc'),
    Script(0x0950, 0x0950, 'Devanagari', 'Lo'),
    Script(0x0955, 0x0957, 'Devanagari', 'Mn'),
    Script(0x0958, 0x0961, 'Devanagari', 'Lo'),
    Script(0x0962, 0x0963, 'Devanagari', 'Mn'),
    Script(0x0966, 0x096F, 'Devanagari', 'Nd'),
    Script(0x0970, 0x0970, 'Devanagari', 'Po'),
    Script(0x0971, 0x0971, 'Devanagari', 'Lm'),
    Script(0x0972, 0x097F, 'Devanagari', 'Lo'),
    Script(0xA8E0, 0xA8F1, 'Devanagari', 'Mn'),
    Script(0xA8F2, 0xA8F7, 'Devanagari', 'Lo'),
    Script(0xA8F8, 0xA8FA, 'Devanagari', 'Po'),
    Script(0xA8FB, 0xA8FB, 'Devanagari', 'Lo'),
    Script(0xA8FC, 0xA8FC, 'Devanagari', 'Po'),
    Script(0xA8FD, 0xA8FE, 'Devanagari', 'Lo'),
    Script(0xA8FF, 0xA8FF, 'Devanagari', 'Mn'),
    Script(0x0980, 0x0980, 'Bengali', 'Lo'),
    Script(0x0981, 0x0981, 'Bengali', 'Mn'),
    Script(0x0982, 0x0983, 'Bengali', 'Mc'),
    Script(0x0985, 0x098C, 'Bengali', 'Lo'),
    Script(0x098F, 0x0990, 'Bengali', 'Lo'),
    Script(0x0993, 0x09A8, 'Bengali', 'Lo'),
    Script(0x09AA, 0x09B0, 'Bengali', 'Lo'),
    Script(0x09B2, 0x09B2, 'Bengali', 'Lo'),
    Script(0x09B6, 0x09B9, 'Bengali', 'Lo'),
    Script(0x09BC, 0x09BC, 'Bengali', 'Mn'),
    Script(0x09BD, 0x09BD, 'Bengali', 'Lo'),
    Script(0x09BE, 0x09C0, 'Bengali', 'Mc'),
    Script(0x09C1, 0x09C4, 'Bengali', 'Mn'),
    Script(0x09C7, 0x09C8, 'Bengali', 'Mc'),
    Script(0x09CB, 0x09CC, 'Bengali', 'Mc'),
    Script(0x09CD, 0x09CD, 'Bengali', 'Mn'),
    Script(0x09CE, 0x09CE, 'Bengali', 'Lo'),
    Script(0x09D7, 0x09D7, 'Bengali', 'Mc'),
    Script(0x09DC, 0x09DD, 'Bengali', 'Lo'),
    Script(0x09DF, 0x09E1, 'Bengali', 'Lo'),
    Script(0x09E2, 0x09E3, 'Bengali', 'Mn'),
    Script(0x09E6, 0x09EF, 'Bengali', 'Nd'),
    Script(0x09F0, 0x09F1, 'Bengali', 'Lo'),
    Script(0x09F2, 0x09F3, 'Bengali', 'Sc'),
    Script(0x09F4, 0x09F9, 'Bengali', 'No'),
    Script(0x09FA, 0x09FA, 'Bengali', 'So'),
    Script(0x09FB, 0x09FB, 'Bengali', 'Sc'),
    Script(0x09FC, 0x09FC, 'Bengali', 'Lo'),
    Script(0x09FD, 0x09FD, 'Bengali', 'Po'),
    Script(0x09FE, 0x09FE, 'Bengali', 'Mn'),
    Script(0x0A01, 0x0A02, 'Gurmukhi', 'Mn'),
    Script(0x0A03, 0x0A03, 'Gurmukhi', 'Mc'),
    Script(0x0A05, 0x0A0A, 'Gurmukhi', 'Lo'),
    Script(0x0A0F, 0x0A10, 'Gurmukhi', 'Lo'),
    Script(0x0A13, 0x0A28, 'Gurmukhi', 'Lo'),
    Script(0x0A2A, 0x0A30, 'Gurmukhi', 'Lo'),
    Script(0x0A32, 0x0A33, 'Gurmukhi', 'Lo'),
    Script(0x0A35, 0x0A36, 'Gurmukhi', 'Lo'),
    Script(0x0A38, 0x0A39, 'Gurmukhi', 'Lo'),
    Script(0x0A3C, 0x0A3C, 'Gurmukhi', 'Mn'),
    Script(0x0A3E, 0x0A40, 'Gurmukhi', 'Mc'),
    Script(0x0A41, 0x0A42, 'Gurmukhi', 'Mn'),
    Script(0x0A47, 0x0A48, 'Gurmukhi', 'Mn'),
    Script(0x0A4B, 0x0A4D, 'Gurmukhi', 'Mn'),
    Script(0x0A51, 0x0A51, 'Gurmukhi', 'Mn'),
    Script(0x0A59, 0x0A5C, 'Gurmukhi', 'Lo'),
    Script(0x0A5E, 0x0A5E, 'Gurmukhi', 'Lo'),
    Script(0x0A66, 0x0A6F, 'Gurmukhi', 'Nd'),
    Script(0x0A70, 0x0A71, 'Gurmukhi', 'Mn'),
    Script(0x0A72, 0x0A74, 'Gurmukhi', 'Lo'),
    Script(0x0A75, 0x0A75, 'Gurmukhi', 'Mn'),
    Script(0x0A76, 0x0A76, 'Gurmukhi', 'Po'),
    Script(0x0A81, 0x0A82, 'Gujarati', 'Mn'),
    Script(0x0A83, 0x0A83, 'Gujarati', 'Mc'),
    Script(0x0A85, 0x0A8D, 'Gujarati', 'Lo'),
    Script(0x0A8F, 0x0A91, 'Gujarati', 'Lo'),
    Script(0x0A93, 0x0AA8, 'Gujarati', 'Lo'),
    Script(0x0AAA, 0x0AB0, 'Gujarati', 'Lo'),
    Script(0x0AB2, 0x0AB3, 'Gujarati', 'Lo'),
    Script(0x0AB5, 0x0AB9, 'Gujarati', 'Lo'),
    Script(0x0ABC, 0x0ABC, 'Gujarati', 'Mn'),
    Script(0x0ABD, 0x0ABD, 'Gujarati', 'Lo'),
    Script(0x0ABE, 0x0AC0, 'Gujarati', 'Mc'),
    Script(0x0AC1, 0x0AC5, 'Gujarati', 'Mn'),
    Script(0x0AC7, 0x0AC8, 'Gujarati', 'Mn'),
    Script(0x0AC9, 0x0AC9, 'Gujarati', 'Mc'),
    Script(0x0ACB, 0x0ACC, 'Gujarati', 'Mc'),
    Script(0x0ACD, 0x0ACD, 'Gujarati', 'Mn'),
    Script(0x0AD0, 0x0AD0, 'Gujarati', 'Lo'),
    Script(0x0AE0, 0x0AE1, 'Gujarati', 'Lo'),
    Script(0x0AE2, 0x0AE3, 'Gujarati', 'Mn'),
    Script(0x0AE6, 0x0AEF, 'Gujarati', 'Nd'),
    Script(0x0AF0, 0x0AF0, 'Gujarati', 'Po'),
    Script(0x0AF1, 0x0AF1, 'Gujarati', 'Sc'),
    Script(0x0AF9, 0x0AF9, 'Gujarati', 'Lo'),
    Script(0x0AFA, 0x0AFF, 'Gujarati', 'Mn'),
    Script(0x0B01, 0x0B01, 'Oriya', 'Mn'),
    Script(0x0B02, 0x0B03, 'Oriya', 'Mc'),
    Script(0x0B05, 0x0B0C, 'Oriya', 'Lo'),
    Script(0x0B0F, 0x0B10, 'Oriya', 'Lo'),
    Script(0x0B13, 0x0B28, 'Oriya', 'Lo'),
    Script(0x0B2A, 0x0B30, 'Oriya', 'Lo'),
    Script(0x0B32, 0x0B33, 'Oriya', 'Lo'),
    Script(0x0B35, 0x0B39, 'Oriya', 'Lo'),
    Script(0x0B3C, 0x0B3C, 'Oriya', 'Mn'),
    Script(0x0B3D, 0x0B3D, 'Oriya', 'Lo'),
    Script(0x0B3E, 0x0B3E, 'Oriya', 'Mc'),
    Script(0x0B3F, 0x0B3F, 'Oriya', 'Mn'),
    Script(0x0B40, 0x0B40, 'Oriya', 'Mc'),
    Script(0x0B41, 0x0B44, 'Oriya', 'Mn'),
    Script(0x0B47, 0x0B48, 'Oriya', 'Mc'),
    Script(0x0B4B, 0x0B4C, 'Oriya', 'Mc'),
    Script(0x0B4D, 0x0B4D, 'Oriya', 'Mn'),
    Script(0x0B56, 0x0B56, 'Oriya', 'Mn'),
    Script(0x0B57, 0x0B57, 'Oriya', 'Mc'),
    Script(0x0B5C, 0x0B5D, 'Oriya', 'Lo'),
    Script(0x0B5F, 0x0B61, 'Oriya', 'Lo'),
    Script(0x0B62, 0x0B63, 'Oriya', 'Mn'),
    Script(0x0B66, 0x0B6F, 'Oriya', 'Nd'),
    Script(0x0B70, 0x0B70, 'Oriya', 'So'),
    Script(0x0B71, 0x0B71, 'Oriya', 'Lo'),
    Script(0x0B72, 0x0B77, 'Oriya', 'No'),
    Script(0x0B82, 0x0B82, 'Tamil', 'Mn'),
    Script(0x0B83, 0x0B83, 'Tamil', 'Lo'),
    Script(0x0B85, 0x0B8A, 'Tamil', 'Lo'),
    Script(0x0B8E, 0x0B90, 'Tamil', 'Lo'),
    Script(0x0B92, 0x0B95, 'Tamil', 'Lo'),
    Script(0x0B99, 0x0B9A, 'Tamil', 'Lo'),
    Script(0x0B9C, 0x0B9C, 'Tamil', 'Lo'),
    Script(0x0B9E, 0x0B9F, 'Tamil', 'Lo'),
    Script(0x0BA3, 0x0BA4, 'Tamil', 'Lo'),
    Script(0x0BA8, 0x0BAA, 'Tamil', 'Lo'),
    Script(0x0BAE, 0x0BB9, 'Tamil', 'Lo'),
    Script(0x0BBE, 0x0BBF, 'Tamil', 'Mc'),
    Script(0x0BC0, 0x0BC0, 'Tamil', 'Mn'),
    Script(0x0BC1, 0x0BC2, 'Tamil', 'Mc'),
    Script(0x0BC6, 0x0BC8, 'Tamil', 'Mc'),
    Script(0x0BCA, 0x0BCC, 'Tamil', 'Mc'),
    Script(0x0BCD, 0x0BCD, 'Tamil', 'Mn'),
    Script(0x0BD0, 0x0BD0, 'Tamil', 'Lo'),
    Script(0x0BD7, 0x0BD7, 'Tamil', 'Mc'),
    Script(0x0BE6, 0x0BEF, 'Tamil', 'Nd'),
    Script(0x0BF0, 0x0BF2, 'Tamil', 'No'),
    Script(0x0BF3, 0x0BF8, 'Tamil', 'So'),
    Script(0x0BF9, 0x0BF9, 'Tamil', 'Sc'),
    Script(0x0BFA, 0x0BFA, 'Tamil', 'So'),
    Script(0x11FC0, 0x11FD4, 'Tamil', 'No'),
    Script(0x11FD5, 0x11FDC, 'Tamil', 'So'),
    Script(0x11FDD, 0x11FE0, 'Tamil', 'Sc'),
    Script(0x11FE1, 0x11FF1, 'Tamil', 'So'),
    Script(0x11FFF, 0x11FFF, 'Tamil', 'Po'),
    Script(0x0C00, 0x0C00, 'Telugu', 'Mn'),
    Script(0x0C01, 0x0C03, 'Telugu', 'Mc'),
    Script(0x0C04, 0x0C04, 'Telugu', 'Mn'),
    Script(0x0C05, 0x0C0C, 'Telugu', 'Lo'),
    Script(0x0C0E, 0x0C10, 'Telugu', 'Lo'),
    Script(0x0C12, 0x0C28, 'Telugu', 'Lo'),
    Script(0x0C2A, 0x0C39, 'Telugu', 'Lo'),
    Script(0x0C3D, 0x0C3D, 'Telugu', 'Lo'),
    Script(0x0C3E, 0x0C40, 'Telugu', 'Mn'),
    Script(0x0C41, 0x0C44, 'Telugu', 'Mc'),
    Script(0x0C46, 0x0C48, 'Telugu', 'Mn'),
    Script(0x0C4A, 0x0C4D, 'Telugu', 'Mn'),
    Script(0x0C55, 0x0C56, 'Telugu', 'Mn'),
    Script(0x0C58, 0x0C5A, 'Telugu', 'Lo'),
    Script(0x0C60, 0x0C61, 'Telugu', 'Lo'),
    Script(0x0C62, 0x0C63, 'Telugu', 'Mn'),
    Script(0x0C66, 0x0C6F, 'Telugu', 'Nd'),
    Script(0x0C77, 0x0C77, 'Telugu', 'Po'),
    Script(0x0C78, 0x0C7E, 'Telugu', 'No'),
    Script(0x0C7F, 0x0C7F, 'Telugu', 'So'),
    Script(0x0C80, 0x0C80, 'Kannada', 'Lo'),
    Script(0x0C81, 0x0C81, 'Kannada', 'Mn'),
    Script(0x0C82, 0x0C83, 'Kannada', 'Mc'),
    Script(0x0C84, 0x0C84, 'Kannada', 'Po'),
    Script(0x0C85, 0x0C8C, 'Kannada', 'Lo'),
    Script(0x0C8E, 0x0C90, 'Kannada', 'Lo'),
    Script(0x0C92, 0x0CA8, 'Kannada', 'Lo'),
    Script(0x0CAA, 0x0CB3, 'Kannada', 'Lo'),
    Script(0x0CB5, 0x0CB9, 'Kannada', 'Lo'),
    Script(0x0CBC, 0x0CBC, 'Kannada', 'Mn'),
    Script(0x0CBD, 0x0CBD, 'Kannada', 'Lo'),
    Script(0x0CBE, 0x0CBE, 'Kannada', 'Mc'),
    Script(0x0CBF, 0x0CBF, 'Kannada', 'Mn'),
    Script(0x0CC0, 0x0CC4, 'Kannada', 'Mc'),
    Script(0x0CC6, 0x0CC6, 'Kannada', 'Mn'),
    Script(0x0CC7, 0x0CC8, 'Kannada', 'Mc'),
    Script(0x0CCA, 0x0CCB, 'Kannada', 'Mc'),
    Script(0x0CCC, 0x0CCD, 'Kannada', 'Mn'),
    Script(0x0CD5, 0x0CD6, 'Kannada', 'Mc'),
    Script(0x0CDE, 0x0CDE, 'Kannada', 'Lo'),
    Script(0x0CE0, 0x0CE1, 'Kannada', 'Lo'),
    Script(0x0CE2, 0x0CE3, 'Kannada', 'Mn'),
    Script(0x0CE6, 0x0CEF, 'Kannada', 'Nd'),
    Script(0x0CF1, 0x0CF2, 'Kannada', 'Lo'),
    Script(0x0D00, 0x0D01, 'Malayalam', 'Mn'),
    Script(0x0D02, 0x0D03, 'Malayalam', 'Mc'),
    Script(0x0D05, 0x0D0C, 'Malayalam', 'Lo'),
    Script(0x0D0E, 0x0D10, 'Malayalam', 'Lo'),
    Script(0x0D12, 0x0D3A, 'Malayalam', 'Lo'),
    Script(0x0D3B, 0x0D3C, 'Malayalam', 'Mn'),
    Script(0x0D3D, 0x0D3D, 'Malayalam', 'Lo'),
    Script(0x0D3E, 0x0D40, 'Malayalam', 'Mc'),
    Script(0x0D41, 0x0D44, 'Malayalam', 'Mn'),
    Script(0x0D46, 0x0D48, 'Malayalam', 'Mc'),
    Script(0x0D4A, 0x0D4C, 'Malayalam', 'Mc'),
    Script(0x0D4D, 0x0D4D, 'Malayalam', 'Mn'),
    Script(0x0D4E, 0x0D4E, 'Malayalam', 'Lo'),
    Script(0x0D4F, 0x0D4F, 'Malayalam', 'So'),
    Script(0x0D54, 0x0D56, 'Malayalam', 'Lo'),
    Script(0x0D57, 0x0D57, 'Malayalam', 'Mc'),
    Script(0x0D58, 0x0D5E, 'Malayalam', 'No'),
    Script(0x0D5F, 0x0D61, 'Malayalam', 'Lo'),
    Script(0x0D62, 0x0D63, 'Malayalam', 'Mn'),
    Script(0x0D66, 0x0D6F, 'Malayalam', 'Nd'),
    Script(0x0D70, 0x0D78, 'Malayalam', 'No'),
    Script(0x0D79, 0x0D79, 'Malayalam', 'So'),
    Script(0x0D7A, 0x0D7F, 'Malayalam', 'Lo'),
    Script(0x0D82, 0x0D83, 'Sinhala', 'Mc'),
    Script(0x0D85, 0x0D96, 'Sinhala', 'Lo'),
    Script(0x0D9A, 0x0DB1, 'Sinhala', 'Lo'),
    Script(0x0DB3, 0x0DBB, 'Sinhala', 'Lo'),
    Script(0x0DBD, 0x0DBD, 'Sinhala', 'Lo'),
    Script(0x0DC0, 0x0DC6, 'Sinhala', 'Lo'),
    Script(0x0DCA, 0x0DCA, 'Sinhala', 'Mn'),
    Script(0x0DCF, 0x0DD1, 'Sinhala', 'Mc'),
    Script(0x0DD2, 0x0DD4, 'Sinhala', 'Mn'),
    Script(0x0DD6, 0x0DD6, 'Sinhala', 'Mn'),
    Script(0x0DD8, 0x0DDF, 'Sinhala', 'Mc'),
    Script(0x0DE6, 0x0DEF, 'Sinhala', 'Nd'),
    Script(0x0DF2, 0x0DF3, 'Sinhala', 'Mc'),
    Script(0x0DF4, 0x0DF4, 'Sinhala', 'Po'),
    Script(0x111E1, 0x111F4, 'Sinhala', 'No'),
    Script(0x0E01, 0x0E30, 'Thai', 'Lo'),
    Script(0x0E31, 0x0E31, 'Thai', 'Mn'),
    Script(0x0E32, 0x0E33, 'Thai', 'Lo'),
    Script(0x0E34, 0x0E3A, 'Thai', 'Mn'),
    Script(0x0E40, 0x0E45, 'Thai', 'Lo'),
    Script(0x0E46, 0x0E46, 'Thai', 'Lm'),
    Script(0x0E47, 0x0E4E, 'Thai', 'Mn'),
    Script(0x0E4F, 0x0E4F, 'Thai', 'Po'),
    Script(0x0E50, 0x0E59, 'Thai', 'Nd'),
    Script(0x0E5A, 0x0E5B, 'Thai', 'Po'),
    Script(0x0E81, 0x0E82, 'Lao', 'Lo'),
    Script(0x0E84, 0x0E84, 'Lao', 'Lo'),
    Script(0x0E86, 0x0E8A, 'Lao', 'Lo'),
    Script(0x0E8C, 0x0EA3, 'Lao', 'Lo'),
    Script(0x0EA5, 0x0EA5, 'Lao', 'Lo'),
    Script(0x0EA7, 0x0EB0, 'Lao', 'Lo'),
    Script(0x0EB1, 0x0EB1, 'Lao', 'Mn'),
    Script(0x0EB2, 0x0EB3, 'Lao', 'Lo'),
    Script(0x0EB4, 0x0EBC, 'Lao', 'Mn'),
    Script(0x0EBD, 0x0EBD, 'Lao', 'Lo'),
    Script(0x0EC0, 0x0EC4, 'Lao', 'Lo'),
    Script(0x0EC6, 0x0EC6, 'Lao', 'Lm'),
    Script(0x0EC8, 0x0ECD, 'Lao', 'Mn'),
    Script(0x0ED0, 0x0ED9, 'Lao', 'Nd'),
    Script(0x0EDC, 0x0EDF, 'Lao', 'Lo'),
    Script(0x0F00, 0x0F00, 'Tibetan', 'Lo'),
    Script(0x0F01, 0x0F03, 'Tibetan', 'So'),
    Script(0x0F04, 0x0F12, 'Tibetan', 'Po'),
    Script(0x0F13, 0x0F13, 'Tibetan', 'So'),
    Script(0x0F14, 0x0F14, 'Tibetan', 'Po'),
    Script(0x0F15, 0x0F17, 'Tibetan', 'So'),
    Script(0x0F18, 0x0F19, 'Tibetan', 'Mn'),
    Script(0x0F1A, 0x0F1F, 'Tibetan', 'So'),
    Script(0x0F20, 0x0F29, 'Tibetan', 'Nd'),
    Script(0x0F2A, 0x0F33, 'Tibetan', 'No'),
    Script(0x0F34, 0x0F34, 'Tibetan', 'So'),
    Script(0x0F35, 0x0F35, 'Tibetan', 'Mn'),
    Script(0x0F36, 0x0F36, 'Tibetan', 'So'),
    Script(0x0F37, 0x0F37, 'Tibetan', 'Mn'),
    Script(0x0F38, 0x0F38, 'Tibetan', 'So'),
    Script(0x0F39, 0x0F39, 'Tibetan', 'Mn'),
    Script(0x0F3A, 0x0F3A, 'Tibetan', 'Ps'),
    Script(0x0F3B, 0x0F3B, 'Tibetan', 'Pe'),
    Script(0x0F3C, 0x0F3C, 'Tibetan', 'Ps'),
    Script(0x0F3D, 0x0F3D, 'Tibetan', 'Pe'),
    Script(0x0F3E, 0x0F3F, 'Tibetan', 'Mc'),
    Script(0x0F40, 0x0F47, 'Tibetan', 'Lo'),
    Script(0x0F49, 0x0F6C, 'Tibetan', 'Lo'),
    Script(0x0F71, 0x0F7E, 'Tibetan', 'Mn'),
    Script(0x0F7F, 0x0F7F, 'Tibetan', 'Mc'),
    Script(0x0F80, 0x0F84, 'Tibetan', 'Mn'),
    Script(0x0F85, 0x0F85, 'Tibetan', 'Po'),
    Script(0x0F86, 0x0F87, 'Tibetan', 'Mn'),
    Script(0x0F88, 0x0F8C, 'Tibetan', 'Lo'),
    Script(0x0F8D, 0x0F97, 'Tibetan', 'Mn'),
    Script(0x0F99, 0x0FBC, 'Tibetan', 'Mn'),
    Script(0x0FBE, 0x0FC5, 'Tibetan', 'So'),
    Script(0x0FC6, 0x0FC6, 'Tibetan', 'Mn'),
    Script(0x0FC7, 0x0FCC, 'Tibetan', 'So'),
    Script(0x0FCE, 0x0FCF, 'Tibetan', 'So'),
    Script(0x0FD0, 0x0FD4, 'Tibetan', 'Po'),
    Script(0x0FD9, 0x0FDA, 'Tibetan', 'Po'),
    Script(0x1000, 0x102A, 'Myanmar', 'Lo'),
    Script(0x102B, 0x102C, 'Myanmar', 'Mc'),
    Script(0x102D, 0x1030, 'Myanmar', 'Mn'),
    Script(0x1031, 0x1031, 'Myanmar', 'Mc'),
    Script(0x1032, 0x1037, 'Myanmar', 'Mn'),
    Script(0x1038, 0x1038, 'Myanmar', 'Mc'),
    Script(0x1039, 0x103A, 'Myanmar', 'Mn'),
    Script(0x103B, 0x103C, 'Myanmar', 'Mc'),
    Script(0x103D, 0x103E, 'Myanmar', 'Mn'),
    Script(0x103F, 0x103F, 'Myanmar', 'Lo'),
    Script(0x1040, 0x1049, 'Myanmar', 'Nd'),
    Script(0x104A, 0x104F, 'Myanmar', 'Po'),
    Script(0x1050, 0x1055, 'Myanmar', 'Lo'),
    Script(0x1056, 0x1057, 'Myanmar', 'Mc'),
    Script(0x1058, 0x1059, 'Myanmar', 'Mn'),
    Script(0x105A, 0x105D, 'Myanmar', 'Lo'),
    Script(0x105E, 0x1060, 'Myanmar', 'Mn'),
    Script(0x1061, 0x1061, 'Myanmar', 'Lo'),
    Script(0x1062, 0x1064, 'Myanmar', 'Mc'),
    Script(0x1065, 0x1066, 'Myanmar', 'Lo'),
    Script(0x1067, 0x106D, 'Myanmar', 'Mc'),
    Script(0x106E, 0x1070, 'Myanmar', 'Lo'),
    Script(0x1071, 0x1074, 'Myanmar', 'Mn'),
    Script(0x1075, 0x1081, 'Myanmar', 'Lo'),
    Script(0x1082, 0x1082, 'Myanmar', 'Mn'),
    Script(0x1083, 0x1084, 'Myanmar', 'Mc'),
    Script(0x1085, 0x1086, 'Myanmar', 'Mn'),
    Script(0x1087, 0x108C, 'Myanmar', 'Mc'),
    Script(0x108D, 0x108D, 'Myanmar', 'Mn'),
    Script(0x108E, 0x108E, 'Myanmar', 'Lo'),
    Script(0x108F, 0x108F, 'Myanmar', 'Mc'),
    Script(0x1090, 0x1099, 'Myanmar', 'Nd'),
    Script(0x109A, 0x109C, 'Myanmar', 'Mc'),
    Script(0x109D, 0x109D, 'Myanmar', 'Mn'),
    Script(0x109E, 0x109F, 'Myanmar', 'So'),
    Script(0xA9E0, 0xA9E4, 'Myanmar', 'Lo'),
    Script(0xA9E5, 0xA9E5, 'Myanmar', 'Mn'),
    Script(0xA9E6, 0xA9E6, 'Myanmar', 'Lm'),
    Script(0xA9E7, 0xA9EF, 'Myanmar', 'Lo'),
    Script(0xA9F0, 0xA9F9, 'Myanmar', 'Nd'),
    Script(0xA9FA, 0xA9FE, 'Myanmar', 'Lo'),
    Script(0xAA60, 0xAA6F, 'Myanmar', 'Lo'),
    Script(0xAA70, 0xAA70, 'Myanmar', 'Lm'),
    Script(0xAA71, 0xAA76, 'Myanmar', 'Lo'),
    Script(0xAA77, 0xAA79, 'Myanmar', 'So'),
    Script(0xAA7A, 0xAA7A, 'Myanmar', 'Lo'),
    Script(0xAA7B, 0xAA7B, 'Myanmar', 'Mc'),
    Script(0xAA7C, 0xAA7C, 'Myanmar', 'Mn'),
    Script(0xAA7D, 0xAA7D, 'Myanmar', 'Mc'),
    Script(0xAA7E, 0xAA7F, 'Myanmar', 'Lo'),
    Script(0x10A0, 0x10C5, 'Georgian', 'L&'),
    Script(0x10C7, 0x10C7, 'Georgian', 'L&'),
    Script(0x10CD, 0x10CD, 'Georgian', 'L&'),
    Script(0x10D0, 0x10FA, 'Georgian', 'L&'),
    Script(0x10FC, 0x10FC, 'Georgian', 'Lm'),
    Script(0x10FD, 0x10FF, 'Georgian', 'L&'),
    Script(0x1C90, 0x1CBA, 'Georgian', 'L&'),
    Script(0x1CBD, 0x1CBF, 'Georgian', 'L&'),
    Script(0x2D00, 0x2D25, 'Georgian', 'L&'),
    Script(0x2D27, 0x2D27, 'Georgian', 'L&'),
    Script(0x2D2D, 0x2D2D, 'Georgian', 'L&'),
    Script(0x1100, 0x11FF, 'Hangul', 'Lo'),
    Script(0x302E, 0x302F, 'Hangul', 'Mc'),
    Script(0x3131, 0x318E, 'Hangul', 'Lo'),
    Script(0x3200, 0x321E, 'Hangul', 'So'),
    Script(0x3260, 0x327E, 'Hangul', 'So'),
    Script(0xA960, 0xA97C, 'Hangul', 'Lo'),
    Script(0xAC00, 0xD7A3, 'Hangul', 'Lo'),
    Script(0xD7B0, 0xD7C6, 'Hangul', 'Lo'),
    Script(0xD7CB, 0xD7FB, 'Hangul', 'Lo'),
    Script(0xFFA0, 0xFFBE, 'Hangul', 'Lo'),
    Script(0xFFC2, 0xFFC7, 'Hangul', 'Lo'),
    Script(0xFFCA, 0xFFCF, 'Hangul', 'Lo'),
    Script(0xFFD2, 0xFFD7, 'Hangul', 'Lo'),
    Script(0xFFDA, 0xFFDC, 'Hangul', 'Lo'),
    Script(0x1200, 0x1248, 'Ethiopic', 'Lo'),
    Script(0x124A, 0x124D, 'Ethiopic', 'Lo'),
    Script(0x1250, 0x1256, 'Ethiopic', 'Lo'),
    Script(0x1258, 0x1258, 'Ethiopic', 'Lo'),
    Script(0x125A, 0x125D, 'Ethiopic', 'Lo'),
    Script(0x1260, 0x1288, 'Ethiopic', 'Lo'),
    Script(0x128A, 0x128D, 'Ethiopic', 'Lo'),
    Script(0x1290, 0x12B0, 'Ethiopic', 'Lo'),
    Script(0x12B2, 0x12B5, 'Ethiopic', 'Lo'),
    Script(0x12B8, 0x12BE, 'Ethiopic', 'Lo'),
    Script(0x12C0, 0x12C0, 'Ethiopic', 'Lo'),
    Script(0x12C2, 0x12C5, 'Ethiopic', 'Lo'),
    Script(0x12C8, 0x12D6, 'Ethiopic', 'Lo'),
    Script(0x12D8, 0x1310, 'Ethiopic', 'Lo'),
    Script(0x1312, 0x1315, 'Ethiopic', 'Lo'),
    Script(0x1318, 0x135A, 'Ethiopic', 'Lo'),
    Script(0x135D, 0x135F, 'Ethiopic', 'Mn'),
    Script(0x1360, 0x1368, 'Ethiopic', 'Po'),
    Script(0x1369, 0x137C, 'Ethiopic', 'No'),
    Script(0x1380, 0x138F, 'Ethiopic', 'Lo'),
    Script(0x1390, 0x1399, 'Ethiopic', 'So'),
    Script(0x2D80, 0x2D96, 'Ethiopic', 'Lo'),
    Script(0x2DA0, 0x2DA6, 'Ethiopic', 'Lo'),
    Script(0x2DA8, 0x2DAE, 'Ethiopic', 'Lo'),
    Script(0x2DB0, 0x2DB6, 'Ethiopic', 'Lo'),
    Script(0x2DB8, 0x2DBE, 'Ethiopic', 'Lo'),
    Script(0x2DC0, 0x2DC6, 'Ethiopic', 'Lo'),
    Script(0x2DC8, 0x2DCE, 'Ethiopic', 'Lo'),
    Script(0x2DD0, 0x2DD6, 'Ethiopic', 'Lo'),
    Script(0x2DD8, 0x2DDE, 'Ethiopic', 'Lo'),
    Script(0xAB01, 0xAB06, 'Ethiopic', 'Lo'),
    Script(0xAB09, 0xAB0E, 'Ethiopic', 'Lo'),
    Script(0xAB11, 0xAB16, 'Ethiopic', 'Lo'),
    Script(0xAB20, 0xAB26, 'Ethiopic', 'Lo'),
    Script(0xAB28, 0xAB2E, 'Ethiopic', 'Lo'),
    Script(0x13A0, 0x13F5, 'Cherokee', 'L&'),
    Script(0x13F8, 0x13FD, 'Cherokee', 'L&'),
    Script(0xAB70, 0xABBF, 'Cherokee', 'L&'),
    Script(0x1400, 0x1400, 'Canadian_Aboriginal', 'Pd'),
    Script(0x1401, 0x166C, 'Canadian_Aboriginal', 'Lo'),
    Script(0x166D, 0x166D, 'Canadian_Aboriginal', 'So'),
    Script(0x166E, 0x166E, 'Canadian_Aboriginal', 'Po'),
    Script(0x166F, 0x167F, 'Canadian_Aboriginal', 'Lo'),
    Script(0x18B0, 0x18F5, 'Canadian_Aboriginal', 'Lo'),
    Script(0x1680, 0x1680, 'Ogham', 'Zs'),
    Script(0x1681, 0x169A, 'Ogham', 'Lo'),
    Script(0x169B, 0x169B, 'Ogham', 'Ps'),
    Script(0x169C, 0x169C, 'Ogham', 'Pe'),
    Script(0x16A0, 0x16EA, 'Runic', 'Lo'),
    Script(0x16EE, 0x16F0, 'Runic', 'Nl'),
    Script(0x16F1, 0x16F8, 'Runic', 'Lo'),
    Script(0x1780, 0x17B3, 'Khmer', 'Lo'),
    Script(0x17B4, 0x17B5, 'Khmer', 'Mn'),
    Script(0x17B6, 0x17B6, 'Khmer', 'Mc'),
    Script(0x17B7, 0x17BD, 'Khmer', 'Mn'),
    Script(0x17BE, 0x17C5, 'Khmer', 'Mc'),
    Script(0x17C6, 0x17C6, 'Khmer', 'Mn'),
    Script(0x17C7, 0x17C8, 'Khmer', 'Mc'),
    Script(0x17C9, 0x17D3, 'Khmer', 'Mn'),
    Script(0x17D4, 0x17D6, 'Khmer', 'Po'),
    Script(0x17D7, 0x17D7, 'Khmer', 'Lm'),
    Script(0x17D8, 0x17DA, 'Khmer', 'Po'),
    Script(0x17DB, 0x17DB, 'Khmer', 'Sc'),
    Script(0x17DC, 0x17DC, 'Khmer', 'Lo'),
    Script(0x17DD, 0x17DD, 'Khmer', 'Mn'),
    Script(0x17E0, 0x17E9, 'Khmer', 'Nd'),
    Script(0x17F0, 0x17F9, 'Khmer', 'No'),
    Script(0x19E0, 0x19FF, 'Khmer', 'So'),
    Script(0x1800, 0x1801, 'Mongolian', 'Po'),
    Script(0x1804, 0x1804, 'Mongolian', 'Po'),
    Script(0x1806, 0x1806, 'Mongolian', 'Pd'),
    Script(0x1807, 0x180A, 'Mongolian', 'Po'),
    Script(0x180B, 0x180D, 'Mongolian', 'Mn'),
    Script(0x180E, 0x180E, 'Mongolian', 'Cf'),
    Script(0x1810, 0x1819, 'Mongolian', 'Nd'),
    Script(0x1820, 0x1842, 'Mongolian', 'Lo'),
    Script(0x1843, 0x1843, 'Mongolian', 'Lm'),
    Script(0x1844, 0x1878, 'Mongolian', 'Lo'),
    Script(0x1880, 0x1884, 'Mongolian', 'Lo'),
    Script(0x1885, 0x1886, 'Mongolian', 'Mn'),
    Script(0x1887, 0x18A8, 'Mongolian', 'Lo'),
    Script(0x18A9, 0x18A9, 'Mongolian', 'Mn'),
    Script(0x18AA, 0x18AA, 'Mongolian', 'Lo'),
    Script(0x11660, 0x1166C, 'Mongolian', 'Po'),
    Script(0x3041, 0x3096, 'Hiragana', 'Lo'),
    Script(0x309D, 0x309E, 'Hiragana', 'Lm'),
    Script(0x309F, 0x309F, 'Hiragana', 'Lo'),
    Script(0x1B001, 0x1B11E, 'Hiragana', 'Lo'),
    Script(0x1B150, 0x1B152, 'Hiragana', 'Lo'),
    Script(0x1F200, 0x1F200, 'Hiragana', 'So'),
    Script(0x30A1, 0x30FA, 'Katakana', 'Lo'),
    Script(0x30FD, 0x30FE, 'Katakana', 'Lm'),
    Script(0x30FF, 0x30FF, 'Katakana', 'Lo'),
    Script(0x31F0, 0x31FF, 'Katakana', 'Lo'),
    Script(0x32D0, 0x32FE, 'Katakana', 'So'),
    Script(0x3300, 0x3357, 'Katakana', 'So'),
    Script(0xFF66, 0xFF6F, 'Katakana', 'Lo'),
    Script(0xFF71, 0xFF9D, 'Katakana', 'Lo'),
    Script(0x1B000, 0x1B000, 'Katakana', 'Lo'),
    Script(0x1B164, 0x1B167, 'Katakana', 'Lo'),
    Script(0x02EA, 0x02EB, 'Bopomofo', 'Sk'),
    Script(0x3105, 0x312F, 'Bopomofo', 'Lo'),
    Script(0x31A0, 0x31BA, 'Bopomofo', 'Lo'),
    Script(0x2E80, 0x2E99, 'Han', 'So'),
    Script(0x2E9B, 0x2EF3, 'Han', 'So'),
    Script(0x2F00, 0x2FD5, 'Han', 'So'),
    Script(0x3005, 0x3005, 'Han', 'Lm'),
    Script(0x3007, 0x3007, 'Han', 'Nl'),
    Script(0x3021, 0x3029, 'Han', 'Nl'),
    Script(0x3038, 0x303A, 'Han', 'Nl'),
    Script(0x303B, 0x303B, 'Han', 'Lm'),
    Script(0x3400, 0x4DB5, 'Han', 'Lo'),
    Script(0x4E00, 0x9FEF, 'Han', 'Lo'),
    Script(0xF900, 0xFA6D, 'Han', 'Lo'),
    Script(0xFA70, 0xFAD9, 'Han', 'Lo'),
    Script(0x20000, 0x2A6D6, 'Han', 'Lo'),
    Script(0x2A700, 0x2B734, 'Han', 'Lo'),
    Script(0x2B740, 0x2B81D, 'Han', 'Lo'),
    Script(0x2B820, 0x2CEA1, 'Han', 'Lo'),
    Script(0x2CEB0, 0x2EBE0, 'Han', 'Lo'),
    Script(0x2F800, 0x2FA1D, 'Han', 'Lo'),
    Script(0xA000, 0xA014, 'Yi', 'Lo'),
    Script(0xA015, 0xA015, 'Yi', 'Lm'),
    Script(0xA016, 0xA48C, 'Yi', 'Lo'),
    Script(0xA490, 0xA4C6, 'Yi', 'So'),
    Script(0x10300, 0x1031F, 'Old_Italic', 'Lo'),
    Script(0x10320, 0x10323, 'Old_Italic', 'No'),
    Script(0x1032D, 0x1032F, 'Old_Italic', 'Lo'),
    Script(0x10330, 0x10340, 'Gothic', 'Lo'),
    Script(0x10341, 0x10341, 'Gothic', 'Nl'),
    Script(0x10342, 0x10349, 'Gothic', 'Lo'),
    Script(0x1034A, 0x1034A, 'Gothic', 'Nl'),
    Script(0x10400, 0x1044F, 'Deseret', 'L&'),
    Script(0x0300, 0x036F, 'Inherited', 'Mn'),
    Script(0x0485, 0x0486, 'Inherited', 'Mn'),
    Script(0x064B, 0x0655, 'Inherited', 'Mn'),
    Script(0x0670, 0x0670, 'Inherited', 'Mn'),
    Script(0x0951, 0x0954, 'Inherited', 'Mn'),
    Script(0x1AB0, 0x1ABD, 'Inherited', 'Mn'),
    Script(0x1ABE, 0x1ABE, 'Inherited', 'Me'),
    Script(0x1CD0, 0x1CD2, 'Inherited', 'Mn'),
    Script(0x1CD4, 0x1CE0, 'Inherited', 'Mn'),
    Script(0x1CE2, 0x1CE8, 'Inherited', 'Mn'),
    Script(0x1CED, 0x1CED, 'Inherited', 'Mn'),
    Script(0x1CF4, 0x1CF4, 'Inherited', 'Mn'),
    Script(0x1CF8, 0x1CF9, 'Inherited', 'Mn'),
    Script(0x1DC0, 0x1DF9, 'Inherited', 'Mn'),
    Script(0x1DFB, 0x1DFF, 'Inherited', 'Mn'),
    Script(0x200C, 0x200D, 'Inherited', 'Cf'),
    Script(0x20D0, 0x20DC, 'Inherited', 'Mn'),
    Script(0x20DD, 0x20E0, 'Inherited', 'Me'),
    Script(0x20E1, 0x20E1, 'Inherited', 'Mn'),
    Script(0x20E2, 0x20E4, 'Inherited', 'Me'),
    Script(0x20E5, 0x20F0, 'Inherited', 'Mn'),
    Script(0x302A, 0x302D, 'Inherited', 'Mn'),
    Script(0x3099, 0x309A, 'Inherited', 'Mn'),
    Script(0xFE00, 0xFE0F, 'Inherited', 'Mn'),
    Script(0xFE20, 0xFE2D, 'Inherited', 'Mn'),
    Script(0x101FD, 0x101FD, 'Inherited', 'Mn'),
    Script(0x102E0, 0x102E0, 'Inherited', 'Mn'),
    Script(0x1133B, 0x1133B, 'Inherited', 'Mn'),
    Script(0x1D167, 0x1D169, 'Inherited', 'Mn'),
    Script(0x1D17B, 0x1D182, 'Inherited', 'Mn'),
    Script(0x1D185, 0x1D18B, 'Inherited', 'Mn'),
    Script(0x1D1AA, 0x1D1AD, 'Inherited', 'Mn'),
    Script(0xE0100, 0xE01EF, 'Inherited', 'Mn'),
    Script(0x1700, 0x170C, 'Tagalog', 'Lo'),
    Script(0x170E, 0x1711, 'Tagalog', 'Lo'),
    Script(0x1712, 0x1714, 'Tagalog', 'Mn'),
    Script(0x1720, 0x1731, 'Hanunoo', 'Lo'),
    Script(0x1732, 0x1734, 'Hanunoo', 'Mn'),
    Script(0x1740, 0x1751, 'Buhid', 'Lo'),
    Script(0x1752, 0x1753, 'Buhid', 'Mn'),
    Script(0x1760, 0x176C, 'Tagbanwa', 'Lo'),
    Script(0x176E, 0x1770, 'Tagbanwa', 'Lo'),
    Script(0x1772, 0x1773, 'Tagbanwa', 'Mn'),
    Script(0x1900, 0x191E, 'Limbu', 'Lo'),
    Script(0x1920, 0x1922, 'Limbu', 'Mn'),
    Script(0x1923, 0x1926, 'Limbu', 'Mc'),
    Script(0x1927, 0x1928, 'Limbu', 'Mn'),
    Script(0x1929, 0x192B, 'Limbu', 'Mc'),
    Script(0x1930, 0x1931, 'Limbu', 'Mc'),
    Script(0x1932, 0x1932, 'Limbu', 'Mn'),
    Script(0x1933, 0x1938, 'Limbu', 'Mc'),
    Script(0x1939, 0x193B, 'Limbu', 'Mn'),
    Script(0x1940, 0x1940, 'Limbu', 'So'),
    Script(0x1944, 0x1945, 'Limbu', 'Po'),
    Script(0x1946, 0x194F, 'Limbu', 'Nd'),
    Script(0x1950, 0x196D, 'Tai_Le', 'Lo'),
    Script(0x1970, 0x1974, 'Tai_Le', 'Lo'),
    Script(0x10000, 0x1000B, 'Linear_B', 'Lo'),
    Script(0x1000D, 0x10026, 'Linear_B', 'Lo'),
    Script(0x10028, 0x1003A, 'Linear_B', 'Lo'),
    Script(0x1003C, 0x1003D, 'Linear_B', 'Lo'),
    Script(0x1003F, 0x1004D, 'Linear_B', 'Lo'),
    Script(0x10050, 0x1005D, 'Linear_B', 'Lo'),
    Script(0x10080, 0x100FA, 'Linear_B', 'Lo'),
    Script(0x10380, 0x1039D, 'Ugaritic', 'Lo'),
    Script(0x1039F, 0x1039F, 'Ugaritic', 'Po'),
    Script(0x10450, 0x1047F, 'Shavian', 'Lo'),
    Script(0x10480, 0x1049D, 'Osmanya', 'Lo'),
    Script(0x104A0, 0x104A9, 'Osmanya', 'Nd'),
    Script(0x10800, 0x10805, 'Cypriot', 'Lo'),
    Script(0x10808, 0x10808, 'Cypriot', 'Lo'),
    Script(0x1080A, 0x10835, 'Cypriot', 'Lo'),
    Script(0x10837, 0x10838, 'Cypriot', 'Lo'),
    Script(0x1083C, 0x1083C, 'Cypriot', 'Lo'),
    Script(0x1083F, 0x1083F, 'Cypriot', 'Lo'),
    Script(0x2800, 0x28FF, 'Braille', 'So'),
    Script(0x1A00, 0x1A16, 'Buginese', 'Lo'),
    Script(0x1A17, 0x1A18, 'Buginese', 'Mn'),
    Script(0x1A19, 0x1A1A, 'Buginese', 'Mc'),
    Script(0x1A1B, 0x1A1B, 'Buginese', 'Mn'),
    Script(0x1A1E, 0x1A1F, 'Buginese', 'Po'),
    Script(0x03E2, 0x03EF, 'Coptic', 'L&'),
    Script(0x2C80, 0x2CE4, 'Coptic', 'L&'),
    Script(0x2CE5, 0x2CEA, 'Coptic', 'So'),
    Script(0x2CEB, 0x2CEE, 'Coptic', 'L&'),
    Script(0x2CEF, 0x2CF1, 'Coptic', 'Mn'),
    Script(0x2CF2, 0x2CF3, 'Coptic', 'L&'),
    Script(0x2CF9, 0x2CFC, 'Coptic', 'Po'),
    Script(0x2CFD, 0x2CFD, 'Coptic', 'No'),
    Script(0x2CFE, 0x2CFF, 'Coptic', 'Po'),
    Script(0x1980, 0x19AB, 'New_Tai_Lue', 'Lo'),
    Script(0x19B0, 0x19C9, 'New_Tai_Lue', 'Lo'),
    Script(0x19D0, 0x19D9, 'New_Tai_Lue', 'Nd'),
    Script(0x19DA, 0x19DA, 'New_Tai_Lue', 'No'),
    Script(0x19DE, 0x19DF, 'New_Tai_Lue', 'So'),
    Script(0x2C00, 0x2C2E, 'Glagolitic', 'L&'),
    Script(0x2C30, 0x2C5E, 'Glagolitic', 'L&'),
    Script(0x1E000, 0x1E006, 'Glagolitic', 'Mn'),
    Script(0x1E008, 0x1E018, 'Glagolitic', 'Mn'),
    Script(0x1E01B, 0x1E021, 'Glagolitic', 'Mn'),
    Script(0x1E023, 0x1E024, 'Glagolitic', 'Mn'),
    Script(0x1E026, 0x1E02A, 'Glagolitic', 'Mn'),
    Script(0x2D30, 0x2D67, 'Tifinagh', 'Lo'),
    Script(0x2D6F, 0x2D6F, 'Tifinagh', 'Lm'),
    Script(0x2D70, 0x2D70, 'Tifinagh', 'Po'),
    Script(0x2D7F, 0x2D7F, 'Tifinagh', 'Mn'),
    Script(0xA800, 0xA801, 'Syloti_Nagri', 'Lo'),
    Script(0xA802, 0xA802, 'Syloti_Nagri', 'Mn'),
    Script(0xA803, 0xA805, 'Syloti_Nagri', 'Lo'),
    Script(0xA806, 0xA806, 'Syloti_Nagri', 'Mn'),
    Script(0xA807, 0xA80A, 'Syloti_Nagri', 'Lo'),
    Script(0xA80B, 0xA80B, 'Syloti_Nagri', 'Mn'),
    Script(0xA80C, 0xA822, 'Syloti_Nagri', 'Lo'),
    Script(0xA823, 0xA824, 'Syloti_Nagri', 'Mc'),
    Script(0xA825, 0xA826, 'Syloti_Nagri', 'Mn'),
    Script(0xA827, 0xA827, 'Syloti_Nagri', 'Mc'),
    Script(0xA828, 0xA82B, 'Syloti_Nagri', 'So'),
    Script(0x103A0, 0x103C3, 'Old_Persian', 'Lo'),
    Script(0x103C8, 0x103CF, 'Old_Persian', 'Lo'),
    Script(0x103D0, 0x103D0, 'Old_Persian', 'Po'),
    Script(0x103D1, 0x103D5, 'Old_Persian', 'Nl'),
    Script(0x10A00, 0x10A00, 'Kharoshthi', 'Lo'),
    Script(0x10A01, 0x10A03, 'Kharoshthi', 'Mn'),
    Script(0x10A05, 0x10A06, 'Kharoshthi', 'Mn'),
    Script(0x10A0C, 0x10A0F, 'Kharoshthi', 'Mn'),
    Script(0x10A10, 0x10A13, 'Kharoshthi', 'Lo'),
    Script(0x10A15, 0x10A17, 'Kharoshthi', 'Lo'),
    Script(0x10A19, 0x10A35, 'Kharoshthi', 'Lo'),
    Script(0x10A38, 0x10A3A, 'Kharoshthi', 'Mn'),
    Script(0x10A3F, 0x10A3F, 'Kharoshthi', 'Mn'),
    Script(0x10A40, 0x10A48, 'Kharoshthi', 'No'),
    Script(0x10A50, 0x10A58, 'Kharoshthi', 'Po'),
    Script(0x1B00, 0x1B03, 'Balinese', 'Mn'),
    Script(0x1B04, 0x1B04, 'Balinese', 'Mc'),
    Script(0x1B05, 0x1B33, 'Balinese', 'Lo'),
    Script(0x1B34, 0x1B34, 'Balinese', 'Mn'),
    Script(0x1B35, 0x1B35, 'Balinese', 'Mc'),
    Script(0x1B36, 0x1B3A, 'Balinese', 'Mn'),
    Script(0x1B3B, 0x1B3B, 'Balinese', 'Mc'),
    Script(0x1B3C, 0x1B3C, 'Balinese', 'Mn'),
    Script(0x1B3D, 0x1B41, 'Balinese', 'Mc'),
    Script(0x1B42, 0x1B42, 'Balinese', 'Mn'),
    Script(0x1B43, 0x1B44, 'Balinese', 'Mc'),
    Script(0x1B45, 0x1B4B, 'Balinese', 'Lo'),
    Script(0x1B50, 0x1B59, 'Balinese', 'Nd'),
    Script(0x1B5A, 0x1B60, 'Balinese', 'Po'),
    Script(0x1B61, 0x1B6A, 'Balinese', 'So'),
    Script(0x1B6B, 0x1B73, 'Balinese', 'Mn'),
    Script(0x1B74, 0x1B7C, 'Balinese', 'So'),
    Script(0x12000, 0x12399, 'Cuneiform', 'Lo'),
    Script(0x12400, 0x1246E, 'Cuneiform', 'Nl'),
    Script(0x12470, 0x12474, 'Cuneiform', 'Po'),
    Script(0x12480, 0x12543, 'Cuneiform', 'Lo'),
    Script(0x10900, 0x10915, 'Phoenician', 'Lo'),
    Script(0x10916, 0x1091B, 'Phoenician', 'No'),
    Script(0x1091F, 0x1091F, 'Phoenician', 'Po'),
    Script(0xA840, 0xA873, 'Phags_Pa', 'Lo'),
    Script(0xA874, 0xA877, 'Phags_Pa', 'Po'),
    Script(0x07C0, 0x07C9, 'Nko', 'Nd'),
    Script(0x07CA, 0x07EA, 'Nko', 'Lo'),
    Script(0x07EB, 0x07F3, 'Nko', 'Mn'),
    Script(0x07F4, 0x07F5, 'Nko', 'Lm'),
    Script(0x07F6, 0x07F6, 'Nko', 'So'),
    Script(0x07F7, 0x07F9, 'Nko', 'Po'),
    Script(0x07FA, 0x07FA, 'Nko', 'Lm'),
    Script(0x07FD, 0x07FD, 'Nko', 'Mn'),
    Script(0x07FE, 0x07FF, 'Nko', 'Sc'),
    Script(0x1B80, 0x1B81, 'Sundanese', 'Mn'),
    Script(0x1B82, 0x1B82, 'Sundanese', 'Mc'),
    Script(0x1B83, 0x1BA0, 'Sundanese', 'Lo'),
    Script(0x1BA1, 0x1BA1, 'Sundanese', 'Mc'),
    Script(0x1BA2, 0x1BA5, 'Sundanese', 'Mn'),
    Script(0x1BA6, 0x1BA7, 'Sundanese', 'Mc'),
    Script(0x1BA8, 0x1BA9, 'Sundanese', 'Mn'),
    Script(0x1BAA, 0x1BAA, 'Sundanese', 'Mc'),
    Script(0x1BAB, 0x1BAD, 'Sundanese', 'Mn'),
    Script(0x1BAE, 0x1BAF, 'Sundanese', 'Lo'),
    Script(0x1BB0, 0x1BB9, 'Sundanese', 'Nd'),
    Script(0x1BBA, 0x1BBF, 'Sundanese', 'Lo'),
    Script(0x1CC0, 0x1CC7, 'Sundanese', 'Po'),
    Script(0x1C00, 0x1C23, 'Lepcha', 'Lo'),
    Script(0x1C24, 0x1C2B, 'Lepcha', 'Mc'),
    Script(0x1C2C, 0x1C33, 'Lepcha', 'Mn'),
    Script(0x1C34, 0x1C35, 'Lepcha', 'Mc'),
    Script(0x1C36, 0x1C37, 'Lepcha', 'Mn'),
    Script(0x1C3B, 0x1C3F, 'Lepcha', 'Po'),
    Script(0x1C40, 0x1C49, 'Lepcha', 'Nd'),
    Script(0x1C4D, 0x1C4F, 'Lepcha', 'Lo'),
    Script(0x1C50, 0x1C59, 'Ol_Chiki', 'Nd'),
    Script(0x1C5A, 0x1C77, 'Ol_Chiki', 'Lo'),
    Script(0x1C78, 0x1C7D, 'Ol_Chiki', 'Lm'),
    Script(0x1C7E, 0x1C7F, 'Ol_Chiki', 'Po'),
    Script(0xA500, 0xA60B, 'Vai', 'Lo'),
    Script(0xA60C, 0xA60C, 'Vai', 'Lm'),
    Script(0xA60D, 0xA60F, 'Vai', 'Po'),
    Script(0xA610, 0xA61F, 'Vai', 'Lo'),
    Script(0xA620, 0xA629, 'Vai', 'Nd'),
    Script(0xA62A, 0xA62B, 'Vai', 'Lo'),
    Script(0xA880, 0xA881, 'Saurashtra', 'Mc'),
    Script(0xA882, 0xA8B3, 'Saurashtra', 'Lo'),
    Script(0xA8B4, 0xA8C3, 'Saurashtra', 'Mc'),
    Script(0xA8C4, 0xA8C5, 'Saurashtra', 'Mn'),
    Script(0xA8CE, 0xA8CF, 'Saurashtra', 'Po'),
    Script(0xA8D0, 0xA8D9, 'Saurashtra', 'Nd'),
    Script(0xA900, 0xA909, 'Kayah_Li', 'Nd'),
    Script(0xA90A, 0xA925, 'Kayah_Li', 'Lo'),
    Script(0xA926, 0xA92D, 'Kayah_Li', 'Mn'),
    Script(0xA92F, 0xA92F, 'Kayah_Li', 'Po'),
    Script(0xA930, 0xA946, 'Rejang', 'Lo'),
    Script(0xA947, 0xA951, 'Rejang', 'Mn'),
    Script(0xA952, 0xA953, 'Rejang', 'Mc'),
    Script(0xA95F, 0xA95F, 'Rejang', 'Po'),
    Script(0x10280, 0x1029C, 'Lycian', 'Lo'),
    Script(0x102A0, 0x102D0, 'Carian', 'Lo'),
    Script(0x10920, 0x10939, 'Lydian', 'Lo'),
    Script(0x1093F, 0x1093F, 'Lydian', 'Po'),
    Script(0xAA00, 0xAA28, 'Cham', 'Lo'),
    Script(0xAA29, 0xAA2E, 'Cham', 'Mn'),
    Script(0xAA2F, 0xAA30, 'Cham', 'Mc'),
    Script(0xAA31, 0xAA32, 'Cham', 'Mn'),
    Script(0xAA33, 0xAA34, 'Cham', 'Mc'),
    Script(0xAA35, 0xAA36, 'Cham', 'Mn'),
    Script(0xAA40, 0xAA42, 'Cham', 'Lo'),
    Script(0xAA43, 0xAA43, 'Cham', 'Mn'),
    Script(0xAA44, 0xAA4B, 'Cham', 'Lo'),
    Script(0xAA4C, 0xAA4C, 'Cham', 'Mn'),
    Script(0xAA4D, 0xAA4D, 'Cham', 'Mc'),
    Script(0xAA50, 0xAA59, 'Cham', 'Nd'),
    Script(0xAA5C, 0xAA5F, 'Cham', 'Po'),
    Script(0x1A20, 0x1A54, 'Tai_Tham', 'Lo'),
    Script(0x1A55, 0x1A55, 'Tai_Tham', 'Mc'),
    Script(0x1A56, 0x1A56, 'Tai_Tham', 'Mn'),
    Script(0x1A57, 0x1A57, 'Tai_Tham', 'Mc'),
    Script(0x1A58, 0x1A5E, 'Tai_Tham', 'Mn'),
    Script(0x1A60, 0x1A60, 'Tai_Tham', 'Mn'),
    Script(0x1A61, 0x1A61, 'Tai_Tham', 'Mc'),
    Script(0x1A62, 0x1A62, 'Tai_Tham', 'Mn'),
    Script(0x1A63, 0x1A64, 'Tai_Tham', 'Mc'),
    Script(0x1A65, 0x1A6C, 'Tai_Tham', 'Mn'),
    Script(0x1A6D, 0x1A72, 'Tai_Tham', 'Mc'),
    Script(0x1A73, 0x1A7C, 'Tai_Tham', 'Mn'),
    Script(0x1A7F, 0x1A7F, 'Tai_Tham', 'Mn'),
    Script(0x1A80, 0x1A89, 'Tai_Tham', 'Nd'),
    Script(0x1A90, 0x1A99, 'Tai_Tham', 'Nd'),
    Script(0x1AA0, 0x1AA6, 'Tai_Tham', 'Po'),
    Script(0x1AA7, 0x1AA7, 'Tai_Tham', 'Lm'),
    Script(0x1AA8, 0x1AAD, 'Tai_Tham', 'Po'),
    Script(0xAA80, 0xAAAF, 'Tai_Viet', 'Lo'),
    Script(0xAAB0, 0xAAB0, 'Tai_Viet', 'Mn'),
    Script(0xAAB1, 0xAAB1, 'Tai_Viet', 'Lo'),
    Script(0xAAB2, 0xAAB4, 'Tai_Viet', 'Mn'),
    Script(0xAAB5, 0xAAB6, 'Tai_Viet', 'Lo'),
    Script(0xAAB7, 0xAAB8, 'Tai_Viet', 'Mn'),
    Script(0xAAB9, 0xAABD, 'Tai_Viet', 'Lo'),
    Script(0xAABE, 0xAABF, 'Tai_Viet', 'Mn'),
    Script(0xAAC0, 0xAAC0, 'Tai_Viet', 'Lo'),
    Script(0xAAC1, 0xAAC1, 'Tai_Viet', 'Mn'),
    Script(0xAAC2, 0xAAC2, 'Tai_Viet', 'Lo'),
    Script(0xAADB, 0xAADC, 'Tai_Viet', 'Lo'),
    Script(0xAADD, 0xAADD, 'Tai_Viet', 'Lm'),
    Script(0xAADE, 0xAADF, 'Tai_Viet', 'Po'),
    Script(0x10B00, 0x10B35, 'Avestan', 'Lo'),
    Script(0x10B39, 0x10B3F, 'Avestan', 'Po'),
    Script(0x13000, 0x1342E, 'Egyptian_Hieroglyphs', 'Lo'),
    Script(0x13430, 0x13438, 'Egyptian_Hieroglyphs', 'Cf'),
    Script(0x0800, 0x0815, 'Samaritan', 'Lo'),
    Script(0x0816, 0x0819, 'Samaritan', 'Mn'),
    Script(0x081A, 0x081A, 'Samaritan', 'Lm'),
    Script(0x081B, 0x0823, 'Samaritan', 'Mn'),
    Script(0x0824, 0x0824, 'Samaritan', 'Lm'),
    Script(0x0825, 0x0827, 'Samaritan', 'Mn'),
    Script(0x0828, 0x0828, 'Samaritan', 'Lm'),
    Script(0x0829, 0x082D, 'Samaritan', 'Mn'),
    Script(0x0830, 0x083E, 'Samaritan', 'Po'),
    Script(0xA4D0, 0xA4F7, 'Lisu', 'Lo'),
    Script(0xA4F8, 0xA4FD, 'Lisu', 'Lm'),
    Script(0xA4FE, 0xA4FF, 'Lisu', 'Po'),
    Script(0xA6A0, 0xA6E5, 'Bamum', 'Lo'),
    Script(0xA6E6, 0xA6EF, 'Bamum', 'Nl'),
    Script(0xA6F0, 0xA6F1, 'Bamum', 'Mn'),
    Script(0xA6F2, 0xA6F7, 'Bamum', 'Po'),
    Script(0x16800, 0x16A38, 'Bamum', 'Lo'),
    Script(0xA980, 0xA982, 'Javanese', 'Mn'),
    Script(0xA983, 0xA983, 'Javanese', 'Mc'),
    Script(0xA984, 0xA9B2, 'Javanese', 'Lo'),
    Script(0xA9B3, 0xA9B3, 'Javanese', 'Mn'),
    Script(0xA9B4, 0xA9B5, 'Javanese', 'Mc'),
    Script(0xA9B6, 0xA9B9, 'Javanese', 'Mn'),
    Script(0xA9BA, 0xA9BB, 'Javanese', 'Mc'),
    Script(0xA9BC, 0xA9BD, 'Javanese', 'Mn'),
    Script(0xA9BE, 0xA9C0, 'Javanese', 'Mc'),
    Script(0xA9C1, 0xA9CD, 'Javanese', 'Po'),
    Script(0xA9D0, 0xA9D9, 'Javanese', 'Nd'),
    Script(0xA9DE, 0xA9DF, 'Javanese', 'Po'),
    Script(0xAAE0, 0xAAEA, 'Meetei_Mayek', 'Lo'),
    Script(0xAAEB, 0xAAEB, 'Meetei_Mayek', 'Mc'),
    Script(0xAAEC, 0xAAED, 'Meetei_Mayek', 'Mn'),
    Script(0xAAEE, 0xAAEF, 'Meetei_Mayek', 'Mc'),
    Script(0xAAF0, 0xAAF1, 'Meetei_Mayek', 'Po'),
    Script(0xAAF2, 0xAAF2, 'Meetei_Mayek', 'Lo'),
    Script(0xAAF3, 0xAAF4, 'Meetei_Mayek', 'Lm'),
    Script(0xAAF5, 0xAAF5, 'Meetei_Mayek', 'Mc'),
    Script(0xAAF6, 0xAAF6, 'Meetei_Mayek', 'Mn'),
    Script(0xABC0, 0xABE2, 'Meetei_Mayek', 'Lo'),
    Script(0xABE3, 0xABE4, 'Meetei_Mayek', 'Mc'),
    Script(0xABE5, 0xABE5, 'Meetei_Mayek', 'Mn'),
    Script(0xABE6, 0xABE7, 'Meetei_Mayek', 'Mc'),
    Script(0xABE8, 0xABE8, 'Meetei_Mayek', 'Mn'),
    Script(0xABE9, 0xABEA, 'Meetei_Mayek', 'Mc'),
    Script(0xABEB, 0xABEB, 'Meetei_Mayek', 'Po'),
    Script(0xABEC, 0xABEC, 'Meetei_Mayek', 'Mc'),
    Script(0xABED, 0xABED, 'Meetei_Mayek', 'Mn'),
    Script(0xABF0, 0xABF9, 'Meetei_Mayek', 'Nd'),
    Script(0x10840, 0x10855, 'Imperial_Aramaic', 'Lo'),
    Script(0x10857, 0x10857, 'Imperial_Aramaic', 'Po'),
    Script(0x10858, 0x1085F, 'Imperial_Aramaic', 'No'),
    Script(0x10A60, 0x10A7C, 'Old_South_Arabian', 'Lo'),
    Script(0x10A7D, 0x10A7E, 'Old_South_Arabian', 'No'),
    Script(0x10A7F, 0x10A7F, 'Old_South_Arabian', 'Po'),
    Script(0x10B40, 0x10B55, 'Inscriptional_Parthian', 'Lo'),
    Script(0x10B58, 0x10B5F, 'Inscriptional_Parthian', 'No'),
    Script(0x10B60, 0x10B72, 'Inscriptional_Pahlavi', 'Lo'),
    Script(0x10B78, 0x10B7F, 'Inscriptional_Pahlavi', 'No'),
    Script(0x10C00, 0x10C48, 'Old_Turkic', 'Lo'),
    Script(0x11080, 0x11081, 'Kaithi', 'Mn'),
    Script(0x11082, 0x11082, 'Kaithi', 'Mc'),
    Script(0x11083, 0x110AF, 'Kaithi', 'Lo'),
    Script(0x110B0, 0x110B2, 'Kaithi', 'Mc'),
    Script(0x110B3, 0x110B6, 'Kaithi', 'Mn'),
    Script(0x110B7, 0x110B8, 'Kaithi', 'Mc'),
    Script(0x110B9, 0x110BA, 'Kaithi', 'Mn'),
    Script(0x110BB, 0x110BC, 'Kaithi', 'Po'),
    Script(0x110BD, 0x110BD, 'Kaithi', 'Cf'),
    Script(0x110BE, 0x110C1, 'Kaithi', 'Po'),
    Script(0x110CD, 0x110CD, 'Kaithi', 'Cf'),
    Script(0x1BC0, 0x1BE5, 'Batak', 'Lo'),
    Script(0x1BE6, 0x1BE6, 'Batak', 'Mn'),
    Script(0x1BE7, 0x1BE7, 'Batak', 'Mc'),
    Script(0x1BE8, 0x1BE9, 'Batak', 'Mn'),
    Script(0x1BEA, 0x1BEC, 'Batak', 'Mc'),
    Script(0x1BED, 0x1BED, 'Batak', 'Mn'),
    Script(0x1BEE, 0x1BEE, 'Batak', 'Mc'),
    Script(0x1BEF, 0x1BF1, 'Batak', 'Mn'),
    Script(0x1BF2, 0x1BF3, 'Batak', 'Mc'),
    Script(0x1BFC, 0x1BFF, 'Batak', 'Po'),
    Script(0x11000, 0x11000, 'Brahmi', 'Mc'),
    Script(0x11001, 0x11001, 'Brahmi', 'Mn'),
    Script(0x11002, 0x11002, 'Brahmi', 'Mc'),
    Script(0x11003, 0x11037, 'Brahmi', 'Lo'),
    Script(0x11038, 0x11046, 'Brahmi', 'Mn'),
    Script(0x11047, 0x1104D, 'Brahmi', 'Po'),
    Script(0x11052, 0x11065, 'Brahmi', 'No'),
    Script(0x11066, 0x1106F, 'Brahmi', 'Nd'),
    Script(0x1107F, 0x1107F, 'Brahmi', 'Mn'),
    Script(0x0840, 0x0858, 'Mandaic', 'Lo'),
    Script(0x0859, 0x085B, 'Mandaic', 'Mn'),
    Script(0x085E, 0x085E, 'Mandaic', 'Po'),
    Script(0x11100, 0x11102, 'Chakma', 'Mn'),
    Script(0x11103, 0x11126, 'Chakma', 'Lo'),
    Script(0x11127, 0x1112B, 'Chakma', 'Mn'),
    Script(0x1112C, 0x1112C, 'Chakma', 'Mc'),
    Script(0x1112D, 0x11134, 'Chakma', 'Mn'),
    Script(0x11136, 0x1113F, 'Chakma', 'Nd'),
    Script(0x11140, 0x11143, 'Chakma', 'Po'),
    Script(0x11144, 0x11144, 'Chakma', 'Lo'),
    Script(0x11145, 0x11146, 'Chakma', 'Mc'),
    Script(0x109A0, 0x109B7, 'Meroitic_Cursive', 'Lo'),
    Script(0x109BC, 0x109BD, 'Meroitic_Cursive', 'No'),
    Script(0x109BE, 0x109BF, 'Meroitic_Cursive', 'Lo'),
    Script(0x109C0, 0x109CF, 'Meroitic_Cursive', 'No'),
    Script(0x109D2, 0x109FF, 'Meroitic_Cursive', 'No'),
    Script(0x10980, 0x1099F, 'Meroitic_Hieroglyphs', 'Lo'),
    Script(0x16F00, 0x16F4A, 'Miao', 'Lo'),
    Script(0x16F4F, 0x16F4F, 'Miao', 'Mn'),
    Script(0x16F50, 0x16F50, 'Miao', 'Lo'),
    Script(0x16F51, 0x16F87, 'Miao', 'Mc'),
    Script(0x16F8F, 0x16F92, 'Miao', 'Mn'),
    Script(0x16F93, 0x16F9F, 'Miao', 'Lm'),
    Script(0x11180, 0x11181, 'Sharada', 'Mn'),
    Script(0x11182, 0x11182, 'Sharada', 'Mc'),
    Script(0x11183, 0x111B2, 'Sharada', 'Lo'),
    Script(0x111B3, 0x111B5, 'Sharada', 'Mc'),
    Script(0x111B6, 0x111BE, 'Sharada', 'Mn'),
    Script(0x111BF, 0x111C0, 'Sharada', 'Mc'),
    Script(0x111C1, 0x111C4, 'Sharada', 'Lo'),
    Script(0x111C5, 0x111C8, 'Sharada', 'Po'),
    Script(0x111C9, 0x111CC, 'Sharada', 'Mn'),
    Script(0x111CD, 0x111CD, 'Sharada', 'Po'),
    Script(0x111D0, 0x111D9, 'Sharada', 'Nd'),
    Script(0x111DA, 0x111DA, 'Sharada', 'Lo'),
    Script(0x111DB, 0x111DB, 'Sharada', 'Po'),
    Script(0x111DC, 0x111DC, 'Sharada', 'Lo'),
    Script(0x111DD, 0x111DF, 'Sharada', 'Po'),
    Script(0x110D0, 0x110E8, 'Sora_Sompeng', 'Lo'),
    Script(0x110F0, 0x110F9, 'Sora_Sompeng', 'Nd'),
    Script(0x11680, 0x116AA, 'Takri', 'Lo'),
    Script(0x116AB, 0x116AB, 'Takri', 'Mn'),
    Script(0x116AC, 0x116AC, 'Takri', 'Mc'),
    Script(0x116AD, 0x116AD, 'Takri', 'Mn'),
    Script(0x116AE, 0x116AF, 'Takri', 'Mc'),
    Script(0x116B0, 0x116B5, 'Takri', 'Mn'),
    Script(0x116B6, 0x116B6, 'Takri', 'Mc'),
    Script(0x116B7, 0x116B7, 'Takri', 'Mn'),
    Script(0x116B8, 0x116B8, 'Takri', 'Lo'),
    Script(0x116C0, 0x116C9, 'Takri', 'Nd'),
    Script(0x10530, 0x10563, 'Caucasian_Albanian', 'Lo'),
    Script(0x1056F, 0x1056F, 'Caucasian_Albanian', 'Po'),
    Script(0x16AD0, 0x16AED, 'Bassa_Vah', 'Lo'),
    Script(0x16AF0, 0x16AF4, 'Bassa_Vah', 'Mn'),
    Script(0x16AF5, 0x16AF5, 'Bassa_Vah', 'Po'),
    Script(0x1BC00, 0x1BC6A, 'Duployan', 'Lo'),
    Script(0x1BC70, 0x1BC7C, 'Duployan', 'Lo'),
    Script(0x1BC80, 0x1BC88, 'Duployan', 'Lo'),
    Script(0x1BC90, 0x1BC99, 'Duployan', 'Lo'),
    Script(0x1BC9C, 0x1BC9C, 'Duployan', 'So'),
    Script(0x1BC9D, 0x1BC9E, 'Duployan', 'Mn'),
    Script(0x1BC9F, 0x1BC9F, 'Duployan', 'Po'),
    Script(0x10500, 0x10527, 'Elbasan', 'Lo'),
    Script(0x11300, 0x11301, 'Grantha', 'Mn'),
    Script(0x11302, 0x11303, 'Grantha', 'Mc'),
    Script(0x11305, 0x1130C, 'Grantha', 'Lo'),
    Script(0x1130F, 0x11310, 'Grantha', 'Lo'),
    Script(0x11313, 0x11328, 'Grantha', 'Lo'),
    Script(0x1132A, 0x11330, 'Grantha', 'Lo'),
    Script(0x11332, 0x11333, 'Grantha', 'Lo'),
    Script(0x11335, 0x11339, 'Grantha', 'Lo'),
    Script(0x1133C, 0x1133C, 'Grantha', 'Mn'),
    Script(0x1133D, 0x1133D, 'Grantha', 'Lo'),
    Script(0x1133E, 0x1133F, 'Grantha', 'Mc'),
    Script(0x11340, 0x11340, 'Grantha', 'Mn'),
    Script(0x11341, 0x11344, 'Grantha', 'Mc'),
    Script(0x11347, 0x11348, 'Grantha', 'Mc'),
    Script(0x1134B, 0x1134D, 'Grantha', 'Mc'),
    Script(0x11350, 0x11350, 'Grantha', 'Lo'),
    Script(0x11357, 0x11357, 'Grantha', 'Mc'),
    Script(0x1135D, 0x11361, 'Grantha', 'Lo'),
    Script(0x11362, 0x11363, 'Grantha', 'Mc'),
    Script(0x11366, 0x1136C, 'Grantha', 'Mn'),
    Script(0x11370, 0x11374, 'Grantha', 'Mn'),
    Script(0x16B00, 0x16B2F, 'Pahawh_Hmong', 'Lo'),
    Script(0x16B30, 0x16B36, 'Pahawh_Hmong', 'Mn'),
    Script(0x16B37, 0x16B3B, 'Pahawh_Hmong', 'Po'),
    Script(0x16B3C, 0x16B3F, 'Pahawh_Hmong', 'So'),
    Script(0x16B40, 0x16B43, 'Pahawh_Hmong', 'Lm'),
    Script(0x16B44, 0x16B44, 'Pahawh_Hmong', 'Po'),
    Script(0x16B45, 0x16B45, 'Pahawh_Hmong', 'So'),
    Script(0x16B50, 0x16B59, 'Pahawh_Hmong', 'Nd'),
    Script(0x16B5B, 0x16B61, 'Pahawh_Hmong', 'No'),
    Script(0x16B63, 0x16B77, 'Pahawh_Hmong', 'Lo'),
    Script(0x16B7D, 0x16B8F, 'Pahawh_Hmong', 'Lo'),
    Script(0x11200, 0x11211, 'Khojki', 'Lo'),
    Script(0x11213, 0x1122B, 'Khojki', 'Lo'),
    Script(0x1122C, 0x1122E, 'Khojki', 'Mc'),
    Script(0x1122F, 0x11231, 'Khojki', 'Mn'),
    Script(0x11232, 0x11233, 'Khojki', 'Mc'),
    Script(0x11234, 0x11234, 'Khojki', 'Mn'),
    Script(0x11235, 0x11235, 'Khojki', 'Mc'),
    Script(0x11236, 0x11237, 'Khojki', 'Mn'),
    Script(0x11238, 0x1123D, 'Khojki', 'Po'),
    Script(0x1123E, 0x1123E, 'Khojki', 'Mn'),
    Script(0x10600, 0x10736, 'Linear_A', 'Lo'),
    Script(0x10740, 0x10755, 'Linear_A', 'Lo'),
    Script(0x10760, 0x10767, 'Linear_A', 'Lo'),
    Script(0x11150, 0x11172, 'Mahajani', 'Lo'),
    Script(0x11173, 0x11173, 'Mahajani', 'Mn'),
    Script(0x11174, 0x11175, 'Mahajani', 'Po'),
    Script(0x11176, 0x11176, 'Mahajani', 'Lo'),
    Script(0x10AC0, 0x10AC7, 'Manichaean', 'Lo'),
    Script(0x10AC8, 0x10AC8, 'Manichaean', 'So'),
    Script(0x10AC9, 0x10AE4, 'Manichaean', 'Lo'),
    Script(0x10AE5, 0x10AE6, 'Manichaean', 'Mn'),
    Script(0x10AEB, 0x10AEF, 'Manichaean', 'No'),
    Script(0x10AF0, 0x10AF6, 'Manichaean', 'Po'),
    Script(0x1E800, 0x1E8C4, 'Mende_Kikakui', 'Lo'),
    Script(0x1E8C7, 0x1E8CF, 'Mende_Kikakui', 'No'),
    Script(0x1E8D0, 0x1E8D6, 'Mende_Kikakui', 'Mn'),
    Script(0x11600, 0x1162F, 'Modi', 'Lo'),
    Script(0x11630, 0x11632, 'Modi', 'Mc'),
    Script(0x11633, 0x1163A, 'Modi', 'Mn'),
    Script(0x1163B, 0x1163C, 'Modi', 'Mc'),
    Script(0x1163D, 0x1163D, 'Modi', 'Mn'),
    Script(0x1163E, 0x1163E, 'Modi', 'Mc'),
    Script(0x1163F, 0x11640, 'Modi', 'Mn'),
    Script(0x11641, 0x11643, 'Modi', 'Po'),
    Script(0x11644, 0x11644, 'Modi', 'Lo'),
    Script(0x11650, 0x11659, 'Modi', 'Nd'),
    Script(0x16A40, 0x16A5E, 'Mro', 'Lo'),
    Script(0x16A60, 0x16A69, 'Mro', 'Nd'),
    Script(0x16A6E, 0x16A6F, 'Mro', 'Po'),
    Script(0x10A80, 0x10A9C, 'Old_North_Arabian', 'Lo'),
    Script(0x10A9D, 0x10A9F, 'Old_North_Arabian', 'No'),
    Script(0x10880, 0x1089E, 'Nabataean', 'Lo'),
    Script(0x108A7, 0x108AF, 'Nabataean', 'No'),
    Script(0x10860, 0x10876, 'Palmyrene', 'Lo'),
    Script(0x10877, 0x10878, 'Palmyrene', 'So'),
    Script(0x10879, 0x1087F, 'Palmyrene', 'No'),
    Script(0x11AC0, 0x11AF8, 'Pau_Cin_Hau', 'Lo'),
    Script(0x10350, 0x10375, 'Old_Permic', 'Lo'),
    Script(0x10376, 0x1037A, 'Old_Permic', 'Mn'),
    Script(0x10B80, 0x10B91, 'Psalter_Pahlavi', 'Lo'),
    Script(0x10B99, 0x10B9C, 'Psalter_Pahlavi', 'Po'),
    Script(0x10BA9, 0x10BAF, 'Psalter_Pahlavi', 'No'),
    Script(0x11580, 0x115AE, 'Siddham', 'Lo'),
    Script(0x115AF, 0x115B1, 'Siddham', 'Mc'),
    Script(0x115B2, 0x115B5, 'Siddham', 'Mn'),
    Script(0x115B8, 0x115BB, 'Siddham', 'Mc'),
    Script(0x115BC, 0x115BD, 'Siddham', 'Mn'),
    Script(0x115BE, 0x115BE, 'Siddham', 'Mc'),
    Script(0x115BF, 0x115C0, 'Siddham', 'Mn'),
    Script(0x115C1, 0x115D7, 'Siddham', 'Po'),
    Script(0x115D8, 0x115DB, 'Siddham', 'Lo'),
    Script(0x115DC, 0x115DD, 'Siddham', 'Mn'),
    Script(0x112B0, 0x112DE, 'Khudawadi', 'Lo'),
    Script(0x112DF, 0x112DF, 'Khudawadi', 'Mn'),
    Script(0x112E0, 0x112E2, 'Khudawadi', 'Mc'),
    Script(0x112E3, 0x112EA, 'Khudawadi', 'Mn'),
    Script(0x112F0, 0x112F9, 'Khudawadi', 'Nd'),
    Script(0x11480, 0x114AF, 'Tirhuta', 'Lo'),
    Script(0x114B0, 0x114B2, 'Tirhuta', 'Mc'),
    Script(0x114B3, 0x114B8, 'Tirhuta', 'Mn'),
    Script(0x114B9, 0x114B9, 'Tirhuta', 'Mc'),
    Script(0x114BA, 0x114BA, 'Tirhuta', 'Mn'),
    Script(0x114BB, 0x114BE, 'Tirhuta', 'Mc'),
    Script(0x114BF, 0x114C0, 'Tirhuta', 'Mn'),
    Script(0x114C1, 0x114C1, 'Tirhuta', 'Mc'),
    Script(0x114C2, 0x114C3, 'Tirhuta', 'Mn'),
    Script(0x114C4, 0x114C5, 'Tirhuta', 'Lo'),
    Script(0x114C6, 0x114C6, 'Tirhuta', 'Po'),
    Script(0x114C7, 0x114C7, 'Tirhuta', 'Lo'),
    Script(0x114D0, 0x114D9, 'Tirhuta', 'Nd'),
    Script(0x118A0, 0x118DF, 'Warang_Citi', 'L&'),
    Script(0x118E0, 0x118E9, 'Warang_Citi', 'Nd'),
    Script(0x118EA, 0x118F2, 'Warang_Citi', 'No'),
    Script(0x118FF, 0x118FF, 'Warang_Citi', 'Lo'),
    Script(0x11700, 0x1171A, 'Ahom', 'Lo'),
    Script(0x1171D, 0x1171F, 'Ahom', 'Mn'),
    Script(0x11720, 0x11721, 'Ahom', 'Mc'),
    Script(0x11722, 0x11725, 'Ahom', 'Mn'),
    Script(0x11726, 0x11726, 'Ahom', 'Mc'),
    Script(0x11727, 0x1172B, 'Ahom', 'Mn'),
    Script(0x11730, 0x11739, 'Ahom', 'Nd'),
    Script(0x1173A, 0x1173B, 'Ahom', 'No'),
    Script(0x1173C, 0x1173E, 'Ahom', 'Po'),
    Script(0x1173F, 0x1173F, 'Ahom', 'So'),
    Script(0x14400, 0x14646, 'Anatolian_Hieroglyphs', 'Lo'),
    Script(0x108E0, 0x108F2, 'Hatran', 'Lo'),
    Script(0x108F4, 0x108F5, 'Hatran', 'Lo'),
    Script(0x108FB, 0x108FF, 'Hatran', 'No'),
    Script(0x11280, 0x11286, 'Multani', 'Lo'),
    Script(0x11288, 0x11288, 'Multani', 'Lo'),
    Script(0x1128A, 0x1128D, 'Multani', 'Lo'),
    Script(0x1128F, 0x1129D, 'Multani', 'Lo'),
    Script(0x1129F, 0x112A8, 'Multani', 'Lo'),
    Script(0x112A9, 0x112A9, 'Multani', 'Po'),
    Script(0x10C80, 0x10CB2, 'Old_Hungarian', 'L&'),
    Script(0x10CC0, 0x10CF2, 'Old_Hungarian', 'L&'),
    Script(0x10CFA, 0x10CFF, 'Old_Hungarian', 'No'),
    Script(0x1D800, 0x1D9FF, 'SignWriting', 'So'),
    Script(0x1DA00, 0x1DA36, 'SignWriting', 'Mn'),
    Script(0x1DA37, 0x1DA3A, 'SignWriting', 'So'),
    Script(0x1DA3B, 0x1DA6C, 'SignWriting', 'Mn'),
    Script(0x1DA6D, 0x1DA74, 'SignWriting', 'So'),
    Script(0x1DA75, 0x1DA75, 'SignWriting', 'Mn'),
    Script(0x1DA76, 0x1DA83, 'SignWriting', 'So'),
    Script(0x1DA84, 0x1DA84, 'SignWriting', 'Mn'),
    Script(0x1DA85, 0x1DA86, 'SignWriting', 'So'),
    Script(0x1DA87, 0x1DA8B, 'SignWriting', 'Po'),
    Script(0x1DA9B, 0x1DA9F, 'SignWriting', 'Mn'),
    Script(0x1DAA1, 0x1DAAF, 'SignWriting', 'Mn'),
    Script(0x1E900, 0x1E943, 'Adlam', 'L&'),
    Script(0x1E944, 0x1E94A, 'Adlam', 'Mn'),
    Script(0x1E94B, 0x1E94B, 'Adlam', 'Lm'),
    Script(0x1E950, 0x1E959, 'Adlam', 'Nd'),
    Script(0x1E95E, 0x1E95F, 'Adlam', 'Po'),
    Script(0x11C00, 0x11C08, 'Bhaiksuki', 'Lo'),
    Script(0x11C0A, 0x11C2E, 'Bhaiksuki', 'Lo'),
    Script(0x11C2F, 0x11C2F, 'Bhaiksuki', 'Mc'),
    Script(0x11C30, 0x11C36, 'Bhaiksuki', 'Mn'),
    Script(0x11C38, 0x11C3D, 'Bhaiksuki', 'Mn'),
    Script(0x11C3E, 0x11C3E, 'Bhaiksuki', 'Mc'),
    Script(0x11C3F, 0x11C3F, 'Bhaiksuki', 'Mn'),
    Script(0x11C40, 0x11C40, 'Bhaiksuki', 'Lo'),
    Script(0x11C41, 0x11C45, 'Bhaiksuki', 'Po'),
    Script(0x11C50, 0x11C59, 'Bhaiksuki', 'Nd'),
    Script(0x11C5A, 0x11C6C, 'Bhaiksuki', 'No'),
    Script(0x11C70, 0x11C71, 'Marchen', 'Po'),
    Script(0x11C72, 0x11C8F, 'Marchen', 'Lo'),
    Script(0x11C92, 0x11CA7, 'Marchen', 'Mn'),
    Script(0x11CA9, 0x11CA9, 'Marchen', 'Mc'),
    Script(0x11CAA, 0x11CB0, 'Marchen', 'Mn'),
    Script(0x11CB1, 0x11CB1, 'Marchen', 'Mc'),
    Script(0x11CB2, 0x11CB3, 'Marchen', 'Mn'),
    Script(0x11CB4, 0x11CB4, 'Marchen', 'Mc'),
    Script(0x11CB5, 0x11CB6, 'Marchen', 'Mn'),
    Script(0x11400, 0x11434, 'Newa', 'Lo'),
    Script(0x11435, 0x11437, 'Newa', 'Mc'),
    Script(0x11438, 0x1143F, 'Newa', 'Mn'),
    Script(0x11440, 0x11441, 'Newa', 'Mc'),
    Script(0x11442, 0x11444, 'Newa', 'Mn'),
    Script(0x11445, 0x11445, 'Newa', 'Mc'),
    Script(0x11446, 0x11446, 'Newa', 'Mn'),
    Script(0x11447, 0x1144A, 'Newa', 'Lo'),
    Script(0x1144B, 0x1144F, 'Newa', 'Po'),
    Script(0x11450, 0x11459, 'Newa', 'Nd'),
    Script(0x1145B, 0x1145B, 'Newa', 'Po'),
    Script(0x1145D, 0x1145D, 'Newa', 'Po'),
    Script(0x1145E, 0x1145E, 'Newa', 'Mn'),
    Script(0x1145F, 0x1145F, 'Newa', 'Lo'),
    Script(0x104B0, 0x104D3, 'Osage', 'L&'),
    Script(0x104D8, 0x104FB, 'Osage', 'L&'),
    Script(0x16FE0, 0x16FE0, 'Tangut', 'Lm'),
    Script(0x17000, 0x187F7, 'Tangut', 'Lo'),
    Script(0x18800, 0x18AF2, 'Tangut', 'Lo'),
    Script(0x11D00, 0x11D06, 'Masaram_Gondi', 'Lo'),
    Script(0x11D08, 0x11D09, 'Masaram_Gondi', 'Lo'),
    Script(0x11D0B, 0x11D30, 'Masaram_Gondi', 'Lo'),
    Script(0x11D31, 0x11D36, 'Masaram_Gondi', 'Mn'),
    Script(0x11D3A, 0x11D3A, 'Masaram_Gondi', 'Mn'),
    Script(0x11D3C, 0x11D3D, 'Masaram_Gondi', 'Mn'),
    Script(0x11D3F, 0x11D45, 'Masaram_Gondi', 'Mn'),
    Script(0x11D46, 0x11D46, 'Masaram_Gondi', 'Lo'),
    Script(0x11D47, 0x11D47, 'Masaram_Gondi', 'Mn'),
    Script(0x11D50, 0x11D59, 'Masaram_Gondi', 'Nd'),
    Script(0x16FE1, 0x16FE1, 'Nushu', 'Lm'),
    Script(0x1B170, 0x1B2FB, 'Nushu', 'Lo'),
    Script(0x11A50, 0x11A50, 'Soyombo', 'Lo'),
    Script(0x11A51, 0x11A56, 'Soyombo', 'Mn'),
    Script(0x11A57, 0x11A58, 'Soyombo', 'Mc'),
    Script(0x11A59, 0x11A5B, 'Soyombo', 'Mn'),
    Script(0x11A5C, 0x11A89, 'Soyombo', 'Lo'),
    Script(0x11A8A, 0x11A96, 'Soyombo', 'Mn'),
    Script(0x11A97, 0x11A97, 'Soyombo', 'Mc'),
    Script(0x11A98, 0x11A99, 'Soyombo', 'Mn'),
    Script(0x11A9A, 0x11A9C, 'Soyombo', 'Po'),
    Script(0x11A9D, 0x11A9D, 'Soyombo', 'Lo'),
    Script(0x11A9E, 0x11AA2, 'Soyombo', 'Po'),
    Script(0x11A00, 0x11A00, 'Zanabazar_Square', 'Lo'),
    Script(0x11A01, 0x11A0A, 'Zanabazar_Square', 'Mn'),
    Script(0x11A0B, 0x11A32, 'Zanabazar_Square', 'Lo'),
    Script(0x11A33, 0x11A38, 'Zanabazar_Square', 'Mn'),
    Script(0x11A39, 0x11A39, 'Zanabazar_Square', 'Mc'),
    Script(0x11A3A, 0x11A3A, 'Zanabazar_Square', 'Lo'),
    Script(0x11A3B, 0x11A3E, 'Zanabazar_Square', 'Mn'),
    Script(0x11A3F, 0x11A46, 'Zanabazar_Square', 'Po'),
    Script(0x11A47, 0x11A47, 'Zanabazar_Square', 'Mn'),
    Script(0x11800, 0x1182B, 'Dogra', 'Lo'),
    Script(0x1182C, 0x1182E, 'Dogra', 'Mc'),
    Script(0x1182F, 0x11837, 'Dogra', 'Mn'),
    Script(0x11838, 0x11838, 'Dogra', 'Mc'),
    Script(0x11839, 0x1183A, 'Dogra', 'Mn'),
    Script(0x1183B, 0x1183B, 'Dogra', 'Po'),
    Script(0x11D60, 0x11D65, 'Gunjala_Gondi', 'Lo'),
    Script(0x11D67, 0x11D68, 'Gunjala_Gondi', 'Lo'),
    Script(0x11D6A, 0x11D89, 'Gunjala_Gondi', 'Lo'),
    Script(0x11D8A, 0x11D8E, 'Gunjala_Gondi', 'Mc'),
    Script(0x11D90, 0x11D91, 'Gunjala_Gondi', 'Mn'),
    Script(0x11D93, 0x11D94, 'Gunjala_Gondi', 'Mc'),
    Script(0x11D95, 0x11D95, 'Gunjala_Gondi', 'Mn'),
    Script(0x11D96, 0x11D96, 'Gunjala_Gondi', 'Mc'),
    Script(0x11D97, 0x11D97, 'Gunjala_Gondi', 'Mn'),
    Script(0x11D98, 0x11D98, 'Gunjala_Gondi', 'Lo'),
    Script(0x11DA0, 0x11DA9, 'Gunjala_Gondi', 'Nd'),
    Script(0x11EE0, 0x11EF2, 'Makasar', 'Lo'),
    Script(0x11EF3, 0x11EF4, 'Makasar', 'Mn'),
    Script(0x11EF5, 0x11EF6, 'Makasar', 'Mc'),
    Script(0x11EF7, 0x11EF8, 'Makasar', 'Po'),
    Script(0x16E40, 0x16E7F, 'Medefaidrin', 'L&'),
    Script(0x16E80, 0x16E96, 'Medefaidrin', 'No'),
    Script(0x16E97, 0x16E9A, 'Medefaidrin', 'Po'),
    Script(0x10D00, 0x10D23, 'Hanifi_Rohingya', 'Lo'),
    Script(0x10D24, 0x10D27, 'Hanifi_Rohingya', 'Mn'),
    Script(0x10D30, 0x10D39, 'Hanifi_Rohingya', 'Nd'),
    Script(0x10F30, 0x10F45, 'Sogdian', 'Lo'),
    Script(0x10F46, 0x10F50, 'Sogdian', 'Mn'),
    Script(0x10F51, 0x10F54, 'Sogdian', 'No'),
    Script(0x10F55, 0x10F59, 'Sogdian', 'Po'),
    Script(0x10F00, 0x10F1C, 'Old_Sogdian', 'Lo'),
    Script(0x10F1D, 0x10F26, 'Old_Sogdian', 'No'),
    Script(0x10F27, 0x10F27, 'Old_Sogdian', 'Lo'),
    Script(0x10FE0, 0x10FF6, 'Elymaic', 'Lo'),
    Script(0x119A0, 0x119A7, 'Nandinagari', 'Lo'),
    Script(0x119AA, 0x119D0, 'Nandinagari', 'Lo'),
    Script(0x119D1, 0x119D3, 'Nandinagari', 'Mc'),
    Script(0x119D4, 0x119D7, 'Nandinagari', 'Mn'),
    Script(0x119DA, 0x119DB, 'Nandinagari', 'Mn'),
    Script(0x119DC, 0x119DF, 'Nandinagari', 'Mc'),
    Script(0x119E0, 0x119E0, 'Nandinagari', 'Mn'),
    Script(0x119E1, 0x119E1, 'Nandinagari', 'Lo'),
    Script(0x119E2, 0x119E2, 'Nandinagari', 'Po'),
    Script(0x119E3, 0x119E3, 'Nandinagari', 'Lo'),
    Script(0x119E4, 0x119E4, 'Nandinagari', 'Mc'),
    Script(0x1E100, 0x1E12C, 'Nyiakeng_Puachue_Hmong', 'Lo'),
    Script(0x1E130, 0x1E136, 'Nyiakeng_Puachue_Hmong', 'Mn'),
    Script(0x1E137, 0x1E13D, 'Nyiakeng_Puachue_Hmong', 'Lm'),
    Script(0x1E140, 0x1E149, 'Nyiakeng_Puachue_Hmong', 'Nd'),
    Script(0x1E14E, 0x1E14E, 'Nyiakeng_Puachue_Hmong', 'Lo'),
    Script(0x1E14F, 0x1E14F, 'Nyiakeng_Puachue_Hmong', 'So'),
    Script(0x1E2C0, 0x1E2EB, 'Wancho', 'Lo'),
    Script(0x1E2EC, 0x1E2EF, 'Wancho', 'Mn'),
    Script(0x1E2F0, 0x1E2F9, 'Wancho', 'Nd'),
    Script(0x1E2FF, 0x1E2FF, 'Wancho', 'Sc'),
  ];

}


