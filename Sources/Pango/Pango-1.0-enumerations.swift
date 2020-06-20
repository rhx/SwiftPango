import CGLib
import CPango
import GLib
import GLibObject

/// A `PangoAlignment` describes how to align the lines of a `PangoLayout` within the
/// available space. If the `PangoLayout` is set to justify
/// using `pango_layout_set_justify()`, this only has effect for partial lines.
public typealias Alignment = PangoAlignment

public extension Alignment {
    /// Put all available space on the right
    static let `left` = PANGO_ALIGN_LEFT /* 0 */
    /// Center the line within the available space
    static let center = PANGO_ALIGN_CENTER /* 1 */
    /// Put all available space on the left
    static let `right` = PANGO_ALIGN_RIGHT /* 2 */
    /// Put all available space on the right
    @available(*, deprecated) static let left_ = Alignment.`left` /* PANGO_ALIGN_LEFT */
    /// Put all available space on the left
    @available(*, deprecated) static let right_ = Alignment.`right` /* PANGO_ALIGN_RIGHT */
}
func cast<I: BinaryInteger>(_ param: I) -> Alignment { Alignment(rawValue: cast(param)) }
func cast(_ param: Alignment) -> UInt32 { cast(param.rawValue) }


/// The `PangoAttrType`
/// distinguishes between different types of attributes. Along with the
/// predefined values, it is possible to allocate additional values
/// for custom attributes using `pango_attr_type_register()`. The predefined
/// values are given below. The type of structure used to store the
/// attribute is listed in parentheses after the description.
public typealias AttrType = PangoAttrType

public extension AttrType {
    /// does not happen
    static let invalid = PANGO_ATTR_INVALID /* 0 */
    /// language (`PangoAttrLanguage`)
    static let language = PANGO_ATTR_LANGUAGE /* 1 */
    /// font family name list (`PangoAttrString`)
    static let family = PANGO_ATTR_FAMILY /* 2 */
    /// font slant style (`PangoAttrInt`)
    static let style = PANGO_ATTR_STYLE /* 3 */
    /// font weight (`PangoAttrInt`)
    static let weight = PANGO_ATTR_WEIGHT /* 4 */
    /// font variant (normal or small caps) (`PangoAttrInt`)
    static let variant = PANGO_ATTR_VARIANT /* 5 */
    /// font stretch (`PangoAttrInt`)
    static let stretch = PANGO_ATTR_STRETCH /* 6 */
    /// font size in points scaled by `PANGO_SCALE` (`PangoAttrInt`)
    static let size = PANGO_ATTR_SIZE /* 7 */
    /// font description (`PangoAttrFontDesc`)
    static let fontDesc = PANGO_ATTR_FONT_DESC /* 8 */
    /// foreground color (`PangoAttrColor`)
    static let foreground = PANGO_ATTR_FOREGROUND /* 9 */
    /// background color (`PangoAttrColor`)
    static let background = PANGO_ATTR_BACKGROUND /* 10 */
    /// whether the text has an underline (`PangoAttrInt`)
    static let underline = PANGO_ATTR_UNDERLINE /* 11 */
    /// whether the text is struck-through (`PangoAttrInt`)
    static let strikethrough = PANGO_ATTR_STRIKETHROUGH /* 12 */
    /// baseline displacement (`PangoAttrInt`)
    static let rise = PANGO_ATTR_RISE /* 13 */
    /// shape (`PangoAttrShape`)
    static let shape = PANGO_ATTR_SHAPE /* 14 */
    /// font size scale factor (`PangoAttrFloat`)
    static let scale = PANGO_ATTR_SCALE /* 15 */
    /// whether fallback is enabled (`PangoAttrInt`)
    static let fallback = PANGO_ATTR_FALLBACK /* 16 */
    /// letter spacing (`PangoAttrInt`)
    static let letterSpacing = PANGO_ATTR_LETTER_SPACING /* 17 */
    /// underline color (`PangoAttrColor`)
    static let underlineColor = PANGO_ATTR_UNDERLINE_COLOR /* 18 */
    /// strikethrough color (`PangoAttrColor`)
    static let strikethroughColor = PANGO_ATTR_STRIKETHROUGH_COLOR /* 19 */
    /// font size in pixels scaled by `PANGO_SCALE` (`PangoAttrInt`)
    static let absoluteSize = PANGO_ATTR_ABSOLUTE_SIZE /* 20 */
    /// base text gravity (`PangoAttrInt`)
    static let gravity = PANGO_ATTR_GRAVITY /* 21 */
    /// gravity hint (`PangoAttrInt`)
    static let gravityHint = PANGO_ATTR_GRAVITY_HINT /* 22 */
    /// OpenType font features (`PangoAttrString`). Since 1.38
    static let fontFeatures = PANGO_ATTR_FONT_FEATURES /* 23 */
    /// foreground alpha (`PangoAttrInt`). Since 1.38
    static let foregroundAlpha = PANGO_ATTR_FOREGROUND_ALPHA /* 24 */
    /// background alpha (`PangoAttrInt`). Since 1.38
    static let backgroundAlpha = PANGO_ATTR_BACKGROUND_ALPHA /* 25 */
    /// whether breaks are allowed (`PangoAttrInt`). Since 1.44
    static let allowBreaks = PANGO_ATTR_ALLOW_BREAKS /* 26 */
    /// how to render invisible characters (`PangoAttrInt`). Since 1.44
    static let show = PANGO_ATTR_SHOW /* 27 */
    /// whether to insert hyphens at intra-word line breaks (`PangoAttrInt`). Since 1.44
    static let insertHyphens = PANGO_ATTR_INSERT_HYPHENS /* 28 */
    /// font description (`PangoAttrFontDesc`)
    @available(*, deprecated) static let font_desc = AttrType.fontDesc /* PANGO_ATTR_FONT_DESC */
    /// letter spacing (`PangoAttrInt`)
    @available(*, deprecated) static let letter_spacing = AttrType.letterSpacing /* PANGO_ATTR_LETTER_SPACING */
    /// underline color (`PangoAttrColor`)
    @available(*, deprecated) static let underline_color = AttrType.underlineColor /* PANGO_ATTR_UNDERLINE_COLOR */
    /// strikethrough color (`PangoAttrColor`)
    @available(*, deprecated) static let strikethrough_color = AttrType.strikethroughColor /* PANGO_ATTR_STRIKETHROUGH_COLOR */
    /// font size in pixels scaled by `PANGO_SCALE` (`PangoAttrInt`)
    @available(*, deprecated) static let absolute_size = AttrType.absoluteSize /* PANGO_ATTR_ABSOLUTE_SIZE */
    /// gravity hint (`PangoAttrInt`)
    @available(*, deprecated) static let gravity_hint = AttrType.gravityHint /* PANGO_ATTR_GRAVITY_HINT */
    /// OpenType font features (`PangoAttrString`). Since 1.38
    @available(*, deprecated) static let font_features = AttrType.fontFeatures /* PANGO_ATTR_FONT_FEATURES */
    /// foreground alpha (`PangoAttrInt`). Since 1.38
    @available(*, deprecated) static let foreground_alpha = AttrType.foregroundAlpha /* PANGO_ATTR_FOREGROUND_ALPHA */
    /// background alpha (`PangoAttrInt`). Since 1.38
    @available(*, deprecated) static let background_alpha = AttrType.backgroundAlpha /* PANGO_ATTR_BACKGROUND_ALPHA */
    /// whether breaks are allowed (`PangoAttrInt`). Since 1.44
    @available(*, deprecated) static let allow_breaks = AttrType.allowBreaks /* PANGO_ATTR_ALLOW_BREAKS */
    /// whether to insert hyphens at intra-word line breaks (`PangoAttrInt`). Since 1.44
    @available(*, deprecated) static let insert_hyphens = AttrType.insertHyphens /* PANGO_ATTR_INSERT_HYPHENS */
}
func cast<I: BinaryInteger>(_ param: I) -> AttrType { AttrType(rawValue: cast(param)) }
func cast(_ param: AttrType) -> UInt32 { cast(param.rawValue) }


