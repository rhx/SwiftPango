import CGLib
import CPango
import GLib
import GLibObject

// MARK: - GlyphInfo Record

/// The `GlyphInfoProtocol` protocol exposes the methods and properties of an underlying `PangoGlyphInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GlyphInfo`.
/// Alternatively, use `GlyphInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoGlyphInfo` structure represents a single glyph together with
/// positioning information and visual attributes.
/// It contains the following fields.
public protocol GlyphInfoProtocol {
    /// Untyped pointer to the underlying `PangoGlyphInfo` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoGlyphInfo` instance.
    var _ptr: UnsafeMutablePointer<PangoGlyphInfo> { get }
}

/// The `GlyphInfoRef` type acts as a lightweight Swift reference to an underlying `PangoGlyphInfo` instance.
/// It exposes methods that can operate on this data type through `GlyphInfoProtocol` conformance.
/// Use `GlyphInfoRef` only as an `unowned` reference to an existing `PangoGlyphInfo` instance.
///
/// The `PangoGlyphInfo` structure represents a single glyph together with
/// positioning information and visual attributes.
/// It contains the following fields.
public struct GlyphInfoRef: GlyphInfoProtocol {
    /// Untyped pointer to the underlying `PangoGlyphInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension GlyphInfoRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoGlyphInfo>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `GlyphInfoProtocol`
    init<T: GlyphInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphInfoProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphInfoProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphInfoProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphInfoProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphInfoProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `GlyphInfo` type acts as an owner of an underlying `PangoGlyphInfo` instance.
/// It provides the methods that can operate on this data type through `GlyphInfoProtocol` conformance.
/// Use `GlyphInfo` as a strong reference or owner of a `PangoGlyphInfo` instance.
///
/// The `PangoGlyphInfo` structure represents a single glyph together with
/// positioning information and visual attributes.
/// It contains the following fields.
open class GlyphInfo: GlyphInfoProtocol {
    /// Untyped pointer to the underlying `PangoGlyphInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphInfo` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<PangoGlyphInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoGlyphInfo` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `GlyphInfo` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<PangoGlyphInfo>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoGlyphInfo, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `GlyphInfoProtocol`
    /// `PangoGlyphInfo` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `GlyphInfoProtocol`
    public init<T: GlyphInfoProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for PangoGlyphInfo, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`PangoGlyphInfo`.
    deinit {
        // no reference counting for PangoGlyphInfo, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoGlyphInfo, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphInfoProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphInfoProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoGlyphInfo, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphInfoProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphInfoProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoGlyphInfo, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoGlyphInfo, cannot ref(cast(_ptr))
    }



}

// MARK: - no GlyphInfo properties

// MARK: - no signals


public extension GlyphInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoGlyphInfo` instance.
    var _ptr: UnsafeMutablePointer<PangoGlyphInfo> { return ptr.assumingMemoryBound(to: PangoGlyphInfo.self) }

}



// MARK: - GlyphItem Record

/// The `GlyphItemProtocol` protocol exposes the methods and properties of an underlying `PangoGlyphItem` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GlyphItem`.
/// Alternatively, use `GlyphItemRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `PangoGlyphItem` is a pair of a `PangoItem` and the glyphs
/// resulting from shaping the text corresponding to an item.
/// As an example of the usage of `PangoGlyphItem`, the results
/// of shaping text with `PangoLayout` is a list of `PangoLayoutLine`,
/// each of which contains a list of `PangoGlyphItem`.
public protocol GlyphItemProtocol {
    /// Untyped pointer to the underlying `PangoGlyphItem` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoGlyphItem` instance.
    var glyph_item_ptr: UnsafeMutablePointer<PangoGlyphItem> { get }
}

/// The `GlyphItemRef` type acts as a lightweight Swift reference to an underlying `PangoGlyphItem` instance.
/// It exposes methods that can operate on this data type through `GlyphItemProtocol` conformance.
/// Use `GlyphItemRef` only as an `unowned` reference to an existing `PangoGlyphItem` instance.
///
/// A `PangoGlyphItem` is a pair of a `PangoItem` and the glyphs
/// resulting from shaping the text corresponding to an item.
/// As an example of the usage of `PangoGlyphItem`, the results
/// of shaping text with `PangoLayout` is a list of `PangoLayoutLine`,
/// each of which contains a list of `PangoGlyphItem`.
public struct GlyphItemRef: GlyphItemProtocol {
    /// Untyped pointer to the underlying `PangoGlyphItem` instance.
    /// For type-safe access, use the generated, typed pointer `glyph_item_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension GlyphItemRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoGlyphItem>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `GlyphItemProtocol`
    init<T: GlyphItemProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `GlyphItem` type acts as an owner of an underlying `PangoGlyphItem` instance.
/// It provides the methods that can operate on this data type through `GlyphItemProtocol` conformance.
/// Use `GlyphItem` as a strong reference or owner of a `PangoGlyphItem` instance.
///
/// A `PangoGlyphItem` is a pair of a `PangoItem` and the glyphs
/// resulting from shaping the text corresponding to an item.
/// As an example of the usage of `PangoGlyphItem`, the results
/// of shaping text with `PangoLayout` is a list of `PangoLayoutLine`,
/// each of which contains a list of `PangoGlyphItem`.
open class GlyphItem: GlyphItemProtocol {
    /// Untyped pointer to the underlying `PangoGlyphItem` instance.
    /// For type-safe access, use the generated, typed pointer `glyph_item_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphItem` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<PangoGlyphItem>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoGlyphItem` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `GlyphItem` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<PangoGlyphItem>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoGlyphItem, cannot ref(cast(glyph_item_ptr))
    }

