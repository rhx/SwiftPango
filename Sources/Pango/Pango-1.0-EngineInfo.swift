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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoEngineInfo` instance.
    var _ptr: UnsafeMutablePointer<PangoEngineInfo>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension EngineInfoRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoEngineInfo>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoEngineInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoEngineInfo>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoEngineInfo>?) {
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

    /// Reference intialiser for a related type that implements `EngineInfoProtocol`
    @inlinable init<T: EngineInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineInfoProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineInfoProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineInfoProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineInfoProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineInfoProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EngineInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoEngineInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EngineInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoEngineInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EngineInfo` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EngineInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EngineInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoEngineInfo>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EngineInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoEngineInfo>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoEngineInfo` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `EngineInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoEngineInfo>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoEngineInfo, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `EngineInfoProtocol`
    /// `PangoEngineInfo` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `EngineInfoProtocol`
    @inlinable public init<T: EngineInfoProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoEngineInfo, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `PangoEngineInfo`.
    deinit {
        // no reference counting for PangoEngineInfo, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoEngineInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineInfoProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineInfoProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoEngineInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineInfoProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineInfoProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoEngineInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoEngineInfo, cannot ref(_ptr)
    }



}

// MARK: no EngineInfo properties

// MARK: no EngineInfo signals

// MARK: EngineInfo has no signals
// MARK: EngineInfo Record: EngineInfoProtocol extension (methods and fields)
public extension EngineInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoEngineInfo` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoEngineInfo>! { return ptr?.assumingMemoryBound(to: PangoEngineInfo.self) }


    /// a unique string ID for the engine.
    @inlinable var id: UnsafePointer<gchar>! {
        /// a unique string ID for the engine.
        get {
            let rv = _ptr.pointee.id
            return rv
        }
        /// a unique string ID for the engine.
         set {
            _ptr.pointee.id = newValue
        }
    }

    /// a string identifying the engine type.
    @inlinable var engineType: UnsafePointer<gchar>! {
        /// a string identifying the engine type.
        get {
            let rv = _ptr.pointee.engine_type
            return rv
        }
        /// a string identifying the engine type.
         set {
            _ptr.pointee.engine_type = newValue
        }
    }

    /// a string identifying the render type.
    @inlinable var renderType: UnsafePointer<gchar>! {
        /// a string identifying the render type.
        get {
            let rv = _ptr.pointee.render_type
            return rv
        }
        /// a string identifying the render type.
         set {
            _ptr.pointee.render_type = newValue
        }
    }

    /// array of scripts this engine supports.
    @inlinable var scripts: EngineScriptInfoRef! {
        /// array of scripts this engine supports.
        get {
            let rv = EngineScriptInfoRef(gconstpointer: gconstpointer(_ptr.pointee.scripts))
            return rv
        }
        /// array of scripts this engine supports.
         set {
            _ptr.pointee.scripts = UnsafeMutablePointer<PangoEngineScriptInfo>(newValue._ptr)
        }
    }

    /// number of items in `scripts`.
    @inlinable var nScripts: gint {
        /// number of items in `scripts`.
        get {
            let rv = _ptr.pointee.n_scripts
            return rv
        }
        /// number of items in `scripts`.
         set {
            _ptr.pointee.n_scripts = newValue
        }
    }

}