/// The `PangoBidiType` type represents the bidirectional character
/// type of a Unicode character as specified by the
/// <ulink url="http://www.unicode.org/reports/tr9/">Unicode bidirectional algorithm</ulink>.
///
/// **BidiType is deprecated:**
/// Use fribidi for this information
public typealias BidiType = PangoBidiType

public extension BidiType {
    /// Left-to-Right
    static let l = PANGO_BIDI_TYPE_L /* 0 */
    /// Left-to-Right Embedding
    static let lre = PANGO_BIDI_TYPE_LRE /* 1 */
    /// Left-to-Right Override
    static let lro = PANGO_BIDI_TYPE_LRO /* 2 */
    /// Right-to-Left
    static let r = PANGO_BIDI_TYPE_R /* 3 */
    /// Right-to-Left Arabic
    static let al = PANGO_BIDI_TYPE_AL /* 4 */
    /// Right-to-Left Embedding
    static let rle = PANGO_BIDI_TYPE_RLE /* 5 */
    /// Right-to-Left Override
    static let rlo = PANGO_BIDI_TYPE_RLO /* 6 */
    /// Pop Directional Format
    static let pdf = PANGO_BIDI_TYPE_PDF /* 7 */
    /// European Number
    static let en = PANGO_BIDI_TYPE_EN /* 8 */
    /// European Number Separator
    static let es = PANGO_BIDI_TYPE_ES /* 9 */
    /// European Number Terminator
    static let et = PANGO_BIDI_TYPE_ET /* 10 */
    /// Arabic Number
    static let an = PANGO_BIDI_TYPE_AN /* 11 */
    /// Common Number Separator
    static let cs = PANGO_BIDI_TYPE_CS /* 12 */
    /// Nonspacing Mark
    static let nsm = PANGO_BIDI_TYPE_NSM /* 13 */
    /// Boundary Neutral
    static let bn = PANGO_BIDI_TYPE_BN /* 14 */
    /// Paragraph Separator
    static let b = PANGO_BIDI_TYPE_B /* 15 */
    /// Segment Separator
    static let s = PANGO_BIDI_TYPE_S /* 16 */
    /// Whitespace
    static let ws = PANGO_BIDI_TYPE_WS /* 17 */
    /// Other Neutrals
    static let on = PANGO_BIDI_TYPE_ON /* 18 */

}
func cast<I: BinaryInteger>(_ param: I) -> BidiType { BidiType(rawValue: cast(param)) }
func cast(_ param: BidiType) -> UInt32 { cast(param.rawValue) }


/// Used to indicate how well a font can represent a particular Unicode
/// character point for a particular script.
/// 
/// Since 1.44, only `PANGO_COVERAGE_NONE` and `PANGO_COVERAGE_EXACT`
/// will be returned.
public typealias CoverageLevel = PangoCoverageLevel

public extension CoverageLevel {
    /// The character is not representable with the font.
    static let `none` = PANGO_COVERAGE_NONE /* 0 */
    /// The character is represented in a way that may be
    /// comprehensible but is not the correct graphical form.
    /// For instance, a Hangul character represented as a
    /// a sequence of Jamos, or a Latin transliteration of a Cyrillic word.
    static let fallback = PANGO_COVERAGE_FALLBACK /* 1 */
    /// The character is represented as basically the correct
    /// graphical form, but with a stylistic variant inappropriate for
    /// the current script.
    static let approximate = PANGO_COVERAGE_APPROXIMATE /* 2 */
    /// The character is represented as the correct graphical form.
    static let exact = PANGO_COVERAGE_EXACT /* 3 */
    /// The character is not representable with the font.
    @available(*, deprecated) static let none_ = CoverageLevel.`none` /* PANGO_COVERAGE_NONE */
}
func cast<I: BinaryInteger>(_ param: I) -> CoverageLevel { CoverageLevel(rawValue: cast(param)) }
func cast(_ param: CoverageLevel) -> UInt32 { cast(param.rawValue) }


