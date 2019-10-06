import CGLib
import CPango
import GLib
import GLibObject

/// Whether the segment should be shifted to center around the baseline.
/// Used in vertical writing directions mostly.
public let ANALYSIS_FLAG_CENTERED_BASELINE = PANGO_ANALYSIS_FLAG_CENTERED_BASELINE /* gint 1 */

/// This flag is used to mark runs that hold ellipsized text,
/// in an ellipsized layout.
public let ANALYSIS_FLAG_IS_ELLIPSIS = PANGO_ANALYSIS_FLAG_IS_ELLIPSIS /* gint 2 */

/// This flag tells Pango to add a hyphen at the end of the
/// run during shaping.
public let ANALYSIS_FLAG_NEED_HYPHEN = PANGO_ANALYSIS_FLAG_NEED_HYPHEN /* gint 4 */

/// This value can be used to set the start_index member of a `PangoAttribute`
/// such that the attribute covers from the beginning of the text.
public let ATTR_INDEX_FROM_TEXT_BEGINNING = PANGO_ATTR_INDEX_FROM_TEXT_BEGINNING /* gint 0 */

/// A string constant defining the engine type for language engines.
/// These engines derive from `PangoEngineLang`.
///
/// **ENGINE_TYPE_LANG is deprecated:**
/// This method is deprecated.
public let ENGINE_TYPE_LANG = PANGO_ENGINE_TYPE_LANG /* utf8 4 */

/// A string constant defining the engine type for shaping engines.
/// These engines derive from `PangoEngineShape`.
///
/// **ENGINE_TYPE_SHAPE is deprecated:**
/// This method is deprecated.
public let ENGINE_TYPE_SHAPE = PANGO_ENGINE_TYPE_SHAPE /* utf8 5 */

/// The `PANGO_GLYPH_EMPTY` macro represents a `PangoGlyph` value that has a
///  special meaning, which is a zero-width empty glyph.  This is useful for
/// example in shaper modules, to use as the glyph for various zero-width
/// Unicode characters (those passing `pango_is_zero_width()`).
public let GLYPH_EMPTY: Glyph = 268435455 /* PANGO_GLYPH_EMPTY */

/// The `PANGO_GLYPH_INVALID_INPUT` macro represents a `PangoGlyph` value that has a
/// special meaning of invalid input.  `PangoLayout` produces one such glyph
/// per invalid input UTF-8 byte and such a glyph is rendered as a crossed
/// box.
/// 
/// Note that this value is defined such that it has the `PANGO_GLYPH_UNKNOWN_FLAG`
/// on.
public let GLYPH_INVALID_INPUT: Glyph = 4294967295 /* PANGO_GLYPH_INVALID_INPUT */

/// The `PANGO_GLYPH_UNKNOWN_FLAG` macro is a flag value that can be added to
/// a `gunichar` value of a valid Unicode character, to produce a `PangoGlyph`
/// value, representing an unknown-character glyph for the respective `gunichar`.
public let GLYPH_UNKNOWN_FLAG: Glyph = 268435456 /* PANGO_GLYPH_UNKNOWN_FLAG */

/// A string constant defining the render type
/// for engines that are not rendering-system specific.
///
/// **RENDER_TYPE_NONE is deprecated:**
/// This method is deprecated.
public let RENDER_TYPE_NONE = PANGO_RENDER_TYPE_NONE /* utf8 9 */

/// The `PANGO_SCALE` macro represents the scale between dimensions used
/// for Pango distances and device units. (The definition of device
/// units is dependent on the output device; it will typically be pixels
/// for a screen, and points for a printer.) `PANGO_SCALE` is currently
/// 1024, but this may be changed in the future.
/// 
/// When setting font sizes, device units are always considered to be
/// points (as in "12 point font"), rather than pixels.
public let SCALE = PANGO_SCALE /* gint 1024 */

public let UNKNOWN_GLYPH_HEIGHT = PANGO_UNKNOWN_GLYPH_HEIGHT /* gint 14 */

public let UNKNOWN_GLYPH_WIDTH = PANGO_UNKNOWN_GLYPH_WIDTH /* gint 10 */

/// A macro that should be defined by the user prior to including
/// the pango.h header.
/// The definition should be one of the predefined Pango version
/// macros: `PANGO_VERSION_1_2`, `PANGO_VERSION_1_4`,...
/// 
/// This macro defines the earliest version of Pango that the package is
/// required to be able to compile against.
/// 
/// If the compiler is configured to warn about the use of deprecated
/// functions, then using functions that were deprecated in version
/// `PANGO_VERSION_MIN_REQUIRED` or earlier will cause warnings (but
/// using functions deprecated in later releases will not).
public let VERSION_MIN_REQUIRED: CInt = 2 /* PANGO_VERSION_MIN_REQUIRED */
