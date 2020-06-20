import CGLib
import CPango
import GLib
import GLibObject

/// The bits in a `PangoFontMask` correspond to fields in a
/// `PangoFontDescription` that have been set.
public struct FontMask: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `PangoFontMask` enum value
    public var value: PangoFontMask { get { PangoFontMask(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `PangoFontMask` enum value
    public init(_ enumValue: PangoFontMask) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// the font family is specified.
    public static let family = FontMask(1) /* PANGO_FONT_MASK_FAMILY */
    /// the font style is specified.
    public static let style = FontMask(2) /* PANGO_FONT_MASK_STYLE */
    /// the font variant is specified.
    public static let variant = FontMask(4) /* PANGO_FONT_MASK_VARIANT */
    /// the font weight is specified.
    public static let weight = FontMask(8) /* PANGO_FONT_MASK_WEIGHT */
    /// the font stretch is specified.
    public static let stretch = FontMask(16) /* PANGO_FONT_MASK_STRETCH */
    /// the font size is specified.
    public static let size = FontMask(32) /* PANGO_FONT_MASK_SIZE */
    /// the font gravity is specified (Since: 1.16.)
    public static let gravity = FontMask(64) /* PANGO_FONT_MASK_GRAVITY */
    /// OpenType font variations are specified (Since: 1.42)
    public static let variations = FontMask(128) /* PANGO_FONT_MASK_VARIATIONS */


}
func cast<I: BinaryInteger>(_ param: I) -> FontMask { FontMask(rawValue: cast(param)) }
func cast(_ param: FontMask) -> UInt32 { cast(param.rawValue) }


/// Flags influencing the shaping process.
/// These can be passed to `pango_shape_with_flags()`.
public struct ShapeFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `PangoShapeFlags` enum value
    public var value: PangoShapeFlags { get { PangoShapeFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `PangoShapeFlags` enum value
    public init(_ enumValue: PangoShapeFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// Default value.
    public static let `none` = ShapeFlags(0) /* PANGO_SHAPE_NONE */
    /// Round glyph positions
    ///     and widths to whole device units. This option should
    ///     be set if the target renderer can't do subpixel
    ///     positioning of glyphs.
    public static let roundPositions = ShapeFlags(1) /* PANGO_SHAPE_ROUND_POSITIONS */

    /// Default value.
    @available(*, deprecated) public static let none_ = ShapeFlags(0) /* PANGO_SHAPE_NONE */
    /// Round glyph positions
    ///     and widths to whole device units. This option should
    ///     be set if the target renderer can't do subpixel
    ///     positioning of glyphs.
    @available(*, deprecated) public static let round_positions = ShapeFlags(1) /* PANGO_SHAPE_ROUND_POSITIONS */
}
func cast<I: BinaryInteger>(_ param: I) -> ShapeFlags { ShapeFlags(rawValue: cast(param)) }
func cast(_ param: ShapeFlags) -> UInt32 { cast(param.rawValue) }


/// These flags affect how Pango treats characters that are normally
/// not visible in the output.
public struct ShowFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `PangoShowFlags` enum value
    public var value: PangoShowFlags { get { PangoShowFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `PangoShowFlags` enum value
    public init(_ enumValue: PangoShowFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// No special treatment for invisible characters
    public static let `none` = ShowFlags(0) /* PANGO_SHOW_NONE */
    /// Render spaces, tabs and newlines visibly
    public static let spaces = ShowFlags(1) /* PANGO_SHOW_SPACES */
    /// Render line breaks visibly
    public static let lineBreaks = ShowFlags(2) /* PANGO_SHOW_LINE_BREAKS */
    /// Render default-ignorable Unicode
    ///      characters visibly
    public static let ignorables = ShowFlags(4) /* PANGO_SHOW_IGNORABLES */

    /// No special treatment for invisible characters
    @available(*, deprecated) public static let none_ = ShowFlags(0) /* PANGO_SHOW_NONE */
    /// Render line breaks visibly
    @available(*, deprecated) public static let line_breaks = ShowFlags(2) /* PANGO_SHOW_LINE_BREAKS */
}
func cast<I: BinaryInteger>(_ param: I) -> ShowFlags { ShowFlags(rawValue: cast(param)) }
func cast(_ param: ShowFlags) -> UInt32 { cast(param.rawValue) }