/// The `PangoDirection` type represents a direction in the
/// Unicode bidirectional algorithm; not every value in this
/// enumeration makes sense for every usage of `PangoDirection`;
/// for example, the return value of `pango_unichar_direction()`
/// and `pango_find_base_dir()` cannot be `PANGO_DIRECTION_WEAK_LTR`
/// or `PANGO_DIRECTION_WEAK_RTL`, since every character is either
/// neutral or has a strong direction; on the other hand
/// `PANGO_DIRECTION_NEUTRAL` doesn't make sense to pass
/// to `pango_itemize_with_base_dir()`.
/// 
/// The `PANGO_DIRECTION_TTB_LTR`, `PANGO_DIRECTION_TTB_RTL`
/// values come from an earlier interpretation of this
/// enumeration as the writing direction of a block of
/// text and are no longer used; See `PangoGravity` for how
/// vertical text is handled in Pango.
/// 
/// If you are interested in text direction, you should
/// really use fribidi directly. PangoDirection is only
/// retained because it is used in some public apis.
public typealias Direction = PangoDirection

public extension Direction {
    /// A strong left-to-right direction
    static let ltr = PANGO_DIRECTION_LTR /* 0 */
    /// A strong right-to-left direction
    static let rtl = PANGO_DIRECTION_RTL /* 1 */
    /// Deprecated value; treated the
    ///   same as `PANGO_DIRECTION_RTL`.
    static let ttbLtr = PANGO_DIRECTION_TTB_LTR /* 2 */
    /// Deprecated value; treated the
    ///   same as `PANGO_DIRECTION_LTR`
    static let ttbRtl = PANGO_DIRECTION_TTB_RTL /* 3 */
    /// A weak left-to-right direction
    static let weakLtr = PANGO_DIRECTION_WEAK_LTR /* 4 */
    /// A weak right-to-left direction
    static let weakRtl = PANGO_DIRECTION_WEAK_RTL /* 5 */
    /// No direction specified
    static let neutral = PANGO_DIRECTION_NEUTRAL /* 6 */
    /// Deprecated value; treated the
    ///   same as `PANGO_DIRECTION_RTL`.
    @available(*, deprecated) static let ttb_ltr = Direction.ttbLtr /* PANGO_DIRECTION_TTB_LTR */
    /// Deprecated value; treated the
    ///   same as `PANGO_DIRECTION_LTR`
    @available(*, deprecated) static let ttb_rtl = Direction.ttbRtl /* PANGO_DIRECTION_TTB_RTL */
    /// A weak left-to-right direction
    @available(*, deprecated) static let weak_ltr = Direction.weakLtr /* PANGO_DIRECTION_WEAK_LTR */
    /// A weak right-to-left direction
    @available(*, deprecated) static let weak_rtl = Direction.weakRtl /* PANGO_DIRECTION_WEAK_RTL */
}
func cast<I: BinaryInteger>(_ param: I) -> Direction { Direction(rawValue: cast(param)) }
func cast(_ param: Direction) -> UInt32 { cast(param.rawValue) }


/// The `PangoEllipsizeMode` type describes what sort of (if any)
/// ellipsization should be applied to a line of text. In
/// the ellipsization process characters are removed from the
/// text in order to make it fit to a given width and replaced
/// with an ellipsis.
public typealias EllipsizeMode = PangoEllipsizeMode

public extension EllipsizeMode {
    /// No ellipsization
    static let `none` = PANGO_ELLIPSIZE_NONE /* 0 */
    /// Omit characters at the start of the text
    static let start = PANGO_ELLIPSIZE_START /* 1 */
    /// Omit characters in the middle of the text
    static let middle = PANGO_ELLIPSIZE_MIDDLE /* 2 */
    /// Omit characters at the end of the text
    static let end = PANGO_ELLIPSIZE_END /* 3 */
    /// No ellipsization
    @available(*, deprecated) static let none_ = EllipsizeMode.`none` /* PANGO_ELLIPSIZE_NONE */
}
func cast<I: BinaryInteger>(_ param: I) -> EllipsizeMode { EllipsizeMode(rawValue: cast(param)) }
func cast(_ param: EllipsizeMode) -> UInt32 { cast(param.rawValue) }


/// The `PangoGravity` type represents the orientation of glyphs in a segment
/// of text.  This is useful when rendering vertical text layouts.  In
/// those situations, the layout is rotated using a non-identity PangoMatrix,
/// and then glyph orientation is controlled using `PangoGravity`.
/// Not every value in this enumeration makes sense for every usage of
/// `PangoGravity`; for example, `PANGO_GRAVITY_AUTO` only can be passed to
/// `pango_context_set_base_gravity()` and can only be returned by
/// `pango_context_get_base_gravity()`.
/// 
/// See also: `PangoGravityHint`
public typealias Gravity = PangoGravity

public extension Gravity {
    /// Glyphs stand upright (default)
    static let south = PANGO_GRAVITY_SOUTH /* 0 */
    /// Glyphs are rotated 90 degrees clockwise
    static let east = PANGO_GRAVITY_EAST /* 1 */
    /// Glyphs are upside-down
    static let north = PANGO_GRAVITY_NORTH /* 2 */
    /// Glyphs are rotated 90 degrees counter-clockwise
    static let west = PANGO_GRAVITY_WEST /* 3 */
    /// Gravity is resolved from the context matrix
    static let auto = PANGO_GRAVITY_AUTO /* 4 */

}
func cast<I: BinaryInteger>(_ param: I) -> Gravity { Gravity(rawValue: cast(param)) }
func cast(_ param: Gravity) -> UInt32 { cast(param.rawValue) }


/// The `PangoGravityHint` defines how horizontal scripts should behave in a
/// vertical context.  That is, English excerpt in a vertical paragraph for
/// example.
/// 
/// See `PangoGravity`.
public typealias GravityHint = PangoGravityHint

