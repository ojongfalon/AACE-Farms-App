// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum DeviceSize {
  mobile,
  tablet,
  desktop,
}

abstract class FlutterFlowTheme {
  static DeviceSize deviceSize = DeviceSize.mobile;

  static FlutterFlowTheme of(BuildContext context) {
    deviceSize = getDeviceSize(context);
    return LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;

  late Color federalBlue;
  late Color marianBlue;
  late Color honoluluBlue;
  late Color blueGreen;
  late Color pacificCyan;
  late Color vividSkyBlue;
  late Color nonPhotoBlue;
  late Color nonPhotoBlue2;
  late Color lightCyan;
  late Color seasalt;
  late Color antiflashWhite;
  late Color platinum;
  late Color frenchGray;
  late Color frenchGray2;
  late Color slateGray;
  late Color outerSpace;
  late Color onyx;
  late Color eerieBlack;
  late Color nyanza;
  late Color celadon;
  late Color celadon2;
  late Color mint;
  late Color mint2;
  late Color seaGreen;
  late Color dartmouthGreen;
  late Color brunswickGreen;
  late Color darkGreen;
  late Color thistle;
  late Color thistle2;
  late Color wisteria;
  late Color wisteria2;
  late Color lavenderFloral;
  late Color amethyst;
  late Color amethyst2;
  late Color royalPurple;
  late Color royalPurple2;
  late Color royalPurple3;
  late Color rNight;
  late Color rEerieBlack;
  late Color rBloodRed;
  late Color rCornellRed;
  late Color rCornellRed2;
  late Color rImperialRed;
  late Color rSilver;
  late Color rTimberwolf;
  late Color rWhiteSmoke;
  late Color rWhite;
  late Color carmine;
  late Color fireBrick;
  late Color fireBrick2;
  late Color fireEngineRed;
  late Color rojo;
  late Color indianRed;
  late Color indianRed2;
  late Color lightCoral;
  late Color cherryBlossomPink;
  late Color teaRoseRed;

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayMediumFamily => typography.displayMediumFamily;
  TextStyle get displayMedium => typography.displayMedium;
  String get displaySmallFamily => typography.displaySmallFamily;
  TextStyle get displaySmall => typography.displaySmall;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get titleLargeFamily => typography.titleLargeFamily;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleMediumFamily => typography.titleMediumFamily;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleSmallFamily => typography.titleSmallFamily;
  TextStyle get titleSmall => typography.titleSmall;
  String get labelLargeFamily => typography.labelLargeFamily;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelMediumFamily => typography.labelMediumFamily;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelSmallFamily => typography.labelSmallFamily;
  TextStyle get labelSmall => typography.labelSmall;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  TextStyle get bodyLarge => typography.bodyLarge;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodySmallFamily => typography.bodySmallFamily;
  TextStyle get bodySmall => typography.bodySmall;

  Typography get typography => {
        DeviceSize.mobile: MobileTypography(this),
        DeviceSize.tablet: TabletTypography(this),
        DeviceSize.desktop: DesktopTypography(this),
      }[deviceSize]!;
}

DeviceSize getDeviceSize(BuildContext context) {
  final width = MediaQuery.sizeOf(context).width;
  if (width < 479) {
    return DeviceSize.mobile;
  } else if (width < 991) {
    return DeviceSize.tablet;
  } else {
    return DeviceSize.desktop;
  }
}

class LightModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF0096C7);
  late Color secondary = const Color(0xFF52B788);
  late Color tertiary = const Color(0xFF815AC0);
  late Color alternate = const Color(0xFFF8F9FA);
  late Color primaryText = const Color(0xFF0B090A);
  late Color secondaryText = const Color(0xFF495057);
  late Color primaryBackground = const Color(0xFFF8F9FA);
  late Color secondaryBackground = const Color(0xFFE9ECEF);
  late Color accent1 = const Color(0x7F023E8A);
  late Color accent2 = const Color(0x7F40916C);
  late Color accent3 = const Color(0x7F6247AA);
  late Color accent4 = const Color(0xFFCED4DA);
  late Color success = const Color(0xFF4CAF50);
  late Color warning = const Color(0xFFFFEB3B);
  late Color error = const Color(0xFFF46836);
  late Color info = const Color(0xFF00CFFF);

  late Color federalBlue = Color(0xFF03045E);
  late Color marianBlue = Color(0xFF023E8A);
  late Color honoluluBlue = Color(0xFF0077B6);
  late Color blueGreen = Color(0xFF0096C7);
  late Color pacificCyan = Color(0xFF00B4D8);
  late Color vividSkyBlue = Color(0xFF48CAE4);
  late Color nonPhotoBlue = Color(0xFF90E0EF);
  late Color nonPhotoBlue2 = Color(0xFFADE8F4);
  late Color lightCyan = Color(0xFFCAF0F8);
  late Color seasalt = Color(0xFFF8F9FA);
  late Color antiflashWhite = Color(0xFFE9ECEF);
  late Color platinum = Color(0xFFDEE2E6);
  late Color frenchGray = Color(0xFFCED4DA);
  late Color frenchGray2 = Color(0xFFADB5BD);
  late Color slateGray = Color(0xFF6C757D);
  late Color outerSpace = Color(0xFF495057);
  late Color onyx = Color(0xFF343A40);
  late Color eerieBlack = Color(0xFF212529);
  late Color nyanza = Color(0xFFD8F3DC);
  late Color celadon = Color(0xFFB7E4C7);
  late Color celadon2 = Color(0xFF95D5B2);
  late Color mint = Color(0xFF74C69D);
  late Color mint2 = Color(0xFF52B788);
  late Color seaGreen = Color(0xFF40916C);
  late Color dartmouthGreen = Color(0xFF2D6A4F);
  late Color brunswickGreen = Color(0xFF1B4332);
  late Color darkGreen = Color(0xFF081C15);
  late Color thistle = Color(0xFFDEC9E9);
  late Color thistle2 = Color(0xFFDAC3E8);
  late Color wisteria = Color(0xFFD2B7E5);
  late Color wisteria2 = Color(0xFFC19EE0);
  late Color lavenderFloral = Color(0xFFB185DB);
  late Color amethyst = Color(0xFFA06CD5);
  late Color amethyst2 = Color(0xFF9163CB);
  late Color royalPurple = Color(0xFF815AC0);
  late Color royalPurple2 = Color(0xFF7251B5);
  late Color royalPurple3 = Color(0xFF6247AA);
  late Color rNight = Color(0xFF0B090A);
  late Color rEerieBlack = Color(0xFF161A1D);
  late Color rBloodRed = Color(0xFF660708);
  late Color rCornellRed = Color(0xFFA4161A);
  late Color rCornellRed2 = Color(0xFFBA181B);
  late Color rImperialRed = Color(0xFFE5383B);
  late Color rSilver = Color(0xFFB1A7A6);
  late Color rTimberwolf = Color(0xFFD3D3D3);
  late Color rWhiteSmoke = Color(0xFFF5F3F4);
  late Color rWhite = Color(0xFFFFFFFF);
  late Color carmine = Color(0xFF9C191B);
  late Color fireBrick = Color(0xFFAC1C1E);
  late Color fireBrick2 = Color(0xFFBD1F21);
  late Color fireEngineRed = Color(0xFFD02224);
  late Color rojo = Color(0xFFDD2C2F);
  late Color indianRed = Color(0xFFE35053);
  late Color indianRed2 = Color(0xFFE66063);
  late Color lightCoral = Color(0xFFEC8385);
  late Color cherryBlossomPink = Color(0xFFF1A7A9);
  late Color teaRoseRed = Color(0xFFF6CACC);
}

