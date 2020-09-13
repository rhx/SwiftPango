import CGLib
import CPango
import GLib
import GLibObject

/// Create a new allow-breaks attribute.
/// 
/// If breaks are disabled, the range will be kept in a
/// single run, as far as possible.
@inlinable public func attrAllowBreaksNew(allowBreaks: Bool) -> AttributeRef! {
    guard let rv = AttributeRef(gconstpointer: gconstpointer(pango_attr_allow_breaks_new(gboolean((allowBreaks) ? 1 : 0)))) else { return nil }
    return rv
}




/// Create a new background alpha attribute.
@inlinable public func attrBackgroundAlphaNew(alpha: guint16) -> AttributeRef! {
    guard let rv = AttributeRef(gconstpointer: gconstpointer(pango_attr_background_alpha_new(alpha))) else { return nil }
    return rv
}




/// Create a new background color attribute.
@inlinable public func attrBackgroundNew(red: guint16, green: guint16, blue: guint16) -> AttributeRef! {
    guard let rv = AttributeRef(gconstpointer: gconstpointer(pango_attr_background_new(red, green, blue))) else { return nil }
    return rv
}




/// Create a new font fallback attribute.
/// 
/// If fallback is disabled, characters will only be used from the
/// closest matching font on the system. No fallback will be done to
/// other fonts on the system that might contain the characters in the
/// text.
@inlinable public func attrFallbackNew(enableFallback: Bool) -> AttributeRef! {
    guard let rv = AttributeRef(gconstpointer: gconstpointer(pango_attr_fallback_new(gboolean((enableFallback) ? 1 : 0)))) else { return nil }
    return rv
}




/// Create a new font family attribute.
@inlinable public func attrFamilyNew(family: UnsafePointer<CChar>!) -> AttributeRef! {
    guard let rv = AttributeRef(gconstpointer: gconstpointer(pango_attr_family_new(family))) else { return nil }
    return rv
}




/// Create a new font description attribute. This attribute
/// allows setting family, style, weight, variant, stretch,
/// and size simultaneously.
@inlinable public func attrFontDescNew<FontDescriptionT: FontDescriptionProtocol>(desc: FontDescriptionT) -> AttributeRef! {
    guard let rv = AttributeRef(gconstpointer: gconstpointer(pango_attr_font_desc_new(desc.font_description_ptr))) else { return nil }
    return rv
}




/// Create a new font features tag attribute.
@inlinable public func attrFontFeaturesNew(features: UnsafePointer<gchar>!) -> AttributeRef! {
    guard let rv = AttributeRef(gconstpointer: gconstpointer(pango_attr_font_features_new(features))) else { return nil }
    return rv
}




/// Create a new foreground alpha attribute.
@inlinable public func attrForegroundAlphaNew(alpha: guint16) -> AttributeRef! {
    guard let rv = AttributeRef(gconstpointer: gconstpointer(pango_attr_foreground_alpha_new(alpha))) else { return nil }
    return rv
}




/// Create a new foreground color attribute.
@inlinable public func attrForegroundNew(red: guint16, green: guint16, blue: guint16) -> AttributeRef! {
    guard let rv = AttributeRef(gconstpointer: gconstpointer(pango_attr_foreground_new(red, green, blue))) else { return nil }
    return rv
}




/// Create a new gravity hint attribute.
@inlinable public func attrGravityHintNew(hint: PangoGravityHint) -> AttributeRef! {
    guard let rv = AttributeRef(gconstpointer: gconstpointer(pango_attr_gravity_hint_new(hint))) else { return nil }
    return rv
}




/// Create a new gravity attribute.
@inlinable public func attrGravityNew(gravity: PangoGravity) -> AttributeRef! {
    guard let rv = AttributeRef(gconstpointer: gconstpointer(pango_attr_gravity_new(gravity))) else { return nil }
    return rv
}




/// Create a new insert-hyphens attribute.
/// 
/// Pango will insert hyphens when breaking lines in the middle
/// of a word. This attribute can be used to suppress the hyphen.
@inlinable public func attrInsertHyphensNew(insertHyphens: Bool) -> AttributeRef! {
    guard let rv = AttributeRef(gconstpointer: gconstpointer(pango_attr_insert_hyphens_new(gboolean((insertHyphens) ? 1 : 0)))) else { return nil }
    return rv
}




/// Create a new language tag attribute.
@inlinable public func attrLanguageNew<LanguageT: LanguageProtocol>(language: LanguageT) -> AttributeRef! {
    guard let rv = AttributeRef(gconstpointer: gconstpointer(pango_attr_language_new(language.language_ptr))) else { return nil }
    return rv
}




/// Create a new letter-spacing attribute.
@inlinable public func attrLetterSpacingNew(letterSpacing: Int) -> AttributeRef! {
    guard let rv = AttributeRef(gconstpointer: gconstpointer(pango_attr_letter_spacing_new(gint(letterSpacing)))) else { return nil }
    return rv
}




/// Create a new overline color attribute. This attribute
/// modifies the color of overlines. If not set, overlines
/// will use the foreground color.
@inlinable public func attrOverlineColorNew(red: guint16, green: guint16, blue: guint16) -> AttributeRef! {
    guard let rv = AttributeRef(gconstpointer: gconstpointer(pango_attr_overline_color_new(red, green, blue))) else { return nil }
    return rv
}




/// Create a new overline-style attribute.
@inlinable public func attrOverlineNew(overline: PangoOverline) -> AttributeRef! {
    guard let rv = AttributeRef(gconstpointer: gconstpointer(pango_attr_overline_new(overline))) else { return nil }
    return rv
}




/// Create a new baseline displacement attribute.
@inlinable public func attrRiseNew(rise: Int) -> AttributeRef! {
    guard let rv = AttributeRef(gconstpointer: gconstpointer(pango_attr_rise_new(gint(rise)))) else { return nil }
    return rv
}




