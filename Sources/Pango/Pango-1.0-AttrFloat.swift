import CGLib
import CPango
import GLib
import GLibObject

// MARK: - AttrFloat Record

/// The `AttrFloatProtocol` protocol exposes the methods and properties of an underlying `PangoAttrFloat` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AttrFloat`.
/// Alternatively, use `AttrFloatRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoAttrFloat` structure is used to represent attributes with
/// a float or double value.
public protocol AttrFloatProtocol {
        /// Untyped pointer to the underlying `PangoAttrFloat` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoAttrFloat` instance.
    var _ptr: UnsafeMutablePointer<PangoAttrFloat>! { get }

    /// Required Initialiser for types conforming to `AttrFloatProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `AttrFloatRef` type acts as a lightweight Swift reference to an underlying `PangoAttrFloat` instance.
/// It exposes methods that can operate on this data type through `AttrFloatProtocol` conformance.
/// Use `AttrFloatRef` only as an `unowned` reference to an existing `PangoAttrFloat` instance.
///
/// The `PangoAttrFloat` structure is used to represent attributes with
/// a float or double value.
public struct AttrFloatRef: AttrFloatProtocol {
        /// Untyped pointer to the underlying `PangoAttrFloat` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AttrFloatRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoAttrFloat>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoAttrFloat>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoAttrFloat>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoAttrFloat>?) {
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

    /// Reference intialiser for a related type that implements `AttrFloatProtocol`
    @inlinable init<T: AttrFloatProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFloatProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFloatProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFloatProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFloatProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFloatProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AttrFloat` type acts as an owner of an underlying `PangoAttrFloat` instance.
/// It provides the methods that can operate on this data type through `AttrFloatProtocol` conformance.
/// Use `AttrFloat` as a strong reference or owner of a `PangoAttrFloat` instance.
///
/// The `PangoAttrFloat` structure is used to represent attributes with
/// a float or double value.
open class AttrFloat: AttrFloatProtocol {
        /// Untyped pointer to the underlying `PangoAttrFloat` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrFloat` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoAttrFloat>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrFloat` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoAttrFloat>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrFloat` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrFloat` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrFloat` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoAttrFloat>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrFloat` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoAttrFloat>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoAttrFloat` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `AttrFloat` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoAttrFloat>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoAttrFloat, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `AttrFloatProtocol`
    /// `PangoAttrFloat` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `AttrFloatProtocol`
    @inlinable public init<T: AttrFloatProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoAttrFloat, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `PangoAttrFloat`.
    deinit {
        // no reference counting for PangoAttrFloat, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFloatProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFloatProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoAttrFloat, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFloatProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFloatProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoAttrFloat, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFloatProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFloatProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoAttrFloat, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFloatProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFloatProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoAttrFloat, cannot ref(_ptr)
    }



}

// MARK: no AttrFloat properties

// MARK: no AttrFloat signals

// MARK: AttrFloat has no signals
// MARK: AttrFloat Record: AttrFloatProtocol extension (methods and fields)
public extension AttrFloatProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoAttrFloat` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoAttrFloat>! { return ptr?.assumingMemoryBound(to: PangoAttrFloat.self) }


    /// the common portion of the attribute
    @inlinable var attr: PangoAttribute {
        /// the common portion of the attribute
        get {
            let rv = _ptr.pointee.attr
            return rv
        }
        /// the common portion of the attribute
         set {
            _ptr.pointee.attr = newValue
        }
    }

    /// the value of the attribute
    @inlinable var value: CDouble {
        /// the value of the attribute
        get {
            let rv = _ptr.pointee.value
            return rv
        }
        /// the value of the attribute
         set {
            _ptr.pointee.value = newValue
        }
    }

}



