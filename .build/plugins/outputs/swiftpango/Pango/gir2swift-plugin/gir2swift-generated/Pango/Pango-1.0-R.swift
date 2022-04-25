import CGLib
import CHarfBuzz
import CPango
import GLib
import GLibObject
import HarfBuzz
// MARK: - Renderer Class

/// `PangoRenderer` is a base class for objects that can render text
/// provided as `PangoGlyphString` or `PangoLayout`.
/// 
/// By subclassing `PangoRenderer` and overriding operations such as
/// `draw_glyphs` and `draw_rectangle`, renderers for particular font
/// backends and destinations can be created.
///
/// The `RendererProtocol` protocol exposes the methods and properties of an underlying `PangoRenderer` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Renderer`.
/// Alternatively, use `RendererRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol RendererProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `PangoRenderer` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoRenderer` instance.
    var renderer_ptr: UnsafeMutablePointer<PangoRenderer>! { get }

    /// Required Initialiser for types conforming to `RendererProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `PangoRenderer` is a base class for objects that can render text
/// provided as `PangoGlyphString` or `PangoLayout`.
/// 
/// By subclassing `PangoRenderer` and overriding operations such as
/// `draw_glyphs` and `draw_rectangle`, renderers for particular font
/// backends and destinations can be created.
///
/// The `RendererRef` type acts as a lightweight Swift reference to an underlying `PangoRenderer` instance.
/// It exposes methods that can operate on this data type through `RendererProtocol` conformance.
/// Use `RendererRef` only as an `unowned` reference to an existing `PangoRenderer` instance.
///
public struct RendererRef: RendererProtocol, GWeakCapturing {
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

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: RendererProtocol>(_ other: T) -> RendererRef { RendererRef(other) }

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
    @inlinable init(mutating raw: UnsafeRawPointer) {
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

/// `PangoRenderer` is a base class for objects that can render text
/// provided as `PangoGlyphString` or `PangoLayout`.
/// 
/// By subclassing `PangoRenderer` and overriding operations such as
/// `draw_glyphs` and `draw_rectangle`, renderers for particular font
/// backends and destinations can be created.
///
/// The `Renderer` type acts as a reference-counted owner of an underlying `PangoRenderer` instance.
/// It provides the methods that can operate on this data type through `RendererProtocol` conformance.
/// Use `Renderer` as a strong reference or owner of a `PangoRenderer` instance.
///
open class Renderer: GLibObject.Object, RendererProtocol {
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
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

// MARK: Renderer has no signals
// MARK: Renderer Class: RendererProtocol extension (methods and fields)
public extension RendererProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoRenderer` instance.
    @inlinable var renderer_ptr: UnsafeMutablePointer<PangoRenderer>! { return ptr?.assumingMemoryBound(to: PangoRenderer.self) }

    /// Does initial setup before rendering operations on `renderer`.
    /// 
    /// [method`Pango.Renderer.deactivate`] should be called when done drawing.
    /// Calls such as [method`Pango.Renderer.draw_layout`] automatically
    /// activate the layout before drawing on it.
    /// 
    /// Calls to [method`Pango.Renderer.activate`] and
    /// [method`Pango.Renderer.deactivate`] can be nested and the
    /// renderer will only be initialized and deinitialized once.
    @inlinable func activate() {
        
        pango_renderer_activate(renderer_ptr)
        
    }

    /// Cleans up after rendering operations on `renderer`.
    /// 
    /// See docs for [method`Pango.Renderer.activate`].
    @inlinable func deactivate() {
        
        pango_renderer_deactivate(renderer_ptr)
        
    }

    /// Draw a squiggly line that approximately covers the given rectangle
    /// in the style of an underline used to indicate a spelling error.
    /// 
    /// The width of the underline is rounded to an integer number
    /// of up/down segments and the resulting rectangle is centered
    /// in the original rectangle.
    /// 
    /// This should be called while `renderer` is already active.
    /// Use [method`Pango.Renderer.activate`] to activate a renderer.
    @inlinable func drawErrorUnderline(x: Int, y: Int, width: Int, height: Int) {
        
        pango_renderer_draw_error_underline(renderer_ptr, gint(x), gint(y), gint(width), gint(height))
        
    }

    /// Draws a single glyph with coordinates in device space.
    @inlinable func drawGlyph<FontT: FontProtocol>(font: FontT, glyph: PangoGlyph, x: CDouble, y: CDouble) {
        
        pango_renderer_draw_glyph(renderer_ptr, font.font_ptr, glyph, x, y)
        
    }

    /// Draws the glyphs in `glyph_item` with the specified `PangoRenderer`,
    /// embedding the text associated with the glyphs in the output if the
    /// output format supports it.
    /// 
    /// This is useful for rendering text in PDF.
    /// 
    /// Note that this method does not handle attributes in `glyph_item`.
    /// If you want colors, shapes and lines handled automatically according
    /// to those attributes, you need to use `pango_renderer_draw_layout_line()`
    /// or `pango_renderer_draw_layout()`.
    /// 
    /// Note that `text` is the start of the text for layout, which is then
    /// indexed by `glyph_item-&gt;item-&gt;offset`.
    /// 
    /// If `text` is `nil`, this simply calls [method`Pango.Renderer.draw_glyphs`].
    /// 
    /// The default implementation of this method simply falls back to
    /// [method`Pango.Renderer.draw_glyphs`].
    @inlinable func drawGlyphItem<GlyphItemT: GlyphItemProtocol>(text: UnsafePointer<CChar>? = nil, glyphItem: GlyphItemT, x: Int, y: Int) {
        
        pango_renderer_draw_glyph_item(renderer_ptr, text, glyphItem.glyph_item_ptr, gint(x), gint(y))
        
    }

    /// Draws the glyphs in `glyphs` with the specified `PangoRenderer`.
    @inlinable func drawGlyphs<FontT: FontProtocol, GlyphStringT: GlyphStringProtocol>(font: FontT, glyphs: GlyphStringT, x: Int, y: Int) {
        
        pango_renderer_draw_glyphs(renderer_ptr, font.font_ptr, glyphs.glyph_string_ptr, gint(x), gint(y))
        
    }

    /// Draws `layout` with the specified `PangoRenderer`.
    /// 
    /// This is equivalent to drawing the lines of the layout, at their
    /// respective positions relative to `x`, `y`.
    @inlinable func draw<LayoutT: LayoutProtocol>(layout: LayoutT, x: Int, y: Int) {
        
        pango_renderer_draw_layout(renderer_ptr, layout.layout_ptr, gint(x), gint(y))
        
    }

    /// Draws `line` with the specified `PangoRenderer`.
    /// 
    /// This draws the glyph items that make up the line, as well as
    /// shapes, backgrounds and lines that are specified by the attributes
    /// of those items.
    @inlinable func drawLayout<LayoutLineT: LayoutLineProtocol>(line: LayoutLineT, x: Int, y: Int) {
        
        pango_renderer_draw_layout_line(renderer_ptr, line.layout_line_ptr, gint(x), gint(y))
        
    }

    /// Draws an axis-aligned rectangle in user space coordinates with the
    /// specified `PangoRenderer`.
    /// 
    /// This should be called while `renderer` is already active.
    /// Use [method`Pango.Renderer.activate`] to activate a renderer.
    @inlinable func drawRectangle(part: PangoRenderPart, x: Int, y: Int, width: Int, height: Int) {
        
        pango_renderer_draw_rectangle(renderer_ptr, part, gint(x), gint(y), gint(width), gint(height))
        
    }

    /// Draws a trapezoid with the parallel sides aligned with the X axis
    /// using the given `PangoRenderer`; coordinates are in device space.
    @inlinable func drawTrapezoid(part: PangoRenderPart, y1: CDouble, x11: CDouble, x21: CDouble, y2: CDouble, x12: CDouble, x22: CDouble) {
        
        pango_renderer_draw_trapezoid(renderer_ptr, part, y1, x11, x21, y2, x12, x22)
        
    }

    /// Gets the current alpha for the specified part.
    @inlinable func getAlpha(part: PangoRenderPart) -> guint16 {
        let result = pango_renderer_get_alpha(renderer_ptr, part)
        let rv = result
        return rv
    }

    /// Gets the current rendering color for the specified part.
    @inlinable func getColor(part: PangoRenderPart) -> Pango.ColorRef! {
        let result = pango_renderer_get_color(renderer_ptr, part)
        let rv = ColorRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Gets the layout currently being rendered using `renderer`.
    /// 
    /// Calling this function only makes sense from inside a subclass's
    /// methods, like in its draw_shape vfunc, for example.
    /// 
    /// The returned layout should not be modified while still being
    /// rendered.
    @inlinable func getLayout() -> Pango.LayoutRef! {
        let result = pango_renderer_get_layout(renderer_ptr)
        let rv = LayoutRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Gets the layout line currently being rendered using `renderer`.
    /// 
    /// Calling this function only makes sense from inside a subclass's
    /// methods, like in its draw_shape vfunc, for example.
    /// 
    /// The returned layout line should not be modified while still being
    /// rendered.
    @inlinable func getLayoutLine() -> Pango.LayoutLineRef! {
        let result = pango_renderer_get_layout_line(renderer_ptr)
        let rv = LayoutLineRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Gets the transformation matrix that will be applied when
    /// rendering.
    /// 
    /// See [method`Pango.Renderer.set_matrix`].
    @inlinable func getMatrix() -> Pango.MatrixRef! {
        let result = pango_renderer_get_matrix(renderer_ptr)
        let rv = MatrixRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Informs Pango that the way that the rendering is done
    /// for `part` has changed.
    /// 
    /// This should be called if the rendering changes in a way that would
    /// prevent multiple pieces being joined together into one drawing call.
    /// For instance, if a subclass of `PangoRenderer` was to add a stipple
    /// option for drawing underlines, it needs to call
    /// 
    /// ```
    /// pango_renderer_part_changed (render, PANGO_RENDER_PART_UNDERLINE);
    /// ```
    /// 
    /// When the stipple changes or underlines with different stipples
    /// might be joined together. Pango automatically calls this for
    /// changes to colors. (See [method`Pango.Renderer.set_color`])
    @inlinable func partChanged(part: PangoRenderPart) {
        
        pango_renderer_part_changed(renderer_ptr, part)
        
    }

    /// Sets the alpha for part of the rendering.
    /// 
    /// Note that the alpha may only be used if a color is
    /// specified for `part` as well.
    @inlinable func setAlpha(part: PangoRenderPart, alpha: guint16) {
        
        pango_renderer_set_alpha(renderer_ptr, part, alpha)
        
    }

    /// Sets the color for part of the rendering.
    /// 
    /// Also see [method`Pango.Renderer.set_alpha`].
    @inlinable func setColor(part: PangoRenderPart, color: ColorRef? = nil) {
            
        pango_renderer_set_color(renderer_ptr, part, color?.color_ptr)
            
    }
    /// Sets the color for part of the rendering.
    /// 
    /// Also see [method`Pango.Renderer.set_alpha`].
    @inlinable func setColor<ColorT: ColorProtocol>(part: PangoRenderPart, color: ColorT?) {
        
        pango_renderer_set_color(renderer_ptr, part, color?.color_ptr)
        
    }

    /// Sets the transformation matrix that will be applied when rendering.
    @inlinable func set(matrix: MatrixRef? = nil) {
            
        pango_renderer_set_matrix(renderer_ptr, matrix?.matrix_ptr)
            
    }
    /// Sets the transformation matrix that will be applied when rendering.
    @inlinable func set<MatrixT: MatrixProtocol>(matrix: MatrixT?) {
        
        pango_renderer_set_matrix(renderer_ptr, matrix?.matrix_ptr)
        
    }
    /// Gets the layout currently being rendered using `renderer`.
    /// 
    /// Calling this function only makes sense from inside a subclass's
    /// methods, like in its draw_shape vfunc, for example.
    /// 
    /// The returned layout should not be modified while still being
    /// rendered.
    @inlinable var layout: Pango.LayoutRef! {
        /// Gets the layout currently being rendered using `renderer`.
        /// 
        /// Calling this function only makes sense from inside a subclass's
        /// methods, like in its draw_shape vfunc, for example.
        /// 
        /// The returned layout should not be modified while still being
        /// rendered.
        get {
            let result = pango_renderer_get_layout(renderer_ptr)
        let rv = LayoutRef(gconstpointer: gconstpointer(result))
            return rv
        }
    }

    /// Gets the layout line currently being rendered using `renderer`.
    /// 
    /// Calling this function only makes sense from inside a subclass's
    /// methods, like in its draw_shape vfunc, for example.
    /// 
    /// The returned layout line should not be modified while still being
    /// rendered.
    @inlinable var layoutLine: Pango.LayoutLineRef! {
        /// Gets the layout line currently being rendered using `renderer`.
        /// 
        /// Calling this function only makes sense from inside a subclass's
        /// methods, like in its draw_shape vfunc, for example.
        /// 
        /// The returned layout line should not be modified while still being
        /// rendered.
        get {
            let result = pango_renderer_get_layout_line(renderer_ptr)
        let rv = LayoutLineRef(gconstpointer: gconstpointer(result))
            return rv
        }
    }

    /// Gets the transformation matrix that will be applied when
    /// rendering.
    /// 
    /// See [method`Pango.Renderer.set_matrix`].
    @inlinable var matrix: Pango.MatrixRef! {
        /// Gets the transformation matrix that will be applied when
        /// rendering.
        /// 
        /// See [method`Pango.Renderer.set_matrix`].
        get {
            let result = pango_renderer_get_matrix(renderer_ptr)
        let rv = MatrixRef(gconstpointer: gconstpointer(result))
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
    ///   the Renderer; may be `nil`, which should be treated the
    ///   same as the identity matrix.
    @inlinable var _matrix: MatrixRef! {
        /// the current transformation matrix for
        ///   the Renderer; may be `nil`, which should be treated the
        ///   same as the identity matrix.
        get {
            let rv = MatrixRef(gconstpointer: gconstpointer(renderer_ptr.pointee.matrix))
    return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - Rectangle Record

/// The `PangoRectangle` structure represents a rectangle.
/// 
/// `PangoRectangle` is frequently used to represent the logical or ink
/// extents of a single glyph or section of text. (See, for instance,
/// [method`Pango.Font.get_glyph_extents`].)
///
/// The `RectangleProtocol` protocol exposes the methods and properties of an underlying `PangoRectangle` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Rectangle`.
/// Alternatively, use `RectangleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol RectangleProtocol {
        /// Untyped pointer to the underlying `PangoRectangle` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoRectangle` instance.
    var _ptr: UnsafeMutablePointer<PangoRectangle>! { get }

    /// Required Initialiser for types conforming to `RectangleProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `PangoRectangle` structure represents a rectangle.
/// 
/// `PangoRectangle` is frequently used to represent the logical or ink
/// extents of a single glyph or section of text. (See, for instance,
/// [method`Pango.Font.get_glyph_extents`].)
///
/// The `RectangleRef` type acts as a lightweight Swift reference to an underlying `PangoRectangle` instance.
/// It exposes methods that can operate on this data type through `RectangleProtocol` conformance.
/// Use `RectangleRef` only as an `unowned` reference to an existing `PangoRectangle` instance.
///
public struct RectangleRef: RectangleProtocol {
        /// Untyped pointer to the underlying `PangoRectangle` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RectangleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoRectangle>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoRectangle>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoRectangle>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoRectangle>?) {
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

    /// Reference intialiser for a related type that implements `RectangleProtocol`
    @inlinable init<T: RectangleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PangoRectangle` structure represents a rectangle.
/// 
/// `PangoRectangle` is frequently used to represent the logical or ink
/// extents of a single glyph or section of text. (See, for instance,
/// [method`Pango.Font.get_glyph_extents`].)
///
/// The `Rectangle` type acts as an owner of an underlying `PangoRectangle` instance.
/// It provides the methods that can operate on this data type through `RectangleProtocol` conformance.
/// Use `Rectangle` as a strong reference or owner of a `PangoRectangle` instance.
///
open class Rectangle: RectangleProtocol {
        /// Untyped pointer to the underlying `PangoRectangle` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Rectangle` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoRectangle>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Rectangle` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoRectangle>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Rectangle` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Rectangle` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Rectangle` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoRectangle>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Rectangle` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoRectangle>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoRectangle` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Rectangle` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoRectangle>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoRectangle, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `RectangleProtocol`
    /// `PangoRectangle` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `RectangleProtocol`
    @inlinable public init<T: RectangleProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoRectangle, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `PangoRectangle`.
    deinit {
        // no reference counting for PangoRectangle, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoRectangle, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoRectangle, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoRectangle, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoRectangle, cannot ref(_ptr)
    }



}

// MARK: no Rectangle properties

// MARK: no Rectangle signals

// MARK: Rectangle has no signals
// MARK: Rectangle Record: RectangleProtocol extension (methods and fields)
public extension RectangleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoRectangle` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoRectangle>! { return ptr?.assumingMemoryBound(to: PangoRectangle.self) }

    /// Create a new shape attribute.
    /// 
    /// A shape is used to impose a particular ink and logical
    /// rectangle on the result of shaping a particular glyph.
    /// This might be used, for instance, for embedding a picture
    /// or a widget inside a `PangoLayout`.
    @inlinable func attrShapeNew<RectangleT: RectangleProtocol>(logicalRect: RectangleT) -> Pango.AttributeRef! {
        let result = pango_attr_shape_new(_ptr, logicalRect._ptr)
        let rv = AttributeRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Creates a new shape attribute.
    /// 
    /// Like [func`Pango.AttrShape.new`], but a user data pointer
    /// is also provided; this pointer can be accessed when later
    /// rendering the glyph.
    @inlinable func attrShapeNewWithData<RectangleT: RectangleProtocol>(logicalRect: RectangleT, data: gpointer? = nil, copyFunc: PangoAttrDataCopyFunc? = nil, destroyFunc: GDestroyNotify? = nil) -> Pango.AttributeRef! {
        let result = pango_attr_shape_new_with_data(_ptr, logicalRect._ptr, data, copyFunc, destroyFunc)
        let rv = AttributeRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Converts extents from Pango units to device units.
    /// 
    /// The conversion is done by dividing by the `PANGO_SCALE` factor and
    /// performing rounding.
    /// 
    /// The `inclusive` rectangle is converted by flooring the x/y coordinates
    /// and extending width/height, such that the final rectangle completely
    /// includes the original rectangle.
    /// 
    /// The `nearest` rectangle is converted by rounding the coordinates
    /// of the rectangle to the nearest device unit (pixel).
    /// 
    /// The rule to which argument to use is: if you want the resulting device-space
    /// rectangle to completely contain the original rectangle, pass it in as
    /// `inclusive`. If you want two touching-but-not-overlapping rectangles stay
    /// touching-but-not-overlapping after rounding to device units, pass them in
    /// as `nearest`.
    @inlinable func extentsToPixels(nearest: RectangleRef? = nil) {
            
        pango_extents_to_pixels(_ptr, nearest?._ptr)
            
    }
    /// Converts extents from Pango units to device units.
    /// 
    /// The conversion is done by dividing by the `PANGO_SCALE` factor and
    /// performing rounding.
    /// 
    /// The `inclusive` rectangle is converted by flooring the x/y coordinates
    /// and extending width/height, such that the final rectangle completely
    /// includes the original rectangle.
    /// 
    /// The `nearest` rectangle is converted by rounding the coordinates
    /// of the rectangle to the nearest device unit (pixel).
    /// 
    /// The rule to which argument to use is: if you want the resulting device-space
    /// rectangle to completely contain the original rectangle, pass it in as
    /// `inclusive`. If you want two touching-but-not-overlapping rectangles stay
    /// touching-but-not-overlapping after rounding to device units, pass them in
    /// as `nearest`.
    @inlinable func extentsToPixels<RectangleT: RectangleProtocol>(nearest: RectangleT?) {
        
        pango_extents_to_pixels(_ptr, nearest?._ptr)
        
    }

    /// X coordinate of the left side of the rectangle.
    @inlinable var x: gint {
        /// X coordinate of the left side of the rectangle.
        get {
            let rv = _ptr.pointee.x
    return rv
        }
        /// X coordinate of the left side of the rectangle.
         set {
            _ptr.pointee.x = newValue
        }
    }

    /// Y coordinate of the the top side of the rectangle.
    @inlinable var y: gint {
        /// Y coordinate of the the top side of the rectangle.
        get {
            let rv = _ptr.pointee.y
    return rv
        }
        /// Y coordinate of the the top side of the rectangle.
         set {
            _ptr.pointee.y = newValue
        }
    }

    /// width of the rectangle.
    @inlinable var width: gint {
        /// width of the rectangle.
        get {
            let rv = _ptr.pointee.width
    return rv
        }
        /// width of the rectangle.
         set {
            _ptr.pointee.width = newValue
        }
    }

    /// height of the rectangle.
    @inlinable var height: gint {
        /// height of the rectangle.
        get {
            let rv = _ptr.pointee.height
    return rv
        }
        /// height of the rectangle.
         set {
            _ptr.pointee.height = newValue
        }
    }

}



/// Metatype/GType declaration for Renderer
public extension RendererClassRef {
    
    /// This getter returns the GLib type identifier registered for `Renderer`
    static var metatypeReference: GType { pango_renderer_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<PangoRendererClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: PangoRendererClass.self) }
    
    static var metatype: PangoRendererClass? { metatypePointer?.pointee } 
    
    static var wrapper: RendererClassRef? { RendererClassRef(metatypePointer) }
    
    
}

// MARK: - RendererClass Record

/// Class structure for `PangoRenderer`.
/// 
/// The following vfuncs take user space coordinates in Pango units
/// and have default implementations:
/// - draw_glyphs
/// - draw_rectangle
/// - draw_error_underline
/// - draw_shape
/// - draw_glyph_item
/// 
/// The default draw_shape implementation draws nothing.
/// 
/// The following vfuncs take device space coordinates as doubles
/// and must be implemented:
/// - draw_trapezoid
/// - draw_glyph
///
/// The `RendererClassProtocol` protocol exposes the methods and properties of an underlying `PangoRendererClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RendererClass`.
/// Alternatively, use `RendererClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol RendererClassProtocol {
        /// Untyped pointer to the underlying `PangoRendererClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoRendererClass` instance.
    var _ptr: UnsafeMutablePointer<PangoRendererClass>! { get }

    /// Required Initialiser for types conforming to `RendererClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Class structure for `PangoRenderer`.
/// 
/// The following vfuncs take user space coordinates in Pango units
/// and have default implementations:
/// - draw_glyphs
/// - draw_rectangle
/// - draw_error_underline
/// - draw_shape
/// - draw_glyph_item
/// 
/// The default draw_shape implementation draws nothing.
/// 
/// The following vfuncs take device space coordinates as doubles
/// and must be implemented:
/// - draw_trapezoid
/// - draw_glyph
///
/// The `RendererClassRef` type acts as a lightweight Swift reference to an underlying `PangoRendererClass` instance.
/// It exposes methods that can operate on this data type through `RendererClassProtocol` conformance.
/// Use `RendererClassRef` only as an `unowned` reference to an existing `PangoRendererClass` instance.
///
public struct RendererClassRef: RendererClassProtocol {
        /// Untyped pointer to the underlying `PangoRendererClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RendererClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoRendererClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoRendererClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoRendererClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoRendererClass>?) {
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

    /// Reference intialiser for a related type that implements `RendererClassProtocol`
    @inlinable init<T: RendererClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: RendererClass Record: RendererClassProtocol extension (methods and fields)
public extension RendererClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoRendererClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoRendererClass>! { return ptr?.assumingMemoryBound(to: PangoRendererClass.self) }


    // var parentClass is unavailable because parent_class is private

    // var drawGlyphs is unavailable because draw_glyphs is void

    // var drawRectangle is unavailable because draw_rectangle is void

    // var drawErrorUnderline is unavailable because draw_error_underline is void

    // var drawShape is unavailable because draw_shape is void

    // var drawTrapezoid is unavailable because draw_trapezoid is void

    // var drawGlyph is unavailable because draw_glyph is void

    // var partChanged is unavailable because part_changed is void

    // var begin is unavailable because begin is void

    // var end is unavailable because end is void

    // var prepareRun is unavailable because prepare_run is void

    // var drawGlyphItem is unavailable because draw_glyph_item is void

    // var PangoReserved2 is unavailable because _pango_reserved2 is void

    // var PangoReserved3 is unavailable because _pango_reserved3 is void

    // var PangoReserved4 is unavailable because _pango_reserved4 is void

}



