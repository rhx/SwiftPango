import CGLib
import CPango
import GLib
import GLibObject

// MARK: - EngineInfo Record

/// The `EngineInfoProtocol` protocol exposes the methods and properties of an underlying `PangoEngineInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EngineInfo`.
/// Alternatively, use `EngineInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoEngineInfo` structure contains information about a particular
/// engine. It contains the following fields:
public protocol EngineInfoProtocol {
    /// Untyped pointer to the underlying `PangoEngineInfo` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoEngineInfo` instance.
    var _ptr: UnsafeMutablePointer<PangoEngineInfo> { get }
}

/// The `EngineInfoRef` type acts as a lightweight Swift reference to an underlying `PangoEngineInfo` instance.
/// It exposes methods that can operate on this data type through `EngineInfoProtocol` conformance.
/// Use `EngineInfoRef` only as an `unowned` reference to an existing `PangoEngineInfo` instance.
///
/// The `PangoEngineInfo` structure contains information about a particular
/// engine. It contains the following fields:
public struct EngineInfoRef: EngineInfoProtocol {
    /// Untyped pointer to the underlying `PangoEngineInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EngineInfoRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoEngineInfo>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EngineInfoProtocol`
    init<T: EngineInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineInfoProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineInfoProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineInfoProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineInfoProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineInfoProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EngineInfo` type acts as an owner of an underlying `PangoEngineInfo` instance.
/// It provides the methods that can operate on this data type through `EngineInfoProtocol` conformance.
/// Use `EngineInfo` as a strong reference or owner of a `PangoEngineInfo` instance.
///
/// The `PangoEngineInfo` structure contains information about a particular
/// engine. It contains the following fields:
open class EngineInfo: EngineInfoProtocol {
    /// Untyped pointer to the underlying `PangoEngineInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `EngineInfo` instance.
    public init(_ op: UnsafeMutablePointer<PangoEngineInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `EngineInfoProtocol`
    /// `PangoEngineInfo` does not allow reference counting.
    public convenience init<T: EngineInfoProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for PangoEngineInfo, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`PangoEngineInfo`.
    deinit {
        // no reference counting for PangoEngineInfo, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineInfoProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoEngineInfo.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineInfoProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoEngineInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineInfoProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoEngineInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineInfoProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoEngineInfo>(opaquePointer))
    }



}

// MARK: - no EngineInfo properties

// MARK: - no signals


public extension EngineInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoEngineInfo` instance.
    var _ptr: UnsafeMutablePointer<PangoEngineInfo> { return ptr.assumingMemoryBound(to: PangoEngineInfo.self) }

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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoEngineLangClass` instance.
    var _ptr: UnsafeMutablePointer<PangoEngineLangClass> { get }
}

