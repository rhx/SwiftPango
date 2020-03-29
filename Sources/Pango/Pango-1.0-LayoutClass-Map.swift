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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoLayoutClass` instance.
    var _ptr: UnsafeMutablePointer<PangoLayoutClass> { get }
}

/// The `LayoutClassRef` type acts as a lightweight Swift reference to an underlying `PangoLayoutClass` instance.
/// It exposes methods that can operate on this data type through `LayoutClassProtocol` conformance.
/// Use `LayoutClassRef` only as an `unowned` reference to an existing `PangoLayoutClass` instance.
///

public struct LayoutClassRef: LayoutClassProtocol {
    /// Untyped pointer to the underlying `PangoLayoutClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension LayoutClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoLayoutClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `LayoutClassProtocol`
    init<T: LayoutClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LayoutClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<PangoLayoutClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoLayoutClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `LayoutClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<PangoLayoutClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoLayoutClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `LayoutClassProtocol`
    /// `PangoLayoutClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `LayoutClassProtocol`
    public init<T: LayoutClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for PangoLayoutClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`PangoLayoutClass`.
    deinit {
        // no reference counting for PangoLayoutClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoLayoutClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoLayoutClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoLayoutClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoLayoutClass, cannot ref(cast(_ptr))
    }



}

// MARK: - no LayoutClass properties

// MARK: - no signals


public extension LayoutClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoLayoutClass` instance.
    var _ptr: UnsafeMutablePointer<PangoLayoutClass> { return ptr.assumingMemoryBound(to: PangoLayoutClass.self) }

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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoLayoutIter` instance.
    var layout_iter_ptr: UnsafeMutablePointer<PangoLayoutIter> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension LayoutIterRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoLayoutIter>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `LayoutIterProtocol`
    init<T: LayoutIterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutIterProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutIterProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutIterProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutIterProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutIterProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LayoutIter` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<PangoLayoutIter>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoLayoutIter` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `LayoutIter` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<PangoLayoutIter>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoLayoutIter, cannot ref(cast(layout_iter_ptr))
    }

    /// Reference intialiser for a related type that implements `LayoutIterProtocol`
    /// `PangoLayoutIter` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `LayoutIterProtocol`
    public init<T: LayoutIterProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.layout_iter_ptr)
        // no reference counting for PangoLayoutIter, cannot ref(cast(layout_iter_ptr))
    }

    /// Do-nothing destructor for`PangoLayoutIter`.
    deinit {
        // no reference counting for PangoLayoutIter, cannot unref(cast(layout_iter_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoLayoutIter, cannot ref(cast(layout_iter_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutIterProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutIterProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoLayoutIter, cannot ref(cast(layout_iter_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutIterProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutIterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoLayoutIter, cannot ref(cast(layout_iter_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoLayoutIter, cannot ref(cast(layout_iter_ptr))
    }



}

// MARK: - no LayoutIter properties

// MARK: - no signals


