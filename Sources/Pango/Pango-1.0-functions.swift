import CGLib
import CPango
import GLib
import GLibObject

/// Create a new allow-breaks attribute.
/// 
/// If breaks are disabled, the range will be kept in a
/// single run, as far as possible.
public func attrAllowBreaksNew(allowBreaks allow_breaks: Bool) -> UnsafeMutablePointer<PangoAttribute>! {
    let rv = pango_attr_allow_breaks_new(gboolean(allow_breaks ? 1 : 0))
    return cast(rv)
}




/// Create a new background alpha attribute.
public func attrBackgroundAlphaNew(alpha: UInt16) -> UnsafeMutablePointer<PangoAttribute>! {
    let rv = pango_attr_background_alpha_new(guint16(alpha))
    return cast(rv)
}




/// Create a new background color attribute.
public func attrBackgroundNew(red: UInt16, green: UInt16, blue: UInt16) -> UnsafeMutablePointer<PangoAttribute>! {
    let rv = pango_attr_background_new(guint16(red), guint16(green), guint16(blue))
    return cast(rv)
}




/// Create a new font fallback attribute.
/// 
/// If fallback is disabled, characters will only be used from the
/// closest matching font on the system. No fallback will be done to
/// other fonts on the system that might contain the characters in the
/// text.
public func attrFallbackNew(enableFallback enable_fallback: Bool) -> UnsafeMutablePointer<PangoAttribute>! {
    let rv = pango_attr_fallback_new(gboolean(enable_fallback ? 1 : 0))
    return cast(rv)
}




/// Create a new font family attribute.
public func attrFamilyNew(family: UnsafePointer<CChar>) -> UnsafeMutablePointer<PangoAttribute>! {
    let rv = pango_attr_family_new(family)
    return cast(rv)
}




/// Create a new font description attribute. This attribute
/// allows setting family, style, weight, variant, stretch,
/// and size simultaneously.
public func attrFontDescNew(desc: FontDescriptionProtocol) -> UnsafeMutablePointer<PangoAttribute>! {
    let rv = pango_attr_font_desc_new(cast(desc.ptr))
    return cast(rv)
}




/// Create a new font features tag attribute.
public func attrFontFeaturesNew(features: UnsafePointer<gchar>) -> UnsafeMutablePointer<PangoAttribute>! {
    let rv = pango_attr_font_features_new(features)
    return cast(rv)
}




/// Create a new foreground alpha attribute.
public func attrForegroundAlphaNew(alpha: UInt16) -> UnsafeMutablePointer<PangoAttribute>! {
    let rv = pango_attr_foreground_alpha_new(guint16(alpha))
    return cast(rv)
}




/// Create a new foreground color attribute.
public func attrForegroundNew(red: UInt16, green: UInt16, blue: UInt16) -> UnsafeMutablePointer<PangoAttribute>! {
    let rv = pango_attr_foreground_new(guint16(red), guint16(green), guint16(blue))
    return cast(rv)
}




/// Create a new gravity hint attribute.
public func attrGravityHintNew(hint: GravityHint) -> UnsafeMutablePointer<PangoAttribute>! {
    let rv = pango_attr_gravity_hint_new(hint)
    return cast(rv)
}




/// Create a new gravity attribute.
public func attrGravityNew(gravity: Gravity) -> UnsafeMutablePointer<PangoAttribute>! {
    let rv = pango_attr_gravity_new(gravity)
    return cast(rv)
}




/// Create a new insert-hyphens attribute.
/// 
/// Pango will insert hyphens when breaking lines in the middle
/// of a word. This attribute can be used to suppress the hyphen.
public func attrInsertHyphensNew(insertHyphens insert_hyphens: Bool) -> UnsafeMutablePointer<PangoAttribute>! {
    let rv = pango_attr_insert_hyphens_new(gboolean(insert_hyphens ? 1 : 0))
    return cast(rv)
}




