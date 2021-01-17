import CGLib
import CPango
import GLib
import GLibObject

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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoEngineScriptInfo` instance.
    var _ptr: UnsafeMutablePointer<PangoEngineScriptInfo>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension EngineScriptInfoRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoEngineScriptInfo>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoEngineScriptInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoEngineScriptInfo>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoEngineScriptInfo>?) {
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

    /// Reference intialiser for a related type that implements `EngineScriptInfoProtocol`
    @inlinable init<T: EngineScriptInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineScriptInfoProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineScriptInfoProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineScriptInfoProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineScriptInfoProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineScriptInfoProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EngineScriptInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoEngineScriptInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EngineScriptInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoEngineScriptInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EngineScriptInfo` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EngineScriptInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EngineScriptInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoEngineScriptInfo>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EngineScriptInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoEngineScriptInfo>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoEngineScriptInfo` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `EngineScriptInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoEngineScriptInfo>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoEngineScriptInfo, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `EngineScriptInfoProtocol`
    /// `PangoEngineScriptInfo` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `EngineScriptInfoProtocol`
    @inlinable public init<T: EngineScriptInfoProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoEngineScriptInfo, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `PangoEngineScriptInfo`.
    deinit {
        // no reference counting for PangoEngineScriptInfo, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineScriptInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineScriptInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoEngineScriptInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineScriptInfoProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineScriptInfoProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoEngineScriptInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineScriptInfoProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineScriptInfoProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoEngineScriptInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineScriptInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineScriptInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoEngineScriptInfo, cannot ref(_ptr)
    }



}

// MARK: no EngineScriptInfo properties

// MARK: no EngineScriptInfo signals

// MARK: EngineScriptInfo has no signals
// MARK: EngineScriptInfo Record: EngineScriptInfoProtocol extension (methods and fields)
public extension EngineScriptInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoEngineScriptInfo` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoEngineScriptInfo>! { return ptr?.assumingMemoryBound(to: PangoEngineScriptInfo.self) }


    /// a `PangoScript`. The value `PANGO_SCRIPT_COMMON` has
    /// the special meaning here of "all scripts"
    @inlinable var script: PangoScript {
        /// a `PangoScript`. The value `PANGO_SCRIPT_COMMON` has
        /// the special meaning here of "all scripts"
        get {
            let rv = _ptr.pointee.script
            return rv
        }
        /// a `PangoScript`. The value `PANGO_SCRIPT_COMMON` has
        /// the special meaning here of "all scripts"
         set {
            _ptr.pointee.script = newValue
        }
    }

    /// a semicolon separated list of languages that this
    /// engine handles for this script. This may be empty,
    /// in which case the engine is saying that it is a
    /// fallback choice for all languages for this range,
    /// but should not be used if another engine
    /// indicates that it is specific for the language for
    /// a given code point. An entry in this list of "*"
    /// indicates that this engine is specific to all
    /// languages for this range.
    @inlinable var langs: UnsafePointer<gchar>! {
        /// a semicolon separated list of languages that this
        /// engine handles for this script. This may be empty,
        /// in which case the engine is saying that it is a
        /// fallback choice for all languages for this range,
        /// but should not be used if another engine
        /// indicates that it is specific for the language for
        /// a given code point. An entry in this list of "*"
        /// indicates that this engine is specific to all
        /// languages for this range.
        get {
            let rv = _ptr.pointee.langs
            return rv
        }
        /// a semicolon separated list of languages that this
        /// engine handles for this script. This may be empty,
        /// in which case the engine is saying that it is a
        /// fallback choice for all languages for this range,
        /// but should not be used if another engine
        /// indicates that it is specific for the language for
        /// a given code point. An entry in this list of "*"
        /// indicates that this engine is specific to all
        /// languages for this range.
         set {
            _ptr.pointee.langs = newValue
        }
    }

}



