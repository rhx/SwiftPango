import CGLib
import CPango
import GLib
import GLibObject

/// Metatype/GType declaration for FontFace
public extension FontFaceClassRef {
    
    /// This getter returns the GLib type identifier registered for `FontFace`
    static var metatypeReference: GType { pango_font_face_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<PangoFontFaceClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: PangoFontFaceClass.self) }
    
    static var metatype: PangoFontFaceClass? { metatypePointer?.pointee } 
    
    static var wrapper: FontFaceClassRef? { FontFaceClassRef(metatypePointer) }
    
    
}

// MARK: - FontFaceClass Record


///
/// The `FontFaceClassProtocol` protocol exposes the methods and properties of an underlying `PangoFontFaceClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontFaceClass`.
/// Alternatively, use `FontFaceClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FontFaceClassProtocol {
        /// Untyped pointer to the underlying `PangoFontFaceClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFontFaceClass` instance.
    var _ptr: UnsafeMutablePointer<PangoFontFaceClass>! { get }

    /// Required Initialiser for types conforming to `FontFaceClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `FontFaceClassRef` type acts as a lightweight Swift reference to an underlying `PangoFontFaceClass` instance.
/// It exposes methods that can operate on this data type through `FontFaceClassProtocol` conformance.
/// Use `FontFaceClassRef` only as an `unowned` reference to an existing `PangoFontFaceClass` instance.
///
public struct FontFaceClassRef: FontFaceClassProtocol {
        /// Untyped pointer to the underlying `PangoFontFaceClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontFaceClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoFontFaceClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoFontFaceClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoFontFaceClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoFontFaceClass>?) {
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

    /// Reference intialiser for a related type that implements `FontFaceClassProtocol`
    @inlinable init<T: FontFaceClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FontFaceClass Record: FontFaceClassProtocol extension (methods and fields)
public extension FontFaceClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontFaceClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoFontFaceClass>! { return ptr?.assumingMemoryBound(to: PangoFontFaceClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var getFaceName is unavailable because get_face_name is void

    // var describe is unavailable because describe is void

    // var listSizes is unavailable because list_sizes is void

    // var isSynthesized is unavailable because is_synthesized is void

    // var getFamily is unavailable because get_family is void

    // var PangoReserved3 is unavailable because _pango_reserved3 is void

    // var PangoReserved4 is unavailable because _pango_reserved4 is void

}