    /// Reference intialiser for a related type that implements `GlyphItemProtocol`
    /// `PangoGlyphItem` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `GlyphItemProtocol`
    public init<T: GlyphItemProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.glyph_item_ptr)
        // no reference counting for PangoGlyphItem, cannot ref(cast(glyph_item_ptr))
    }

    /// Do-nothing destructor for`PangoGlyphItem`.
    deinit {
        // no reference counting for PangoGlyphItem, cannot unref(cast(glyph_item_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoGlyphItem, cannot ref(cast(glyph_item_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoGlyphItem, cannot ref(cast(glyph_item_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoGlyphItem, cannot ref(cast(glyph_item_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoGlyphItem, cannot ref(cast(glyph_item_ptr))
    }



}

// MARK: - no GlyphItem properties

// MARK: - no signals


public extension GlyphItemProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoGlyphItem` instance.
    var glyph_item_ptr: UnsafeMutablePointer<PangoGlyphItem> { return ptr.assumingMemoryBound(to: PangoGlyphItem.self) }

    /// Splits a shaped item (PangoGlyphItem) into multiple items based
    /// on an attribute list. The idea is that if you have attributes
    /// that don't affect shaping, such as color or underline, to avoid
    /// affecting shaping, you filter them out (`pango_attr_list_filter()`),
    /// apply the shaping process and then reapply them to the result using
    /// this function.
    /// 
    /// All attributes that start or end inside a cluster are applied
    /// to that cluster; for instance, if half of a cluster is underlined
    /// and the other-half strikethrough, then the cluster will end
    /// up with both underline and strikethrough attributes. In these
    /// cases, it may happen that item->extra_attrs for some of the
    /// result items can have multiple attributes of the same type.
    /// 
    /// This function takes ownership of `glyph_item`; it will be reused
    /// as one of the elements in the list.
    func applyAttrs(text: UnsafePointer<CChar>, list: AttrListProtocol) -> UnsafeMutablePointer<GSList>! {
        let rv = pango_glyph_item_apply_attrs(cast(glyph_item_ptr), text, cast(list.ptr))
        return cast(rv)
    }

    /// Make a deep copy of an existing `PangoGlyphItem` structure.
    func copy() -> UnsafeMutablePointer<PangoGlyphItem>! {
        let rv = pango_glyph_item_copy(cast(glyph_item_ptr))
        return cast(rv)
    }

    /// Frees a `PangoGlyphItem` and resources to which it points.
    func free() {
        pango_glyph_item_free(cast(glyph_item_ptr))
    
    }

    /// Given a `PangoGlyphItem` and the corresponding
    /// text, determine the screen width corresponding to each character. When
    /// multiple characters compose a single cluster, the width of the entire
    /// cluster is divided equally among the characters.
    /// 
    /// See also `pango_glyph_string_get_logical_widths()`.
    func getLogicalWidths(text: UnsafePointer<CChar>, logicalWidths logical_widths: UnsafeMutablePointer<CInt>) {
        pango_glyph_item_get_logical_widths(cast(glyph_item_ptr), text, cast(logical_widths))
    
    }

    /// Adds spacing between the graphemes of `glyph_item` to
    /// give the effect of typographic letter spacing.
    func letterSpace(text: UnsafePointer<CChar>, logAttrs log_attrs: UnsafeMutablePointer<PangoLogAttr>, letterSpacing letter_spacing: CInt) {
        pango_glyph_item_letter_space(cast(glyph_item_ptr), text, cast(log_attrs), letter_spacing)
    
    }

    /// Modifies `orig` to cover only the text after `split_index`, and
    /// returns a new item that covers the text before `split_index` that
    /// used to be in `orig`. You can think of `split_index` as the length of
    /// the returned item. `split_index` may not be 0, and it may not be
    /// greater than or equal to the length of `orig` (that is, there must
    /// be at least one byte assigned to each item, you can't create a
    /// zero-length item).
    /// 
    /// This function is similar in function to `pango_item_split()` (and uses
    /// it internally.)
    func split(text: UnsafePointer<CChar>, splitIndex split_index: CInt) -> UnsafeMutablePointer<PangoGlyphItem>! {
        let rv = pango_glyph_item_split(cast(glyph_item_ptr), text, split_index)
        return cast(rv)
    }
}



// MARK: - GlyphItemIter Record

/// The `GlyphItemIterProtocol` protocol exposes the methods and properties of an underlying `PangoGlyphItemIter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GlyphItemIter`.
/// Alternatively, use `GlyphItemIterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `PangoGlyphItemIter` is an iterator over the clusters in a
/// `PangoGlyphItem`.  The <firstterm>forward direction</firstterm> of the
/// iterator is the logical direction of text.  That is, with increasing
/// `start_index` and `start_char` values.  If `glyph_item` is right-to-left
/// (that is, if <literal>`glyph_item`->item->analysis.level</literal> is odd),
/// then `start_glyph` decreases as the iterator moves forward.  Moreover,
/// in right-to-left cases, `start_glyph` is greater than `end_glyph`.
/// 
/// An iterator should be initialized using either of
/// `pango_glyph_item_iter_init_start()` and
/// `pango_glyph_item_iter_init_end()`, for forward and backward iteration
/// respectively, and walked over using any desired mixture of
/// `pango_glyph_item_iter_next_cluster()` and
/// `pango_glyph_item_iter_prev_cluster()`.  A common idiom for doing a
/// forward iteration over the clusters is:
/// <programlisting>
/// PangoGlyphItemIter cluster_iter;
/// gboolean have_cluster;
/// 
/// for (have_cluster = pango_glyph_item_iter_init_start (&amp;cluster_iter,
///                                                       glyph_item, text);
///      have_cluster;
///      have_cluster = pango_glyph_item_iter_next_cluster (&amp;cluster_iter))
/// {
///   ...
/// }
/// </programlisting>
/// 
/// Note that `text` is the start of the text for layout, which is then
/// indexed by <literal>`glyph_item`->item->offset</literal> to get to the
/// text of `glyph_item`.  The `start_index` and `end_index` values can directly
/// index into `text`.  The `start_glyph`, `end_glyph`, `start_char`, and `end_char`
/// values however are zero-based for the `glyph_item`.  For each cluster, the
/// item pointed at by the start variables is included in the cluster while
/// the one pointed at by end variables is not.
/// 
/// None of the members of a `PangoGlyphItemIter` should be modified manually.
public protocol GlyphItemIterProtocol {
    /// Untyped pointer to the underlying `PangoGlyphItemIter` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoGlyphItemIter` instance.
    var glyph_item_iter_ptr: UnsafeMutablePointer<PangoGlyphItemIter> { get }
}

