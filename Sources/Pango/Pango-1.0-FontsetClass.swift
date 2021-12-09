import CGLib
import CPango
import GLib
import GLibObject

/// Metatype/GType declaration for Fontset
public extension FontsetClassRef {
    
    /// This getter returns the GLib type identifier registered for `Fontset`
    static var metatypeReference: GType { pango_fontset_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<PangoFontsetClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: PangoFontsetClass.self) }
    
    static var metatype: PangoFontsetClass? { metatypePointer?.pointee } 
    
    static var wrapper: FontsetClassRef? { FontsetClassRef(metatypePointer) }
    
    
}

// MARK: - FontsetClass Record

/// The `PangoFontsetClass` structure holds the virtual functions for
/// a particular `PangoFontset` implementation.
///
/// The `FontsetClassProtocol` protocol exposes the methods and properties of an underlying `PangoFontsetClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontsetClass`.
/// Alternatively, use `FontsetClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FontsetClassProtocol {
        /// Untyped pointer to the underlying `PangoFontsetClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFontsetClass` instance.
    var _ptr: UnsafeMutablePointer<PangoFontsetClass>! { get }

    /// Required Initialiser for types conforming to `FontsetClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `PangoFontsetClass` structure holds the virtual functions for
/// a particular `PangoFontset` implementation.
///
/// The `FontsetClassRef` type acts as a lightweight Swift reference to an underlying `PangoFontsetClass` instance.
/// It exposes methods that can operate on this data type through `FontsetClassProtocol` conformance.
/// Use `FontsetClassRef` only as an `unowned` reference to an existing `PangoFontsetClass` instance.
///
public struct FontsetClassRef: FontsetClassProtocol {
        /// Untyped pointer to the underlying `PangoFontsetClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontsetClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoFontsetClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoFontsetClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoFontsetClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoFontsetClass>?) {
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

    /// Reference intialiser for a related type that implements `FontsetClassProtocol`
    @inlinable init<T: FontsetClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FontsetClass Record: FontsetClassProtocol extension (methods and fields)
public extension FontsetClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontsetClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoFontsetClass>! { return ptr?.assumingMemoryBound(to: PangoFontsetClass.self) }


    /// parent `GObjectClass`
    @inlinable var parentClass: GObjectClass {
        /// parent `GObjectClass`
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var getFont is unavailable because get_font is void

    // var getMetrics is unavailable because get_metrics is void

    // var getLanguage is unavailable because get_language is void

    // var foreach is unavailable because foreach is void

    // var PangoReserved1 is unavailable because _pango_reserved1 is void

    // var PangoReserved2 is unavailable because _pango_reserved2 is void

    // var PangoReserved3 is unavailable because _pango_reserved3 is void

    // var PangoReserved4 is unavailable because _pango_reserved4 is void

}



