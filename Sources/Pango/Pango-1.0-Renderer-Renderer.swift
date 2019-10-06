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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoRenderer` instance.
    var renderer_ptr: UnsafeMutablePointer<PangoRenderer> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension RendererRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoRenderer>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RendererProtocol`
    init<T: RendererProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    /// Ownership is transferred to the `Renderer` instance.
    public init(_ op: UnsafeMutablePointer<PangoRenderer>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `RendererProtocol`
    /// Will retain `PangoRenderer`.
    public convenience init<T: RendererProtocol>(_ other: T) {
        self.init(cast(other.renderer_ptr))
        g_object_ref(cast(renderer_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoRenderer.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoRenderer.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoRenderer.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoRenderer>(opaquePointer))
    }



}

// MARK: - no Renderer properties

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
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"

}

public extension RendererProtocol {
    /// Connect a `RendererSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: RendererSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(renderer_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension RendererProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoRenderer` instance.
    var renderer_ptr: UnsafeMutablePointer<PangoRenderer> { return ptr.assumingMemoryBound(to: PangoRenderer.self) }

    /// Does initial setup before rendering operations on `renderer`.
    /// `pango_renderer_deactivate()` should be called when done drawing.
    /// Calls such as `pango_renderer_draw_layout()` automatically
    /// activate the layout before drawing on it. Calls to
    /// `pango_renderer_activate()` and `pango_renderer_deactivate()` can
    /// be nested and the renderer will only be initialized and
    /// deinitialized once.
    func activate() {
        pango_renderer_activate(cast(renderer_ptr))
    
    }

    /// Cleans up after rendering operations on `renderer`. See
    /// docs for `pango_renderer_activate()`.
    func deactivate() {
        pango_renderer_deactivate(cast(renderer_ptr))
    
    }

    /// Draw a squiggly line that approximately covers the given rectangle
    /// in the style of an underline used to indicate a spelling error.
    /// (The width of the underline is rounded to an integer number
    /// of up/down segments and the resulting rectangle is centered
    /// in the original rectangle)
    /// 
    /// This should be called while `renderer` is already active.  Use
    /// `pango_renderer_activate()` to activate a renderer.
    func drawErrorUnderline(x: CInt, y: CInt, width: CInt, height: CInt) {
        pango_renderer_draw_error_underline(cast(renderer_ptr), x, y, width, height)
    
    }