/// Create a new font size scale attribute. The base font for the
/// affected text will have its size multiplied by `scale_factor`.
@inlinable public func attrScaleNew(scaleFactor: CDouble) -> AttributeRef! {
    guard let rv = AttributeRef(gconstpointer: gconstpointer(pango_attr_scale_new(scaleFactor))) else { return nil }
    return rv
}




/// Create a new shape attribute. A shape is used to impose a
/// particular ink and logical rectangle on the result of shaping a
/// particular glyph. This might be used, for instance, for
/// embedding a picture or a widget inside a `PangoLayout`.
@inlinable public func attrShapeNew<RectangleT: RectangleProtocol>(inkRect: RectangleT, logicalRect: RectangleT) -> AttributeRef! {
    guard let rv = AttributeRef(gconstpointer: gconstpointer(pango_attr_shape_new(inkRect._ptr, logicalRect._ptr))) else { return nil }
    return rv
}




/// Like `pango_attr_shape_new()`, but a user data pointer is also
/// provided; this pointer can be accessed when later
/// rendering the glyph.
@inlinable public func attrShapeNewWithData<RectangleT: RectangleProtocol>(inkRect: RectangleT, logicalRect: RectangleT, data: gpointer! = nil, copyFunc: PangoAttrDataCopyFunc? = nil, destroyFunc: GDestroyNotify? = nil) -> AttributeRef! {
    guard let rv = AttributeRef(gconstpointer: gconstpointer(pango_attr_shape_new_with_data(inkRect._ptr, logicalRect._ptr, data, copyFunc, destroyFunc))) else { return nil }
    return rv
}




/// Create a new attribute that influences how invisible
/// characters are rendered.
@inlinable public func attrShowNew(flags: ShowFlags) -> AttributeRef! {
    guard let rv = AttributeRef(gconstpointer: gconstpointer(pango_attr_show_new(flags.value))) else { return nil }
    return rv
}




/// Create a new font-size attribute in fractional points.
@inlinable public func attrSizeNew(size: Int) -> AttributeRef! {
    guard let rv = AttributeRef(gconstpointer: gconstpointer(pango_attr_size_new(gint(size)))) else { return nil }
    return rv
}




/// Create a new font-size attribute in device units.
@inlinable public func attrSizeNewAbsolute(size: Int) -> AttributeRef! {
    guard let rv = AttributeRef(gconstpointer: gconstpointer(pango_attr_size_new_absolute(gint(size)))) else { return nil }
    return rv
}




/// Create a new font stretch attribute
@inlinable public func attrStretchNew(stretch: PangoStretch) -> AttributeRef! {
    guard let rv = AttributeRef(gconstpointer: gconstpointer(pango_attr_stretch_new(stretch))) else { return nil }
    return rv
}




/// Create a new strikethrough color attribute. This attribute
/// modifies the color of strikethrough lines. If not set, strikethrough
/// lines will use the foreground color.
@inlinable public func attrStrikethroughColorNew(red: guint16, green: guint16, blue: guint16) -> AttributeRef! {
    guard let rv = AttributeRef(gconstpointer: gconstpointer(pango_attr_strikethrough_color_new(red, green, blue))) else { return nil }
    return rv
}




/// Create a new strike-through attribute.
@inlinable public func attrStrikethroughNew(strikethrough: Bool) -> AttributeRef! {
    guard let rv = AttributeRef(gconstpointer: gconstpointer(pango_attr_strikethrough_new(gboolean((strikethrough) ? 1 : 0)))) else { return nil }
    return rv
}




/// Create a new font slant style attribute.
@inlinable public func attrStyleNew(style: PangoStyle) -> AttributeRef! {
    guard let rv = AttributeRef(gconstpointer: gconstpointer(pango_attr_style_new(style))) else { return nil }
    return rv
}




