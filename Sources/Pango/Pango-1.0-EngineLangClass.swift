import CGLib
import CPango
import GLib
import GLibObject

/// Metatype/GType declaration for EngineLang
public extension EngineLangClassRef {
    
    /// This getter returns the GLib type identifier registered for `EngineLang`
    static var metatypeReference: GType { pango_engine_lang_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<PangoEngineLangClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: PangoEngineLangClass.self) }
    
    static var metatype: PangoEngineLangClass? { metatypePointer?.pointee } 
    
    static var wrapper: EngineLangClassRef? { EngineLangClassRef(metatypePointer) }
    
    
}

// MARK: - EngineLangClass Record

/// The `EngineLangClassProtocol` protocol exposes the methods and properties of an underlying `PangoEngineLangClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EngineLangClass`.
/// Alternatively, use `EngineLangClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Class structure for `PangoEngineLang`
public protocol EngineLangClassProtocol {
        /// Untyped pointer to the underlying `PangoEngineLangClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoEngineLangClass` instance.
    var _ptr: UnsafeMutablePointer<PangoEngineLangClass>! { get }

}

/// The `EngineLangClassRef` type acts as a lightweight Swift reference to an underlying `PangoEngineLangClass` instance.
/// It exposes methods that can operate on this data type through `EngineLangClassProtocol` conformance.
/// Use `EngineLangClassRef` only as an `unowned` reference to an existing `PangoEngineLangClass` instance.
///
/// Class structure for `PangoEngineLang`
public struct EngineLangClassRef: EngineLangClassProtocol {
        /// Untyped pointer to the underlying `PangoEngineLangClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EngineLangClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoEngineLangClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoEngineLangClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoEngineLangClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoEngineLangClass>?) {
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

    /// Reference intialiser for a related type that implements `EngineLangClassProtocol`
    @inlinable init<T: EngineLangClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineLangClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineLangClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineLangClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineLangClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineLangClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: EngineLangClass Record: EngineLangClassProtocol extension (methods and fields)
public extension EngineLangClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoEngineLangClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoEngineLangClass>! { return ptr?.assumingMemoryBound(to: PangoEngineLangClass.self) }


    // var parentClass is unavailable because parent_class is private

    // var scriptBreak is unavailable because script_break is void

}



