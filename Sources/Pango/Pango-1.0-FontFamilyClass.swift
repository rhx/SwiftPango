import CGLib
import CPango
import GLib
import GLibObject

/// Metatype/GType declaration for FontFamily
public extension FontFamilyClassRef {
    
    /// This getter returns the GLib type identifier registered for `FontFamily`
    static var metatypeReference: GType { pango_font_family_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<PangoFontFamilyClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: PangoFontFamilyClass.self) }
    
    static var metatype: PangoFontFamilyClass? { metatypePointer?.pointee } 
    
    static var wrapper: FontFamilyClassRef? { FontFamilyClassRef(metatypePointer) }
    
    
}

// MARK: - FontFamilyClass Record

/// The `FontFamilyClassProtocol` protocol exposes the methods and properties of an underlying `PangoFontFamilyClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontFamilyClass`.
/// Alternatively, use `FontFamilyClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FontFamilyClassProtocol {
        /// Untyped pointer to the underlying `PangoFontFamilyClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFontFamilyClass` instance.
    var _ptr: UnsafeMutablePointer<PangoFontFamilyClass>! { get }

    /// Required Initialiser for types conforming to `FontFamilyClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `FontFamilyClassRef` type acts as a lightweight Swift reference to an underlying `PangoFontFamilyClass` instance.
/// It exposes methods that can operate on this data type through `FontFamilyClassProtocol` conformance.
/// Use `FontFamilyClassRef` only as an `unowned` reference to an existing `PangoFontFamilyClass` instance.
///

public struct FontFamilyClassRef: FontFamilyClassProtocol {
        /// Untyped pointer to the underlying `PangoFontFamilyClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontFamilyClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoFontFamilyClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoFontFamilyClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoFontFamilyClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoFontFamilyClass>?) {
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

    /// Reference intialiser for a related type that implements `FontFamilyClassProtocol`
    @inlinable init<T: FontFamilyClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FontFamilyClass Record: FontFamilyClassProtocol extension (methods and fields)
public extension FontFamilyClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontFamilyClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoFontFamilyClass>! { return ptr?.assumingMemoryBound(to: PangoFontFamilyClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var listFaces is unavailable because list_faces is void

    // var getName is unavailable because get_name is void

    // var isMonospace is unavailable because is_monospace is void

    // var isVariable is unavailable because is_variable is void

    // var getFace is unavailable because get_face is void

    // var PangoReserved2 is unavailable because _pango_reserved2 is void

}