/// Fetches the attribute type name passed in when registering the type using
/// `pango_attr_type_register()`.
/// 
/// The returned value is an interned string (see `g_intern_string()` for what
/// that means) that should not be modified or freed.
@inlinable public func attrTypeGetName(type: PangoAttrType) -> String! {
    guard let rv = pango_attr_type_get_name(type).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Allocate a new attribute type ID.  The attribute type name can be accessed
/// later by using `pango_attr_type_get_name()`.
@inlinable public func attrTypeRegister(name: UnsafePointer<gchar>!) -> PangoAttrType {
    let rv = pango_attr_type_register(name)
    return rv
}




/// Create a new underline color attribute. This attribute
/// modifies the color of underlines. If not set, underlines
/// will use the foreground color.
@inlinable public func attrUnderlineColorNew(red: guint16, green: guint16, blue: guint16) -> AttributeRef! {
    guard let rv = AttributeRef(gconstpointer: gconstpointer(pango_attr_underline_color_new(red, green, blue))) else { return nil }
    return rv
}




/// Create a new underline-style attribute.
@inlinable public func attrUnderlineNew(underline: PangoUnderline) -> AttributeRef! {
    guard let rv = AttributeRef(gconstpointer: gconstpointer(pango_attr_underline_new(underline))) else { return nil }
    return rv
}




/// Create a new font variant attribute (normal or small caps)
@inlinable public func attrVariantNew(variant: PangoVariant) -> AttributeRef! {
    guard let rv = AttributeRef(gconstpointer: gconstpointer(pango_attr_variant_new(variant))) else { return nil }
    return rv
}




/// Create a new font weight attribute.
@inlinable public func attrWeightNew(weight: PangoWeight) -> AttributeRef! {
    guard let rv = AttributeRef(gconstpointer: gconstpointer(pango_attr_weight_new(weight))) else { return nil }
    return rv
}




/// Determines the normative bidirectional character type of a
/// character, as specified in the Unicode Character Database.
/// 
/// A simplified version of this function is available as
/// `pango_unichar_direction()`.
@inlinable @available(*, deprecated) public func bidiTypeForUnichar(ch: gunichar) -> PangoBidiType {
    let rv = pango_bidi_type_for_unichar(ch)
    return rv
}




/// Determines possible line, word, and character breaks
/// for a string of Unicode text with a single analysis.
/// For most purposes you may want to use `pango_get_log_attrs()`.
///
/// **break is deprecated:**
/// Use pango_default_break() and pango_tailor_break()
@available(*, deprecated) @inlinable public func break_<AnalysisT: AnalysisProtocol>(text: UnsafePointer<gchar>!, length: Int, analysis: AnalysisT, attrs: UnsafeMutablePointer<PangoLogAttr>!, attrsLen: Int) {
    pango_break(text, gint(length), analysis._ptr, attrs, gint(attrsLen))

}




/// This is the default break algorithm. It applies Unicode
/// rules without language-specific tailoring, therefore
/// the `analyis` argument is unused and can be `nil`.
/// 
/// See `pango_tailor_break()` for language-specific breaks.
@inlinable public func defaultBreak<LogAttrT: LogAttrProtocol>(text: UnsafePointer<gchar>!, length: Int, analysis: AnalysisRef? = nil, attrs: LogAttrT, attrsLen: Int) {
    pango_default_break(text, gint(length), analysis?._ptr, attrs._ptr, gint(attrsLen))

}
/// This is the default break algorithm. It applies Unicode
/// rules without language-specific tailoring, therefore
/// the `analyis` argument is unused and can be `nil`.
/// 
/// See `pango_tailor_break()` for language-specific breaks.
@inlinable public func defaultBreak<AnalysisT: AnalysisProtocol, LogAttrT: LogAttrProtocol>(text: UnsafePointer<gchar>!, length: Int, analysis: AnalysisT?, attrs: LogAttrT, attrsLen: Int) {
    pango_default_break(text, gint(length), analysis?._ptr, attrs._ptr, gint(attrsLen))

}




/// Converts extents from Pango units to device units, dividing by the
/// `PANGO_SCALE` factor and performing rounding.
/// 
/// The `inclusive` rectangle is converted by flooring the x/y coordinates and extending
/// width/height, such that the final rectangle completely includes the original
/// rectangle.
/// 
/// The `nearest` rectangle is converted by rounding the coordinates
/// of the rectangle to the nearest device unit (pixel).
/// 
/// The rule to which argument to use is: if you want the resulting device-space
/// rectangle to completely contain the original rectangle, pass it in as `inclusive`.
/// If you want two touching-but-not-overlapping rectangles stay
/// touching-but-not-overlapping after rounding to device units, pass them in
/// as `nearest`.
@inlinable public func extentsToPixels(inclusive: RectangleRef? = nil, nearest: RectangleRef? = nil) {
    pango_extents_to_pixels(inclusive?._ptr, nearest?._ptr)

}
/// Converts extents from Pango units to device units, dividing by the
/// `PANGO_SCALE` factor and performing rounding.
/// 
/// The `inclusive` rectangle is converted by flooring the x/y coordinates and extending
/// width/height, such that the final rectangle completely includes the original
/// rectangle.
/// 
/// The `nearest` rectangle is converted by rounding the coordinates
/// of the rectangle to the nearest device unit (pixel).
/// 
/// The rule to which argument to use is: if you want the resulting device-space
/// rectangle to completely contain the original rectangle, pass it in as `inclusive`.
/// If you want two touching-but-not-overlapping rectangles stay
/// touching-but-not-overlapping after rounding to device units, pass them in
/// as `nearest`.
@inlinable public func extentsToPixels<RectangleT: RectangleProtocol>(inclusive: RectangleT?, nearest: RectangleT?) {
    pango_extents_to_pixels(inclusive?._ptr, nearest?._ptr)

}




/// Searches a string the first character that has a strong
/// direction, according to the Unicode bidirectional algorithm.
@inlinable @available(*, deprecated) public func findBaseDir(text: UnsafePointer<gchar>!, length: Int) -> PangoDirection {
    let rv = pango_find_base_dir(text, gint(length))
    return rv
}




/// Do not use.  Does not do anything.
///
/// **find_map is deprecated:**
/// This method is deprecated.
@available(*, deprecated) @inlinable public func findMap<LanguageT: LanguageProtocol>(language: LanguageT, engineTypeId: Int, renderTypeId: Int) -> MapRef! {
    guard let rv = MapRef(gconstpointer: gconstpointer(pango_find_map(language.language_ptr, guint(engineTypeId), guint(renderTypeId)))) else { return nil }
    return rv
}




/// Locates a paragraph boundary in `text`. A boundary is caused by
/// delimiter characters, such as a newline, carriage return, carriage
/// return-newline pair, or Unicode paragraph separator character.  The
/// index of the run of delimiters is returned in
/// `paragraph_delimiter_index`. The index of the start of the paragraph
/// (index after all delimiters) is stored in `next_paragraph_start`.
/// 
/// If no delimiters are found, both `paragraph_delimiter_index` and
/// `next_paragraph_start` are filled with the length of `text` (an index one
/// off the end).
@inlinable public func findParagraphBoundary(text: UnsafePointer<gchar>!, length: Int, paragraphDelimiterIndex: UnsafeMutablePointer<gint>!, nextParagraphStart: UnsafeMutablePointer<gint>!) {
    pango_find_paragraph_boundary(text, gint(length), paragraphDelimiterIndex, nextParagraphStart)

}




/// Creates a new font description from a string representation in the
/// form
/// 
/// "\[FAMILY-LIST] \[STYLE-OPTIONS] \[SIZE] \[VARIATIONS]",
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
/// "Small-Caps".
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
/// "Cantarell Italic Light 15 \`wght`=200"
@inlinable public func fontDescriptionFromString(str: UnsafePointer<CChar>!) -> FontDescriptionRef! {
    guard let rv = FontDescriptionRef(gconstpointer: gconstpointer(pango_font_description_from_string(str))) else { return nil }
    return rv
}




/// Computes a `PangoLogAttr` for each character in `text`. The `log_attrs`
/// array must have one `PangoLogAttr` for each position in `text`; if
/// `text` contains N characters, it has N+1 positions, including the
/// last position at the end of the text. `text` should be an entire
/// paragraph; logical attributes can't be computed without context
/// (for example you need to see spaces on either side of a word to know
/// the word is a word).
@inlinable public func getLogAttrs<LanguageT: LanguageProtocol>(text: UnsafePointer<CChar>!, length: Int, level: Int, language: LanguageT, logAttrs: UnsafeMutablePointer<PangoLogAttr>!, attrsLen: Int) {
    pango_get_log_attrs(text, gint(length), gint(level), language.language_ptr, logAttrs, gint(attrsLen))

}




/// If `ch` has the Unicode mirrored property and there is another Unicode
/// character that typically has a glyph that is the mirror image of `ch`'s
/// glyph, puts that character in the address pointed to by `mirrored_ch`.
/// 
/// Use `g_unichar_get_mirror_char()` instead; the docs for that function
/// provide full details.
@inlinable @available(*, deprecated) public func getMirrorChar(ch: gunichar, mirroredCh: UnsafeMutablePointer<gunichar>!) -> Bool {
    let rv = ((pango_get_mirror_char(ch, mirroredCh)) != 0)
    return rv
}




/// Finds the gravity that best matches the rotation component
/// in a `PangoMatrix`.
@inlinable public func gravityGetFor(matrix: MatrixRef? = nil) -> PangoGravity {
    let rv = pango_gravity_get_for_matrix(matrix?.matrix_ptr)
    return rv
}
/// Finds the gravity that best matches the rotation component
/// in a `PangoMatrix`.
@inlinable public func gravityGetFor<MatrixT: MatrixProtocol>(matrix: MatrixT?) -> PangoGravity {
    let rv = pango_gravity_get_for_matrix(matrix?.matrix_ptr)
    return rv
}




/// Based on the script, base gravity, and hint, returns actual gravity
/// to use in laying out a single `PangoItem`.
/// 
/// If `base_gravity` is `PANGO_GRAVITY_AUTO`, it is first replaced with the
/// preferred gravity of `script`.  To get the preferred gravity of a script,
/// pass `PANGO_GRAVITY_AUTO` and `PANGO_GRAVITY_HINT_STRONG` in.
@inlinable public func gravityGetFor(script: PangoScript, baseGravity: PangoGravity, hint: PangoGravityHint) -> PangoGravity {
    let rv = pango_gravity_get_for_script(script, baseGravity, hint)
    return rv
}




/// Based on the script, East Asian width, base gravity, and hint,
/// returns actual gravity to use in laying out a single character
/// or `PangoItem`.
/// 
/// This function is similar to `pango_gravity_get_for_script()` except
/// that this function makes a distinction between narrow/half-width and
/// wide/full-width characters also.  Wide/full-width characters always
/// stand <emphasis>upright</emphasis>, that is, they always take the base gravity,
/// whereas narrow/full-width characters are always rotated in vertical
/// context.
/// 
/// If `base_gravity` is `PANGO_GRAVITY_AUTO`, it is first replaced with the
/// preferred gravity of `script`.
@inlinable public func gravityGetForScriptAndWidth(script: PangoScript, wide: Bool, baseGravity: PangoGravity, hint: PangoGravityHint) -> PangoGravity {
    let rv = pango_gravity_get_for_script_and_width(script, gboolean((wide) ? 1 : 0), baseGravity, hint)
    return rv
}




/// Converts a `PangoGravity` value to its natural rotation in radians.
/// `gravity` should not be `PANGO_GRAVITY_AUTO`.
/// 
/// Note that `pango_matrix_rotate()` takes angle in degrees, not radians.
/// So, to call `pango_matrix_rotate()` with the output of this function
/// you should multiply it by (180. / G_PI).
@inlinable public func gravityToRotation(gravity: PangoGravity) -> CDouble {
    let rv = pango_gravity_to_rotation(gravity)
    return rv
}




/// Checks `ch` to see if it is a character that should not be
/// normally rendered on the screen.  This includes all Unicode characters
/// with "ZERO WIDTH" in their name, as well as <firstterm>bidi</firstterm> formatting characters, and
/// a few other ones.  This is totally different from `g_unichar_iszerowidth()`
/// and is at best misnamed.
@inlinable public func isZeroWidth(ch: gunichar) -> Bool {
    let rv = ((pango_is_zero_width(ch)) != 0)
    return rv
}




/// Breaks a piece of text into segments with consistent
/// directional level and shaping engine. Each byte of `text` will
/// be contained in exactly one of the items in the returned list;
/// the generated list of items will be in logical order (the start
/// offsets of the items are ascending).
/// 
/// `cached_iter` should be an iterator over `attrs` currently positioned at a
/// range before or containing `start_index`; `cached_iter` will be advanced to
/// the range covering the position just after `start_index` + `length`.
/// (i.e. if itemizing in a loop, just keep passing in the same `cached_iter`).
@inlinable public func itemize<AttrListT: AttrListProtocol, ContextT: ContextProtocol>(context: ContextT, text: UnsafePointer<CChar>!, startIndex: Int, length: Int, attrs: AttrListT, cachedIter: AttrIteratorRef? = nil) -> GLib.ListRef! {
    guard let rv = GLib.ListRef(pango_itemize(context.context_ptr, text, gint(startIndex), gint(length), attrs.attr_list_ptr, cachedIter?.attr_iterator_ptr)) else { return nil }
    return rv
}
/// Breaks a piece of text into segments with consistent
/// directional level and shaping engine. Each byte of `text` will
/// be contained in exactly one of the items in the returned list;
/// the generated list of items will be in logical order (the start
/// offsets of the items are ascending).
/// 
/// `cached_iter` should be an iterator over `attrs` currently positioned at a
/// range before or containing `start_index`; `cached_iter` will be advanced to
/// the range covering the position just after `start_index` + `length`.
/// (i.e. if itemizing in a loop, just keep passing in the same `cached_iter`).
@inlinable public func itemize<AttrIteratorT: AttrIteratorProtocol, AttrListT: AttrListProtocol, ContextT: ContextProtocol>(context: ContextT, text: UnsafePointer<CChar>!, startIndex: Int, length: Int, attrs: AttrListT, cachedIter: AttrIteratorT?) -> GLib.ListRef! {
    guard let rv = GLib.ListRef(pango_itemize(context.context_ptr, text, gint(startIndex), gint(length), attrs.attr_list_ptr, cachedIter?.attr_iterator_ptr)) else { return nil }
    return rv
}




/// Like `pango_itemize()`, but the base direction to use when
/// computing bidirectional levels (see pango_context_set_base_dir ()),
/// is specified explicitly rather than gotten from the `PangoContext`.
@inlinable public func itemizeWithBaseDir<AttrListT: AttrListProtocol, ContextT: ContextProtocol>(context: ContextT, baseDir: PangoDirection, text: UnsafePointer<CChar>!, startIndex: Int, length: Int, attrs: AttrListT, cachedIter: AttrIteratorRef? = nil) -> GLib.ListRef! {
    guard let rv = GLib.ListRef(pango_itemize_with_base_dir(context.context_ptr, baseDir, text, gint(startIndex), gint(length), attrs.attr_list_ptr, cachedIter?.attr_iterator_ptr)) else { return nil }
    return rv
}
/// Like `pango_itemize()`, but the base direction to use when
/// computing bidirectional levels (see pango_context_set_base_dir ()),
/// is specified explicitly rather than gotten from the `PangoContext`.
@inlinable public func itemizeWithBaseDir<AttrIteratorT: AttrIteratorProtocol, AttrListT: AttrListProtocol, ContextT: ContextProtocol>(context: ContextT, baseDir: PangoDirection, text: UnsafePointer<CChar>!, startIndex: Int, length: Int, attrs: AttrListT, cachedIter: AttrIteratorT?) -> GLib.ListRef! {
    guard let rv = GLib.ListRef(pango_itemize_with_base_dir(context.context_ptr, baseDir, text, gint(startIndex), gint(length), attrs.attr_list_ptr, cachedIter?.attr_iterator_ptr)) else { return nil }
    return rv
}




/// Take a RFC-3066 format language tag as a string and convert it to a
/// `PangoLanguage` pointer that can be efficiently copied (copy the
/// pointer) and compared with other language tags (compare the
/// pointer.)
/// 
/// This function first canonicalizes the string by converting it to
/// lowercase, mapping '_' to '-', and stripping all characters other
/// than letters and '-'.
/// 
/// Use `pango_language_get_default()` if you want to get the `PangoLanguage` for
/// the current locale of the process.
@inlinable public func languageFromString(language: UnsafePointer<CChar>? = nil) -> LanguageRef! {
    guard let rv = LanguageRef(gconstpointer: gconstpointer(pango_language_from_string(language))) else { return nil }
    return rv
}




/// Returns the `PangoLanguage` for the current locale of the process.
/// Note that this can change over the life of an application.
/// 
/// On Unix systems, this is the return value is derived from
/// `<literal>setlocale(LC_CTYPE, NULL)`</literal>, and the user can
/// affect this through the environment variables LC_ALL, LC_CTYPE or
/// LANG (checked in that order). The locale string typically is in
/// the form lang_COUNTRY, where lang is an ISO-639 language code, and
/// COUNTRY is an ISO-3166 country code. For instance, sv_FI for
/// Swedish as written in Finland or pt_BR for Portuguese as written in
/// Brazil.
/// 
/// On Windows, the C library does not use any such environment
/// variables, and setting them won't affect the behavior of functions
/// like `ctime()`. The user sets the locale through the Regional Options
/// in the Control Panel. The C library (in the `setlocale()` function)
/// does not use country and language codes, but country and language
/// names spelled out in English.
/// However, this function does check the above environment
/// variables, and does return a Unix-style locale string based on
/// either said environment variables or the thread's current locale.
/// 
/// Your application should call `<literal>setlocale(LC_ALL, "")`;</literal>
/// for the user settings to take effect.  Gtk+ does this in its initialization
/// functions automatically (by calling `gtk_set_locale()`).
/// See <literal>man setlocale</literal> for more details.
@inlinable public func languageGetDefault() -> LanguageRef! {
    guard let rv = LanguageRef(gconstpointer: gconstpointer(pango_language_get_default())) else { return nil }
    return rv
}




/// This will return the bidirectional embedding levels of the input paragraph
/// as defined by the Unicode Bidirectional Algorithm available at:
/// 
///   http://www.unicode.org/reports/tr9/
/// 
/// If the input base direction is a weak direction, the direction of the
/// characters in the text will determine the final resolved direction.
@inlinable public func log2visGetEmbeddingLevels(text: UnsafePointer<gchar>!, length: Int, pbaseDir: UnsafeMutablePointer<PangoDirection>!) -> UnsafeMutablePointer<guint8>! {
    guard let rv = pango_log2vis_get_embedding_levels(text, gint(length), pbaseDir) else { return nil }
    return rv
}




/// After feeding a pango markup parser some data with `g_markup_parse_context_parse()`,
/// use this function to get the list of pango attributes and text out of the
/// markup. This function will not free `context`, use `g_markup_parse_context_free()`
/// to do so.
@inlinable public func markupParserFinish<MarkupParseContextT: GLib.MarkupParseContextProtocol>(context: MarkupParseContextT, attrList: UnsafeMutablePointer<UnsafeMutablePointer<PangoAttrList>?>! = nil, text: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>! = nil, accelChar: UnsafeMutablePointer<gunichar>! = nil) throws -> Bool {
    var error: UnsafeMutablePointer<GError>?
    let rv = ((pango_markup_parser_finish(context.markup_parse_context_ptr, attrList, text, accelChar, &error)) != 0)
    if let error = error { throw GLibError(error) }
    return rv
}




/// Parses marked-up text (see
/// <link linkend="PangoMarkupFormat">markup format</link>) to create
/// a plain-text string and an attribute list.
/// 
/// If `accel_marker` is nonzero, the given character will mark the
/// character following it as an accelerator. For example, `accel_marker`
/// might be an ampersand or underscore. All characters marked
/// as an accelerator will receive a `PANGO_UNDERLINE_LOW` attribute,
/// and the first character so marked will be returned in `accel_char`,
/// when calling `finish()`. Two `accel_marker` characters following each
/// other produce a single literal `accel_marker` character.
/// 
/// To feed markup to the parser, use `g_markup_parse_context_parse()`
/// on the returned `GMarkupParseContext`. When done with feeding markup
/// to the parser, use `pango_markup_parser_finish()` to get the data out
/// of it, and then use `g_markup_parse_context_free()` to free it.
/// 
/// This function is designed for applications that read pango markup
/// from streams. To simply parse a string containing pango markup,
/// the simpler `pango_parse_markup()` API is recommended instead.
@inlinable public func markupParserNew(accelMarker: gunichar) -> GLib.MarkupParseContextRef! {
    guard let rv = GLib.MarkupParseContextRef(pango_markup_parser_new(accelMarker)) else { return nil }
    return rv
}




/// Do not use.  Does not do anything.
///
/// **module_register is deprecated:**
/// This method is deprecated.
@available(*, deprecated) @inlinable public func moduleRegister<IncludedModuleT: IncludedModuleProtocol>(module: IncludedModuleT) {
    pango_module_register(module._ptr)

}




/// Parses an enum type and stores the result in `value`.
/// 
/// If `str` does not match the nick name of any of the possible values for the
/// enum and is not an integer, `false` is returned, a warning is issued
/// if `warn` is `true`, and a
/// string representing the list of possible values is stored in
/// `possible_values`.  The list is slash-separated, eg.
/// "none/start/middle/end".  If failed and `possible_values` is not `nil`,
/// returned string should be freed using `g_free()`.
///
/// **parse_enum is deprecated:**
/// This method is deprecated.
@available(*, deprecated) @inlinable public func parseEnum(type: GType, str: UnsafePointer<CChar>? = nil, value: UnsafeMutablePointer<gint>! = nil, warn: Bool, possibleValues: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>! = nil) -> Bool {
    let rv = ((pango_parse_enum(type, str, value, gboolean((warn) ? 1 : 0), possibleValues)) != 0)
    return rv
}




/// Parses marked-up text (see
/// <link linkend="PangoMarkupFormat">markup format</link>) to create
/// a plain-text string and an attribute list.
/// 
/// If `accel_marker` is nonzero, the given character will mark the
/// character following it as an accelerator. For example, `accel_marker`
/// might be an ampersand or underscore. All characters marked
/// as an accelerator will receive a `PANGO_UNDERLINE_LOW` attribute,
/// and the first character so marked will be returned in `accel_char`.
/// Two `accel_marker` characters following each other produce a single
/// literal `accel_marker` character.
/// 
/// To parse a stream of pango markup incrementally, use `pango_markup_parser_new()`.
/// 
/// If any error happens, none of the output arguments are touched except
/// for `error`.
@inlinable public func parseMarkup(markupText: UnsafePointer<CChar>!, length: Int, accelMarker: gunichar, attrList: UnsafeMutablePointer<UnsafeMutablePointer<PangoAttrList>?>! = nil, text: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>! = nil, accelChar: UnsafeMutablePointer<gunichar>! = nil) throws -> Bool {
    var error: UnsafeMutablePointer<GError>?
    let rv = ((pango_parse_markup(markupText, gint(length), accelMarker, attrList, text, accelChar, &error)) != 0)
    if let error = error { throw GLibError(error) }
    return rv
}




/// Parses a font stretch. The allowed values are
/// "ultra_condensed", "extra_condensed", "condensed",
/// "semi_condensed", "normal", "semi_expanded", "expanded",
/// "extra_expanded" and "ultra_expanded". Case variations are
/// ignored and the '_' characters may be omitted.
@inlinable public func parseStretch(str: UnsafePointer<CChar>!, stretch: UnsafeMutablePointer<PangoStretch>!, warn: Bool) -> Bool {
    let rv = ((pango_parse_stretch(str, stretch, gboolean((warn) ? 1 : 0))) != 0)
    return rv
}




/// Parses a font style. The allowed values are "normal",
/// "italic" and "oblique", case variations being
/// ignored.
@inlinable public func parseStyle(str: UnsafePointer<CChar>!, style: UnsafeMutablePointer<PangoStyle>!, warn: Bool) -> Bool {
    let rv = ((pango_parse_style(str, style, gboolean((warn) ? 1 : 0))) != 0)
    return rv
}




/// Parses a font variant. The allowed values are "normal"
/// and "smallcaps" or "small_caps", case variations being
/// ignored.
@inlinable public func parseVariant(str: UnsafePointer<CChar>!, variant: UnsafeMutablePointer<PangoVariant>!, warn: Bool) -> Bool {
    let rv = ((pango_parse_variant(str, variant, gboolean((warn) ? 1 : 0))) != 0)
    return rv
}




/// Parses a font weight. The allowed values are "heavy",
/// "ultrabold", "bold", "normal", "light", "ultraleight"
/// and integers. Case variations are ignored.
@inlinable public func parseWeight(str: UnsafePointer<CChar>!, weight: UnsafeMutablePointer<PangoWeight>!, warn: Bool) -> Bool {
    let rv = ((pango_parse_weight(str, weight, gboolean((warn) ? 1 : 0))) != 0)
    return rv
}




/// Quantizes the thickness and position of a line, typically an
/// underline or strikethrough, to whole device pixels, that is integer
/// multiples of `PANGO_SCALE`. The purpose of this function is to avoid
/// such lines looking blurry.
/// 
/// Care is taken to make sure `thickness` is at least one pixel when this
/// function returns, but returned `position` may become zero as a result
/// of rounding.
@inlinable public func quantizeLineGeometry(thickness: UnsafeMutablePointer<gint>!, position: UnsafeMutablePointer<gint>!) {
    pango_quantize_line_geometry(thickness, position)

}




/// Reads an entire line from a file into a buffer. Lines may
/// be delimited with '\n', '\r', '\n\r', or '\r\n'. The delimiter
/// is not written into the buffer. Text after a '#' character is treated as
/// a comment and skipped. '\' can be used to escape a # character.
/// '\' proceeding a line delimiter combines adjacent lines. A '\' proceeding
/// any other character is ignored and written into the output buffer
/// unmodified.
///
/// **read_line is deprecated:**
/// This method is deprecated.
@available(*, deprecated) @inlinable public func readLine<StringTypeT: StringProtocol>(stream: UnsafeMutablePointer<FILE>? = nil, str: StringTypeT) -> Int {
    let rv = Int(pango_read_line(stream, str.gstring_ptr))
    return rv
}




/// From a list of items in logical order and the associated
/// directional levels, produce a list in visual order.
/// The original list is unmodified.
@inlinable public func reorderItems<ListT: GLib.ListProtocol>(logicalItems: ListT) -> GLib.ListRef! {
    guard let rv = GLib.ListRef(pango_reorder_items(logicalItems._ptr)) else { return nil }
    return rv
}




/// Scans an integer.
/// Leading white space is skipped.
///
/// **scan_int is deprecated:**
/// This method is deprecated.
@available(*, deprecated) @inlinable public func scanInt(pos: UnsafeMutablePointer<UnsafePointer<CChar>?>!, out: UnsafeMutablePointer<gint>!) -> Bool {
    let rv = ((pango_scan_int(pos, out)) != 0)
    return rv
}




/// Scans a string into a `GString` buffer. The string may either
/// be a sequence of non-white-space characters, or a quoted
/// string with '"'. Instead a quoted string, '\"' represents
/// a literal quote. Leading white space outside of quotes is skipped.
///
/// **scan_string is deprecated:**
/// This method is deprecated.
@available(*, deprecated) @inlinable public func scanString<StringTypeT: StringProtocol>(pos: UnsafeMutablePointer<UnsafePointer<CChar>?>!, out: StringTypeT) -> Bool {
    let rv = ((pango_scan_string(pos, out.gstring_ptr)) != 0)
    return rv
}




/// Scans a word into a `GString` buffer. A word consists
/// of [A-Za-z_] followed by zero or more [A-Za-z_0-9]
/// Leading white space is skipped.
///
/// **scan_word is deprecated:**
/// This method is deprecated.
@available(*, deprecated) @inlinable public func scanWord<StringTypeT: StringProtocol>(pos: UnsafeMutablePointer<UnsafePointer<CChar>?>!, out: StringTypeT) -> Bool {
    let rv = ((pango_scan_word(pos, out.gstring_ptr)) != 0)
    return rv
}




/// Looks up the script for a particular character (as defined by
/// Unicode Standard Annex \`24`). No check is made for `ch` being a
/// valid Unicode character; if you pass in invalid character, the
/// result is undefined.
/// 
/// Note that while the return type of this function is declared
/// as PangoScript, as of Pango 1.18, this function simply returns
/// the return value of `g_unichar_get_script()`. Callers must be
/// prepared to handle unknown values.
///
/// **script_for_unichar is deprecated:**
/// Use g_unichar_get_script()
@available(*, deprecated) @inlinable public func scriptForUnichar(ch: gunichar) -> PangoScript {
    let rv = pango_script_for_unichar(ch)
    return rv
}




/// Given a script, finds a language tag that is reasonably
/// representative of that script. This will usually be the
/// most widely spoken or used language written in that script:
/// for instance, the sample language for `PANGO_SCRIPT_CYRILLIC`
/// is <literal>ru</literal> (Russian), the sample language
/// for `PANGO_SCRIPT_ARABIC` is <literal>ar</literal>.
/// 
/// For some
/// scripts, no sample language will be returned because there
/// is no language that is sufficiently representative. The best
/// example of this is `PANGO_SCRIPT_HAN`, where various different
/// variants of written Chinese, Japanese, and Korean all use
/// significantly different sets of Han characters and forms
/// of shared characters. No sample language can be provided
/// for many historical scripts as well.
/// 
/// As of 1.18, this function checks the environment variables
/// PANGO_LANGUAGE and LANGUAGE (checked in that order) first.
/// If one of them is set, it is parsed as a list of language tags
/// separated by colons or other separators.  This function
/// will return the first language in the parsed list that Pango
/// believes may use `script` for writing.  This last predicate
/// is tested using `pango_language_includes_script()`.  This can
/// be used to control Pango's font selection for non-primary
/// languages.  For example, a PANGO_LANGUAGE enviroment variable
/// set to "en:fa" makes Pango choose fonts suitable for Persian (fa)
/// instead of Arabic (ar) when a segment of Arabic text is found
/// in an otherwise non-Arabic text.  The same trick can be used to
/// choose a default language for `PANGO_SCRIPT_HAN` when setting
/// context language is not feasible.
@inlinable public func scriptGetSampleLanguage(script: PangoScript) -> LanguageRef! {
    guard let rv = LanguageRef(gconstpointer: gconstpointer(pango_script_get_sample_language(script))) else { return nil }
    return rv
}




/// Given a segment of text and the corresponding
/// `PangoAnalysis` structure returned from `pango_itemize()`,
/// convert the characters into glyphs. You may also pass
/// in only a substring of the item from `pango_itemize()`.
/// 
/// It is recommended that you use `pango_shape_full()` instead, since
/// that API allows for shaping interaction happening across text item
/// boundaries.
@inlinable public func shape<AnalysisT: AnalysisProtocol, GlyphStringT: GlyphStringProtocol>(text: UnsafePointer<CChar>!, length: Int, analysis: AnalysisT, glyphs: GlyphStringT) {
    pango_shape(text, gint(length), analysis._ptr, glyphs.glyph_string_ptr)

}




/// Given a segment of text and the corresponding
/// `PangoAnalysis` structure returned from `pango_itemize()`,
/// convert the characters into glyphs. You may also pass
/// in only a substring of the item from `pango_itemize()`.
/// 
/// This is similar to `pango_shape()`, except it also can optionally take
/// the full paragraph text as input, which will then be used to perform
/// certain cross-item shaping interactions.  If you have access to the broader
/// text of which `item_text` is part of, provide the broader text as
/// `paragraph_text`.  If `paragraph_text` is `nil`, item text is used instead.
@inlinable public func shapeFull<AnalysisT: AnalysisProtocol, GlyphStringT: GlyphStringProtocol>(itemText: UnsafePointer<CChar>!, itemLength: Int, paragraphText: UnsafePointer<CChar>? = nil, paragraphLength: Int, analysis: AnalysisT, glyphs: GlyphStringT) {
    pango_shape_full(itemText, gint(itemLength), paragraphText, gint(paragraphLength), analysis._ptr, glyphs.glyph_string_ptr)

}




/// Given a segment of text and the corresponding
/// `PangoAnalysis` structure returned from `pango_itemize()`,
/// convert the characters into glyphs. You may also pass
/// in only a substring of the item from `pango_itemize()`.
/// 
/// This is similar to `pango_shape_full()`, except it also takes
/// flags that can influence the shaping process.
@inlinable public func shapeWithFlags<AnalysisT: AnalysisProtocol, GlyphStringT: GlyphStringProtocol>(itemText: UnsafePointer<CChar>!, itemLength: Int, paragraphText: UnsafePointer<CChar>? = nil, paragraphLength: Int, analysis: AnalysisT, glyphs: GlyphStringT, flags: ShapeFlags) {
    pango_shape_with_flags(itemText, gint(itemLength), paragraphText, gint(paragraphLength), analysis._ptr, glyphs.glyph_string_ptr, flags.value)

}




/// Skips 0 or more characters of white space.
///
/// **skip_space is deprecated:**
/// This method is deprecated.
@available(*, deprecated) @inlinable public func skipSpace(pos: UnsafeMutablePointer<UnsafePointer<CChar>?>!) -> Bool {
    let rv = ((pango_skip_space(pos)) != 0)
    return rv
}




/// Splits a `G_SEARCHPATH_SEPARATOR`-separated list of files, stripping
/// white space and substituting ~/ with $HOME/.
///
/// **split_file_list is deprecated:**
/// This method is deprecated.
@available(*, deprecated) @inlinable public func splitFileList(str: UnsafePointer<CChar>!) -> UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>! {
    guard let rv = pango_split_file_list(str) else { return nil }
    return rv
}




/// Apply language-specific tailoring to the breaks in
/// `log_attrs`, which are assumed to have been produced
/// by `pango_default_break()`.
/// 
/// If `offset` is not -1, it is used to apply attributes
/// from `analysis` that are relevant to line breaking.
@inlinable public func tailorBreak<AnalysisT: AnalysisProtocol>(text: UnsafePointer<CChar>!, length: Int, analysis: AnalysisT, offset: Int, logAttrs: UnsafeMutablePointer<PangoLogAttr>!, logAttrsLen: Int) {
    pango_tailor_break(text, gint(length), analysis._ptr, gint(offset), logAttrs, gint(logAttrsLen))

}




/// Trims leading and trailing whitespace from a string.
///
/// **trim_string is deprecated:**
/// This method is deprecated.
@available(*, deprecated) @inlinable public func trimString(str: UnsafePointer<CChar>!) -> String! {
    guard let rv = pango_trim_string(str).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Determines the inherent direction of a character; either
/// `PANGO_DIRECTION_LTR`, `PANGO_DIRECTION_RTL`, or
/// `PANGO_DIRECTION_NEUTRAL`.
/// 
/// This function is useful to categorize characters into left-to-right
/// letters, right-to-left letters, and everything else.  If full
/// Unicode bidirectional type of a character is needed,
/// `pango_bidi_type_for_unichar()` can be used instead.
@inlinable @available(*, deprecated) public func unicharDirection(ch: gunichar) -> PangoDirection {
    let rv = pango_unichar_direction(ch)
    return rv
}




/// Converts a floating-point number to Pango units: multiplies
/// it by `PANGO_SCALE` and rounds to nearest integer.
@inlinable public func unitsFromDouble(d: CDouble) -> Int {
    let rv = Int(pango_units_from_double(d))
    return rv
}




/// Converts a number in Pango units to floating-point: divides
/// it by `PANGO_SCALE`.
@inlinable public func unitsToDouble(i: Int) -> CDouble {
    let rv = pango_units_to_double(gint(i))
    return rv
}




/// This is similar to the macro `PANGO_VERSION` except that
/// it returns the encoded version of Pango available at run-time,
/// as opposed to the version available at compile-time.
/// 
/// A version number can be encoded into an integer using
/// `PANGO_VERSION_ENCODE()`.
@inlinable public func version() -> Int {
    let rv = Int(pango_version())
    return rv
}




/// Checks that the Pango library in use is compatible with the
/// given version. Generally you would pass in the constants
/// `PANGO_VERSION_MAJOR`, `PANGO_VERSION_MINOR`, `PANGO_VERSION_MICRO`
/// as the three arguments to this function; that produces
/// a check that the library in use at run-time is compatible with
/// the version of Pango the application or module was compiled against.
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
    guard let rv = pango_version_check(gint(requiredMajor), gint(requiredMinor), gint(requiredMicro)).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// This is similar to the macro `PANGO_VERSION_STRING` except that
/// it returns the version of Pango available at run-time, as opposed to
/// the version available at compile-time.
@inlinable public func versionString() -> String! {
    guard let rv = pango_version_string().map({ String(cString: $0) }) else { return nil }
    return rv
}