abstract class Typography {
  String get displayLargeFamily;
  TextStyle get displayLarge;
  String get displayMediumFamily;
  TextStyle get displayMedium;
  String get displaySmallFamily;
  TextStyle get displaySmall;
  String get headlineLargeFamily;
  TextStyle get headlineLarge;
  String get headlineMediumFamily;
  TextStyle get headlineMedium;
  String get headlineSmallFamily;
  TextStyle get headlineSmall;
  String get titleLargeFamily;
  TextStyle get titleLarge;
  String get titleMediumFamily;
  TextStyle get titleMedium;
  String get titleSmallFamily;
  TextStyle get titleSmall;
  String get labelLargeFamily;
  TextStyle get labelLarge;
  String get labelMediumFamily;
  TextStyle get labelMedium;
  String get labelSmallFamily;
  TextStyle get labelSmall;
  String get bodyLargeFamily;
  TextStyle get bodyLarge;
  String get bodyMediumFamily;
  TextStyle get bodyMedium;
  String get bodySmallFamily;
  TextStyle get bodySmall;
}

class MobileTypography extends Typography {
  MobileTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Mulish';
  TextStyle get displayLarge => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 64.0,
      );
  String get displayMediumFamily => 'Mulish';
  TextStyle get displayMedium => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 44.0,
      );
  String get displaySmallFamily => 'Mulish';
  TextStyle get displaySmall => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 36.0,
      );
  String get headlineLargeFamily => 'Work Sans';
  TextStyle get headlineLarge => GoogleFonts.getFont(
        'Work Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'Work Sans';
  TextStyle get headlineMedium => GoogleFonts.getFont(
        'Work Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 24.0,
      );
  String get headlineSmallFamily => 'Work Sans';
  TextStyle get headlineSmall => GoogleFonts.getFont(
        'Work Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 24.0,
      );
  String get titleLargeFamily => 'Work Sans';
  TextStyle get titleLarge => GoogleFonts.getFont(
        'Work Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  String get titleMediumFamily => 'Work Sans';
  TextStyle get titleMedium => GoogleFonts.getFont(
        'Work Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 18.0,
      );
  String get titleSmallFamily => 'Work Sans';
  TextStyle get titleSmall => GoogleFonts.getFont(
        'Work Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get labelLargeFamily => 'Mulish';
  TextStyle get labelLarge => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get labelMediumFamily => 'Mulish';
  TextStyle get labelMedium => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get labelSmallFamily => 'Mulish';
  TextStyle get labelSmall => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
  String get bodyLargeFamily => 'Mulish';
  TextStyle get bodyLarge => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'Mulish';
  TextStyle get bodyMedium => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get bodySmallFamily => 'Mulish';
  TextStyle get bodySmall => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
}

class TabletTypography extends Typography {
  TabletTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Mulish';
  TextStyle get displayLarge => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 65.0,
      );
  String get displayMediumFamily => 'Mulish';
  TextStyle get displayMedium => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 45.0,
      );
  String get displaySmallFamily => 'Mulish';
  TextStyle get displaySmall => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 37.0,
      );
  String get headlineLargeFamily => 'Mulish';
  TextStyle get headlineLarge => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 33.0,
      );
  String get headlineMediumFamily => 'Mulish';
  TextStyle get headlineMedium => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 25.0,
      );
  String get headlineSmallFamily => 'Mulish';
  TextStyle get headlineSmall => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 25.0,
      );
  String get titleLargeFamily => 'Mulish';
  TextStyle get titleLarge => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 23.0,
      );
  String get titleMediumFamily => 'Mulish';
  TextStyle get titleMedium => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 19.0,
      );
  String get titleSmallFamily => 'Mulish';
  TextStyle get titleSmall => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 17.0,
      );
  String get labelLargeFamily => 'Mulish';
  TextStyle get labelLarge => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 17.0,
      );
  String get labelMediumFamily => 'Mulish';
  TextStyle get labelMedium => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 15.0,
      );
  String get labelSmallFamily => 'Mulish';
  TextStyle get labelSmall => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 13.0,
      );
  String get bodyLargeFamily => 'Mulish';
  TextStyle get bodyLarge => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 17.0,
      );
  String get bodyMediumFamily => 'Mulish';
  TextStyle get bodyMedium => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 15.0,
      );
  String get bodySmallFamily => 'Mulish';
  TextStyle get bodySmall => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 13.0,
      );
}

