import CGLib
import CPango
import GLib
import GLibObject

/// Metatype/GType declaration for Layout
public extension LayoutClassRef {
    
    /// This getter returns the GLib type identifier registered for `Layout`
    static var metatypeReference: GType { pango_layout_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<PangoLayoutClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: PangoLayoutClass.self) }
    
    static var metatype: PangoLayoutClass? { metatypePointer?.pointee } 
    
    static var wrapper: LayoutClassRef? { LayoutClassRef(metatypePointer) }
    
    
}

// MARK: - LayoutClass Record

/// The `LayoutClassProtocol` protocol exposes the methods and properties of an underlying `PangoLayoutClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LayoutClass`.
/// Alternatively, use `LayoutClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol LayoutClassProtocol {
        /// Untyped pointer to the underlying `PangoLayoutClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoLayoutClass` instance.
    var _ptr: UnsafeMutablePointer<PangoLayoutClass>! { get }

}

/// The `LayoutClassRef` type acts as a lightweight Swift reference to an underlying `PangoLayoutClass` instance.
/// It exposes methods that can operate on this data type through `LayoutClassProtocol` conformance.
/// Use `LayoutClassRef` only as an `unowned` reference to an existing `PangoLayoutClass` instance.
///

public struct LayoutClassRef: LayoutClassProtocol {
        /// Untyped pointer to the underlying `PangoLayoutClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LayoutClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoLayoutClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoLayoutClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoLayoutClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoLayoutClass>?) {
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

    /// Reference intialiser for a related type that implements `LayoutClassProtocol`
    @inlinable init<T: LayoutClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: LayoutClass Record: LayoutClassProtocol extension (methods and fields)
public extension LayoutClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoLayoutClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoLayoutClass>! { return ptr?.assumingMemoryBound(to: PangoLayoutClass.self) }



}



