import CGLib
import CPango
import GLib
import GLibObject

// MARK: - LayoutClass Record

/// The `LayoutClassProtocol` protocol exposes the methods and properties of an underlying `PangoLayoutClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LayoutClass`.
/// Alternatively, use `LayoutClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol LayoutClassProtocol {
        /// Untyped pointer to the underlying `PangoLayoutClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoLayoutClass` instance.
    var _ptr: UnsafeMutablePointer<PangoLayoutClass>! { get }

}

/// The `LayoutClassRef` type acts as a lightweight Swift reference to an underlying `PangoLayoutClass` instance.
/// It exposes methods that can operate on this data type through `LayoutClassProtocol` conformance.
/// Use `LayoutClassRef` only as an `unowned` reference to an existing `PangoLayoutClass` instance.
///

public struct LayoutClassRef: LayoutClassProtocol {
        /// Untyped pointer to the underlying `PangoLayoutClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LayoutClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoLayoutClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoLayoutClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoLayoutClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoLayoutClass>?) {
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

    /// Reference intialiser for a related type that implements `LayoutClassProtocol`
    @inlinable init<T: LayoutClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LayoutClass` type acts as an owner of an underlying `PangoLayoutClass` instance.
/// It provides the methods that can operate on this data type through `LayoutClassProtocol` conformance.
/// Use `LayoutClass` as a strong reference or owner of a `PangoLayoutClass` instance.
///

open class LayoutClass: LayoutClassProtocol {
        /// Untyped pointer to the underlying `PangoLayoutClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LayoutClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoLayoutClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LayoutClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoLayoutClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LayoutClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LayoutClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LayoutClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoLayoutClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LayoutClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoLayoutClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoLayoutClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `LayoutClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoLayoutClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoLayoutClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `LayoutClassProtocol`
    /// `PangoLayoutClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `LayoutClassProtocol`
    @inlinable public init<T: LayoutClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoLayoutClass, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `PangoLayoutClass`.
    deinit {
        // no reference counting for PangoLayoutClass, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoLayoutClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoLayoutClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoLayoutClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoLayoutClass, cannot ref(_ptr)
    }



}

// MARK: no LayoutClass properties

// MARK: no LayoutClass signals


// MARK: LayoutClass Record: LayoutClassProtocol extension (methods and fields)
public extension LayoutClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoLayoutClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoLayoutClass>! { return ptr?.assumingMemoryBound(to: PangoLayoutClass.self) }



}



// MARK: - LayoutIter Record

/// The `LayoutIterProtocol` protocol exposes the methods and properties of an underlying `PangoLayoutIter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LayoutIter`.
/// Alternatively, use `LayoutIterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `PangoLayoutIter` structure can be used to
/// iterate over the visual extents of a `PangoLayout`.
/// 
/// The `PangoLayoutIter` structure is opaque, and
/// has no user-visible fields.
public protocol LayoutIterProtocol {
        /// Untyped pointer to the underlying `PangoLayoutIter` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoLayoutIter` instance.
    var layout_iter_ptr: UnsafeMutablePointer<PangoLayoutIter>! { get }

}

/// The `LayoutIterRef` type acts as a lightweight Swift reference to an underlying `PangoLayoutIter` instance.
/// It exposes methods that can operate on this data type through `LayoutIterProtocol` conformance.
/// Use `LayoutIterRef` only as an `unowned` reference to an existing `PangoLayoutIter` instance.
///
/// A `PangoLayoutIter` structure can be used to
/// iterate over the visual extents of a `PangoLayout`.
/// 
/// The `PangoLayoutIter` structure is opaque, and
/// has no user-visible fields.
public struct LayoutIterRef: LayoutIterProtocol {
        /// Untyped pointer to the underlying `PangoLayoutIter` instance.
    /// For type-safe access, use the generated, typed pointer `layout_iter_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LayoutIterRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoLayoutIter>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoLayoutIter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoLayoutIter>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoLayoutIter>?) {
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

    /// Reference intialiser for a related type that implements `LayoutIterProtocol`
    @inlinable init<T: LayoutIterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutIterProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutIterProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutIterProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutIterProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutIterProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LayoutIter` type acts as an owner of an underlying `PangoLayoutIter` instance.
/// It provides the methods that can operate on this data type through `LayoutIterProtocol` conformance.
/// Use `LayoutIter` as a strong reference or owner of a `PangoLayoutIter` instance.
///
/// A `PangoLayoutIter` structure can be used to
/// iterate over the visual extents of a `PangoLayout`.
/// 
/// The `PangoLayoutIter` structure is opaque, and
/// has no user-visible fields.
open class LayoutIter: LayoutIterProtocol {
        /// Untyped pointer to the underlying `PangoLayoutIter` instance.
    /// For type-safe access, use the generated, typed pointer `layout_iter_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LayoutIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoLayoutIter>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LayoutIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoLayoutIter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LayoutIter` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LayoutIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LayoutIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoLayoutIter>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LayoutIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoLayoutIter>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoLayoutIter` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `LayoutIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoLayoutIter>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoLayoutIter, cannot ref(layout_iter_ptr)
    }

    /// Reference intialiser for a related type that implements `LayoutIterProtocol`
    /// `PangoLayoutIter` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `LayoutIterProtocol`
    @inlinable public init<T: LayoutIterProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoLayoutIter, cannot ref(layout_iter_ptr)
    }

    /// Do-nothing destructor for `PangoLayoutIter`.
    deinit {
        // no reference counting for PangoLayoutIter, cannot unref(layout_iter_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoLayoutIter, cannot ref(layout_iter_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutIterProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutIterProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoLayoutIter, cannot ref(layout_iter_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutIterProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutIterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoLayoutIter, cannot ref(layout_iter_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoLayoutIter, cannot ref(layout_iter_ptr)
    }



}

// MARK: no LayoutIter properties

// MARK: no LayoutIter signals


// MARK: LayoutIter Record: LayoutIterProtocol extension (methods and fields)
public extension LayoutIterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoLayoutIter` instance.
    @inlinable var layout_iter_ptr: UnsafeMutablePointer<PangoLayoutIter>! { return ptr?.assumingMemoryBound(to: PangoLayoutIter.self) }

