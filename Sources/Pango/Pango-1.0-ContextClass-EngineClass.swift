import CGLib
import CPango
import GLib
import GLibObject

// MARK: - ContextClass Record

/// The `ContextClassProtocol` protocol exposes the methods and properties of an underlying `PangoContextClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ContextClass`.
/// Alternatively, use `ContextClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ContextClassProtocol {
    /// Untyped pointer to the underlying `PangoContextClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoContextClass` instance.
    var _ptr: UnsafeMutablePointer<PangoContextClass> { get }
}

/// The `ContextClassRef` type acts as a lightweight Swift reference to an underlying `PangoContextClass` instance.
/// It exposes methods that can operate on this data type through `ContextClassProtocol` conformance.
/// Use `ContextClassRef` only as an `unowned` reference to an existing `PangoContextClass` instance.
///

public struct ContextClassRef: ContextClassProtocol {
    /// Untyped pointer to the underlying `PangoContextClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ContextClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoContextClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ContextClassProtocol`
    init<T: ContextClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ContextClass` type acts as an owner of an underlying `PangoContextClass` instance.
/// It provides the methods that can operate on this data type through `ContextClassProtocol` conformance.
/// Use `ContextClass` as a strong reference or owner of a `PangoContextClass` instance.
///

open class ContextClass: ContextClassProtocol {
    /// Untyped pointer to the underlying `PangoContextClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ContextClass` instance.
    public init(_ op: UnsafeMutablePointer<PangoContextClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ContextClassProtocol`
    /// `PangoContextClass` does not allow reference counting.
    public convenience init<T: ContextClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for PangoContextClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`PangoContextClass`.
    deinit {
        // no reference counting for PangoContextClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoContextClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoContextClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoContextClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoContextClass>(opaquePointer))
    }



}

// MARK: - no ContextClass properties

// MARK: - no signals


public extension ContextClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoContextClass` instance.
    var _ptr: UnsafeMutablePointer<PangoContextClass> { return ptr.assumingMemoryBound(to: PangoContextClass.self) }

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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoEngineClass` instance.
    var _ptr: UnsafeMutablePointer<PangoEngineClass> { get }
}

/// The `EngineClassRef` type acts as a lightweight Swift reference to an underlying `PangoEngineClass` instance.
/// It exposes methods that can operate on this data type through `EngineClassProtocol` conformance.
/// Use `EngineClassRef` only as an `unowned` reference to an existing `PangoEngineClass` instance.
///
/// Class structure for `PangoEngine`
public struct EngineClassRef: EngineClassProtocol {
    /// Untyped pointer to the underlying `PangoEngineClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EngineClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoEngineClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EngineClassProtocol`
    init<T: EngineClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EngineClass` type acts as an owner of an underlying `PangoEngineClass` instance.
/// It provides the methods that can operate on this data type through `EngineClassProtocol` conformance.
/// Use `EngineClass` as a strong reference or owner of a `PangoEngineClass` instance.
///
/// Class structure for `PangoEngine`
open class EngineClass: EngineClassProtocol {
    /// Untyped pointer to the underlying `PangoEngineClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `EngineClass` instance.
    public init(_ op: UnsafeMutablePointer<PangoEngineClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `EngineClassProtocol`
    /// `PangoEngineClass` does not allow reference counting.
    public convenience init<T: EngineClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for PangoEngineClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`PangoEngineClass`.
    deinit {
        // no reference counting for PangoEngineClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoEngineClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoEngineClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoEngineClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoEngineClass>(opaquePointer))
    }



}

// MARK: - no EngineClass properties

// MARK: - no signals


public extension EngineClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoEngineClass` instance.
    var _ptr: UnsafeMutablePointer<PangoEngineClass> { return ptr.assumingMemoryBound(to: PangoEngineClass.self) }

}



