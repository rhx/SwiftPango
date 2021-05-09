import CGLib
import CPango
import GLib
import GLibObject

/// Metatype/GType declaration for Context
public extension ContextClassRef {
    
    /// This getter returns the GLib type identifier registered for `Context`
    static var metatypeReference: GType { pango_context_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<PangoContextClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: PangoContextClass.self) }
    
    static var metatype: PangoContextClass? { metatypePointer?.pointee } 
    
    static var wrapper: ContextClassRef? { ContextClassRef(metatypePointer) }
    
    
}

// MARK: - ContextClass Record

/// The `ContextClassProtocol` protocol exposes the methods and properties of an underlying `PangoContextClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ContextClass`.
/// Alternatively, use `ContextClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ContextClassProtocol {
        /// Untyped pointer to the underlying `PangoContextClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoContextClass` instance.
    var _ptr: UnsafeMutablePointer<PangoContextClass>! { get }

    /// Required Initialiser for types conforming to `ContextClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ContextClassRef` type acts as a lightweight Swift reference to an underlying `PangoContextClass` instance.
/// It exposes methods that can operate on this data type through `ContextClassProtocol` conformance.
/// Use `ContextClassRef` only as an `unowned` reference to an existing `PangoContextClass` instance.
///

public struct ContextClassRef: ContextClassProtocol {
        /// Untyped pointer to the underlying `PangoContextClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ContextClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoContextClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoContextClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoContextClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoContextClass>?) {
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

    /// Reference intialiser for a related type that implements `ContextClassProtocol`
    @inlinable init<T: ContextClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ContextClass Record: ContextClassProtocol extension (methods and fields)
public extension ContextClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoContextClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoContextClass>! { return ptr?.assumingMemoryBound(to: PangoContextClass.self) }



}



