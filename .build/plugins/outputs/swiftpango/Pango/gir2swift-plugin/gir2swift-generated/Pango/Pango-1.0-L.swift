import CGLib
import CHarfBuzz
import CPango
import GLib
import GLibObject
import HarfBuzz
// MARK: - Layout Class

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
/// A `PangoLayout` is initialized with a `PangoContext`, UTF-8 string
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
/// &lt;picture&gt;
///   &lt;source srcset="layout-dark.png" media="(prefers-color-scheme: dark)"&gt;
///   &lt;img alt="Pango Layout Parameters" src="layout-light.png"&gt;
/// &lt;/picture&gt;
/// 
/// The following images demonstrate the effect of alignment and
/// justification on the layout of text:
/// 
/// | | |
/// | --- | --- |
/// | ![align=left](align-left.png) | ![align=left, justify](align-left-justify.png) |
/// | ![align=center](align-center.png) | ![align=center, justify](align-center-justify.png) |
/// | ![align=right](align-right.png) | ![align=right, justify](align-right-justify.png) |
/// 
/// 
/// It is possible, as well, to ignore the 2-D setup,
/// and simply treat the results of a `PangoLayout` as a list of lines.
///
/// The `LayoutProtocol` protocol exposes the methods and properties of an underlying `PangoLayout` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Layout`.
/// Alternatively, use `LayoutRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol LayoutProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `PangoLayout` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoLayout` instance.
    var layout_ptr: UnsafeMutablePointer<PangoLayout>! { get }

    /// Required Initialiser for types conforming to `LayoutProtocol`
    init(raw: UnsafeMutableRawPointer)
}

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
/// A `PangoLayout` is initialized with a `PangoContext`, UTF-8 string
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
/// &lt;picture&gt;
///   &lt;source srcset="layout-dark.png" media="(prefers-color-scheme: dark)"&gt;
///   &lt;img alt="Pango Layout Parameters" src="layout-light.png"&gt;
/// &lt;/picture&gt;
/// 
/// The following images demonstrate the effect of alignment and
/// justification on the layout of text:
/// 
/// | | |
/// | --- | --- |
/// | ![align=left](align-left.png) | ![align=left, justify](align-left-justify.png) |
/// | ![align=center](align-center.png) | ![align=center, justify](align-center-justify.png) |
/// | ![align=right](align-right.png) | ![align=right, justify](align-right-justify.png) |
/// 
/// 
/// It is possible, as well, to ignore the 2-D setup,
/// and simply treat the results of a `PangoLayout` as a list of lines.
///
/// The `LayoutRef` type acts as a lightweight Swift reference to an underlying `PangoLayout` instance.
/// It exposes methods that can operate on this data type through `LayoutProtocol` conformance.
/// Use `LayoutRef` only as an `unowned` reference to an existing `PangoLayout` instance.
///
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
            let result = pango_layout_new(context.context_ptr)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }
    /// Loads data previously created via [method`Pango.Layout.serialize`].
    /// 
    /// For a discussion of the supported format, see that function.
    /// 
    /// Note: to verify that the returned layout is identical to
    /// the one that was serialized, you can compare `bytes` to the
    /// result of serializing the layout again.
    @inlinable static func deserialize<ContextT: ContextProtocol, GLibBytesT: GLib.BytesProtocol>(context: ContextT, bytes: GLibBytesT, flags: LayoutDeserializeFlags) throws -> Pango.LayoutRef! {
            var error: UnsafeMutablePointer<GError>?
        let result = pango_layout_deserialize(context.context_ptr, bytes.bytes_ptr, flags.value, &error)
        if let error = error { throw GLibError(error) }
        let maybeRV = LayoutRef(gconstpointer: gconstpointer(result))
        
        guard let rv = maybeRV else { return nil }
        return rv
    }
}

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
/// A `PangoLayout` is initialized with a `PangoContext`, UTF-8 string
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
/// &lt;picture&gt;
///   &lt;source srcset="layout-dark.png" media="(prefers-color-scheme: dark)"&gt;
///   &lt;img alt="Pango Layout Parameters" src="layout-light.png"&gt;
/// &lt;/picture&gt;
/// 
/// The following images demonstrate the effect of alignment and
/// justification on the layout of text:
/// 
/// | | |
/// | --- | --- |
/// | ![align=left](align-left.png) | ![align=left, justify](align-left-justify.png) |
/// | ![align=center](align-center.png) | ![align=center, justify](align-center-justify.png) |
/// | ![align=right](align-right.png) | ![align=right, justify](align-right-justify.png) |
/// 
/// 
/// It is possible, as well, to ignore the 2-D setup,
/// and simply treat the results of a `PangoLayout` as a list of lines.
///
/// The `Layout` type acts as a reference-counted owner of an underlying `PangoLayout` instance.
/// It provides the methods that can operate on this data type through `LayoutProtocol` conformance.
/// Use `Layout` as a strong reference or owner of a `PangoLayout` instance.
///
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
            let result = pango_layout_new(context.context_ptr)
        let rv = result
            super.init(gpointer: (rv))
    if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Loads data previously created via [method`Pango.Layout.serialize`].
    /// 
    /// For a discussion of the supported format, see that function.
    /// 
    /// Note: to verify that the returned layout is identical to
    /// the one that was serialized, you can compare `bytes` to the
    /// result of serializing the layout again.
    @inlinable public static func deserialize<ContextT: ContextProtocol, GLibBytesT: GLib.BytesProtocol>(context: ContextT, bytes: GLibBytesT, flags: LayoutDeserializeFlags) throws -> Pango.Layout! {
            var error: UnsafeMutablePointer<GError>?
        let result = pango_layout_deserialize(context.context_ptr, bytes.bytes_ptr, flags.value, &error)
        if let error = error { throw GLibError(error) }
        let maybeRV = Layout(gconstpointer: gconstpointer(result))
        
        guard let rv = maybeRV else { return nil }
            if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
return rv
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
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
    @inlinable func copy() -> Pango.LayoutRef! {
        let result = pango_layout_copy(layout_ptr)
        guard let rv = LayoutRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Gets the alignment for the layout: how partial lines are
    /// positioned within the horizontal space available.
    @inlinable func getAlignment() -> PangoAlignment {
        let result = pango_layout_get_alignment(layout_ptr)
        let rv = result
        return rv
    }

    /// Gets the attribute list for the layout, if any.
    @inlinable func getAttributes() -> Pango.AttrListRef! {
        let result = pango_layout_get_attributes(layout_ptr)
        let rv = AttrListRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Gets whether to calculate the base direction for the layout
    /// according to its contents.
    /// 
    /// See [method`Pango.Layout.set_auto_dir`].
    @inlinable func getAutoDir() -> Bool {
        let result = pango_layout_get_auto_dir(layout_ptr)
        let rv = ((result) != 0)
        return rv
    }

    /// Gets the Y position of baseline of the first line in `layout`.
    @inlinable func getBaseline() -> Int {
        let result = pango_layout_get_baseline(layout_ptr)
        let rv = Int(result)
        return rv
    }

    /// Given an index within a layout, determines the positions that of the
    /// strong and weak cursors if the insertion point is at that index.
    /// 
    /// This is a variant of [method`Pango.Layout.get_cursor_pos`] that applies
    /// font metric information about caret slope and offset to the positions
    /// it returns.
    /// 
    /// &lt;picture&gt;
    ///   &lt;source srcset="caret-metrics-dark.png" media="(prefers-color-scheme: dark)"&gt;
    ///   &lt;img alt="Caret metrics" src="caret-metrics-light.png"&gt;
    /// &lt;/picture&gt;
    @inlinable func getCaretPos(index: Int, strongPos: RectangleRef? = nil, weakPos: RectangleRef? = nil) {
            
        pango_layout_get_caret_pos(layout_ptr, gint(index), strongPos?._ptr, weakPos?._ptr)
            
    }
    /// Given an index within a layout, determines the positions that of the
    /// strong and weak cursors if the insertion point is at that index.
    /// 
    /// This is a variant of [method`Pango.Layout.get_cursor_pos`] that applies
    /// font metric information about caret slope and offset to the positions
    /// it returns.
    /// 
    /// &lt;picture&gt;
    ///   &lt;source srcset="caret-metrics-dark.png" media="(prefers-color-scheme: dark)"&gt;
    ///   &lt;img alt="Caret metrics" src="caret-metrics-light.png"&gt;
    /// &lt;/picture&gt;
    @inlinable func getCaretPos<RectangleT: RectangleProtocol>(index: Int, strongPos: RectangleT?, weakPos: RectangleT?) {
        
        pango_layout_get_caret_pos(layout_ptr, gint(index), strongPos?._ptr, weakPos?._ptr)
        
    }

    /// Returns the number of Unicode characters in the
    /// the text of `layout`.
    @inlinable func getCharacterCount() -> Int {
        let result = pango_layout_get_character_count(layout_ptr)
        let rv = Int(result)
        return rv
    }

    /// Retrieves the `PangoContext` used for this layout.
    @inlinable func getContext() -> Pango.ContextRef! {
        let result = pango_layout_get_context(layout_ptr)
        let rv = ContextRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Given an index within a layout, determines the positions that of the
    /// strong and weak cursors if the insertion point is at that index.
    /// 
    /// The position of each cursor is stored as a zero-width rectangle
    /// with the height of the run extents.
    /// 
    /// &lt;picture&gt;
    ///   &lt;source srcset="cursor-positions-dark.png" media="(prefers-color-scheme: dark)"&gt;
    ///   &lt;img alt="Cursor positions" src="cursor-positions-light.png"&gt;
    /// &lt;/picture&gt;
    /// 
    /// The strong cursor location is the location where characters of the
    /// directionality equal to the base direction of the layout are inserted.
    /// The weak cursor location is the location where characters of the
    /// directionality opposite to the base direction of the layout are inserted.
    /// 
    /// The following example shows text with both a strong and a weak cursor.
    /// 
    /// &lt;picture&gt;
    ///   &lt;source srcset="split-cursor-dark.png" media="(prefers-color-scheme: dark)"&gt;
    ///   &lt;img alt="Strong and weak cursors" src="split-cursor-light.png"&gt;
    /// &lt;/picture&gt;
    /// 
    /// The strong cursor has a little arrow pointing to the right, the weak
    /// cursor to the left. Typing a 'c' in this situation will insert the
    /// character after the 'b', and typing another Hebrew character, like 'ג',
    /// will insert it at the end.
    @inlinable func getCursorPos(index: Int, strongPos: RectangleRef? = nil, weakPos: RectangleRef? = nil) {
            
        pango_layout_get_cursor_pos(layout_ptr, gint(index), strongPos?._ptr, weakPos?._ptr)
            
    }
    /// Given an index within a layout, determines the positions that of the
    /// strong and weak cursors if the insertion point is at that index.
    /// 
    /// The position of each cursor is stored as a zero-width rectangle
    /// with the height of the run extents.
    /// 
    /// &lt;picture&gt;
    ///   &lt;source srcset="cursor-positions-dark.png" media="(prefers-color-scheme: dark)"&gt;
    ///   &lt;img alt="Cursor positions" src="cursor-positions-light.png"&gt;
    /// &lt;/picture&gt;
    /// 
    /// The strong cursor location is the location where characters of the
    /// directionality equal to the base direction of the layout are inserted.
    /// The weak cursor location is the location where characters of the
    /// directionality opposite to the base direction of the layout are inserted.
    /// 
    /// The following example shows text with both a strong and a weak cursor.
    /// 
    /// &lt;picture&gt;
    ///   &lt;source srcset="split-cursor-dark.png" media="(prefers-color-scheme: dark)"&gt;
    ///   &lt;img alt="Strong and weak cursors" src="split-cursor-light.png"&gt;
    /// &lt;/picture&gt;
    /// 
    /// The strong cursor has a little arrow pointing to the right, the weak
    /// cursor to the left. Typing a 'c' in this situation will insert the
    /// character after the 'b', and typing another Hebrew character, like 'ג',
    /// will insert it at the end.
    @inlinable func getCursorPos<RectangleT: RectangleProtocol>(index: Int, strongPos: RectangleT?, weakPos: RectangleT?) {
        
        pango_layout_get_cursor_pos(layout_ptr, gint(index), strongPos?._ptr, weakPos?._ptr)
        
    }

    /// Gets the text direction at the given character position in `layout`.
    @inlinable func getDirection(index: Int) -> PangoDirection {
        let result = pango_layout_get_direction(layout_ptr, gint(index))
        let rv = result
        return rv
    }

    /// Gets the type of ellipsization being performed for `layout`.
    /// 
    /// See [method`Pango.Layout.set_ellipsize`].
    /// 
    /// Use [method`Pango.Layout.is_ellipsized`] to query whether any
    /// paragraphs were actually ellipsized.
    @inlinable func getEllipsize() -> PangoEllipsizeMode {
        let result = pango_layout_get_ellipsize(layout_ptr)
        let rv = result
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
    @inlinable func getFontDescription() -> Pango.FontDescriptionRef! {
        let result = pango_layout_get_font_description(layout_ptr)
        let rv = FontDescriptionRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Gets the height of layout used for ellipsization.
    /// 
    /// See [method`Pango.Layout.set_height`] for details.
    @inlinable func getHeight() -> Int {
        let result = pango_layout_get_height(layout_ptr)
        let rv = Int(result)
        return rv
    }

    /// Gets the paragraph indent width in Pango units.
    /// 
    /// A negative value indicates a hanging indentation.
    @inlinable func getIndent() -> Int {
        let result = pango_layout_get_indent(layout_ptr)
        let rv = Int(result)
        return rv
    }

    /// Returns an iterator to iterate over the visual extents of the layout.
    @inlinable func getIter() -> Pango.LayoutIterRef! {
        let result = pango_layout_get_iter(layout_ptr)
        let rv = LayoutIterRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Gets whether each complete line should be stretched to fill the entire
    /// width of the layout.
    @inlinable func getJustify() -> Bool {
        let result = pango_layout_get_justify(layout_ptr)
        let rv = ((result) != 0)
        return rv
    }

    /// Gets whether the last line should be stretched
    /// to fill the entire width of the layout.
    @inlinable func getJustifyLastLine() -> Bool {
        let result = pango_layout_get_justify_last_line(layout_ptr)
        let rv = ((result) != 0)
        return rv
    }

    /// Retrieves a particular line from a `PangoLayout`.
    /// 
    /// Use the faster [method`Pango.Layout.get_line_readonly`] if you do not
    /// plan to modify the contents of the line (glyphs, glyph widths, etc.).
    @inlinable func get(line: Int) -> Pango.LayoutLineRef! {
        let result = pango_layout_get_line(layout_ptr, gint(line))
        let rv = LayoutLineRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Retrieves the count of lines for the `layout`.
    @inlinable func getLineCount() -> Int {
        let result = pango_layout_get_line_count(layout_ptr)
        let rv = Int(result)
        return rv
    }

    /// Retrieves a particular line from a `PangoLayout`.
    /// 
    /// This is a faster alternative to [method`Pango.Layout.get_line`],
    /// but the user is not expected to modify the contents of the line
    /// (glyphs, glyph widths, etc.).
    @inlinable func getLineReadonly(line: Int) -> Pango.LayoutLineRef! {
        let result = pango_layout_get_line_readonly(layout_ptr, gint(line))
        let rv = LayoutLineRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Gets the line spacing factor of `layout`.
    /// 
    /// See [method`Pango.Layout.set_line_spacing`].
    @inlinable func getLineSpacing() -> CFloat {
        let result = pango_layout_get_line_spacing(layout_ptr)
        let rv = result
        return rv
    }

    /// Returns the lines of the `layout` as a list.
    /// 
    /// Use the faster [method`Pango.Layout.get_lines_readonly`] if you do not
    /// plan to modify the contents of the lines (glyphs, glyph widths, etc.).
    @inlinable func getLines() -> GLib.SListRef! {
        let result = pango_layout_get_lines(layout_ptr)
        let rv = GLib.SListRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Returns the lines of the `layout` as a list.
    /// 
    /// This is a faster alternative to [method`Pango.Layout.get_lines`],
    /// but the user is not expected to modify the contents of the lines
    /// (glyphs, glyph widths, etc.).
    @inlinable func getLinesReadonly() -> GLib.SListRef! {
        let result = pango_layout_get_lines_readonly(layout_ptr)
        let rv = GLib.SListRef(gconstpointer: gconstpointer(result))
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
        let result = pango_layout_get_log_attrs_readonly(layout_ptr, nAttrs)
        let rv = result
        return rv
    }

    /// Computes the logical and ink extents of `layout` in device units.
    /// 
    /// This function just calls [method`Pango.Layout.get_extents`] followed by
    /// two [func`extents_to_pixels`] calls, rounding `ink_rect` and `logical_rect`
    /// such that the rounded rectangles fully contain the unrounded one (that is,
    /// passes them as first argument to [func`Pango.extents_to_pixels`]).
    @inlinable func getPixelExtents(inkRect: RectangleRef? = nil, logicalRect: RectangleRef? = nil) {
            
        pango_layout_get_pixel_extents(layout_ptr, inkRect?._ptr, logicalRect?._ptr)
            
    }
    /// Computes the logical and ink extents of `layout` in device units.
    /// 
    /// This function just calls [method`Pango.Layout.get_extents`] followed by
    /// two [func`extents_to_pixels`] calls, rounding `ink_rect` and `logical_rect`
    /// such that the rounded rectangles fully contain the unrounded one (that is,
    /// passes them as first argument to [func`Pango.extents_to_pixels`]).
    @inlinable func getPixelExtents<RectangleT: RectangleProtocol>(inkRect: RectangleT?, logicalRect: RectangleT?) {
        
        pango_layout_get_pixel_extents(layout_ptr, inkRect?._ptr, logicalRect?._ptr)
        
    }

    /// Determines the logical width and height of a `PangoLayout` in device
    /// units.
    /// 
    /// [method`Pango.Layout.get_size`] returns the width and height
    /// scaled by `PANGO_SCALE`. This is simply a convenience function
    /// around [method`Pango.Layout.get_pixel_extents`].
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
        let result = pango_layout_get_serial(layout_ptr)
        let rv = Int(result)
        return rv
    }

    /// Obtains whether `layout` is in single paragraph mode.
    /// 
    /// See [method`Pango.Layout.set_single_paragraph_mode`].
    @inlinable func getSingleParagraphMode() -> Bool {
        let result = pango_layout_get_single_paragraph_mode(layout_ptr)
        let rv = ((result) != 0)
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
        let result = pango_layout_get_spacing(layout_ptr)
        let rv = Int(result)
        return rv
    }

    /// Gets the current `PangoTabArray` used by this layout.
    /// 
    /// If no `PangoTabArray` has been set, then the default tabs are
    /// in use and `nil` is returned. Default tabs are every 8 spaces.
    /// 
    /// The return value should be freed with [method`Pango.TabArray.free`].
    @inlinable func getTabs() -> Pango.TabArrayRef! {
        let result = pango_layout_get_tabs(layout_ptr)
        let rv = TabArrayRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Gets the text in the layout.
    /// 
    /// The returned text should not be freed or modified.
    @inlinable func getText() -> String! {
        let result = pango_layout_get_text(layout_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Counts the number of unknown glyphs in `layout`.
    /// 
    /// This function can be used to determine if there are any fonts
    /// available to render all characters in a certain string, or when
    /// used in combination with `PANGO_ATTR_FALLBACK`, to check if a
    /// certain font supports all the characters in the string.
    @inlinable func getUnknownGlyphsCount() -> Int {
        let result = pango_layout_get_unknown_glyphs_count(layout_ptr)
        let rv = Int(result)
        return rv
    }

    /// Gets the width to which the lines of the `PangoLayout` should wrap.
    @inlinable func getWidth() -> Int {
        let result = pango_layout_get_width(layout_ptr)
        let rv = Int(result)
        return rv
    }

    /// Gets the wrap mode for the layout.
    /// 
    /// Use [method`Pango.Layout.is_wrapped`] to query whether
    /// any paragraphs were actually wrapped.
    @inlinable func getWrap() -> PangoWrapMode {
        let result = pango_layout_get_wrap(layout_ptr)
        let rv = result
        return rv
    }

    /// Converts from byte `index_` within the `layout` to line and X position.
    /// 
    /// The X position is measured from the left edge of the line.
    @inlinable func indexToLineX(index: Int, trailing: Bool, line: UnsafeMutablePointer<gint>! = nil, xPos: UnsafeMutablePointer<gint>! = nil) {
        
        pango_layout_index_to_line_x(layout_ptr, gint(index), gboolean((trailing) ? 1 : 0), line, xPos)
        
    }

    /// Converts from an index within a `PangoLayout` to the onscreen position
    /// corresponding to the grapheme at that index.
    /// 
    /// The return value is represented as rectangle. Note that `pos-&gt;x` is
    /// always the leading edge of the grapheme and `pos-&gt;x + pos-&gt;width` the
    /// trailing edge of the grapheme. If the directionality of the grapheme
    /// is right-to-left, then `pos-&gt;width` will be negative.
    @inlinable func indexToPos<RectangleT: RectangleProtocol>(index: Int, pos: RectangleT) {
        
        pango_layout_index_to_pos(layout_ptr, gint(index), pos._ptr)
        
    }

    /// Computes a new cursor position from an old position and a direction.
    /// 
    /// If `direction` is positive, then the new position will cause the strong
    /// or weak cursor to be displayed one position to right of where it was
    /// with the old cursor position. If `direction` is negative, it will be
    /// moved to the left.
    /// 
    /// In the presence of bidirectional text, the correspondence between
    /// logical and visual order will depend on the direction of the current
    /// run, and there may be jumps when the cursor is moved off of the end
    /// of a run.
    /// 
    /// Motion here is in cursor positions, not in characters, so a single
    /// call to this function may move the cursor over multiple characters
    /// when multiple characters combine to form a single grapheme.
    @inlinable func moveCursorVisually(strong: Bool, oldIndex: Int, oldTrailing: Int, direction: Int, newIndex: UnsafeMutablePointer<gint>!, newTrailing: UnsafeMutablePointer<gint>!) {
        
        pango_layout_move_cursor_visually(layout_ptr, gboolean((strong) ? 1 : 0), gint(oldIndex), gint(oldTrailing), gint(direction), newIndex, newTrailing)
        
    }

    /// Serializes the `layout` for later deserialization via [func`Pango.Layout.deserialize`].
    /// 
    /// There are no guarantees about the format of the output across different
    /// versions of Pango and [func`Pango.Layout.deserialize`] will reject data
    /// that it cannot parse.
    /// 
    /// The intended use of this function is testing, benchmarking and debugging.
    /// The format is not meant as a permanent storage format.
    @inlinable func serialize(flags: LayoutSerializeFlags) -> GLib.BytesRef! {
        let result = pango_layout_serialize(layout_ptr, flags.value)
        let rv = GLib.BytesRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Sets the alignment for the layout: how partial lines are
    /// positioned within the horizontal space available.
    /// 
    /// The default alignment is `PANGO_ALIGN_LEFT`.
    @inlinable func set(alignment: PangoAlignment) {
        
        pango_layout_set_alignment(layout_ptr, alignment)
        
    }

    /// Sets the text attributes for a layout object.
    /// 
    /// References `attrs`, so the caller can unref its reference.
    @inlinable func setAttributes(attrs: AttrListRef? = nil) {
            
        pango_layout_set_attributes(layout_ptr, attrs?.attr_list_ptr)
            
    }
    /// Sets the text attributes for a layout object.
    /// 
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
    /// 
    /// The default value is `PANGO_ELLIPSIZE_NONE`.
    /// 
    /// See [method`Pango.Layout.set_height`] for details.
    @inlinable func set(ellipsize: PangoEllipsizeMode) {
        
        pango_layout_set_ellipsize(layout_ptr, ellipsize)
        
    }

    /// Sets the default font description for the layout.
    /// 
    /// If no font description is set on the layout, the
    /// font description from the layout's context is used.
    @inlinable func setFontDescription(desc: FontDescriptionRef? = nil) {
            
        pango_layout_set_font_description(layout_ptr, desc?.font_description_ptr)
            
    }
    /// Sets the default font description for the layout.
    /// 
    /// If no font description is set on the layout, the
    /// font description from the layout's context is used.
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
    /// The default value of -1 means that the first line of each paragraph is ellipsized.
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
    /// 
    /// The default value is 0.
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
    /// 
    /// Note that tabs and justification conflict with each other:
    /// Justification will move content away from its tab-aligned
    /// positions.
    /// 
    /// The default value is `false`.
    /// 
    /// Also see [method`Pango.Layout.set_justify_last_line`].
    @inlinable func set(justify: Bool) {
        
        pango_layout_set_justify(layout_ptr, gboolean((justify) ? 1 : 0))
        
    }

    /// Sets whether the last line should be stretched to fill the
    /// entire width of the layout.
    /// 
    /// This only has an effect if [method`Pango.Layout.set_justify`] has
    /// been called as well.
    /// 
    /// The default value is `false`.
    @inlinable func setJustifyLastLine(justify: Bool) {
        
        pango_layout_set_justify_last_line(layout_ptr, gboolean((justify) ? 1 : 0))
        
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
    /// If `factor` is zero (the default), spacing is applied as before.
    /// 
    /// Note: for semantics that are closer to the CSS line-height
    /// property, see [func`Pango.attr_line_height_new`].
    @inlinable func setLineSpacing(factor: CFloat) {
        
        pango_layout_set_line_spacing(layout_ptr, factor)
        
    }

    /// Sets the layout text and attribute list from marked-up text.
    /// 
    /// See [Pango Markup](pango_markup.html)).
    /// 
    /// Replaces the current text and attribute list.
    /// 
    /// This is the same as [method`Pango.Layout.set_markup_with_accel`],
    /// but the markup text isn't scanned for accelerators.
    @inlinable func set(markup: UnsafePointer<CChar>!, length: Int) {
        
        pango_layout_set_markup(layout_ptr, markup, gint(length))
        
    }

    /// Sets the layout text and attribute list from marked-up text.
    /// 
    /// See [Pango Markup](pango_markup.html)).
    /// 
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
    /// 
    /// The default value is `false`.
    @inlinable func setSingleParagraphMode(setting: Bool) {
        
        pango_layout_set_single_paragraph_mode(layout_ptr, gboolean((setting) ? 1 : 0))
        
    }

    /// Sets the amount of spacing in Pango units between
    /// the lines of the layout.
    /// 
    /// When placing lines with spacing, Pango arranges things so that
    /// 
    ///     line2.top = line1.bottom + spacing
    /// 
    /// The default value is 0.
    /// 
    /// Note: Since 1.44, Pango is using the line height (as determined
    /// by the font) for placing lines when the line spacing factor is set
    /// to a non-zero value with [method`Pango.Layout.set_line_spacing`].
    /// In that case, the `spacing` set with this function is ignored.
    /// 
    /// Note: for semantics that are closer to the CSS line-height
    /// property, see [func`Pango.attr_line_height_new`].
    @inlinable func set(spacing: Int) {
        
        pango_layout_set_spacing(layout_ptr, gint(spacing))
        
    }

    /// Sets the tabs to use for `layout`, overriding the default tabs.
    /// 
    /// `PangoLayout` will place content at the next tab position
    /// whenever it meets a Tab character (U+0009).
    /// 
    /// By default, tabs are every 8 spaces. If `tabs` is `nil`, the
    /// default tabs are reinstated. `tabs` is copied into the layout;
    /// you must free your copy of `tabs` yourself.
    /// 
    /// Note that tabs and justification conflict with each other:
    /// Justification will move content away from its tab-aligned
    /// positions. The same is true for alignments other than
    /// `PANGO_ALIGN_LEFT`.
    @inlinable func set(tabs: TabArrayRef? = nil) {
            
        pango_layout_set_tabs(layout_ptr, tabs?.tab_array_ptr)
            
    }
    /// Sets the tabs to use for `layout`, overriding the default tabs.
    /// 
    /// `PangoLayout` will place content at the next tab position
    /// whenever it meets a Tab character (U+0009).
    /// 
    /// By default, tabs are every 8 spaces. If `tabs` is `nil`, the
    /// default tabs are reinstated. `tabs` is copied into the layout;
    /// you must free your copy of `tabs` yourself.
    /// 
    /// Note that tabs and justification conflict with each other:
    /// Justification will move content away from its tab-aligned
    /// positions. The same is true for alignments other than
    /// `PANGO_ALIGN_LEFT`.
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
    /// 
    /// The default value is `PANGO_WRAP_WORD`.
    @inlinable func set(wrap: PangoWrapMode) {
        
        pango_layout_set_wrap(layout_ptr, wrap)
        
    }

    /// A convenience method to serialize a layout to a file.
    /// 
    /// It is equivalent to calling [method`Pango.Layout.serialize`]
    /// followed by [func`GLib.file_set_contents`].
    /// 
    /// See those two functions for details on the arguments.
    /// 
    /// It is mostly intended for use inside a debugger to quickly dump
    /// a layout to a file for later inspection.
    @inlinable func writeToFile(flags: LayoutSerializeFlags, filename: UnsafePointer<CChar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let result = pango_layout_write_to_file(layout_ptr, flags.value, filename, &error)
        if let error = error { throw GLibError(error) }
        let rv = ((result) != 0)
        return rv
    }

    /// Converts from X and Y position within a layout to the byte index to the
    /// character at that logical position.
    /// 
    /// If the Y position is not inside the layout, the closest position is
    /// chosen (the position will be clamped inside the layout). If the X position
    /// is not within the layout, then the start or the end of the line is
    /// chosen as described for [method`Pango.LayoutLine.x_to_index`]. If either
    /// the X or Y positions were not inside the layout, then the function returns
    /// `false`; on an exact hit, it returns `true`.
    @inlinable func xyToIndex(x: Int, y: Int, index: UnsafeMutablePointer<gint>!, trailing: UnsafeMutablePointer<gint>!) -> Bool {
        let result = pango_layout_xy_to_index(layout_ptr, gint(x), gint(y), index, trailing)
        let rv = ((result) != 0)
        return rv
    }
    /// Gets the alignment for the layout: how partial lines are
    /// positioned within the horizontal space available.
    @inlinable var alignment: PangoAlignment {
        /// Gets the alignment for the layout: how partial lines are
        /// positioned within the horizontal space available.
        get {
            let result = pango_layout_get_alignment(layout_ptr)
        let rv = result
            return rv
        }
        /// Sets the alignment for the layout: how partial lines are
        /// positioned within the horizontal space available.
        /// 
        /// The default alignment is `PANGO_ALIGN_LEFT`.
        nonmutating set {
            pango_layout_set_alignment(layout_ptr, newValue)
        }
    }

    /// Gets the attribute list for the layout, if any.
    @inlinable var attributes: Pango.AttrListRef! {
        /// Gets the attribute list for the layout, if any.
        get {
            let result = pango_layout_get_attributes(layout_ptr)
        let rv = AttrListRef(gconstpointer: gconstpointer(result))
            return rv
        }
        /// Sets the text attributes for a layout object.
        /// 
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
            let result = pango_layout_get_auto_dir(layout_ptr)
        let rv = ((result) != 0)
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
            let result = pango_layout_get_baseline(layout_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// Returns the number of Unicode characters in the
    /// the text of `layout`.
    @inlinable var characterCount: Int {
        /// Returns the number of Unicode characters in the
        /// the text of `layout`.
        get {
            let result = pango_layout_get_character_count(layout_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// Retrieves the `PangoContext` used for this layout.
    @inlinable var context: Pango.ContextRef! {
        /// Retrieves the `PangoContext` used for this layout.
        get {
            let result = pango_layout_get_context(layout_ptr)
        let rv = ContextRef(gconstpointer: gconstpointer(result))
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
            let result = pango_layout_get_ellipsize(layout_ptr)
        let rv = result
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
        /// 
        /// The default value is `PANGO_ELLIPSIZE_NONE`.
        /// 
        /// See [method`Pango.Layout.set_height`] for details.
        nonmutating set {
            pango_layout_set_ellipsize(layout_ptr, newValue)
        }
    }

    /// Gets the font description for the layout, if any.
    @inlinable var fontDescription: Pango.FontDescriptionRef! {
        /// Gets the font description for the layout, if any.
        get {
            let result = pango_layout_get_font_description(layout_ptr)
        let rv = FontDescriptionRef(gconstpointer: gconstpointer(result))
            return rv
        }
        /// Sets the default font description for the layout.
        /// 
        /// If no font description is set on the layout, the
        /// font description from the layout's context is used.
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
            let result = pango_layout_get_height(layout_ptr)
        let rv = Int(result)
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
        /// The default value of -1 means that the first line of each paragraph is ellipsized.
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
            let result = pango_layout_get_indent(layout_ptr)
        let rv = Int(result)
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
        /// 
        /// The default value is 0.
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
            let result = pango_layout_is_ellipsized(layout_ptr)
        let rv = ((result) != 0)
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
            let result = pango_layout_is_wrapped(layout_ptr)
        let rv = ((result) != 0)
            return rv
        }
    }

    /// Returns an iterator to iterate over the visual extents of the layout.
    @inlinable var iter: Pango.LayoutIterRef! {
        /// Returns an iterator to iterate over the visual extents of the layout.
        get {
            let result = pango_layout_get_iter(layout_ptr)
        let rv = LayoutIterRef(gconstpointer: gconstpointer(result))
            return rv
        }
    }

    /// Gets whether each complete line should be stretched to fill the entire
    /// width of the layout.
    @inlinable var justify: Bool {
        /// Gets whether each complete line should be stretched to fill the entire
        /// width of the layout.
        get {
            let result = pango_layout_get_justify(layout_ptr)
        let rv = ((result) != 0)
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
        /// 
        /// Note that tabs and justification conflict with each other:
        /// Justification will move content away from its tab-aligned
        /// positions.
        /// 
        /// The default value is `false`.
        /// 
        /// Also see [method`Pango.Layout.set_justify_last_line`].
        nonmutating set {
            pango_layout_set_justify(layout_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets whether the last line should be stretched
    /// to fill the entire width of the layout.
    @inlinable var justifyLastLine: Bool {
        /// Gets whether the last line should be stretched
        /// to fill the entire width of the layout.
        get {
            let result = pango_layout_get_justify_last_line(layout_ptr)
        let rv = ((result) != 0)
            return rv
        }
        /// Sets whether the last line should be stretched to fill the
        /// entire width of the layout.
        /// 
        /// This only has an effect if [method`Pango.Layout.set_justify`] has
        /// been called as well.
        /// 
        /// The default value is `false`.
        nonmutating set {
            pango_layout_set_justify_last_line(layout_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Retrieves the count of lines for the `layout`.
    @inlinable var lineCount: Int {
        /// Retrieves the count of lines for the `layout`.
        get {
            let result = pango_layout_get_line_count(layout_ptr)
        let rv = Int(result)
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
            let result = pango_layout_get_line_spacing(layout_ptr)
        let rv = result
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
        /// If `factor` is zero (the default), spacing is applied as before.
        /// 
        /// Note: for semantics that are closer to the CSS line-height
        /// property, see [func`Pango.attr_line_height_new`].
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
            let result = pango_layout_get_lines(layout_ptr)
        let rv = GLib.SListRef(gconstpointer: gconstpointer(result))
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
            let result = pango_layout_get_lines_readonly(layout_ptr)
        let rv = GLib.SListRef(gconstpointer: gconstpointer(result))
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
            let result = pango_layout_get_serial(layout_ptr)
        let rv = Int(result)
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
            let result = pango_layout_get_single_paragraph_mode(layout_ptr)
        let rv = ((result) != 0)
            return rv
        }
        /// Sets the single paragraph mode of `layout`.
        /// 
        /// If `setting` is `true`, do not treat newlines and similar characters
        /// as paragraph separators; instead, keep all text in a single paragraph,
        /// and display a glyph for paragraph separator characters. Used when
        /// you want to allow editing of newlines on a single text line.
        /// 
        /// The default value is `false`.
        nonmutating set {
            pango_layout_set_single_paragraph_mode(layout_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the amount of spacing between the lines of the layout.
    @inlinable var spacing: Int {
        /// Gets the amount of spacing between the lines of the layout.
        get {
            let result = pango_layout_get_spacing(layout_ptr)
        let rv = Int(result)
            return rv
        }
        /// Sets the amount of spacing in Pango units between
        /// the lines of the layout.
        /// 
        /// When placing lines with spacing, Pango arranges things so that
        /// 
        ///     line2.top = line1.bottom + spacing
        /// 
        /// The default value is 0.
        /// 
        /// Note: Since 1.44, Pango is using the line height (as determined
        /// by the font) for placing lines when the line spacing factor is set
        /// to a non-zero value with [method`Pango.Layout.set_line_spacing`].
        /// In that case, the `spacing` set with this function is ignored.
        /// 
        /// Note: for semantics that are closer to the CSS line-height
        /// property, see [func`Pango.attr_line_height_new`].
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
    @inlinable var tabs: Pango.TabArrayRef! {
        /// Gets the current `PangoTabArray` used by this layout.
        /// 
        /// If no `PangoTabArray` has been set, then the default tabs are
        /// in use and `nil` is returned. Default tabs are every 8 spaces.
        /// 
        /// The return value should be freed with [method`Pango.TabArray.free`].
        get {
            let result = pango_layout_get_tabs(layout_ptr)
        let rv = TabArrayRef(gconstpointer: gconstpointer(result))
            return rv
        }
        /// Sets the tabs to use for `layout`, overriding the default tabs.
        /// 
        /// `PangoLayout` will place content at the next tab position
        /// whenever it meets a Tab character (U+0009).
        /// 
        /// By default, tabs are every 8 spaces. If `tabs` is `nil`, the
        /// default tabs are reinstated. `tabs` is copied into the layout;
        /// you must free your copy of `tabs` yourself.
        /// 
        /// Note that tabs and justification conflict with each other:
        /// Justification will move content away from its tab-aligned
        /// positions. The same is true for alignments other than
        /// `PANGO_ALIGN_LEFT`.
        nonmutating set {
            pango_layout_set_tabs(layout_ptr, UnsafeMutablePointer<PangoTabArray>(newValue?.tab_array_ptr))
        }
    }

    /// Gets the text in the layout.
    /// 
    /// The returned text should not be freed or modified.
    @inlinable var text: String! {
        /// Gets the text in the layout.
        /// 
        /// The returned text should not be freed or modified.
        get {
            let result = pango_layout_get_text(layout_ptr)
        let rv = result.map({ String(cString: $0) })
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
            let result = pango_layout_get_unknown_glyphs_count(layout_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// Gets the width to which the lines of the `PangoLayout` should wrap.
    @inlinable var width: Int {
        /// Gets the width to which the lines of the `PangoLayout` should wrap.
        get {
            let result = pango_layout_get_width(layout_ptr)
        let rv = Int(result)
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
            let result = pango_layout_get_wrap(layout_ptr)
        let rv = result
            return rv
        }
        /// Sets the wrap mode.
        /// 
        /// The wrap mode only has effect if a width is set on the layout
        /// with [method`Pango.Layout.set_width`]. To turn off wrapping,
        /// set the width to -1.
        /// 
        /// The default value is `PANGO_WRAP_WORD`.
        nonmutating set {
            pango_layout_set_wrap(layout_ptr, newValue)
        }
    }


}



// MARK: - Language Record

/// The `PangoLanguage` structure is used to
/// represent a language.
/// 
/// `PangoLanguage` pointers can be efficiently
/// copied and compared with each other.
///
/// The `LanguageProtocol` protocol exposes the methods and properties of an underlying `PangoLanguage` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Language`.
/// Alternatively, use `LanguageRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol LanguageProtocol {
        /// Untyped pointer to the underlying `PangoLanguage` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoLanguage` instance.
    var language_ptr: UnsafeMutablePointer<PangoLanguage>! { get }

    /// Required Initialiser for types conforming to `LanguageProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `PangoLanguage` structure is used to
/// represent a language.
/// 
/// `PangoLanguage` pointers can be efficiently
/// copied and compared with each other.
///
/// The `LanguageRef` type acts as a lightweight Swift reference to an underlying `PangoLanguage` instance.
/// It exposes methods that can operate on this data type through `LanguageProtocol` conformance.
/// Use `LanguageRef` only as an `unowned` reference to an existing `PangoLanguage` instance.
///
public struct LanguageRef: LanguageProtocol {
        /// Untyped pointer to the underlying `PangoLanguage` instance.
    /// For type-safe access, use the generated, typed pointer `language_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LanguageRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoLanguage>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoLanguage>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoLanguage>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoLanguage>?) {
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

    /// Reference intialiser for a related type that implements `LanguageProtocol`
    @inlinable init<T: LanguageProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LanguageProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LanguageProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LanguageProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LanguageProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LanguageProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Convert a language tag to a `PangoLanguage`.
    /// 
    /// The language tag must be in a RFC-3066 format. `PangoLanguage` pointers
    /// can be efficiently copied (copy the pointer) and compared with other
    /// language tags (compare the pointer.)
    /// 
    /// This function first canonicalizes the string by converting it to
    /// lowercase, mapping '_' to '-', and stripping all characters other
    /// than letters and '-'.
    /// 
    /// Use [func`Pango.Language.get_default`] if you want to get the
    /// `PangoLanguage` for the current locale of the process.
    @inlinable static func from(string language: UnsafePointer<CChar>? = nil) -> Pango.LanguageRef! {
            let result = pango_language_from_string(language)
        guard let rv = LanguageRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Returns the `PangoLanguage` for the current locale of the process.
    /// 
    /// On Unix systems, this is the return value is derived from
    /// `setlocale (LC_CTYPE, NULL)`, and the user can
    /// affect this through the environment variables LC_ALL, LC_CTYPE or
    /// LANG (checked in that order). The locale string typically is in
    /// the form lang_COUNTRY, where lang is an ISO-639 language code, and
    /// COUNTRY is an ISO-3166 country code. For instance, sv_FI for
    /// Swedish as written in Finland or pt_BR for Portuguese as written in
    /// Brazil.
    /// 
    /// On Windows, the C library does not use any such environment
    /// variables, and setting them won't affect the behavior of functions
    /// like `ctime()`. The user sets the locale through the Regional Options
    /// in the Control Panel. The C library (in the `setlocale()` function)
    /// does not use country and language codes, but country and language
    /// names spelled out in English.
    /// However, this function does check the above environment
    /// variables, and does return a Unix-style locale string based on
    /// either said environment variables or the thread's current locale.
    /// 
    /// Your application should call ``setlocale(LC_ALL, "")`` for the user
    /// settings to take effect. GTK does this in its initialization
    /// functions automatically (by calling `gtk_set_locale()`).
    /// See the `setlocale()` manpage for more details.
    /// 
    /// Note that the default language can change over the life of an application.
    /// 
    /// Also note that this function will not do the right thing if you
    /// use per-thread locales with `uselocale()`. In that case, you should
    /// just call `pango_language_from_string()` yourself.
    @inlinable static func getDefault() -> Pango.LanguageRef! {
            let result = pango_language_get_default()
        guard let rv = LanguageRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }
}

/// The `PangoLanguage` structure is used to
/// represent a language.
/// 
/// `PangoLanguage` pointers can be efficiently
/// copied and compared with each other.
///
/// The `Language` type acts as an owner of an underlying `PangoLanguage` instance.
/// It provides the methods that can operate on this data type through `LanguageProtocol` conformance.
/// Use `Language` as a strong reference or owner of a `PangoLanguage` instance.
///
open class Language: LanguageProtocol {
        /// Untyped pointer to the underlying `PangoLanguage` instance.
    /// For type-safe access, use the generated, typed pointer `language_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Language` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoLanguage>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Language` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoLanguage>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Language` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Language` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Language` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoLanguage>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Language` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoLanguage>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoLanguage` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Language` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoLanguage>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoLanguage, cannot ref(language_ptr)
    }

    /// Reference intialiser for a related type that implements `LanguageProtocol`
    /// `PangoLanguage` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `LanguageProtocol`
    @inlinable public init<T: LanguageProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoLanguage, cannot ref(language_ptr)
    }

    /// Do-nothing destructor for `PangoLanguage`.
    deinit {
        // no reference counting for PangoLanguage, cannot unref(language_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LanguageProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LanguageProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoLanguage, cannot ref(language_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LanguageProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LanguageProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoLanguage, cannot ref(language_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LanguageProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LanguageProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoLanguage, cannot ref(language_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LanguageProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LanguageProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoLanguage, cannot ref(language_ptr)
    }


    /// Convert a language tag to a `PangoLanguage`.
    /// 
    /// The language tag must be in a RFC-3066 format. `PangoLanguage` pointers
    /// can be efficiently copied (copy the pointer) and compared with other
    /// language tags (compare the pointer.)
    /// 
    /// This function first canonicalizes the string by converting it to
    /// lowercase, mapping '_' to '-', and stripping all characters other
    /// than letters and '-'.
    /// 
    /// Use [func`Pango.Language.get_default`] if you want to get the
    /// `PangoLanguage` for the current locale of the process.
    @inlinable public static func from(string language: UnsafePointer<CChar>? = nil) -> Pango.Language! {
            let result = pango_language_from_string(language)
        guard let rv = Language(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Returns the `PangoLanguage` for the current locale of the process.
    /// 
    /// On Unix systems, this is the return value is derived from
    /// `setlocale (LC_CTYPE, NULL)`, and the user can
    /// affect this through the environment variables LC_ALL, LC_CTYPE or
    /// LANG (checked in that order). The locale string typically is in
    /// the form lang_COUNTRY, where lang is an ISO-639 language code, and
    /// COUNTRY is an ISO-3166 country code. For instance, sv_FI for
    /// Swedish as written in Finland or pt_BR for Portuguese as written in
    /// Brazil.
    /// 
    /// On Windows, the C library does not use any such environment
    /// variables, and setting them won't affect the behavior of functions
    /// like `ctime()`. The user sets the locale through the Regional Options
    /// in the Control Panel. The C library (in the `setlocale()` function)
    /// does not use country and language codes, but country and language
    /// names spelled out in English.
    /// However, this function does check the above environment
    /// variables, and does return a Unix-style locale string based on
    /// either said environment variables or the thread's current locale.
    /// 
    /// Your application should call ``setlocale(LC_ALL, "")`` for the user
    /// settings to take effect. GTK does this in its initialization
    /// functions automatically (by calling `gtk_set_locale()`).
    /// See the `setlocale()` manpage for more details.
    /// 
    /// Note that the default language can change over the life of an application.
    /// 
    /// Also note that this function will not do the right thing if you
    /// use per-thread locales with `uselocale()`. In that case, you should
    /// just call `pango_language_from_string()` yourself.
    @inlinable public static func getDefault() -> Pango.Language! {
            let result = pango_language_get_default()
        guard let rv = Language(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

}

// MARK: no Language properties

// MARK: no Language signals

// MARK: Language has no signals
// MARK: Language Record: LanguageProtocol extension (methods and fields)
public extension LanguageProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoLanguage` instance.
    @inlinable var language_ptr: UnsafeMutablePointer<PangoLanguage>! { return ptr?.assumingMemoryBound(to: PangoLanguage.self) }

    /// Get a string that is representative of the characters needed to
    /// render a particular language.
    /// 
    /// The sample text may be a pangram, but is not necessarily. It is chosen
    /// to be demonstrative of normal text in the language, as well as exposing
    /// font feature requirements unique to the language. It is suitable for use
    /// as sample text in a font selection dialog.
    /// 
    /// If `language` is `nil`, the default language as found by
    /// [func`Pango.Language.get_default`] is used.
    /// 
    /// If Pango does not have a sample string for `language`, the classic
    /// "The quick brown fox..." is returned.  This can be detected by
    /// comparing the returned pointer value to that returned for (non-existent)
    /// language code "xx".  That is, compare to:
    /// 
    /// ```
    /// pango_language_get_sample_string (pango_language_from_string ("xx"))
    /// ```
    @inlinable func getSampleString() -> String! {
        let result = pango_language_get_sample_string(language_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Determines the scripts used to to write `language`.
    /// 
    /// If nothing is known about the language tag `language`,
    /// or if `language` is `nil`, then `nil` is returned.
    /// The list of scripts returned starts with the script that the
    /// language uses most and continues to the one it uses least.
    /// 
    /// The value `num_script` points at will be set to the number
    /// of scripts in the returned array (or zero if `nil` is returned).
    /// 
    /// Most languages use only one script for writing, but there are
    /// some that use two (Latin and Cyrillic for example), and a few
    /// use three (Japanese for example). Applications should not make
    /// any assumptions on the maximum number of scripts returned
    /// though, except that it is positive if the return value is not
    /// `nil`, and it is a small number.
    /// 
    /// The [method`Pango.Language.includes_script`] function uses this
    /// function internally.
    /// 
    /// Note: while the return value is declared as `PangoScript`, the
    /// returned values are from the `GUnicodeScript` enumeration, which
    /// may have more values. Callers need to handle unknown values.
    @inlinable func getScripts(numScripts: UnsafeMutablePointer<gint>! = nil) -> UnsafePointer<PangoScript>! {
        let result = pango_language_get_scripts(language_ptr, numScripts)
        let rv = result
        return rv
    }

    /// Determines if `script` is one of the scripts used to
    /// write `language`.
    /// 
    /// The returned value is conservative; if nothing is known about
    /// the language tag `language`, `true` will be returned, since, as
    /// far as Pango knows, `script` might be used to write `language`.
    /// 
    /// This routine is used in Pango's itemization process when
    /// determining if a supplied language tag is relevant to
    /// a particular section of text. It probably is not useful
    /// for applications in most circumstances.
    /// 
    /// This function uses [method`Pango.Language.get_scripts`] internally.
    @inlinable func includes(script: PangoScript) -> Bool {
        let result = pango_language_includes_script(language_ptr, script)
        let rv = ((result) != 0)
        return rv
    }

    /// Checks if a language tag matches one of the elements in a list of
    /// language ranges.
    /// 
    /// A language tag is considered to match a range in the list if the
    /// range is '*', the range is exactly the tag, or the range is a prefix
    /// of the tag, and the character after it in the tag is '-'.
    @inlinable func matches(rangeList: UnsafePointer<CChar>!) -> Bool {
        let result = pango_language_matches(language_ptr, rangeList)
        let rv = ((result) != 0)
        return rv
    }

    /// Gets the RFC-3066 format string representing the given language tag.
    /// 
    /// Returns (transfer none): a string representing the language tag
    @inlinable func toString() -> String! {
        let result = pango_language_to_string(language_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Create a new language tag attribute.
    @inlinable func attrLanguageNew() -> Pango.AttributeRef! {
        let result = pango_attr_language_new(language_ptr)
        let rv = AttributeRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Computes a `PangoLogAttr` for each character in `text`.
    /// 
    /// The `attrs` array must have one `PangoLogAttr` for
    /// each position in `text`; if `text` contains N characters,
    /// it has N+1 positions, including the last position at the
    /// end of the text. `text` should be an entire paragraph;
    /// logical attributes can't be computed without context
    /// (for example you need to see spaces on either side of
    /// a word to know the word is a word).
    @inlinable func getLogAttrs(text: UnsafePointer<CChar>!, length: Int, level: Int, attrs: UnsafeMutablePointer<PangoLogAttr>!, attrsLen: Int) {
        
        pango_get_log_attrs(text, gint(length), gint(level), language_ptr, attrs, gint(attrsLen))
        
    }
    /// Get a string that is representative of the characters needed to
    /// render a particular language.
    /// 
    /// The sample text may be a pangram, but is not necessarily. It is chosen
    /// to be demonstrative of normal text in the language, as well as exposing
    /// font feature requirements unique to the language. It is suitable for use
    /// as sample text in a font selection dialog.
    /// 
    /// If `language` is `nil`, the default language as found by
    /// [func`Pango.Language.get_default`] is used.
    /// 
    /// If Pango does not have a sample string for `language`, the classic
    /// "The quick brown fox..." is returned.  This can be detected by
    /// comparing the returned pointer value to that returned for (non-existent)
    /// language code "xx".  That is, compare to:
    /// 
    /// ```
    /// pango_language_get_sample_string (pango_language_from_string ("xx"))
    /// ```
    @inlinable var sampleString: String! {
        /// Get a string that is representative of the characters needed to
        /// render a particular language.
        /// 
        /// The sample text may be a pangram, but is not necessarily. It is chosen
        /// to be demonstrative of normal text in the language, as well as exposing
        /// font feature requirements unique to the language. It is suitable for use
        /// as sample text in a font selection dialog.
        /// 
        /// If `language` is `nil`, the default language as found by
        /// [func`Pango.Language.get_default`] is used.
        /// 
        /// If Pango does not have a sample string for `language`, the classic
        /// "The quick brown fox..." is returned.  This can be detected by
        /// comparing the returned pointer value to that returned for (non-existent)
        /// language code "xx".  That is, compare to:
        /// 
        /// ```
        /// pango_language_get_sample_string (pango_language_from_string ("xx"))
        /// ```
        get {
            let result = pango_language_get_sample_string(language_ptr)
        let rv = result.map({ String(cString: $0) })
            return rv
        }
    }


}



/// Metatype/GType declaration for Layout
public extension LayoutClassRef {
    
    /// This getter returns the GLib type identifier registered for `Layout`
    static var metatypeReference: GType { pango_layout_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<PangoLayoutClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: PangoLayoutClass.self) }
    
    static var metatype: PangoLayoutClass? { metatypePointer?.pointee } 
    
    static var wrapper: LayoutClassRef? { LayoutClassRef(metatypePointer) }
    
    
}

// MARK: - LayoutClass Record


///
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

    /// Required Initialiser for types conforming to `LayoutClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
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

// MARK: LayoutClass Record: LayoutClassProtocol extension (methods and fields)
public extension LayoutClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoLayoutClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoLayoutClass>! { return ptr?.assumingMemoryBound(to: PangoLayoutClass.self) }



}



// MARK: - LayoutIter Record

/// A `PangoLayoutIter` can be used to iterate over the visual
/// extents of a `PangoLayout`.
/// 
/// To obtain a `PangoLayoutIter`, use [method`Pango.Layout.get_iter`].
/// 
/// The `PangoLayoutIter` structure is opaque, and has no user-visible fields.
///
/// The `LayoutIterProtocol` protocol exposes the methods and properties of an underlying `PangoLayoutIter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LayoutIter`.
/// Alternatively, use `LayoutIterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol LayoutIterProtocol {
        /// Untyped pointer to the underlying `PangoLayoutIter` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoLayoutIter` instance.
    var layout_iter_ptr: UnsafeMutablePointer<PangoLayoutIter>! { get }

    /// Required Initialiser for types conforming to `LayoutIterProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `PangoLayoutIter` can be used to iterate over the visual
/// extents of a `PangoLayout`.
/// 
/// To obtain a `PangoLayoutIter`, use [method`Pango.Layout.get_iter`].
/// 
/// The `PangoLayoutIter` structure is opaque, and has no user-visible fields.
///
/// The `LayoutIterRef` type acts as a lightweight Swift reference to an underlying `PangoLayoutIter` instance.
/// It exposes methods that can operate on this data type through `LayoutIterProtocol` conformance.
/// Use `LayoutIterRef` only as an `unowned` reference to an existing `PangoLayoutIter` instance.
///
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

/// A `PangoLayoutIter` can be used to iterate over the visual
/// extents of a `PangoLayout`.
/// 
/// To obtain a `PangoLayoutIter`, use [method`Pango.Layout.get_iter`].
/// 
/// The `PangoLayoutIter` structure is opaque, and has no user-visible fields.
///
/// The `LayoutIter` type acts as an owner of an underlying `PangoLayoutIter` instance.
/// It provides the methods that can operate on this data type through `LayoutIterProtocol` conformance.
/// Use `LayoutIter` as a strong reference or owner of a `PangoLayoutIter` instance.
///
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
        let result = pango_layout_iter_at_last_line(layout_iter_ptr)
        let rv = ((result) != 0)
        return rv
    }

    /// Copies a `PangoLayoutIter`.
    @inlinable func copy() -> Pango.LayoutIterRef! {
        let result = pango_layout_iter_copy(layout_iter_ptr)
        guard let rv = LayoutIterRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Frees an iterator that's no longer in use.
    @inlinable func free() {
        
        pango_layout_iter_free(layout_iter_ptr)
        
    }

    /// Gets the Y position of the current line's baseline, in layout
    /// coordinates.
    /// 
    /// Layout coordinates have the origin at the top left of the entire layout.
    @inlinable func getBaseline() -> Int {
        let result = pango_layout_iter_get_baseline(layout_iter_ptr)
        let rv = Int(result)
        return rv
    }

    /// Gets the extents of the current character, in layout coordinates.
    /// 
    /// Layout coordinates have the origin at the top left of the entire layout.
    /// 
    /// Only logical extents can sensibly be obtained for characters;
    /// ink extents make sense only down to the level of clusters.
    @inlinable func getCharExtents<RectangleT: RectangleProtocol>(logicalRect: RectangleT) {
        
        pango_layout_iter_get_char_extents(layout_iter_ptr, logicalRect._ptr)
        
    }

    /// Gets the extents of the current cluster, in layout coordinates.
    /// 
    /// Layout coordinates have the origin at the top left of the entire layout.
    @inlinable func getClusterExtents(inkRect: RectangleRef? = nil, logicalRect: RectangleRef? = nil) {
            
        pango_layout_iter_get_cluster_extents(layout_iter_ptr, inkRect?._ptr, logicalRect?._ptr)
            
    }
    /// Gets the extents of the current cluster, in layout coordinates.
    /// 
    /// Layout coordinates have the origin at the top left of the entire layout.
    @inlinable func getClusterExtents<RectangleT: RectangleProtocol>(inkRect: RectangleT?, logicalRect: RectangleT?) {
        
        pango_layout_iter_get_cluster_extents(layout_iter_ptr, inkRect?._ptr, logicalRect?._ptr)
        
    }

    /// Gets the current byte index.
    /// 
    /// Note that iterating forward by char moves in visual order,
    /// not logical order, so indexes may not be sequential. Also,
    /// the index may be equal to the length of the text in the
    /// layout, if on the `nil` run (see [method`Pango.LayoutIter.get_run`]).
    @inlinable func getIndex() -> Int {
        let result = pango_layout_iter_get_index(layout_iter_ptr)
        let rv = Int(result)
        return rv
    }

    /// Gets the layout associated with a `PangoLayoutIter`.
    @inlinable func getLayout() -> Pango.LayoutRef! {
        let result = pango_layout_iter_get_layout(layout_iter_ptr)
        let rv = LayoutRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Obtains the extents of the `PangoLayout` being iterated over.
    @inlinable func getLayoutExtents(inkRect: RectangleRef? = nil, logicalRect: RectangleRef? = nil) {
            
        pango_layout_iter_get_layout_extents(layout_iter_ptr, inkRect?._ptr, logicalRect?._ptr)
            
    }
    /// Obtains the extents of the `PangoLayout` being iterated over.
    @inlinable func getLayoutExtents<RectangleT: RectangleProtocol>(inkRect: RectangleT?, logicalRect: RectangleT?) {
        
        pango_layout_iter_get_layout_extents(layout_iter_ptr, inkRect?._ptr, logicalRect?._ptr)
        
    }

    /// Gets the current line.
    /// 
    /// Use the faster [method`Pango.LayoutIter.get_line_readonly`] if
    /// you do not plan to modify the contents of the line (glyphs,
    /// glyph widths, etc.).
    @inlinable func getLine() -> Pango.LayoutLineRef! {
        let result = pango_layout_iter_get_line(layout_iter_ptr)
        let rv = LayoutLineRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Obtains the extents of the current line.
    /// 
    /// Extents are in layout coordinates (origin is the top-left corner
    /// of the entire `PangoLayout`). Thus the extents returned by this
    /// function will be the same width/height but not at the same x/y
    /// as the extents returned from [method`Pango.LayoutLine.get_extents`].
    @inlinable func getLineExtents(inkRect: RectangleRef? = nil, logicalRect: RectangleRef? = nil) {
            
        pango_layout_iter_get_line_extents(layout_iter_ptr, inkRect?._ptr, logicalRect?._ptr)
            
    }
    /// Obtains the extents of the current line.
    /// 
    /// Extents are in layout coordinates (origin is the top-left corner
    /// of the entire `PangoLayout`). Thus the extents returned by this
    /// function will be the same width/height but not at the same x/y
    /// as the extents returned from [method`Pango.LayoutLine.get_extents`].
    @inlinable func getLineExtents<RectangleT: RectangleProtocol>(inkRect: RectangleT?, logicalRect: RectangleT?) {
        
        pango_layout_iter_get_line_extents(layout_iter_ptr, inkRect?._ptr, logicalRect?._ptr)
        
    }

    /// Gets the current line for read-only access.
    /// 
    /// This is a faster alternative to [method`Pango.LayoutIter.get_line`],
    /// but the user is not expected to modify the contents of the line
    /// (glyphs, glyph widths, etc.).
    @inlinable func getLineReadonly() -> Pango.LayoutLineRef! {
        let result = pango_layout_iter_get_line_readonly(layout_iter_ptr)
        let rv = LayoutLineRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Divides the vertical space in the `PangoLayout` being iterated over
    /// between the lines in the layout, and returns the space belonging to
    /// the current line.
    /// 
    /// A line's range includes the line's logical extents. plus half of the
    /// spacing above and below the line, if [method`Pango.Layout.set_spacing`]
    /// has been called to set layout spacing. The Y positions are in layout
    /// coordinates (origin at top left of the entire layout).
    /// 
    /// Note: Since 1.44, Pango uses line heights for placing lines, and there
    /// may be gaps between the ranges returned by this function.
    @inlinable func getLineYrange(y0: UnsafeMutablePointer<gint>! = nil, y1: UnsafeMutablePointer<gint>! = nil) {
        
        pango_layout_iter_get_line_yrange(layout_iter_ptr, y0, y1)
        
    }

    /// Gets the current run.
    /// 
    /// When iterating by run, at the end of each line, there's a position
    /// with a `nil` run, so this function can return `nil`. The `nil` run
    /// at the end of each line ensures that all lines have at least one run,
    /// even lines consisting of only a newline.
    /// 
    /// Use the faster [method`Pango.LayoutIter.get_run_readonly`] if you do not
    /// plan to modify the contents of the run (glyphs, glyph widths, etc.).
    @inlinable func getRun() -> UnsafeMutablePointer<PangoLayoutRun>? {
        let result = pango_layout_iter_get_run(layout_iter_ptr)
        let rv = result
        return rv
    }

    /// Gets the Y position of the current run's baseline, in layout
    /// coordinates.
    /// 
    /// Layout coordinates have the origin at the top left of the entire layout.
    /// 
    /// The run baseline can be different from the line baseline, for
    /// example due to superscript or subscript positioning.
    @inlinable func getRunBaseline() -> Int {
        let result = pango_layout_iter_get_run_baseline(layout_iter_ptr)
        let rv = Int(result)
        return rv
    }

    /// Gets the extents of the current run in layout coordinates.
    /// 
    /// Layout coordinates have the origin at the top left of the entire layout.
    @inlinable func getRunExtents(inkRect: RectangleRef? = nil, logicalRect: RectangleRef? = nil) {
            
        pango_layout_iter_get_run_extents(layout_iter_ptr, inkRect?._ptr, logicalRect?._ptr)
            
    }
    /// Gets the extents of the current run in layout coordinates.
    /// 
    /// Layout coordinates have the origin at the top left of the entire layout.
    @inlinable func getRunExtents<RectangleT: RectangleProtocol>(inkRect: RectangleT?, logicalRect: RectangleT?) {
        
        pango_layout_iter_get_run_extents(layout_iter_ptr, inkRect?._ptr, logicalRect?._ptr)
        
    }

    /// Gets the current run for read-only access.
    /// 
    /// When iterating by run, at the end of each line, there's a position
    /// with a `nil` run, so this function can return `nil`. The `nil` run
    /// at the end of each line ensures that all lines have at least one run,
    /// even lines consisting of only a newline.
    /// 
    /// This is a faster alternative to [method`Pango.LayoutIter.get_run`],
    /// but the user is not expected to modify the contents of the run (glyphs,
    /// glyph widths, etc.).
    @inlinable func getRunReadonly() -> UnsafeMutablePointer<PangoLayoutRun>? {
        let result = pango_layout_iter_get_run_readonly(layout_iter_ptr)
        let rv = result
        return rv
    }

    /// Moves `iter` forward to the next character in visual order.
    /// 
    /// If `iter` was already at the end of the layout, returns `false`.
    @inlinable func nextChar() -> Bool {
        let result = pango_layout_iter_next_char(layout_iter_ptr)
        let rv = ((result) != 0)
        return rv
    }

    /// Moves `iter` forward to the next cluster in visual order.
    /// 
    /// If `iter` was already at the end of the layout, returns `false`.
    @inlinable func nextCluster() -> Bool {
        let result = pango_layout_iter_next_cluster(layout_iter_ptr)
        let rv = ((result) != 0)
        return rv
    }

    /// Moves `iter` forward to the start of the next line.
    /// 
    /// If `iter` is already on the last line, returns `false`.
    @inlinable func nextLine() -> Bool {
        let result = pango_layout_iter_next_line(layout_iter_ptr)
        let rv = ((result) != 0)
        return rv
    }

    /// Moves `iter` forward to the next run in visual order.
    /// 
    /// If `iter` was already at the end of the layout, returns `false`.
    @inlinable func nextRun() -> Bool {
        let result = pango_layout_iter_next_run(layout_iter_ptr)
        let rv = ((result) != 0)
        return rv
    }
    /// Gets the Y position of the current line's baseline, in layout
    /// coordinates.
    /// 
    /// Layout coordinates have the origin at the top left of the entire layout.
    @inlinable var baseline: Int {
        /// Gets the Y position of the current line's baseline, in layout
        /// coordinates.
        /// 
        /// Layout coordinates have the origin at the top left of the entire layout.
        get {
            let result = pango_layout_iter_get_baseline(layout_iter_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// Gets the current byte index.
    /// 
    /// Note that iterating forward by char moves in visual order,
    /// not logical order, so indexes may not be sequential. Also,
    /// the index may be equal to the length of the text in the
    /// layout, if on the `nil` run (see [method`Pango.LayoutIter.get_run`]).
    @inlinable var index: Int {
        /// Gets the current byte index.
        /// 
        /// Note that iterating forward by char moves in visual order,
        /// not logical order, so indexes may not be sequential. Also,
        /// the index may be equal to the length of the text in the
        /// layout, if on the `nil` run (see [method`Pango.LayoutIter.get_run`]).
        get {
            let result = pango_layout_iter_get_index(layout_iter_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// Gets the layout associated with a `PangoLayoutIter`.
    @inlinable var layout: Pango.LayoutRef! {
        /// Gets the layout associated with a `PangoLayoutIter`.
        get {
            let result = pango_layout_iter_get_layout(layout_iter_ptr)
        let rv = LayoutRef(gconstpointer: gconstpointer(result))
            return rv
        }
    }

    /// Gets the current line.
    /// 
    /// Use the faster [method`Pango.LayoutIter.get_line_readonly`] if
    /// you do not plan to modify the contents of the line (glyphs,
    /// glyph widths, etc.).
    @inlinable var line: Pango.LayoutLineRef! {
        /// Gets the current line.
        /// 
        /// Use the faster [method`Pango.LayoutIter.get_line_readonly`] if
        /// you do not plan to modify the contents of the line (glyphs,
        /// glyph widths, etc.).
        get {
            let result = pango_layout_iter_get_line(layout_iter_ptr)
        let rv = LayoutLineRef(gconstpointer: gconstpointer(result))
            return rv
        }
    }

    /// Gets the current line for read-only access.
    /// 
    /// This is a faster alternative to [method`Pango.LayoutIter.get_line`],
    /// but the user is not expected to modify the contents of the line
    /// (glyphs, glyph widths, etc.).
    @inlinable var lineReadonly: Pango.LayoutLineRef! {
        /// Gets the current line for read-only access.
        /// 
        /// This is a faster alternative to [method`Pango.LayoutIter.get_line`],
        /// but the user is not expected to modify the contents of the line
        /// (glyphs, glyph widths, etc.).
        get {
            let result = pango_layout_iter_get_line_readonly(layout_iter_ptr)
        let rv = LayoutLineRef(gconstpointer: gconstpointer(result))
            return rv
        }
    }

    /// Gets the current run.
    /// 
    /// When iterating by run, at the end of each line, there's a position
    /// with a `nil` run, so this function can return `nil`. The `nil` run
    /// at the end of each line ensures that all lines have at least one run,
    /// even lines consisting of only a newline.
    /// 
    /// Use the faster [method`Pango.LayoutIter.get_run_readonly`] if you do not
    /// plan to modify the contents of the run (glyphs, glyph widths, etc.).
    @inlinable var run: UnsafeMutablePointer<PangoLayoutRun>? {
        /// Gets the current run.
        /// 
        /// When iterating by run, at the end of each line, there's a position
        /// with a `nil` run, so this function can return `nil`. The `nil` run
        /// at the end of each line ensures that all lines have at least one run,
        /// even lines consisting of only a newline.
        /// 
        /// Use the faster [method`Pango.LayoutIter.get_run_readonly`] if you do not
        /// plan to modify the contents of the run (glyphs, glyph widths, etc.).
        get {
            let result = pango_layout_iter_get_run(layout_iter_ptr)
        let rv = result
            return rv
        }
    }

    /// Gets the Y position of the current run's baseline, in layout
    /// coordinates.
    /// 
    /// Layout coordinates have the origin at the top left of the entire layout.
    /// 
    /// The run baseline can be different from the line baseline, for
    /// example due to superscript or subscript positioning.
    @inlinable var runBaseline: Int {
        /// Gets the Y position of the current run's baseline, in layout
        /// coordinates.
        /// 
        /// Layout coordinates have the origin at the top left of the entire layout.
        /// 
        /// The run baseline can be different from the line baseline, for
        /// example due to superscript or subscript positioning.
        get {
            let result = pango_layout_iter_get_run_baseline(layout_iter_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// Gets the current run for read-only access.
    /// 
    /// When iterating by run, at the end of each line, there's a position
    /// with a `nil` run, so this function can return `nil`. The `nil` run
    /// at the end of each line ensures that all lines have at least one run,
    /// even lines consisting of only a newline.
    /// 
    /// This is a faster alternative to [method`Pango.LayoutIter.get_run`],
    /// but the user is not expected to modify the contents of the run (glyphs,
    /// glyph widths, etc.).
    @inlinable var runReadonly: UnsafeMutablePointer<PangoLayoutRun>? {
        /// Gets the current run for read-only access.
        /// 
        /// When iterating by run, at the end of each line, there's a position
        /// with a `nil` run, so this function can return `nil`. The `nil` run
        /// at the end of each line ensures that all lines have at least one run,
        /// even lines consisting of only a newline.
        /// 
        /// This is a faster alternative to [method`Pango.LayoutIter.get_run`],
        /// but the user is not expected to modify the contents of the run (glyphs,
        /// glyph widths, etc.).
        get {
            let result = pango_layout_iter_get_run_readonly(layout_iter_ptr)
        let rv = result
            return rv
        }
    }


}



// MARK: - LayoutLine Record

/// A `PangoLayoutLine` represents one of the lines resulting from laying
/// out a paragraph via `PangoLayout`.
/// 
/// `PangoLayoutLine` structures are obtained by calling
/// [method`Pango.Layout.get_line`] and are only valid until the text,
/// attributes, or settings of the parent `PangoLayout` are modified.
///
/// The `LayoutLineProtocol` protocol exposes the methods and properties of an underlying `PangoLayoutLine` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LayoutLine`.
/// Alternatively, use `LayoutLineRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol LayoutLineProtocol {
        /// Untyped pointer to the underlying `PangoLayoutLine` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoLayoutLine` instance.
    var layout_line_ptr: UnsafeMutablePointer<PangoLayoutLine>! { get }

    /// Required Initialiser for types conforming to `LayoutLineProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `PangoLayoutLine` represents one of the lines resulting from laying
/// out a paragraph via `PangoLayout`.
/// 
/// `PangoLayoutLine` structures are obtained by calling
/// [method`Pango.Layout.get_line`] and are only valid until the text,
/// attributes, or settings of the parent `PangoLayout` are modified.
///
/// The `LayoutLineRef` type acts as a lightweight Swift reference to an underlying `PangoLayoutLine` instance.
/// It exposes methods that can operate on this data type through `LayoutLineProtocol` conformance.
/// Use `LayoutLineRef` only as an `unowned` reference to an existing `PangoLayoutLine` instance.
///
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

/// A `PangoLayoutLine` represents one of the lines resulting from laying
/// out a paragraph via `PangoLayout`.
/// 
/// `PangoLayoutLine` structures are obtained by calling
/// [method`Pango.Layout.get_line`] and are only valid until the text,
/// attributes, or settings of the parent `PangoLayout` are modified.
///
/// The `LayoutLine` type acts as a reference-counted owner of an underlying `PangoLayoutLine` instance.
/// It provides the methods that can operate on this data type through `LayoutLineProtocol` conformance.
/// Use `LayoutLine` as a strong reference or owner of a `PangoLayoutLine` instance.
///
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
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

    /// Computes the logical and ink extents of a layout line.
    /// 
    /// See [method`Pango.Font.get_glyph_extents`] for details
    /// about the interpretation of the rectangles.
    @inlinable func getExtents(inkRect: RectangleRef? = nil, logicalRect: RectangleRef? = nil) {
            
        pango_layout_line_get_extents(layout_line_ptr, inkRect?._ptr, logicalRect?._ptr)
            
    }
    /// Computes the logical and ink extents of a layout line.
    /// 
    /// See [method`Pango.Font.get_glyph_extents`] for details
    /// about the interpretation of the rectangles.
    @inlinable func getExtents<RectangleT: RectangleProtocol>(inkRect: RectangleT?, logicalRect: RectangleT?) {
        
        pango_layout_line_get_extents(layout_line_ptr, inkRect?._ptr, logicalRect?._ptr)
        
    }

    /// Computes the height of the line, as the maximum of the heights
    /// of fonts used in this line.
    /// 
    /// Note that the actual baseline-to-baseline distance between lines
    /// of text is influenced by other factors, such as
    /// [method`Pango.Layout.set_spacing`] and
    /// [method`Pango.Layout.set_line_spacing`].
    @inlinable func get(height: UnsafeMutablePointer<gint>! = nil) {
        
        pango_layout_line_get_height(layout_line_ptr, height)
        
    }

    /// Returns the length of the line, in bytes.
    @inlinable func getLength() -> Int {
        let result = pango_layout_line_get_length(layout_line_ptr)
        let rv = Int(result)
        return rv
    }

    /// Computes the logical and ink extents of `layout_line` in device units.
    /// 
    /// This function just calls [method`Pango.LayoutLine.get_extents`] followed by
    /// two [func`extents_to_pixels`] calls, rounding `ink_rect` and `logical_rect`
    /// such that the rounded rectangles fully contain the unrounded one (that is,
    /// passes them as first argument to [func`extents_to_pixels`]).
    @inlinable func getPixelExtents(inkRect: RectangleRef? = nil, logicalRect: RectangleRef? = nil) {
            
        pango_layout_line_get_pixel_extents(layout_line_ptr, inkRect?._ptr, logicalRect?._ptr)
            
    }
    /// Computes the logical and ink extents of `layout_line` in device units.
    /// 
    /// This function just calls [method`Pango.LayoutLine.get_extents`] followed by
    /// two [func`extents_to_pixels`] calls, rounding `ink_rect` and `logical_rect`
    /// such that the rounded rectangles fully contain the unrounded one (that is,
    /// passes them as first argument to [func`extents_to_pixels`]).
    @inlinable func getPixelExtents<RectangleT: RectangleProtocol>(inkRect: RectangleT?, logicalRect: RectangleT?) {
        
        pango_layout_line_get_pixel_extents(layout_line_ptr, inkRect?._ptr, logicalRect?._ptr)
        
    }

    /// Returns the resolved direction of the line.
    @inlinable func getResolvedDirection() -> PangoDirection {
        let result = pango_layout_line_get_resolved_direction(layout_line_ptr)
        let rv = result
        return rv
    }

    /// Returns the start index of the line, as byte index
    /// into the text of the layout.
    @inlinable func getStartIndex() -> Int {
        let result = pango_layout_line_get_start_index(layout_line_ptr)
        let rv = Int(result)
        return rv
    }

    /// Gets a list of visual ranges corresponding to a given logical range.
    /// 
    /// This list is not necessarily minimal - there may be consecutive
    /// ranges which are adjacent. The ranges will be sorted from left to
    /// right. The ranges are with respect to the left edge of the entire
    /// layout, not with respect to the line.
    @inlinable func getXRanges(startIndex: Int, endIndex: Int, ranges: UnsafeMutablePointer<UnsafeMutablePointer<CInt>?>!, nRanges: UnsafeMutablePointer<gint>!) {
        
        pango_layout_line_get_x_ranges(layout_line_ptr, gint(startIndex), gint(endIndex), ranges, nRanges)
        
    }

    /// Converts an index within a line to a X position.
    @inlinable func indexToX(index: Int, trailing: Bool, xPos: UnsafeMutablePointer<gint>!) {
        
        pango_layout_line_index_to_x(layout_line_ptr, gint(index), gboolean((trailing) ? 1 : 0), xPos)
        
    }

    /// Increase the reference count of a `PangoLayoutLine` by one.
    @discardableResult @inlinable func ref() -> Pango.LayoutLineRef! {
        let result = pango_layout_line_ref(layout_line_ptr)
        guard let rv = LayoutLineRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Decrease the reference count of a `PangoLayoutLine` by one.
    /// 
    /// If the result is zero, the line and all associated memory
    /// will be freed.
    @inlinable func unref() {
        
        pango_layout_line_unref(layout_line_ptr)
        
    }

    /// Converts from x offset to the byte index of the corresponding character
    /// within the text of the layout.
    /// 
    /// If `x_pos` is outside the line, `index_` and `trailing` will point to the very
    /// first or very last position in the line. This determination is based on the
    /// resolved direction of the paragraph; for example, if the resolved direction
    /// is right-to-left, then an X position to the right of the line (after it)
    /// results in 0 being stored in `index_` and `trailing`. An X position to the
    /// left of the line results in `index_` pointing to the (logical) last grapheme
    /// in the line and `trailing` being set to the number of characters in that
    /// grapheme. The reverse is true for a left-to-right line.
    @inlinable func xToIndex(xPos: Int, index: UnsafeMutablePointer<gint>!, trailing: UnsafeMutablePointer<gint>!) -> Bool {
        let result = pango_layout_line_x_to_index(layout_line_ptr, gint(xPos), index, trailing)
        let rv = ((result) != 0)
        return rv
    }
    /// Returns whether this is the first line of the paragraph.
    @inlinable var isParagraphStart: Bool {
        /// Returns whether this is the first line of the paragraph.
        get {
            let result = pango_layout_line_is_paragraph_start(layout_line_ptr)
        let rv = ((result) != 0)
            return rv
        }
    }

    /// Returns the length of the line, in bytes.
    @inlinable var length: Int {
        /// Returns the length of the line, in bytes.
        get {
            let result = pango_layout_line_get_length(layout_line_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// Returns the resolved direction of the line.
    @inlinable var resolvedDirection: PangoDirection {
        /// Returns the resolved direction of the line.
        get {
            let result = pango_layout_line_get_resolved_direction(layout_line_ptr)
        let rv = result
            return rv
        }
    }

    /// Returns the start index of the line, as byte index
    /// into the text of the layout.
    @inlinable var startIndex: Int {
        /// Returns the start index of the line, as byte index
        /// into the text of the layout.
        get {
            let result = pango_layout_line_get_start_index(layout_line_ptr)
        let rv = Int(result)
            return rv
        }
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

    /// start of line as byte index into layout-&gt;text
    @inlinable var _startIndex: gint {
        /// start of line as byte index into layout-&gt;text
        get {
            let rv = layout_line_ptr.pointee.start_index
    return rv
        }
        /// start of line as byte index into layout-&gt;text
         set {
            layout_line_ptr.pointee.start_index = newValue
        }
    }

    /// length of line in bytes
    @inlinable var _length: gint {
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
    ///   line, from left to right
    @inlinable var runs: SListRef! {
        /// list of runs in the
        ///   line, from left to right
        get {
            let rv = GLib.SListRef(gconstpointer: gconstpointer(layout_line_ptr.pointee.runs))
    return rv
        }
        /// list of runs in the
        ///   line, from left to right
         set {
            layout_line_ptr.pointee.runs = UnsafeMutablePointer<GSList>(newValue._ptr)
        }
    }

    /// `TRUE` if this is the first line of the paragraph
    @inlinable var _isParagraphStart: guint {
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

/// The `PangoLogAttr` structure stores information about the attributes of a
/// single character.
///
/// The `LogAttrProtocol` protocol exposes the methods and properties of an underlying `PangoLogAttr` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LogAttr`.
/// Alternatively, use `LogAttrRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol LogAttrProtocol {
        /// Untyped pointer to the underlying `PangoLogAttr` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoLogAttr` instance.
    var _ptr: UnsafeMutablePointer<PangoLogAttr>! { get }

    /// Required Initialiser for types conforming to `LogAttrProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `PangoLogAttr` structure stores information about the attributes of a
/// single character.
///
/// The `LogAttrRef` type acts as a lightweight Swift reference to an underlying `PangoLogAttr` instance.
/// It exposes methods that can operate on this data type through `LogAttrProtocol` conformance.
/// Use `LogAttrRef` only as an `unowned` reference to an existing `PangoLogAttr` instance.
///
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

/// The `PangoLogAttr` structure stores information about the attributes of a
/// single character.
///
/// The `LogAttr` type acts as an owner of an underlying `PangoLogAttr` instance.
/// It provides the methods that can operate on this data type through `LogAttrProtocol` conformance.
/// Use `LogAttr` as a strong reference or owner of a `PangoLogAttr` instance.
///
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
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

// MARK: LogAttr has no signals
// MARK: LogAttr Record: LogAttrProtocol extension (methods and fields)
public extension LogAttrProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoLogAttr` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoLogAttr>! { return ptr?.assumingMemoryBound(to: PangoLogAttr.self) }

    /// This is the default break algorithm.
    /// 
    /// It applies rules from the [Unicode Line Breaking Algorithm](http://www.unicode.org/unicode/reports/tr14/)
    /// without language-specific tailoring, therefore the `analyis` argument is unused
    /// and can be `nil`.
    /// 
    /// See [func`Pango.tailor_break`] for language-specific breaks.
    /// 
    /// See [func`Pango.attr_break`] for attribute-based customization.
    @inlinable func defaultBreak(text: UnsafePointer<CChar>!, length: Int, analysis: AnalysisRef? = nil, attrsLen: Int) {
            
        pango_default_break(text, gint(length), analysis?._ptr, _ptr, gint(attrsLen))
            
    }
    /// This is the default break algorithm.
    /// 
    /// It applies rules from the [Unicode Line Breaking Algorithm](http://www.unicode.org/unicode/reports/tr14/)
    /// without language-specific tailoring, therefore the `analyis` argument is unused
    /// and can be `nil`.
    /// 
    /// See [func`Pango.tailor_break`] for language-specific breaks.
    /// 
    /// See [func`Pango.attr_break`] for attribute-based customization.
    @inlinable func defaultBreak<AnalysisT: AnalysisProtocol>(text: UnsafePointer<CChar>!, length: Int, analysis: AnalysisT?, attrsLen: Int) {
        
        pango_default_break(text, gint(length), analysis?._ptr, _ptr, gint(attrsLen))
        
    }

    /// Convert the characters in `item` into glyphs.
    /// 
    /// This is similar to [func`Pango.shape_with_flags`], except it takes a
    /// `PangoItem` instead of separate `item_text` and `analysis` arguments.
    /// It also takes `log_attrs`, which may be used in implementing text
    /// transforms.
    /// 
    /// Note that the extra attributes in the `analyis` that is returned from
    /// [func`Pango.itemize`] have indices that are relative to the entire paragraph,
    /// so you do not pass the full paragraph text as `paragraph_text`, you need
    /// to subtract the item offset from their indices before calling
    /// [func`Pango.shape_with_flags`].
    @inlinable func shape<GlyphStringT: GlyphStringProtocol, ItemT: ItemProtocol>(item: ItemT, paragraphText: UnsafePointer<CChar>? = nil, paragraphLength: Int, glyphs: GlyphStringT, flags: ShapeFlags) {
        
        pango_shape_item(item.item_ptr, paragraphText, gint(paragraphLength), _ptr, glyphs.glyph_string_ptr, flags.value)
        
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
    ///   i.e. this is a grapheme boundary, or the first character in the text.
    ///   This flag implements Unicode's
    ///   [Grapheme Cluster Boundaries](http://www.unicode.org/reports/tr29/)
    ///   semantics.
    @inlinable var isCursorPosition: guint {
        /// if set, cursor can appear in front of character.
        ///   i.e. this is a grapheme boundary, or the first character in the text.
        ///   This flag implements Unicode's
        ///   [Grapheme Cluster Boundaries](http://www.unicode.org/reports/tr29/)
        ///   semantics.
        get {
            let rv = _ptr.pointee.is_cursor_position
    return rv
        }
        /// if set, cursor can appear in front of character.
        ///   i.e. this is a grapheme boundary, or the first character in the text.
        ///   This flag implements Unicode's
        ///   [Grapheme Cluster Boundaries](http://www.unicode.org/reports/tr29/)
        ///   semantics.
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
    ///   Note that in degenerate cases, you could have both `is_word_start`
    ///   and `is_word_end` set for some character.
    @inlinable var isWordEnd: guint {
        /// is first non-word char after a word
        ///   Note that in degenerate cases, you could have both `is_word_start`
        ///   and `is_word_end` set for some character.
        get {
            let rv = _ptr.pointee.is_word_end
    return rv
        }
        /// is first non-word char after a word
        ///   Note that in degenerate cases, you could have both `is_word_start`
        ///   and `is_word_end` set for some character.
         set {
            _ptr.pointee.is_word_end = newValue
        }
    }

    /// is a sentence boundary.
    ///   There are two ways to divide sentences. The first assigns all
    ///   inter-sentence whitespace/control/format chars to some sentence,
    ///   so all chars are in some sentence; `is_sentence_boundary` denotes
    ///   the boundaries there. The second way doesn't assign
    ///   between-sentence spaces, etc. to any sentence, so
    ///   `is_sentence_start`/`is_sentence_end` mark the boundaries of those sentences.
    @inlinable var isSentenceBoundary: guint {
        /// is a sentence boundary.
        ///   There are two ways to divide sentences. The first assigns all
        ///   inter-sentence whitespace/control/format chars to some sentence,
        ///   so all chars are in some sentence; `is_sentence_boundary` denotes
        ///   the boundaries there. The second way doesn't assign
        ///   between-sentence spaces, etc. to any sentence, so
        ///   `is_sentence_start`/`is_sentence_end` mark the boundaries of those sentences.
        get {
            let rv = _ptr.pointee.is_sentence_boundary
    return rv
        }
        /// is a sentence boundary.
        ///   There are two ways to divide sentences. The first assigns all
        ///   inter-sentence whitespace/control/format chars to some sentence,
        ///   so all chars are in some sentence; `is_sentence_boundary` denotes
        ///   the boundaries there. The second way doesn't assign
        ///   between-sentence spaces, etc. to any sentence, so
        ///   `is_sentence_start`/`is_sentence_end` mark the boundaries of those sentences.
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
    ///   Note that in degenerate cases, you could have both `is_sentence_start`
    ///   and `is_sentence_end` set for some character. (e.g. no space after a
    ///   period, so the next sentence starts right away)
    @inlinable var isSentenceEnd: guint {
        /// is first char after a sentence.
        ///   Note that in degenerate cases, you could have both `is_sentence_start`
        ///   and `is_sentence_end` set for some character. (e.g. no space after a
        ///   period, so the next sentence starts right away)
        get {
            let rv = _ptr.pointee.is_sentence_end
    return rv
        }
        /// is first char after a sentence.
        ///   Note that in degenerate cases, you could have both `is_sentence_start`
        ///   and `is_sentence_end` set for some character. (e.g. no space after a
        ///   period, so the next sentence starts right away)
         set {
            _ptr.pointee.is_sentence_end = newValue
        }
    }

    /// if set, backspace deletes one character
    ///   rather than the entire grapheme cluster. This field is only meaningful
    ///   on grapheme boundaries (where `is_cursor_position` is set). In some languages,
    ///   the full grapheme (e.g. letter + diacritics) is considered a unit, while in
    ///   others, each decomposed character in the grapheme is a unit. In the default
    ///   implementation of [func`break`], this bit is set on all grapheme boundaries
    ///   except those following Latin, Cyrillic or Greek base characters.
    @inlinable var backspaceDeletesCharacter: guint {
        /// if set, backspace deletes one character
        ///   rather than the entire grapheme cluster. This field is only meaningful
        ///   on grapheme boundaries (where `is_cursor_position` is set). In some languages,
        ///   the full grapheme (e.g. letter + diacritics) is considered a unit, while in
        ///   others, each decomposed character in the grapheme is a unit. In the default
        ///   implementation of [func`break`], this bit is set on all grapheme boundaries
        ///   except those following Latin, Cyrillic or Greek base characters.
        get {
            let rv = _ptr.pointee.backspace_deletes_character
    return rv
        }
        /// if set, backspace deletes one character
        ///   rather than the entire grapheme cluster. This field is only meaningful
        ///   on grapheme boundaries (where `is_cursor_position` is set). In some languages,
        ///   the full grapheme (e.g. letter + diacritics) is considered a unit, while in
        ///   others, each decomposed character in the grapheme is a unit. In the default
        ///   implementation of [func`break`], this bit is set on all grapheme boundaries
        ///   except those following Latin, Cyrillic or Greek base characters.
         set {
            _ptr.pointee.backspace_deletes_character = newValue
        }
    }

    /// is a whitespace character that can possibly be
    ///   expanded for justification purposes. (Since: 1.18)
    @inlinable var isExpandableSpace: guint {
        /// is a whitespace character that can possibly be
        ///   expanded for justification purposes. (Since: 1.18)
        get {
            let rv = _ptr.pointee.is_expandable_space
    return rv
        }
        /// is a whitespace character that can possibly be
        ///   expanded for justification purposes. (Since: 1.18)
         set {
            _ptr.pointee.is_expandable_space = newValue
        }
    }

    /// is a word boundary, as defined by UAX`29`.
    ///   More specifically, means that this is not a position in the middle of a word.
    ///   For example, both sides of a punctuation mark are considered word boundaries.
    ///   This flag is particularly useful when selecting text word-by-word. This flag
    ///   implements Unicode's [Word Boundaries](http://www.unicode.org/reports/tr29/)
    ///   semantics. (Since: 1.22)
    @inlinable var isWordBoundary: guint {
        /// is a word boundary, as defined by UAX`29`.
        ///   More specifically, means that this is not a position in the middle of a word.
        ///   For example, both sides of a punctuation mark are considered word boundaries.
        ///   This flag is particularly useful when selecting text word-by-word. This flag
        ///   implements Unicode's [Word Boundaries](http://www.unicode.org/reports/tr29/)
        ///   semantics. (Since: 1.22)
        get {
            let rv = _ptr.pointee.is_word_boundary
    return rv
        }
        /// is a word boundary, as defined by UAX`29`.
        ///   More specifically, means that this is not a position in the middle of a word.
        ///   For example, both sides of a punctuation mark are considered word boundaries.
        ///   This flag is particularly useful when selecting text word-by-word. This flag
        ///   implements Unicode's [Word Boundaries](http://www.unicode.org/reports/tr29/)
        ///   semantics. (Since: 1.22)
         set {
            _ptr.pointee.is_word_boundary = newValue
        }
    }

    /// when breaking lines before this char, insert a hyphen.
    ///   Since: 1.50
    @inlinable var breakInsertsHyphen: guint {
        /// when breaking lines before this char, insert a hyphen.
        ///   Since: 1.50
        get {
            let rv = _ptr.pointee.break_inserts_hyphen
    return rv
        }
        /// when breaking lines before this char, insert a hyphen.
        ///   Since: 1.50
         set {
            _ptr.pointee.break_inserts_hyphen = newValue
        }
    }

    /// when breaking lines before this char, remove the
    ///   preceding char. Since 1.50
    @inlinable var breakRemovesPreceding: guint {
        /// when breaking lines before this char, remove the
        ///   preceding char. Since 1.50
        get {
            let rv = _ptr.pointee.break_removes_preceding
    return rv
        }
        /// when breaking lines before this char, remove the
        ///   preceding char. Since 1.50
         set {
            _ptr.pointee.break_removes_preceding = newValue
        }
    }

    @inlinable var reserved: guint {
        get {
            let rv = _ptr.pointee.reserved
    return rv
        }
         set {
            _ptr.pointee.reserved = newValue
        }
    }

}



