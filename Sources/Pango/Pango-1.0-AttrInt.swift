import CGLib
import CPango
import GLib
import GLibObject

// MARK: - AttrInt Record

/// The `AttrIntProtocol` protocol exposes the methods and properties of an underlying `PangoAttrInt` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AttrInt`.
/// Alternatively, use `AttrIntRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoAttrInt` structure is used to represent attributes with
/// an integer or enumeration value.
public protocol AttrIntProtocol {
        /// Untyped pointer to the underlying `PangoAttrInt` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoAttrInt` instance.
    var _ptr: UnsafeMutablePointer<PangoAttrInt>! { get }

}

/// The `AttrIntRef` type acts as a lightweight Swift reference to an underlying `PangoAttrInt` instance.
/// It exposes methods that can operate on this data type through `AttrIntProtocol` conformance.
/// Use `AttrIntRef` only as an `unowned` reference to an existing `PangoAttrInt` instance.
///
/// The `PangoAttrInt` structure is used to represent attributes with
/// an integer or enumeration value.
public struct AttrIntRef: AttrIntProtocol {
        /// Untyped pointer to the underlying `PangoAttrInt` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AttrIntRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoAttrInt>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoAttrInt>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoAttrInt>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoAttrInt>?) {
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

    /// Reference intialiser for a related type that implements `AttrIntProtocol`
    @inlinable init<T: AttrIntProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIntProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIntProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIntProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIntProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIntProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AttrInt` type acts as an owner of an underlying `PangoAttrInt` instance.
/// It provides the methods that can operate on this data type through `AttrIntProtocol` conformance.
/// Use `AttrInt` as a strong reference or owner of a `PangoAttrInt` instance.
///
/// The `PangoAttrInt` structure is used to represent attributes with
/// an integer or enumeration value.
open class AttrInt: AttrIntProtocol {
        /// Untyped pointer to the underlying `PangoAttrInt` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrInt` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoAttrInt>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrInt` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoAttrInt>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrInt` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrInt` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrInt` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoAttrInt>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrInt` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoAttrInt>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoAttrInt` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `AttrInt` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoAttrInt>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoAttrInt, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `AttrIntProtocol`
    /// `PangoAttrInt` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `AttrIntProtocol`
    @inlinable public init<T: AttrIntProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoAttrInt, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `PangoAttrInt`.
    deinit {
        // no reference counting for PangoAttrInt, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIntProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIntProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoAttrInt, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIntProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIntProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoAttrInt, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIntProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIntProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoAttrInt, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIntProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIntProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoAttrInt, cannot ref(_ptr)
    }



}

// MARK: no AttrInt properties

// MARK: no AttrInt signals

// MARK: AttrInt has no signals
// MARK: AttrInt Record: AttrIntProtocol extension (methods and fields)
public extension AttrIntProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoAttrInt` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoAttrInt>! { return ptr?.assumingMemoryBound(to: PangoAttrInt.self) }


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
    @inlinable var value: gint {
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