/// The `GlyphItemIterRef` type acts as a lightweight Swift reference to an underlying `PangoGlyphItemIter` instance.
/// It exposes methods that can operate on this data type through `GlyphItemIterProtocol` conformance.
/// Use `GlyphItemIterRef` only as an `unowned` reference to an existing `PangoGlyphItemIter` instance.
///
/// A `PangoGlyphItemIter` is an iterator over the clusters in a
/// `PangoGlyphItem`.  The <firstterm>forward direction</firstterm> of the
/// iterator is the logical direction of text.  That is, with increasing
/// `start_index` and `start_char` values.  If `glyph_item` is right-to-left
/// (that is, if <literal>`glyph_item`->item->analysis.level</literal> is odd),
/// then `start_glyph` decreases as the iterator moves forward.  Moreover,
/// in right-to-left cases, `start_glyph` is greater than `end_glyph`.
/// 
/// An iterator should be initialized using either of
/// `pango_glyph_item_iter_init_start()` and
/// `pango_glyph_item_iter_init_end()`, for forward and backward iteration
/// respectively, and walked over using any desired mixture of
/// `pango_glyph_item_iter_next_cluster()` and
/// `pango_glyph_item_iter_prev_cluster()`.  A common idiom for doing a
/// forward iteration over the clusters is:
/// <programlisting>
/// PangoGlyphItemIter cluster_iter;
/// gboolean have_cluster;
/// 
/// for (have_cluster = pango_glyph_item_iter_init_start (&amp;cluster_iter,
///                                                       glyph_item, text);
///      have_cluster;
///      have_cluster = pango_glyph_item_iter_next_cluster (&amp;cluster_iter))
/// {
///   ...
/// }
/// </programlisting>
/// 
/// Note that `text` is the start of the text for layout, which is then
/// indexed by <literal>`glyph_item`->item->offset</literal> to get to the
/// text of `glyph_item`.  The `start_index` and `end_index` values can directly
/// index into `text`.  The `start_glyph`, `end_glyph`, `start_char`, and `end_char`
/// values however are zero-based for the `glyph_item`.  For each cluster, the
/// item pointed at by the start variables is included in the cluster while
/// the one pointed at by end variables is not.
/// 
/// None of the members of a `PangoGlyphItemIter` should be modified manually.
public struct GlyphItemIterRef: GlyphItemIterProtocol {
    /// Untyped pointer to the underlying `PangoGlyphItemIter` instance.
    /// For type-safe access, use the generated, typed pointer `glyph_item_iter_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension GlyphItemIterRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoGlyphItemIter>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `GlyphItemIterProtocol`
    init<T: GlyphItemIterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemIterProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemIterProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemIterProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemIterProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemIterProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `GlyphItemIter` type acts as an owner of an underlying `PangoGlyphItemIter` instance.
/// It provides the methods that can operate on this data type through `GlyphItemIterProtocol` conformance.
/// Use `GlyphItemIter` as a strong reference or owner of a `PangoGlyphItemIter` instance.
///
/// A `PangoGlyphItemIter` is an iterator over the clusters in a
/// `PangoGlyphItem`.  The <firstterm>forward direction</firstterm> of the
/// iterator is the logical direction of text.  That is, with increasing
/// `start_index` and `start_char` values.  If `glyph_item` is right-to-left
/// (that is, if <literal>`glyph_item`->item->analysis.level</literal> is odd),
/// then `start_glyph` decreases as the iterator moves forward.  Moreover,
/// in right-to-left cases, `start_glyph` is greater than `end_glyph`.
/// 
/// An iterator should be initialized using either of
/// `pango_glyph_item_iter_init_start()` and
/// `pango_glyph_item_iter_init_end()`, for forward and backward iteration
/// respectively, and walked over using any desired mixture of
/// `pango_glyph_item_iter_next_cluster()` and
/// `pango_glyph_item_iter_prev_cluster()`.  A common idiom for doing a
/// forward iteration over the clusters is:
/// <programlisting>
/// PangoGlyphItemIter cluster_iter;
/// gboolean have_cluster;
/// 
/// for (have_cluster = pango_glyph_item_iter_init_start (&amp;cluster_iter,
///                                                       glyph_item, text);
///      have_cluster;
///      have_cluster = pango_glyph_item_iter_next_cluster (&amp;cluster_iter))
/// {
///   ...
/// }
/// </programlisting>
/// 
/// Note that `text` is the start of the text for layout, which is then
/// indexed by <literal>`glyph_item`->item->offset</literal> to get to the
/// text of `glyph_item`.  The `start_index` and `end_index` values can directly
/// index into `text`.  The `start_glyph`, `end_glyph`, `start_char`, and `end_char`
/// values however are zero-based for the `glyph_item`.  For each cluster, the
/// item pointed at by the start variables is included in the cluster while
/// the one pointed at by end variables is not.
/// 
/// None of the members of a `PangoGlyphItemIter` should be modified manually.
open class GlyphItemIter: GlyphItemIterProtocol {
    /// Untyped pointer to the underlying `PangoGlyphItemIter` instance.
    /// For type-safe access, use the generated, typed pointer `glyph_item_iter_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphItemIter` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<PangoGlyphItemIter>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoGlyphItemIter` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `GlyphItemIter` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<PangoGlyphItemIter>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoGlyphItemIter, cannot ref(cast(glyph_item_iter_ptr))
    }