/// Create a new language tag attribute.
public func attrLanguageNew(language: LanguageProtocol) -> UnsafeMutablePointer<PangoAttribute>! {
    let rv = pango_attr_language_new(cast(language.ptr))
    return cast(rv)
}




/// Create a new letter-spacing attribute.
public func attrLetterSpacingNew(letterSpacing letter_spacing: CInt) -> UnsafeMutablePointer<PangoAttribute>! {
    let rv = pango_attr_letter_spacing_new(letter_spacing)
    return cast(rv)
}




/// Create a new baseline displacement attribute.
public func attrRiseNew(rise: CInt) -> UnsafeMutablePointer<PangoAttribute>! {
    let rv = pango_attr_rise_new(rise)
    return cast(rv)
}




/// Create a new font size scale attribute. The base font for the
/// affected text will have its size multiplied by `scale_factor`.
public func attrScaleNew(scaleFactor scale_factor: gdouble) -> UnsafeMutablePointer<PangoAttribute>! {
    let rv = pango_attr_scale_new(scale_factor)
    return cast(rv)
}




/// Create a new shape attribute. A shape is used to impose a
/// particular ink and logical rectangle on the result of shaping a
/// particular glyph. This might be used, for instance, for
/// embedding a picture or a widget inside a `PangoLayout`.
public func attrShapeNew(inkRect ink_rect: RectangleProtocol, logicalRect logical_rect: RectangleProtocol) -> UnsafeMutablePointer<PangoAttribute>! {
    let rv = pango_attr_shape_new(cast(ink_rect.ptr), cast(logical_rect.ptr))
    return cast(rv)
}




/// Like `pango_attr_shape_new()`, but a user data pointer is also
/// provided; this pointer can be accessed when later
/// rendering the glyph.
public func attrShapeNewWithData(inkRect ink_rect: RectangleProtocol, logicalRect logical_rect: RectangleProtocol, data: UnsafeMutableRawPointer, copyFunc copy_func: @escaping AttrDataCopyFunc, destroyFunc destroy_func: @escaping GLib.DestroyNotify) -> UnsafeMutablePointer<PangoAttribute>! {
    let rv = pango_attr_shape_new_with_data(cast(ink_rect.ptr), cast(logical_rect.ptr), cast(data), copy_func, destroy_func)
    return cast(rv)
}




/// Create a new attribute that influences how invisible
/// characters are rendered.
public func attrShowNew(flags: ShowFlags) -> UnsafeMutablePointer<PangoAttribute>! {
    let rv = pango_attr_show_new(flags)
    return cast(rv)
}




/// Create a new font-size attribute in fractional points.
public func attrSizeNew(size: CInt) -> UnsafeMutablePointer<PangoAttribute>! {
    let rv = pango_attr_size_new(size)
    return cast(rv)
}




/// Create a new font-size attribute in device units.
public func attrSizeNewAbsolute(size: CInt) -> UnsafeMutablePointer<PangoAttribute>! {
    let rv = pango_attr_size_new_absolute(size)
    return cast(rv)
}




/// Create a new font stretch attribute
public func attrStretchNew(stretch: Stretch) -> UnsafeMutablePointer<PangoAttribute>! {
    let rv = pango_attr_stretch_new(stretch)
    return cast(rv)
}




/// Create a new strikethrough color attribute. This attribute
/// modifies the color of strikethrough lines. If not set, strikethrough
/// lines will use the foreground color.
public func attrStrikethroughColorNew(red: UInt16, green: UInt16, blue: UInt16) -> UnsafeMutablePointer<PangoAttribute>! {
    let rv = pango_attr_strikethrough_color_new(guint16(red), guint16(green), guint16(blue))
    return cast(rv)
}




/// Create a new strike-through attribute.
public func attrStrikethroughNew(strikethrough: Bool) -> UnsafeMutablePointer<PangoAttribute>! {
    let rv = pango_attr_strikethrough_new(gboolean(strikethrough ? 1 : 0))
    return cast(rv)
}