public extension GravityHint {
    /// scripts will take their natural gravity based
    /// on the base gravity and the script.  This is the default.
    static let natural = PANGO_GRAVITY_HINT_NATURAL /* 0 */
    /// always use the base gravity set, regardless of
    /// the script.
    static let strong = PANGO_GRAVITY_HINT_STRONG /* 1 */
    /// for scripts not in their natural direction (eg.
    /// Latin in East gravity), choose per-script gravity such that every script
    /// respects the line progression.  This means, Latin and Arabic will take
    /// opposite gravities and both flow top-to-bottom for example.
    static let line = PANGO_GRAVITY_HINT_LINE /* 2 */

}
func cast<I: BinaryInteger>(_ param: I) -> GravityHint { GravityHint(rawValue: cast(param)) }
func cast(_ param: GravityHint) -> UInt32 { cast(param.rawValue) }


/// `PangoRenderPart` defines different items to render for such
/// purposes as setting colors.
public typealias RenderPart = PangoRenderPart

public extension RenderPart {
    /// the text itself
    static let foreground = PANGO_RENDER_PART_FOREGROUND /* 0 */
    /// the area behind the text
    static let background = PANGO_RENDER_PART_BACKGROUND /* 1 */
    /// underlines
    static let underline = PANGO_RENDER_PART_UNDERLINE /* 2 */
    /// strikethrough lines
    static let strikethrough = PANGO_RENDER_PART_STRIKETHROUGH /* 3 */

}
func cast<I: BinaryInteger>(_ param: I) -> RenderPart { RenderPart(rawValue: cast(param)) }
func cast(_ param: RenderPart) -> UInt32 { cast(param.rawValue) }


/// The `PangoScript` enumeration identifies different writing
/// systems. The values correspond to the names as defined in the
/// Unicode standard. See <ulink
/// url="http://www.unicode.org/reports/tr24/">Unicode Standard Annex
/// `24:` Script names</ulink>.
/// 
/// Note that this enumeration is deprecated and will not be updated
/// to include values in newer versions of the Unicode standard.
/// Applications should use the GUnicodeScript enumeration instead,
/// whose values are interchangeable with PangoScript.
public typealias Script = PangoScript

