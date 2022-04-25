import CGLib
import CHarfBuzz
import CPango
import GLib
import GLibObject
import HarfBuzz
/// A `PangoGlyph` represents a single glyph in the output form of a string.
public typealias Glyph = PangoGlyph


/// The `PangoGlyphUnit` type is used to store dimensions within
/// Pango.
/// 
/// Dimensions are stored in 1/PANGO_SCALE of a device unit.
/// (A device unit might be a pixel for screen display, or
/// a point on a printer.) PANGO_SCALE is currently 1024, and
/// may change in the future (unlikely though), but you should not
/// depend on its exact value.
/// 
/// The `PANGO_PIXELS()` macro can be used to convert from glyph units
/// into device units with correct rounding.
public typealias GlyphUnit = PangoGlyphUnit


/// A `PangoLayoutRun` represents a single run within a `PangoLayoutLine`.
/// 
/// It is simply an alternate name for [struct`Pango.GlyphItem`].
/// See the [struct`Pango.GlyphItem`] docs for details on the fields.
public typealias LayoutRun = PangoLayoutRun
