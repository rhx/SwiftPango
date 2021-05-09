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
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `PangoFontMask` enum value
    @inlinable public var value: PangoFontMask {
        get {
            func castToPangoFontMaskInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return PangoFontMask(rawValue: castToPangoFontMaskInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `PangoFontMask` enum value
    @inlinable public init(_ enumValue: PangoFontMask) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// the font family is specified.
    public static let family = FontMask(1) // PANGO_FONT_MASK_FAMILY
    /// the font style is specified.
    public static let style = FontMask(2) // PANGO_FONT_MASK_STYLE
    /// the font variant is specified.
    public static let variant = FontMask(4) // PANGO_FONT_MASK_VARIANT
    /// the font weight is specified.
    public static let weight = FontMask(8) // PANGO_FONT_MASK_WEIGHT
    /// the font stretch is specified.
    public static let stretch = FontMask(16) // PANGO_FONT_MASK_STRETCH
    /// the font size is specified.
    public static let size = FontMask(32) // PANGO_FONT_MASK_SIZE
    /// the font gravity is specified (Since: 1.16.)
    public static let gravity = FontMask(64) // PANGO_FONT_MASK_GRAVITY
    /// OpenType font variations are specified (Since: 1.42)
    public static let variations = FontMask(128) // PANGO_FONT_MASK_VARIATIONS
}



/// Flags influencing the shaping process.
/// These can be passed to `pango_shape_with_flags()`.
public struct ShapeFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `PangoShapeFlags` enum value
    @inlinable public var value: PangoShapeFlags {
        get {
            func castToPangoShapeFlagsInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return PangoShapeFlags(rawValue: castToPangoShapeFlagsInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `PangoShapeFlags` enum value
    @inlinable public init(_ enumValue: PangoShapeFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// Default value.
    public static let `none` = ShapeFlags(0) // PANGO_SHAPE_NONE
    /// Round glyph positions
    ///     and widths to whole device units. This option should
    ///     be set if the target renderer can't do subpixel
    ///     positioning of glyphs.
    public static let roundPositions = ShapeFlags(1) // PANGO_SHAPE_ROUND_POSITIONS
}



/// These flags affect how Pango treats characters that are normally
/// not visible in the output.
public struct ShowFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `PangoShowFlags` enum value
    @inlinable public var value: PangoShowFlags {
        get {
            func castToPangoShowFlagsInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return PangoShowFlags(rawValue: castToPangoShowFlagsInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `PangoShowFlags` enum value
    @inlinable public init(_ enumValue: PangoShowFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// No special treatment for invisible characters
    public static let `none` = ShowFlags(0) // PANGO_SHOW_NONE
    /// Render spaces, tabs and newlines visibly
    public static let spaces = ShowFlags(1) // PANGO_SHOW_SPACES
    /// Render line breaks visibly
    public static let lineBreaks = ShowFlags(2) // PANGO_SHOW_LINE_BREAKS
    /// Render default-ignorable Unicode
    ///      characters visibly
    public static let ignorables = ShowFlags(4) // PANGO_SHOW_IGNORABLES
}