public extension Script {
    /// a value never returned from `pango_script_for_unichar()`
    static let invalidCode = PANGO_SCRIPT_INVALID_CODE /* -1 */
    /// a character used by multiple different scripts
    static let common = PANGO_SCRIPT_COMMON /* 0 */
    /// a mark glyph that takes its script from the
    /// base glyph to which it is attached
    static let inherited = PANGO_SCRIPT_INHERITED /* 1 */
    /// Arabic
    static let arabic = PANGO_SCRIPT_ARABIC /* 2 */
    /// Armenian
    static let armenian = PANGO_SCRIPT_ARMENIAN /* 3 */
    /// Bengali
    static let bengali = PANGO_SCRIPT_BENGALI /* 4 */
    /// Bopomofo
    static let bopomofo = PANGO_SCRIPT_BOPOMOFO /* 5 */
    /// Cherokee
    static let cherokee = PANGO_SCRIPT_CHEROKEE /* 6 */
    /// Coptic
    static let coptic = PANGO_SCRIPT_COPTIC /* 7 */
    /// Cyrillic
    static let cyrillic = PANGO_SCRIPT_CYRILLIC /* 8 */
    /// Deseret
    static let deseret = PANGO_SCRIPT_DESERET /* 9 */
    /// Devanagari
    static let devanagari = PANGO_SCRIPT_DEVANAGARI /* 10 */
    /// Ethiopic
    static let ethiopic = PANGO_SCRIPT_ETHIOPIC /* 11 */
    /// Georgian
    static let georgian = PANGO_SCRIPT_GEORGIAN /* 12 */
    /// Gothic
    static let gothic = PANGO_SCRIPT_GOTHIC /* 13 */
    /// Greek
    static let greek = PANGO_SCRIPT_GREEK /* 14 */
    /// Gujarati
    static let gujarati = PANGO_SCRIPT_GUJARATI /* 15 */
    /// Gurmukhi
    static let gurmukhi = PANGO_SCRIPT_GURMUKHI /* 16 */
    /// Han
    static let han = PANGO_SCRIPT_HAN /* 17 */
    /// Hangul
    static let hangul = PANGO_SCRIPT_HANGUL /* 18 */
    /// Hebrew
    static let hebrew = PANGO_SCRIPT_HEBREW /* 19 */
    /// Hiragana
    static let hiragana = PANGO_SCRIPT_HIRAGANA /* 20 */
    /// Kannada
    static let kannada = PANGO_SCRIPT_KANNADA /* 21 */
    /// Katakana
    static let katakana = PANGO_SCRIPT_KATAKANA /* 22 */
    /// Khmer
    static let khmer = PANGO_SCRIPT_KHMER /* 23 */
    /// Lao
    static let lao = PANGO_SCRIPT_LAO /* 24 */
    /// Latin
    static let latin = PANGO_SCRIPT_LATIN /* 25 */
    /// Malayalam
    static let malayalam = PANGO_SCRIPT_MALAYALAM /* 26 */
    /// Mongolian
    static let mongolian = PANGO_SCRIPT_MONGOLIAN /* 27 */
    /// Myanmar
    static let myanmar = PANGO_SCRIPT_MYANMAR /* 28 */
    /// Ogham
    static let ogham = PANGO_SCRIPT_OGHAM /* 29 */
    /// Old Italic
    static let oldItalic = PANGO_SCRIPT_OLD_ITALIC /* 30 */
    /// Oriya
    static let oriya = PANGO_SCRIPT_ORIYA /* 31 */
    /// Runic
    static let runic = PANGO_SCRIPT_RUNIC /* 32 */
    /// Sinhala
    static let sinhala = PANGO_SCRIPT_SINHALA /* 33 */
    /// Syriac
    static let syriac = PANGO_SCRIPT_SYRIAC /* 34 */
    /// Tamil
    static let tamil = PANGO_SCRIPT_TAMIL /* 35 */
    /// Telugu
    static let telugu = PANGO_SCRIPT_TELUGU /* 36 */
    /// Thaana
    static let thaana = PANGO_SCRIPT_THAANA /* 37 */
    /// Thai
    static let thai = PANGO_SCRIPT_THAI /* 38 */
    /// Tibetan
    static let tibetan = PANGO_SCRIPT_TIBETAN /* 39 */
    /// Canadian Aboriginal
    static let canadianAboriginal = PANGO_SCRIPT_CANADIAN_ABORIGINAL /* 40 */
    /// Yi
    static let yi = PANGO_SCRIPT_YI /* 41 */
    /// Tagalog
    static let tagalog = PANGO_SCRIPT_TAGALOG /* 42 */
    /// Hanunoo
    static let hanunoo = PANGO_SCRIPT_HANUNOO /* 43 */
    /// Buhid
    static let buhid = PANGO_SCRIPT_BUHID /* 44 */
    /// Tagbanwa
    static let tagbanwa = PANGO_SCRIPT_TAGBANWA /* 45 */
    /// Braille
    static let braille = PANGO_SCRIPT_BRAILLE /* 46 */
    /// Cypriot
    static let cypriot = PANGO_SCRIPT_CYPRIOT /* 47 */
    /// Limbu
    static let limbu = PANGO_SCRIPT_LIMBU /* 48 */
    /// Osmanya
    static let osmanya = PANGO_SCRIPT_OSMANYA /* 49 */
    /// Shavian
    static let shavian = PANGO_SCRIPT_SHAVIAN /* 50 */
    /// Linear B
    static let linearB = PANGO_SCRIPT_LINEAR_B /* 51 */
    /// Tai Le
    static let taiLe = PANGO_SCRIPT_TAI_LE /* 52 */
    /// Ugaritic
    static let ugaritic = PANGO_SCRIPT_UGARITIC /* 53 */
    /// New Tai Lue. Since 1.10
    static let newTaiLue = PANGO_SCRIPT_NEW_TAI_LUE /* 54 */
    /// Buginese. Since 1.10
    static let buginese = PANGO_SCRIPT_BUGINESE /* 55 */
    /// Glagolitic. Since 1.10
    static let glagolitic = PANGO_SCRIPT_GLAGOLITIC /* 56 */
    /// Tifinagh. Since 1.10
    static let tifinagh = PANGO_SCRIPT_TIFINAGH /* 57 */
    /// Syloti Nagri. Since 1.10
    static let sylotiNagri = PANGO_SCRIPT_SYLOTI_NAGRI /* 58 */
    /// Old Persian. Since 1.10
    static let oldPersian = PANGO_SCRIPT_OLD_PERSIAN /* 59 */
    /// Kharoshthi. Since 1.10
    static let kharoshthi = PANGO_SCRIPT_KHAROSHTHI /* 60 */
    /// an unassigned code point. Since 1.14
    static let unknown = PANGO_SCRIPT_UNKNOWN /* 61 */
    /// Balinese. Since 1.14
    static let balinese = PANGO_SCRIPT_BALINESE /* 62 */
    /// Cuneiform. Since 1.14
    static let cuneiform = PANGO_SCRIPT_CUNEIFORM /* 63 */
    /// Phoenician. Since 1.14
    static let phoenician = PANGO_SCRIPT_PHOENICIAN /* 64 */
    /// Phags-pa. Since 1.14
    static let phagsPa = PANGO_SCRIPT_PHAGS_PA /* 65 */
    /// N'Ko. Since 1.14
    static let nko = PANGO_SCRIPT_NKO /* 66 */
    /// Kayah Li. Since 1.20.1
    static let kayahLi = PANGO_SCRIPT_KAYAH_LI /* 67 */
    /// Lepcha. Since 1.20.1
    static let lepcha = PANGO_SCRIPT_LEPCHA /* 68 */
    /// Rejang. Since 1.20.1
    static let rejang = PANGO_SCRIPT_REJANG /* 69 */
    /// Sundanese. Since 1.20.1
    static let sundanese = PANGO_SCRIPT_SUNDANESE /* 70 */
    /// Saurashtra. Since 1.20.1
    static let saurashtra = PANGO_SCRIPT_SAURASHTRA /* 71 */
    /// Cham. Since 1.20.1
    static let cham = PANGO_SCRIPT_CHAM /* 72 */
    /// Ol Chiki. Since 1.20.1
    static let olChiki = PANGO_SCRIPT_OL_CHIKI /* 73 */
    /// Vai. Since 1.20.1
    static let vai = PANGO_SCRIPT_VAI /* 74 */
    /// Carian. Since 1.20.1
    static let carian = PANGO_SCRIPT_CARIAN /* 75 */
    /// Lycian. Since 1.20.1
    static let lycian = PANGO_SCRIPT_LYCIAN /* 76 */
    /// Lydian. Since 1.20.1
    static let lydian = PANGO_SCRIPT_LYDIAN /* 77 */
    /// Batak. Since 1.32
    static let batak = PANGO_SCRIPT_BATAK /* 78 */
    /// Brahmi. Since 1.32
    static let brahmi = PANGO_SCRIPT_BRAHMI /* 79 */
    /// Mandaic. Since 1.32
    static let mandaic = PANGO_SCRIPT_MANDAIC /* 80 */
    /// Chakma. Since: 1.32
    static let chakma = PANGO_SCRIPT_CHAKMA /* 81 */
    /// Meroitic Cursive. Since: 1.32
    static let meroiticCursive = PANGO_SCRIPT_MEROITIC_CURSIVE /* 82 */
    /// Meroitic Hieroglyphs. Since: 1.32
    static let meroiticHieroglyphs = PANGO_SCRIPT_MEROITIC_HIEROGLYPHS /* 83 */
    /// Miao. Since: 1.32
    static let miao = PANGO_SCRIPT_MIAO /* 84 */
    /// Sharada. Since: 1.32
    static let sharada = PANGO_SCRIPT_SHARADA /* 85 */
    /// Sora Sompeng. Since: 1.32
    static let soraSompeng = PANGO_SCRIPT_SORA_SOMPENG /* 86 */
    /// Takri. Since: 1.32
    static let takri = PANGO_SCRIPT_TAKRI /* 87 */
    /// Bassa. Since: 1.40
    static let bassaVah = PANGO_SCRIPT_BASSA_VAH /* 88 */
    /// Caucasian Albanian. Since: 1.40
    static let caucasianAlbanian = PANGO_SCRIPT_CAUCASIAN_ALBANIAN /* 89 */
    /// Duployan. Since: 1.40
    static let duployan = PANGO_SCRIPT_DUPLOYAN /* 90 */
    /// Elbasan. Since: 1.40
    static let elbasan = PANGO_SCRIPT_ELBASAN /* 91 */
    /// Grantha. Since: 1.40
    static let grantha = PANGO_SCRIPT_GRANTHA /* 92 */
    /// Kjohki. Since: 1.40
    static let khojki = PANGO_SCRIPT_KHOJKI /* 93 */
    /// Khudawadi, Sindhi. Since: 1.40
    static let khudawadi = PANGO_SCRIPT_KHUDAWADI /* 94 */
    /// Linear A. Since: 1.40
    static let linearA = PANGO_SCRIPT_LINEAR_A /* 95 */
    /// Mahajani. Since: 1.40
    static let mahajani = PANGO_SCRIPT_MAHAJANI /* 96 */
    /// Manichaean. Since: 1.40
    static let manichaean = PANGO_SCRIPT_MANICHAEAN /* 97 */
    /// Mende Kikakui. Since: 1.40
    static let mendeKikakui = PANGO_SCRIPT_MENDE_KIKAKUI /* 98 */
    /// Modi. Since: 1.40
    static let modi = PANGO_SCRIPT_MODI /* 99 */
    /// Mro. Since: 1.40
    static let mro = PANGO_SCRIPT_MRO /* 100 */
    /// Nabataean. Since: 1.40
    static let nabataean = PANGO_SCRIPT_NABATAEAN /* 101 */
    /// Old North Arabian. Since: 1.40
    static let oldNorthArabian = PANGO_SCRIPT_OLD_NORTH_ARABIAN /* 102 */
    /// Old Permic. Since: 1.40
    static let oldPermic = PANGO_SCRIPT_OLD_PERMIC /* 103 */
    /// Pahawh Hmong. Since: 1.40
    static let pahawhHmong = PANGO_SCRIPT_PAHAWH_HMONG /* 104 */
    /// Palmyrene. Since: 1.40
    static let palmyrene = PANGO_SCRIPT_PALMYRENE /* 105 */
    /// Pau Cin Hau. Since: 1.40
    static let pauCinHau = PANGO_SCRIPT_PAU_CIN_HAU /* 106 */
    /// Psalter Pahlavi. Since: 1.40
    static let psalterPahlavi = PANGO_SCRIPT_PSALTER_PAHLAVI /* 107 */
    /// Siddham. Since: 1.40
    static let siddham = PANGO_SCRIPT_SIDDHAM /* 108 */
    /// Tirhuta. Since: 1.40
    static let tirhuta = PANGO_SCRIPT_TIRHUTA /* 109 */
    /// Warang Citi. Since: 1.40
    static let warangCiti = PANGO_SCRIPT_WARANG_CITI /* 110 */
    /// Ahom. Since: 1.40
    static let ahom = PANGO_SCRIPT_AHOM /* 111 */
    /// Anatolian Hieroglyphs. Since: 1.40
    static let anatolianHieroglyphs = PANGO_SCRIPT_ANATOLIAN_HIEROGLYPHS /* 112 */
    /// Hatran. Since: 1.40
    static let hatran = PANGO_SCRIPT_HATRAN /* 113 */
    /// Multani. Since: 1.40
    static let multani = PANGO_SCRIPT_MULTANI /* 114 */
    /// Old Hungarian. Since: 1.40
    static let oldHungarian = PANGO_SCRIPT_OLD_HUNGARIAN /* 115 */
    /// Signwriting. Since: 1.40
    static let signwriting = PANGO_SCRIPT_SIGNWRITING /* 116 */
    /// a value never returned from `pango_script_for_unichar()`
    @available(*, deprecated) static let invalid_code = Script.invalidCode /* PANGO_SCRIPT_INVALID_CODE */
    /// Old Italic
    @available(*, deprecated) static let old_italic = Script.oldItalic /* PANGO_SCRIPT_OLD_ITALIC */
    /// Canadian Aboriginal
    @available(*, deprecated) static let canadian_aboriginal = Script.canadianAboriginal /* PANGO_SCRIPT_CANADIAN_ABORIGINAL */
    /// Linear B
    @available(*, deprecated) static let linear_b = Script.linearB /* PANGO_SCRIPT_LINEAR_B */
    /// Tai Le
    @available(*, deprecated) static let tai_le = Script.taiLe /* PANGO_SCRIPT_TAI_LE */
    /// New Tai Lue. Since 1.10
    @available(*, deprecated) static let new_tai_lue = Script.newTaiLue /* PANGO_SCRIPT_NEW_TAI_LUE */
    /// Syloti Nagri. Since 1.10
    @available(*, deprecated) static let syloti_nagri = Script.sylotiNagri /* PANGO_SCRIPT_SYLOTI_NAGRI */
    /// Old Persian. Since 1.10
    @available(*, deprecated) static let old_persian = Script.oldPersian /* PANGO_SCRIPT_OLD_PERSIAN */
    /// Phags-pa. Since 1.14
    @available(*, deprecated) static let phags_pa = Script.phagsPa /* PANGO_SCRIPT_PHAGS_PA */
    /// Kayah Li. Since 1.20.1
    @available(*, deprecated) static let kayah_li = Script.kayahLi /* PANGO_SCRIPT_KAYAH_LI */
    /// Ol Chiki. Since 1.20.1
    @available(*, deprecated) static let ol_chiki = Script.olChiki /* PANGO_SCRIPT_OL_CHIKI */
    /// Meroitic Cursive. Since: 1.32
    @available(*, deprecated) static let meroitic_cursive = Script.meroiticCursive /* PANGO_SCRIPT_MEROITIC_CURSIVE */
    /// Meroitic Hieroglyphs. Since: 1.32
    @available(*, deprecated) static let meroitic_hieroglyphs = Script.meroiticHieroglyphs /* PANGO_SCRIPT_MEROITIC_HIEROGLYPHS */
    /// Sora Sompeng. Since: 1.32
    @available(*, deprecated) static let sora_sompeng = Script.soraSompeng /* PANGO_SCRIPT_SORA_SOMPENG */
    /// Bassa. Since: 1.40
    @available(*, deprecated) static let bassa_vah = Script.bassaVah /* PANGO_SCRIPT_BASSA_VAH */
    /// Caucasian Albanian. Since: 1.40
    @available(*, deprecated) static let caucasian_albanian = Script.caucasianAlbanian /* PANGO_SCRIPT_CAUCASIAN_ALBANIAN */
    /// Linear A. Since: 1.40
    @available(*, deprecated) static let linear_a = Script.linearA /* PANGO_SCRIPT_LINEAR_A */
    /// Mende Kikakui. Since: 1.40
    @available(*, deprecated) static let mende_kikakui = Script.mendeKikakui /* PANGO_SCRIPT_MENDE_KIKAKUI */
    /// Old North Arabian. Since: 1.40
    @available(*, deprecated) static let old_north_arabian = Script.oldNorthArabian /* PANGO_SCRIPT_OLD_NORTH_ARABIAN */
    /// Old Permic. Since: 1.40
    @available(*, deprecated) static let old_permic = Script.oldPermic /* PANGO_SCRIPT_OLD_PERMIC */
    /// Pahawh Hmong. Since: 1.40
    @available(*, deprecated) static let pahawh_hmong = Script.pahawhHmong /* PANGO_SCRIPT_PAHAWH_HMONG */
    /// Pau Cin Hau. Since: 1.40
    @available(*, deprecated) static let pau_cin_hau = Script.pauCinHau /* PANGO_SCRIPT_PAU_CIN_HAU */
    /// Psalter Pahlavi. Since: 1.40
    @available(*, deprecated) static let psalter_pahlavi = Script.psalterPahlavi /* PANGO_SCRIPT_PSALTER_PAHLAVI */
    /// Warang Citi. Since: 1.40
    @available(*, deprecated) static let warang_citi = Script.warangCiti /* PANGO_SCRIPT_WARANG_CITI */
    /// Anatolian Hieroglyphs. Since: 1.40
    @available(*, deprecated) static let anatolian_hieroglyphs = Script.anatolianHieroglyphs /* PANGO_SCRIPT_ANATOLIAN_HIEROGLYPHS */
    /// Old Hungarian. Since: 1.40
    @available(*, deprecated) static let old_hungarian = Script.oldHungarian /* PANGO_SCRIPT_OLD_HUNGARIAN */
}
func cast<I: BinaryInteger>(_ param: I) -> Script { Script(rawValue: cast(param)) }
func cast(_ param: Script) -> UInt32 { cast(param.rawValue) }