public extension LayoutIterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoLayoutIter` instance.
    var layout_iter_ptr: UnsafeMutablePointer<PangoLayoutIter> { return ptr.assumingMemoryBound(to: PangoLayoutIter.self) }

    /// Determines whether `iter` is on the last line of the layout.
    func atLastLine() -> Bool {
        let rv = pango_layout_iter_at_last_line(cast(layout_iter_ptr))
        return Bool(rv != 0)
    }

    /// Copies a `PangoLayoutIter`.
    func copy() -> UnsafeMutablePointer<PangoLayoutIter>! {
        let rv = pango_layout_iter_copy(cast(layout_iter_ptr))
        return cast(rv)
    }

    /// Frees an iterator that's no longer in use.
    func free() {
        pango_layout_iter_free(cast(layout_iter_ptr))
    
    }

    /// Gets the Y position of the current line's baseline, in layout
    /// coordinates (origin at top left of the entire layout).
    func getBaseline() -> CInt {
        let rv = pango_layout_iter_get_baseline(cast(layout_iter_ptr))
        return rv
    }

    /// Gets the extents of the current character, in layout coordinates
    /// (origin is the top left of the entire layout). Only logical extents
    /// can sensibly be obtained for characters; ink extents make sense only
    /// down to the level of clusters.
    func getCharExtents(logicalRect logical_rect: RectangleProtocol) {
        pango_layout_iter_get_char_extents(cast(layout_iter_ptr), cast(logical_rect.ptr))
    
    }

    /// Gets the extents of the current cluster, in layout coordinates
    /// (origin is the top left of the entire layout).
    func getClusterExtents(inkRect ink_rect: RectangleProtocol, logicalRect logical_rect: RectangleProtocol) {
        pango_layout_iter_get_cluster_extents(cast(layout_iter_ptr), cast(ink_rect.ptr), cast(logical_rect.ptr))
    
    }

    /// Gets the current byte index. Note that iterating forward by char
    /// moves in visual order, not logical order, so indexes may not be
    /// sequential. Also, the index may be equal to the length of the text
    /// in the layout, if on the `nil` run (see `pango_layout_iter_get_run()`).
    func getIndex() -> CInt {
        let rv = pango_layout_iter_get_index(cast(layout_iter_ptr))
        return rv
    }

    /// Gets the layout associated with a `PangoLayoutIter`.
    func getLayout() -> UnsafeMutablePointer<PangoLayout>! {
        let rv = pango_layout_iter_get_layout(cast(layout_iter_ptr))
        return cast(rv)
    }

    /// Obtains the extents of the `PangoLayout` being iterated
    /// over. `ink_rect` or `logical_rect` can be `nil` if you
    /// aren't interested in them.
    func getLayoutExtents(inkRect ink_rect: RectangleProtocol, logicalRect logical_rect: RectangleProtocol) {
        pango_layout_iter_get_layout_extents(cast(layout_iter_ptr), cast(ink_rect.ptr), cast(logical_rect.ptr))
    
    }

    /// Gets the current line.
    /// 
    /// Use the faster `pango_layout_iter_get_line_readonly()` if you do not plan
    /// to modify the contents of the line (glyphs, glyph widths, etc.).
    func getLine() -> UnsafeMutablePointer<PangoLayoutLine>! {
        let rv = pango_layout_iter_get_line(cast(layout_iter_ptr))
        return cast(rv)
    }

    /// Obtains the extents of the current line. `ink_rect` or `logical_rect`
    /// can be `nil` if you aren't interested in them. Extents are in layout
    /// coordinates (origin is the top-left corner of the entire
    /// `PangoLayout`).  Thus the extents returned by this function will be
    /// the same width/height but not at the same x/y as the extents
    /// returned from `pango_layout_line_get_extents()`.
    func getLineExtents(inkRect ink_rect: RectangleProtocol, logicalRect logical_rect: RectangleProtocol) {
        pango_layout_iter_get_line_extents(cast(layout_iter_ptr), cast(ink_rect.ptr), cast(logical_rect.ptr))
    
    }

    /// Gets the current line for read-only access.
    /// 
    /// This is a faster alternative to `pango_layout_iter_get_line()`,
    /// but the user is not expected
    /// to modify the contents of the line (glyphs, glyph widths, etc.).
    func getLineReadonly() -> UnsafeMutablePointer<PangoLayoutLine>! {
        let rv = pango_layout_iter_get_line_readonly(cast(layout_iter_ptr))
        return cast(rv)
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
    func getLineYrange(y0_: UnsafeMutablePointer<CInt>, y1_: UnsafeMutablePointer<CInt>) {
        pango_layout_iter_get_line_yrange(cast(layout_iter_ptr), cast(y0_), cast(y1_))
    
    }

    /// Gets the current run. When iterating by run, at the end of each
    /// line, there's a position with a `nil` run, so this function can return
    /// `nil`. The `nil` run at the end of each line ensures that all lines have
    /// at least one run, even lines consisting of only a newline.
    /// 
    /// Use the faster `pango_layout_iter_get_run_readonly()` if you do not plan
    /// to modify the contents of the run (glyphs, glyph widths, etc.).
    func getRun() -> UnsafeMutablePointer<PangoLayoutRun>! {
        let rv = pango_layout_iter_get_run(cast(layout_iter_ptr))
        return cast(rv)
    }

    /// Gets the extents of the current run in layout coordinates
    /// (origin is the top left of the entire layout).
    func getRunExtents(inkRect ink_rect: RectangleProtocol, logicalRect logical_rect: RectangleProtocol) {
        pango_layout_iter_get_run_extents(cast(layout_iter_ptr), cast(ink_rect.ptr), cast(logical_rect.ptr))
    
    }

    /// Gets the current run. When iterating by run, at the end of each
    /// line, there's a position with a `nil` run, so this function can return
    /// `nil`. The `nil` run at the end of each line ensures that all lines have
    /// at least one run, even lines consisting of only a newline.
    /// 
    /// This is a faster alternative to `pango_layout_iter_get_run()`,
    /// but the user is not expected
    /// to modify the contents of the run (glyphs, glyph widths, etc.).
    func getRunReadonly() -> UnsafeMutablePointer<PangoLayoutRun>! {
        let rv = pango_layout_iter_get_run_readonly(cast(layout_iter_ptr))
        return cast(rv)
    }

    /// Moves `iter` forward to the next character in visual order. If `iter` was already at
    /// the end of the layout, returns `false`.
    func nextChar() -> Bool {
        let rv = pango_layout_iter_next_char(cast(layout_iter_ptr))
        return Bool(rv != 0)
    }

    /// Moves `iter` forward to the next cluster in visual order. If `iter`
    /// was already at the end of the layout, returns `false`.
    func nextCluster() -> Bool {
        let rv = pango_layout_iter_next_cluster(cast(layout_iter_ptr))
        return Bool(rv != 0)
    }

    /// Moves `iter` forward to the start of the next line. If `iter` is
    /// already on the last line, returns `false`.
    func nextLine() -> Bool {
        let rv = pango_layout_iter_next_line(cast(layout_iter_ptr))
        return Bool(rv != 0)
    }

    /// Moves `iter` forward to the next run in visual order. If `iter` was
    /// already at the end of the layout, returns `false`.
    func nextRun() -> Bool {
        let rv = pango_layout_iter_next_run(cast(layout_iter_ptr))
        return Bool(rv != 0)
    }
    /// Gets the Y position of the current line's baseline, in layout
    /// coordinates (origin at top left of the entire layout).
    var baseline: CInt {
        /// Gets the Y position of the current line's baseline, in layout
        /// coordinates (origin at top left of the entire layout).
        get {
            let rv = pango_layout_iter_get_baseline(cast(layout_iter_ptr))
            return rv
        }
    }

    /// Gets the current byte index. Note that iterating forward by char
    /// moves in visual order, not logical order, so indexes may not be
    /// sequential. Also, the index may be equal to the length of the text
    /// in the layout, if on the `nil` run (see `pango_layout_iter_get_run()`).
    var index: CInt {
        /// Gets the current byte index. Note that iterating forward by char
        /// moves in visual order, not logical order, so indexes may not be
        /// sequential. Also, the index may be equal to the length of the text
        /// in the layout, if on the `nil` run (see `pango_layout_iter_get_run()`).
        get {
            let rv = pango_layout_iter_get_index(cast(layout_iter_ptr))
            return rv
        }
    }

    /// Gets the layout associated with a `PangoLayoutIter`.
    var layout: UnsafeMutablePointer<PangoLayout>! {
        /// Gets the layout associated with a `PangoLayoutIter`.
        get {
            let rv = pango_layout_iter_get_layout(cast(layout_iter_ptr))
            return cast(rv)
        }
    }

    /// Gets the current line.
    /// 
    /// Use the faster `pango_layout_iter_get_line_readonly()` if you do not plan
    /// to modify the contents of the line (glyphs, glyph widths, etc.).
    var line: UnsafeMutablePointer<PangoLayoutLine>! {
        /// Gets the current line.
        /// 
        /// Use the faster `pango_layout_iter_get_line_readonly()` if you do not plan
        /// to modify the contents of the line (glyphs, glyph widths, etc.).
        get {
            let rv = pango_layout_iter_get_line(cast(layout_iter_ptr))
            return cast(rv)
        }
    }

    /// Gets the current line for read-only access.
    /// 
    /// This is a faster alternative to `pango_layout_iter_get_line()`,
    /// but the user is not expected
    /// to modify the contents of the line (glyphs, glyph widths, etc.).
    var lineReadonly: UnsafeMutablePointer<PangoLayoutLine>! {
        /// Gets the current line for read-only access.
        /// 
        /// This is a faster alternative to `pango_layout_iter_get_line()`,
        /// but the user is not expected
        /// to modify the contents of the line (glyphs, glyph widths, etc.).
        get {
            let rv = pango_layout_iter_get_line_readonly(cast(layout_iter_ptr))
            return cast(rv)
        }
    }

    /// Gets the current run. When iterating by run, at the end of each
    /// line, there's a position with a `nil` run, so this function can return
    /// `nil`. The `nil` run at the end of each line ensures that all lines have
    /// at least one run, even lines consisting of only a newline.
    /// 
    /// Use the faster `pango_layout_iter_get_run_readonly()` if you do not plan
    /// to modify the contents of the run (glyphs, glyph widths, etc.).
    var run: UnsafeMutablePointer<PangoLayoutRun>! {
        /// Gets the current run. When iterating by run, at the end of each
        /// line, there's a position with a `nil` run, so this function can return
        /// `nil`. The `nil` run at the end of each line ensures that all lines have
        /// at least one run, even lines consisting of only a newline.
        /// 
        /// Use the faster `pango_layout_iter_get_run_readonly()` if you do not plan
        /// to modify the contents of the run (glyphs, glyph widths, etc.).
        get {
            let rv = pango_layout_iter_get_run(cast(layout_iter_ptr))
            return cast(rv)
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
    var runReadonly: UnsafeMutablePointer<PangoLayoutRun>! {
        /// Gets the current run. When iterating by run, at the end of each
        /// line, there's a position with a `nil` run, so this function can return
        /// `nil`. The `nil` run at the end of each line ensures that all lines have
        /// at least one run, even lines consisting of only a newline.
        /// 
        /// This is a faster alternative to `pango_layout_iter_get_run()`,
        /// but the user is not expected
        /// to modify the contents of the run (glyphs, glyph widths, etc.).
        get {
            let rv = pango_layout_iter_get_run_readonly(cast(layout_iter_ptr))
            return cast(rv)
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoLayoutLine` instance.
    var layout_line_ptr: UnsafeMutablePointer<PangoLayoutLine> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension LayoutLineRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoLayoutLine>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `LayoutLineProtocol`
    init<T: LayoutLineProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutLineProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutLineProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutLineProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutLineProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutLineProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LayoutLine` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<PangoLayoutLine>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `PangoLayoutLine`.
    /// i.e., ownership is transferred to the `LayoutLine` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<PangoLayoutLine>) {
        ptr = UnsafeMutableRawPointer(op)
        pango_layout_line_ref(cast(layout_line_ptr))
    }

    /// Reference intialiser for a related type that implements `LayoutLineProtocol`
    /// Will retain `PangoLayoutLine`.
    /// - Parameter other: an instance of a related type that implements `LayoutLineProtocol`
    public init<T: LayoutLineProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.layout_line_ptr)
        pango_layout_line_ref(cast(layout_line_ptr))
    }

    /// Releases the underlying `PangoLayoutLine` instance using `pango_layout_line_unref`.
    deinit {
        pango_layout_line_unref(cast(layout_line_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutLineProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutLineProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        pango_layout_line_ref(cast(layout_line_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutLineProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutLineProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        pango_layout_line_ref(cast(layout_line_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutLineProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutLineProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        pango_layout_line_ref(cast(layout_line_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutLineProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutLineProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        pango_layout_line_ref(cast(layout_line_ptr))
    }



}

// MARK: - no LayoutLine properties

// MARK: - no signals


public extension LayoutLineProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoLayoutLine` instance.
    var layout_line_ptr: UnsafeMutablePointer<PangoLayoutLine> { return ptr.assumingMemoryBound(to: PangoLayoutLine.self) }

    /// Computes the logical and ink extents of a layout line. See
    /// `pango_font_get_glyph_extents()` for details about the interpretation
    /// of the rectangles.
    func getExtents(inkRect ink_rect: RectangleProtocol, logicalRect logical_rect: RectangleProtocol) {
        pango_layout_line_get_extents(cast(layout_line_ptr), cast(ink_rect.ptr), cast(logical_rect.ptr))
    
    }

    /// Computes the height of the line, ie the distance between
    /// this and the previous lines baseline.
    func get(height: UnsafeMutablePointer<CInt>) {
        pango_layout_line_get_height(cast(layout_line_ptr), cast(height))
    
    }

    /// Computes the logical and ink extents of `layout_line` in device units.
    /// This function just calls `pango_layout_line_get_extents()` followed by
    /// two `pango_extents_to_pixels()` calls, rounding `ink_rect` and `logical_rect`
    /// such that the rounded rectangles fully contain the unrounded one (that is,
    /// passes them as first argument to `pango_extents_to_pixels()`).
    func getPixelExtents(inkRect ink_rect: RectangleProtocol, logicalRect logical_rect: RectangleProtocol) {
        pango_layout_line_get_pixel_extents(cast(layout_line_ptr), cast(ink_rect.ptr), cast(logical_rect.ptr))
    
    }

    /// Gets a list of visual ranges corresponding to a given logical range.
    /// This list is not necessarily minimal - there may be consecutive
    /// ranges which are adjacent. The ranges will be sorted from left to
    /// right. The ranges are with respect to the left edge of the entire
    /// layout, not with respect to the line.
    func getXRanges(startIndex start_index: CInt, endIndex end_index: CInt, ranges: UnsafeMutablePointer<UnsafeMutablePointer<CInt>>, nRanges n_ranges: UnsafeMutablePointer<CInt>) {
        pango_layout_line_get_x_ranges(cast(layout_line_ptr), start_index, end_index, cast(ranges), cast(n_ranges))
    
    }

    /// Converts an index within a line to a X position.
    func indexToX(index_: CInt, trailing: Bool, xPos x_pos: UnsafeMutablePointer<CInt>) {
        pango_layout_line_index_to_x(cast(layout_line_ptr), index_, gboolean(trailing ? 1 : 0), cast(x_pos))
    
    }

    /// Increase the reference count of a `PangoLayoutLine` by one.
    func ref() -> UnsafeMutablePointer<PangoLayoutLine>! {
        let rv = pango_layout_line_ref(cast(layout_line_ptr))
        return cast(rv)
    }

    /// Decrease the reference count of a `PangoLayoutLine` by one.
    /// If the result is zero, the line and all associated memory
    /// will be freed.
    func unref() {
        pango_layout_line_unref(cast(layout_line_ptr))
    
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
    func xToIndex(xPos x_pos: CInt, index_: UnsafeMutablePointer<CInt>, trailing: UnsafeMutablePointer<CInt>) -> Bool {
        let rv = pango_layout_line_x_to_index(cast(layout_line_ptr), x_pos, cast(index_), cast(trailing))
        return Bool(rv != 0)
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoLogAttr` instance.
    var _ptr: UnsafeMutablePointer<PangoLogAttr> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension LogAttrRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoLogAttr>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `LogAttrProtocol`
    init<T: LogAttrProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogAttrProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogAttrProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogAttrProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogAttrProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogAttrProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LogAttr` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<PangoLogAttr>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoLogAttr` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `LogAttr` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<PangoLogAttr>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoLogAttr, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `LogAttrProtocol`
    /// `PangoLogAttr` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `LogAttrProtocol`
    public init<T: LogAttrProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for PangoLogAttr, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`PangoLogAttr`.
    deinit {
        // no reference counting for PangoLogAttr, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogAttrProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogAttrProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoLogAttr, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogAttrProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogAttrProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoLogAttr, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogAttrProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogAttrProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoLogAttr, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogAttrProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogAttrProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoLogAttr, cannot ref(cast(_ptr))
    }



}

// MARK: - no LogAttr properties

// MARK: - no signals


public extension LogAttrProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoLogAttr` instance.
    var _ptr: UnsafeMutablePointer<PangoLogAttr> { return ptr.assumingMemoryBound(to: PangoLogAttr.self) }

    /// This is the default break algorithm. It applies Unicode
    /// rules without language-specific tailoring, therefore
    /// the `analyis` argument is unused and can be `nil`.
    /// 
    /// See `pango_tailor_break()` for language-specific breaks.
    func defaultBreak(text: UnsafePointer<gchar>, length: CInt, analysis: AnalysisProtocol, attrsLen attrs_len: CInt) {
        pango_default_break(text, length, cast(analysis.ptr), cast(_ptr), attrs_len)
    
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoMap` instance.
    var _ptr: UnsafeMutablePointer<PangoMap> { get }
}

/// The `MapRef` type acts as a lightweight Swift reference to an underlying `PangoMap` instance.
/// It exposes methods that can operate on this data type through `MapProtocol` conformance.
/// Use `MapRef` only as an `unowned` reference to an existing `PangoMap` instance.
///

public struct MapRef: MapProtocol {
    /// Untyped pointer to the underlying `PangoMap` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MapRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoMap>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MapProtocol`
    init<T: MapProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Map` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<PangoMap>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoMap` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Map` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<PangoMap>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoMap, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `MapProtocol`
    /// `PangoMap` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `MapProtocol`
    public init<T: MapProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for PangoMap, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`PangoMap`.
    deinit {
        // no reference counting for PangoMap, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoMap, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoMap, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoMap, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoMap, cannot ref(cast(_ptr))
    }



}

// MARK: - no Map properties

// MARK: - no signals


public extension MapProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoMap` instance.
    var _ptr: UnsafeMutablePointer<PangoMap> { return ptr.assumingMemoryBound(to: PangoMap.self) }

    /// Do not use.  Does not do anything.
    ///
    /// **get_engine is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) func getEngine(script: Script) -> UnsafeMutablePointer<PangoEngine>! {
        let rv = pango_map_get_engine(cast(_ptr), script)
        return cast(rv)
    }

    /// Do not use.  Does not do anything.
    ///
    /// **get_engines is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) func getEngines(script: Script, exactEngines exact_engines: SListProtocol, fallbackEngines fallback_engines: SListProtocol) {
        pango_map_get_engines(cast(_ptr), script, cast(exact_engines.ptr), cast(fallback_engines.ptr))
    
    }
}



