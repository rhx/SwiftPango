import CGLib
import CPango
import GLib
import GLibObject

// MARK: - AttrList Record

/// The `AttrListProtocol` protocol exposes the methods and properties of an underlying `PangoAttrList` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AttrList`.
/// Alternatively, use `AttrListRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `PangoAttrList` represents a list of attributes that apply to a section
/// of text.
/// 
/// The attributes in a `PangoAttrList` are, in general, allowed to overlap in
/// an arbitrary fashion. However, if the attributes are manipulated only through
/// [method`Pango.AttrList.change`], the overlap between properties will meet
/// stricter criteria.
/// 
/// Since the `PangoAttrList` structure is stored as a linear list, it is not
/// suitable for storing attributes for large amounts of text. In general, you
/// should not use a single `PangoAttrList` for more than one paragraph of text.
public protocol AttrListProtocol {
        /// Untyped pointer to the underlying `PangoAttrList` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoAttrList` instance.
    var attr_list_ptr: UnsafeMutablePointer<PangoAttrList>! { get }

    /// Required Initialiser for types conforming to `AttrListProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `AttrListRef` type acts as a lightweight Swift reference to an underlying `PangoAttrList` instance.
/// It exposes methods that can operate on this data type through `AttrListProtocol` conformance.
/// Use `AttrListRef` only as an `unowned` reference to an existing `PangoAttrList` instance.
///
/// A `PangoAttrList` represents a list of attributes that apply to a section
/// of text.
/// 
/// The attributes in a `PangoAttrList` are, in general, allowed to overlap in
/// an arbitrary fashion. However, if the attributes are manipulated only through
/// [method`Pango.AttrList.change`], the overlap between properties will meet
/// stricter criteria.
/// 
/// Since the `PangoAttrList` structure is stored as a linear list, it is not
/// suitable for storing attributes for large amounts of text. In general, you
/// should not use a single `PangoAttrList` for more than one paragraph of text.
public struct AttrListRef: AttrListProtocol {
        /// Untyped pointer to the underlying `PangoAttrList` instance.
    /// For type-safe access, use the generated, typed pointer `attr_list_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AttrListRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoAttrList>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoAttrList>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoAttrList>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoAttrList>?) {
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