    /// Reference intialiser for a related type that implements `GlyphItemIterProtocol`
    /// `PangoGlyphItemIter` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `GlyphItemIterProtocol`
    public init<T: GlyphItemIterProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.glyph_item_iter_ptr)
        // no reference counting for PangoGlyphItemIter, cannot ref(cast(glyph_item_iter_ptr))
    }

    /// Do-nothing destructor for`PangoGlyphItemIter`.
    deinit {
        // no reference counting for PangoGlyphItemIter, cannot unref(cast(glyph_item_iter_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoGlyphItemIter, cannot ref(cast(glyph_item_iter_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemIterProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemIterProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoGlyphItemIter, cannot ref(cast(glyph_item_iter_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemIterProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemIterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoGlyphItemIter, cannot ref(cast(glyph_item_iter_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoGlyphItemIter, cannot ref(cast(glyph_item_iter_ptr))
    }



}

// MARK: - no GlyphItemIter properties

// MARK: - no signals


public extension GlyphItemIterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoGlyphItemIter` instance.
    var glyph_item_iter_ptr: UnsafeMutablePointer<PangoGlyphItemIter> { return ptr.assumingMemoryBound(to: PangoGlyphItemIter.self) }

    /// Make a shallow copy of an existing `PangoGlyphItemIter` structure.
    func copy() -> UnsafeMutablePointer<PangoGlyphItemIter>! {
        let rv = pango_glyph_item_iter_copy(cast(glyph_item_iter_ptr))
        return cast(rv)
    }

    /// Frees a `PangoGlyphItemIter` created by `pango_glyph_item_iter_copy()`.
    func free() {
        pango_glyph_item_iter_free(cast(glyph_item_iter_ptr))
    
    }

    /// Initializes a `PangoGlyphItemIter` structure to point to the
    /// last cluster in a glyph item.
    /// See `PangoGlyphItemIter` for details of cluster orders.
    func initEnd(glyphItem glyph_item: GlyphItemProtocol, text: UnsafePointer<CChar>) -> Bool {
        let rv = pango_glyph_item_iter_init_end(cast(glyph_item_iter_ptr), cast(glyph_item.ptr), text)
        return Bool(rv != 0)
    }

    /// Initializes a `PangoGlyphItemIter` structure to point to the
    /// first cluster in a glyph item.
    /// See `PangoGlyphItemIter` for details of cluster orders.
    func initStart(glyphItem glyph_item: GlyphItemProtocol, text: UnsafePointer<CChar>) -> Bool {
        let rv = pango_glyph_item_iter_init_start(cast(glyph_item_iter_ptr), cast(glyph_item.ptr), text)
        return Bool(rv != 0)
    }

    /// Advances the iterator to the next cluster in the glyph item.
    /// See `PangoGlyphItemIter` for details of cluster orders.
    func nextCluster() -> Bool {
        let rv = pango_glyph_item_iter_next_cluster(cast(glyph_item_iter_ptr))
        return Bool(rv != 0)
    }

    /// Moves the iterator to the preceding cluster in the glyph item.
    /// See `PangoGlyphItemIter` for details of cluster orders.
    func prevCluster() -> Bool {
        let rv = pango_glyph_item_iter_prev_cluster(cast(glyph_item_iter_ptr))
        return Bool(rv != 0)
    }
}



// MARK: - GlyphString Record

/// The `GlyphStringProtocol` protocol exposes the methods and properties of an underlying `PangoGlyphString` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GlyphString`.
/// Alternatively, use `GlyphStringRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoGlyphString` structure is used to store strings
/// of glyphs with geometry and visual attribute information.
/// The storage for the glyph information is owned
/// by the structure which simplifies memory management.
public protocol GlyphStringProtocol {
    /// Untyped pointer to the underlying `PangoGlyphString` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoGlyphString` instance.
    var glyph_string_ptr: UnsafeMutablePointer<PangoGlyphString> { get }
}