/// Create a new font slant style attribute.
public func attrStyleNew(style: Style) -> UnsafeMutablePointer<PangoAttribute>! {
    let rv = pango_attr_style_new(style)
    return cast(rv)
}




/// Fetches the attribute type name passed in when registering the type using
/// `pango_attr_type_register()`.
/// 
/// The returned value is an interned string (see `g_intern_string()` for what
/// that means) that should not be modified or freed.
public func attrTypeGetName(type: AttrType) -> String! {
    let rv = pango_attr_type_get_name(type)
    return rv.map { String(cString: UnsafePointer<CChar>($0)) }
}




/// Allocate a new attribute type ID.  The attribute type name can be accessed
/// later by using `pango_attr_type_get_name()`.
public func attrTypeRegister(name: UnsafePointer<gchar>) -> PangoAttrType {
    let rv = pango_attr_type_register(name)
    return rv
}




/// Create a new underline color attribute. This attribute
/// modifies the color of underlines. If not set, underlines
/// will use the foreground color.
public func attrUnderlineColorNew(red: UInt16, green: UInt16, blue: UInt16) -> UnsafeMutablePointer<PangoAttribute>! {
    let rv = pango_attr_underline_color_new(guint16(red), guint16(green), guint16(blue))
    return cast(rv)
}




/// Create a new underline-style attribute.
public func attrUnderlineNew(underline: Underline) -> UnsafeMutablePointer<PangoAttribute>! {
    let rv = pango_attr_underline_new(underline)
    return cast(rv)
}




/// Create a new font variant attribute (normal or small caps)
public func attrVariantNew(variant: Variant) -> UnsafeMutablePointer<PangoAttribute>! {
    let rv = pango_attr_variant_new(variant)
    return cast(rv)
}




/// Create a new font weight attribute.
public func attrWeightNew(weight: Weight) -> UnsafeMutablePointer<PangoAttribute>! {
    let rv = pango_attr_weight_new(weight)
    return cast(rv)
}




/// Determines the normative bidirectional character type of a
/// character, as specified in the Unicode Character Database.
/// 
/// A simplified version of this function is available as
/// `pango_unichar_direction()`.
public func bidiTypeForUnichar(ch: gunichar) -> PangoBidiType {
    let rv = pango_bidi_type_for_unichar(ch)
    return rv
}




/// Determines possible line, word, and character breaks
/// for a string of Unicode text with a single analysis.
/// For most purposes you may want to use `pango_get_log_attrs()`.
///
/// **break is deprecated:**
/// Use pango_default_break() and pango_tailor_break()
@available(*, deprecated) public func break_(text: UnsafePointer<gchar>, length: CInt, analysis: AnalysisProtocol, attrs: UnsafeMutablePointer<PangoLogAttr>, attrsLen attrs_len: CInt) {
    pango_break(text, length, cast(analysis.ptr), cast(attrs), attrs_len)

}