    /// Reference intialiser for a related type that implements `AttrListProtocol`
    @inlinable init<T: AttrListProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrListProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrListProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrListProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrListProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrListProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Create a new empty attribute list with a reference count of one.
    @inlinable init() {
        let rv = pango_attr_list_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `AttrList` type acts as a reference-counted owner of an underlying `PangoAttrList` instance.
/// It provides the methods that can operate on this data type through `AttrListProtocol` conformance.
/// Use `AttrList` as a strong reference or owner of a `PangoAttrList` instance.
///
/// A `PangoAttrList` represents a list of attributes that apply to a section
/// of text.
/// 
/// The attributes in a `PangoAttrList` are, in general, allowed to overlap in
/// an arbitrary fashion. However, if the attributes are manipulated only through
/// [method`Pango.AttrList.change`], the overlap between properties will meet
/// stricter criteria.
/// 
/// Since the `PangoAttrList` structure is stored as a linear list, it is not
/// suitable for storing attributes for large amounts of text. In general, you
/// should not use a single `PangoAttrList` for more than one paragraph of text.
open class AttrList: AttrListProtocol {
        /// Untyped pointer to the underlying `PangoAttrList` instance.
    /// For type-safe access, use the generated, typed pointer `attr_list_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoAttrList>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoAttrList>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrList` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoAttrList>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoAttrList>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `PangoAttrList`.
    /// i.e., ownership is transferred to the `AttrList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoAttrList>) {
        ptr = UnsafeMutableRawPointer(op)
        pango_attr_list_ref(ptr.assumingMemoryBound(to: PangoAttrList.self))
    }

    /// Reference intialiser for a related type that implements `AttrListProtocol`
    /// Will retain `PangoAttrList`.
    /// - Parameter other: an instance of a related type that implements `AttrListProtocol`
    @inlinable public init<T: AttrListProtocol>(_ other: T) {
        ptr = other.ptr
        pango_attr_list_ref(ptr.assumingMemoryBound(to: PangoAttrList.self))
    }

    /// Releases the underlying `PangoAttrList` instance using `pango_attr_list_unref`.
    deinit {
        pango_attr_list_unref(ptr.assumingMemoryBound(to: PangoAttrList.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrListProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrListProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        pango_attr_list_ref(ptr.assumingMemoryBound(to: PangoAttrList.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrListProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrListProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        pango_attr_list_ref(ptr.assumingMemoryBound(to: PangoAttrList.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrListProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrListProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        pango_attr_list_ref(ptr.assumingMemoryBound(to: PangoAttrList.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrListProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrListProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        pango_attr_list_ref(ptr.assumingMemoryBound(to: PangoAttrList.self))
    }

    /// Create a new empty attribute list with a reference count of one.
    @inlinable public init() {
        let rv = pango_attr_list_new()
        ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no AttrList properties

// MARK: no AttrList signals

// MARK: AttrList has no signals
// MARK: AttrList Record: AttrListProtocol extension (methods and fields)
public extension AttrListProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoAttrList` instance.
    @inlinable var attr_list_ptr: UnsafeMutablePointer<PangoAttrList>! { return ptr?.assumingMemoryBound(to: PangoAttrList.self) }

    /// Insert the given attribute into the `PangoAttrList`.
    /// 
    /// It will replace any attributes of the same type on that segment
    /// and be merged with any adjoining attributes that are identical.
    /// 
    /// This function is slower than [method`Pango.AttrList.insert`] for
    /// creating an attribute list in order (potentially much slower for
    /// large lists). However, [method`Pango.AttrList.insert`] is not
    /// suitable for continually changing a set of attributes since it
    /// never removes or combines existing attributes.
    @inlinable func change<AttributeT: AttributeProtocol>(attr: AttributeT) {
        pango_attr_list_change(attr_list_ptr, attr.attribute_ptr)
    
    }

    /// Copy `list` and return an identical new list.
    @inlinable func copy() -> AttrListRef! {
        guard let rv = AttrListRef(gconstpointer: gconstpointer(pango_attr_list_copy(attr_list_ptr))) else { return nil }
        return rv
    }

    /// Checks whether `list` and `other_list` contain the same attributes and
    /// whether those attributes apply to the same ranges. Beware that this
    /// will return wrong values if any list contains duplicates.
    @inlinable func equal<AttrListT: AttrListProtocol>(otherList: AttrListT) -> Bool {
        let rv = ((pango_attr_list_equal(attr_list_ptr, otherList.attr_list_ptr)) != 0)
        return rv
    }

    /// Given a `PangoAttrList` and callback function, removes any elements
    /// of `list` for which `func` returns `true` and inserts them into a new list.
    @inlinable func filter(`func`: PangoAttrFilterFunc?, data: gpointer! = nil) -> AttrListRef! {
        guard let rv = AttrListRef(gconstpointer: gconstpointer(pango_attr_list_filter(attr_list_ptr, `func`, data))) else { return nil }
        return rv
    }

    /// Gets a list of all attributes in `list`.
    @inlinable func getAttributes() -> GLib.SListRef! {
        let rv = GLib.SListRef(pango_attr_list_get_attributes(attr_list_ptr))
        return rv
    }

    /// Create a iterator initialized to the beginning of the list.
    /// `list` must not be modified until this iterator is freed.
    @inlinable func getIterator() -> AttrIteratorRef! {
        let rv = AttrIteratorRef(gconstpointer: gconstpointer(pango_attr_list_get_iterator(attr_list_ptr)))
        return rv
    }

    /// Insert the given attribute into the `PangoAttrList`.
    /// 
    /// It will be inserted after all other attributes with a
    /// matching `start_index`.
    @inlinable func insert<AttributeT: AttributeProtocol>(attr: AttributeT) {
        pango_attr_list_insert(attr_list_ptr, attr.attribute_ptr)
    
    }

    /// Insert the given attribute into the `PangoAttrList`.
    /// 
    /// It will be inserted before all other attributes with a
    /// matching `start_index`.
    @inlinable func insertBefore<AttributeT: AttributeProtocol>(attr: AttributeT) {
        pango_attr_list_insert_before(attr_list_ptr, attr.attribute_ptr)
    
    }

    /// Increase the reference count of the given attribute list by one.
    @discardableResult @inlinable func ref() -> AttrListRef! {
        guard let rv = AttrListRef(gconstpointer: gconstpointer(pango_attr_list_ref(attr_list_ptr))) else { return nil }
        return rv
    }

    /// This function opens up a hole in `list`, fills it in with attributes
    /// from the left, and then merges `other` on top of the hole.
    /// 
    /// This operation is equivalent to stretching every attribute
    /// that applies at position `pos` in `list` by an amount `len`,
    /// and then calling [method`Pango.AttrList.change`] with a copy
    /// of each attribute in `other` in sequence (offset in position
    /// by `pos`).
    /// 
    /// This operation proves useful for, for instance, inserting
    /// a pre-edit string in the middle of an edit buffer.
    @inlinable func splice<AttrListT: AttrListProtocol>(other: AttrListT, pos: Int, len: Int) {
        pango_attr_list_splice(attr_list_ptr, other.attr_list_ptr, gint(pos), gint(len))
    
    }

    /// Decrease the reference count of the given attribute list by one.
    /// If the result is zero, free the attribute list and the attributes
    /// it contains.
    @inlinable func unref() {
        pango_attr_list_unref(attr_list_ptr)
    
    }

    /// Update indices of attributes in `list` for a change in the
    /// text they refer to.
    /// 
    /// The change that this function applies is removing `remove`
    /// bytes at position `pos` and inserting `add` bytes instead.
    /// 
    /// Attributes that fall entirely in the (`pos`, `pos` + `remove`)
    /// range are removed.
    /// 
    /// Attributes that start or end inside the (`pos`, `pos` + `remove`)
    /// range are shortened to reflect the removal.
    /// 
    /// Attributes start and end positions are updated if they are
    /// behind `pos` + `remove`.
    @inlinable func update(pos: Int, remove: Int, add: Int) {
        pango_attr_list_update(attr_list_ptr, gint(pos), gint(remove), gint(add))
    
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
    @inlinable func itemize<ContextT: ContextProtocol>(context: ContextT, text: UnsafePointer<CChar>!, startIndex: Int, length: Int, cachedIter: AttrIteratorRef? = nil) -> GLib.ListRef! {
        let rv = GLib.ListRef(pango_itemize(context.context_ptr, text, gint(startIndex), gint(length), attr_list_ptr, cachedIter?.attr_iterator_ptr))
        return rv
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
    @inlinable func itemize<AttrIteratorT: AttrIteratorProtocol, ContextT: ContextProtocol>(context: ContextT, text: UnsafePointer<CChar>!, startIndex: Int, length: Int, cachedIter: AttrIteratorT?) -> GLib.ListRef! {
        let rv = GLib.ListRef(pango_itemize(context.context_ptr, text, gint(startIndex), gint(length), attr_list_ptr, cachedIter?.attr_iterator_ptr))
        return rv
    }

    /// Like ``pango_itemize()``, but with an explicitly specified base direction.
    /// 
    /// The base direction is used when computing bidirectional levels.
    /// (see [method`Pango.Context.set_base_dir`]). [func`itemize`] gets the
    /// base direction from the `PangoContext`.
    @inlinable func itemizeWithBaseDir<ContextT: ContextProtocol>(context: ContextT, baseDir: PangoDirection, text: UnsafePointer<CChar>!, startIndex: Int, length: Int, cachedIter: AttrIteratorRef? = nil) -> GLib.ListRef! {
        let rv = GLib.ListRef(pango_itemize_with_base_dir(context.context_ptr, baseDir, text, gint(startIndex), gint(length), attr_list_ptr, cachedIter?.attr_iterator_ptr))
        return rv
    }
    /// Like ``pango_itemize()``, but with an explicitly specified base direction.
    /// 
    /// The base direction is used when computing bidirectional levels.
    /// (see [method`Pango.Context.set_base_dir`]). [func`itemize`] gets the
    /// base direction from the `PangoContext`.
    @inlinable func itemizeWithBaseDir<AttrIteratorT: AttrIteratorProtocol, ContextT: ContextProtocol>(context: ContextT, baseDir: PangoDirection, text: UnsafePointer<CChar>!, startIndex: Int, length: Int, cachedIter: AttrIteratorT?) -> GLib.ListRef! {
        let rv = GLib.ListRef(pango_itemize_with_base_dir(context.context_ptr, baseDir, text, gint(startIndex), gint(length), attr_list_ptr, cachedIter?.attr_iterator_ptr))
        return rv
    }
    /// Gets a list of all attributes in `list`.
    @inlinable var attributes: GLib.SListRef! {
        /// Gets a list of all attributes in `list`.
        get {
            let rv = GLib.SListRef(pango_attr_list_get_attributes(attr_list_ptr))
            return rv
        }
    }

    /// Create a iterator initialized to the beginning of the list.
    /// `list` must not be modified until this iterator is freed.
    @inlinable var iterator: AttrIteratorRef! {
        /// Create a iterator initialized to the beginning of the list.
        /// `list` must not be modified until this iterator is freed.
        get {
            let rv = AttrIteratorRef(gconstpointer: gconstpointer(pango_attr_list_get_iterator(attr_list_ptr)))
            return rv
        }
    }


}



