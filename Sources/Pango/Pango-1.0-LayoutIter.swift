import CGLib
import CPango
import GLib
import GLibObject

// MARK: - LayoutIter Record

/// The `LayoutIterProtocol` protocol exposes the methods and properties of an underlying `PangoLayoutIter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LayoutIter`.
/// Alternatively, use `LayoutIterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `PangoLayoutIter` can be used to iterate over the visual
/// extents of a `PangoLayout`.
/// 
/// To obtain a `PangoLayoutIter`, use [method`Pango.Layout.get_iter`].
/// 
/// The `PangoLayoutIter` structure is opaque, and has no user-visible fields.
public protocol LayoutIterProtocol {
        /// Untyped pointer to the underlying `PangoLayoutIter` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoLayoutIter` instance.
    var layout_iter_ptr: UnsafeMutablePointer<PangoLayoutIter>! { get }

    /// Required Initialiser for types conforming to `LayoutIterProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `LayoutIterRef` type acts as a lightweight Swift reference to an underlying `PangoLayoutIter` instance.
/// It exposes methods that can operate on this data type through `LayoutIterProtocol` conformance.
/// Use `LayoutIterRef` only as an `unowned` reference to an existing `PangoLayoutIter` instance.
///
/// A `PangoLayoutIter` can be used to iterate over the visual
/// extents of a `PangoLayout`.
/// 
/// To obtain a `PangoLayoutIter`, use [method`Pango.Layout.get_iter`].
/// 
/// The `PangoLayoutIter` structure is opaque, and has no user-visible fields.
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
/// A `PangoLayoutIter` can be used to iterate over the visual
/// extents of a `PangoLayout`.
/// 
/// To obtain a `PangoLayoutIter`, use [method`Pango.Layout.get_iter`].
/// 
/// The `PangoLayoutIter` structure is opaque, and has no user-visible fields.
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
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

// MARK: LayoutIter has no signals
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
    /// in the layout, if on the `nil` run (see [method`Pango.LayoutIter.get_run`]).
    @inlinable func getIndex() -> Int {
        let rv = Int(pango_layout_iter_get_index(layout_iter_ptr))
        return rv
    }

    /// Gets the layout associated with a `PangoLayoutIter`.
    @inlinable func getLayout() -> LayoutRef! {
        let rv = LayoutRef(gconstpointer: gconstpointer(pango_layout_iter_get_layout(layout_iter_ptr)))
        return rv
    }

    /// Obtains the extents of the `PangoLayout` being iterated over.
    /// `ink_rect` or `logical_rect` can be `nil` if you aren't interested in them.
    @inlinable func getLayoutExtents(inkRect: RectangleRef? = nil, logicalRect: RectangleRef? = nil) {
        pango_layout_iter_get_layout_extents(layout_iter_ptr, inkRect?._ptr, logicalRect?._ptr)
    
    }
    /// Obtains the extents of the `PangoLayout` being iterated over.
    /// `ink_rect` or `logical_rect` can be `nil` if you aren't interested in them.
    @inlinable func getLayoutExtents<RectangleT: RectangleProtocol>(inkRect: RectangleT?, logicalRect: RectangleT?) {
        pango_layout_iter_get_layout_extents(layout_iter_ptr, inkRect?._ptr, logicalRect?._ptr)
    
    }

    /// Gets the current line.
    /// 
    /// Use the faster [method`Pango.LayoutIter.get_line_readonly`] if
    /// you do not plan to modify the contents of the line (glyphs,
    /// glyph widths, etc.).
    @inlinable func getLine() -> LayoutLineRef! {
        let rv = LayoutLineRef(gconstpointer: gconstpointer(pango_layout_iter_get_line(layout_iter_ptr)))
        return rv
    }

    /// Obtains the extents of the current line. `ink_rect` or `logical_rect`
    /// can be `nil` if you aren't interested in them. Extents are in layout
    /// coordinates (origin is the top-left corner of the entire
    /// `PangoLayout`). Thus the extents returned by this function will be
    /// the same width/height but not at the same x/y as the extents
    /// returned from [method`Pango.LayoutLine.get_extents`].
    @inlinable func getLineExtents(inkRect: RectangleRef? = nil, logicalRect: RectangleRef? = nil) {
        pango_layout_iter_get_line_extents(layout_iter_ptr, inkRect?._ptr, logicalRect?._ptr)
    
    }
    /// Obtains the extents of the current line. `ink_rect` or `logical_rect`
    /// can be `nil` if you aren't interested in them. Extents are in layout
    /// coordinates (origin is the top-left corner of the entire
    /// `PangoLayout`). Thus the extents returned by this function will be
    /// the same width/height but not at the same x/y as the extents
    /// returned from [method`Pango.LayoutLine.get_extents`].
    @inlinable func getLineExtents<RectangleT: RectangleProtocol>(inkRect: RectangleT?, logicalRect: RectangleT?) {
        pango_layout_iter_get_line_extents(layout_iter_ptr, inkRect?._ptr, logicalRect?._ptr)
    
    }

    /// Gets the current line for read-only access.
    /// 
    /// This is a faster alternative to [method`Pango.LayoutIter.get_line`],
    /// but the user is not expected to modify the contents of the line
    /// (glyphs, glyph widths, etc.).
    @inlinable func getLineReadonly() -> LayoutLineRef! {
        let rv = LayoutLineRef(gconstpointer: gconstpointer(pango_layout_iter_get_line_readonly(layout_iter_ptr)))
        return rv
    }

