import CGLib
import CPango
import GLib
import GLibObject

/// The bits in a `PangoFontMask` correspond to fields in a
/// `PangoFontDescription` that have been set.
public typealias FontMask = PangoFontMask

public extension FontMask {
    /// the font family is specified.
    static let family = PANGO_FONT_MASK_FAMILY /* 1 */
    /// the font style is specified.
    static let style = PANGO_FONT_MASK_STYLE /* 2 */
    /// the font variant is specified.
    static let variant = PANGO_FONT_MASK_VARIANT /* 4 */
    /// the font weight is specified.
    static let weight = PANGO_FONT_MASK_WEIGHT /* 8 */
    /// the font stretch is specified.
    static let stretch = PANGO_FONT_MASK_STRETCH /* 16 */
    /// the font size is specified.
    static let size = PANGO_FONT_MASK_SIZE /* 32 */
    /// the font gravity is specified (Since: 1.16.)
    static let gravity = PANGO_FONT_MASK_GRAVITY /* 64 */
    /// OpenType font variations are specified (Since: 1.42)
    static let variations = PANGO_FONT_MASK_VARIATIONS /* 128 */
}

/// Flags influencing the shaping process.
/// These can be passed to `pango_shape_with_flags()`.
public typealias ShapeFlags = PangoShapeFlags

public extension ShapeFlags {
    /// Default value.
    static let none_ = PANGO_SHAPE_NONE /* 0 */
    /// Round glyph positions
    ///     and widths to whole device units. This option should
    ///     be set if the target renderer can't do subpixel
    ///     positioning of glyphs.
    static let round_positions = PANGO_SHAPE_ROUND_POSITIONS /* 1 */
}

/// These flags affect how Pango treats characters that are normally
/// not visible in the output.
public typealias ShowFlags = PangoShowFlags

public extension ShowFlags {
    /// No special treatment for invisible characters
    static let none_ = PANGO_SHOW_NONE /* 0 */
    /// Render spaces, tabs and newlines visibly
    static let spaces = PANGO_SHOW_SPACES /* 1 */
    /// Render line breaks visibly
    static let line_breaks = PANGO_SHOW_LINE_BREAKS /* 2 */
    /// Render default-ignorable Unicode
    ///      characters visibly
    static let ignorables = PANGO_SHOW_IGNORABLES /* 4 */
}
