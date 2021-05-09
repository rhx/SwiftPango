import CGLib
import CPango
import GLib
import GLibObject

// MARK: - Layout Class

/// The `LayoutProtocol` protocol exposes the methods and properties of an underlying `PangoLayout` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Layout`.
/// Alternatively, use `LayoutRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `PangoLayout` structure represents an entire paragraph of text.
/// 
/// While complete access to the layout capabilities of Pango is provided
/// using the detailed interfaces for itemization and shaping, using
/// that functionality directly involves writing a fairly large amount
/// of code. `PangoLayout` provides a high-level driver for formatting
/// entire paragraphs of text at once. This includes paragraph-level
/// functionality such as line breaking, justification, alignment and
/// ellipsization.
/// 
/// A `PangoLayout is initialized with a `PangoContext`, UTF-8 string
/// and set of attributes for that string. Once that is done, the set of
/// formatted lines can be extracted from the object, the layout can be
/// rendered, and conversion between logical character positions within
/// the layout's text, and the physical position of the resulting glyphs
/// can be made.
/// 
/// There are a number of parameters to adjust the formatting of a
/// `PangoLayout`. The following image shows adjustable parameters
/// (on the left) and font metrics (on the right):
/// 
/// ![Pango Layout Parameters](layout.png)
/// 
/// It is possible, as well, to ignore the 2-D setup,
/// and simply treat the results of a `PangoLayout` as a list of lines.
public protocol LayoutProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `PangoLayout` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoLayout` instance.
    var layout_ptr: UnsafeMutablePointer<PangoLayout>! { get }

    /// Required Initialiser for types conforming to `LayoutProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `LayoutRef` type acts as a lightweight Swift reference to an underlying `PangoLayout` instance.