/// The `GlyphStringRef` type acts as a lightweight Swift reference to an underlying `PangoGlyphString` instance.
/// It exposes methods that can operate on this data type through `GlyphStringProtocol` conformance.
/// Use `GlyphStringRef` only as an `unowned` reference to an existing `PangoGlyphString` instance.
///
/// The `PangoGlyphString` structure is used to store strings
/// of glyphs with geometry and visual attribute information.
/// The storage for the glyph information is owned
/// by the structure which simplifies memory management.
public struct GlyphStringRef: GlyphStringProtocol {
    /// Untyped pointer to the underlying `PangoGlyphString` instance.
    /// For type-safe access, use the generated, typed pointer `glyph_string_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension GlyphStringRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoGlyphString>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `GlyphStringProtocol`
    init<T: GlyphStringProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphStringProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphStringProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphStringProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphStringProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphStringProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Create a new `PangoGlyphString`.
    init() {
        let rv = pango_glyph_string_new()
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
}

/// The `GlyphString` type acts as an owner of an underlying `PangoGlyphString` instance.
/// It provides the methods that can operate on this data type through `GlyphStringProtocol` conformance.
/// Use `GlyphString` as a strong reference or owner of a `PangoGlyphString` instance.
///
/// The `PangoGlyphString` structure is used to store strings
/// of glyphs with geometry and visual attribute information.
/// The storage for the glyph information is owned
/// by the structure which simplifies memory management.
open class GlyphString: GlyphStringProtocol {
    /// Untyped pointer to the underlying `PangoGlyphString` instance.
    /// For type-safe access, use the generated, typed pointer `glyph_string_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphString` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<PangoGlyphString>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoGlyphString` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `GlyphString` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<PangoGlyphString>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoGlyphString, cannot ref(cast(glyph_string_ptr))
    }

