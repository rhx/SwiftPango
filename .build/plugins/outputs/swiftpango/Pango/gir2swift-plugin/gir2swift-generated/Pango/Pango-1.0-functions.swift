import CGLib
import CHarfBuzz
import CPango
import GLib
import GLibObject
import HarfBuzz
/// Create a new allow-breaks attribute.
/// 
/// If breaks are disabled, the range will be kept in a
/// single run, as far as possible.
@inlinable public func attrAllowBreaksNew(allowBreaks: Bool) -> Pango.AttributeRef! {
    let result = pango_attr_allow_breaks_new(gboolean((allowBreaks) ? 1 : 0))
    guard let rv = AttributeRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Create a new background alpha attribute.
@inlinable public func attrBackgroundAlphaNew(alpha: guint16) -> Pango.AttributeRef! {
    let result = pango_attr_background_alpha_new(alpha)
    guard let rv = AttributeRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Create a new background color attribute.
@inlinable public func attrBackgroundNew(red: guint16, green: guint16, blue: guint16) -> Pango.AttributeRef! {
    let result = pango_attr_background_new(red, green, blue)
    guard let rv = AttributeRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Create a new baseline displacement attribute.
/// 
/// The effect of this attribute is to shift the baseline of a run,
/// relative to the run of preceding run.
/// 
/// &lt;picture&gt;
///   &lt;source srcset="baseline-shift-dark.png" media="(prefers-color-scheme: dark)"&gt;
///   &lt;img alt="Baseline Shift" src="baseline-shift-light.png"&gt;
/// &lt;/picture&gt;
@inlinable public func attrBaselineShiftNew(shift: Int) -> Pango.AttributeRef! {
    let result = pango_attr_baseline_shift_new(gint(shift))
    guard let rv = AttributeRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Apply customization from attributes to the breaks in `attrs`.
/// 
/// The line breaks are assumed to have been produced
/// by [func`Pango.default_break`] and [func`Pango.tailor_break`].
@inlinable public func attrBreak<AttrListT: AttrListProtocol>(text: UnsafePointer<CChar>!, length: Int, attrList: AttrListT, offset: Int, attrs: UnsafeMutablePointer<PangoLogAttr>!, attrsLen: Int) {
    
    pango_attr_break(text, gint(length), attrList.attr_list_ptr, gint(offset), attrs, gint(attrsLen))
    
}




/// Create a new font fallback attribute.
/// 
/// If fallback is disabled, characters will only be
/// used from the closest matching font on the system.
/// No fallback will be done to other fonts on the system
/// that might contain the characters in the text.
@inlinable public func attrFallbackNew(enableFallback: Bool) -> Pango.AttributeRef! {
    let result = pango_attr_fallback_new(gboolean((enableFallback) ? 1 : 0))
    guard let rv = AttributeRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Create a new font family attribute.
@inlinable public func attrFamilyNew(family: UnsafePointer<CChar>!) -> Pango.AttributeRef! {
    let result = pango_attr_family_new(family)
    guard let rv = AttributeRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Create a new font description attribute.
/// 
/// This attribute allows setting family, style, weight, variant,
/// stretch, and size simultaneously.
@inlinable public func attrFontDescNew<FontDescriptionT: FontDescriptionProtocol>(desc: FontDescriptionT) -> Pango.AttributeRef! {
    let result = pango_attr_font_desc_new(desc.font_description_ptr)
    guard let rv = AttributeRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Create a new font features tag attribute.
/// 
/// You can use this attribute to select OpenType font features like small-caps,
/// alternative glyphs, ligatures, etc. for fonts that support them.
@inlinable public func attrFontFeaturesNew(features: UnsafePointer<CChar>!) -> Pango.AttributeRef! {
    let result = pango_attr_font_features_new(features)
    guard let rv = AttributeRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Create a new font scale attribute.
/// 
/// The effect of this attribute is to change the font size of a run,
/// relative to the size of preceding run.
@inlinable public func attrFontScaleNew(scale: PangoFontScale) -> Pango.AttributeRef! {
    let result = pango_attr_font_scale_new(scale)
    guard let rv = AttributeRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Create a new foreground alpha attribute.
@inlinable public func attrForegroundAlphaNew(alpha: guint16) -> Pango.AttributeRef! {
    let result = pango_attr_foreground_alpha_new(alpha)
    guard let rv = AttributeRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Create a new foreground color attribute.
@inlinable public func attrForegroundNew(red: guint16, green: guint16, blue: guint16) -> Pango.AttributeRef! {
    let result = pango_attr_foreground_new(red, green, blue)
    guard let rv = AttributeRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Create a new gravity hint attribute.
@inlinable public func attrGravityHintNew(hint: PangoGravityHint) -> Pango.AttributeRef! {
    let result = pango_attr_gravity_hint_new(hint)
    guard let rv = AttributeRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Create a new gravity attribute.
@inlinable public func attrGravityNew(gravity: PangoGravity) -> Pango.AttributeRef! {
    let result = pango_attr_gravity_new(gravity)
    guard let rv = AttributeRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Create a new insert-hyphens attribute.
/// 
/// Pango will insert hyphens when breaking lines in
/// the middle of a word. This attribute can be used
/// to suppress the hyphen.
@inlinable public func attrInsertHyphensNew(insertHyphens: Bool) -> Pango.AttributeRef! {
    let result = pango_attr_insert_hyphens_new(gboolean((insertHyphens) ? 1 : 0))
    guard let rv = AttributeRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Create a new language tag attribute.
@inlinable public func attrLanguageNew<LanguageT: LanguageProtocol>(language: LanguageT) -> Pango.AttributeRef! {
    let result = pango_attr_language_new(language.language_ptr)
    guard let rv = AttributeRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Create a new letter-spacing attribute.
@inlinable public func attrLetterSpacingNew(letterSpacing: Int) -> Pango.AttributeRef! {
    let result = pango_attr_letter_spacing_new(gint(letterSpacing))
    guard let rv = AttributeRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Modify the height of logical line extents by a factor.
/// 
/// This affects the values returned by
/// [method`Pango.LayoutLine.get_extents`],
/// [method`Pango.LayoutLine.get_pixel_extents`] and
/// [method`Pango.LayoutIter.get_line_extents`].
@inlinable public func attrLineHeightNew(factor: CDouble) -> Pango.AttributeRef! {
    let result = pango_attr_line_height_new(factor)
    guard let rv = AttributeRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Override the height of logical line extents to be `height`.
/// 
/// This affects the values returned by
/// [method`Pango.LayoutLine.get_extents`],
/// [method`Pango.LayoutLine.get_pixel_extents`] and
/// [method`Pango.LayoutIter.get_line_extents`].
@inlinable public func attrLineHeightNewAbsolute(height: Int) -> Pango.AttributeRef! {
    let result = pango_attr_line_height_new_absolute(gint(height))
    guard let rv = AttributeRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Deserializes a `PangoAttrList` from a string.
/// 
/// This is the counterpart to [method`Pango.AttrList.to_string`].
/// See that functions for details about the format.
@inlinable public func attrListFromString(text: UnsafePointer<CChar>!) -> Pango.AttrListRef! {
    let result = pango_attr_list_from_string(text)
    guard let rv = AttrListRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Create a new overline color attribute.
/// 
/// This attribute modifies the color of overlines.
/// If not set, overlines will use the foreground color.
@inlinable public func attrOverlineColorNew(red: guint16, green: guint16, blue: guint16) -> Pango.AttributeRef! {
    let result = pango_attr_overline_color_new(red, green, blue)
    guard let rv = AttributeRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Create a new overline-style attribute.
@inlinable public func attrOverlineNew(overline: PangoOverline) -> Pango.AttributeRef! {
    let result = pango_attr_overline_new(overline)
    guard let rv = AttributeRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Create a new baseline displacement attribute.
@inlinable public func attrRiseNew(rise: Int) -> Pango.AttributeRef! {
    let result = pango_attr_rise_new(gint(rise))
    guard let rv = AttributeRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Create a new font size scale attribute.
/// 
/// The base font for the affected text will have
/// its size multiplied by `scale_factor`.
@inlinable public func attrScaleNew(scaleFactor: CDouble) -> Pango.AttributeRef! {
    let result = pango_attr_scale_new(scaleFactor)
    guard let rv = AttributeRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Marks the range of the attribute as a single sentence.
/// 
/// Note that this may require adjustments to word and
/// sentence classification around the range.
@inlinable public func attrSentenceNew() -> Pango.AttributeRef! {
    let result = pango_attr_sentence_new()
    guard let rv = AttributeRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Create a new shape attribute.
/// 
/// A shape is used to impose a particular ink and logical
/// rectangle on the result of shaping a particular glyph.
/// This might be used, for instance, for embedding a picture
/// or a widget inside a `PangoLayout`.
@inlinable public func attrShapeNew<RectangleT: RectangleProtocol>(inkRect: RectangleT, logicalRect: RectangleT) -> Pango.AttributeRef! {
    let result = pango_attr_shape_new(inkRect._ptr, logicalRect._ptr)
    guard let rv = AttributeRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Creates a new shape attribute.
/// 
/// Like [func`Pango.AttrShape.new`], but a user data pointer
/// is also provided; this pointer can be accessed when later
/// rendering the glyph.
@inlinable public func attrShapeNewWithData<RectangleT: RectangleProtocol>(inkRect: RectangleT, logicalRect: RectangleT, data: gpointer? = nil, copyFunc: PangoAttrDataCopyFunc? = nil, destroyFunc: GDestroyNotify? = nil) -> Pango.AttributeRef! {
    let result = pango_attr_shape_new_with_data(inkRect._ptr, logicalRect._ptr, data, copyFunc, destroyFunc)
    guard let rv = AttributeRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Create a new attribute that influences how invisible
/// characters are rendered.
@inlinable public func attrShowNew(flags: ShowFlags) -> Pango.AttributeRef! {
    let result = pango_attr_show_new(flags.value)
    guard let rv = AttributeRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Create a new font-size attribute in fractional points.
@inlinable public func attrSizeNew(size: Int) -> Pango.AttributeRef! {
    let result = pango_attr_size_new(gint(size))
    guard let rv = AttributeRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Create a new font-size attribute in device units.
@inlinable public func attrSizeNewAbsolute(size: Int) -> Pango.AttributeRef! {
    let result = pango_attr_size_new_absolute(gint(size))
    guard let rv = AttributeRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Create a new font stretch attribute.
@inlinable public func attrStretchNew(stretch: PangoStretch) -> Pango.AttributeRef! {
    let result = pango_attr_stretch_new(stretch)
    guard let rv = AttributeRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Create a new strikethrough color attribute.
/// 
/// This attribute modifies the color of strikethrough lines.
/// If not set, strikethrough lines will use the foreground color.
@inlinable public func attrStrikethroughColorNew(red: guint16, green: guint16, blue: guint16) -> Pango.AttributeRef! {
    let result = pango_attr_strikethrough_color_new(red, green, blue)
    guard let rv = AttributeRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Create a new strike-through attribute.
@inlinable public func attrStrikethroughNew(strikethrough: Bool) -> Pango.AttributeRef! {
    let result = pango_attr_strikethrough_new(gboolean((strikethrough) ? 1 : 0))
    guard let rv = AttributeRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Create a new font slant style attribute.
@inlinable public func attrStyleNew(style: PangoStyle) -> Pango.AttributeRef! {
    let result = pango_attr_style_new(style)
    guard let rv = AttributeRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Create a new attribute that influences how characters
/// are transformed during shaping.
@inlinable public func attrTextTransformNew(transform: PangoTextTransform) -> Pango.AttributeRef! {
    let result = pango_attr_text_transform_new(transform)
    guard let rv = AttributeRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Fetches the attribute type name.
/// 
/// The attribute type name is the string passed in
/// when registering the type using
/// [func`Pango.AttrType.register`].
/// 
/// The returned value is an interned string (see
/// `g_intern_string()` for what that means) that should
/// not be modified or freed.
@inlinable public func attrTypeGetName(type: PangoAttrType) -> String! {
    let result = pango_attr_type_get_name(type)
    guard let rv = result.map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Allocate a new attribute type ID.
/// 
/// The attribute type name can be accessed later
/// by using [func`Pango.AttrType.get_name`].
@inlinable public func attrTypeRegister(name: UnsafePointer<CChar>!) -> PangoAttrType {
    let result = pango_attr_type_register(name)
    let rv = result
    return rv
}




/// Create a new underline color attribute.
/// 
/// This attribute modifies the color of underlines.
/// If not set, underlines will use the foreground color.
@inlinable public func attrUnderlineColorNew(red: guint16, green: guint16, blue: guint16) -> Pango.AttributeRef! {
    let result = pango_attr_underline_color_new(red, green, blue)
    guard let rv = AttributeRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Create a new underline-style attribute.
@inlinable public func attrUnderlineNew(underline: PangoUnderline) -> Pango.AttributeRef! {
    let result = pango_attr_underline_new(underline)
    guard let rv = AttributeRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Create a new font variant attribute (normal or small caps).
@inlinable public func attrVariantNew(variant: PangoVariant) -> Pango.AttributeRef! {
    let result = pango_attr_variant_new(variant)
    guard let rv = AttributeRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Create a new font weight attribute.
@inlinable public func attrWeightNew(weight: PangoWeight) -> Pango.AttributeRef! {
    let result = pango_attr_weight_new(weight)
    guard let rv = AttributeRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Marks the range of the attribute as a single word.
/// 
/// Note that this may require adjustments to word and
/// sentence classification around the range.
@inlinable public func attrWordNew() -> Pango.AttributeRef! {
    let result = pango_attr_word_new()
    guard let rv = AttributeRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Determines the bidirectional type of a character.
/// 
/// The bidirectional type is specified in the Unicode Character Database.
/// 
/// A simplified version of this function is available as [func`unichar_direction`].
@inlinable @available(*, deprecated) public func bidiTypeForUnichar(ch: gunichar) -> PangoBidiType {
    let result = pango_bidi_type_for_unichar(ch)
    let rv = result
    return rv
}




/// Determines possible line, word, and character breaks
/// for a string of Unicode text with a single analysis.
/// 
/// For most purposes you may want to use [func`Pango.get_log_attrs`].
///
/// **break is deprecated:**
/// Use [func@Pango.default_break],
///   [func@Pango.tailor_break] and [func@Pango.attr_break].
@available(*, deprecated) @inlinable public func break_<AnalysisT: AnalysisProtocol>(text: UnsafePointer<CChar>!, length: Int, analysis: AnalysisT, attrs: UnsafeMutablePointer<PangoLogAttr>!, attrsLen: Int) {
    
    pango_break(text, gint(length), analysis._ptr, attrs, gint(attrsLen))
    
}




/// This is the default break algorithm.
/// 
/// It applies rules from the [Unicode Line Breaking Algorithm](http://www.unicode.org/unicode/reports/tr14/)
/// without language-specific tailoring, therefore the `analyis` argument is unused
/// and can be `nil`.
/// 
/// See [func`Pango.tailor_break`] for language-specific breaks.
/// 
/// See [func`Pango.attr_break`] for attribute-based customization.
@inlinable public func defaultBreak<LogAttrT: LogAttrProtocol>(text: UnsafePointer<CChar>!, length: Int, analysis: AnalysisRef? = nil, attrs: LogAttrT, attrsLen: Int) {
    
    pango_default_break(text, gint(length), analysis?._ptr, attrs._ptr, gint(attrsLen))
    
}
/// This is the default break algorithm.
/// 
/// It applies rules from the [Unicode Line Breaking Algorithm](http://www.unicode.org/unicode/reports/tr14/)
/// without language-specific tailoring, therefore the `analyis` argument is unused
/// and can be `nil`.
/// 
/// See [func`Pango.tailor_break`] for language-specific breaks.
/// 
/// See [func`Pango.attr_break`] for attribute-based customization.
@inlinable public func defaultBreak<AnalysisT: AnalysisProtocol, LogAttrT: LogAttrProtocol>(text: UnsafePointer<CChar>!, length: Int, analysis: AnalysisT?, attrs: LogAttrT, attrsLen: Int) {
    
    pango_default_break(text, gint(length), analysis?._ptr, attrs._ptr, gint(attrsLen))
    
}




/// Converts extents from Pango units to device units.
/// 
/// The conversion is done by dividing by the `PANGO_SCALE` factor and
/// performing rounding.
/// 
/// The `inclusive` rectangle is converted by flooring the x/y coordinates
/// and extending width/height, such that the final rectangle completely
/// includes the original rectangle.
/// 
/// The `nearest` rectangle is converted by rounding the coordinates
/// of the rectangle to the nearest device unit (pixel).
/// 
/// The rule to which argument to use is: if you want the resulting device-space
/// rectangle to completely contain the original rectangle, pass it in as
/// `inclusive`. If you want two touching-but-not-overlapping rectangles stay
/// touching-but-not-overlapping after rounding to device units, pass them in
/// as `nearest`.
@inlinable public func extentsToPixels(inclusive: RectangleRef? = nil, nearest: RectangleRef? = nil) {
    
    pango_extents_to_pixels(inclusive?._ptr, nearest?._ptr)
    
}
/// Converts extents from Pango units to device units.
/// 
/// The conversion is done by dividing by the `PANGO_SCALE` factor and
/// performing rounding.
/// 
/// The `inclusive` rectangle is converted by flooring the x/y coordinates
/// and extending width/height, such that the final rectangle completely
/// includes the original rectangle.
/// 
/// The `nearest` rectangle is converted by rounding the coordinates
/// of the rectangle to the nearest device unit (pixel).
/// 
/// The rule to which argument to use is: if you want the resulting device-space
/// rectangle to completely contain the original rectangle, pass it in as
/// `inclusive`. If you want two touching-but-not-overlapping rectangles stay
/// touching-but-not-overlapping after rounding to device units, pass them in
/// as `nearest`.
@inlinable public func extentsToPixels<RectangleT: RectangleProtocol>(inclusive: RectangleT?, nearest: RectangleT?) {
    
    pango_extents_to_pixels(inclusive?._ptr, nearest?._ptr)
    
}




/// Searches a string the first character that has a strong
/// direction, according to the Unicode bidirectional algorithm.
@inlinable @available(*, deprecated) public func findBaseDir(text: UnsafePointer<gchar>!, length: Int) -> PangoDirection {
    let result = pango_find_base_dir(text, gint(length))
    let rv = result
    return rv
}




/// Locates a paragraph boundary in `text`.
/// 
/// A boundary is caused by delimiter characters, such as
/// a newline, carriage return, carriage return-newline pair,
/// or Unicode paragraph separator character.
/// 
/// The index of the run of delimiters is returned in
/// `paragraph_delimiter_index`. The index of the start of the
/// next paragraph (index after all delimiters) is stored n
/// `next_paragraph_start`.
/// 
/// If no delimiters are found, both `paragraph_delimiter_index`
/// and `next_paragraph_start` are filled with the length of `text`
/// (an index one off the end).
@inlinable public func findParagraphBoundary(text: UnsafePointer<CChar>!, length: Int, paragraphDelimiterIndex: UnsafeMutablePointer<gint>!, nextParagraphStart: UnsafeMutablePointer<gint>!) {
    
    pango_find_paragraph_boundary(text, gint(length), paragraphDelimiterIndex, nextParagraphStart)
    
}




/// Creates a new font description from a string representation.
/// 
/// The string must have the form
/// 
///     "\[FAMILY-LIST] \[STYLE-OPTIONS] \[SIZE] \[VARIATIONS]",
/// 
/// where FAMILY-LIST is a comma-separated list of families optionally
/// terminated by a comma, STYLE_OPTIONS is a whitespace-separated list
/// of words where each word describes one of style, variant, weight,
/// stretch, or gravity, and SIZE is a decimal number (size in points)
/// or optionally followed by the unit modifier "px" for absolute size.
/// VARIATIONS is a comma-separated list of font variation
/// specifications of the form "\`axis`=value" (the = sign is optional).
/// 
/// The following words are understood as styles:
/// "Normal", "Roman", "Oblique", "Italic".
/// 
/// The following words are understood as variants:
/// "Small-Caps", "All-Small-Caps", "Petite-Caps", "All-Petite-Caps",
/// "Unicase", "Title-Caps".
/// 
/// The following words are understood as weights:
/// "Thin", "Ultra-Light", "Extra-Light", "Light", "Semi-Light",
/// "Demi-Light", "Book", "Regular", "Medium", "Semi-Bold", "Demi-Bold",
/// "Bold", "Ultra-Bold", "Extra-Bold", "Heavy", "Black", "Ultra-Black",
/// "Extra-Black".
/// 
/// The following words are understood as stretch values:
/// "Ultra-Condensed", "Extra-Condensed", "Condensed", "Semi-Condensed",
/// "Semi-Expanded", "Expanded", "Extra-Expanded", "Ultra-Expanded".
/// 
/// The following words are understood as gravity values:
/// "Not-Rotated", "South", "Upside-Down", "North", "Rotated-Left",
/// "East", "Rotated-Right", "West".
/// 
/// Any one of the options may be absent. If FAMILY-LIST is absent, then
/// the family_name field of the resulting font description will be
/// initialized to `nil`. If STYLE-OPTIONS is missing, then all style
/// options will be set to the default values. If SIZE is missing, the
/// size in the resulting font description will be set to 0.
/// 
/// A typical example:
/// 
///     "Cantarell Italic Light 15 \`wght`=200"
@inlinable public func fontDescriptionFromString(str: UnsafePointer<CChar>!) -> Pango.FontDescriptionRef! {
    let result = pango_font_description_from_string(str)
    guard let rv = FontDescriptionRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Computes a `PangoLogAttr` for each character in `text`.
/// 
/// The `attrs` array must have one `PangoLogAttr` for
/// each position in `text`; if `text` contains N characters,
/// it has N+1 positions, including the last position at the
/// end of the text. `text` should be an entire paragraph;
/// logical attributes can't be computed without context
/// (for example you need to see spaces on either side of
/// a word to know the word is a word).
@inlinable public func getLogAttrs<LanguageT: LanguageProtocol>(text: UnsafePointer<CChar>!, length: Int, level: Int, language: LanguageT, attrs: UnsafeMutablePointer<PangoLogAttr>!, attrsLen: Int) {
    
    pango_get_log_attrs(text, gint(length), gint(level), language.language_ptr, attrs, gint(attrsLen))
    
}




/// Returns the mirrored character of a Unicode character.
/// 
/// Mirror characters are determined by the Unicode mirrored property.
///
/// **get_mirror_char is deprecated:**
/// Use [func@GLib.unichar_get_mirror_char] instead;
///   the docs for that function provide full details.
@available(*, deprecated) @inlinable @available(*, deprecated) public func getMirrorChar(ch: gunichar, mirroredCh: UnsafeMutablePointer<gunichar>!) -> Bool {
    let result = pango_get_mirror_char(ch, mirroredCh)
    let rv = ((result) != 0)
    return rv
}




/// Finds the gravity that best matches the rotation component
/// in a `PangoMatrix`.
@inlinable public func gravityGetFor(matrix: MatrixRef? = nil) -> PangoGravity {
    let result = pango_gravity_get_for_matrix(matrix?.matrix_ptr)
    let rv = result
    return rv
}
/// Finds the gravity that best matches the rotation component
/// in a `PangoMatrix`.
@inlinable public func gravityGetFor<MatrixT: MatrixProtocol>(matrix: MatrixT?) -> PangoGravity {
    let result = pango_gravity_get_for_matrix(matrix?.matrix_ptr)
    let rv = result
    return rv
}




/// Returns the gravity to use in laying out a `PangoItem`.
/// 
/// The gravity is determined based on the script, base gravity, and hint.
/// 
/// If `base_gravity` is `PANGO_GRAVITY_AUTO`, it is first replaced with the
/// preferred gravity of `script`.  To get the preferred gravity of a script,
/// pass `PANGO_GRAVITY_AUTO` and `PANGO_GRAVITY_HINT_STRONG` in.
@inlinable public func gravityGetFor(script: PangoScript, baseGravity: PangoGravity, hint: PangoGravityHint) -> PangoGravity {
    let result = pango_gravity_get_for_script(script, baseGravity, hint)
    let rv = result
    return rv
}




/// Returns the gravity to use in laying out a single character
/// or `PangoItem`.
/// 
/// The gravity is determined based on the script, East Asian width,
/// base gravity, and hint,
/// 
/// This function is similar to [func`Pango.Gravity.get_for_script`] except
/// that this function makes a distinction between narrow/half-width and
/// wide/full-width characters also. Wide/full-width characters always
/// stand *upright*, that is, they always take the base gravity,
/// whereas narrow/full-width characters are always rotated in vertical
/// context.
/// 
/// If `base_gravity` is `PANGO_GRAVITY_AUTO`, it is first replaced with the
/// preferred gravity of `script`.
@inlinable public func gravityGetForScriptAndWidth(script: PangoScript, wide: Bool, baseGravity: PangoGravity, hint: PangoGravityHint) -> PangoGravity {
    let result = pango_gravity_get_for_script_and_width(script, gboolean((wide) ? 1 : 0), baseGravity, hint)
    let rv = result
    return rv
}




/// Converts a `PangoGravity` value to its natural rotation in radians.
/// 
/// Note that [method`Pango.Matrix.rotate`] takes angle in degrees, not radians.
/// So, to call [method`Pango.Matrix`,rotate] with the output of this function
/// you should multiply it by (180. / G_PI).
@inlinable public func gravityToRotation(gravity: PangoGravity) -> CDouble {
    let result = pango_gravity_to_rotation(gravity)
    let rv = result
    return rv
}




/// Checks if a character that should not be normally rendered.
/// 
/// This includes all Unicode characters with "ZERO WIDTH" in their name,
/// as well as *bidi* formatting characters, and a few other ones.
/// 
/// This is totally different from [func`GLib.unichar_iszerowidth`] and is at best misnamed.
@inlinable public func isZeroWidth(ch: gunichar) -> Bool {
    let result = pango_is_zero_width(ch)
    let rv = ((result) != 0)
    return rv
}




/// Breaks a piece of text into segments with consistent directional
/// level and font.
/// 
/// Each byte of `text` will be contained in exactly one of the items in the
/// returned list; the generated list of items will be in logical order (the
/// start offsets of the items are ascending).
/// 
/// `cached_iter` should be an iterator over `attrs` currently positioned
/// at a range before or containing `start_index`; `cached_iter` will be
/// advanced to the range covering the position just after
/// `start_index` + `length`. (i.e. if itemizing in a loop, just keep passing
/// in the same `cached_iter`).
@inlinable public func itemize<AttrListT: AttrListProtocol, ContextT: ContextProtocol>(context: ContextT, text: UnsafePointer<CChar>!, startIndex: Int, length: Int, attrs: AttrListT, cachedIter: AttrIteratorRef? = nil) -> GLib.ListRef! {
    let result = pango_itemize(context.context_ptr, text, gint(startIndex), gint(length), attrs.attr_list_ptr, cachedIter?.attr_iterator_ptr)
    guard let rv = GLib.ListRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}
/// Breaks a piece of text into segments with consistent directional
/// level and font.
/// 
/// Each byte of `text` will be contained in exactly one of the items in the
/// returned list; the generated list of items will be in logical order (the
/// start offsets of the items are ascending).
/// 
/// `cached_iter` should be an iterator over `attrs` currently positioned
/// at a range before or containing `start_index`; `cached_iter` will be
/// advanced to the range covering the position just after
/// `start_index` + `length`. (i.e. if itemizing in a loop, just keep passing
/// in the same `cached_iter`).
@inlinable public func itemize<AttrIteratorT: AttrIteratorProtocol, AttrListT: AttrListProtocol, ContextT: ContextProtocol>(context: ContextT, text: UnsafePointer<CChar>!, startIndex: Int, length: Int, attrs: AttrListT, cachedIter: AttrIteratorT?) -> GLib.ListRef! {
    let result = pango_itemize(context.context_ptr, text, gint(startIndex), gint(length), attrs.attr_list_ptr, cachedIter?.attr_iterator_ptr)
    guard let rv = GLib.ListRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Like ``pango_itemize()``, but with an explicitly specified base direction.
/// 
/// The base direction is used when computing bidirectional levels.
/// [func`itemize`] gets the base direction from the `PangoContext`
/// (see [method`Pango.Context.set_base_dir`]).
@inlinable public func itemizeWithBaseDir<AttrListT: AttrListProtocol, ContextT: ContextProtocol>(context: ContextT, baseDir: PangoDirection, text: UnsafePointer<CChar>!, startIndex: Int, length: Int, attrs: AttrListT, cachedIter: AttrIteratorRef? = nil) -> GLib.ListRef! {
    let result = pango_itemize_with_base_dir(context.context_ptr, baseDir, text, gint(startIndex), gint(length), attrs.attr_list_ptr, cachedIter?.attr_iterator_ptr)
    guard let rv = GLib.ListRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}
/// Like ``pango_itemize()``, but with an explicitly specified base direction.
/// 
/// The base direction is used when computing bidirectional levels.
/// [func`itemize`] gets the base direction from the `PangoContext`
/// (see [method`Pango.Context.set_base_dir`]).
@inlinable public func itemizeWithBaseDir<AttrIteratorT: AttrIteratorProtocol, AttrListT: AttrListProtocol, ContextT: ContextProtocol>(context: ContextT, baseDir: PangoDirection, text: UnsafePointer<CChar>!, startIndex: Int, length: Int, attrs: AttrListT, cachedIter: AttrIteratorT?) -> GLib.ListRef! {
    let result = pango_itemize_with_base_dir(context.context_ptr, baseDir, text, gint(startIndex), gint(length), attrs.attr_list_ptr, cachedIter?.attr_iterator_ptr)
    guard let rv = GLib.ListRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Returns the list of languages that the user prefers.
/// 
/// The list is specified by the `PANGO_LANGUAGE` or `LANGUAGE`
/// environment variables, in order of preference. Note that this
/// list does not necessarily include the language returned by
/// [func`Pango.Language.get_default`].
/// 
/// When choosing language-specific resources, such as the sample
/// text returned by [method`Pango.Language.get_sample_string`],
/// you should first try the default language, followed by the
/// languages returned by this function.
@inlinable public func languageGetPreferred() -> UnsafeMutablePointer<UnsafeMutablePointer<PangoLanguage>?>? {
    let result = pango_language_get_preferred()
    guard let rv = result else { return nil }
    return rv
}




@inlinable public func layoutDeserializeErrorQuark() -> GQuark {
    let result = pango_layout_deserialize_error_quark()
    let rv = result
    return rv
}




/// Return the bidirectional embedding levels of the input paragraph.
/// 
/// The bidirectional embedding levels are defined by the [Unicode Bidirectional
/// Algorithm](http://www.unicode.org/reports/tr9/).
/// 
/// If the input base direction is a weak direction, the direction of the
/// characters in the text will determine the final resolved direction.
@inlinable public func log2visGetEmbeddingLevels(text: UnsafePointer<gchar>!, length: Int, pbaseDir: UnsafeMutablePointer<PangoDirection>!) -> UnsafeMutablePointer<guint8>! {
    let result = pango_log2vis_get_embedding_levels(text, gint(length), pbaseDir)
    guard let rv = result else { return nil }
    return rv
}




/// Finishes parsing markup.
/// 
/// After feeding a Pango markup parser some data with [method`GLib.MarkupParseContext.parse`],
/// use this function to get the list of attributes and text out of the
/// markup. This function will not free `context`, use [method`GLib.MarkupParseContext.free`]
/// to do so.
@inlinable public func markupParserFinish<GLibMarkupParseContextT: GLib.MarkupParseContextProtocol>(context: GLibMarkupParseContextT, attrList: UnsafeMutablePointer<UnsafeMutablePointer<PangoAttrList>?>! = nil, text: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>! = nil, accelChar: UnsafeMutablePointer<gunichar>! = nil) throws -> Bool {
    var error: UnsafeMutablePointer<GError>?
    let result = pango_markup_parser_finish(context.markup_parse_context_ptr, attrList, text, accelChar, &error)
    if let error = error { throw GLibError(error) }
    let rv = ((result) != 0)
    return rv
}




/// Incrementally parses marked-up text to create a plain-text string
/// and an attribute list.
/// 
/// See the [Pango Markup](pango_markup.html) docs for details about the
/// supported markup.
/// 
/// If `accel_marker` is nonzero, the given character will mark the
/// character following it as an accelerator. For example, `accel_marker`
/// might be an ampersand or underscore. All characters marked
/// as an accelerator will receive a `PANGO_UNDERLINE_LOW` attribute,
/// and the first character so marked will be returned in `accel_char`,
/// when calling [func`markup_parser_finish`]. Two `accel_marker` characters
/// following each other produce a single literal `accel_marker` character.
/// 
/// To feed markup to the parser, use [method`GLib.MarkupParseContext.parse`]
/// on the returned [struct`GLib.MarkupParseContext`]. When done with feeding markup
/// to the parser, use [func`markup_parser_finish`] to get the data out
/// of it, and then use [method`GLib.MarkupParseContext.free`] to free it.
/// 
/// This function is designed for applications that read Pango markup
/// from streams. To simply parse a string containing Pango markup,
/// the [func`Pango.parse_markup`] API is recommended instead.
@inlinable public func markupParserNew(accelMarker: gunichar) -> GLib.MarkupParseContextRef! {
    let result = pango_markup_parser_new(accelMarker)
    guard let rv = GLib.MarkupParseContextRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Parses an enum type and stores the result in `value`.
/// 
/// If `str` does not match the nick name of any of the possible values
/// for the enum and is not an integer, `false` is returned, a warning
/// is issued if `warn` is `true`, and a string representing the list of
/// possible values is stored in `possible_values`. The list is
/// slash-separated, eg. "none/start/middle/end".
/// 
/// If failed and `possible_values` is not `nil`, returned string should
/// be freed using `g_free()`.
///
/// **parse_enum is deprecated:**
/// This method is deprecated.
@available(*, deprecated) @inlinable public func parseEnum(type: GType, str: UnsafePointer<CChar>? = nil, value: UnsafeMutablePointer<gint>! = nil, warn: Bool, possibleValues: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>! = nil) -> Bool {
    let result = pango_parse_enum(type, str, value, gboolean((warn) ? 1 : 0), possibleValues)
    let rv = ((result) != 0)
    return rv
}




/// Parses marked-up text to create a plain-text string and an attribute list.
/// 
/// See the [Pango Markup](pango_markup.html) docs for details about the
/// supported markup.
/// 
/// If `accel_marker` is nonzero, the given character will mark the
/// character following it as an accelerator. For example, `accel_marker`
/// might be an ampersand or underscore. All characters marked
/// as an accelerator will receive a `PANGO_UNDERLINE_LOW` attribute,
/// and the first character so marked will be returned in `accel_char`.
/// Two `accel_marker` characters following each other produce a single
/// literal `accel_marker` character.
/// 
/// To parse a stream of pango markup incrementally, use [func`markup_parser_new`].
/// 
/// If any error happens, none of the output arguments are touched except
/// for `error`.
@inlinable public func parseMarkup(markupText: UnsafePointer<CChar>!, length: Int, accelMarker: gunichar, attrList: UnsafeMutablePointer<UnsafeMutablePointer<PangoAttrList>?>! = nil, text: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>! = nil, accelChar: UnsafeMutablePointer<gunichar>! = nil) throws -> Bool {
    var error: UnsafeMutablePointer<GError>?
    let result = pango_parse_markup(markupText, gint(length), accelMarker, attrList, text, accelChar, &error)
    if let error = error { throw GLibError(error) }
    let rv = ((result) != 0)
    return rv
}




/// Parses a font stretch.
/// 
/// The allowed values are
/// "ultra_condensed", "extra_condensed", "condensed",
/// "semi_condensed", "normal", "semi_expanded", "expanded",
/// "extra_expanded" and "ultra_expanded". Case variations are
/// ignored and the '_' characters may be omitted.
@inlinable public func parseStretch(str: UnsafePointer<CChar>!, stretch: UnsafeMutablePointer<PangoStretch>!, warn: Bool) -> Bool {
    let result = pango_parse_stretch(str, stretch, gboolean((warn) ? 1 : 0))
    let rv = ((result) != 0)
    return rv
}




/// Parses a font style.
/// 
/// The allowed values are "normal", "italic" and "oblique", case
/// variations being
/// ignored.
@inlinable public func parseStyle(str: UnsafePointer<CChar>!, style: UnsafeMutablePointer<PangoStyle>!, warn: Bool) -> Bool {
    let result = pango_parse_style(str, style, gboolean((warn) ? 1 : 0))
    let rv = ((result) != 0)
    return rv
}




/// Parses a font variant.
/// 
/// The allowed values are "normal", "small-caps", "all-small-caps",
/// "petite-caps", "all-petite-caps", "unicase" and "title-caps",
/// case variations being ignored.
@inlinable public func parseVariant(str: UnsafePointer<CChar>!, variant: UnsafeMutablePointer<PangoVariant>!, warn: Bool) -> Bool {
    let result = pango_parse_variant(str, variant, gboolean((warn) ? 1 : 0))
    let rv = ((result) != 0)
    return rv
}




/// Parses a font weight.
/// 
/// The allowed values are "heavy",
/// "ultrabold", "bold", "normal", "light", "ultraleight"
/// and integers. Case variations are ignored.
@inlinable public func parseWeight(str: UnsafePointer<CChar>!, weight: UnsafeMutablePointer<PangoWeight>!, warn: Bool) -> Bool {
    let result = pango_parse_weight(str, weight, gboolean((warn) ? 1 : 0))
    let rv = ((result) != 0)
    return rv
}




/// Quantizes the thickness and position of a line to whole device pixels.
/// 
/// This is typically used for underline or strikethrough. The purpose of
/// this function is to avoid such lines looking blurry.
/// 
/// Care is taken to make sure `thickness` is at least one pixel when this
/// function returns, but returned `position` may become zero as a result
/// of rounding.
@inlinable public func quantizeLineGeometry(thickness: UnsafeMutablePointer<gint>!, position: UnsafeMutablePointer<gint>!) {
    
    pango_quantize_line_geometry(thickness, position)
    
}




/// Reads an entire line from a file into a buffer.
/// 
/// Lines may be delimited with '\n', '\r', '\n\r', or '\r\n'. The delimiter
/// is not written into the buffer. Text after a '#' character is treated as
/// a comment and skipped. '\' can be used to escape a # character.
/// '\' proceeding a line delimiter combines adjacent lines. A '\' proceeding
/// any other character is ignored and written into the output buffer
/// unmodified.
///
/// **read_line is deprecated:**
/// This method is deprecated.
@available(*, deprecated) @inlinable public func readLine<GLibStringTypeT: GLib.StringProtocol>(stream: UnsafeMutablePointer<FILE>? = nil, str: GLibStringTypeT) -> Int {
    let result = pango_read_line(stream, str.gstring_ptr)
    let rv = Int(result)
    return rv
}




/// Reorder items from logical order to visual order.
/// 
/// The visual order is determined from the associated directional
/// levels of the items. The original list is unmodified.
/// 
/// (Please open a bug if you use this function.
///  It is not a particularly convenient interface, and the code
///  is duplicated elsewhere in Pango for that reason.)
@inlinable public func reorder<GLibListT: GLib.ListProtocol>(items: GLibListT) -> GLib.ListRef! {
    let result = pango_reorder_items(items._ptr)
    guard let rv = GLib.ListRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Scans an integer.
/// 
/// Leading white space is skipped.
///
/// **scan_int is deprecated:**
/// This method is deprecated.
@available(*, deprecated) @inlinable public func scanInt(pos: UnsafeMutablePointer<UnsafePointer<CChar>?>!, out: UnsafeMutablePointer<gint>!) -> Bool {
    let result = pango_scan_int(pos, out)
    let rv = ((result) != 0)
    return rv
}




/// Scans a string into a `GString` buffer.
/// 
/// The string may either be a sequence of non-white-space characters,
/// or a quoted string with '"'. Instead a quoted string, '\"' represents
/// a literal quote. Leading white space outside of quotes is skipped.
///
/// **scan_string is deprecated:**
/// This method is deprecated.
@available(*, deprecated) @inlinable public func scanString<GLibStringTypeT: GLib.StringProtocol>(pos: UnsafeMutablePointer<UnsafePointer<CChar>?>!, out: GLibStringTypeT) -> Bool {
    let result = pango_scan_string(pos, out.gstring_ptr)
    let rv = ((result) != 0)
    return rv
}




/// Scans a word into a `GString` buffer.
/// 
/// A word consists of [A-Za-z_] followed by zero or more
/// [A-Za-z_0-9]. Leading white space is skipped.
///
/// **scan_word is deprecated:**
/// This method is deprecated.
@available(*, deprecated) @inlinable public func scanWord<GLibStringTypeT: GLib.StringProtocol>(pos: UnsafeMutablePointer<UnsafePointer<CChar>?>!, out: GLibStringTypeT) -> Bool {
    let result = pango_scan_word(pos, out.gstring_ptr)
    let rv = ((result) != 0)
    return rv
}




/// Looks up the script for a particular character.
/// 
/// The script of a character is defined by
/// [Unicode Standard Annex 24: Script names](http://www.unicode.org/reports/tr24/).
/// 
/// No check is made for `ch` being a valid Unicode character; if you pass
/// in invalid character, the result is undefined.
/// 
/// Note that while the return type of this function is declared
/// as `PangoScript`, as of Pango 1.18, this function simply returns
/// the return value of [func`GLib.unichar_get_script`]. Callers must be
/// prepared to handle unknown values.
///
/// **script_for_unichar is deprecated:**
/// Use g_unichar_get_script()
@available(*, deprecated) @inlinable public func scriptForUnichar(ch: gunichar) -> PangoScript {
    let result = pango_script_for_unichar(ch)
    let rv = result
    return rv
}




/// Finds a language tag that is reasonably representative of `script`.
/// 
/// The language will usually be the most widely spoken or used language
/// written in that script: for instance, the sample language for
/// `PANGO_SCRIPT_CYRILLIC` is ru (Russian), the sample language for
/// `PANGO_SCRIPT_ARABIC` is ar.
/// 
/// For some scripts, no sample language will be returned because
/// there is no language that is sufficiently representative. The
/// best example of this is `PANGO_SCRIPT_HAN`, where various different
/// variants of written Chinese, Japanese, and Korean all use
/// significantly different sets of Han characters and forms
/// of shared characters. No sample language can be provided
/// for many historical scripts as well.
/// 
/// As of 1.18, this function checks the environment variables
/// `PANGO_LANGUAGE` and `LANGUAGE` (checked in that order) first.
/// If one of them is set, it is parsed as a list of language tags
/// separated by colons or other separators. This function
/// will return the first language in the parsed list that Pango
/// believes may use `script` for writing. This last predicate
/// is tested using [method`Pango.Language.includes_script`]. This can
/// be used to control Pango's font selection for non-primary
/// languages. For example, a `PANGO_LANGUAGE` enviroment variable
/// set to "en:fa" makes Pango choose fonts suitable for Persian (fa)
/// instead of Arabic (ar) when a segment of Arabic text is found
/// in an otherwise non-Arabic text. The same trick can be used to
/// choose a default language for `PANGO_SCRIPT_HAN` when setting
/// context language is not feasible.
@inlinable public func scriptGetSampleLanguage(script: PangoScript) -> Pango.LanguageRef! {
    let result = pango_script_get_sample_language(script)
    guard let rv = LanguageRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Convert the characters in `item` into glyphs.
/// 
/// This is similar to [func`Pango.shape_with_flags`], except it takes a
/// `PangoItem` instead of separate `item_text` and `analysis` arguments.
/// It also takes `log_attrs`, which may be used in implementing text
/// transforms.
/// 
/// Note that the extra attributes in the `analyis` that is returned from
/// [func`Pango.itemize`] have indices that are relative to the entire paragraph,
/// so you do not pass the full paragraph text as `paragraph_text`, you need
/// to subtract the item offset from their indices before calling
/// [func`Pango.shape_with_flags`].
@inlinable public func shape<GlyphStringT: GlyphStringProtocol, ItemT: ItemProtocol>(item: ItemT, paragraphText: UnsafePointer<CChar>? = nil, paragraphLength: Int, logAttrs: LogAttrRef? = nil, glyphs: GlyphStringT, flags: ShapeFlags) {
    
    pango_shape_item(item.item_ptr, paragraphText, gint(paragraphLength), logAttrs?._ptr, glyphs.glyph_string_ptr, flags.value)
    
}
/// Convert the characters in `item` into glyphs.
/// 
/// This is similar to [func`Pango.shape_with_flags`], except it takes a
/// `PangoItem` instead of separate `item_text` and `analysis` arguments.
/// It also takes `log_attrs`, which may be used in implementing text
/// transforms.
/// 
/// Note that the extra attributes in the `analyis` that is returned from
/// [func`Pango.itemize`] have indices that are relative to the entire paragraph,
/// so you do not pass the full paragraph text as `paragraph_text`, you need
/// to subtract the item offset from their indices before calling
/// [func`Pango.shape_with_flags`].
@inlinable public func shape<GlyphStringT: GlyphStringProtocol, ItemT: ItemProtocol, LogAttrT: LogAttrProtocol>(item: ItemT, paragraphText: UnsafePointer<CChar>? = nil, paragraphLength: Int, logAttrs: LogAttrT?, glyphs: GlyphStringT, flags: ShapeFlags) {
    
    pango_shape_item(item.item_ptr, paragraphText, gint(paragraphLength), logAttrs?._ptr, glyphs.glyph_string_ptr, flags.value)
    
}




/// Convert the characters in `text` into glyphs.
/// 
/// Given a segment of text and the corresponding `PangoAnalysis` structure
/// returned from [func`Pango.itemize`], convert the characters into glyphs.
/// You may also pass in only a substring of the item from [func`Pango.itemize`].
/// 
/// This is similar to [func`Pango.shape_full`], except it also takes flags
/// that can influence the shaping process.
/// 
/// Note that the extra attributes in the `analyis` that is returned from
/// [func`Pango.itemize`] have indices that are relative to the entire paragraph,
/// so you do not pass the full paragraph text as `paragraph_text`, you need
/// to subtract the item offset from their indices before calling
/// [func`Pango.shape_with_flags`].
@inlinable public func shapeWithFlags<AnalysisT: AnalysisProtocol, GlyphStringT: GlyphStringProtocol>(itemText: UnsafePointer<CChar>!, itemLength: Int, paragraphText: UnsafePointer<CChar>? = nil, paragraphLength: Int, analysis: AnalysisT, glyphs: GlyphStringT, flags: ShapeFlags) {
    
    pango_shape_with_flags(itemText, gint(itemLength), paragraphText, gint(paragraphLength), analysis._ptr, glyphs.glyph_string_ptr, flags.value)
    
}




/// Skips 0 or more characters of white space.
///
/// **skip_space is deprecated:**
/// This method is deprecated.
@available(*, deprecated) @inlinable public func skipSpace(pos: UnsafeMutablePointer<UnsafePointer<CChar>?>!) -> Bool {
    let result = pango_skip_space(pos)
    let rv = ((result) != 0)
    return rv
}




/// Splits a `G_SEARCHPATH_SEPARATOR-separated` list of files, stripping
/// white space and substituting ~/ with $HOME/.
///
/// **split_file_list is deprecated:**
/// This method is deprecated.
@available(*, deprecated) @inlinable public func splitFileList(str: UnsafePointer<CChar>!) -> UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>! {
    let result = pango_split_file_list(str)
    guard let rv = result else { return nil }
    return rv
}




/// Deserializes a `PangoTabArray` from a string.
/// 
/// This is the counterpart to [method`Pango.TabArray.to_string`].
/// See that functions for details about the format.
@inlinable public func tabArrayFromString(text: UnsafePointer<CChar>!) -> Pango.TabArrayRef! {
    let result = pango_tab_array_from_string(text)
    guard let rv = TabArrayRef(gconstpointer: gconstpointer(result)) else { return nil }
    return rv
}




/// Apply language-specific tailoring to the breaks in `attrs`.
/// 
/// The line breaks are assumed to have been produced by [func`Pango.default_break`].
/// 
/// If `offset` is not -1, it is used to apply attributes from `analysis` that are
/// relevant to line breaking.
/// 
/// Note that it is better to pass -1 for `offset` and use [func`Pango.attr_break`]
/// to apply attributes to the whole paragraph.
@inlinable public func tailorBreak<AnalysisT: AnalysisProtocol>(text: UnsafePointer<CChar>!, length: Int, analysis: AnalysisT, offset: Int, attrs: UnsafeMutablePointer<PangoLogAttr>!, attrsLen: Int) {
    
    pango_tailor_break(text, gint(length), analysis._ptr, gint(offset), attrs, gint(attrsLen))
    
}




/// Trims leading and trailing whitespace from a string.
///
/// **trim_string is deprecated:**
/// This method is deprecated.
@available(*, deprecated) @inlinable public func trimString(str: UnsafePointer<CChar>!) -> String! {
    let result = pango_trim_string(str)
    guard let rv = result.map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Determines the inherent direction of a character.
/// 
/// The inherent direction is either `PANGO_DIRECTION_LTR`, `PANGO_DIRECTION_RTL`,
/// or `PANGO_DIRECTION_NEUTRAL`.
/// 
/// This function is useful to categorize characters into left-to-right
/// letters, right-to-left letters, and everything else. If full Unicode
/// bidirectional type of a character is needed, [func`Pango.BidiType.for_unichar`]
/// can be used instead.
@inlinable @available(*, deprecated) public func unicharDirection(ch: gunichar) -> PangoDirection {
    let result = pango_unichar_direction(ch)
    let rv = result
    return rv
}




/// Converts a floating-point number to Pango units.
/// 
/// The conversion is done by multiplying `d` by `PANGO_SCALE` and
/// rounding the result to nearest integer.
@inlinable public func unitsFromDouble(d: CDouble) -> Int {
    let result = pango_units_from_double(d)
    let rv = Int(result)
    return rv
}




/// Converts a number in Pango units to floating-point.
/// 
/// The conversion is done by dividing `i` by `PANGO_SCALE`.
@inlinable public func unitsToDouble(i: Int) -> CDouble {
    let result = pango_units_to_double(gint(i))
    let rv = result
    return rv
}




/// Returns the encoded version of Pango available at run-time.
/// 
/// This is similar to the macro `PANGO_VERSION` except that the macro
/// returns the encoded version available at compile-time. A version
/// number can be encoded into an integer using `PANGO_VERSION_ENCODE()`.
@inlinable public func version() -> Int {
    let result = pango_version()
    let rv = Int(result)
    return rv
}




/// Checks that the Pango library in use is compatible with the
/// given version.
/// 
/// Generally you would pass in the constants `PANGO_VERSION_MAJOR`,
/// `PANGO_VERSION_MINOR`, `PANGO_VERSION_MICRO` as the three arguments
/// to this function; that produces a check that the library in use at
/// run-time is compatible with the version of Pango the application or
/// module was compiled against.
/// 
/// Compatibility is defined by two things: first the version
/// of the running library is newer than the version
/// `required_major.required_minor`.`required_micro`. Second
/// the running library must be binary compatible with the
/// version `required_major.required_minor`.`required_micro`
/// (same major version.)
/// 
/// For compile-time version checking use `PANGO_VERSION_CHECK()`.
@inlinable public func versionCheck(requiredMajor: Int, requiredMinor: Int, requiredMicro: Int) -> String! {
    let result = pango_version_check(gint(requiredMajor), gint(requiredMinor), gint(requiredMicro))
    guard let rv = result.map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Returns the version of Pango available at run-time.
/// 
/// This is similar to the macro `PANGO_VERSION_STRING` except that the
/// macro returns the version available at compile-time.
@inlinable public func versionString() -> String! {
    let result = pango_version_string()
    guard let rv = result.map({ String(cString: $0) }) else { return nil }
    return rv
}