/// This is the default break algorithm. It applies Unicode
/// rules without language-specific tailoring, therefore
/// the `analyis` argument is unused and can be `nil`.
/// 
/// See `pango_tailor_break()` for language-specific breaks.
public func defaultBreak(text: UnsafePointer<gchar>, length: CInt, analysis: AnalysisProtocol, attrs: LogAttrProtocol, attrsLen attrs_len: CInt) {
    pango_default_break(text, length, cast(analysis.ptr), cast(attrs.ptr), attrs_len)

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
public func extentsToPixels(inclusive: RectangleProtocol, nearest: RectangleProtocol) {
    pango_extents_to_pixels(cast(inclusive.ptr), cast(nearest.ptr))

}




/// Searches a string the first character that has a strong
/// direction, according to the Unicode bidirectional algorithm.
public func findBaseDir(text: UnsafePointer<gchar>, length: CInt) -> PangoDirection {
    let rv = pango_find_base_dir(text, gint(length))
    return rv
}




/// Do not use.  Does not do anything.
///
/// **find_map is deprecated:**
/// This method is deprecated.
@available(*, deprecated) public func findMap(language: LanguageProtocol, engineTypeId engine_type_id: CUnsignedInt, renderTypeId render_type_id: CUnsignedInt) -> UnsafeMutablePointer<PangoMap>! {
    let rv = pango_find_map(cast(language.ptr), guint(engine_type_id), guint(render_type_id))
    return cast(rv)
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
public func findParagraphBoundary(text: UnsafePointer<gchar>, length: CInt, paragraphDelimiterIndex paragraph_delimiter_index: UnsafeMutablePointer<CInt>, nextParagraphStart next_paragraph_start: UnsafeMutablePointer<CInt>) {
    pango_find_paragraph_boundary(text, gint(length), cast(paragraph_delimiter_index), cast(next_paragraph_start))

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
public func fontDescriptionFromString(str: UnsafePointer<CChar>) -> UnsafeMutablePointer<PangoFontDescription>! {
    let rv = pango_font_description_from_string(str)
    return cast(rv)
}




/// Computes a `PangoLogAttr` for each character in `text`. The `log_attrs`
/// array must have one `PangoLogAttr` for each position in `text`; if
/// `text` contains N characters, it has N+1 positions, including the
/// last position at the end of the text. `text` should be an entire
/// paragraph; logical attributes can't be computed without context
/// (for example you need to see spaces on either side of a word to know
/// the word is a word).
public func getLogAttrs(text: UnsafePointer<CChar>, length: CInt, level: CInt, language: LanguageProtocol, logAttrs log_attrs: UnsafeMutablePointer<PangoLogAttr>, attrsLen attrs_len: CInt) {
    pango_get_log_attrs(text, length, level, cast(language.ptr), cast(log_attrs), attrs_len)

}




/// If `ch` has the Unicode mirrored property and there is another Unicode
/// character that typically has a glyph that is the mirror image of `ch`'s
/// glyph, puts that character in the address pointed to by `mirrored_ch`.
/// 
/// Use `g_unichar_get_mirror_char()` instead; the docs for that function
/// provide full details.
@available(*, deprecated) public func getMirrorChar(ch: gunichar, mirroredCh mirrored_ch: UnsafeMutablePointer<gunichar>) -> Bool {
    let rv = pango_get_mirror_char(ch, cast(mirrored_ch))
    return Bool(rv != 0)
}




/// Finds the gravity that best matches the rotation component
/// in a `PangoMatrix`.
public func gravityGetFor(matrix: MatrixProtocol) -> PangoGravity {
    let rv = pango_gravity_get_for_matrix(cast(matrix.ptr))
    return rv
}




/// Based on the script, base gravity, and hint, returns actual gravity
/// to use in laying out a single `PangoItem`.
/// 
/// If `base_gravity` is `PANGO_GRAVITY_AUTO`, it is first replaced with the
/// preferred gravity of `script`.  To get the preferred gravity of a script,
/// pass `PANGO_GRAVITY_AUTO` and `PANGO_GRAVITY_HINT_STRONG` in.
public func gravityGetFor(script: Script, baseGravity base_gravity: Gravity, hint: GravityHint) -> PangoGravity {
    let rv = pango_gravity_get_for_script(script, base_gravity, hint)
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
public func gravityGetForScriptAndWidth(script: Script, wide: Bool, baseGravity base_gravity: Gravity, hint: GravityHint) -> PangoGravity {
    let rv = pango_gravity_get_for_script_and_width(script, gboolean(wide ? 1 : 0), base_gravity, hint)
    return rv
}




/// Converts a `PangoGravity` value to its natural rotation in radians.
/// `gravity` should not be `PANGO_GRAVITY_AUTO`.
/// 
/// Note that `pango_matrix_rotate()` takes angle in degrees, not radians.
/// So, to call `pango_matrix_rotate()` with the output of this function
/// you should multiply it by (180. / G_PI).
public func gravityToRotation(gravity: Gravity) -> CDouble {
    let rv = pango_gravity_to_rotation(gravity)
    return rv
}




/// Checks `ch` to see if it is a character that should not be
/// normally rendered on the screen.  This includes all Unicode characters
/// with "ZERO WIDTH" in their name, as well as <firstterm>bidi</firstterm> formatting characters, and
/// a few other ones.  This is totally different from `g_unichar_iszerowidth()`
/// and is at best misnamed.
public func isZeroWidth(ch: gunichar) -> Bool {
    let rv = pango_is_zero_width(ch)
    return Bool(rv != 0)
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
public func itemize(context: ContextProtocol, text: UnsafePointer<CChar>, startIndex start_index: CInt, length: CInt, attrs: AttrListProtocol, cachedIter cached_iter: AttrIteratorProtocol) -> UnsafeMutablePointer<GList>! {
    let rv = pango_itemize(cast(context.ptr), text, start_index, length, cast(attrs.ptr), cast(cached_iter.ptr))
    return cast(rv)
}




/// Like `pango_itemize()`, but the base direction to use when
/// computing bidirectional levels (see pango_context_set_base_dir ()),
/// is specified explicitly rather than gotten from the `PangoContext`.
public func itemizeWithBaseDir(context: ContextProtocol, baseDir base_dir: Direction, text: UnsafePointer<CChar>, startIndex start_index: CInt, length: CInt, attrs: AttrListProtocol, cachedIter cached_iter: AttrIteratorProtocol) -> UnsafeMutablePointer<GList>! {
    let rv = pango_itemize_with_base_dir(cast(context.ptr), base_dir, text, start_index, length, cast(attrs.ptr), cast(cached_iter.ptr))
    return cast(rv)
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
public func languageFromString(language: UnsafePointer<CChar>) -> UnsafeMutablePointer<PangoLanguage>! {
    let rv = pango_language_from_string(language)
    return cast(rv)
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
public func languageGetDefault() -> UnsafeMutablePointer<PangoLanguage>! {
    let rv = pango_language_get_default()
    return cast(rv)
}




/// This will return the bidirectional embedding levels of the input paragraph
/// as defined by the Unicode Bidirectional Algorithm available at:
/// 
///   http://www.unicode.org/reports/tr9/
/// 
/// If the input base direction is a weak direction, the direction of the
/// characters in the text will determine the final resolved direction.
public func log2visGetEmbeddingLevels(text: UnsafePointer<gchar>, length: CInt, pbaseDir pbase_dir: UnsafeMutablePointer<PangoDirection>) -> UnsafeMutablePointer<UInt8>! {
    let rv = pango_log2vis_get_embedding_levels(text, length, cast(pbase_dir))
    return cast(rv)
}




/// After feeding a pango markup parser some data with `g_markup_parse_context_parse()`,
/// use this function to get the list of pango attributes and text out of the
/// markup. This function will not free `context`, use `g_markup_parse_context_free()`
/// to do so.
public func markupParserFinish(context: MarkupParseContextProtocol, attrList attr_list: AttrListProtocol, text: UnsafeMutablePointer<UnsafeMutablePointer<CChar>>, accelChar accel_char: UnsafeMutablePointer<gunichar>) throws -> Bool {
    var error: Optional<UnsafeMutablePointer<GError>> = nil
    let rv = pango_markup_parser_finish(cast(context.ptr), cast(attr_list.ptr), cast(text), cast(accel_char), &error)
    if let error = error {
        throw ErrorType(error)
    }
    return Bool(rv != 0)
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
public func markupParserNew(accelMarker accel_marker: gunichar) -> UnsafeMutablePointer<GMarkupParseContext>! {
    let rv = pango_markup_parser_new(accel_marker)
    return cast(rv)
}




/// Do not use.  Does not do anything.
///
/// **module_register is deprecated:**
/// This method is deprecated.
@available(*, deprecated) public func moduleRegister(module: IncludedModuleProtocol) {
    pango_module_register(cast(module.ptr))

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
@available(*, deprecated) public func parseEnum(type: GType, str: UnsafePointer<CChar>, value: UnsafeMutablePointer<CInt>, warn: Bool, possibleValues possible_values: UnsafeMutablePointer<UnsafeMutablePointer<CChar>>) -> Bool {
    let rv = pango_parse_enum(type, str, cast(value), gboolean(warn ? 1 : 0), cast(possible_values))
    return Bool(rv != 0)
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
public func parseMarkup(markupText markup_text: UnsafePointer<CChar>, length: CInt, accelMarker accel_marker: gunichar, attrList attr_list: AttrListProtocol, text: UnsafeMutablePointer<UnsafeMutablePointer<CChar>>, accelChar accel_char: UnsafeMutablePointer<gunichar>) throws -> Bool {
    var error: Optional<UnsafeMutablePointer<GError>> = nil
    let rv = pango_parse_markup(markup_text, length, accel_marker, cast(attr_list.ptr), cast(text), cast(accel_char), &error)
    if let error = error {
        throw ErrorType(error)
    }
    return Bool(rv != 0)
}




/// Parses a font stretch. The allowed values are
/// "ultra_condensed", "extra_condensed", "condensed",
/// "semi_condensed", "normal", "semi_expanded", "expanded",
/// "extra_expanded" and "ultra_expanded". Case variations are
/// ignored and the '_' characters may be omitted.
public func parseStretch(str: UnsafePointer<CChar>, stretch: UnsafeMutablePointer<PangoStretch>, warn: Bool) -> Bool {
    let rv = pango_parse_stretch(str, cast(stretch), gboolean(warn ? 1 : 0))
    return Bool(rv != 0)
}




/// Parses a font style. The allowed values are "normal",
/// "italic" and "oblique", case variations being
/// ignored.
public func parseStyle(str: UnsafePointer<CChar>, style: UnsafeMutablePointer<PangoStyle>, warn: Bool) -> Bool {
    let rv = pango_parse_style(str, cast(style), gboolean(warn ? 1 : 0))
    return Bool(rv != 0)
}




/// Parses a font variant. The allowed values are "normal"
/// and "smallcaps" or "small_caps", case variations being
/// ignored.
public func parseVariant(str: UnsafePointer<CChar>, variant: UnsafeMutablePointer<PangoVariant>, warn: Bool) -> Bool {
    let rv = pango_parse_variant(str, cast(variant), gboolean(warn ? 1 : 0))
    return Bool(rv != 0)
}




/// Parses a font weight. The allowed values are "heavy",
/// "ultrabold", "bold", "normal", "light", "ultraleight"
/// and integers. Case variations are ignored.
public func parseWeight(str: UnsafePointer<CChar>, weight: UnsafeMutablePointer<PangoWeight>, warn: Bool) -> Bool {
    let rv = pango_parse_weight(str, cast(weight), gboolean(warn ? 1 : 0))
    return Bool(rv != 0)
}




/// Quantizes the thickness and position of a line, typically an
/// underline or strikethrough, to whole device pixels, that is integer
/// multiples of `PANGO_SCALE`. The purpose of this function is to avoid
/// such lines looking blurry.
/// 
/// Care is taken to make sure `thickness` is at least one pixel when this
/// function returns, but returned `position` may become zero as a result
/// of rounding.
public func quantizeLineGeometry(thickness: UnsafeMutablePointer<CInt>, position: UnsafeMutablePointer<CInt>) {
    pango_quantize_line_geometry(cast(thickness), cast(position))

}




/// Reads an entire line from a file into a buffer. Lines may
/// be delimited with '\n', '\r', '\n\r', or '\r\n'. The delimiter
/// is not written into the buffer. Text after a '``' character is treated as
/// a comment and skipped. '\' can be used to escape a `` character.
/// '\' proceeding a line delimiter combines adjacent lines. A '\' proceeding
/// any other character is ignored and written into the output buffer
/// unmodified.
///
/// **read_line is deprecated:**
/// This method is deprecated.
@available(*, deprecated) public func readLine(stream: UnsafeMutablePointer<FILE>, str: StringTypeProtocol) -> CInt {
    let rv = pango_read_line(cast(stream), cast(str.ptr))
    return CInt(rv)
}




/// From a list of items in logical order and the associated
/// directional levels, produce a list in visual order.
/// The original list is unmodified.
public func reorderItems(logicalItems logical_items: ListProtocol) -> UnsafeMutablePointer<GList>! {
    let rv = pango_reorder_items(cast(logical_items.ptr))
    return cast(rv)
}




/// Scans an integer.
/// Leading white space is skipped.
///
/// **scan_int is deprecated:**
/// This method is deprecated.
@available(*, deprecated) public func scanInt(pos: UnsafePointer<UnsafePointer<CChar>>, out: UnsafeMutablePointer<CInt>) -> Bool {
    let rv = pango_scan_int(cast(pos), cast(out))
    return Bool(rv != 0)
}




/// Scans a string into a `GString` buffer. The string may either
/// be a sequence of non-white-space characters, or a quoted
/// string with '"'. Instead a quoted string, '\"' represents
/// a literal quote. Leading white space outside of quotes is skipped.
///
/// **scan_string is deprecated:**
/// This method is deprecated.
@available(*, deprecated) public func scanString(pos: UnsafePointer<UnsafePointer<CChar>>, out: StringTypeProtocol) -> Bool {
    let rv = pango_scan_string(cast(pos), cast(out.ptr))
    return Bool(rv != 0)
}




/// Scans a word into a `GString` buffer. A word consists
/// of [A-Za-z_] followed by zero or more [A-Za-z_0-9]
/// Leading white space is skipped.
///
/// **scan_word is deprecated:**
/// This method is deprecated.
@available(*, deprecated) public func scanWord(pos: UnsafePointer<UnsafePointer<CChar>>, out: StringTypeProtocol) -> Bool {
    let rv = pango_scan_word(cast(pos), cast(out.ptr))
    return Bool(rv != 0)
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
@available(*, deprecated) public func scriptForUnichar(ch: gunichar) -> PangoScript {
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
public func scriptGetSampleLanguage(script: Script) -> UnsafeMutablePointer<PangoLanguage>! {
    let rv = pango_script_get_sample_language(script)
    return cast(rv)
}




/// Given a segment of text and the corresponding
/// `PangoAnalysis` structure returned from `pango_itemize()`,
/// convert the characters into glyphs. You may also pass
/// in only a substring of the item from `pango_itemize()`.
/// 
/// It is recommended that you use `pango_shape_full()` instead, since
/// that API allows for shaping interaction happening across text item
/// boundaries.
public func shape(text: UnsafePointer<CChar>, length: CInt, analysis: AnalysisProtocol, glyphs: GlyphStringProtocol) {
    pango_shape(text, length, cast(analysis.ptr), cast(glyphs.ptr))

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
public func shapeFull(itemText item_text: UnsafePointer<CChar>, itemLength item_length: CInt, paragraphText paragraph_text: UnsafePointer<CChar>, paragraphLength paragraph_length: CInt, analysis: AnalysisProtocol, glyphs: GlyphStringProtocol) {
    pango_shape_full(item_text, item_length, paragraph_text, paragraph_length, cast(analysis.ptr), cast(glyphs.ptr))

}




/// Given a segment of text and the corresponding
/// `PangoAnalysis` structure returned from `pango_itemize()`,
/// convert the characters into glyphs. You may also pass
/// in only a substring of the item from `pango_itemize()`.
/// 
/// This is similar to `pango_shape_full()`, except it also takes
/// flags that can influence the shaping process.
public func shapeWithFlags(itemText item_text: UnsafePointer<CChar>, itemLength item_length: CInt, paragraphText paragraph_text: UnsafePointer<CChar>, paragraphLength paragraph_length: CInt, analysis: AnalysisProtocol, glyphs: GlyphStringProtocol, flags: ShapeFlags) {
    pango_shape_with_flags(item_text, item_length, paragraph_text, paragraph_length, cast(analysis.ptr), cast(glyphs.ptr), flags)

}




/// Skips 0 or more characters of white space.
///
/// **skip_space is deprecated:**
/// This method is deprecated.
@available(*, deprecated) public func skipSpace(pos: UnsafePointer<UnsafePointer<CChar>>) -> Bool {
    let rv = pango_skip_space(cast(pos))
    return Bool(rv != 0)
}




/// Splits a `G_SEARCHPATH_SEPARATOR`-separated list of files, stripping
/// white space and substituting ~/ with $HOME/.
///
/// **split_file_list is deprecated:**
/// This method is deprecated.
@available(*, deprecated) public func splitFileList(str: UnsafePointer<CChar>) -> UnsafeMutablePointer<UnsafeMutablePointer<CChar>>! {
    let rv = pango_split_file_list(str)
    return cast(rv)
}




/// Apply language-specific tailoring to the breaks in
/// `log_attrs`, which are assumed to have been produced
/// by `pango_default_break()`.
/// 
/// If `offset` is not -1, it is used to apply attributes
/// from `analysis` that are relevant to line breaking.
public func tailorBreak(text: UnsafePointer<CChar>, length: CInt, analysis: AnalysisProtocol, offset: CInt, logAttrs log_attrs: UnsafeMutablePointer<PangoLogAttr>, logAttrsLen log_attrs_len: CInt) {
    pango_tailor_break(text, length, cast(analysis.ptr), offset, cast(log_attrs), log_attrs_len)

}




/// Trims leading and trailing whitespace from a string.
///
/// **trim_string is deprecated:**
/// This method is deprecated.
@available(*, deprecated) public func trimString(str: UnsafePointer<CChar>) -> String! {
    let rv = pango_trim_string(str)
    return rv.map { String(cString: UnsafePointer<CChar>($0)) }
}




/// Determines the inherent direction of a character; either
/// `PANGO_DIRECTION_LTR`, `PANGO_DIRECTION_RTL`, or
/// `PANGO_DIRECTION_NEUTRAL`.
/// 
/// This function is useful to categorize characters into left-to-right
/// letters, right-to-left letters, and everything else.  If full
/// Unicode bidirectional type of a character is needed,
/// `pango_bidi_type_for_unichar()` can be used instead.
public func unicharDirection(ch: gunichar) -> PangoDirection {
    let rv = pango_unichar_direction(ch)
    return rv
}




/// Converts a floating-point number to Pango units: multiplies
/// it by `PANGO_SCALE` and rounds to nearest integer.
public func unitsFromDouble(d: gdouble) -> CInt {
    let rv = pango_units_from_double(d)
    return rv
}




/// Converts a number in Pango units to floating-point: divides
/// it by `PANGO_SCALE`.
public func unitsToDouble(i: CInt) -> CDouble {
    let rv = pango_units_to_double(i)
    return rv
}




/// This is similar to the macro `PANGO_VERSION` except that
/// it returns the encoded version of Pango available at run-time,
/// as opposed to the version available at compile-time.
/// 
/// A version number can be encoded into an integer using
/// `PANGO_VERSION_ENCODE()`.
public func version() -> CInt {
    let rv = pango_version()
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
public func versionCheck(requiredMajor required_major: CInt, requiredMinor required_minor: CInt, requiredMicro required_micro: CInt) -> String! {
    let rv = pango_version_check(required_major, required_minor, required_micro)
    return rv.map { String(cString: UnsafePointer<CChar>($0)) }
}




/// This is similar to the macro `PANGO_VERSION_STRING` except that
/// it returns the version of Pango available at run-time, as opposed to
/// the version available at compile-time.
public func versionString() -> String! {
    let rv = pango_version_string()
    return rv.map { String(cString: UnsafePointer<CChar>($0)) }
}


