import CGLib
import CPango
import GLib
import GLibObject

// MARK: - Renderer Class

/// The `RendererProtocol` protocol exposes the methods and properties of an underlying `PangoRenderer` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Renderer`.
/// Alternatively, use `RendererRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `PangoRenderer` is a base class for objects that are used to
/// render Pango objects such as `PangoGlyphString` and
/// `PangoLayout`.
public protocol RendererProtocol: ObjectProtocol {
        /// Untyped pointer to the underlying `PangoRenderer` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoRenderer` instance.
    var renderer_ptr: UnsafeMutablePointer<PangoRenderer>! { get }

}

/// The `RendererRef` type acts as a lightweight Swift reference to an underlying `PangoRenderer` instance.
/// It exposes methods that can operate on this data type through `RendererProtocol` conformance.
/// Use `RendererRef` only as an `unowned` reference to an existing `PangoRenderer` instance.
///
/// `PangoRenderer` is a base class for objects that are used to
/// render Pango objects such as `PangoGlyphString` and
/// `PangoLayout`.
public struct RendererRef: RendererProtocol {
        /// Untyped pointer to the underlying `PangoRenderer` instance.
    /// For type-safe access, use the generated, typed pointer `renderer_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RendererRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoRenderer>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoRenderer>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoRenderer>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoRenderer>?) {
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

