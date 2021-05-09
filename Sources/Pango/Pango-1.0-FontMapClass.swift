import CGLib
import CPango
import GLib
import GLibObject

/// Metatype/GType declaration for FontMap
public extension FontMapClassRef {
    
    /// This getter returns the GLib type identifier registered for `FontMap`
    static var metatypeReference: GType { pango_font_map_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<PangoFontMapClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: PangoFontMapClass.self) }
    
    static var metatype: PangoFontMapClass? { metatypePointer?.pointee } 
    
    static var wrapper: FontMapClassRef? { FontMapClassRef(metatypePointer) }
    
    
}

// MARK: - FontMapClass Record

/// The `FontMapClassProtocol` protocol exposes the methods and properties of an underlying `PangoFontMapClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontMapClass`.
/// Alternatively, use `FontMapClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoFontMapClass` structure holds the virtual functions for
/// a particular `PangoFontMap` implementation.
public protocol FontMapClassProtocol {
        /// Untyped pointer to the underlying `PangoFontMapClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFontMapClass` instance.
    var _ptr: UnsafeMutablePointer<PangoFontMapClass>! { get }

    /// Required Initialiser for types conforming to `FontMapClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `FontMapClassRef` type acts as a lightweight Swift reference to an underlying `PangoFontMapClass` instance.
/// It exposes methods that can operate on this data type through `FontMapClassProtocol` conformance.
/// Use `FontMapClassRef` only as an `unowned` reference to an existing `PangoFontMapClass` instance.
///
/// The `PangoFontMapClass` structure holds the virtual functions for
/// a particular `PangoFontMap` implementation.
public struct FontMapClassRef: FontMapClassProtocol {
        /// Untyped pointer to the underlying `PangoFontMapClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontMapClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoFontMapClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoFontMapClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoFontMapClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoFontMapClass>?) {
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

    /// Reference intialiser for a related type that implements `FontMapClassProtocol`
    @inlinable init<T: FontMapClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FontMapClass Record: FontMapClassProtocol extension (methods and fields)
public extension FontMapClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontMapClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoFontMapClass>! { return ptr?.assumingMemoryBound(to: PangoFontMapClass.self) }


    /// parent `GObjectClass`.
    @inlinable var parentClass: GObjectClass {
        /// parent `GObjectClass`.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var loadFont is unavailable because load_font is void

    // var listFamilies is unavailable because list_families is void

    // var loadFontset is unavailable because load_fontset is void

    /// the type of rendering-system-dependent engines that
    /// can handle fonts of this fonts loaded with this fontmap.
    @inlinable var shapeEngineType: UnsafePointer<CChar>! {
        /// the type of rendering-system-dependent engines that
        /// can handle fonts of this fonts loaded with this fontmap.
        get {
            let rv = _ptr.pointee.shape_engine_type
            return rv
        }
    }

    // var getSerial is unavailable because get_serial is void

    // var changed is unavailable because changed is void

    // var getFamily is unavailable because get_family is void

    // var getFace is unavailable because get_face is void

}



