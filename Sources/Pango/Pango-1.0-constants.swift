import CGLib
import CPango
import GLib
import GLibObject

/// Whether the segment should be shifted to center around the baseline.
/// 
/// This is mainly used in vertical writing directions.
public let ANALYSIS_FLAG_CENTERED_BASELINE = PANGO_ANALYSIS_FLAG_CENTERED_BASELINE // 1


/// Whether this run holds ellipsized text.
public let ANALYSIS_FLAG_IS_ELLIPSIS = PANGO_ANALYSIS_FLAG_IS_ELLIPSIS // 2


/// Whether to add a hyphen at the end of the run during shaping.
public let ANALYSIS_FLAG_NEED_HYPHEN = PANGO_ANALYSIS_FLAG_NEED_HYPHEN // 4


/// Value for `start_index` in `PangoAttribute` that indicates
/// the beginning of the text.
public let ATTR_INDEX_FROM_TEXT_BEGINNING = PANGO_ATTR_INDEX_FROM_TEXT_BEGINNING // 0


/// Value for `end_index` in `PangoAttribute` that indicates
/// the end of the text.
public let ATTR_INDEX_TO_TEXT_END = 4294967295 // PANGO_ATTR_INDEX_TO_TEXT_END

/// A `PangoGlyph` value that indicates a zero-width empty glpyh.
/// 
/// This is useful for example in shaper modules, to use as the glyph for
/// various zero-width Unicode characters (those passing [func`is_zero_width`]).
public let GLYPH_EMPTY = 268435455 // PANGO_GLYPH_EMPTY

/// A `PangoGlyph` value for invalid input.
/// 
/// `PangoLayout` produces one such glyph per invalid input UTF-8 byte and such
/// a glyph is rendered as a crossed box.
/// 
/// Note that this value is defined such that it has the `PANGO_GLYPH_UNKNOWN_FLAG`
/// set.
public let GLYPH_INVALID_INPUT = 4294967295 // PANGO_GLYPH_INVALID_INPUT

/// Flag used in `PangoGlyph` to turn a `gunichar` value of a valid Unicode
/// character into an unknown-character glyph for that `gunichar`.
/// 
/// Such unknown-character glyphs may be rendered as a 'hex box'.
public let GLYPH_UNKNOWN_FLAG = 268435456 // PANGO_GLYPH_UNKNOWN_FLAG

/// The scale between dimensions used for Pango distances and device units.
/// 
/// The definition of device units is dependent on the output device; it will
/// typically be pixels for a screen, and points for a printer. `PANGO_SCALE` is
/// currently 1024, but this may be changed in the future.
/// 
/// When setting font sizes, device units are always considered to be
/// points (as in "12 point font"), rather than pixels.
public let SCALE = PANGO_SCALE // 1024


/// The major component of the version of Pango available at compile-time.
public let VERSION_MAJOR = PANGO_VERSION_MAJOR // 1


/// The micro component of the version of Pango available at compile-time.
public let VERSION_MICRO = PANGO_VERSION_MICRO // 0


/// The minor component of the version of Pango available at compile-time.
public let VERSION_MINOR = PANGO_VERSION_MINOR // 50


/// A string literal containing the version of Pango available at compile-time.
public let VERSION_STRING = PANGO_VERSION_STRING // 12
