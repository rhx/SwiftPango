import CGLib
import CPango
import GLib
import GLibObject

/// Metatype/GType declaration for Engine
public extension EngineClassRef {
    
    /// This getter returns the GLib type identifier registered for `Engine`
    static var metatypeReference: GType { pango_engine_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<PangoEngineClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: PangoEngineClass.self) }
    
    static var metatype: PangoEngineClass? { metatypePointer?.pointee } 
    
    static var wrapper: EngineClassRef? { EngineClassRef(metatypePointer) }
    
    
}

// MARK: - EngineClass Record

/// The `EngineClassProtocol` protocol exposes the methods and properties of an underlying `PangoEngineClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EngineClass`.
/// Alternatively, use `EngineClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Class structure for `PangoEngine`
public protocol EngineClassProtocol {
        /// Untyped pointer to the underlying `PangoEngineClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoEngineClass` instance.
    var _ptr: UnsafeMutablePointer<PangoEngineClass>! { get }

}

/// The `EngineClassRef` type acts as a lightweight Swift reference to an underlying `PangoEngineClass` instance.
/// It exposes methods that can operate on this data type through `EngineClassProtocol` conformance.
/// Use `EngineClassRef` only as an `unowned` reference to an existing `PangoEngineClass` instance.
///
/// Class structure for `PangoEngine`
public struct EngineClassRef: EngineClassProtocol {
        /// Untyped pointer to the underlying `PangoEngineClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EngineClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoEngineClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoEngineClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoEngineClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoEngineClass>?) {
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

    /// Reference intialiser for a related type that implements `EngineClassProtocol`
    @inlinable init<T: EngineClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: EngineClass Record: EngineClassProtocol extension (methods and fields)
public extension EngineClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoEngineClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoEngineClass>! { return ptr?.assumingMemoryBound(to: PangoEngineClass.self) }


    // var parentClass is unavailable because parent_class is private

}



