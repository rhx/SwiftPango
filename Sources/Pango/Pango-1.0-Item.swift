import CGLib
import CPango
import GLib
import GLibObject

// MARK: - Item Record

/// The `ItemProtocol` protocol exposes the methods and properties of an underlying `PangoItem` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Item`.
/// Alternatively, use `ItemRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoItem` structure stores information about a segment of text.
/// 
/// You typically obtain `PangoItems` by itemizing a piece of text
/// with [func`itemize`].
public protocol ItemProtocol {
        /// Untyped pointer to the underlying `PangoItem` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoItem` instance.
    var item_ptr: UnsafeMutablePointer<PangoItem>! { get }

    /// Required Initialiser for types conforming to `ItemProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ItemRef` type acts as a lightweight Swift reference to an underlying `PangoItem` instance.
/// It exposes methods that can operate on this data type through `ItemProtocol` conformance.
/// Use `ItemRef` only as an `unowned` reference to an existing `PangoItem` instance.
///
/// The `PangoItem` structure stores information about a segment of text.
/// 
/// You typically obtain `PangoItems` by itemizing a piece of text
/// with [func`itemize`].
public struct ItemRef: ItemProtocol {
        /// Untyped pointer to the underlying `PangoItem` instance.
    /// For type-safe access, use the generated, typed pointer `item_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ItemRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoItem>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoItem>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoItem>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoItem>?) {
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

    /// Reference intialiser for a related type that implements `ItemProtocol`
    @inlinable init<T: ItemProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ItemProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ItemProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ItemProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ItemProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ItemProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `PangoItem` structure initialized to default values.
    @inlinable init() {
        let rv = pango_item_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `Item` type acts as an owner of an underlying `PangoItem` instance.
/// It provides the methods that can operate on this data type through `ItemProtocol` conformance.
/// Use `Item` as a strong reference or owner of a `PangoItem` instance.
///
/// The `PangoItem` structure stores information about a segment of text.
/// 
/// You typically obtain `PangoItems` by itemizing a piece of text
/// with [func`itemize`].
open class Item: ItemProtocol {
        /// Untyped pointer to the underlying `PangoItem` instance.
    /// For type-safe access, use the generated, typed pointer `item_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Item` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoItem>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Item` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoItem>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Item` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Item` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Item` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoItem>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Item` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoItem>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoItem` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Item` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoItem>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoItem, cannot ref(item_ptr)
    }

    /// Reference intialiser for a related type that implements `ItemProtocol`
    /// `PangoItem` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ItemProtocol`
    @inlinable public init<T: ItemProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoItem, cannot ref(item_ptr)
    }

    /// Do-nothing destructor for `PangoItem`.
    deinit {
        // no reference counting for PangoItem, cannot unref(item_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ItemProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ItemProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoItem, cannot ref(item_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ItemProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ItemProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoItem, cannot ref(item_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ItemProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ItemProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoItem, cannot ref(item_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ItemProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ItemProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoItem, cannot ref(item_ptr)
    }

    /// Creates a new `PangoItem` structure initialized to default values.
    @inlinable public init() {
        let rv = pango_item_new()
        ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no Item properties

// MARK: no Item signals

// MARK: Item has no signals
// MARK: Item Record: ItemProtocol extension (methods and fields)
public extension ItemProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoItem` instance.
    @inlinable var item_ptr: UnsafeMutablePointer<PangoItem>! { return ptr?.assumingMemoryBound(to: PangoItem.self) }

    /// Add attributes to a `PangoItem`.
    /// 
    /// The idea is that you have attributes that don't affect itemization,
    /// such as font features, so you filter them out using
    /// [method`Pango.AttrList.filter`], itemize your text, then reapply the
    /// attributes to the resulting items using this function.
    /// 
    /// The `iter` should be positioned before the range of the item,
    /// and will be advanced past it. This function is meant to be called
    /// in a loop over the items resulting from itemization, while passing
    /// the iter to each call.
    @inlinable func applyAttrs<AttrIteratorT: AttrIteratorProtocol>(iter: AttrIteratorT) {
        pango_item_apply_attrs(item_ptr, iter.attr_iterator_ptr)
    
    }

    /// Copy an existing `PangoItem` structure.
    @inlinable func copy() -> ItemRef! {
        guard let rv = ItemRef(gconstpointer: gconstpointer(pango_item_copy(item_ptr))) else { return nil }
        return rv
    }

    /// Free a `PangoItem` and all associated memory.
    @inlinable func free() {
        pango_item_free(item_ptr)
    
    }

    /// Modifies `orig` to cover only the text after `split_index`, and
    /// returns a new item that covers the text before `split_index` that
    /// used to be in `orig`.
    /// 
    /// You can think of `split_index` as the length of the returned item.
    /// `split_index` may not be 0, and it may not be greater than or equal
    /// to the length of `orig` (that is, there must be at least one byte
    /// assigned to each item, you can't create a zero-length item).
    /// `split_offset` is the length of the first item in chars, and must be
    /// provided because the text used to generate the item isn't available,
    /// so ``pango_item_split()`` can't count the char length of the split items
    /// itself.
    @inlinable func split(splitIndex: Int, splitOffset: Int) -> ItemRef! {
        guard let rv = ItemRef(gconstpointer: gconstpointer(pango_item_split(item_ptr, gint(splitIndex), gint(splitOffset)))) else { return nil }
        return rv
    }

    /// byte offset of the start of this item in text.
    @inlinable var offset: gint {
        /// byte offset of the start of this item in text.
        get {
            let rv = item_ptr.pointee.offset
            return rv
        }
        /// byte offset of the start of this item in text.
         set {
            item_ptr.pointee.offset = newValue
        }
    }

    /// length of this item in bytes.
    @inlinable var length: gint {
        /// length of this item in bytes.
        get {
            let rv = item_ptr.pointee.length
            return rv
        }
        /// length of this item in bytes.
         set {
            item_ptr.pointee.length = newValue
        }
    }

    /// number of Unicode characters in the item.
    @inlinable var numChars: gint {
        /// number of Unicode characters in the item.
        get {
            let rv = item_ptr.pointee.num_chars
            return rv
        }
        /// number of Unicode characters in the item.
         set {
            item_ptr.pointee.num_chars = newValue
        }
    }

    /// analysis results for the item.
    @inlinable var analysis: PangoAnalysis {
        /// analysis results for the item.
        get {
            let rv = item_ptr.pointee.analysis
            return rv
        }
        /// analysis results for the item.
         set {
            item_ptr.pointee.analysis = newValue
        }
    }

}