    /// Reference intialiser for a related type that implements `RendererProtocol`
    @inlinable init<T: RendererProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Renderer` type acts as a reference-counted owner of an underlying `PangoRenderer` instance.
/// It provides the methods that can operate on this data type through `RendererProtocol` conformance.
/// Use `Renderer` as a strong reference or owner of a `PangoRenderer` instance.
///
/// `PangoRenderer` is a base class for objects that are used to
/// render Pango objects such as `PangoGlyphString` and
/// `PangoLayout`.
open class Renderer: Object, RendererProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Renderer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoRenderer>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Renderer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoRenderer>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Renderer` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Renderer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Renderer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoRenderer>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Renderer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoRenderer>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `PangoRenderer`.
    /// i.e., ownership is transferred to the `Renderer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoRenderer>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `RendererProtocol`
    /// Will retain `PangoRenderer`.
    /// - Parameter other: an instance of a related type that implements `RendererProtocol`
    @inlinable public init<T: RendererProtocol>(renderer other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no Renderer properties

public enum RendererSignalName: String, SignalNameProtocol {
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

public extension RendererProtocol {
    /// Connect a `RendererSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: RendererSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

// MARK: Renderer Class: RendererProtocol extension (methods and fields)
public extension RendererProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoRenderer` instance.
    @inlinable var renderer_ptr: UnsafeMutablePointer<PangoRenderer>! { return ptr?.assumingMemoryBound(to: PangoRenderer.self) }

    /// Does initial setup before rendering operations on `renderer`.
    /// `pango_renderer_deactivate()` should be called when done drawing.
    /// Calls such as `pango_renderer_draw_layout()` automatically
    /// activate the layout before drawing on it. Calls to
    /// `pango_renderer_activate()` and `pango_renderer_deactivate()` can
    /// be nested and the renderer will only be initialized and
    /// deinitialized once.
    @inlinable func activate() {
        pango_renderer_activate(renderer_ptr)
    
    }

    /// Cleans up after rendering operations on `renderer`. See
    /// docs for `pango_renderer_activate()`.
    @inlinable func deactivate() {
        pango_renderer_deactivate(renderer_ptr)
    
    }

    /// Draw a squiggly line that approximately covers the given rectangle
    /// in the style of an underline used to indicate a spelling error.
    /// (The width of the underline is rounded to an integer number
    /// of up/down segments and the resulting rectangle is centered
    /// in the original rectangle)
    /// 
    /// This should be called while `renderer` is already active.  Use
    /// `pango_renderer_activate()` to activate a renderer.
    @inlinable func drawErrorUnderline(x: Int, y: Int, width: Int, height: Int) {
        pango_renderer_draw_error_underline(renderer_ptr, gint(x), gint(y), gint(width), gint(height))
    
    }

    /// Draws a single glyph with coordinates in device space.
    @inlinable func drawGlyph<FontT: FontProtocol>(font: FontT, glyph: PangoGlyph, x: CDouble, y: CDouble) {
        pango_renderer_draw_glyph(renderer_ptr, font.font_ptr, glyph, x, y)
    
    }

    /// Draws the glyphs in `glyph_item` with the specified `PangoRenderer`,
    /// embedding the text associated with the glyphs in the output if the
    /// output format supports it (PDF for example).
    /// 
    /// Note that `text` is the start of the text for layout, which is then
    /// indexed by <literal>`glyph_item`->item->offset</literal>.
    /// 
    /// If `text` is `nil`, this simply calls `pango_renderer_draw_glyphs()`.
    /// 
    /// The default implementation of this method simply falls back to
    /// `pango_renderer_draw_glyphs()`.
    @inlinable func drawGlyphItem<GlyphItemT: GlyphItemProtocol>(text: UnsafePointer<CChar>? = nil, glyphItem glyph_item: GlyphItemT, x: Int, y: Int) {
        pango_renderer_draw_glyph_item(renderer_ptr, text, glyph_item.glyph_item_ptr, gint(x), gint(y))
    
    }

    /// Draws the glyphs in `glyphs` with the specified `PangoRenderer`.
    @inlinable func drawGlyphs<FontT: FontProtocol, GlyphStringT: GlyphStringProtocol>(font: FontT, glyphs: GlyphStringT, x: Int, y: Int) {
        pango_renderer_draw_glyphs(renderer_ptr, font.font_ptr, glyphs.glyph_string_ptr, gint(x), gint(y))
    
    }

    /// Draws `layout` with the specified `PangoRenderer`.
    @inlinable func draw<LayoutT: LayoutProtocol>(layout: LayoutT, x: Int, y: Int) {
        pango_renderer_draw_layout(renderer_ptr, layout.layout_ptr, gint(x), gint(y))
    
    }

    /// Draws `line` with the specified `PangoRenderer`.
    @inlinable func drawLayout<LayoutLineT: LayoutLineProtocol>(line: LayoutLineT, x: Int, y: Int) {
        pango_renderer_draw_layout_line(renderer_ptr, line.layout_line_ptr, gint(x), gint(y))
    
    }

    /// Draws an axis-aligned rectangle in user space coordinates with the
    /// specified `PangoRenderer`.
    /// 
    /// This should be called while `renderer` is already active.  Use
    /// `pango_renderer_activate()` to activate a renderer.
    @inlinable func drawRectangle(part: PangoRenderPart, x: Int, y: Int, width: Int, height: Int) {
        pango_renderer_draw_rectangle(renderer_ptr, part, gint(x), gint(y), gint(width), gint(height))
    
    }

    /// Draws a trapezoid with the parallel sides aligned with the X axis
    /// using the given `PangoRenderer`; coordinates are in device space.
    @inlinable func drawTrapezoid(part: PangoRenderPart, y1_: CDouble, x11: CDouble, x21: CDouble, y2: CDouble, x12: CDouble, x22: CDouble) {
        pango_renderer_draw_trapezoid(renderer_ptr, part, y1_, x11, x21, y2, x12, x22)
    
    }

    /// Gets the current alpha for the specified part.
    @inlinable func getAlpha(part: PangoRenderPart) -> guint16 {
        let rv = pango_renderer_get_alpha(renderer_ptr, part)
        return rv
    }

    /// Gets the current rendering color for the specified part.
    @inlinable func getColor(part: PangoRenderPart) -> ColorRef! {
        let rv = ColorRef(gconstpointer: gconstpointer(pango_renderer_get_color(renderer_ptr, part)))
        return rv
    }

    /// Gets the layout currently being rendered using `renderer`.
    /// Calling this function only makes sense from inside a subclass's
    /// methods, like in its draw_shape vfunc, for example.
    /// 
    /// The returned layout should not be modified while still being
    /// rendered.
    @inlinable func getLayout() -> LayoutRef! {
        let rv = LayoutRef(gconstpointer: gconstpointer(pango_renderer_get_layout(renderer_ptr)))
        return rv
    }

    /// Gets the layout line currently being rendered using `renderer`.
    /// Calling this function only makes sense from inside a subclass's
    /// methods, like in its draw_shape vfunc, for example.
    /// 
    /// The returned layout line should not be modified while still being
    /// rendered.
    @inlinable func getLayoutLine() -> LayoutLineRef! {
        let rv = LayoutLineRef(gconstpointer: gconstpointer(pango_renderer_get_layout_line(renderer_ptr)))
        return rv
    }

    /// Gets the transformation matrix that will be applied when
    /// rendering. See `pango_renderer_set_matrix()`.
    @inlinable func getMatrix() -> MatrixRef! {
        let rv = MatrixRef(gconstpointer: gconstpointer(pango_renderer_get_matrix(renderer_ptr)))
        return rv
    }

    /// Informs Pango that the way that the rendering is done
    /// for `part` has changed in a way that would prevent multiple
    /// pieces being joined together into one drawing call. For
    /// instance, if a subclass of `PangoRenderer` was to add a stipple
    /// option for drawing underlines, it needs to call
    /// 
    /// <informalexample><programlisting>
    /// pango_renderer_part_changed (render, PANGO_RENDER_PART_UNDERLINE);
    /// </programlisting></informalexample>
    /// 
    /// When the stipple changes or underlines with different stipples
    /// might be joined together. Pango automatically calls this for
    /// changes to colors. (See `pango_renderer_set_color()`)
    @inlinable func partChanged(part: PangoRenderPart) {
        pango_renderer_part_changed(renderer_ptr, part)
    
    }

    /// Sets the alpha for part of the rendering.
    /// Note that the alpha may only be used if a color is
    /// specified for `part` as well.
    @inlinable func setAlpha(part: PangoRenderPart, alpha: guint16) {
        pango_renderer_set_alpha(renderer_ptr, part, alpha)
    
    }

    /// Sets the color for part of the rendering.
    /// Also see `pango_renderer_set_alpha()`.
    @inlinable func setColor<ColorT: ColorProtocol>(part: PangoRenderPart, color: ColorT? = nil) {
        pango_renderer_set_color(renderer_ptr, part, color?.color_ptr)
    
    }

    /// Sets the transformation matrix that will be applied when rendering.
    @inlinable func set<MatrixT: MatrixProtocol>(matrix: MatrixT? = nil) {
        pango_renderer_set_matrix(renderer_ptr, matrix?.matrix_ptr)
    
    }
    /// Gets the layout currently being rendered using `renderer`.
    /// Calling this function only makes sense from inside a subclass's
    /// methods, like in its draw_shape vfunc, for example.
    /// 
    /// The returned layout should not be modified while still being
    /// rendered.
    @inlinable var layout: LayoutRef! {
        /// Gets the layout currently being rendered using `renderer`.
        /// Calling this function only makes sense from inside a subclass's
        /// methods, like in its draw_shape vfunc, for example.
        /// 
        /// The returned layout should not be modified while still being
        /// rendered.
        get {
            let rv = LayoutRef(gconstpointer: gconstpointer(pango_renderer_get_layout(renderer_ptr)))
            return rv
        }
    }

    /// Gets the layout line currently being rendered using `renderer`.
    /// Calling this function only makes sense from inside a subclass's
    /// methods, like in its draw_shape vfunc, for example.
    /// 
    /// The returned layout line should not be modified while still being
    /// rendered.
    @inlinable var layoutLine: LayoutLineRef! {
        /// Gets the layout line currently being rendered using `renderer`.
        /// Calling this function only makes sense from inside a subclass's
        /// methods, like in its draw_shape vfunc, for example.
        /// 
        /// The returned layout line should not be modified while still being
        /// rendered.
        get {
            let rv = LayoutLineRef(gconstpointer: gconstpointer(pango_renderer_get_layout_line(renderer_ptr)))
            return rv
        }
    }

    /// Gets the transformation matrix that will be applied when
    /// rendering. See `pango_renderer_set_matrix()`.
    @inlinable var matrix: MatrixRef! {
        /// Gets the transformation matrix that will be applied when
        /// rendering. See `pango_renderer_set_matrix()`.
        get {
            let rv = MatrixRef(gconstpointer: gconstpointer(pango_renderer_get_matrix(renderer_ptr)))
            return rv
        }
        /// Sets the transformation matrix that will be applied when rendering.
        nonmutating set {
            pango_renderer_set_matrix(renderer_ptr, UnsafePointer<PangoMatrix>(newValue?.matrix_ptr))
        }
    }

    // var parentInstance is unavailable because parent_instance is private

    // var underline is unavailable because underline is private

    // var strikethrough is unavailable because strikethrough is private

    // var activeCount is unavailable because active_count is private

    /// the current transformation matrix for
    ///    the Renderer; may be `nil`, which should be treated the
    ///    same as the identity matrix.
    @inlinable var _matrix: MatrixRef! {
        /// the current transformation matrix for
        ///    the Renderer; may be `nil`, which should be treated the
        ///    same as the identity matrix.
        get {
            let rv = MatrixRef(gconstpointer: gconstpointer(renderer_ptr.pointee.matrix))
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