/// The `EngineLangClassRef` type acts as a lightweight Swift reference to an underlying `PangoEngineLangClass` instance.
/// It exposes methods that can operate on this data type through `EngineLangClassProtocol` conformance.
/// Use `EngineLangClassRef` only as an `unowned` reference to an existing `PangoEngineLangClass` instance.
///
/// Class structure for `PangoEngineLang`
public struct EngineLangClassRef: EngineLangClassProtocol {
    /// Untyped pointer to the underlying `PangoEngineLangClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EngineLangClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoEngineLangClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EngineLangClassProtocol`
    init<T: EngineLangClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineLangClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineLangClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineLangClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineLangClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineLangClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EngineLangClass` type acts as an owner of an underlying `PangoEngineLangClass` instance.
/// It provides the methods that can operate on this data type through `EngineLangClassProtocol` conformance.
/// Use `EngineLangClass` as a strong reference or owner of a `PangoEngineLangClass` instance.
///
/// Class structure for `PangoEngineLang`
open class EngineLangClass: EngineLangClassProtocol {
    /// Untyped pointer to the underlying `PangoEngineLangClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `EngineLangClass` instance.
    public init(_ op: UnsafeMutablePointer<PangoEngineLangClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `EngineLangClassProtocol`
    /// `PangoEngineLangClass` does not allow reference counting.
    public convenience init<T: EngineLangClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for PangoEngineLangClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`PangoEngineLangClass`.
    deinit {
        // no reference counting for PangoEngineLangClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineLangClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoEngineLangClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineLangClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoEngineLangClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineLangClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoEngineLangClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineLangClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoEngineLangClass>(opaquePointer))
    }



}

// MARK: - no EngineLangClass properties

// MARK: - no signals


public extension EngineLangClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoEngineLangClass` instance.
    var _ptr: UnsafeMutablePointer<PangoEngineLangClass> { return ptr.assumingMemoryBound(to: PangoEngineLangClass.self) }

}



// MARK: - EngineScriptInfo Record

/// The `EngineScriptInfoProtocol` protocol exposes the methods and properties of an underlying `PangoEngineScriptInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EngineScriptInfo`.
/// Alternatively, use `EngineScriptInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoEngineScriptInfo` structure contains
/// information about how the shaper covers a particular script.
public protocol EngineScriptInfoProtocol {
    /// Untyped pointer to the underlying `PangoEngineScriptInfo` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoEngineScriptInfo` instance.
    var _ptr: UnsafeMutablePointer<PangoEngineScriptInfo> { get }
}

/// The `EngineScriptInfoRef` type acts as a lightweight Swift reference to an underlying `PangoEngineScriptInfo` instance.
/// It exposes methods that can operate on this data type through `EngineScriptInfoProtocol` conformance.
/// Use `EngineScriptInfoRef` only as an `unowned` reference to an existing `PangoEngineScriptInfo` instance.
///
/// The `PangoEngineScriptInfo` structure contains
/// information about how the shaper covers a particular script.
public struct EngineScriptInfoRef: EngineScriptInfoProtocol {
    /// Untyped pointer to the underlying `PangoEngineScriptInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EngineScriptInfoRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoEngineScriptInfo>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EngineScriptInfoProtocol`
    init<T: EngineScriptInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineScriptInfoProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineScriptInfoProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineScriptInfoProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineScriptInfoProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineScriptInfoProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EngineScriptInfo` type acts as an owner of an underlying `PangoEngineScriptInfo` instance.
/// It provides the methods that can operate on this data type through `EngineScriptInfoProtocol` conformance.
/// Use `EngineScriptInfo` as a strong reference or owner of a `PangoEngineScriptInfo` instance.
///
/// The `PangoEngineScriptInfo` structure contains
/// information about how the shaper covers a particular script.
open class EngineScriptInfo: EngineScriptInfoProtocol {
    /// Untyped pointer to the underlying `PangoEngineScriptInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `EngineScriptInfo` instance.
    public init(_ op: UnsafeMutablePointer<PangoEngineScriptInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `EngineScriptInfoProtocol`
    /// `PangoEngineScriptInfo` does not allow reference counting.
    public convenience init<T: EngineScriptInfoProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for PangoEngineScriptInfo, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`PangoEngineScriptInfo`.
    deinit {
        // no reference counting for PangoEngineScriptInfo, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineScriptInfoProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoEngineScriptInfo.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineScriptInfoProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoEngineScriptInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineScriptInfoProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoEngineScriptInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineScriptInfoProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoEngineScriptInfo>(opaquePointer))
    }



}

// MARK: - no EngineScriptInfo properties

// MARK: - no signals


public extension EngineScriptInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoEngineScriptInfo` instance.
    var _ptr: UnsafeMutablePointer<PangoEngineScriptInfo> { return ptr.assumingMemoryBound(to: PangoEngineScriptInfo.self) }

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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoEngineShapeClass` instance.
    var _ptr: UnsafeMutablePointer<PangoEngineShapeClass> { get }
}

