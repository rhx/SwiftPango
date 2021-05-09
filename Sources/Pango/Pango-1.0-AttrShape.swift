import CGLib
import CPango
import GLib
import GLibObject

// MARK: - AttrShape Record

/// The `AttrShapeProtocol` protocol exposes the methods and properties of an underlying `PangoAttrShape` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AttrShape`.
/// Alternatively, use `AttrShapeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoAttrShape` structure is used to represent attributes which
/// impose shape restrictions.
public protocol AttrShapeProtocol {
        /// Untyped pointer to the underlying `PangoAttrShape` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoAttrShape` instance.
    var _ptr: UnsafeMutablePointer<PangoAttrShape>! { get }

    /// Required Initialiser for types conforming to `AttrShapeProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `AttrShapeRef` type acts as a lightweight Swift reference to an underlying `PangoAttrShape` instance.
/// It exposes methods that can operate on this data type through `AttrShapeProtocol` conformance.
/// Use `AttrShapeRef` only as an `unowned` reference to an existing `PangoAttrShape` instance.
///
/// The `PangoAttrShape` structure is used to represent attributes which
/// impose shape restrictions.
public struct AttrShapeRef: AttrShapeProtocol {
        /// Untyped pointer to the underlying `PangoAttrShape` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AttrShapeRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoAttrShape>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoAttrShape>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoAttrShape>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoAttrShape>?) {
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

    /// Reference intialiser for a related type that implements `AttrShapeProtocol`
    @inlinable init<T: AttrShapeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrShapeProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrShapeProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrShapeProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrShapeProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrShapeProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AttrShape` type acts as an owner of an underlying `PangoAttrShape` instance.
/// It provides the methods that can operate on this data type through `AttrShapeProtocol` conformance.
/// Use `AttrShape` as a strong reference or owner of a `PangoAttrShape` instance.
///
/// The `PangoAttrShape` structure is used to represent attributes which
/// impose shape restrictions.
open class AttrShape: AttrShapeProtocol {
        /// Untyped pointer to the underlying `PangoAttrShape` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrShape` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoAttrShape>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrShape` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoAttrShape>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrShape` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrShape` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrShape` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoAttrShape>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrShape` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoAttrShape>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoAttrShape` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `AttrShape` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoAttrShape>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoAttrShape, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `AttrShapeProtocol`
    /// `PangoAttrShape` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `AttrShapeProtocol`
    @inlinable public init<T: AttrShapeProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoAttrShape, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `PangoAttrShape`.
    deinit {
        // no reference counting for PangoAttrShape, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrShapeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrShapeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoAttrShape, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrShapeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrShapeProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoAttrShape, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrShapeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrShapeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoAttrShape, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrShapeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrShapeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoAttrShape, cannot ref(_ptr)
    }



}

// MARK: no AttrShape properties

// MARK: no AttrShape signals

// MARK: AttrShape has no signals
// MARK: AttrShape Record: AttrShapeProtocol extension (methods and fields)
public extension AttrShapeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoAttrShape` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoAttrShape>! { return ptr?.assumingMemoryBound(to: PangoAttrShape.self) }


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

    /// the ink rectangle to restrict to
    @inlinable var inkRect: PangoRectangle {
        /// the ink rectangle to restrict to
        get {
            let rv = _ptr.pointee.ink_rect
            return rv
        }
        /// the ink rectangle to restrict to
         set {
            _ptr.pointee.ink_rect = newValue
        }
    }

    /// the logical rectangle to restrict to
    @inlinable var logicalRect: PangoRectangle {
        /// the logical rectangle to restrict to
        get {
            let rv = _ptr.pointee.logical_rect
            return rv
        }
        /// the logical rectangle to restrict to
         set {
            _ptr.pointee.logical_rect = newValue
        }
    }

    /// user data set (see [type_func`Pango.AttrShape.new_with_data`])
    @inlinable var data: gpointer! {
        /// user data set (see [type_func`Pango.AttrShape.new_with_data`])
        get {
            let rv = _ptr.pointee.data
            return rv
        }
        /// user data set (see [type_func`Pango.AttrShape.new_with_data`])
         set {
            _ptr.pointee.data = newValue
        }
    }

    /// copy function for the user data
    @inlinable var copyFunc: PangoAttrDataCopyFunc! {
        /// copy function for the user data
        get {
            let rv = _ptr.pointee.copy_func
            return rv
        }
        /// copy function for the user data
         set {
            _ptr.pointee.copy_func = newValue
        }
    }

    /// destroy function for the user data
    @inlinable var destroyFunc: GDestroyNotify! {
        /// destroy function for the user data
        get {
            let rv = _ptr.pointee.destroy_func
            return rv
        }
        /// destroy function for the user data
         set {
            _ptr.pointee.destroy_func = newValue
        }
    }

}



