import CGLib
import CPango
import GLib
import GLibObject

/// Metatype/GType declaration for FontsetSimple
public extension FontsetSimpleClassRef {
    
    /// This getter returns the GLib type identifier registered for `FontsetSimple`
    static var metatypeReference: GType { pango_fontset_simple_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<PangoFontsetSimpleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: PangoFontsetSimpleClass.self) }
    
    static var metatype: PangoFontsetSimpleClass? { metatypePointer?.pointee } 
    
    static var wrapper: FontsetSimpleClassRef? { FontsetSimpleClassRef(metatypePointer) }
    
    
}

// MARK: - FontsetSimpleClass Record


///
/// The `FontsetSimpleClassProtocol` protocol exposes the methods and properties of an underlying `PangoFontsetSimpleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontsetSimpleClass`.
/// Alternatively, use `FontsetSimpleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FontsetSimpleClassProtocol {
        /// Untyped pointer to the underlying `PangoFontsetSimpleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFontsetSimpleClass` instance.
    var _ptr: UnsafeMutablePointer<PangoFontsetSimpleClass>! { get }

    /// Required Initialiser for types conforming to `FontsetSimpleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `FontsetSimpleClassRef` type acts as a lightweight Swift reference to an underlying `PangoFontsetSimpleClass` instance.
/// It exposes methods that can operate on this data type through `FontsetSimpleClassProtocol` conformance.
/// Use `FontsetSimpleClassRef` only as an `unowned` reference to an existing `PangoFontsetSimpleClass` instance.
///
public struct FontsetSimpleClassRef: FontsetSimpleClassProtocol {
        /// Untyped pointer to the underlying `PangoFontsetSimpleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontsetSimpleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoFontsetSimpleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoFontsetSimpleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoFontsetSimpleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoFontsetSimpleClass>?) {
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

    /// Reference intialiser for a related type that implements `FontsetSimpleClassProtocol`
    @inlinable init<T: FontsetSimpleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FontsetSimpleClass Record: FontsetSimpleClassProtocol extension (methods and fields)
public extension FontsetSimpleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontsetSimpleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoFontsetSimpleClass>! { return ptr?.assumingMemoryBound(to: PangoFontsetSimpleClass.self) }



}