    /// Divides the vertical space in the `PangoLayout` being iterated over
    /// between the lines in the layout, and returns the space belonging to
    /// the current line. A line's range includes the line's logical extents,
    /// plus half of the spacing above and below the line, if
    /// [method`Pango.Layout.set_spacing`] has been called to set layout spacing.
    /// The Y positions are in layout coordinates (origin at top left of the
    /// entire layout).
    /// 
    /// Note: Since 1.44, Pango uses line heights for placing lines, and there
    /// may be gaps between the ranges returned by this function.
    @inlinable func getLineYrange(y0_: UnsafeMutablePointer<gint>! = nil, y1_: UnsafeMutablePointer<gint>! = nil) {
        pango_layout_iter_get_line_yrange(layout_iter_ptr, y0_, y1_)
    
    }

    /// Gets the current run. When iterating by run, at the end of each
    /// line, there's a position with a `nil` run, so this function can return
    /// `nil`. The `nil` run at the end of each line ensures that all lines have
    /// at least one run, even lines consisting of only a newline.
    /// 
    /// Use the faster [method`Pango.LayoutIter.get_run_readonly`] if you do not
    /// plan to modify the contents of the run (glyphs, glyph widths, etc.).
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
    /// This is a faster alternative to [method`Pango.LayoutIter.get_run`],
    /// but the user is not expected to modify the contents of the run (glyphs,
    /// glyph widths, etc.).
    @inlinable func getRunReadonly() -> UnsafeMutablePointer<PangoLayoutRun>? {
        let rv = pango_layout_iter_get_run_readonly(layout_iter_ptr)
        return rv
    }

    /// Moves `iter` forward to the next character in visual order.
    /// If `iter` was already at the end of the layout, returns `false`.
    @inlinable func nextChar() -> Bool {
        let rv = ((pango_layout_iter_next_char(layout_iter_ptr)) != 0)
        return rv
    }

    /// Moves `iter` forward to the next cluster in visual order.
    /// If `iter` was already at the end of the layout, returns `false`.
    @inlinable func nextCluster() -> Bool {
        let rv = ((pango_layout_iter_next_cluster(layout_iter_ptr)) != 0)
        return rv
    }

    /// Moves `iter` forward to the start of the next line.
    /// If `iter` is already on the last line, returns `false`.
    @inlinable func nextLine() -> Bool {
        let rv = ((pango_layout_iter_next_line(layout_iter_ptr)) != 0)
        return rv
    }

    /// Moves `iter` forward to the next run in visual order.
    /// If `iter` was already at the end of the layout, returns `false`.
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
    /// in the layout, if on the `nil` run (see [method`Pango.LayoutIter.get_run`]).
    @inlinable var index: Int {
        /// Gets the current byte index. Note that iterating forward by char
        /// moves in visual order, not logical order, so indexes may not be
        /// sequential. Also, the index may be equal to the length of the text
        /// in the layout, if on the `nil` run (see [method`Pango.LayoutIter.get_run`]).
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
    /// Use the faster [method`Pango.LayoutIter.get_line_readonly`] if
    /// you do not plan to modify the contents of the line (glyphs,
    /// glyph widths, etc.).
    @inlinable var line: LayoutLineRef! {
        /// Gets the current line.
        /// 
        /// Use the faster [method`Pango.LayoutIter.get_line_readonly`] if
        /// you do not plan to modify the contents of the line (glyphs,
        /// glyph widths, etc.).
        get {
            let rv = LayoutLineRef(gconstpointer: gconstpointer(pango_layout_iter_get_line(layout_iter_ptr)))
            return rv
        }
    }

    /// Gets the current line for read-only access.
    /// 
    /// This is a faster alternative to [method`Pango.LayoutIter.get_line`],
    /// but the user is not expected to modify the contents of the line
    /// (glyphs, glyph widths, etc.).
    @inlinable var lineReadonly: LayoutLineRef! {
        /// Gets the current line for read-only access.
        /// 
        /// This is a faster alternative to [method`Pango.LayoutIter.get_line`],
        /// but the user is not expected to modify the contents of the line
        /// (glyphs, glyph widths, etc.).
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
    /// Use the faster [method`Pango.LayoutIter.get_run_readonly`] if you do not
    /// plan to modify the contents of the run (glyphs, glyph widths, etc.).
    @inlinable var run: UnsafeMutablePointer<PangoLayoutRun>? {
        /// Gets the current run. When iterating by run, at the end of each
        /// line, there's a position with a `nil` run, so this function can return
        /// `nil`. The `nil` run at the end of each line ensures that all lines have
        /// at least one run, even lines consisting of only a newline.
        /// 
        /// Use the faster [method`Pango.LayoutIter.get_run_readonly`] if you do not
        /// plan to modify the contents of the run (glyphs, glyph widths, etc.).
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
    /// This is a faster alternative to [method`Pango.LayoutIter.get_run`],
    /// but the user is not expected to modify the contents of the run (glyphs,
    /// glyph widths, etc.).
    @inlinable var runReadonly: UnsafeMutablePointer<PangoLayoutRun>? {
        /// Gets the current run. When iterating by run, at the end of each
        /// line, there's a position with a `nil` run, so this function can return
        /// `nil`. The `nil` run at the end of each line ensures that all lines have
        /// at least one run, even lines consisting of only a newline.
        /// 
        /// This is a faster alternative to [method`Pango.LayoutIter.get_run`],
        /// but the user is not expected to modify the contents of the run (glyphs,
        /// glyph widths, etc.).
        get {
            let rv = pango_layout_iter_get_run_readonly(layout_iter_ptr)
            return rv
        }
    }


}



