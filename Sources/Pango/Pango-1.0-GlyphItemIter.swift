import CGLib
import CPango
import GLib
import GLibObject

// MARK: - GlyphItemIter Record

/// The `GlyphItemIterProtocol` protocol exposes the methods and properties of an underlying `PangoGlyphItemIter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GlyphItemIter`.
/// Alternatively, use `GlyphItemIterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `PangoGlyphItemIter` is an iterator over the clusters in a
/// `PangoGlyphItem`.
/// 
/// The *forward direction* of the iterator is the logical direction of text.
/// That is, with increasing `start_index` and `start_char` values. If `glyph_item`
/// is right-to-left (that is, if `glyph_item-&gt;item-&gt;analysis.level` is odd),
/// then `start_glyph` decreases as the iterator moves forward.  Moreover,
/// in right-to-left cases, `start_glyph` is greater than `end_glyph`.
/// 
/// An iterator should be initialized using either
/// `pango_glyph_item_iter_init_start()` or
/// `pango_glyph_item_iter_init_end()`, for forward and backward iteration
/// respectively, and walked over using any desired mixture of
/// `pango_glyph_item_iter_next_cluster()` and
/// `pango_glyph_item_iter_prev_cluster()`.
/// 
/// A common idiom for doing a forward iteration over the clusters is:
/// 
/// ```
/// PangoGlyphItemIter cluster_iter;
/// gboolean have_cluster;
/// 
/// for (have_cluster = pango_glyph_item_iter_init_start (&cluster_iter,
///                                                       glyph_item, text);
///      have_cluster;
///      have_cluster = pango_glyph_item_iter_next_cluster (&cluster_iter))
/// {
///   ...
/// }
/// ```
/// 
/// Note that `text` is the start of the text for layout, which is then
/// indexed by `glyph_item-&gt;item-&gt;offset` to get to the text of `glyph_item`.
/// The `start_index` and `end_index` values can directly index into `text`. The
/// `start_glyph`, `end_glyph`, `start_char`, and `end_char` values however are
/// zero-based for the `glyph_item`.  For each cluster, the item pointed at by
/// the start variables is included in the cluster while the one pointed at by
/// end variables is not.
/// 
/// None of the members of a `PangoGlyphItemIter` should be modified manually.
public protocol GlyphItemIterProtocol {
        /// Untyped pointer to the underlying `PangoGlyphItemIter` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoGlyphItemIter` instance.
    var glyph_item_iter_ptr: UnsafeMutablePointer<PangoGlyphItemIter>! { get }

    /// Required Initialiser for types conforming to `GlyphItemIterProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `GlyphItemIterRef` type acts as a lightweight Swift reference to an underlying `PangoGlyphItemIter` instance.
/// It exposes methods that can operate on this data type through `GlyphItemIterProtocol` conformance.
/// Use `GlyphItemIterRef` only as an `unowned` reference to an existing `PangoGlyphItemIter` instance.
///
/// A `PangoGlyphItemIter` is an iterator over the clusters in a
/// `PangoGlyphItem`.
/// 
/// The *forward direction* of the iterator is the logical direction of text.
/// That is, with increasing `start_index` and `start_char` values. If `glyph_item`
/// is right-to-left (that is, if `glyph_item-&gt;item-&gt;analysis.level` is odd),
/// then `start_glyph` decreases as the iterator moves forward.  Moreover,
/// in right-to-left cases, `start_glyph` is greater than `end_glyph`.
/// 
/// An iterator should be initialized using either
/// `pango_glyph_item_iter_init_start()` or
/// `pango_glyph_item_iter_init_end()`, for forward and backward iteration
/// respectively, and walked over using any desired mixture of
/// `pango_glyph_item_iter_next_cluster()` and
/// `pango_glyph_item_iter_prev_cluster()`.
/// 
/// A common idiom for doing a forward iteration over the clusters is:
/// 
/// ```
/// PangoGlyphItemIter cluster_iter;
/// gboolean have_cluster;
/// 
/// for (have_cluster = pango_glyph_item_iter_init_start (&cluster_iter,
///                                                       glyph_item, text);
///      have_cluster;
///      have_cluster = pango_glyph_item_iter_next_cluster (&cluster_iter))
/// {
///   ...
/// }
/// ```
/// 
/// Note that `text` is the start of the text for layout, which is then
/// indexed by `glyph_item-&gt;item-&gt;offset` to get to the text of `glyph_item`.
/// The `start_index` and `end_index` values can directly index into `text`. The
/// `start_glyph`, `end_glyph`, `start_char`, and `end_char` values however are
/// zero-based for the `glyph_item`.  For each cluster, the item pointed at by
/// the start variables is included in the cluster while the one pointed at by
/// end variables is not.
/// 
/// None of the members of a `PangoGlyphItemIter` should be modified manually.
public struct GlyphItemIterRef: GlyphItemIterProtocol {
        /// Untyped pointer to the underlying `PangoGlyphItemIter` instance.
    /// For type-safe access, use the generated, typed pointer `glyph_item_iter_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GlyphItemIterRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoGlyphItemIter>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoGlyphItemIter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoGlyphItemIter>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoGlyphItemIter>?) {
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