    /// Draws a single glyph with coordinates in device space.
    func drawGlyph(font: FontProtocol, glyph: Glyph, x: gdouble, y: gdouble) {
        pango_renderer_draw_glyph(cast(renderer_ptr), cast(font.ptr), glyph, x, y)
    
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
    func drawGlyphItem(text: UnsafePointer<CChar>, glyphItem glyph_item: GlyphItemProtocol, x: CInt, y: CInt) {
        pango_renderer_draw_glyph_item(cast(renderer_ptr), text, cast(glyph_item.ptr), x, y)
    
    }

    /// Draws the glyphs in `glyphs` with the specified `PangoRenderer`.
    func drawGlyphs(font: FontProtocol, glyphs: GlyphStringProtocol, x: CInt, y: CInt) {
        pango_renderer_draw_glyphs(cast(renderer_ptr), cast(font.ptr), cast(glyphs.ptr), x, y)
    
    }

    /// Draws `layout` with the specified `PangoRenderer`.
    func draw(layout: LayoutProtocol, x: CInt, y: CInt) {
        pango_renderer_draw_layout(cast(renderer_ptr), cast(layout.ptr), x, y)
    
    }

    /// Draws `line` with the specified `PangoRenderer`.
    func drawLayout(line: LayoutLineProtocol, x: CInt, y: CInt) {
        pango_renderer_draw_layout_line(cast(renderer_ptr), cast(line.ptr), x, y)
    
    }

    /// Draws an axis-aligned rectangle in user space coordinates with the
    /// specified `PangoRenderer`.
    /// 
    /// This should be called while `renderer` is already active.  Use
    /// `pango_renderer_activate()` to activate a renderer.
    func drawRectangle(part: RenderPart, x: CInt, y: CInt, width: CInt, height: CInt) {
        pango_renderer_draw_rectangle(cast(renderer_ptr), part, x, y, width, height)
    
    }

    /// Draws a trapezoid with the parallel sides aligned with the X axis
    /// using the given `PangoRenderer`; coordinates are in device space.
    func drawTrapezoid(part: RenderPart, y1_: gdouble, x11: gdouble, x21: gdouble, y2: gdouble, x12: gdouble, x22: gdouble) {
        pango_renderer_draw_trapezoid(cast(renderer_ptr), part, y1_, x11, x21, y2, x12, x22)
    
    }

    /// Gets the current alpha for the specified part.
    func getAlpha(part: RenderPart) -> UInt16 {
        let rv = pango_renderer_get_alpha(cast(renderer_ptr), part)
        return UInt16(rv)
    }

    /// Gets the current rendering color for the specified part.
    func getColor(part: RenderPart) -> UnsafeMutablePointer<PangoColor>! {
        let rv = pango_renderer_get_color(cast(renderer_ptr), part)
        return cast(rv)
    }

    /// Gets the layout currently being rendered using `renderer`.
    /// Calling this function only makes sense from inside a subclass's
    /// methods, like in its draw_shape vfunc, for example.
    /// 
    /// The returned layout should not be modified while still being
    /// rendered.
    func getLayout() -> UnsafeMutablePointer<PangoLayout>! {
        let rv = pango_renderer_get_layout(cast(renderer_ptr))
        return cast(rv)
    }

    /// Gets the layout line currently being rendered using `renderer`.
    /// Calling this function only makes sense from inside a subclass's
    /// methods, like in its draw_shape vfunc, for example.
    /// 
    /// The returned layout line should not be modified while still being
    /// rendered.
    func getLayoutLine() -> UnsafeMutablePointer<PangoLayoutLine>! {
        let rv = pango_renderer_get_layout_line(cast(renderer_ptr))
        return cast(rv)
    }

    /// Gets the transformation matrix that will be applied when
    /// rendering. See `pango_renderer_set_matrix()`.
    func getMatrix() -> UnsafePointer<PangoMatrix>! {
        let rv = pango_renderer_get_matrix(cast(renderer_ptr))
        return cast(rv)
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
    func partChanged(part: RenderPart) {
        pango_renderer_part_changed(cast(renderer_ptr), part)
    
    }

    /// Sets the alpha for part of the rendering.
    /// Note that the alpha may only be used if a color is
    /// specified for `part` as well.
    func setAlpha(part: RenderPart, alpha: UInt16) {
        pango_renderer_set_alpha(cast(renderer_ptr), part, guint16(alpha))
    
    }

    /// Sets the color for part of the rendering.
    /// Also see `pango_renderer_set_alpha()`.
    func setColor(part: RenderPart, color: ColorProtocol) {
        pango_renderer_set_color(cast(renderer_ptr), part, cast(color.ptr))
    
    }

    /// Sets the transformation matrix that will be applied when rendering.
    func set(matrix: MatrixProtocol) {
        pango_renderer_set_matrix(cast(renderer_ptr), cast(matrix.ptr))
    
    }
    /// Gets the layout currently being rendered using `renderer`.
    /// Calling this function only makes sense from inside a subclass's
    /// methods, like in its draw_shape vfunc, for example.
    /// 
    /// The returned layout should not be modified while still being
    /// rendered.
    var layout: UnsafeMutablePointer<PangoLayout>! {
        /// Gets the layout currently being rendered using `renderer`.
        /// Calling this function only makes sense from inside a subclass's
        /// methods, like in its draw_shape vfunc, for example.
        /// 
        /// The returned layout should not be modified while still being
        /// rendered.
        get {
            let rv = pango_renderer_get_layout(cast(renderer_ptr))
            return cast(rv)
        }
    }

    /// Gets the layout line currently being rendered using `renderer`.
    /// Calling this function only makes sense from inside a subclass's
    /// methods, like in its draw_shape vfunc, for example.
    /// 
    /// The returned layout line should not be modified while still being
    /// rendered.
    var layoutLine: UnsafeMutablePointer<PangoLayoutLine>! {
        /// Gets the layout line currently being rendered using `renderer`.
        /// Calling this function only makes sense from inside a subclass's
        /// methods, like in its draw_shape vfunc, for example.
        /// 
        /// The returned layout line should not be modified while still being
        /// rendered.
        get {
            let rv = pango_renderer_get_layout_line(cast(renderer_ptr))
            return cast(rv)
        }
    }

    /// Gets the transformation matrix that will be applied when
    /// rendering. See `pango_renderer_set_matrix()`.
    var matrix: UnsafePointer<PangoMatrix>! {
        /// Gets the transformation matrix that will be applied when
        /// rendering. See `pango_renderer_set_matrix()`.
        get {
            let rv = pango_renderer_get_matrix(cast(renderer_ptr))
            return cast(rv)
        }
        /// Sets the transformation matrix that will be applied when rendering.
        nonmutating set {
            pango_renderer_set_matrix(cast(renderer_ptr), cast(newValue))
        }
    }
}



