import CGLib
import CPango
import GLib
import GLibObject

// MARK: - AttrSize Record

/// The `AttrSizeProtocol` protocol exposes the methods and properties of an underlying `PangoAttrSize` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AttrSize`.
/// Alternatively, use `AttrSizeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoAttrSize` structure is used to represent attributes which
/// set font size.
public protocol AttrSizeProtocol {
        /// Untyped pointer to the underlying `PangoAttrSize` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoAttrSize` instance.
    var _ptr: UnsafeMutablePointer<PangoAttrSize>! { get }

    /// Required Initialiser for types conforming to `AttrSizeProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `AttrSizeRef` type acts as a lightweight Swift reference to an underlying `PangoAttrSize` instance.
/// It exposes methods that can operate on this data type through `AttrSizeProtocol` conformance.
/// Use `AttrSizeRef` only as an `unowned` reference to an existing `PangoAttrSize` instance.
///
/// The `PangoAttrSize` structure is used to represent attributes which
/// set font size.
public struct AttrSizeRef: AttrSizeProtocol {
        /// Untyped pointer to the underlying `PangoAttrSize` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AttrSizeRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoAttrSize>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoAttrSize>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoAttrSize>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoAttrSize>?) {
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

    /// Reference intialiser for a related type that implements `AttrSizeProtocol`
    @inlinable init<T: AttrSizeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrSizeProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrSizeProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrSizeProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrSizeProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrSizeProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AttrSize` type acts as an owner of an underlying `PangoAttrSize` instance.
/// It provides the methods that can operate on this data type through `AttrSizeProtocol` conformance.
/// Use `AttrSize` as a strong reference or owner of a `PangoAttrSize` instance.
///
/// The `PangoAttrSize` structure is used to represent attributes which
/// set font size.
open class AttrSize: AttrSizeProtocol {
        /// Untyped pointer to the underlying `PangoAttrSize` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoAttrSize>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoAttrSize>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrSize` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoAttrSize>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoAttrSize>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoAttrSize` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `AttrSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoAttrSize>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoAttrSize, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `AttrSizeProtocol`
    /// `PangoAttrSize` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `AttrSizeProtocol`
    @inlinable public init<T: AttrSizeProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoAttrSize, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `PangoAttrSize`.
    deinit {
        // no reference counting for PangoAttrSize, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrSizeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrSizeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoAttrSize, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrSizeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrSizeProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoAttrSize, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrSizeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrSizeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoAttrSize, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrSizeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrSizeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoAttrSize, cannot ref(_ptr)
    }



}

// MARK: no AttrSize properties

// MARK: no AttrSize signals

// MARK: AttrSize has no signals
// MARK: AttrSize Record: AttrSizeProtocol extension (methods and fields)
public extension AttrSizeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoAttrSize` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoAttrSize>! { return ptr?.assumingMemoryBound(to: PangoAttrSize.self) }


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

    /// size of font, in units of 1/`PANGO_SCALE` of a point (for
    ///   `PANGO_ATTR_SIZE`) or of a device unit (for `PANGO_ATTR_ABSOLUTE_SIZE`)
    @inlinable var size: gint {
        /// size of font, in units of 1/`PANGO_SCALE` of a point (for
        ///   `PANGO_ATTR_SIZE`) or of a device unit (for `PANGO_ATTR_ABSOLUTE_SIZE`)
        get {
            let rv = _ptr.pointee.size
            return rv
        }
        /// size of font, in units of 1/`PANGO_SCALE` of a point (for
        ///   `PANGO_ATTR_SIZE`) or of a device unit (for `PANGO_ATTR_ABSOLUTE_SIZE`)
         set {
            _ptr.pointee.size = newValue
        }
    }

    /// whether the font size is in device units or points.
    ///   This field is only present for compatibility with Pango-1.8.0
    ///   (`PANGO_ATTR_ABSOLUTE_SIZE` was added in 1.8.1); and always will
    ///   be `false` for `PANGO_ATTR_SIZE` and `true` for `PANGO_ATTR_ABSOLUTE_SIZE`.
    @inlinable var absolute: guint {
        /// whether the font size is in device units or points.
        ///   This field is only present for compatibility with Pango-1.8.0
        ///   (`PANGO_ATTR_ABSOLUTE_SIZE` was added in 1.8.1); and always will
        ///   be `false` for `PANGO_ATTR_SIZE` and `true` for `PANGO_ATTR_ABSOLUTE_SIZE`.
        get {
            let rv = _ptr.pointee.absolute
            return rv
        }
        /// whether the font size is in device units or points.
        ///   This field is only present for compatibility with Pango-1.8.0
        ///   (`PANGO_ATTR_ABSOLUTE_SIZE` was added in 1.8.1); and always will
        ///   be `false` for `PANGO_ATTR_SIZE` and `true` for `PANGO_ATTR_ABSOLUTE_SIZE`.
         set {
            _ptr.pointee.absolute = newValue
        }
    }

}