    /// Reference intialiser for a related type that implements `GlyphStringProtocol`
    /// `PangoGlyphString` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `GlyphStringProtocol`
    public init<T: GlyphStringProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.glyph_string_ptr)
        // no reference counting for PangoGlyphString, cannot ref(cast(glyph_string_ptr))
    }

    /// Do-nothing destructor for`PangoGlyphString`.
    deinit {
        // no reference counting for PangoGlyphString, cannot unref(cast(glyph_string_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphStringProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphStringProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoGlyphString, cannot ref(cast(glyph_string_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphStringProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphStringProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoGlyphString, cannot ref(cast(glyph_string_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphStringProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphStringProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoGlyphString, cannot ref(cast(glyph_string_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphStringProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphStringProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoGlyphString, cannot ref(cast(glyph_string_ptr))
    }

    /// Create a new `PangoGlyphString`.
    public init() {
        let rv = pango_glyph_string_new()
        ptr = UnsafeMutableRawPointer(cast(rv))
    }


}

// MARK: - no GlyphString properties

// MARK: - no signals


public extension GlyphStringProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoGlyphString` instance.
    var glyph_string_ptr: UnsafeMutablePointer<PangoGlyphString> { return ptr.assumingMemoryBound(to: PangoGlyphString.self) }

    /// Copy a glyph string and associated storage.
    func copy() -> UnsafeMutablePointer<PangoGlyphString>! {
        let rv = pango_glyph_string_copy(cast(glyph_string_ptr))
        return cast(rv)
    }

    /// Compute the logical and ink extents of a glyph string. See the documentation
    /// for `pango_font_get_glyph_extents()` for details about the interpretation
    /// of the rectangles.
    /// 
    /// Examples of logical (red) and ink (green) rects:
    /// 
    /// ![](rects1.png) ![](rects2.png)
    func extents(font: FontProtocol, inkRect ink_rect: RectangleProtocol, logicalRect logical_rect: RectangleProtocol) {
        pango_glyph_string_extents(cast(glyph_string_ptr), cast(font.ptr), cast(ink_rect.ptr), cast(logical_rect.ptr))
    
    }

    /// Computes the extents of a sub-portion of a glyph string. The extents are
    /// relative to the start of the glyph string range (the origin of their
    /// coordinate system is at the start of the range, not at the start of the entire
    /// glyph string).
    func extentsRange(start: CInt, end: CInt, font: FontProtocol, inkRect ink_rect: RectangleProtocol, logicalRect logical_rect: RectangleProtocol) {
        pango_glyph_string_extents_range(cast(glyph_string_ptr), start, end, cast(font.ptr), cast(ink_rect.ptr), cast(logical_rect.ptr))
    
    }

    /// Free a glyph string and associated storage.
    func free() {
        pango_glyph_string_free(cast(glyph_string_ptr))
    
    }

    /// Given a `PangoGlyphString` resulting from `pango_shape()` and the corresponding
    /// text, determine the screen width corresponding to each character. When
    /// multiple characters compose a single cluster, the width of the entire
    /// cluster is divided equally among the characters.
    /// 
    /// See also `pango_glyph_item_get_logical_widths()`.
    func getLogicalWidths(text: UnsafePointer<CChar>, length: CInt, embeddingLevel embedding_level: CInt, logicalWidths logical_widths: UnsafeMutablePointer<CInt>) {
        pango_glyph_string_get_logical_widths(cast(glyph_string_ptr), text, length, embedding_level, cast(logical_widths))
    
    }

    /// Computes the logical width of the glyph string as can also be computed
    /// using `pango_glyph_string_extents()`.  However, since this only computes the
    /// width, it's much faster.  This is in fact only a convenience function that
    /// computes the sum of geometry.width for each glyph in the `glyphs`.
    func getWidth() -> CInt {
        let rv = pango_glyph_string_get_width(cast(glyph_string_ptr))
        return rv
    }

    /// Converts from character position to x position. (X position
    /// is measured from the left edge of the run). Character positions
    /// are computed by dividing up each cluster into equal portions.
    func indexToX(text: UnsafeMutablePointer<CChar>, length: CInt, analysis: AnalysisProtocol, index_: CInt, trailing: Bool, xPos x_pos: UnsafeMutablePointer<CInt>) {
        pango_glyph_string_index_to_x(cast(glyph_string_ptr), text, length, cast(analysis.ptr), index_, gboolean(trailing ? 1 : 0), cast(x_pos))
    
    }

    /// Resize a glyph string to the given length.
    func setSize(newLen new_len: CInt) {
        pango_glyph_string_set_size(cast(glyph_string_ptr), gint(new_len))
    
    }

    /// Convert from x offset to character position. Character positions
    /// are computed by dividing up each cluster into equal portions.
    /// In scripts where positioning within a cluster is not allowed
    /// (such as Thai), the returned value may not be a valid cursor
    /// position; the caller must combine the result with the logical
    /// attributes for the text to compute the valid cursor position.
    func xToIndex(text: UnsafeMutablePointer<CChar>, length: CInt, analysis: AnalysisProtocol, xPos x_pos: CInt, index_: UnsafeMutablePointer<CInt>, trailing: UnsafeMutablePointer<CInt>) {
        pango_glyph_string_x_to_index(cast(glyph_string_ptr), text, length, cast(analysis.ptr), x_pos, cast(index_), cast(trailing))
    
    }

    /// Given a segment of text and the corresponding
    /// `PangoAnalysis` structure returned from `pango_itemize()`,
    /// convert the characters into glyphs. You may also pass
    /// in only a substring of the item from `pango_itemize()`.
    /// 
    /// It is recommended that you use `pango_shape_full()` instead, since
    /// that API allows for shaping interaction happening across text item
    /// boundaries.
    func shape(text: UnsafePointer<CChar>, length: CInt, analysis: AnalysisProtocol) {
        pango_shape(text, length, cast(analysis.ptr), cast(glyph_string_ptr))
    
    }

    /// Given a segment of text and the corresponding
    /// `PangoAnalysis` structure returned from `pango_itemize()`,
    /// convert the characters into glyphs. You may also pass
    /// in only a substring of the item from `pango_itemize()`.
    /// 
    /// This is similar to `pango_shape()`, except it also can optionally take
    /// the full paragraph text as input, which will then be used to perform
    /// certain cross-item shaping interactions.  If you have access to the broader
    /// text of which `item_text` is part of, provide the broader text as
    /// `paragraph_text`.  If `paragraph_text` is `nil`, item text is used instead.
    func shapeFull(itemText item_text: UnsafePointer<CChar>, itemLength item_length: CInt, paragraphText paragraph_text: UnsafePointer<CChar>, paragraphLength paragraph_length: CInt, analysis: AnalysisProtocol) {
        pango_shape_full(item_text, item_length, paragraph_text, paragraph_length, cast(analysis.ptr), cast(glyph_string_ptr))
    
    }

    /// Given a segment of text and the corresponding
    /// `PangoAnalysis` structure returned from `pango_itemize()`,
    /// convert the characters into glyphs. You may also pass
    /// in only a substring of the item from `pango_itemize()`.
    /// 
    /// This is similar to `pango_shape_full()`, except it also takes
    /// flags that can influence the shaping process.
    func shapeWithFlags(itemText item_text: UnsafePointer<CChar>, itemLength item_length: CInt, paragraphText paragraph_text: UnsafePointer<CChar>, paragraphLength paragraph_length: CInt, analysis: AnalysisProtocol, flags: ShapeFlags) {
        pango_shape_with_flags(item_text, item_length, paragraph_text, paragraph_length, cast(analysis.ptr), cast(glyph_string_ptr), flags)
    
    }
    /// Computes the logical width of the glyph string as can also be computed
    /// using `pango_glyph_string_extents()`.  However, since this only computes the
    /// width, it's much faster.  This is in fact only a convenience function that
    /// computes the sum of geometry.width for each glyph in the `glyphs`.
    var width: CInt {
        /// Computes the logical width of the glyph string as can also be computed
        /// using `pango_glyph_string_extents()`.  However, since this only computes the
        /// width, it's much faster.  This is in fact only a convenience function that
        /// computes the sum of geometry.width for each glyph in the `glyphs`.
        get {
            let rv = pango_glyph_string_get_width(cast(glyph_string_ptr))
            return rv
        }
    }
}



// MARK: - GlyphVisAttr Record

/// The `GlyphVisAttrProtocol` protocol exposes the methods and properties of an underlying `PangoGlyphVisAttr` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GlyphVisAttr`.
/// Alternatively, use `GlyphVisAttrRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The PangoGlyphVisAttr is used to communicate information between
/// the shaping phase and the rendering phase.  More attributes may be
/// added in the future.
public protocol GlyphVisAttrProtocol {
    /// Untyped pointer to the underlying `PangoGlyphVisAttr` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoGlyphVisAttr` instance.
    var _ptr: UnsafeMutablePointer<PangoGlyphVisAttr> { get }
}

