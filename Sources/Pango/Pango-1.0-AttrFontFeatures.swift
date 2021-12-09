import CGLib
import CPango
import GLib
import GLibObject

// MARK: - AttrFontFeatures Record

/// The `PangoAttrFontFeatures` structure is used to represent OpenType
/// font features as an attribute.
///
/// The `AttrFontFeaturesProtocol` protocol exposes the methods and properties of an underlying `PangoAttrFontFeatures` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AttrFontFeatures`.
/// Alternatively, use `AttrFontFeaturesRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol AttrFontFeaturesProtocol {
        /// Untyped pointer to the underlying `PangoAttrFontFeatures` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoAttrFontFeatures` instance.
    var _ptr: UnsafeMutablePointer<PangoAttrFontFeatures>! { get }

    /// Required Initialiser for types conforming to `AttrFontFeaturesProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `PangoAttrFontFeatures` structure is used to represent OpenType
/// font features as an attribute.
///
/// The `AttrFontFeaturesRef` type acts as a lightweight Swift reference to an underlying `PangoAttrFontFeatures` instance.
/// It exposes methods that can operate on this data type through `AttrFontFeaturesProtocol` conformance.
/// Use `AttrFontFeaturesRef` only as an `unowned` reference to an existing `PangoAttrFontFeatures` instance.
///
public struct AttrFontFeaturesRef: AttrFontFeaturesProtocol {
        /// Untyped pointer to the underlying `PangoAttrFontFeatures` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AttrFontFeaturesRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoAttrFontFeatures>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoAttrFontFeatures>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoAttrFontFeatures>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoAttrFontFeatures>?) {
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

    /// Reference intialiser for a related type that implements `AttrFontFeaturesProtocol`
    @inlinable init<T: AttrFontFeaturesProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontFeaturesProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontFeaturesProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontFeaturesProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontFeaturesProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontFeaturesProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PangoAttrFontFeatures` structure is used to represent OpenType
/// font features as an attribute.
///
/// The `AttrFontFeatures` type acts as an owner of an underlying `PangoAttrFontFeatures` instance.
/// It provides the methods that can operate on this data type through `AttrFontFeaturesProtocol` conformance.
/// Use `AttrFontFeatures` as a strong reference or owner of a `PangoAttrFontFeatures` instance.
///
open class AttrFontFeatures: AttrFontFeaturesProtocol {
        /// Untyped pointer to the underlying `PangoAttrFontFeatures` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrFontFeatures` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoAttrFontFeatures>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrFontFeatures` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoAttrFontFeatures>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrFontFeatures` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrFontFeatures` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrFontFeatures` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoAttrFontFeatures>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrFontFeatures` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoAttrFontFeatures>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoAttrFontFeatures` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `AttrFontFeatures` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoAttrFontFeatures>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoAttrFontFeatures, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `AttrFontFeaturesProtocol`
    /// `PangoAttrFontFeatures` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `AttrFontFeaturesProtocol`
    @inlinable public init<T: AttrFontFeaturesProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoAttrFontFeatures, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `PangoAttrFontFeatures`.
    deinit {
        // no reference counting for PangoAttrFontFeatures, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontFeaturesProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontFeaturesProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoAttrFontFeatures, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontFeaturesProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontFeaturesProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoAttrFontFeatures, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontFeaturesProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontFeaturesProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoAttrFontFeatures, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontFeaturesProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontFeaturesProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoAttrFontFeatures, cannot ref(_ptr)
    }



}

// MARK: no AttrFontFeatures properties

// MARK: no AttrFontFeatures signals

// MARK: AttrFontFeatures has no signals
// MARK: AttrFontFeatures Record: AttrFontFeaturesProtocol extension (methods and fields)
public extension AttrFontFeaturesProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoAttrFontFeatures` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoAttrFontFeatures>! { return ptr?.assumingMemoryBound(to: PangoAttrFontFeatures.self) }


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

    /// the featues, as a string in CSS syntax
    @inlinable var features: UnsafeMutablePointer<gchar>! {
        /// the featues, as a string in CSS syntax
        get {
            let rv = _ptr.pointee.features
            return rv
        }
        /// the featues, as a string in CSS syntax
         set {
            _ptr.pointee.features = newValue
        }
    }

}