    /// Reference intialiser for a related type that implements `GlyphItemIterProtocol`
    @inlinable init<T: GlyphItemIterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemIterProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemIterProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemIterProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemIterProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemIterProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `GlyphItemIter` type acts as an owner of an underlying `PangoGlyphItemIter` instance.
/// It provides the methods that can operate on this data type through `GlyphItemIterProtocol` conformance.
/// Use `GlyphItemIter` as a strong reference or owner of a `PangoGlyphItemIter` instance.
///
/// A `PangoGlyphItemIter` is an iterator over the clusters in a
/// `PangoGlyphItem`.
/// 
/// The *forward direction* of the iterator is the logical direction of text.
/// That is, with increasing `start_index` and `start_char` values. If `glyph_item`
/// is right-to-left (that is, if `glyph_item-&gt;item-&gt;analysis.level` is odd),
/// then `start_glyph` decreases as the iterator moves forward.  Moreover,
/// in right-to-left cases, `start_glyph` is greater than `end_glyph`.
/// 
/// An iterator should be initialized using either
/// `pango_glyph_item_iter_init_start()` or
/// `pango_glyph_item_iter_init_end()`, for forward and backward iteration
/// respectively, and walked over using any desired mixture of
/// `pango_glyph_item_iter_next_cluster()` and
/// `pango_glyph_item_iter_prev_cluster()`.
/// 
/// A common idiom for doing a forward iteration over the clusters is:
/// 
/// ```
/// PangoGlyphItemIter cluster_iter;
/// gboolean have_cluster;
/// 
/// for (have_cluster = pango_glyph_item_iter_init_start (&cluster_iter,
///                                                       glyph_item, text);
///      have_cluster;
///      have_cluster = pango_glyph_item_iter_next_cluster (&cluster_iter))
/// {
///   ...
/// }
/// ```
/// 
/// Note that `text` is the start of the text for layout, which is then
/// indexed by `glyph_item-&gt;item-&gt;offset` to get to the text of `glyph_item`.
/// The `start_index` and `end_index` values can directly index into `text`. The
/// `start_glyph`, `end_glyph`, `start_char`, and `end_char` values however are
/// zero-based for the `glyph_item`.  For each cluster, the item pointed at by
/// the start variables is included in the cluster while the one pointed at by
/// end variables is not.
/// 
/// None of the members of a `PangoGlyphItemIter` should be modified manually.
open class GlyphItemIter: GlyphItemIterProtocol {
        /// Untyped pointer to the underlying `PangoGlyphItemIter` instance.
    /// For type-safe access, use the generated, typed pointer `glyph_item_iter_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphItemIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoGlyphItemIter>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphItemIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoGlyphItemIter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphItemIter` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphItemIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphItemIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoGlyphItemIter>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphItemIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoGlyphItemIter>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoGlyphItemIter` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `GlyphItemIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoGlyphItemIter>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoGlyphItemIter, cannot ref(glyph_item_iter_ptr)
    }

    /// Reference intialiser for a related type that implements `GlyphItemIterProtocol`
    /// `PangoGlyphItemIter` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `GlyphItemIterProtocol`
    @inlinable public init<T: GlyphItemIterProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoGlyphItemIter, cannot ref(glyph_item_iter_ptr)
    }

    /// Do-nothing destructor for `PangoGlyphItemIter`.
    deinit {
        // no reference counting for PangoGlyphItemIter, cannot unref(glyph_item_iter_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoGlyphItemIter, cannot ref(glyph_item_iter_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemIterProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemIterProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoGlyphItemIter, cannot ref(glyph_item_iter_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemIterProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemIterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoGlyphItemIter, cannot ref(glyph_item_iter_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoGlyphItemIter, cannot ref(glyph_item_iter_ptr)
    }



}

// MARK: no GlyphItemIter properties

// MARK: no GlyphItemIter signals

