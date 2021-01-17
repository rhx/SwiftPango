import CGLib
import CPango
import GLib
import GLibObject

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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoGlyphItem` instance.
    var glyph_item_ptr: UnsafeMutablePointer<PangoGlyphItem>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension GlyphItemRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoGlyphItem>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoGlyphItem>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoGlyphItem>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoGlyphItem>?) {
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

    /// Reference intialiser for a related type that implements `GlyphItemProtocol`
    @inlinable init<T: GlyphItemProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoGlyphItem>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoGlyphItem>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphItem` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoGlyphItem>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoGlyphItem>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoGlyphItem` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `GlyphItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoGlyphItem>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoGlyphItem, cannot ref(glyph_item_ptr)
    }

    /// Reference intialiser for a related type that implements `GlyphItemProtocol`
    /// `PangoGlyphItem` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `GlyphItemProtocol`
    @inlinable public init<T: GlyphItemProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoGlyphItem, cannot ref(glyph_item_ptr)
    }

    /// Do-nothing destructor for `PangoGlyphItem`.
    deinit {
        // no reference counting for PangoGlyphItem, cannot unref(glyph_item_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoGlyphItem, cannot ref(glyph_item_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoGlyphItem, cannot ref(glyph_item_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoGlyphItem, cannot ref(glyph_item_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoGlyphItem, cannot ref(glyph_item_ptr)
    }



}

// MARK: no GlyphItem properties

// MARK: no GlyphItem signals

// MARK: GlyphItem has no signals
// MARK: GlyphItem Record: GlyphItemProtocol extension (methods and fields)
public extension GlyphItemProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoGlyphItem` instance.
    @inlinable var glyph_item_ptr: UnsafeMutablePointer<PangoGlyphItem>! { return ptr?.assumingMemoryBound(to: PangoGlyphItem.self) }

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
    @inlinable func applyAttrs<AttrListT: AttrListProtocol>(text: UnsafePointer<CChar>!, list: AttrListT) -> GLib.SListRef! {
        let rv = GLib.SListRef(pango_glyph_item_apply_attrs(glyph_item_ptr, text, list.attr_list_ptr))
        return rv
    }

    /// Make a deep copy of an existing `PangoGlyphItem` structure.
    @inlinable func copy() -> GlyphItemRef! {
        guard let rv = GlyphItemRef(gconstpointer: gconstpointer(pango_glyph_item_copy(glyph_item_ptr))) else { return nil }
        return rv
    }

    /// Frees a `PangoGlyphItem` and resources to which it points.
    @inlinable func free() {
        pango_glyph_item_free(glyph_item_ptr)
    
    }

    /// Given a `PangoGlyphItem` and the corresponding
    /// text, determine the screen width corresponding to each character. When
    /// multiple characters compose a single cluster, the width of the entire
    /// cluster is divided equally among the characters.
    /// 
    /// See also `pango_glyph_string_get_logical_widths()`.
    @inlinable func getLogicalWidths(text: UnsafePointer<CChar>!, logicalWidths: UnsafeMutablePointer<CInt>!) {
        pango_glyph_item_get_logical_widths(glyph_item_ptr, text, logicalWidths)
    
    }

    /// Adds spacing between the graphemes of `glyph_item` to
    /// give the effect of typographic letter spacing.
    @inlinable func letterSpace(text: UnsafePointer<CChar>!, logAttrs: UnsafeMutablePointer<PangoLogAttr>!, letterSpacing: Int) {
        pango_glyph_item_letter_space(glyph_item_ptr, text, logAttrs, gint(letterSpacing))
    
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
    @inlinable func split(text: UnsafePointer<CChar>!, splitIndex: Int) -> GlyphItemRef! {
        guard let rv = GlyphItemRef(gconstpointer: gconstpointer(pango_glyph_item_split(glyph_item_ptr, text, gint(splitIndex)))) else { return nil }
        return rv
    }

    /// corresponding `PangoItem`.
    @inlinable var item: ItemRef! {
        /// corresponding `PangoItem`.
        get {
            let rv = ItemRef(gconstpointer: gconstpointer(glyph_item_ptr.pointee.item))
            return rv
        }
        /// corresponding `PangoItem`.
         set {
            glyph_item_ptr.pointee.item = UnsafeMutablePointer<PangoItem>(newValue.item_ptr)
        }
    }

    /// corresponding `PangoGlyphString`.
    @inlinable var glyphs: GlyphStringRef! {
        /// corresponding `PangoGlyphString`.
        get {
            let rv = GlyphStringRef(gconstpointer: gconstpointer(glyph_item_ptr.pointee.glyphs))
            return rv
        }
        /// corresponding `PangoGlyphString`.
         set {
            glyph_item_ptr.pointee.glyphs = UnsafeMutablePointer<PangoGlyphString>(newValue.glyph_string_ptr)
        }
    }

}



