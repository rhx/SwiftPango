import CGLib
import CPango
import GLib
import GLibObject

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

// MARK: LayoutLine has no signals
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



