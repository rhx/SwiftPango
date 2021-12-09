import CGLib
import CPango
import GLib
import GLibObject

// MARK: - Attribute Record

/// The `PangoAttribute` structure represents the common portions of all
/// attributes.
/// 
/// Particular types of attributes include this structure as their initial
/// portion. The common portion of the attribute holds the range to which
/// the value in the type-specific part of the attribute applies and should
/// be initialized using [method`Pango.Attribute.init`]. By default, an attribute
/// will have an all-inclusive range of [0,`G_MAXUINT`].
///
/// The `AttributeProtocol` protocol exposes the methods and properties of an underlying `PangoAttribute` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Attribute`.
/// Alternatively, use `AttributeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol AttributeProtocol {
        /// Untyped pointer to the underlying `PangoAttribute` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoAttribute` instance.
    var attribute_ptr: UnsafeMutablePointer<PangoAttribute>! { get }

    /// Required Initialiser for types conforming to `AttributeProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `PangoAttribute` structure represents the common portions of all
/// attributes.
/// 
/// Particular types of attributes include this structure as their initial
/// portion. The common portion of the attribute holds the range to which
/// the value in the type-specific part of the attribute applies and should
/// be initialized using [method`Pango.Attribute.init`]. By default, an attribute
/// will have an all-inclusive range of [0,`G_MAXUINT`].
///
/// The `AttributeRef` type acts as a lightweight Swift reference to an underlying `PangoAttribute` instance.
/// It exposes methods that can operate on this data type through `AttributeProtocol` conformance.
/// Use `AttributeRef` only as an `unowned` reference to an existing `PangoAttribute` instance.
///
public struct AttributeRef: AttributeProtocol {
        /// Untyped pointer to the underlying `PangoAttribute` instance.
    /// For type-safe access, use the generated, typed pointer `attribute_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AttributeRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoAttribute>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoAttribute>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoAttribute>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoAttribute>?) {
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

    /// Reference intialiser for a related type that implements `AttributeProtocol`
    @inlinable init<T: AttributeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttributeProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttributeProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttributeProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttributeProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttributeProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PangoAttribute` structure represents the common portions of all
/// attributes.
/// 
/// Particular types of attributes include this structure as their initial
/// portion. The common portion of the attribute holds the range to which
/// the value in the type-specific part of the attribute applies and should
/// be initialized using [method`Pango.Attribute.init`]. By default, an attribute
/// will have an all-inclusive range of [0,`G_MAXUINT`].
///
/// The `Attribute` type acts as an owner of an underlying `PangoAttribute` instance.
/// It provides the methods that can operate on this data type through `AttributeProtocol` conformance.
/// Use `Attribute` as a strong reference or owner of a `PangoAttribute` instance.
///
open class Attribute: AttributeProtocol {
        /// Untyped pointer to the underlying `PangoAttribute` instance.
    /// For type-safe access, use the generated, typed pointer `attribute_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Attribute` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoAttribute>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Attribute` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoAttribute>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Attribute` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Attribute` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Attribute` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoAttribute>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Attribute` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoAttribute>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoAttribute` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Attribute` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoAttribute>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoAttribute, cannot ref(attribute_ptr)
    }

    /// Reference intialiser for a related type that implements `AttributeProtocol`
    /// `PangoAttribute` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `AttributeProtocol`
    @inlinable public init<T: AttributeProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoAttribute, cannot ref(attribute_ptr)
    }

    /// Do-nothing destructor for `PangoAttribute`.
    deinit {
        // no reference counting for PangoAttribute, cannot unref(attribute_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttributeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttributeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoAttribute, cannot ref(attribute_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttributeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttributeProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoAttribute, cannot ref(attribute_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttributeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttributeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoAttribute, cannot ref(attribute_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttributeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttributeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoAttribute, cannot ref(attribute_ptr)
    }



}

// MARK: no Attribute properties

// MARK: no Attribute signals

