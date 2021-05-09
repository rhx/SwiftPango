import CGLib
import CPango
import GLib
import GLibObject

// MARK: - AttrIterator Record

/// The `AttrIteratorProtocol` protocol exposes the methods and properties of an underlying `PangoAttrIterator` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AttrIterator`.
/// Alternatively, use `AttrIteratorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `PangoAttrIterator` is used to iterate through a `PangoAttrList`.
/// 
/// A new iterator is created with [method`Pango.AttrList.get_iterator`].
/// Once the iterator is created, it can be advanced through the style
/// changes in the text using [method`Pango.AttrIterator.next`]. At each
/// style change, the range of the current style segment and the attributes
/// currently in effect can be queried.
public protocol AttrIteratorProtocol {
        /// Untyped pointer to the underlying `PangoAttrIterator` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoAttrIterator` instance.
    var attr_iterator_ptr: UnsafeMutablePointer<PangoAttrIterator>! { get }

    /// Required Initialiser for types conforming to `AttrIteratorProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `AttrIteratorRef` type acts as a lightweight Swift reference to an underlying `PangoAttrIterator` instance.
/// It exposes methods that can operate on this data type through `AttrIteratorProtocol` conformance.
/// Use `AttrIteratorRef` only as an `unowned` reference to an existing `PangoAttrIterator` instance.
///
/// A `PangoAttrIterator` is used to iterate through a `PangoAttrList`.
/// 
/// A new iterator is created with [method`Pango.AttrList.get_iterator`].
/// Once the iterator is created, it can be advanced through the style
/// changes in the text using [method`Pango.AttrIterator.next`]. At each
/// style change, the range of the current style segment and the attributes
/// currently in effect can be queried.
public struct AttrIteratorRef: AttrIteratorProtocol {
        /// Untyped pointer to the underlying `PangoAttrIterator` instance.
    /// For type-safe access, use the generated, typed pointer `attr_iterator_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AttrIteratorRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoAttrIterator>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoAttrIterator>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoAttrIterator>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoAttrIterator>?) {
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

    /// Reference intialiser for a related type that implements `AttrIteratorProtocol`
    @inlinable init<T: AttrIteratorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIteratorProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIteratorProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIteratorProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIteratorProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIteratorProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AttrIterator` type acts as an owner of an underlying `PangoAttrIterator` instance.
/// It provides the methods that can operate on this data type through `AttrIteratorProtocol` conformance.
/// Use `AttrIterator` as a strong reference or owner of a `PangoAttrIterator` instance.
///
/// A `PangoAttrIterator` is used to iterate through a `PangoAttrList`.
/// 
/// A new iterator is created with [method`Pango.AttrList.get_iterator`].
/// Once the iterator is created, it can be advanced through the style
/// changes in the text using [method`Pango.AttrIterator.next`]. At each
/// style change, the range of the current style segment and the attributes
/// currently in effect can be queried.
open class AttrIterator: AttrIteratorProtocol {
        /// Untyped pointer to the underlying `PangoAttrIterator` instance.
    /// For type-safe access, use the generated, typed pointer `attr_iterator_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrIterator` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoAttrIterator>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrIterator` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoAttrIterator>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrIterator` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrIterator` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrIterator` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoAttrIterator>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrIterator` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoAttrIterator>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoAttrIterator` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `AttrIterator` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoAttrIterator>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoAttrIterator, cannot ref(attr_iterator_ptr)
    }

    /// Reference intialiser for a related type that implements `AttrIteratorProtocol`
    /// `PangoAttrIterator` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `AttrIteratorProtocol`
    @inlinable public init<T: AttrIteratorProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoAttrIterator, cannot ref(attr_iterator_ptr)
    }

    /// Do-nothing destructor for `PangoAttrIterator`.
    deinit {
        // no reference counting for PangoAttrIterator, cannot unref(attr_iterator_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIteratorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIteratorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoAttrIterator, cannot ref(attr_iterator_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIteratorProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIteratorProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoAttrIterator, cannot ref(attr_iterator_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIteratorProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIteratorProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoAttrIterator, cannot ref(attr_iterator_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIteratorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIteratorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoAttrIterator, cannot ref(attr_iterator_ptr)
    }



}

// MARK: no AttrIterator properties

// MARK: no AttrIterator signals

// MARK: AttrIterator has no signals
// MARK: AttrIterator Record: AttrIteratorProtocol extension (methods and fields)
public extension AttrIteratorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoAttrIterator` instance.
    @inlinable var attr_iterator_ptr: UnsafeMutablePointer<PangoAttrIterator>! { return ptr?.assumingMemoryBound(to: PangoAttrIterator.self) }

