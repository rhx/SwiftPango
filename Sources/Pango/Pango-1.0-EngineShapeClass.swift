import CGLib
import CPango
import GLib
import GLibObject

/// Metatype/GType declaration for EngineShape
public extension EngineShapeClassRef {
    
    /// This getter returns the GLib type identifier registered for `EngineShape`
    static var metatypeReference: GType { pango_engine_shape_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<PangoEngineShapeClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: PangoEngineShapeClass.self) }
    
    static var metatype: PangoEngineShapeClass? { metatypePointer?.pointee } 
    
    static var wrapper: EngineShapeClassRef? { EngineShapeClassRef(metatypePointer) }
    
    
}

// MARK: - EngineShapeClass Record

/// The `EngineShapeClassProtocol` protocol exposes the methods and properties of an underlying `PangoEngineShapeClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EngineShapeClass`.
/// Alternatively, use `EngineShapeClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Class structure for `PangoEngineShape`
public protocol EngineShapeClassProtocol {
        /// Untyped pointer to the underlying `PangoEngineShapeClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoEngineShapeClass` instance.
    var _ptr: UnsafeMutablePointer<PangoEngineShapeClass>! { get }

}

/// The `EngineShapeClassRef` type acts as a lightweight Swift reference to an underlying `PangoEngineShapeClass` instance.
/// It exposes methods that can operate on this data type through `EngineShapeClassProtocol` conformance.
/// Use `EngineShapeClassRef` only as an `unowned` reference to an existing `PangoEngineShapeClass` instance.
///
/// Class structure for `PangoEngineShape`
public struct EngineShapeClassRef: EngineShapeClassProtocol {
        /// Untyped pointer to the underlying `PangoEngineShapeClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EngineShapeClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoEngineShapeClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoEngineShapeClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoEngineShapeClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoEngineShapeClass>?) {
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

    /// Reference intialiser for a related type that implements `EngineShapeClassProtocol`
    @inlinable init<T: EngineShapeClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineShapeClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineShapeClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineShapeClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineShapeClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineShapeClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: EngineShapeClass Record: EngineShapeClassProtocol extension (methods and fields)
public extension EngineShapeClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoEngineShapeClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoEngineShapeClass>! { return ptr?.assumingMemoryBound(to: PangoEngineShapeClass.self) }


    // var parentClass is unavailable because parent_class is private

    // var scriptShape is unavailable because script_shape is void

    // var covers is unavailable because covers is void

}



