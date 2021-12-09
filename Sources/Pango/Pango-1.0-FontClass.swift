import CGLib
import CPango
import GLib
import GLibObject

/// Metatype/GType declaration for Font
public extension FontClassRef {
    
    /// This getter returns the GLib type identifier registered for `Font`
    static var metatypeReference: GType { pango_font_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<PangoFontClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: PangoFontClass.self) }
    
    static var metatype: PangoFontClass? { metatypePointer?.pointee } 
    
    static var wrapper: FontClassRef? { FontClassRef(metatypePointer) }
    
    
}

// MARK: - FontClass Record


///
/// The `FontClassProtocol` protocol exposes the methods and properties of an underlying `PangoFontClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontClass`.
/// Alternatively, use `FontClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FontClassProtocol {
        /// Untyped pointer to the underlying `PangoFontClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFontClass` instance.
    var _ptr: UnsafeMutablePointer<PangoFontClass>! { get }

    /// Required Initialiser for types conforming to `FontClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `FontClassRef` type acts as a lightweight Swift reference to an underlying `PangoFontClass` instance.
/// It exposes methods that can operate on this data type through `FontClassProtocol` conformance.
/// Use `FontClassRef` only as an `unowned` reference to an existing `PangoFontClass` instance.
///
public struct FontClassRef: FontClassProtocol {
        /// Untyped pointer to the underlying `PangoFontClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoFontClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoFontClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoFontClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoFontClass>?) {
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

    /// Reference intialiser for a related type that implements `FontClassProtocol`
    @inlinable init<T: FontClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FontClass Record: FontClassProtocol extension (methods and fields)
public extension FontClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoFontClass>! { return ptr?.assumingMemoryBound(to: PangoFontClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var describe is unavailable because describe is void

    // var getCoverage is unavailable because get_coverage is void

    // var getGlyphExtents is unavailable because get_glyph_extents is void

    // var getMetrics is unavailable because get_metrics is void

    // var getFontMap is unavailable because get_font_map is void

    // var describeAbsolute is unavailable because describe_absolute is void

    // var getFeatures is unavailable because get_features is void

    // var createHbFont is unavailable because create_hb_font is void

}