    /// Copy a `PangoAttrIterator`.
    @inlinable func copy() -> AttrIteratorRef! {
        guard let rv = AttrIteratorRef(gconstpointer: gconstpointer(pango_attr_iterator_copy(attr_iterator_ptr))) else { return nil }
        return rv
    }

    /// Destroy a `PangoAttrIterator` and free all associated memory.
    @inlinable func destroy() {
        pango_attr_iterator_destroy(attr_iterator_ptr)
    
    }

    /// Find the current attribute of a particular type at the iterator
    /// location. When multiple attributes of the same type overlap,
    /// the attribute whose range starts closest to the current location
    /// is used.
    @inlinable func get(type: PangoAttrType) -> AttributeRef! {
        let rv = AttributeRef(gconstpointer: gconstpointer(pango_attr_iterator_get(attr_iterator_ptr, type)))
        return rv
    }

    /// Gets a list of all attributes at the current position of the
    /// iterator.
    @inlinable func getAttrs() -> GLib.SListRef! {
        let rv = GLib.SListRef(pango_attr_iterator_get_attrs(attr_iterator_ptr))
        return rv
    }

    /// Get the font and other attributes at the current iterator position.
    @inlinable func getFont<FontDescriptionT: FontDescriptionProtocol>(desc: FontDescriptionT, language: UnsafeMutablePointer<UnsafeMutablePointer<PangoLanguage>?>? = nil, extraAttrs: UnsafeMutablePointer<UnsafeMutablePointer<GSList>?>? = nil) {
        pango_attr_iterator_get_font(attr_iterator_ptr, desc.font_description_ptr, language, extraAttrs)
    
    }

    /// Advance the iterator until the next change of style.
    @inlinable func next() -> Bool {
        let rv = ((pango_attr_iterator_next(attr_iterator_ptr)) != 0)
        return rv
    }

    /// Get the range of the current segment. Note that the
    /// stored return values are signed, not unsigned like
    /// the values in `PangoAttribute`. To deal with this API
    /// oversight, stored return values that wouldn't fit into
    /// a signed integer are clamped to `G_MAXINT`.
    @inlinable func range(start: UnsafeMutablePointer<gint>!, end: UnsafeMutablePointer<gint>!) {
        pango_attr_iterator_range(attr_iterator_ptr, start, end)
    
    }

    /// Breaks a piece of text into segments with consistent directional
    /// level and font.
    /// 
    /// Each byte of `text` will be contained in exactly one of the items in the
    /// returned list; the generated list of items will be in logical order (the
    /// start offsets of the items are ascending).
    /// 
    /// `cached_iter` should be an iterator over `attrs` currently positioned
    /// at a range before or containing `start_index`; `cached_iter` will be
    /// advanced to the range covering the position just after
    /// `start_index` + `length`. (i.e. if itemizing in a loop, just keep passing
    /// in the same `cached_iter`).
    @inlinable func itemize<AttrListT: AttrListProtocol, ContextT: ContextProtocol>(context: ContextT, text: UnsafePointer<CChar>!, startIndex: Int, length: Int, attrs: AttrListT) -> GLib.ListRef! {
        let rv = GLib.ListRef(pango_itemize(context.context_ptr, text, gint(startIndex), gint(length), attrs.attr_list_ptr, attr_iterator_ptr))
        return rv
    }

    /// Like ``pango_itemize()``, but with an explicitly specified base direction.
    /// 
    /// The base direction is used when computing bidirectional levels.
    /// (see [method`Pango.Context.set_base_dir`]). [func`itemize`] gets the
    /// base direction from the `PangoContext`.
    @inlinable func itemizeWithBaseDir<AttrListT: AttrListProtocol, ContextT: ContextProtocol>(context: ContextT, baseDir: PangoDirection, text: UnsafePointer<CChar>!, startIndex: Int, length: Int, attrs: AttrListT) -> GLib.ListRef! {
        let rv = GLib.ListRef(pango_itemize_with_base_dir(context.context_ptr, baseDir, text, gint(startIndex), gint(length), attrs.attr_list_ptr, attr_iterator_ptr))
        return rv
    }
    /// Gets a list of all attributes at the current position of the
    /// iterator.
    @inlinable var attrs: GLib.SListRef! {
        /// Gets a list of all attributes at the current position of the
        /// iterator.
        get {
            let rv = GLib.SListRef(pango_attr_iterator_get_attrs(attr_iterator_ptr))
            return rv
        }
    }


}