/// An enumeration specifying the width of the font relative to other designs
/// within a family.
public typealias Stretch = PangoStretch

public extension Stretch {
    /// ultra condensed width
    static let ultraCondensed = PANGO_STRETCH_ULTRA_CONDENSED /* 0 */
    /// extra condensed width
    static let extraCondensed = PANGO_STRETCH_EXTRA_CONDENSED /* 1 */
    /// condensed width
    static let condensed = PANGO_STRETCH_CONDENSED /* 2 */
    /// semi condensed width
    static let semiCondensed = PANGO_STRETCH_SEMI_CONDENSED /* 3 */
    /// the normal width
    static let normal = PANGO_STRETCH_NORMAL /* 4 */
    /// semi expanded width
    static let semiExpanded = PANGO_STRETCH_SEMI_EXPANDED /* 5 */
    /// expanded width
    static let expanded = PANGO_STRETCH_EXPANDED /* 6 */
    /// extra expanded width
    static let extraExpanded = PANGO_STRETCH_EXTRA_EXPANDED /* 7 */
    /// ultra expanded width
    static let ultraExpanded = PANGO_STRETCH_ULTRA_EXPANDED /* 8 */
    /// ultra condensed width
    @available(*, deprecated) static let ultra_condensed = Stretch.ultraCondensed /* PANGO_STRETCH_ULTRA_CONDENSED */
    /// extra condensed width
    @available(*, deprecated) static let extra_condensed = Stretch.extraCondensed /* PANGO_STRETCH_EXTRA_CONDENSED */
    /// semi condensed width
    @available(*, deprecated) static let semi_condensed = Stretch.semiCondensed /* PANGO_STRETCH_SEMI_CONDENSED */
    /// semi expanded width
    @available(*, deprecated) static let semi_expanded = Stretch.semiExpanded /* PANGO_STRETCH_SEMI_EXPANDED */
    /// extra expanded width
    @available(*, deprecated) static let extra_expanded = Stretch.extraExpanded /* PANGO_STRETCH_EXTRA_EXPANDED */
    /// ultra expanded width
    @available(*, deprecated) static let ultra_expanded = Stretch.ultraExpanded /* PANGO_STRETCH_ULTRA_EXPANDED */
}
func cast<I: BinaryInteger>(_ param: I) -> Stretch { Stretch(rawValue: cast(param)) }
func cast(_ param: Stretch) -> UInt32 { cast(param.rawValue) }