class DesktopTypography extends Typography {
  DesktopTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Mulish';
  TextStyle get displayLarge => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 72.0,
      );
  String get displayMediumFamily => 'Mulish';
  TextStyle get displayMedium => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 52.0,
      );
  String get displaySmallFamily => 'Mulish';
  TextStyle get displaySmall => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 44.0,
      );
  String get headlineLargeFamily => 'Mulish';
  TextStyle get headlineLarge => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 40.0,
      );
  String get headlineMediumFamily => 'Mulish';
  TextStyle get headlineMedium => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 32.0,
      );
  String get headlineSmallFamily => 'Mulish';
  TextStyle get headlineSmall => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 30.0,
      );
  String get titleLargeFamily => 'Mulish';
  TextStyle get titleLarge => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 30.0,
      );
  String get titleMediumFamily => 'Mulish';
  TextStyle get titleMedium => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 26.0,
      );
  String get titleSmallFamily => 'Mulish';
  TextStyle get titleSmall => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 24.0,
      );
  String get labelLargeFamily => 'Mulish';
  TextStyle get labelLarge => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 24.0,
      );
  String get labelMediumFamily => 'Mulish';
  TextStyle get labelMedium => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 22.0,
      );
  String get labelSmallFamily => 'Mulish';
  TextStyle get labelSmall => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 20.0,
      );
  String get bodyLargeFamily => 'Mulish';
  TextStyle get bodyLarge => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 24.0,
      );
  String get bodyMediumFamily => 'Mulish';
  TextStyle get bodyMedium => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 22.0,
      );
  String get bodySmallFamily => 'Mulish';
  TextStyle get bodySmall => GoogleFonts.getFont(
        'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 22.0,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