// MARK: GlyphItemIter has no signals
// MARK: GlyphItemIter Record: GlyphItemIterProtocol extension (methods and fields)
public extension GlyphItemIterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoGlyphItemIter` instance.
    @inlinable var glyph_item_iter_ptr: UnsafeMutablePointer<PangoGlyphItemIter>! { return ptr?.assumingMemoryBound(to: PangoGlyphItemIter.self) }

    /// Make a shallow copy of an existing `PangoGlyphItemIter` structure.
    @inlinable func copy() -> GlyphItemIterRef! {
        guard let rv = GlyphItemIterRef(gconstpointer: gconstpointer(pango_glyph_item_iter_copy(glyph_item_iter_ptr))) else { return nil }
        return rv
    }

    /// Frees a `PangoGlyphItem`Iter.
    @inlinable func free() {
        pango_glyph_item_iter_free(glyph_item_iter_ptr)
    
    }

    /// Initializes a `PangoGlyphItemIter` structure to point to the
    /// last cluster in a glyph item.
    /// 
    /// See `PangoGlyphItemIter` for details of cluster orders.
    @inlinable func initEnd<GlyphItemT: GlyphItemProtocol>(glyphItem: GlyphItemT, text: UnsafePointer<CChar>!) -> Bool {
        let rv = ((pango_glyph_item_iter_init_end(glyph_item_iter_ptr, glyphItem.glyph_item_ptr, text)) != 0)
        return rv
    }

    /// Initializes a `PangoGlyphItemIter` structure to point to the
    /// first cluster in a glyph item.
    /// 
    /// See `PangoGlyphItemIter` for details of cluster orders.
    @inlinable func initStart<GlyphItemT: GlyphItemProtocol>(glyphItem: GlyphItemT, text: UnsafePointer<CChar>!) -> Bool {
        let rv = ((pango_glyph_item_iter_init_start(glyph_item_iter_ptr, glyphItem.glyph_item_ptr, text)) != 0)
        return rv
    }

    /// Advances the iterator to the next cluster in the glyph item.
    /// 
    /// See `PangoGlyphItemIter` for details of cluster orders.
    @inlinable func nextCluster() -> Bool {
        let rv = ((pango_glyph_item_iter_next_cluster(glyph_item_iter_ptr)) != 0)
        return rv
    }

    /// Moves the iterator to the preceding cluster in the glyph item.
    /// See `PangoGlyphItemIter` for details of cluster orders.
    @inlinable func prevCluster() -> Bool {
        let rv = ((pango_glyph_item_iter_prev_cluster(glyph_item_iter_ptr)) != 0)
        return rv
    }

    @inlinable var glyphItem: GlyphItemRef! {
        get {
            let rv = GlyphItemRef(gconstpointer: gconstpointer(glyph_item_iter_ptr.pointee.glyph_item))
            return rv
        }
         set {
            glyph_item_iter_ptr.pointee.glyph_item = UnsafeMutablePointer<PangoGlyphItem>(newValue.glyph_item_ptr)
        }
    }

    @inlinable var text: UnsafePointer<gchar>! {
        get {
            let rv = glyph_item_iter_ptr.pointee.text
            return rv
        }
         set {
            glyph_item_iter_ptr.pointee.text = newValue
        }
    }

    @inlinable var startGlyph: gint {
        get {
            let rv = glyph_item_iter_ptr.pointee.start_glyph
            return rv
        }
         set {
            glyph_item_iter_ptr.pointee.start_glyph = newValue
        }
    }

    @inlinable var startIndex: gint {
        get {
            let rv = glyph_item_iter_ptr.pointee.start_index
            return rv
        }
         set {
            glyph_item_iter_ptr.pointee.start_index = newValue
        }
    }

    @inlinable var startChar: gint {
        get {
            let rv = glyph_item_iter_ptr.pointee.start_char
            return rv
        }
         set {
            glyph_item_iter_ptr.pointee.start_char = newValue
        }
    }

    @inlinable var endGlyph: gint {
        get {
            let rv = glyph_item_iter_ptr.pointee.end_glyph
            return rv
        }
         set {
            glyph_item_iter_ptr.pointee.end_glyph = newValue
        }
    }

    @inlinable var endIndex: gint {
        get {
            let rv = glyph_item_iter_ptr.pointee.end_index
            return rv
        }
         set {
            glyph_item_iter_ptr.pointee.end_index = newValue
        }
    }

    @inlinable var endChar: gint {
        get {
            let rv = glyph_item_iter_ptr.pointee.end_char
            return rv
        }
         set {
            glyph_item_iter_ptr.pointee.end_char = newValue
        }
    }

}