/// The `EngineShapeClassRef` type acts as a lightweight Swift reference to an underlying `PangoEngineShapeClass` instance.
/// It exposes methods that can operate on this data type through `EngineShapeClassProtocol` conformance.
/// Use `EngineShapeClassRef` only as an `unowned` reference to an existing `PangoEngineShapeClass` instance.
///
/// Class structure for `PangoEngineShape`
public struct EngineShapeClassRef: EngineShapeClassProtocol {
    /// Untyped pointer to the underlying `PangoEngineShapeClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EngineShapeClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoEngineShapeClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EngineShapeClassProtocol`
    init<T: EngineShapeClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineShapeClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineShapeClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineShapeClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineShapeClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineShapeClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EngineShapeClass` type acts as an owner of an underlying `PangoEngineShapeClass` instance.
/// It provides the methods that can operate on this data type through `EngineShapeClassProtocol` conformance.
/// Use `EngineShapeClass` as a strong reference or owner of a `PangoEngineShapeClass` instance.
///
/// Class structure for `PangoEngineShape`
open class EngineShapeClass: EngineShapeClassProtocol {
    /// Untyped pointer to the underlying `PangoEngineShapeClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `EngineShapeClass` instance.
    public init(_ op: UnsafeMutablePointer<PangoEngineShapeClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `EngineShapeClassProtocol`
    /// `PangoEngineShapeClass` does not allow reference counting.
    public convenience init<T: EngineShapeClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for PangoEngineShapeClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`PangoEngineShapeClass`.
    deinit {
        // no reference counting for PangoEngineShapeClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineShapeClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoEngineShapeClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineShapeClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoEngineShapeClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineShapeClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoEngineShapeClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineShapeClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoEngineShapeClass>(opaquePointer))
    }



}

// MARK: - no EngineShapeClass properties

// MARK: - no signals


public extension EngineShapeClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoEngineShapeClass` instance.
    var _ptr: UnsafeMutablePointer<PangoEngineShapeClass> { return ptr.assumingMemoryBound(to: PangoEngineShapeClass.self) }

}



// MARK: - FontClass Record

/// The `FontClassProtocol` protocol exposes the methods and properties of an underlying `PangoFontClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontClass`.
/// Alternatively, use `FontClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FontClassProtocol {
    /// Untyped pointer to the underlying `PangoFontClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoFontClass` instance.
    var _ptr: UnsafeMutablePointer<PangoFontClass> { get }
}

/// The `FontClassRef` type acts as a lightweight Swift reference to an underlying `PangoFontClass` instance.
/// It exposes methods that can operate on this data type through `FontClassProtocol` conformance.
/// Use `FontClassRef` only as an `unowned` reference to an existing `PangoFontClass` instance.
///

public struct FontClassRef: FontClassProtocol {
    /// Untyped pointer to the underlying `PangoFontClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FontClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoFontClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FontClassProtocol`
    init<T: FontClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FontClass` type acts as an owner of an underlying `PangoFontClass` instance.
/// It provides the methods that can operate on this data type through `FontClassProtocol` conformance.
/// Use `FontClass` as a strong reference or owner of a `PangoFontClass` instance.
///

open class FontClass: FontClassProtocol {
    /// Untyped pointer to the underlying `PangoFontClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FontClass` instance.
    public init(_ op: UnsafeMutablePointer<PangoFontClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FontClassProtocol`
    /// `PangoFontClass` does not allow reference counting.
    public convenience init<T: FontClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for PangoFontClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`PangoFontClass`.
    deinit {
        // no reference counting for PangoFontClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoFontClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoFontClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoFontClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoFontClass>(opaquePointer))
    }



}

// MARK: - no FontClass properties

// MARK: - no signals


public extension FontClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontClass` instance.
    var _ptr: UnsafeMutablePointer<PangoFontClass> { return ptr.assumingMemoryBound(to: PangoFontClass.self) }

}