    /// Determines whether `iter` is on the last line of the layout.
    @inlinable func atLastLine() -> Bool {
        let rv = ((pango_layout_iter_at_last_line(layout_iter_ptr)) != 0)
        return rv
    }

    /// Copies a `PangoLayoutIter`.
    @inlinable func copy() -> LayoutIterRef! {
        guard let rv = LayoutIterRef(gconstpointer: gconstpointer(pango_layout_iter_copy(layout_iter_ptr))) else { return nil }
        return rv
    }

    /// Frees an iterator that's no longer in use.
    @inlinable func free() {
        pango_layout_iter_free(layout_iter_ptr)
    
    }

    /// Gets the Y position of the current line's baseline, in layout
    /// coordinates (origin at top left of the entire layout).
    @inlinable func getBaseline() -> Int {
        let rv = Int(pango_layout_iter_get_baseline(layout_iter_ptr))
        return rv
    }

    /// Gets the extents of the current character, in layout coordinates
    /// (origin is the top left of the entire layout). Only logical extents
    /// can sensibly be obtained for characters; ink extents make sense only
    /// down to the level of clusters.
    @inlinable func getCharExtents<RectangleT: RectangleProtocol>(logicalRect: RectangleT) {
        pango_layout_iter_get_char_extents(layout_iter_ptr, logicalRect._ptr)
    
    }

    /// Gets the extents of the current cluster, in layout coordinates
    /// (origin is the top left of the entire layout).
    @inlinable func getClusterExtents(inkRect: RectangleRef? = nil, logicalRect: RectangleRef? = nil) {
        pango_layout_iter_get_cluster_extents(layout_iter_ptr, inkRect?._ptr, logicalRect?._ptr)
    
    }
    /// Gets the extents of the current cluster, in layout coordinates
    /// (origin is the top left of the entire layout).
    @inlinable func getClusterExtents<RectangleT: RectangleProtocol>(inkRect: RectangleT?, logicalRect: RectangleT?) {
        pango_layout_iter_get_cluster_extents(layout_iter_ptr, inkRect?._ptr, logicalRect?._ptr)
    
    }

    /// Gets the current byte index. Note that iterating forward by char
    /// moves in visual order, not logical order, so indexes may not be
    /// sequential. Also, the index may be equal to the length of the text
    /// in the layout, if on the `nil` run (see `pango_layout_iter_get_run()`).
    @inlinable func getIndex() -> Int {
        let rv = Int(pango_layout_iter_get_index(layout_iter_ptr))
        return rv
    }

    /// Gets the layout associated with a `PangoLayoutIter`.
    @inlinable func getLayout() -> LayoutRef! {
        let rv = LayoutRef(gconstpointer: gconstpointer(pango_layout_iter_get_layout(layout_iter_ptr)))
        return rv
    }

    /// Obtains the extents of the `PangoLayout` being iterated
    /// over. `ink_rect` or `logical_rect` can be `nil` if you
    /// aren't interested in them.
    @inlinable func getLayoutExtents(inkRect: RectangleRef? = nil, logicalRect: RectangleRef? = nil) {
        pango_layout_iter_get_layout_extents(layout_iter_ptr, inkRect?._ptr, logicalRect?._ptr)
    
    }
    /// Obtains the extents of the `PangoLayout` being iterated
    /// over. `ink_rect` or `logical_rect` can be `nil` if you
    /// aren't interested in them.
    @inlinable func getLayoutExtents<RectangleT: RectangleProtocol>(inkRect: RectangleT?, logicalRect: RectangleT?) {
        pango_layout_iter_get_layout_extents(layout_iter_ptr, inkRect?._ptr, logicalRect?._ptr)
    
    }

    /// Gets the current line.
    /// 
    /// Use the faster `pango_layout_iter_get_line_readonly()` if you do not plan
    /// to modify the contents of the line (glyphs, glyph widths, etc.).
    @inlinable func getLine() -> LayoutLineRef! {
        let rv = LayoutLineRef(gconstpointer: gconstpointer(pango_layout_iter_get_line(layout_iter_ptr)))
        return rv
    }

    /// Obtains the extents of the current line. `ink_rect` or `logical_rect`
    /// can be `nil` if you aren't interested in them. Extents are in layout
    /// coordinates (origin is the top-left corner of the entire
    /// `PangoLayout`).  Thus the extents returned by this function will be
    /// the same width/height but not at the same x/y as the extents
    /// returned from `pango_layout_line_get_extents()`.
    @inlinable func getLineExtents(inkRect: RectangleRef? = nil, logicalRect: RectangleRef? = nil) {
        pango_layout_iter_get_line_extents(layout_iter_ptr, inkRect?._ptr, logicalRect?._ptr)
    
    }
    /// Obtains the extents of the current line. `ink_rect` or `logical_rect`
    /// can be `nil` if you aren't interested in them. Extents are in layout
    /// coordinates (origin is the top-left corner of the entire
    /// `PangoLayout`).  Thus the extents returned by this function will be
    /// the same width/height but not at the same x/y as the extents
    /// returned from `pango_layout_line_get_extents()`.
    @inlinable func getLineExtents<RectangleT: RectangleProtocol>(inkRect: RectangleT?, logicalRect: RectangleT?) {
        pango_layout_iter_get_line_extents(layout_iter_ptr, inkRect?._ptr, logicalRect?._ptr)
    
    }

    /// Gets the current line for read-only access.
    /// 
    /// This is a faster alternative to `pango_layout_iter_get_line()`,
    /// but the user is not expected
    /// to modify the contents of the line (glyphs, glyph widths, etc.).
    @inlinable func getLineReadonly() -> LayoutLineRef! {
        let rv = LayoutLineRef(gconstpointer: gconstpointer(pango_layout_iter_get_line_readonly(layout_iter_ptr)))
        return rv
    }