/// An enumeration specifying the various slant styles possible for a font.
public typealias Style = PangoStyle

public extension Style {
    /// the font is upright.
    static let normal = PANGO_STYLE_NORMAL /* 0 */
    /// the font is slanted, but in a roman style.
    static let oblique = PANGO_STYLE_OBLIQUE /* 1 */
    /// the font is slanted in an italic style.
    static let italic = PANGO_STYLE_ITALIC /* 2 */

}
func cast<I: BinaryInteger>(_ param: I) -> Style { Style(rawValue: cast(param)) }
func cast(_ param: Style) -> UInt32 { cast(param.rawValue) }


/// A `PangoTabAlign` specifies where a tab stop appears relative to the text.
public typealias TabAlign = PangoTabAlign

public extension TabAlign {
    /// the tab stop appears to the left of the text.
    static let `left` = PANGO_TAB_LEFT /* 0 */
    /// the tab stop appears to the left of the text.
    @available(*, deprecated) static let left_ = TabAlign.`left` /* PANGO_TAB_LEFT */
}
func cast<I: BinaryInteger>(_ param: I) -> TabAlign { TabAlign(rawValue: cast(param)) }
func cast(_ param: TabAlign) -> UInt32 { cast(param.rawValue) }


/// The `PangoUnderline` enumeration is used to specify
/// whether text should be underlined, and if so, the type
/// of underlining.
public typealias Underline = PangoUnderline