/// It exposes methods that can operate on this data type through `LayoutProtocol` conformance.
/// Use `LayoutRef` only as an `unowned` reference to an existing `PangoLayout` instance.
///
/// A `PangoLayout` structure represents an entire paragraph of text.
/// 
/// While complete access to the layout capabilities of Pango is provided
/// using the detailed interfaces for itemization and shaping, using
/// that functionality directly involves writing a fairly large amount
/// of code. `PangoLayout` provides a high-level driver for formatting
/// entire paragraphs of text at once. This includes paragraph-level
/// functionality such as line breaking, justification, alignment and
/// ellipsization.
/// 
/// A `PangoLayout is initialized with a `PangoContext`, UTF-8 string
/// and set of attributes for that string. Once that is done, the set of
/// formatted lines can be extracted from the object, the layout can be
/// rendered, and conversion between logical character positions within
/// the layout's text, and the physical position of the resulting glyphs
/// can be made.
/// 
/// There are a number of parameters to adjust the formatting of a
/// `PangoLayout`. The following image shows adjustable parameters
/// (on the left) and font metrics (on the right):
/// 
/// ![Pango Layout Parameters](layout.png)
/// 
/// It is possible, as well, to ignore the 2-D setup,
/// and simply treat the results of a `PangoLayout` as a list of lines.
public struct LayoutRef: LayoutProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `PangoLayout` instance.
    /// For type-safe access, use the generated, typed pointer `layout_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LayoutRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoLayout>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoLayout>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoLayout>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoLayout>?) {
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

    /// Reference intialiser for a related type that implements `LayoutProtocol`
    @inlinable init<T: LayoutProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: LayoutProtocol>(_ other: T) -> LayoutRef { LayoutRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Create a new `PangoLayout` object with attributes initialized to
    /// default values for a particular `PangoContext`.
    @inlinable init<ContextT: ContextProtocol>( context: ContextT) {
        let rv = pango_layout_new(context.context_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `Layout` type acts as a reference-counted owner of an underlying `PangoLayout` instance.
/// It provides the methods that can operate on this data type through `LayoutProtocol` conformance.
/// Use `Layout` as a strong reference or owner of a `PangoLayout` instance.
///
/// A `PangoLayout` structure represents an entire paragraph of text.
/// 
/// While complete access to the layout capabilities of Pango is provided
/// using the detailed interfaces for itemization and shaping, using
/// that functionality directly involves writing a fairly large amount
/// of code. `PangoLayout` provides a high-level driver for formatting
/// entire paragraphs of text at once. This includes paragraph-level
/// functionality such as line breaking, justification, alignment and
/// ellipsization.
/// 
/// A `PangoLayout is initialized with a `PangoContext`, UTF-8 string
/// and set of attributes for that string. Once that is done, the set of
/// formatted lines can be extracted from the object, the layout can be
/// rendered, and conversion between logical character positions within
/// the layout's text, and the physical position of the resulting glyphs
/// can be made.
/// 
/// There are a number of parameters to adjust the formatting of a
/// `PangoLayout`. The following image shows adjustable parameters
/// (on the left) and font metrics (on the right):
/// 
/// ![Pango Layout Parameters](layout.png)
/// 
/// It is possible, as well, to ignore the 2-D setup,
/// and simply treat the results of a `PangoLayout` as a list of lines.
open class Layout: GLibObject.Object, LayoutProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Layout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoLayout>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Layout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoLayout>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Layout` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Layout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Layout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoLayout>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Layout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoLayout>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `PangoLayout`.
    /// i.e., ownership is transferred to the `Layout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoLayout>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `LayoutProtocol`
    /// Will retain `PangoLayout`.
    /// - Parameter other: an instance of a related type that implements `LayoutProtocol`
    @inlinable public init<T: LayoutProtocol>(layout other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Create a new `PangoLayout` object with attributes initialized to
    /// default values for a particular `PangoContext`.
    @inlinable public init<ContextT: ContextProtocol>( context: ContextT) {
        let rv = pango_layout_new(context.context_ptr)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

// MARK: no Layout properties

public enum LayoutSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"

}

// MARK: Layout has no signals
// MARK: Layout Class: LayoutProtocol extension (methods and fields)
public extension LayoutProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoLayout` instance.
    @inlinable var layout_ptr: UnsafeMutablePointer<PangoLayout>! { return ptr?.assumingMemoryBound(to: PangoLayout.self) }

    /// Forces recomputation of any state in the `PangoLayout` that
    /// might depend on the layout's context.
    /// 
    /// This function should be called if you make changes to the context
    /// subsequent to creating the layout.
    @inlinable func contextChanged() {
        pango_layout_context_changed(layout_ptr)
    
    }

    /// Creates a deep copy-by-value of the layout.
    /// 
    /// The attribute list, tab array, and text from the original layout
    /// are all copied by value.
    @inlinable func copy() -> LayoutRef! {
        guard let rv = LayoutRef(gconstpointer: gconstpointer(pango_layout_copy(layout_ptr))) else { return nil }
        return rv
    }

    /// Gets the alignment for the layout: how partial lines are
    /// positioned within the horizontal space available.
    @inlinable func getAlignment() -> PangoAlignment {
        let rv = pango_layout_get_alignment(layout_ptr)
        return rv
    }

    /// Gets the attribute list for the layout, if any.
    @inlinable func getAttributes() -> AttrListRef! {
        let rv = AttrListRef(gconstpointer: gconstpointer(pango_layout_get_attributes(layout_ptr)))
        return rv
    }

    /// Gets whether to calculate the base direction for the layout
    /// according to its contents.
    /// 
    /// See [method`Pango.Layout.set_auto_dir`].
    @inlinable func getAutoDir() -> Bool {
        let rv = ((pango_layout_get_auto_dir(layout_ptr)) != 0)
        return rv
    }

    /// Gets the Y position of baseline of the first line in `layout`.
    @inlinable func getBaseline() -> Int {
        let rv = Int(pango_layout_get_baseline(layout_ptr))
        return rv
    }

    /// Returns the number of Unicode characters in the
    /// the text of `layout`.
    @inlinable func getCharacterCount() -> Int {
        let rv = Int(pango_layout_get_character_count(layout_ptr))
        return rv
    }

    /// Retrieves the `PangoContext` used for this layout.
    @inlinable func getContext() -> ContextRef! {
        let rv = ContextRef(gconstpointer: gconstpointer(pango_layout_get_context(layout_ptr)))
        return rv
    }

    /// Given an index within a layout, determines the positions that of the
    /// strong and weak cursors if the insertion point is at that index.
    /// 
    /// The position of each cursor is stored as a zero-width rectangle.
    /// The strong cursor location is the location where characters of the
    /// directionality equal to the base direction of the layout are inserted.
    /// The weak cursor location is the location where characters of the
    /// directionality opposite to the base direction of the layout are inserted.
    @inlinable func getCursorPos(index_: Int, strongPos: RectangleRef? = nil, weakPos: RectangleRef? = nil) {
        pango_layout_get_cursor_pos(layout_ptr, gint(index_), strongPos?._ptr, weakPos?._ptr)
    
    }
    /// Given an index within a layout, determines the positions that of the
    /// strong and weak cursors if the insertion point is at that index.
    /// 
    /// The position of each cursor is stored as a zero-width rectangle.
    /// The strong cursor location is the location where characters of the
    /// directionality equal to the base direction of the layout are inserted.
    /// The weak cursor location is the location where characters of the
    /// directionality opposite to the base direction of the layout are inserted.
    @inlinable func getCursorPos<RectangleT: RectangleProtocol>(index_: Int, strongPos: RectangleT?, weakPos: RectangleT?) {
        pango_layout_get_cursor_pos(layout_ptr, gint(index_), strongPos?._ptr, weakPos?._ptr)
    
    }

    /// Gets the text direction at the given character position in `layout`.
    @inlinable func getDirection(index: Int) -> PangoDirection {
        let rv = pango_layout_get_direction(layout_ptr, gint(index))
        return rv
    }

    /// Gets the type of ellipsization being performed for `layout`.
    /// 
    /// See [method`Pango.Layout.set_ellipsize`].
    /// 
    /// Use [method`Pango.Layout.is_ellipsized`] to query whether any
    /// paragraphs were actually ellipsized.
    @inlinable func getEllipsize() -> PangoEllipsizeMode {
        let rv = pango_layout_get_ellipsize(layout_ptr)
        return rv
    }

    /// Computes the logical and ink extents of `layout`.
    /// 
    /// Logical extents are usually what you want for positioning things. Note
    /// that both extents may have non-zero x and y. You may want to use those
    /// to offset where you render the layout. Not doing that is a very typical
    /// bug that shows up as right-to-left layouts not being correctly positioned
    /// in a layout with a set width.
    /// 
    /// The extents are given in layout coordinates and in Pango units; layout
    /// coordinates begin at the top left corner of the layout.
    @inlinable func getExtents(inkRect: RectangleRef? = nil, logicalRect: RectangleRef? = nil) {
        pango_layout_get_extents(layout_ptr, inkRect?._ptr, logicalRect?._ptr)
    
    }
    /// Computes the logical and ink extents of `layout`.
    /// 
    /// Logical extents are usually what you want for positioning things. Note
    /// that both extents may have non-zero x and y. You may want to use those
    /// to offset where you render the layout. Not doing that is a very typical
    /// bug that shows up as right-to-left layouts not being correctly positioned
    /// in a layout with a set width.
    /// 
    /// The extents are given in layout coordinates and in Pango units; layout
    /// coordinates begin at the top left corner of the layout.
    @inlinable func getExtents<RectangleT: RectangleProtocol>(inkRect: RectangleT?, logicalRect: RectangleT?) {
        pango_layout_get_extents(layout_ptr, inkRect?._ptr, logicalRect?._ptr)
    
    }

    /// Gets the font description for the layout, if any.
    @inlinable func getFontDescription() -> FontDescriptionRef! {
        let rv = FontDescriptionRef(gconstpointer: gconstpointer(pango_layout_get_font_description(layout_ptr)))
        return rv
    }

    /// Gets the height of layout used for ellipsization.
    /// 
    /// See [method`Pango.Layout.set_height`] for details.
    @inlinable func getHeight() -> Int {
        let rv = Int(pango_layout_get_height(layout_ptr))
        return rv
    }

    /// Gets the paragraph indent width in Pango units.
    /// 
    /// A negative value indicates a hanging indentation.
    @inlinable func getIndent() -> Int {
        let rv = Int(pango_layout_get_indent(layout_ptr))
        return rv
    }

    /// Returns an iterator to iterate over the visual extents of the layout.
    @inlinable func getIter() -> LayoutIterRef! {
        let rv = LayoutIterRef(gconstpointer: gconstpointer(pango_layout_get_iter(layout_ptr)))
        return rv
    }

    /// Gets whether each complete line should be stretched to fill the entire
    /// width of the layout.
    @inlinable func getJustify() -> Bool {
        let rv = ((pango_layout_get_justify(layout_ptr)) != 0)
        return rv
    }

    /// Retrieves a particular line from a `PangoLayout`.
    /// 
    /// Use the faster [method`Pango.Layout.get_line_readonly`] if you do not
    /// plan to modify the contents of the line (glyphs, glyph widths, etc.).
    @inlinable func get(line: Int) -> LayoutLineRef! {
        let rv = LayoutLineRef(gconstpointer: gconstpointer(pango_layout_get_line(layout_ptr, gint(line))))
        return rv
    }

    /// Retrieves the count of lines for the `layout`.
    @inlinable func getLineCount() -> Int {
        let rv = Int(pango_layout_get_line_count(layout_ptr))
        return rv
    }

    /// Retrieves a particular line from a `PangoLayout`.
    /// 
    /// This is a faster alternative to [method`Pango.Layout.get_line`],
    /// but the user is not expected to modify the contents of the line
    /// (glyphs, glyph widths, etc.).
    @inlinable func getLineReadonly(line: Int) -> LayoutLineRef! {
        let rv = LayoutLineRef(gconstpointer: gconstpointer(pango_layout_get_line_readonly(layout_ptr, gint(line))))
        return rv
    }

    /// Gets the line spacing factor of `layout`.
    /// 
    /// See [method`Pango.Layout.set_line_spacing`].
    @inlinable func getLineSpacing() -> CFloat {
        let rv = pango_layout_get_line_spacing(layout_ptr)
        return rv
    }

    /// Returns the lines of the `layout` as a list.
    /// 
    /// Use the faster [method`Pango.Layout.get_lines_readonly`] if you do not
    /// plan to modify the contents of the lines (glyphs, glyph widths, etc.).
    @inlinable func getLines() -> GLib.SListRef! {
        let rv = GLib.SListRef(pango_layout_get_lines(layout_ptr))
        return rv
    }

    /// Returns the lines of the `layout` as a list.
    /// 
    /// This is a faster alternative to [method`Pango.Layout.get_lines`],
    /// but the user is not expected to modify the contents of the lines
    /// (glyphs, glyph widths, etc.).
    @inlinable func getLinesReadonly() -> GLib.SListRef! {
        let rv = GLib.SListRef(pango_layout_get_lines_readonly(layout_ptr))
        return rv
    }

    /// Retrieves an array of logical attributes for each character in
    /// the `layout`.
    @inlinable func getLog(attrs: UnsafeMutablePointer<UnsafeMutablePointer<PangoLogAttr>?>!, nAttrs: UnsafeMutablePointer<gint>!) {
        pango_layout_get_log_attrs(layout_ptr, attrs, nAttrs)
    
    }

    /// Retrieves an array of logical attributes for each character in
    /// the `layout`.
    /// 
    /// This is a faster alternative to [method`Pango.Layout.get_log_attrs`].
    /// The returned array is part of `layout` and must not be modified.
    /// Modifying the layout will invalidate the returned array.
    /// 
    /// The number of attributes returned in `n_attrs` will be one more
    /// than the total number of characters in the layout, since there
    /// need to be attributes corresponding to both the position before
    /// the first character and the position after the last character.
    @inlinable func getLogAttrsReadonly(nAttrs: UnsafeMutablePointer<gint>!) -> UnsafePointer<PangoLogAttr>! {
        let rv = pango_layout_get_log_attrs_readonly(layout_ptr, nAttrs)
        return rv
    }

    /// Computes the logical and ink extents of `layout` in device units.
    /// 
    /// This function just calls [method`Pango.Layout.get_extents`] followed by
    /// two [func`extents_to_pixels`] calls, rounding `ink_rect` and `logical_rect`
    /// such that the rounded rectangles fully contain the unrounded one (that is,
    /// passes them as first argument to ``pango_extents_to_pixels()``).
    @inlinable func getPixelExtents(inkRect: RectangleRef? = nil, logicalRect: RectangleRef? = nil) {
        pango_layout_get_pixel_extents(layout_ptr, inkRect?._ptr, logicalRect?._ptr)
    
    }
    /// Computes the logical and ink extents of `layout` in device units.
    /// 
    /// This function just calls [method`Pango.Layout.get_extents`] followed by
    /// two [func`extents_to_pixels`] calls, rounding `ink_rect` and `logical_rect`
    /// such that the rounded rectangles fully contain the unrounded one (that is,
    /// passes them as first argument to ``pango_extents_to_pixels()``).
    @inlinable func getPixelExtents<RectangleT: RectangleProtocol>(inkRect: RectangleT?, logicalRect: RectangleT?) {
        pango_layout_get_pixel_extents(layout_ptr, inkRect?._ptr, logicalRect?._ptr)
    
    }

    /// Determines the logical width and height of a `PangoLayout` in device
    /// units.
    /// 
    /// [method`Pango.Layout.get_size`] returns the width and height
    /// scaled by `PANGO_SCALE`. This is simply a convenience function around
    /// [method`Pango.Layout.get_pixel_extents`].
    @inlinable func getPixelSize(width: UnsafeMutablePointer<gint>! = nil, height: UnsafeMutablePointer<gint>! = nil) {
        pango_layout_get_pixel_size(layout_ptr, width, height)
    
    }

    /// Returns the current serial number of `layout`.
    /// 
    /// The serial number is initialized to an small number larger than zero
    /// when a new layout is created and is increased whenever the layout is
    /// changed using any of the setter functions, or the `PangoContext` it
    /// uses has changed. The serial may wrap, but will never have the value 0.
    /// Since it can wrap, never compare it with "less than", always use "not equals".
    /// 
    /// This can be used to automatically detect changes to a `PangoLayout`,
    /// and is useful for example to decide whether a layout needs redrawing.
    /// To force the serial to be increased, use
    /// [method`Pango.Layout.context_changed`].
    @inlinable func getSerial() -> Int {
        let rv = Int(pango_layout_get_serial(layout_ptr))
        return rv
    }

    /// Obtains whether `layout` is in single paragraph mode.
    /// 
    /// See [method`Pango.Layout.set_single_paragraph_mode`].
    @inlinable func getSingleParagraphMode() -> Bool {
        let rv = ((pango_layout_get_single_paragraph_mode(layout_ptr)) != 0)
        return rv
    }

    /// Determines the logical width and height of a `PangoLayout` in Pango
    /// units.
    /// 
    /// This is simply a convenience function around [method`Pango.Layout.get_extents`].
    @inlinable func getSize(width: UnsafeMutablePointer<gint>! = nil, height: UnsafeMutablePointer<gint>! = nil) {
        pango_layout_get_size(layout_ptr, width, height)
    
    }

    /// Gets the amount of spacing between the lines of the layout.
    @inlinable func getSpacing() -> Int {
        let rv = Int(pango_layout_get_spacing(layout_ptr))
        return rv
    }

    /// Gets the current `PangoTabArray` used by this layout.
    /// 
    /// If no `PangoTabArray` has been set, then the default tabs are
    /// in use and `nil` is returned. Default tabs are every 8 spaces.
    /// 
    /// The return value should be freed with [method`Pango.TabArray.free`].
    @inlinable func getTabs() -> TabArrayRef! {
        let rv = TabArrayRef(gconstpointer: gconstpointer(pango_layout_get_tabs(layout_ptr)))
        return rv
    }

    /// Gets the text in the layout. The returned text should not
    /// be freed or modified.
    @inlinable func getText() -> String! {
        let rv = pango_layout_get_text(layout_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Counts the number of unknown glyphs in `layout`.
    /// 
    /// This function can be used to determine if there are any fonts
    /// available to render all characters in a certain string, or when
    /// used in combination with `PANGO_ATTR_FALLBACK`, to check if a
    /// certain font supports all the characters in the string.
    @inlinable func getUnknownGlyphsCount() -> Int {
        let rv = Int(pango_layout_get_unknown_glyphs_count(layout_ptr))
        return rv
    }

    /// Gets the width to which the lines of the `PangoLayout` should wrap.
    @inlinable func getWidth() -> Int {
        let rv = Int(pango_layout_get_width(layout_ptr))
        return rv
    }

    /// Gets the wrap mode for the layout.
    /// 
    /// Use [method`Pango.Layout.is_wrapped`] to query whether
    /// any paragraphs were actually wrapped.
    @inlinable func getWrap() -> PangoWrapMode {
        let rv = pango_layout_get_wrap(layout_ptr)
        return rv
    }

    /// Converts from byte `index_` within the `layout` to line and X position.
    /// 
    /// The X position is measured from the left edge of the line.
    @inlinable func indexToLineX(index_: Int, trailing: Bool, line: UnsafeMutablePointer<gint>! = nil, xPos: UnsafeMutablePointer<gint>! = nil) {
        pango_layout_index_to_line_x(layout_ptr, gint(index_), gboolean((trailing) ? 1 : 0), line, xPos)
    
    }

    /// Converts from an index within a `PangoLayout` to the onscreen position
    /// corresponding to the grapheme at that index.
    /// 
    /// The return value is represented as rectangle. Note that `pos-&gt;x` is
    /// always the leading edge of the grapheme and `pos-&gt;x + pos-&gt;width` the
    /// trailing edge of the grapheme. If the directionality of the grapheme
    /// is right-to-left, then `pos-&gt;width` will be negative.
    @inlinable func indexToPos<RectangleT: RectangleProtocol>(index_: Int, pos: RectangleT) {
        pango_layout_index_to_pos(layout_ptr, gint(index_), pos._ptr)
    
    }

    /// Computes a new cursor position from an old position and a count of
    /// positions to move visually.
    /// 
    /// If `direction` is positive, then the new strong cursor position will be
    /// one position to the right of the old cursor position. If `direction` is
    /// negative, then the new strong cursor position will be one position to
    /// the left of the old cursor position.
    /// 
    /// In the presence of bidirectional text, the correspondence between
    /// logical and visual order will depend on the direction of the current
    /// run, and there may be jumps when the cursor is moved off of the end
    /// of a run.
    /// 
    /// Motion here is in cursor positions, not in characters, so a single
    /// call to [method`Pango.Layout.move_cursor_visually`] may move the cursor over
    /// multiple characters when multiple characters combine to form a single
    /// grapheme.
    @inlinable func moveCursorVisually(strong: Bool, oldIndex: Int, oldTrailing: Int, direction: Int, newIndex: UnsafeMutablePointer<gint>!, newTrailing: UnsafeMutablePointer<gint>!) {
        pango_layout_move_cursor_visually(layout_ptr, gboolean((strong) ? 1 : 0), gint(oldIndex), gint(oldTrailing), gint(direction), newIndex, newTrailing)
    
    }

    /// Sets the alignment for the layout: how partial lines are
    /// positioned within the horizontal space available.
    @inlinable func set(alignment: PangoAlignment) {
        pango_layout_set_alignment(layout_ptr, alignment)
    
    }

    /// Sets the text attributes for a layout object.
    /// References `attrs`, so the caller can unref its reference.
    @inlinable func setAttributes(attrs: AttrListRef? = nil) {
        pango_layout_set_attributes(layout_ptr, attrs?.attr_list_ptr)
    
    }
    /// Sets the text attributes for a layout object.
    /// References `attrs`, so the caller can unref its reference.
    @inlinable func setAttributes<AttrListT: AttrListProtocol>(attrs: AttrListT?) {
        pango_layout_set_attributes(layout_ptr, attrs?.attr_list_ptr)
    
    }

    /// Sets whether to calculate the base direction
    /// for the layout according to its contents.
    /// 
    /// When this flag is on (the default), then paragraphs in `layout` that
    /// begin with strong right-to-left characters (Arabic and Hebrew principally),
    /// will have right-to-left layout, paragraphs with letters from other scripts
    /// will have left-to-right layout. Paragraphs with only neutral characters
    /// get their direction from the surrounding paragraphs.
    /// 
    /// When `false`, the choice between left-to-right and right-to-left
    /// layout is done according to the base direction of the layout's
    /// `PangoContext`. (See [method`Pango.Context.set_base_dir`]).
    /// 
    /// When the auto-computed direction of a paragraph differs from the
    /// base direction of the context, the interpretation of
    /// `PANGO_ALIGN_LEFT` and `PANGO_ALIGN_RIGHT` are swapped.
    @inlinable func set(autoDir: Bool) {
        pango_layout_set_auto_dir(layout_ptr, gboolean((autoDir) ? 1 : 0))
    
    }

    /// Sets the type of ellipsization being performed for `layout`.
    /// 
    /// Depending on the ellipsization mode `ellipsize` text is
    /// removed from the start, middle, or end of text so they
    /// fit within the width and height of layout set with
    /// [method`Pango.Layout.set_width`] and [method`Pango.Layout.set_height`].
    /// 
    /// If the layout contains characters such as newlines that
    /// force it to be layed out in multiple paragraphs, then whether
    /// each paragraph is ellipsized separately or the entire layout
    /// is ellipsized as a whole depends on the set height of the layout.
    /// See [method`Pango.Layout.set_height`] for details.
    @inlinable func set(ellipsize: PangoEllipsizeMode) {
        pango_layout_set_ellipsize(layout_ptr, ellipsize)
    
    }

    /// Sets the default font description for the layout.
    /// 
    /// If no font description is set on the layout, the font description from
    /// the layout's context is used.
    @inlinable func setFontDescription(desc: FontDescriptionRef? = nil) {
        pango_layout_set_font_description(layout_ptr, desc?.font_description_ptr)
    
    }
    /// Sets the default font description for the layout.
    /// 
    /// If no font description is set on the layout, the font description from
    /// the layout's context is used.
    @inlinable func setFontDescription<FontDescriptionT: FontDescriptionProtocol>(desc: FontDescriptionT?) {
        pango_layout_set_font_description(layout_ptr, desc?.font_description_ptr)
    
    }

    /// Sets the height to which the `PangoLayout` should be ellipsized at.
    /// 
    /// There are two different behaviors, based on whether `height` is positive
    /// or negative.
    /// 
    /// If `height` is positive, it will be the maximum height of the layout. Only
    /// lines would be shown that would fit, and if there is any text omitted,
    /// an ellipsis added. At least one line is included in each paragraph regardless
    /// of how small the height value is. A value of zero will render exactly one
    /// line for the entire layout.
    /// 
    /// If `height` is negative, it will be the (negative of) maximum number of lines
    /// per paragraph. That is, the total number of lines shown may well be more than
    /// this value if the layout contains multiple paragraphs of text.
    /// The default value of -1 means that first line of each paragraph is ellipsized.
    /// This behavior may be changed in the future to act per layout instead of per
    /// paragraph. File a bug against pango at
    /// [https://gitlab.gnome.org/gnome/pango](https://gitlab.gnome.org/gnome/pango)
    /// if your code relies on this behavior.
    /// 
    /// Height setting only has effect if a positive width is set on
    /// `layout` and ellipsization mode of `layout` is not `PANGO_ELLIPSIZE_NONE`.
    /// The behavior is undefined if a height other than -1 is set and
    /// ellipsization mode is set to `PANGO_ELLIPSIZE_NONE`, and may change in the
    /// future.
    @inlinable func set(height: Int) {
        pango_layout_set_height(layout_ptr, gint(height))
    
    }

    /// Sets the width in Pango units to indent each paragraph.
    /// 
    /// A negative value of `indent` will produce a hanging indentation.
    /// That is, the first line will have the full width, and subsequent
    /// lines will be indented by the absolute value of `indent`.
    /// 
    /// The indent setting is ignored if layout alignment is set to
    /// `PANGO_ALIGN_CENTER`.
    @inlinable func set(indent: Int) {
        pango_layout_set_indent(layout_ptr, gint(indent))
    
    }

    /// Sets whether each complete line should be stretched to fill the
    /// entire width of the layout.
    /// 
    /// Stretching is typically done by adding whitespace, but for some scripts
    /// (such as Arabic), the justification may be done in more complex ways,
    /// like extending the characters.
    /// 
    /// Note that this setting is not implemented and so is ignored in
    /// Pango older than 1.18.
    @inlinable func set(justify: Bool) {
        pango_layout_set_justify(layout_ptr, gboolean((justify) ? 1 : 0))
    
    }

    /// Sets a factor for line spacing.
    /// 
    /// Typical values are: 0, 1, 1.5, 2. The default values is 0.
    /// 
    /// If `factor` is non-zero, lines are placed so that
    /// 
    ///     baseline2 = baseline1 + factor * height2
    /// 
    /// where height2 is the line height of the second line
    /// (as determined by the `font(s)`). In this case, the spacing
    /// set with [method`Pango.Layout.set_spacing`] is ignored.
    /// 
    /// If `factor` is zero, spacing is applied as before.
    @inlinable func setLineSpacing(factor: CFloat) {
        pango_layout_set_line_spacing(layout_ptr, factor)
    
    }

    /// Sets the layout text and attribute list from marked-up text.
    /// 
    /// See [Pango Markup](pango_markup.html)).
    /// Replaces the current text and attribute list.
    /// 
    /// This is the Same as [method`Pango.Layout.set_markup_with_accel`],
    /// but the markup text isn't scanned for accelerators.
    @inlinable func set(markup: UnsafePointer<CChar>!, length: Int) {
        pango_layout_set_markup(layout_ptr, markup, gint(length))
    
    }

    /// Sets the layout text and attribute list from marked-up text.
    /// 
    /// See [Pango Markup](pango_markup.html)).
    /// Replaces the current text and attribute list.
    /// 
    /// If `accel_marker` is nonzero, the given character will mark the
    /// character following it as an accelerator. For example, `accel_marker`
    /// might be an ampersand or underscore. All characters marked
    /// as an accelerator will receive a `PANGO_UNDERLINE_LOW` attribute,
    /// and the first character so marked will be returned in `accel_char`.
    /// Two `accel_marker` characters following each other produce a single
    /// literal `accel_marker` character.
    @inlinable func setMarkupWithAccel(markup: UnsafePointer<CChar>!, length: Int, accelMarker: gunichar, accelChar: UnsafeMutablePointer<gunichar>! = nil) {
        pango_layout_set_markup_with_accel(layout_ptr, markup, gint(length), accelMarker, accelChar)
    
    }

    /// Sets the single paragraph mode of `layout`.
    /// 
    /// If `setting` is `true`, do not treat newlines and similar characters
    /// as paragraph separators; instead, keep all text in a single paragraph,
    /// and display a glyph for paragraph separator characters. Used when
    /// you want to allow editing of newlines on a single text line.
    @inlinable func setSingleParagraphMode(setting: Bool) {
        pango_layout_set_single_paragraph_mode(layout_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Sets the amount of spacing in Pango unit between
    /// the lines of the layout.
    /// 
    /// When placing lines with spacing, Pango arranges things so that
    /// 
    /// line2.top = line1.bottom + spacing
    /// 
    /// Note: Since 1.44, Pango defaults to using the line height
    /// (as determined by the font) for placing lines. The `spacing`
    /// set with this function is only taken into account when the
    /// line height factor is set to zero with
    /// [method`Pango.Layout.set_line_spacing`].
    @inlinable func set(spacing: Int) {
        pango_layout_set_spacing(layout_ptr, gint(spacing))
    
    }

    /// Sets the tabs to use for `layout`, overriding the default tabs.
    /// 
    /// By default, tabs are every 8 spaces. If `tabs` is `nil`, the
    /// default tabs are reinstated. `tabs` is copied into the layout;
    /// you must free your copy of `tabs` yourself.
    @inlinable func set(tabs: TabArrayRef? = nil) {
        pango_layout_set_tabs(layout_ptr, tabs?.tab_array_ptr)
    
    }
    /// Sets the tabs to use for `layout`, overriding the default tabs.
    /// 
    /// By default, tabs are every 8 spaces. If `tabs` is `nil`, the
    /// default tabs are reinstated. `tabs` is copied into the layout;
    /// you must free your copy of `tabs` yourself.
    @inlinable func set<TabArrayT: TabArrayProtocol>(tabs: TabArrayT?) {
        pango_layout_set_tabs(layout_ptr, tabs?.tab_array_ptr)
    
    }

    /// Sets the text of the layout.
    /// 
    /// This function validates `text` and renders invalid UTF-8
    /// with a placeholder glyph.
    /// 
    /// Note that if you have used [method`Pango.Layout.set_markup`] or
    /// [method`Pango.Layout.set_markup_with_accel`] on `layout` before, you
    /// may want to call [method`Pango.Layout.set_attributes`] to clear the
    /// attributes set on the layout from the markup as this function does
    /// not clear attributes.
    @inlinable func set(text: UnsafePointer<CChar>!, length: Int) {
        pango_layout_set_text(layout_ptr, text, gint(length))
    
    }

    /// Sets the width to which the lines of the `PangoLayout` should wrap or
    /// ellipsized.
    /// 
    /// The default value is -1: no width set.
    @inlinable func set(width: Int) {
        pango_layout_set_width(layout_ptr, gint(width))
    
    }

    /// Sets the wrap mode.
    /// 
    /// The wrap mode only has effect if a width is set on the layout
    /// with [method`Pango.Layout.set_width`]. To turn off wrapping,
    /// set the width to -1.
    @inlinable func set(wrap: PangoWrapMode) {
        pango_layout_set_wrap(layout_ptr, wrap)
    
    }

    /// Converts from X and Y position within a layout to the byte index to the
    /// character at that logical position.
    /// 
    /// If the Y position is not inside the
    /// layout, the closest position is chosen (the position will be clamped
    /// inside the layout). If the X position is not within the layout, then
    /// the start or the end of the line is chosen as described for
    /// [method`Pango.LayoutLine.x_to_index`]. If either the X or Y positions
    /// were not inside the layout, then the function returns `false`; on an
    /// exact hit, it returns `true`.
    @inlinable func xyToIndex(x: Int, y: Int, index_: UnsafeMutablePointer<gint>!, trailing: UnsafeMutablePointer<gint>!) -> Bool {
        let rv = ((pango_layout_xy_to_index(layout_ptr, gint(x), gint(y), index_, trailing)) != 0)
        return rv
    }
    /// Gets the alignment for the layout: how partial lines are
    /// positioned within the horizontal space available.
    @inlinable var alignment: PangoAlignment {
        /// Gets the alignment for the layout: how partial lines are
        /// positioned within the horizontal space available.
        get {
            let rv = pango_layout_get_alignment(layout_ptr)
            return rv
        }
        /// Sets the alignment for the layout: how partial lines are
        /// positioned within the horizontal space available.
        nonmutating set {
            pango_layout_set_alignment(layout_ptr, newValue)
        }
    }

    /// Gets the attribute list for the layout, if any.
    @inlinable var attributes: AttrListRef! {
        /// Gets the attribute list for the layout, if any.
        get {
            let rv = AttrListRef(gconstpointer: gconstpointer(pango_layout_get_attributes(layout_ptr)))
            return rv
        }
        /// Sets the text attributes for a layout object.
        /// References `attrs`, so the caller can unref its reference.
        nonmutating set {
            pango_layout_set_attributes(layout_ptr, UnsafeMutablePointer<PangoAttrList>(newValue?.attr_list_ptr))
        }
    }

    /// Gets whether to calculate the base direction for the layout
    /// according to its contents.
    /// 
    /// See [method`Pango.Layout.set_auto_dir`].
    @inlinable var autoDir: Bool {
        /// Gets whether to calculate the base direction for the layout
        /// according to its contents.
        /// 
        /// See [method`Pango.Layout.set_auto_dir`].
        get {
            let rv = ((pango_layout_get_auto_dir(layout_ptr)) != 0)
            return rv
        }
        /// Sets whether to calculate the base direction
        /// for the layout according to its contents.
        /// 
        /// When this flag is on (the default), then paragraphs in `layout` that
        /// begin with strong right-to-left characters (Arabic and Hebrew principally),
        /// will have right-to-left layout, paragraphs with letters from other scripts
        /// will have left-to-right layout. Paragraphs with only neutral characters
        /// get their direction from the surrounding paragraphs.
        /// 
        /// When `false`, the choice between left-to-right and right-to-left
        /// layout is done according to the base direction of the layout's
        /// `PangoContext`. (See [method`Pango.Context.set_base_dir`]).
        /// 
        /// When the auto-computed direction of a paragraph differs from the
        /// base direction of the context, the interpretation of
        /// `PANGO_ALIGN_LEFT` and `PANGO_ALIGN_RIGHT` are swapped.
        nonmutating set {
            pango_layout_set_auto_dir(layout_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the Y position of baseline of the first line in `layout`.
    @inlinable var baseline: Int {
        /// Gets the Y position of baseline of the first line in `layout`.
        get {
            let rv = Int(pango_layout_get_baseline(layout_ptr))
            return rv
        }
    }

    /// Returns the number of Unicode characters in the
    /// the text of `layout`.
    @inlinable var characterCount: Int {
        /// Returns the number of Unicode characters in the
        /// the text of `layout`.
        get {
            let rv = Int(pango_layout_get_character_count(layout_ptr))
            return rv
        }
    }

    /// Retrieves the `PangoContext` used for this layout.
    @inlinable var context: ContextRef! {
        /// Retrieves the `PangoContext` used for this layout.
        get {
            let rv = ContextRef(gconstpointer: gconstpointer(pango_layout_get_context(layout_ptr)))
            return rv
        }
    }

    /// Gets the type of ellipsization being performed for `layout`.
    /// 
    /// See [method`Pango.Layout.set_ellipsize`].
    /// 
    /// Use [method`Pango.Layout.is_ellipsized`] to query whether any
    /// paragraphs were actually ellipsized.
    @inlinable var ellipsize: PangoEllipsizeMode {
        /// Gets the type of ellipsization being performed for `layout`.
        /// 
        /// See [method`Pango.Layout.set_ellipsize`].
        /// 
        /// Use [method`Pango.Layout.is_ellipsized`] to query whether any
        /// paragraphs were actually ellipsized.
        get {
            let rv = pango_layout_get_ellipsize(layout_ptr)
            return rv
        }
        /// Sets the type of ellipsization being performed for `layout`.
        /// 
        /// Depending on the ellipsization mode `ellipsize` text is
        /// removed from the start, middle, or end of text so they
        /// fit within the width and height of layout set with
        /// [method`Pango.Layout.set_width`] and [method`Pango.Layout.set_height`].
        /// 
        /// If the layout contains characters such as newlines that
        /// force it to be layed out in multiple paragraphs, then whether
        /// each paragraph is ellipsized separately or the entire layout
        /// is ellipsized as a whole depends on the set height of the layout.
        /// See [method`Pango.Layout.set_height`] for details.
        nonmutating set {
            pango_layout_set_ellipsize(layout_ptr, newValue)
        }
    }

    /// Gets the font description for the layout, if any.
    @inlinable var fontDescription: FontDescriptionRef! {
        /// Gets the font description for the layout, if any.
        get {
            let rv = FontDescriptionRef(gconstpointer: gconstpointer(pango_layout_get_font_description(layout_ptr)))
            return rv
        }
        /// Sets the default font description for the layout.
        /// 
        /// If no font description is set on the layout, the font description from
        /// the layout's context is used.
        nonmutating set {
            pango_layout_set_font_description(layout_ptr, UnsafePointer<PangoFontDescription>(newValue?.font_description_ptr))
        }
    }

    /// Gets the height of layout used for ellipsization.
    /// 
    /// See [method`Pango.Layout.set_height`] for details.
    @inlinable var height: Int {
        /// Gets the height of layout used for ellipsization.
        /// 
        /// See [method`Pango.Layout.set_height`] for details.
        get {
            let rv = Int(pango_layout_get_height(layout_ptr))
            return rv
        }
        /// Sets the height to which the `PangoLayout` should be ellipsized at.
        /// 
        /// There are two different behaviors, based on whether `height` is positive
        /// or negative.
        /// 
        /// If `height` is positive, it will be the maximum height of the layout. Only
        /// lines would be shown that would fit, and if there is any text omitted,
        /// an ellipsis added. At least one line is included in each paragraph regardless
        /// of how small the height value is. A value of zero will render exactly one
        /// line for the entire layout.
        /// 
        /// If `height` is negative, it will be the (negative of) maximum number of lines
        /// per paragraph. That is, the total number of lines shown may well be more than
        /// this value if the layout contains multiple paragraphs of text.
        /// The default value of -1 means that first line of each paragraph is ellipsized.
        /// This behavior may be changed in the future to act per layout instead of per
        /// paragraph. File a bug against pango at
        /// [https://gitlab.gnome.org/gnome/pango](https://gitlab.gnome.org/gnome/pango)
        /// if your code relies on this behavior.
        /// 
        /// Height setting only has effect if a positive width is set on
        /// `layout` and ellipsization mode of `layout` is not `PANGO_ELLIPSIZE_NONE`.
        /// The behavior is undefined if a height other than -1 is set and
        /// ellipsization mode is set to `PANGO_ELLIPSIZE_NONE`, and may change in the
        /// future.
        nonmutating set {
            pango_layout_set_height(layout_ptr, gint(newValue))
        }
    }

    /// Gets the paragraph indent width in Pango units.
    /// 
    /// A negative value indicates a hanging indentation.
    @inlinable var indent: Int {
        /// Gets the paragraph indent width in Pango units.
        /// 
        /// A negative value indicates a hanging indentation.
        get {
            let rv = Int(pango_layout_get_indent(layout_ptr))
            return rv
        }
        /// Sets the width in Pango units to indent each paragraph.
        /// 
        /// A negative value of `indent` will produce a hanging indentation.
        /// That is, the first line will have the full width, and subsequent
        /// lines will be indented by the absolute value of `indent`.
        /// 
        /// The indent setting is ignored if layout alignment is set to
        /// `PANGO_ALIGN_CENTER`.
        nonmutating set {
            pango_layout_set_indent(layout_ptr, gint(newValue))
        }
    }

    /// Queries whether the layout had to ellipsize any paragraphs.
    /// 
    /// This returns `true` if the ellipsization mode for `layout`
    /// is not `PANGO_ELLIPSIZE_NONE`, a positive width is set on `layout`,
    /// and there are paragraphs exceeding that width that have to be
    /// ellipsized.
    @inlinable var isEllipsized: Bool {
        /// Queries whether the layout had to ellipsize any paragraphs.
        /// 
        /// This returns `true` if the ellipsization mode for `layout`
        /// is not `PANGO_ELLIPSIZE_NONE`, a positive width is set on `layout`,
        /// and there are paragraphs exceeding that width that have to be
        /// ellipsized.
        get {
            let rv = ((pango_layout_is_ellipsized(layout_ptr)) != 0)
            return rv
        }
    }

    /// Queries whether the layout had to wrap any paragraphs.
    /// 
    /// This returns `true` if a positive width is set on `layout`,
    /// ellipsization mode of `layout` is set to `PANGO_ELLIPSIZE_NONE`,
    /// and there are paragraphs exceeding the layout width that have
    /// to be wrapped.
    @inlinable var isWrapped: Bool {
        /// Queries whether the layout had to wrap any paragraphs.
        /// 
        /// This returns `true` if a positive width is set on `layout`,
        /// ellipsization mode of `layout` is set to `PANGO_ELLIPSIZE_NONE`,
        /// and there are paragraphs exceeding the layout width that have
        /// to be wrapped.
        get {
            let rv = ((pango_layout_is_wrapped(layout_ptr)) != 0)
            return rv
        }
    }

    /// Returns an iterator to iterate over the visual extents of the layout.
    @inlinable var iter: LayoutIterRef! {
        /// Returns an iterator to iterate over the visual extents of the layout.
        get {
            let rv = LayoutIterRef(gconstpointer: gconstpointer(pango_layout_get_iter(layout_ptr)))
            return rv
        }
    }

    /// Gets whether each complete line should be stretched to fill the entire
    /// width of the layout.
    @inlinable var justify: Bool {
        /// Gets whether each complete line should be stretched to fill the entire
        /// width of the layout.
        get {
            let rv = ((pango_layout_get_justify(layout_ptr)) != 0)
            return rv
        }
        /// Sets whether each complete line should be stretched to fill the
        /// entire width of the layout.
        /// 
        /// Stretching is typically done by adding whitespace, but for some scripts
        /// (such as Arabic), the justification may be done in more complex ways,
        /// like extending the characters.
        /// 
        /// Note that this setting is not implemented and so is ignored in
        /// Pango older than 1.18.
        nonmutating set {
            pango_layout_set_justify(layout_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Retrieves the count of lines for the `layout`.
    @inlinable var lineCount: Int {
        /// Retrieves the count of lines for the `layout`.
        get {
            let rv = Int(pango_layout_get_line_count(layout_ptr))
            return rv
        }
    }

    /// Gets the line spacing factor of `layout`.
    /// 
    /// See [method`Pango.Layout.set_line_spacing`].
    @inlinable var lineSpacing: CFloat {
        /// Gets the line spacing factor of `layout`.
        /// 
        /// See [method`Pango.Layout.set_line_spacing`].
        get {
            let rv = pango_layout_get_line_spacing(layout_ptr)
            return rv
        }
        /// Sets a factor for line spacing.
        /// 
        /// Typical values are: 0, 1, 1.5, 2. The default values is 0.
        /// 
        /// If `factor` is non-zero, lines are placed so that
        /// 
        ///     baseline2 = baseline1 + factor * height2
        /// 
        /// where height2 is the line height of the second line
        /// (as determined by the `font(s)`). In this case, the spacing
        /// set with [method`Pango.Layout.set_spacing`] is ignored.
        /// 
        /// If `factor` is zero, spacing is applied as before.
        nonmutating set {
            pango_layout_set_line_spacing(layout_ptr, newValue)
        }
    }

    /// Returns the lines of the `layout` as a list.
    /// 
    /// Use the faster [method`Pango.Layout.get_lines_readonly`] if you do not
    /// plan to modify the contents of the lines (glyphs, glyph widths, etc.).
    @inlinable var lines: GLib.SListRef! {
        /// Returns the lines of the `layout` as a list.
        /// 
        /// Use the faster [method`Pango.Layout.get_lines_readonly`] if you do not
        /// plan to modify the contents of the lines (glyphs, glyph widths, etc.).
        get {
            let rv = GLib.SListRef(pango_layout_get_lines(layout_ptr))
            return rv
        }
    }

    /// Returns the lines of the `layout` as a list.
    /// 
    /// This is a faster alternative to [method`Pango.Layout.get_lines`],
    /// but the user is not expected to modify the contents of the lines
    /// (glyphs, glyph widths, etc.).
    @inlinable var linesReadonly: GLib.SListRef! {
        /// Returns the lines of the `layout` as a list.
        /// 
        /// This is a faster alternative to [method`Pango.Layout.get_lines`],
        /// but the user is not expected to modify the contents of the lines
        /// (glyphs, glyph widths, etc.).
        get {
            let rv = GLib.SListRef(pango_layout_get_lines_readonly(layout_ptr))
            return rv
        }
    }

    /// Returns the current serial number of `layout`.
    /// 
    /// The serial number is initialized to an small number larger than zero
    /// when a new layout is created and is increased whenever the layout is
    /// changed using any of the setter functions, or the `PangoContext` it
    /// uses has changed. The serial may wrap, but will never have the value 0.
    /// Since it can wrap, never compare it with "less than", always use "not equals".
    /// 
    /// This can be used to automatically detect changes to a `PangoLayout`,
    /// and is useful for example to decide whether a layout needs redrawing.
    /// To force the serial to be increased, use
    /// [method`Pango.Layout.context_changed`].
    @inlinable var serial: Int {
        /// Returns the current serial number of `layout`.
        /// 
        /// The serial number is initialized to an small number larger than zero
        /// when a new layout is created and is increased whenever the layout is
        /// changed using any of the setter functions, or the `PangoContext` it
        /// uses has changed. The serial may wrap, but will never have the value 0.
        /// Since it can wrap, never compare it with "less than", always use "not equals".
        /// 
        /// This can be used to automatically detect changes to a `PangoLayout`,
        /// and is useful for example to decide whether a layout needs redrawing.
        /// To force the serial to be increased, use
        /// [method`Pango.Layout.context_changed`].
        get {
            let rv = Int(pango_layout_get_serial(layout_ptr))
            return rv
        }
    }

    /// Obtains whether `layout` is in single paragraph mode.
    /// 
    /// See [method`Pango.Layout.set_single_paragraph_mode`].
    @inlinable var singleParagraphMode: Bool {
        /// Obtains whether `layout` is in single paragraph mode.
        /// 
        /// See [method`Pango.Layout.set_single_paragraph_mode`].
        get {
            let rv = ((pango_layout_get_single_paragraph_mode(layout_ptr)) != 0)
            return rv
        }
        /// Sets the single paragraph mode of `layout`.
        /// 
        /// If `setting` is `true`, do not treat newlines and similar characters
        /// as paragraph separators; instead, keep all text in a single paragraph,
        /// and display a glyph for paragraph separator characters. Used when
        /// you want to allow editing of newlines on a single text line.
        nonmutating set {
            pango_layout_set_single_paragraph_mode(layout_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the amount of spacing between the lines of the layout.
    @inlinable var spacing: Int {
        /// Gets the amount of spacing between the lines of the layout.
        get {
            let rv = Int(pango_layout_get_spacing(layout_ptr))
            return rv
        }
        /// Sets the amount of spacing in Pango unit between
        /// the lines of the layout.
        /// 
        /// When placing lines with spacing, Pango arranges things so that
        /// 
        /// line2.top = line1.bottom + spacing
        /// 
        /// Note: Since 1.44, Pango defaults to using the line height
        /// (as determined by the font) for placing lines. The `spacing`
        /// set with this function is only taken into account when the
        /// line height factor is set to zero with
        /// [method`Pango.Layout.set_line_spacing`].
        nonmutating set {
            pango_layout_set_spacing(layout_ptr, gint(newValue))
        }
    }

    /// Gets the current `PangoTabArray` used by this layout.
    /// 
    /// If no `PangoTabArray` has been set, then the default tabs are
    /// in use and `nil` is returned. Default tabs are every 8 spaces.
    /// 
    /// The return value should be freed with [method`Pango.TabArray.free`].
    @inlinable var tabs: TabArrayRef! {
        /// Gets the current `PangoTabArray` used by this layout.
        /// 
        /// If no `PangoTabArray` has been set, then the default tabs are
        /// in use and `nil` is returned. Default tabs are every 8 spaces.
        /// 
        /// The return value should be freed with [method`Pango.TabArray.free`].
        get {
            let rv = TabArrayRef(gconstpointer: gconstpointer(pango_layout_get_tabs(layout_ptr)))
            return rv
        }
        /// Sets the tabs to use for `layout`, overriding the default tabs.
        /// 
        /// By default, tabs are every 8 spaces. If `tabs` is `nil`, the
        /// default tabs are reinstated. `tabs` is copied into the layout;
        /// you must free your copy of `tabs` yourself.
        nonmutating set {
            pango_layout_set_tabs(layout_ptr, UnsafeMutablePointer<PangoTabArray>(newValue?.tab_array_ptr))
        }
    }

    /// Gets the text in the layout. The returned text should not
    /// be freed or modified.
    @inlinable var text: String! {
        /// Gets the text in the layout. The returned text should not
        /// be freed or modified.
        get {
            let rv = pango_layout_get_text(layout_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Counts the number of unknown glyphs in `layout`.
    /// 
    /// This function can be used to determine if there are any fonts
    /// available to render all characters in a certain string, or when
    /// used in combination with `PANGO_ATTR_FALLBACK`, to check if a
    /// certain font supports all the characters in the string.
    @inlinable var unknownGlyphsCount: Int {
        /// Counts the number of unknown glyphs in `layout`.
        /// 
        /// This function can be used to determine if there are any fonts
        /// available to render all characters in a certain string, or when
        /// used in combination with `PANGO_ATTR_FALLBACK`, to check if a
        /// certain font supports all the characters in the string.
        get {
            let rv = Int(pango_layout_get_unknown_glyphs_count(layout_ptr))
            return rv
        }
    }

    /// Gets the width to which the lines of the `PangoLayout` should wrap.
    @inlinable var width: Int {
        /// Gets the width to which the lines of the `PangoLayout` should wrap.
        get {
            let rv = Int(pango_layout_get_width(layout_ptr))
            return rv
        }
        /// Sets the width to which the lines of the `PangoLayout` should wrap or
        /// ellipsized.
        /// 
        /// The default value is -1: no width set.
        nonmutating set {
            pango_layout_set_width(layout_ptr, gint(newValue))
        }
    }

    /// Gets the wrap mode for the layout.
    /// 
    /// Use [method`Pango.Layout.is_wrapped`] to query whether
    /// any paragraphs were actually wrapped.
    @inlinable var wrap: PangoWrapMode {
        /// Gets the wrap mode for the layout.
        /// 
        /// Use [method`Pango.Layout.is_wrapped`] to query whether
        /// any paragraphs were actually wrapped.
        get {
            let rv = pango_layout_get_wrap(layout_ptr)
            return rv
        }
        /// Sets the wrap mode.
        /// 
        /// The wrap mode only has effect if a width is set on the layout
        /// with [method`Pango.Layout.set_width`]. To turn off wrapping,
        /// set the width to -1.
        nonmutating set {
            pango_layout_set_wrap(layout_ptr, newValue)
        }
    }


}