// MARK: Attribute has no signals
// MARK: Attribute Record: AttributeProtocol extension (methods and fields)
public extension AttributeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoAttribute` instance.
    @inlinable var attribute_ptr: UnsafeMutablePointer<PangoAttribute>! { return ptr?.assumingMemoryBound(to: PangoAttribute.self) }

    /// Returns the attribute cast to `PangoAttrColor`.
    /// 
    /// This is mainly useful for language bindings.
    @inlinable func asColor() -> AttrColorRef! {
        let rv = AttrColorRef(gconstpointer: gconstpointer(pango_attribute_as_color(attribute_ptr)))
        return rv
    }

    /// Returns the attribute cast to `PangoAttrFloat`.
    /// 
    /// This is mainly useful for language bindings.
    @inlinable func asFloat() -> AttrFloatRef! {
        let rv = AttrFloatRef(gconstpointer: gconstpointer(pango_attribute_as_float(attribute_ptr)))
        return rv
    }

    /// Returns the attribute cast to `PangoAttrFontDesc`.
    /// 
    /// This is mainly useful for language bindings.
    @inlinable func asFontDesc() -> AttrFontDescRef! {
        let rv = AttrFontDescRef(gconstpointer: gconstpointer(pango_attribute_as_font_desc(attribute_ptr)))
        return rv
    }

    /// Returns the attribute cast to `PangoAttrFontFeatures`.
    /// 
    /// This is mainly useful for language bindings.
    @inlinable func asFontFeatures() -> AttrFontFeaturesRef! {
        let rv = AttrFontFeaturesRef(gconstpointer: gconstpointer(pango_attribute_as_font_features(attribute_ptr)))
        return rv
    }

    /// Returns the attribute cast to `PangoAttrInt`.
    /// 
    /// This is mainly useful for language bindings.
    @inlinable func asInt() -> AttrIntRef! {
        let rv = AttrIntRef(gconstpointer: gconstpointer(pango_attribute_as_int(attribute_ptr)))
        return rv
    }

    /// Returns the attribute cast to `PangoAttrLanguage`.
    /// 
    /// This is mainly useful for language bindings.
    @inlinable func asLanguage() -> AttrLanguageRef! {
        let rv = AttrLanguageRef(gconstpointer: gconstpointer(pango_attribute_as_language(attribute_ptr)))
        return rv
    }

    /// Returns the attribute cast to `PangoAttrShape`.
    /// 
    /// This is mainly useful for language bindings.
    @inlinable func asShape() -> AttrShapeRef! {
        let rv = AttrShapeRef(gconstpointer: gconstpointer(pango_attribute_as_shape(attribute_ptr)))
        return rv
    }

    /// Returns the attribute cast to `PangoAttrSize`.
    /// 
    /// This is mainly useful for language bindings.
    @inlinable func asSize() -> AttrSizeRef! {
        let rv = AttrSizeRef(gconstpointer: gconstpointer(pango_attribute_as_size(attribute_ptr)))
        return rv
    }

    /// Returns the attribute cast to `PangoAttrString`.
    /// 
    /// This is mainly useful for language bindings.
    @inlinable func asString() -> AttrStringRef! {
        let rv = AttrStringRef(gconstpointer: gconstpointer(pango_attribute_as_string(attribute_ptr)))
        return rv
    }

    /// Make a copy of an attribute.
    @inlinable func copy() -> AttributeRef! {
        guard let rv = AttributeRef(gconstpointer: gconstpointer(pango_attribute_copy(attribute_ptr))) else { return nil }
        return rv
    }

    /// Destroy a `PangoAttribute` and free all associated memory.
    @inlinable func destroy() {
        pango_attribute_destroy(attribute_ptr)
    
    }

    /// Compare two attributes for equality.
    /// 
    /// This compares only the actual value of the two
    /// attributes and not the ranges that the attributes
    /// apply to.
    @inlinable func equal<AttributeT: AttributeProtocol>(attr2: AttributeT) -> Bool {
        let rv = ((pango_attribute_equal(attribute_ptr, attr2.attribute_ptr)) != 0)
        return rv
    }

    /// Initializes `attr`'s klass to `klass`, it's start_index to
    /// `PANGO_ATTR_INDEX_FROM_TEXT_BEGINNING` and end_index to
    /// `PANGO_ATTR_INDEX_TO_TEXT_END` such that the attribute applies
    /// to the entire text by default.
    @inlinable func init_<AttrClassT: AttrClassProtocol>(klass: AttrClassT) {
        pango_attribute_init(attribute_ptr, klass._ptr)
    
    }

    /// the class structure holding information about the type of the attribute
    @inlinable var klass: AttrClassRef! {
        /// the class structure holding information about the type of the attribute
        get {
            let rv = AttrClassRef(gconstpointer: gconstpointer(attribute_ptr.pointee.klass))
            return rv
        }
        /// the class structure holding information about the type of the attribute
         set {
            attribute_ptr.pointee.klass = UnsafePointer<PangoAttrClass>(newValue._ptr)
        }
    }

    /// the start index of the range (in bytes).
    @inlinable var startIndex: guint {
        /// the start index of the range (in bytes).
        get {
            let rv = attribute_ptr.pointee.start_index
            return rv
        }
        /// the start index of the range (in bytes).
         set {
            attribute_ptr.pointee.start_index = newValue
        }
    }

    /// end index of the range (in bytes). The character at this index
    ///   is not included in the range.
    @inlinable var endIndex: guint {
        /// end index of the range (in bytes). The character at this index
        ///   is not included in the range.
        get {
            let rv = attribute_ptr.pointee.end_index
            return rv
        }
        /// end index of the range (in bytes). The character at this index
        ///   is not included in the range.
         set {
            attribute_ptr.pointee.end_index = newValue
        }
    }

}