    /// Divides the vertical space in the `PangoLayout` being iterated over
    /// between the lines in the layout, and returns the space belonging to
    /// the current line.  A line's range includes the line's logical
    /// extents, plus half of the spacing above and below the line, if
    /// `pango_layout_set_spacing()` has been called to set layout spacing.
    /// The Y positions are in layout coordinates (origin at top left of the
    /// entire layout).
    /// 
    /// Note: Since 1.44, Pango uses line heights for placing lines,
    /// and there may be gaps between the ranges returned by this
    /// function.
    @inlinable func getLineYrange(y0_: UnsafeMutablePointer<gint>! = nil, y1_: UnsafeMutablePointer<gint>! = nil) {
        pango_layout_iter_get_line_yrange(layout_iter_ptr, y0_, y1_)
    
    }

    /// Gets the current run. When iterating by run, at the end of each
    /// line, there's a position with a `nil` run, so this function can return
    /// `nil`. The `nil` run at the end of each line ensures that all lines have
    /// at least one run, even lines consisting of only a newline.
    /// 
    /// Use the faster `pango_layout_iter_get_run_readonly()` if you do not plan
    /// to modify the contents of the run (glyphs, glyph widths, etc.).
    @inlinable func getRun() -> UnsafeMutablePointer<PangoLayoutRun>? {
        let rv = pango_layout_iter_get_run(layout_iter_ptr)
        return rv
    }

    /// Gets the extents of the current run in layout coordinates
    /// (origin is the top left of the entire layout).
    @inlinable func getRunExtents(inkRect: RectangleRef? = nil, logicalRect: RectangleRef? = nil) {
        pango_layout_iter_get_run_extents(layout_iter_ptr, inkRect?._ptr, logicalRect?._ptr)
    
    }
    /// Gets the extents of the current run in layout coordinates
    /// (origin is the top left of the entire layout).
    @inlinable func getRunExtents<RectangleT: RectangleProtocol>(inkRect: RectangleT?, logicalRect: RectangleT?) {
        pango_layout_iter_get_run_extents(layout_iter_ptr, inkRect?._ptr, logicalRect?._ptr)
    
    }

    /// Gets the current run. When iterating by run, at the end of each
    /// line, there's a position with a `nil` run, so this function can return
    /// `nil`. The `nil` run at the end of each line ensures that all lines have
    /// at least one run, even lines consisting of only a newline.
    /// 
    /// This is a faster alternative to `pango_layout_iter_get_run()`,
    /// but the user is not expected
    /// to modify the contents of the run (glyphs, glyph widths, etc.).
    @inlinable func getRunReadonly() -> UnsafeMutablePointer<PangoLayoutRun>? {
        let rv = pango_layout_iter_get_run_readonly(layout_iter_ptr)
        return rv
    }

    /// Moves `iter` forward to the next character in visual order. If `iter` was already at
    /// the end of the layout, returns `false`.
    @inlinable func nextChar() -> Bool {
        let rv = ((pango_layout_iter_next_char(layout_iter_ptr)) != 0)
        return rv
    }

    /// Moves `iter` forward to the next cluster in visual order. If `iter`
    /// was already at the end of the layout, returns `false`.
    @inlinable func nextCluster() -> Bool {
        let rv = ((pango_layout_iter_next_cluster(layout_iter_ptr)) != 0)
        return rv
    }

    /// Moves `iter` forward to the start of the next line. If `iter` is
    /// already on the last line, returns `false`.
    @inlinable func nextLine() -> Bool {
        let rv = ((pango_layout_iter_next_line(layout_iter_ptr)) != 0)
        return rv
    }

    /// Moves `iter` forward to the next run in visual order. If `iter` was
    /// already at the end of the layout, returns `false`.
    @inlinable func nextRun() -> Bool {
        let rv = ((pango_layout_iter_next_run(layout_iter_ptr)) != 0)
        return rv
    }
    /// Gets the Y position of the current line's baseline, in layout
    /// coordinates (origin at top left of the entire layout).
    @inlinable var baseline: Int {
        /// Gets the Y position of the current line's baseline, in layout
        /// coordinates (origin at top left of the entire layout).
        get {
            let rv = Int(pango_layout_iter_get_baseline(layout_iter_ptr))
            return rv
        }
    }

    /// Gets the current byte index. Note that iterating forward by char
    /// moves in visual order, not logical order, so indexes may not be
    /// sequential. Also, the index may be equal to the length of the text
    /// in the layout, if on the `nil` run (see `pango_layout_iter_get_run()`).
    @inlinable var index: Int {
        /// Gets the current byte index. Note that iterating forward by char
        /// moves in visual order, not logical order, so indexes may not be
        /// sequential. Also, the index may be equal to the length of the text
        /// in the layout, if on the `nil` run (see `pango_layout_iter_get_run()`).
        get {
            let rv = Int(pango_layout_iter_get_index(layout_iter_ptr))
            return rv
        }
    }

    /// Gets the layout associated with a `PangoLayoutIter`.
    @inlinable var layout: LayoutRef! {
        /// Gets the layout associated with a `PangoLayoutIter`.
        get {
            let rv = LayoutRef(gconstpointer: gconstpointer(pango_layout_iter_get_layout(layout_iter_ptr)))
            return rv
        }
    }

    /// Gets the current line.
    /// 
    /// Use the faster `pango_layout_iter_get_line_readonly()` if you do not plan
    /// to modify the contents of the line (glyphs, glyph widths, etc.).
    @inlinable var line: LayoutLineRef! {
        /// Gets the current line.
        /// 
        /// Use the faster `pango_layout_iter_get_line_readonly()` if you do not plan
        /// to modify the contents of the line (glyphs, glyph widths, etc.).
        get {
            let rv = LayoutLineRef(gconstpointer: gconstpointer(pango_layout_iter_get_line(layout_iter_ptr)))
            return rv
        }
    }

    /// Gets the current line for read-only access.
    /// 
    /// This is a faster alternative to `pango_layout_iter_get_line()`,
    /// but the user is not expected
    /// to modify the contents of the line (glyphs, glyph widths, etc.).
    @inlinable var lineReadonly: LayoutLineRef! {
        /// Gets the current line for read-only access.
        /// 
        /// This is a faster alternative to `pango_layout_iter_get_line()`,
        /// but the user is not expected
        /// to modify the contents of the line (glyphs, glyph widths, etc.).
        get {
            let rv = LayoutLineRef(gconstpointer: gconstpointer(pango_layout_iter_get_line_readonly(layout_iter_ptr)))
            return rv
        }
    }

