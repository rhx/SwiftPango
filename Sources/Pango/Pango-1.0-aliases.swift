import CGLib
import CPango
import GLib
import GLibObject

/// A `PangoGlyph` represents a single glyph in the output form of a string.
public typealias Glyph = PangoGlyph

/// The `PangoGlyphUnit` type is used to store dimensions within
/// Pango. Dimensions are stored in 1/`PANGO_SCALE` of a device unit.
/// (A device unit might be a pixel for screen display, or
/// a point on a printer.) `PANGO_SCALE` is currently 1024, and
/// may change in the future (unlikely though), but you should not
/// depend on its exact value. The PANGO_PIXELS() macro can be used
/// to convert from glyph units into device units with correct rounding.
public typealias GlyphUnit = PangoGlyphUnit

/// The `PangoLayoutRun` structure represents a single run within
/// a `PangoLayoutLine`; it is simply an alternate name for
/// `PangoGlyphItem`.
/// See the `PangoGlyphItem` docs for details on the fields.
public typealias LayoutRun = PangoLayoutRun
