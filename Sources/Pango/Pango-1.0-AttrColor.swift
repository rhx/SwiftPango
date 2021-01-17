import CGLib
import CPango
import GLib
import GLibObject

// MARK: - AttrColor Record

/// The `AttrColorProtocol` protocol exposes the methods and properties of an underlying `PangoAttrColor` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AttrColor`.
/// Alternatively, use `AttrColorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoAttrColor` structure is used to represent attributes that
/// are colors.
public protocol AttrColorProtocol {
        /// Untyped pointer to the underlying `PangoAttrColor` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoAttrColor` instance.
    var _ptr: UnsafeMutablePointer<PangoAttrColor>! { get }

}

/// The `AttrColorRef` type acts as a lightweight Swift reference to an underlying `PangoAttrColor` instance.
/// It exposes methods that can operate on this data type through `AttrColorProtocol` conformance.
/// Use `AttrColorRef` only as an `unowned` reference to an existing `PangoAttrColor` instance.
///
/// The `PangoAttrColor` structure is used to represent attributes that
/// are colors.
public struct AttrColorRef: AttrColorProtocol {
        /// Untyped pointer to the underlying `PangoAttrColor` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AttrColorRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoAttrColor>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoAttrColor>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoAttrColor>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoAttrColor>?) {
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

    /// Reference intialiser for a related type that implements `AttrColorProtocol`
    @inlinable init<T: AttrColorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrColorProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrColorProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrColorProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrColorProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrColorProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AttrColor` type acts as an owner of an underlying `PangoAttrColor` instance.
/// It provides the methods that can operate on this data type through `AttrColorProtocol` conformance.
/// Use `AttrColor` as a strong reference or owner of a `PangoAttrColor` instance.
///
/// The `PangoAttrColor` structure is used to represent attributes that
/// are colors.
open class AttrColor: AttrColorProtocol {
        /// Untyped pointer to the underlying `PangoAttrColor` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrColor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoAttrColor>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrColor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoAttrColor>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrColor` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrColor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrColor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoAttrColor>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrColor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoAttrColor>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoAttrColor` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `AttrColor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoAttrColor>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoAttrColor, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `AttrColorProtocol`
    /// `PangoAttrColor` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `AttrColorProtocol`
    @inlinable public init<T: AttrColorProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoAttrColor, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `PangoAttrColor`.
    deinit {
        // no reference counting for PangoAttrColor, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrColorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrColorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoAttrColor, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrColorProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrColorProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoAttrColor, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrColorProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrColorProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoAttrColor, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrColorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrColorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoAttrColor, cannot ref(_ptr)
    }



}

// MARK: no AttrColor properties

// MARK: no AttrColor signals

// MARK: AttrColor has no signals
// MARK: AttrColor Record: AttrColorProtocol extension (methods and fields)
public extension AttrColorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoAttrColor` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoAttrColor>! { return ptr?.assumingMemoryBound(to: PangoAttrColor.self) }


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

    /// the `PangoColor` which is the value of the attribute
    @inlinable var color: PangoColor {
        /// the `PangoColor` which is the value of the attribute
        get {
            let rv = _ptr.pointee.color
            return rv
        }
        /// the `PangoColor` which is the value of the attribute
         set {
            _ptr.pointee.color = newValue
        }
    }

}