    /// Gets the current run. When iterating by run, at the end of each
    /// line, there's a position with a `nil` run, so this function can return
    /// `nil`. The `nil` run at the end of each line ensures that all lines have
    /// at least one run, even lines consisting of only a newline.
    /// 
    /// Use the faster `pango_layout_iter_get_run_readonly()` if you do not plan
    /// to modify the contents of the run (glyphs, glyph widths, etc.).
    @inlinable var run: UnsafeMutablePointer<PangoLayoutRun>? {
        /// Gets the current run. When iterating by run, at the end of each
        /// line, there's a position with a `nil` run, so this function can return
        /// `nil`. The `nil` run at the end of each line ensures that all lines have
        /// at least one run, even lines consisting of only a newline.
        /// 
        /// Use the faster `pango_layout_iter_get_run_readonly()` if you do not plan
        /// to modify the contents of the run (glyphs, glyph widths, etc.).
        get {
            let rv = pango_layout_iter_get_run(layout_iter_ptr)
            return rv
        }
    }

    /// Gets the current run. When iterating by run, at the end of each
    /// line, there's a position with a `nil` run, so this function can return
    /// `nil`. The `nil` run at the end of each line ensures that all lines have
    /// at least one run, even lines consisting of only a newline.
    /// 
    /// This is a faster alternative to `pango_layout_iter_get_run()`,
    /// but the user is not expected
    /// to modify the contents of the run (glyphs, glyph widths, etc.).
    @inlinable var runReadonly: UnsafeMutablePointer<PangoLayoutRun>? {
        /// Gets the current run. When iterating by run, at the end of each
        /// line, there's a position with a `nil` run, so this function can return
        /// `nil`. The `nil` run at the end of each line ensures that all lines have
        /// at least one run, even lines consisting of only a newline.
        /// 
        /// This is a faster alternative to `pango_layout_iter_get_run()`,
        /// but the user is not expected
        /// to modify the contents of the run (glyphs, glyph widths, etc.).
        get {
            let rv = pango_layout_iter_get_run_readonly(layout_iter_ptr)
            return rv
        }
    }


}



// MARK: - LayoutLine Record

/// The `LayoutLineProtocol` protocol exposes the methods and properties of an underlying `PangoLayoutLine` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LayoutLine`.
/// Alternatively, use `LayoutLineRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoLayoutLine` structure represents one of the lines resulting
/// from laying out a paragraph via `PangoLayout`. `PangoLayoutLine`
/// structures are obtained by calling `pango_layout_get_line()` and
/// are only valid until the text, attributes, or settings of the
/// parent `PangoLayout` are modified.
/// 
/// Routines for rendering PangoLayout objects are provided in
/// code specific to each rendering system.
public protocol LayoutLineProtocol {
        /// Untyped pointer to the underlying `PangoLayoutLine` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoLayoutLine` instance.
    var layout_line_ptr: UnsafeMutablePointer<PangoLayoutLine>! { get }

}

/// The `LayoutLineRef` type acts as a lightweight Swift reference to an underlying `PangoLayoutLine` instance.
/// It exposes methods that can operate on this data type through `LayoutLineProtocol` conformance.
/// Use `LayoutLineRef` only as an `unowned` reference to an existing `PangoLayoutLine` instance.
///
/// The `PangoLayoutLine` structure represents one of the lines resulting
/// from laying out a paragraph via `PangoLayout`. `PangoLayoutLine`
/// structures are obtained by calling `pango_layout_get_line()` and
/// are only valid until the text, attributes, or settings of the
/// parent `PangoLayout` are modified.
/// 
/// Routines for rendering PangoLayout objects are provided in
/// code specific to each rendering system.
public struct LayoutLineRef: LayoutLineProtocol {
        /// Untyped pointer to the underlying `PangoLayoutLine` instance.
    /// For type-safe access, use the generated, typed pointer `layout_line_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LayoutLineRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoLayoutLine>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoLayoutLine>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoLayoutLine>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoLayoutLine>?) {
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

