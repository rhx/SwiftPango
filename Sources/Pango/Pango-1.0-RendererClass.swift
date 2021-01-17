import CGLib
import CPango
import GLib
import GLibObject

/// Metatype/GType declaration for Renderer
public extension RendererClassRef {
    
    /// This getter returns the GLib type identifier registered for `Renderer`
    static var metatypeReference: GType { pango_renderer_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<PangoRendererClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: PangoRendererClass.self) }
    
    static var metatype: PangoRendererClass? { metatypePointer?.pointee } 
    
    static var wrapper: RendererClassRef? { RendererClassRef(metatypePointer) }
    
    
}

// MARK: - RendererClass Record

/// The `RendererClassProtocol` protocol exposes the methods and properties of an underlying `PangoRendererClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RendererClass`.
/// Alternatively, use `RendererClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Class structure for `PangoRenderer`.
/// 
/// The following vfuncs take user space coordinates in Pango units
/// and have default implementations:
/// - draw_glyphs
/// - draw_rectangle
/// - draw_error_underline
/// - draw_shape
/// - draw_glyph_item
/// 
/// The default draw_shape implementation draws nothing.
/// 
/// The following vfuncs take device space coordinates as doubles
/// and must be implemented:
/// - draw_trapezoid
/// - draw_glyph
public protocol RendererClassProtocol {
        /// Untyped pointer to the underlying `PangoRendererClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoRendererClass` instance.
    var _ptr: UnsafeMutablePointer<PangoRendererClass>! { get }

}

/// The `RendererClassRef` type acts as a lightweight Swift reference to an underlying `PangoRendererClass` instance.
/// It exposes methods that can operate on this data type through `RendererClassProtocol` conformance.
/// Use `RendererClassRef` only as an `unowned` reference to an existing `PangoRendererClass` instance.
///
/// Class structure for `PangoRenderer`.
/// 
/// The following vfuncs take user space coordinates in Pango units
/// and have default implementations:
/// - draw_glyphs
/// - draw_rectangle
/// - draw_error_underline
/// - draw_shape
/// - draw_glyph_item
/// 
/// The default draw_shape implementation draws nothing.
/// 
/// The following vfuncs take device space coordinates as doubles
/// and must be implemented:
/// - draw_trapezoid
/// - draw_glyph
public struct RendererClassRef: RendererClassProtocol {
        /// Untyped pointer to the underlying `PangoRendererClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RendererClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoRendererClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoRendererClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoRendererClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoRendererClass>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `RendererClassProtocol`
    @inlinable init<T: RendererClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: RendererClass Record: RendererClassProtocol extension (methods and fields)
public extension RendererClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoRendererClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoRendererClass>! { return ptr?.assumingMemoryBound(to: PangoRendererClass.self) }


    // var parentClass is unavailable because parent_class is private

    // var drawGlyphs is unavailable because draw_glyphs is void

    // var drawRectangle is unavailable because draw_rectangle is void

    // var drawErrorUnderline is unavailable because draw_error_underline is void

    // var drawShape is unavailable because draw_shape is void

    // var drawTrapezoid is unavailable because draw_trapezoid is void

    // var drawGlyph is unavailable because draw_glyph is void

    // var partChanged is unavailable because part_changed is void

    // var begin is unavailable because begin is void

    // var end is unavailable because end is void

    // var prepareRun is unavailable because prepare_run is void

    // var drawGlyphItem is unavailable because draw_glyph_item is void

    // var PangoReserved2 is unavailable because _pango_reserved2 is void

    // var PangoReserved3 is unavailable because _pango_reserved3 is void

    // var PangoReserved4 is unavailable because _pango_reserved4 is void

}