/// The `GlyphVisAttrRef` type acts as a lightweight Swift reference to an underlying `PangoGlyphVisAttr` instance.
/// It exposes methods that can operate on this data type through `GlyphVisAttrProtocol` conformance.
/// Use `GlyphVisAttrRef` only as an `unowned` reference to an existing `PangoGlyphVisAttr` instance.
///
/// The PangoGlyphVisAttr is used to communicate information between
/// the shaping phase and the rendering phase.  More attributes may be
/// added in the future.
public struct GlyphVisAttrRef: GlyphVisAttrProtocol {
    /// Untyped pointer to the underlying `PangoGlyphVisAttr` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension GlyphVisAttrRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoGlyphVisAttr>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `GlyphVisAttrProtocol`
    init<T: GlyphVisAttrProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphVisAttrProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphVisAttrProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphVisAttrProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphVisAttrProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphVisAttrProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `GlyphVisAttr` type acts as an owner of an underlying `PangoGlyphVisAttr` instance.
/// It provides the methods that can operate on this data type through `GlyphVisAttrProtocol` conformance.
/// Use `GlyphVisAttr` as a strong reference or owner of a `PangoGlyphVisAttr` instance.
///
/// The PangoGlyphVisAttr is used to communicate information between
/// the shaping phase and the rendering phase.  More attributes may be
/// added in the future.
open class GlyphVisAttr: GlyphVisAttrProtocol {
    /// Untyped pointer to the underlying `PangoGlyphVisAttr` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphVisAttr` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<PangoGlyphVisAttr>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoGlyphVisAttr` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `GlyphVisAttr` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<PangoGlyphVisAttr>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoGlyphVisAttr, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `GlyphVisAttrProtocol`
    /// `PangoGlyphVisAttr` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `GlyphVisAttrProtocol`
    public init<T: GlyphVisAttrProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for PangoGlyphVisAttr, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`PangoGlyphVisAttr`.
    deinit {
        // no reference counting for PangoGlyphVisAttr, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphVisAttrProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphVisAttrProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoGlyphVisAttr, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphVisAttrProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphVisAttrProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoGlyphVisAttr, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphVisAttrProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphVisAttrProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoGlyphVisAttr, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphVisAttrProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphVisAttrProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoGlyphVisAttr, cannot ref(cast(_ptr))
    }



}

// MARK: - no GlyphVisAttr properties

// MARK: - no signals


public extension GlyphVisAttrProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoGlyphVisAttr` instance.
    var _ptr: UnsafeMutablePointer<PangoGlyphVisAttr> { return ptr.assumingMemoryBound(to: PangoGlyphVisAttr.self) }

}



// MARK: - IncludedModule Record

/// The `IncludedModuleProtocol` protocol exposes the methods and properties of an underlying `PangoIncludedModule` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IncludedModule`.
/// Alternatively, use `IncludedModuleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoIncludedModule` structure for a statically linked module
/// contains the functions that would otherwise be loaded from a dynamically
/// loaded module.
public protocol IncludedModuleProtocol {
    /// Untyped pointer to the underlying `PangoIncludedModule` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoIncludedModule` instance.
    var _ptr: UnsafeMutablePointer<PangoIncludedModule> { get }
}

/// The `IncludedModuleRef` type acts as a lightweight Swift reference to an underlying `PangoIncludedModule` instance.
/// It exposes methods that can operate on this data type through `IncludedModuleProtocol` conformance.
/// Use `IncludedModuleRef` only as an `unowned` reference to an existing `PangoIncludedModule` instance.
///
/// The `PangoIncludedModule` structure for a statically linked module
/// contains the functions that would otherwise be loaded from a dynamically
/// loaded module.
public struct IncludedModuleRef: IncludedModuleProtocol {
    /// Untyped pointer to the underlying `PangoIncludedModule` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension IncludedModuleRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoIncludedModule>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `IncludedModuleProtocol`
    init<T: IncludedModuleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IncludedModuleProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IncludedModuleProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IncludedModuleProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IncludedModuleProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IncludedModuleProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `IncludedModule` type acts as an owner of an underlying `PangoIncludedModule` instance.
/// It provides the methods that can operate on this data type through `IncludedModuleProtocol` conformance.
/// Use `IncludedModule` as a strong reference or owner of a `PangoIncludedModule` instance.
///
/// The `PangoIncludedModule` structure for a statically linked module
/// contains the functions that would otherwise be loaded from a dynamically
/// loaded module.
open class IncludedModule: IncludedModuleProtocol {
    /// Untyped pointer to the underlying `PangoIncludedModule` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IncludedModule` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<PangoIncludedModule>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoIncludedModule` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `IncludedModule` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<PangoIncludedModule>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoIncludedModule, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `IncludedModuleProtocol`
    /// `PangoIncludedModule` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `IncludedModuleProtocol`
    public init<T: IncludedModuleProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for PangoIncludedModule, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`PangoIncludedModule`.
    deinit {
        // no reference counting for PangoIncludedModule, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IncludedModuleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IncludedModuleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoIncludedModule, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IncludedModuleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IncludedModuleProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoIncludedModule, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IncludedModuleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IncludedModuleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoIncludedModule, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IncludedModuleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IncludedModuleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoIncludedModule, cannot ref(cast(_ptr))
    }



}

// MARK: - no IncludedModule properties

// MARK: - no signals


public extension IncludedModuleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoIncludedModule` instance.
    var _ptr: UnsafeMutablePointer<PangoIncludedModule> { return ptr.assumingMemoryBound(to: PangoIncludedModule.self) }

    /// Do not use.  Does not do anything.
    ///
    /// **module_register is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) func moduleRegister() {
        pango_module_register(cast(_ptr))
    
    }
}