    /// Reference intialiser for a related type that implements `LayoutLineProtocol`
    @inlinable init<T: LayoutLineProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutLineProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutLineProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutLineProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutLineProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutLineProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LayoutLine` type acts as a reference-counted owner of an underlying `PangoLayoutLine` instance.
/// It provides the methods that can operate on this data type through `LayoutLineProtocol` conformance.
/// Use `LayoutLine` as a strong reference or owner of a `PangoLayoutLine` instance.
///
/// The `PangoLayoutLine` structure represents one of the lines resulting
/// from laying out a paragraph via `PangoLayout`. `PangoLayoutLine`
/// structures are obtained by calling `pango_layout_get_line()` and
/// are only valid until the text, attributes, or settings of the
/// parent `PangoLayout` are modified.
/// 
/// Routines for rendering PangoLayout objects are provided in
/// code specific to each rendering system.
open class LayoutLine: LayoutLineProtocol {
        /// Untyped pointer to the underlying `PangoLayoutLine` instance.
    /// For type-safe access, use the generated, typed pointer `layout_line_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LayoutLine` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoLayoutLine>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LayoutLine` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoLayoutLine>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LayoutLine` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LayoutLine` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LayoutLine` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoLayoutLine>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LayoutLine` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoLayoutLine>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `PangoLayoutLine`.
    /// i.e., ownership is transferred to the `LayoutLine` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoLayoutLine>) {
        ptr = UnsafeMutableRawPointer(op)
        pango_layout_line_ref(ptr.assumingMemoryBound(to: PangoLayoutLine.self))
    }

    /// Reference intialiser for a related type that implements `LayoutLineProtocol`
    /// Will retain `PangoLayoutLine`.
    /// - Parameter other: an instance of a related type that implements `LayoutLineProtocol`
    @inlinable public init<T: LayoutLineProtocol>(_ other: T) {
        ptr = other.ptr
        pango_layout_line_ref(ptr.assumingMemoryBound(to: PangoLayoutLine.self))
    }

    /// Releases the underlying `PangoLayoutLine` instance using `pango_layout_line_unref`.
    deinit {
        pango_layout_line_unref(ptr.assumingMemoryBound(to: PangoLayoutLine.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutLineProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutLineProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        pango_layout_line_ref(ptr.assumingMemoryBound(to: PangoLayoutLine.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutLineProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutLineProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        pango_layout_line_ref(ptr.assumingMemoryBound(to: PangoLayoutLine.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutLineProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutLineProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        pango_layout_line_ref(ptr.assumingMemoryBound(to: PangoLayoutLine.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutLineProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutLineProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        pango_layout_line_ref(ptr.assumingMemoryBound(to: PangoLayoutLine.self))
    }



}

// MARK: no LayoutLine properties

// MARK: no LayoutLine signals


// MARK: LayoutLine Record: LayoutLineProtocol extension (methods and fields)
public extension LayoutLineProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoLayoutLine` instance.
    @inlinable var layout_line_ptr: UnsafeMutablePointer<PangoLayoutLine>! { return ptr?.assumingMemoryBound(to: PangoLayoutLine.self) }

    /// Computes the logical and ink extents of a layout line. See
    /// `pango_font_get_glyph_extents()` for details about the interpretation
    /// of the rectangles.
    @inlinable func getExtents(inkRect: RectangleRef? = nil, logicalRect: RectangleRef? = nil) {
        pango_layout_line_get_extents(layout_line_ptr, inkRect?._ptr, logicalRect?._ptr)
    
    }
    /// Computes the logical and ink extents of a layout line. See
    /// `pango_font_get_glyph_extents()` for details about the interpretation
    /// of the rectangles.
    @inlinable func getExtents<RectangleT: RectangleProtocol>(inkRect: RectangleT?, logicalRect: RectangleT?) {
        pango_layout_line_get_extents(layout_line_ptr, inkRect?._ptr, logicalRect?._ptr)
    
    }

    /// Computes the height of the line, ie the distance between
    /// this and the previous lines baseline.
    @inlinable func get(height: UnsafeMutablePointer<gint>! = nil) {
        pango_layout_line_get_height(layout_line_ptr, height)
    
    }

    /// Computes the logical and ink extents of `layout_line` in device units.
    /// This function just calls `pango_layout_line_get_extents()` followed by
    /// two `pango_extents_to_pixels()` calls, rounding `ink_rect` and `logical_rect`
    /// such that the rounded rectangles fully contain the unrounded one (that is,
    /// passes them as first argument to `pango_extents_to_pixels()`).
    @inlinable func getPixelExtents(inkRect: RectangleRef? = nil, logicalRect: RectangleRef? = nil) {
        pango_layout_line_get_pixel_extents(layout_line_ptr, inkRect?._ptr, logicalRect?._ptr)
    
    }
    /// Computes the logical and ink extents of `layout_line` in device units.
    /// This function just calls `pango_layout_line_get_extents()` followed by
    /// two `pango_extents_to_pixels()` calls, rounding `ink_rect` and `logical_rect`
    /// such that the rounded rectangles fully contain the unrounded one (that is,
    /// passes them as first argument to `pango_extents_to_pixels()`).
    @inlinable func getPixelExtents<RectangleT: RectangleProtocol>(inkRect: RectangleT?, logicalRect: RectangleT?) {
        pango_layout_line_get_pixel_extents(layout_line_ptr, inkRect?._ptr, logicalRect?._ptr)
    
    }

    /// Gets a list of visual ranges corresponding to a given logical range.
    /// This list is not necessarily minimal - there may be consecutive
    /// ranges which are adjacent. The ranges will be sorted from left to
    /// right. The ranges are with respect to the left edge of the entire
    /// layout, not with respect to the line.
    @inlinable func getXRanges(startIndex: Int, endIndex: Int, ranges: UnsafeMutablePointer<UnsafeMutablePointer<CInt>?>!, nRanges: UnsafeMutablePointer<gint>!) {
        pango_layout_line_get_x_ranges(layout_line_ptr, gint(startIndex), gint(endIndex), ranges, nRanges)
    
    }

    /// Converts an index within a line to a X position.
    @inlinable func indexToX(index_: Int, trailing: Bool, xPos: UnsafeMutablePointer<gint>!) {
        pango_layout_line_index_to_x(layout_line_ptr, gint(index_), gboolean((trailing) ? 1 : 0), xPos)
    
    }

    /// Increase the reference count of a `PangoLayoutLine` by one.
    @discardableResult @inlinable func ref() -> LayoutLineRef! {
        guard let rv = LayoutLineRef(gconstpointer: gconstpointer(pango_layout_line_ref(layout_line_ptr))) else { return nil }
        return rv
    }

    /// Decrease the reference count of a `PangoLayoutLine` by one.
    /// If the result is zero, the line and all associated memory
    /// will be freed.
    @inlinable func unref() {
        pango_layout_line_unref(layout_line_ptr)
    
    }

    /// Converts from x offset to the byte index of the corresponding
    /// character within the text of the layout. If `x_pos` is outside the line,
    /// `index_` and `trailing` will point to the very first or very last position
    /// in the line. This determination is based on the resolved direction
    /// of the paragraph; for example, if the resolved direction is
    /// right-to-left, then an X position to the right of the line (after it)
    /// results in 0 being stored in `index_` and `trailing`. An X position to the
    /// left of the line results in `index_` pointing to the (logical) last
    /// grapheme in the line and `trailing` being set to the number of characters
    /// in that grapheme. The reverse is true for a left-to-right line.
    @inlinable func xToIndex(xPos: Int, index_: UnsafeMutablePointer<gint>!, trailing: UnsafeMutablePointer<gint>!) -> Bool {
        let rv = ((pango_layout_line_x_to_index(layout_line_ptr, gint(xPos), index_, trailing)) != 0)
        return rv
    }

    /// the layout this line belongs to, might be `nil`
    @inlinable var layout: LayoutRef! {
        /// the layout this line belongs to, might be `nil`
        get {
            let rv = LayoutRef(gconstpointer: gconstpointer(layout_line_ptr.pointee.layout))
            return rv
        }
        /// the layout this line belongs to, might be `nil`
         set {
            layout_line_ptr.pointee.layout = UnsafeMutablePointer<PangoLayout>(newValue.layout_ptr)
        }
    }

    /// start of line as byte index into layout->text
    @inlinable var startIndex: gint {
        /// start of line as byte index into layout->text
        get {
            let rv = layout_line_ptr.pointee.start_index
            return rv
        }
        /// start of line as byte index into layout->text
         set {
            layout_line_ptr.pointee.start_index = newValue
        }
    }

    /// length of line in bytes
    @inlinable var length: gint {
        /// length of line in bytes
        get {
            let rv = layout_line_ptr.pointee.length
            return rv
        }
        /// length of line in bytes
         set {
            layout_line_ptr.pointee.length = newValue
        }
    }

    /// list of runs in the
    ///        line, from left to right
    @inlinable var runs: SListRef! {
        /// list of runs in the
        ///        line, from left to right
        get {
            let rv = SListRef(gconstpointer: gconstpointer(layout_line_ptr.pointee.runs))
            return rv
        }
        /// list of runs in the
        ///        line, from left to right
         set {
            layout_line_ptr.pointee.runs = UnsafeMutablePointer<GSList>(newValue._ptr)
        }
    }

    /// `TRUE` if this is the first line of the paragraph
    @inlinable var isParagraphStart: guint {
        /// `TRUE` if this is the first line of the paragraph
        get {
            let rv = layout_line_ptr.pointee.is_paragraph_start
            return rv
        }
        /// `TRUE` if this is the first line of the paragraph
         set {
            layout_line_ptr.pointee.is_paragraph_start = newValue
        }
    }

    /// `Resolved` PangoDirection of line
    @inlinable var resolvedDir: guint {
        /// `Resolved` PangoDirection of line
        get {
            let rv = layout_line_ptr.pointee.resolved_dir
            return rv
        }
        /// `Resolved` PangoDirection of line
         set {
            layout_line_ptr.pointee.resolved_dir = newValue
        }
    }

}



// MARK: - LogAttr Record

/// The `LogAttrProtocol` protocol exposes the methods and properties of an underlying `PangoLogAttr` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LogAttr`.
/// Alternatively, use `LogAttrRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoLogAttr` structure stores information
/// about the attributes of a single character.
public protocol LogAttrProtocol {
        /// Untyped pointer to the underlying `PangoLogAttr` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoLogAttr` instance.
    var _ptr: UnsafeMutablePointer<PangoLogAttr>! { get }

}

/// The `LogAttrRef` type acts as a lightweight Swift reference to an underlying `PangoLogAttr` instance.
/// It exposes methods that can operate on this data type through `LogAttrProtocol` conformance.
/// Use `LogAttrRef` only as an `unowned` reference to an existing `PangoLogAttr` instance.
///
/// The `PangoLogAttr` structure stores information
/// about the attributes of a single character.
public struct LogAttrRef: LogAttrProtocol {
        /// Untyped pointer to the underlying `PangoLogAttr` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LogAttrRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoLogAttr>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoLogAttr>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoLogAttr>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoLogAttr>?) {
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

    /// Reference intialiser for a related type that implements `LogAttrProtocol`
    @inlinable init<T: LogAttrProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogAttrProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogAttrProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogAttrProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogAttrProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogAttrProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LogAttr` type acts as an owner of an underlying `PangoLogAttr` instance.
/// It provides the methods that can operate on this data type through `LogAttrProtocol` conformance.
/// Use `LogAttr` as a strong reference or owner of a `PangoLogAttr` instance.
///
/// The `PangoLogAttr` structure stores information
/// about the attributes of a single character.
open class LogAttr: LogAttrProtocol {
        /// Untyped pointer to the underlying `PangoLogAttr` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LogAttr` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoLogAttr>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LogAttr` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoLogAttr>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LogAttr` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LogAttr` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LogAttr` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoLogAttr>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LogAttr` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoLogAttr>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoLogAttr` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `LogAttr` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoLogAttr>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoLogAttr, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `LogAttrProtocol`
    /// `PangoLogAttr` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `LogAttrProtocol`
    @inlinable public init<T: LogAttrProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoLogAttr, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `PangoLogAttr`.
    deinit {
        // no reference counting for PangoLogAttr, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogAttrProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogAttrProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoLogAttr, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogAttrProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogAttrProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoLogAttr, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogAttrProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogAttrProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoLogAttr, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogAttrProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogAttrProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoLogAttr, cannot ref(_ptr)
    }



}

// MARK: no LogAttr properties

// MARK: no LogAttr signals


// MARK: LogAttr Record: LogAttrProtocol extension (methods and fields)
public extension LogAttrProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoLogAttr` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoLogAttr>! { return ptr?.assumingMemoryBound(to: PangoLogAttr.self) }

    /// This is the default break algorithm. It applies Unicode
    /// rules without language-specific tailoring, therefore
    /// the `analyis` argument is unused and can be `nil`.
    /// 
    /// See `pango_tailor_break()` for language-specific breaks.
    @inlinable func defaultBreak(text: UnsafePointer<gchar>!, length: Int, analysis: AnalysisRef? = nil, attrsLen: Int) {
        pango_default_break(text, gint(length), analysis?._ptr, _ptr, gint(attrsLen))
    
    }
    /// This is the default break algorithm. It applies Unicode
    /// rules without language-specific tailoring, therefore
    /// the `analyis` argument is unused and can be `nil`.
    /// 
    /// See `pango_tailor_break()` for language-specific breaks.
    @inlinable func defaultBreak<AnalysisT: AnalysisProtocol>(text: UnsafePointer<gchar>!, length: Int, analysis: AnalysisT?, attrsLen: Int) {
        pango_default_break(text, gint(length), analysis?._ptr, _ptr, gint(attrsLen))
    
    }

    /// if set, can break line in front of character
    @inlinable var isLineBreak: guint {
        /// if set, can break line in front of character
        get {
            let rv = _ptr.pointee.is_line_break
            return rv
        }
        /// if set, can break line in front of character
         set {
            _ptr.pointee.is_line_break = newValue
        }
    }

    /// if set, must break line in front of character
    @inlinable var isMandatoryBreak: guint {
        /// if set, must break line in front of character
        get {
            let rv = _ptr.pointee.is_mandatory_break
            return rv
        }
        /// if set, must break line in front of character
         set {
            _ptr.pointee.is_mandatory_break = newValue
        }
    }

    /// if set, can break here when doing character wrapping
    @inlinable var isCharBreak: guint {
        /// if set, can break here when doing character wrapping
        get {
            let rv = _ptr.pointee.is_char_break
            return rv
        }
        /// if set, can break here when doing character wrapping
         set {
            _ptr.pointee.is_char_break = newValue
        }
    }

    /// is whitespace character
    @inlinable var isWhite: guint {
        /// is whitespace character
        get {
            let rv = _ptr.pointee.is_white
            return rv
        }
        /// is whitespace character
         set {
            _ptr.pointee.is_white = newValue
        }
    }

    /// if set, cursor can appear in front of character.
    /// i.e. this is a grapheme boundary, or the first character
    /// in the text.
    /// This flag implements Unicode's
    /// <ulink url="http://www.unicode.org/reports/tr29/">Grapheme
    /// Cluster Boundaries</ulink> semantics.
    @inlinable var isCursorPosition: guint {
        /// if set, cursor can appear in front of character.
        /// i.e. this is a grapheme boundary, or the first character
        /// in the text.
        /// This flag implements Unicode's
        /// <ulink url="http://www.unicode.org/reports/tr29/">Grapheme
        /// Cluster Boundaries</ulink> semantics.
        get {
            let rv = _ptr.pointee.is_cursor_position
            return rv
        }
        /// if set, cursor can appear in front of character.
        /// i.e. this is a grapheme boundary, or the first character
        /// in the text.
        /// This flag implements Unicode's
        /// <ulink url="http://www.unicode.org/reports/tr29/">Grapheme
        /// Cluster Boundaries</ulink> semantics.
         set {
            _ptr.pointee.is_cursor_position = newValue
        }
    }

    /// is first character in a word
    @inlinable var isWordStart: guint {
        /// is first character in a word
        get {
            let rv = _ptr.pointee.is_word_start
            return rv
        }
        /// is first character in a word
         set {
            _ptr.pointee.is_word_start = newValue
        }
    }

    /// is first non-word char after a word
    /// Note that in degenerate cases, you could have both `is_word_start`
    /// and `is_word_end` set for some character.
    @inlinable var isWordEnd: guint {
        /// is first non-word char after a word
        /// Note that in degenerate cases, you could have both `is_word_start`
        /// and `is_word_end` set for some character.
        get {
            let rv = _ptr.pointee.is_word_end
            return rv
        }
        /// is first non-word char after a word
        /// Note that in degenerate cases, you could have both `is_word_start`
        /// and `is_word_end` set for some character.
         set {
            _ptr.pointee.is_word_end = newValue
        }
    }

    /// is a sentence boundary.
    /// There are two ways to divide sentences. The first assigns all
    /// inter-sentence whitespace/control/format chars to some sentence,
    /// so all chars are in some sentence; `is_sentence_boundary` denotes
    /// the boundaries there. The second way doesn't assign
    /// between-sentence spaces, etc. to any sentence, so
    /// `is_sentence_start`/`is_sentence_end` mark the boundaries of those sentences.
    @inlinable var isSentenceBoundary: guint {
        /// is a sentence boundary.
        /// There are two ways to divide sentences. The first assigns all
        /// inter-sentence whitespace/control/format chars to some sentence,
        /// so all chars are in some sentence; `is_sentence_boundary` denotes
        /// the boundaries there. The second way doesn't assign
        /// between-sentence spaces, etc. to any sentence, so
        /// `is_sentence_start`/`is_sentence_end` mark the boundaries of those sentences.
        get {
            let rv = _ptr.pointee.is_sentence_boundary
            return rv
        }
        /// is a sentence boundary.
        /// There are two ways to divide sentences. The first assigns all
        /// inter-sentence whitespace/control/format chars to some sentence,
        /// so all chars are in some sentence; `is_sentence_boundary` denotes
        /// the boundaries there. The second way doesn't assign
        /// between-sentence spaces, etc. to any sentence, so
        /// `is_sentence_start`/`is_sentence_end` mark the boundaries of those sentences.
         set {
            _ptr.pointee.is_sentence_boundary = newValue
        }
    }

    /// is first character in a sentence
    @inlinable var isSentenceStart: guint {
        /// is first character in a sentence
        get {
            let rv = _ptr.pointee.is_sentence_start
            return rv
        }
        /// is first character in a sentence
         set {
            _ptr.pointee.is_sentence_start = newValue
        }
    }

    /// is first char after a sentence.
    /// Note that in degenerate cases, you could have both `is_sentence_start`
    /// and `is_sentence_end` set for some character. (e.g. no space after a
    /// period, so the next sentence starts right away)
    @inlinable var isSentenceEnd: guint {
        /// is first char after a sentence.
        /// Note that in degenerate cases, you could have both `is_sentence_start`
        /// and `is_sentence_end` set for some character. (e.g. no space after a
        /// period, so the next sentence starts right away)
        get {
            let rv = _ptr.pointee.is_sentence_end
            return rv
        }
        /// is first char after a sentence.
        /// Note that in degenerate cases, you could have both `is_sentence_start`
        /// and `is_sentence_end` set for some character. (e.g. no space after a
        /// period, so the next sentence starts right away)
         set {
            _ptr.pointee.is_sentence_end = newValue
        }
    }

    /// if set, backspace deletes one character
    /// rather than the entire grapheme cluster. This
    /// field is only meaningful on grapheme
    /// boundaries (where `is_cursor_position` is
    /// set).  In some languages, the full grapheme
    /// (e.g.  letter + diacritics) is considered a
    /// unit, while in others, each decomposed
    /// character in the grapheme is a unit. In the
    /// default implementation of `pango_break()`, this
    /// bit is set on all grapheme boundaries except
    /// those following Latin, Cyrillic or Greek base characters.
    @inlinable var backspaceDeletesCharacter: guint {
        /// if set, backspace deletes one character
        /// rather than the entire grapheme cluster. This
        /// field is only meaningful on grapheme
        /// boundaries (where `is_cursor_position` is
        /// set).  In some languages, the full grapheme
        /// (e.g.  letter + diacritics) is considered a
        /// unit, while in others, each decomposed
        /// character in the grapheme is a unit. In the
        /// default implementation of `pango_break()`, this
        /// bit is set on all grapheme boundaries except
        /// those following Latin, Cyrillic or Greek base characters.
        get {
            let rv = _ptr.pointee.backspace_deletes_character
            return rv
        }
        /// if set, backspace deletes one character
        /// rather than the entire grapheme cluster. This
        /// field is only meaningful on grapheme
        /// boundaries (where `is_cursor_position` is
        /// set).  In some languages, the full grapheme
        /// (e.g.  letter + diacritics) is considered a
        /// unit, while in others, each decomposed
        /// character in the grapheme is a unit. In the
        /// default implementation of `pango_break()`, this
        /// bit is set on all grapheme boundaries except
        /// those following Latin, Cyrillic or Greek base characters.
         set {
            _ptr.pointee.backspace_deletes_character = newValue
        }
    }

    /// is a whitespace character that can possibly be
    /// expanded for justification purposes. (Since: 1.18)
    @inlinable var isExpandableSpace: guint {
        /// is a whitespace character that can possibly be
        /// expanded for justification purposes. (Since: 1.18)
        get {
            let rv = _ptr.pointee.is_expandable_space
            return rv
        }
        /// is a whitespace character that can possibly be
        /// expanded for justification purposes. (Since: 1.18)
         set {
            _ptr.pointee.is_expandable_space = newValue
        }
    }

    /// is a word boundary, as defined by UAX`29`.
    /// More specifically, means that this is not a position in the middle
    /// of a word.  For example, both sides of a punctuation mark are
    /// considered word boundaries.  This flag is particularly useful when
    /// selecting text word-by-word.
    /// This flag implements Unicode's
    /// <ulink url="http://www.unicode.org/reports/tr29/">Word
    /// Boundaries</ulink> semantics. (Since: 1.22)
    @inlinable var isWordBoundary: guint {
        /// is a word boundary, as defined by UAX`29`.
        /// More specifically, means that this is not a position in the middle
        /// of a word.  For example, both sides of a punctuation mark are
        /// considered word boundaries.  This flag is particularly useful when
        /// selecting text word-by-word.
        /// This flag implements Unicode's
        /// <ulink url="http://www.unicode.org/reports/tr29/">Word
        /// Boundaries</ulink> semantics. (Since: 1.22)
        get {
            let rv = _ptr.pointee.is_word_boundary
            return rv
        }
        /// is a word boundary, as defined by UAX`29`.
        /// More specifically, means that this is not a position in the middle
        /// of a word.  For example, both sides of a punctuation mark are
        /// considered word boundaries.  This flag is particularly useful when
        /// selecting text word-by-word.
        /// This flag implements Unicode's
        /// <ulink url="http://www.unicode.org/reports/tr29/">Word
        /// Boundaries</ulink> semantics. (Since: 1.22)
         set {
            _ptr.pointee.is_word_boundary = newValue
        }
    }

}



// MARK: - Map Record

/// The `MapProtocol` protocol exposes the methods and properties of an underlying `PangoMap` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Map`.
/// Alternatively, use `MapRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MapProtocol {
        /// Untyped pointer to the underlying `PangoMap` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoMap` instance.
    var _ptr: UnsafeMutablePointer<PangoMap>! { get }

}

/// The `MapRef` type acts as a lightweight Swift reference to an underlying `PangoMap` instance.
/// It exposes methods that can operate on this data type through `MapProtocol` conformance.
/// Use `MapRef` only as an `unowned` reference to an existing `PangoMap` instance.
///

public struct MapRef: MapProtocol {
        /// Untyped pointer to the underlying `PangoMap` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MapRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoMap>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoMap>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoMap>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoMap>?) {
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

    /// Reference intialiser for a related type that implements `MapProtocol`
    @inlinable init<T: MapProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Map` type acts as an owner of an underlying `PangoMap` instance.
/// It provides the methods that can operate on this data type through `MapProtocol` conformance.
/// Use `Map` as a strong reference or owner of a `PangoMap` instance.
///

open class Map: MapProtocol {
        /// Untyped pointer to the underlying `PangoMap` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Map` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoMap>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Map` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoMap>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Map` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Map` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Map` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoMap>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Map` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoMap>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoMap` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Map` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoMap>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoMap, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `MapProtocol`
    /// `PangoMap` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `MapProtocol`
    @inlinable public init<T: MapProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoMap, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `PangoMap`.
    deinit {
        // no reference counting for PangoMap, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoMap, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoMap, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoMap, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoMap, cannot ref(_ptr)
    }



}

// MARK: no Map properties

// MARK: no Map signals


// MARK: Map Record: MapProtocol extension (methods and fields)
public extension MapProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoMap` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoMap>! { return ptr?.assumingMemoryBound(to: PangoMap.self) }

    /// Do not use.  Does not do anything.
    ///
    /// **get_engine is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) @inlinable func getEngine(script: PangoScript) -> EngineRef! {
        let rv = EngineRef(gconstpointer: gconstpointer(pango_map_get_engine(_ptr, script)))
        return rv
    }

    /// Do not use.  Does not do anything.
    ///
    /// **get_engines is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) @inlinable func getEngines(script: PangoScript, exactEngines: UnsafeMutablePointer<UnsafeMutablePointer<GSList>?>? = nil, fallbackEngines: UnsafeMutablePointer<UnsafeMutablePointer<GSList>?>? = nil) {
        pango_map_get_engines(_ptr, script, exactEngines, fallbackEngines)
    
    }


}