public extension Underline {
    /// no underline should be drawn
    static let `none` = PANGO_UNDERLINE_NONE /* 0 */
    /// a single underline should be drawn
    static let single = PANGO_UNDERLINE_SINGLE /* 1 */
    /// a double underline should be drawn
    static let double = PANGO_UNDERLINE_DOUBLE /* 2 */
    /// a single underline should be drawn at a
    ///     position beneath the ink extents of the text being
    ///     underlined. This should be used only for underlining
    ///     single characters, such as for keyboard accelerators.
    ///     `PANGO_UNDERLINE_SINGLE` should be used for extended
    ///     portions of text.
    static let low = PANGO_UNDERLINE_LOW /* 3 */
    /// a wavy underline should be drawn below.
    ///     This underline is typically used to indicate an error such
    ///     as a possible mispelling; in some cases a contrasting color
    ///     may automatically be used. This type of underlining is
    ///     available since Pango 1.4.
    static let error = PANGO_UNDERLINE_ERROR /* 4 */
    /// no underline should be drawn
    @available(*, deprecated) static let none_ = Underline.`none` /* PANGO_UNDERLINE_NONE */
}
func cast<I: BinaryInteger>(_ param: I) -> Underline { Underline(rawValue: cast(param)) }
func cast(_ param: Underline) -> UInt32 { cast(param.rawValue) }


/// An enumeration specifying capitalization variant of the font.
public typealias Variant = PangoVariant

public extension Variant {
    /// A normal font.
    static let normal = PANGO_VARIANT_NORMAL /* 0 */
    /// A font with the lower case characters
    /// replaced by smaller variants of the capital characters.
    static let smallCaps = PANGO_VARIANT_SMALL_CAPS /* 1 */
    /// A font with the lower case characters
    /// replaced by smaller variants of the capital characters.
    @available(*, deprecated) static let small_caps = Variant.smallCaps /* PANGO_VARIANT_SMALL_CAPS */
}
func cast<I: BinaryInteger>(_ param: I) -> Variant { Variant(rawValue: cast(param)) }
func cast(_ param: Variant) -> UInt32 { cast(param.rawValue) }


/// An enumeration specifying the weight (boldness) of a font. This is a numerical
/// value ranging from 100 to 1000, but there are some predefined values:
public typealias Weight = PangoWeight

public extension Weight {
    /// the thin weight (= 100; Since: 1.24)
    static let thin = PANGO_WEIGHT_THIN /* 100 */
    /// the ultralight weight (= 200)
    static let ultralight = PANGO_WEIGHT_ULTRALIGHT /* 200 */
    /// the light weight (= 300)
    static let light = PANGO_WEIGHT_LIGHT /* 300 */
    /// the semilight weight (= 350; Since: 1.36.7)
    static let semilight = PANGO_WEIGHT_SEMILIGHT /* 350 */
    /// the book weight (= 380; Since: 1.24)
    static let book = PANGO_WEIGHT_BOOK /* 380 */
    /// the default weight (= 400)
    static let normal = PANGO_WEIGHT_NORMAL /* 400 */
    /// the normal weight (= 500; Since: 1.24)
    static let medium = PANGO_WEIGHT_MEDIUM /* 500 */
    /// the semibold weight (= 600)
    static let semibold = PANGO_WEIGHT_SEMIBOLD /* 600 */
    /// the bold weight (= 700)
    static let bold = PANGO_WEIGHT_BOLD /* 700 */
    /// the ultrabold weight (= 800)
    static let ultrabold = PANGO_WEIGHT_ULTRABOLD /* 800 */
    /// the heavy weight (= 900)
    static let heavy = PANGO_WEIGHT_HEAVY /* 900 */
    /// the ultraheavy weight (= 1000; Since: 1.24)
    static let ultraheavy = PANGO_WEIGHT_ULTRAHEAVY /* 1000 */

}
func cast<I: BinaryInteger>(_ param: I) -> Weight { Weight(rawValue: cast(param)) }
func cast(_ param: Weight) -> UInt32 { cast(param.rawValue) }


/// A `PangoWrapMode` describes how to wrap the lines of a `PangoLayout` to the desired width.
public typealias WrapMode = PangoWrapMode

public extension WrapMode {
    /// wrap lines at word boundaries.
    static let word = PANGO_WRAP_WORD /* 0 */
    /// wrap lines at character boundaries.
    static let char = PANGO_WRAP_CHAR /* 1 */
    /// wrap lines at word boundaries, but fall back to character boundaries if there is not
    /// enough space for a full word.
    static let wordChar = PANGO_WRAP_WORD_CHAR /* 2 */
    /// wrap lines at word boundaries, but fall back to character boundaries if there is not
    /// enough space for a full word.
    @available(*, deprecated) static let word_char = WrapMode.wordChar /* PANGO_WRAP_WORD_CHAR */
}
func cast<I: BinaryInteger>(_ param: I) -> WrapMode { WrapMode(rawValue: cast(param)) }
func cast(_ param: WrapMode) -> UInt32 { cast(param.rawValue) }
