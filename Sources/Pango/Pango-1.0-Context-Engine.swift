import CGLib
import CPango
import GLib
import GLibObject

// MARK: - Context Class

/// The `ContextProtocol` protocol exposes the methods and properties of an underlying `PangoContext` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Context`.
/// Alternatively, use `ContextRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoContext` structure stores global information
/// used to control the itemization process.
public protocol ContextProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `PangoContext` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoContext` instance.
    var context_ptr: UnsafeMutablePointer<PangoContext>! { get }

}

/// The `ContextRef` type acts as a lightweight Swift reference to an underlying `PangoContext` instance.
/// It exposes methods that can operate on this data type through `ContextProtocol` conformance.
/// Use `ContextRef` only as an `unowned` reference to an existing `PangoContext` instance.
///
/// The `PangoContext` structure stores global information
/// used to control the itemization process.
public struct ContextRef: ContextProtocol {
        /// Untyped pointer to the underlying `PangoContext` instance.
    /// For type-safe access, use the generated, typed pointer `context_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ContextRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoContext>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoContext>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoContext>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoContext>?) {
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

    /// Reference intialiser for a related type that implements `ContextProtocol`
    @inlinable init<T: ContextProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `PangoContext` initialized to default values.
    /// 
    /// This function is not particularly useful as it should always
    /// be followed by a `pango_context_set_font_map()` call, and the
    /// function `pango_font_map_create_context()` does these two steps
    /// together and hence users are recommended to use that.
    /// 
    /// If you are using Pango as part of a higher-level system,
    /// that system may have it's own way of create a `PangoContext`.
    /// For instance, the GTK+ toolkit has, among others,
    /// `gdk_pango_context_get_for_screen()`, and
    /// `gtk_widget_get_pango_context()`.  Use those instead.
    @inlinable init() {
        let rv = pango_context_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `Context` type acts as a reference-counted owner of an underlying `PangoContext` instance.
/// It provides the methods that can operate on this data type through `ContextProtocol` conformance.
/// Use `Context` as a strong reference or owner of a `PangoContext` instance.
///
/// The `PangoContext` structure stores global information
/// used to control the itemization process.
open class Context: GLibObject.Object, ContextProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Context` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoContext>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Context` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoContext>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Context` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Context` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Context` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoContext>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Context` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoContext>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `PangoContext`.
    /// i.e., ownership is transferred to the `Context` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoContext>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ContextProtocol`
    /// Will retain `PangoContext`.
    /// - Parameter other: an instance of a related type that implements `ContextProtocol`
    @inlinable public init<T: ContextProtocol>(context other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `PangoContext` initialized to default values.
    /// 
    /// This function is not particularly useful as it should always
    /// be followed by a `pango_context_set_font_map()` call, and the
    /// function `pango_font_map_create_context()` does these two steps
    /// together and hence users are recommended to use that.
    /// 
    /// If you are using Pango as part of a higher-level system,
    /// that system may have it's own way of create a `PangoContext`.
    /// For instance, the GTK+ toolkit has, among others,
    /// `gdk_pango_context_get_for_screen()`, and
    /// `gtk_widget_get_pango_context()`.  Use those instead.
    @inlinable public init() {
        let rv = pango_context_new()
        super.init(gpointer: (rv))
    }


}

// MARK: no Context properties

public enum ContextSignalName: String, SignalNameProtocol {
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

public extension ContextProtocol {
    /// Connect a `ContextSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: ContextSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: Context Class: ContextProtocol extension (methods and fields)
public extension ContextProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoContext` instance.
    @inlinable var context_ptr: UnsafeMutablePointer<PangoContext>! { return ptr?.assumingMemoryBound(to: PangoContext.self) }

    /// Forces a change in the context, which will cause any `PangoLayout`
    /// using this context to re-layout.
    /// 
    /// This function is only useful when implementing a new backend
    /// for Pango, something applications won't do. Backends should
    /// call this function if they have attached extra data to the context
    /// and such data is changed.
    @inlinable func changed() {
        pango_context_changed(context_ptr)
    
    }

    /// Retrieves the base direction for the context. See
    /// `pango_context_set_base_dir()`.
    @inlinable func getBaseDir() -> PangoDirection {
        let rv = pango_context_get_base_dir(context_ptr)
        return rv
    }

    /// Retrieves the base gravity for the context. See
    /// `pango_context_set_base_gravity()`.
    @inlinable func getBaseGravity() -> PangoGravity {
        let rv = pango_context_get_base_gravity(context_ptr)
        return rv
    }

    /// Retrieve the default font description for the context.
    @inlinable func getFontDescription() -> FontDescriptionRef! {
        let rv = FontDescriptionRef(gconstpointer: gconstpointer(pango_context_get_font_description(context_ptr)))
        return rv
    }

    /// Gets the `PangoFontMap` used to look up fonts for this context.
    @inlinable func getFontMap() -> FontMapRef! {
        let rv = FontMapRef(gconstpointer: gconstpointer(pango_context_get_font_map(context_ptr)))
        return rv
    }

    /// Retrieves the gravity for the context. This is similar to
    /// `pango_context_get_base_gravity()`, except for when the base gravity
    /// is `PANGO_GRAVITY_AUTO` for which `pango_gravity_get_for_matrix()` is used
    /// to return the gravity from the current context matrix.
    @inlinable func getGravity() -> PangoGravity {
        let rv = pango_context_get_gravity(context_ptr)
        return rv
    }

    /// Retrieves the gravity hint for the context. See
    /// `pango_context_set_gravity_hint()` for details.
    @inlinable func getGravityHint() -> PangoGravityHint {
        let rv = pango_context_get_gravity_hint(context_ptr)
        return rv
    }

    /// Retrieves the global language tag for the context.
    @inlinable func getLanguage() -> LanguageRef! {
        let rv = LanguageRef(gconstpointer: gconstpointer(pango_context_get_language(context_ptr)))
        return rv
    }

    /// Gets the transformation matrix that will be applied when
    /// rendering with this context. See `pango_context_set_matrix()`.
    @inlinable func getMatrix() -> MatrixRef! {
        let rv = MatrixRef(gconstpointer: gconstpointer(pango_context_get_matrix(context_ptr)))
        return rv
    }

    /// Get overall metric information for a particular font
    /// description.  Since the metrics may be substantially different for
    /// different scripts, a language tag can be provided to indicate that
    /// the metrics should be retrieved that correspond to the `script(s)`
    /// used by that language.
    /// 
    /// The `PangoFontDescription` is interpreted in the same way as
    /// by `pango_itemize()`, and the family name may be a comma separated
    /// list of figures. If characters from multiple of these families
    /// would be used to render the string, then the returned fonts would
    /// be a composite of the metrics for the fonts loaded for the
    /// individual families.
    @inlinable func getMetrics(desc: FontDescriptionRef? = nil, language: LanguageRef? = nil) -> FontMetricsRef! {
        let rv = FontMetricsRef(gconstpointer: gconstpointer(pango_context_get_metrics(context_ptr, desc?.font_description_ptr, language?.language_ptr)))
        return rv
    }
    /// Get overall metric information for a particular font
    /// description.  Since the metrics may be substantially different for
    /// different scripts, a language tag can be provided to indicate that
    /// the metrics should be retrieved that correspond to the `script(s)`
    /// used by that language.
    /// 
    /// The `PangoFontDescription` is interpreted in the same way as
    /// by `pango_itemize()`, and the family name may be a comma separated
    /// list of figures. If characters from multiple of these families
    /// would be used to render the string, then the returned fonts would
    /// be a composite of the metrics for the fonts loaded for the
    /// individual families.
    @inlinable func getMetrics<FontDescriptionT: FontDescriptionProtocol, LanguageT: LanguageProtocol>(desc: FontDescriptionT?, language: LanguageT?) -> FontMetricsRef! {
        let rv = FontMetricsRef(gconstpointer: gconstpointer(pango_context_get_metrics(context_ptr, desc?.font_description_ptr, language?.language_ptr)))
        return rv
    }

    /// Returns whether font rendering with this context should
    /// round glyph positions and widths.
    @inlinable func getRoundGlyphPositions() -> Bool {
        let rv = ((pango_context_get_round_glyph_positions(context_ptr)) != 0)
        return rv
    }

    /// Returns the current serial number of `context`.  The serial number is
    /// initialized to an small number larger than zero when a new context
    /// is created and is increased whenever the context is changed using any
    /// of the setter functions, or the `PangoFontMap` it uses to find fonts has
    /// changed. The serial may wrap, but will never have the value 0. Since it
    /// can wrap, never compare it with "less than", always use "not equals".
    /// 
    /// This can be used to automatically detect changes to a `PangoContext`, and
    /// is only useful when implementing objects that need update when their
    /// `PangoContext` changes, like `PangoLayout`.
    @inlinable func getSerial() -> Int {
        let rv = Int(pango_context_get_serial(context_ptr))
        return rv
    }

    /// List all families for a context.
    @inlinable func list(families: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<PangoFontFamily>?>?>!, nFamilies: UnsafeMutablePointer<gint>!) {
        pango_context_list_families(context_ptr, families, nFamilies)
    
    }

    /// Loads the font in one of the fontmaps in the context
    /// that is the closest match for `desc`.
    @inlinable func loadFont<FontDescriptionT: FontDescriptionProtocol>(desc: FontDescriptionT) -> FontRef! {
        let rv = FontRef(gconstpointer: gconstpointer(pango_context_load_font(context_ptr, desc.font_description_ptr)))
        return rv
    }

    /// Load a set of fonts in the context that can be used to render
    /// a font matching `desc`.
    @inlinable func loadFontset<FontDescriptionT: FontDescriptionProtocol, LanguageT: LanguageProtocol>(desc: FontDescriptionT, language: LanguageT) -> FontsetRef! {
        let rv = FontsetRef(gconstpointer: gconstpointer(pango_context_load_fontset(context_ptr, desc.font_description_ptr, language.language_ptr)))
        return rv
    }

    /// Sets the base direction for the context.
    /// 
    /// The base direction is used in applying the Unicode bidirectional
    /// algorithm; if the `direction` is `PANGO_DIRECTION_LTR` or
    /// `PANGO_DIRECTION_RTL`, then the value will be used as the paragraph
    /// direction in the Unicode bidirectional algorithm.  A value of
    /// `PANGO_DIRECTION_WEAK_LTR` or `PANGO_DIRECTION_WEAK_RTL` is used only
    /// for paragraphs that do not contain any strong characters themselves.
    @inlinable func setBaseDir(direction: PangoDirection) {
        pango_context_set_base_dir(context_ptr, direction)
    
    }

    /// Sets the base gravity for the context.
    /// 
    /// The base gravity is used in laying vertical text out.
    @inlinable func setBase(gravity: PangoGravity) {
        pango_context_set_base_gravity(context_ptr, gravity)
    
    }

    /// Set the default font description for the context
    @inlinable func setFontDescription<FontDescriptionT: FontDescriptionProtocol>(desc: FontDescriptionT) {
        pango_context_set_font_description(context_ptr, desc.font_description_ptr)
    
    }

    /// Sets the font map to be searched when fonts are looked-up in this context.
    /// This is only for internal use by Pango backends, a `PangoContext` obtained
    /// via one of the recommended methods should already have a suitable font map.
    @inlinable func set<FontMapT: FontMapProtocol>(fontMap: FontMapT) {
        pango_context_set_font_map(context_ptr, fontMap.font_map_ptr)
    
    }

    /// Sets the gravity hint for the context.
    /// 
    /// The gravity hint is used in laying vertical text out, and is only relevant
    /// if gravity of the context as returned by `pango_context_get_gravity()`
    /// is set `PANGO_GRAVITY_EAST` or `PANGO_GRAVITY_WEST`.
    @inlinable func setGravity(hint: PangoGravityHint) {
        pango_context_set_gravity_hint(context_ptr, hint)
    
    }

    /// Sets the global language tag for the context.  The default language
    /// for the locale of the running process can be found using
    /// `pango_language_get_default()`.
    @inlinable func set<LanguageT: LanguageProtocol>(language: LanguageT) {
        pango_context_set_language(context_ptr, language.language_ptr)
    
    }

    /// Sets the transformation matrix that will be applied when rendering
    /// with this context. Note that reported metrics are in the user space
    /// coordinates before the application of the matrix, not device-space
    /// coordinates after the application of the matrix. So, they don't scale
    /// with the matrix, though they may change slightly for different
    /// matrices, depending on how the text is fit to the pixel grid.
    @inlinable func set(matrix: MatrixRef? = nil) {
        pango_context_set_matrix(context_ptr, matrix?.matrix_ptr)
    
    }
    /// Sets the transformation matrix that will be applied when rendering
    /// with this context. Note that reported metrics are in the user space
    /// coordinates before the application of the matrix, not device-space
    /// coordinates after the application of the matrix. So, they don't scale
    /// with the matrix, though they may change slightly for different
    /// matrices, depending on how the text is fit to the pixel grid.
    @inlinable func set<MatrixT: MatrixProtocol>(matrix: MatrixT?) {
        pango_context_set_matrix(context_ptr, matrix?.matrix_ptr)
    
    }

    /// Sets whether font rendering with this context should
    /// round glyph positions and widths to integral positions,
    /// in device units.
    /// 
    /// This is useful when the renderer can't handle subpixel
    /// positioning of glyphs.
    /// 
    /// The default value is to round glyph positions, to remain
    /// compatible with previous Pango behavior.
    @inlinable func setRoundGlyphPositions(roundPositions: Bool) {
        pango_context_set_round_glyph_positions(context_ptr, gboolean((roundPositions) ? 1 : 0))
    
    }

    /// Breaks a piece of text into segments with consistent
    /// directional level and shaping engine. Each byte of `text` will
    /// be contained in exactly one of the items in the returned list;
    /// the generated list of items will be in logical order (the start
    /// offsets of the items are ascending).
    /// 
    /// `cached_iter` should be an iterator over `attrs` currently positioned at a
    /// range before or containing `start_index`; `cached_iter` will be advanced to
    /// the range covering the position just after `start_index` + `length`.
    /// (i.e. if itemizing in a loop, just keep passing in the same `cached_iter`).
    @inlinable func itemize<AttrListT: AttrListProtocol>(text: UnsafePointer<CChar>!, startIndex: Int, length: Int, attrs: AttrListT, cachedIter: AttrIteratorRef? = nil) -> GLib.ListRef! {
        let rv = GLib.ListRef(pango_itemize(context_ptr, text, gint(startIndex), gint(length), attrs.attr_list_ptr, cachedIter?.attr_iterator_ptr))
        return rv
    }
    /// Breaks a piece of text into segments with consistent
    /// directional level and shaping engine. Each byte of `text` will
    /// be contained in exactly one of the items in the returned list;
    /// the generated list of items will be in logical order (the start
    /// offsets of the items are ascending).
    /// 
    /// `cached_iter` should be an iterator over `attrs` currently positioned at a
    /// range before or containing `start_index`; `cached_iter` will be advanced to
    /// the range covering the position just after `start_index` + `length`.
    /// (i.e. if itemizing in a loop, just keep passing in the same `cached_iter`).
    @inlinable func itemize<AttrIteratorT: AttrIteratorProtocol, AttrListT: AttrListProtocol>(text: UnsafePointer<CChar>!, startIndex: Int, length: Int, attrs: AttrListT, cachedIter: AttrIteratorT?) -> GLib.ListRef! {
        let rv = GLib.ListRef(pango_itemize(context_ptr, text, gint(startIndex), gint(length), attrs.attr_list_ptr, cachedIter?.attr_iterator_ptr))
        return rv
    }

    /// Like `pango_itemize()`, but the base direction to use when
    /// computing bidirectional levels (see pango_context_set_base_dir ()),
    /// is specified explicitly rather than gotten from the `PangoContext`.
    @inlinable func itemizeWith<AttrListT: AttrListProtocol>(baseDir: PangoDirection, text: UnsafePointer<CChar>!, startIndex: Int, length: Int, attrs: AttrListT, cachedIter: AttrIteratorRef? = nil) -> GLib.ListRef! {
        let rv = GLib.ListRef(pango_itemize_with_base_dir(context_ptr, baseDir, text, gint(startIndex), gint(length), attrs.attr_list_ptr, cachedIter?.attr_iterator_ptr))
        return rv
    }
    /// Like `pango_itemize()`, but the base direction to use when
    /// computing bidirectional levels (see pango_context_set_base_dir ()),
    /// is specified explicitly rather than gotten from the `PangoContext`.
    @inlinable func itemizeWith<AttrIteratorT: AttrIteratorProtocol, AttrListT: AttrListProtocol>(baseDir: PangoDirection, text: UnsafePointer<CChar>!, startIndex: Int, length: Int, attrs: AttrListT, cachedIter: AttrIteratorT?) -> GLib.ListRef! {
        let rv = GLib.ListRef(pango_itemize_with_base_dir(context_ptr, baseDir, text, gint(startIndex), gint(length), attrs.attr_list_ptr, cachedIter?.attr_iterator_ptr))
        return rv
    }
    /// Retrieves the base direction for the context. See
    /// `pango_context_set_base_dir()`.
    @inlinable var baseDir: PangoDirection {
        /// Retrieves the base direction for the context. See
        /// `pango_context_set_base_dir()`.
        get {
            let rv = pango_context_get_base_dir(context_ptr)
            return rv
        }
        /// Sets the base direction for the context.
        /// 
        /// The base direction is used in applying the Unicode bidirectional
        /// algorithm; if the `direction` is `PANGO_DIRECTION_LTR` or
        /// `PANGO_DIRECTION_RTL`, then the value will be used as the paragraph
        /// direction in the Unicode bidirectional algorithm.  A value of
        /// `PANGO_DIRECTION_WEAK_LTR` or `PANGO_DIRECTION_WEAK_RTL` is used only
        /// for paragraphs that do not contain any strong characters themselves.
        nonmutating set {
            pango_context_set_base_dir(context_ptr, newValue)
        }
    }

    /// Retrieves the base gravity for the context. See
    /// `pango_context_set_base_gravity()`.
    @inlinable var baseGravity: PangoGravity {
        /// Retrieves the base gravity for the context. See
        /// `pango_context_set_base_gravity()`.
        get {
            let rv = pango_context_get_base_gravity(context_ptr)
            return rv
        }
        /// Sets the base gravity for the context.
        /// 
        /// The base gravity is used in laying vertical text out.
        nonmutating set {
            pango_context_set_base_gravity(context_ptr, newValue)
        }
    }

    /// Retrieve the default font description for the context.
    @inlinable var fontDescription: FontDescriptionRef! {
        /// Retrieve the default font description for the context.
        get {
            let rv = FontDescriptionRef(gconstpointer: gconstpointer(pango_context_get_font_description(context_ptr)))
            return rv
        }
        /// Set the default font description for the context
        nonmutating set {
            pango_context_set_font_description(context_ptr, UnsafePointer<PangoFontDescription>(newValue?.font_description_ptr))
        }
    }

    /// Gets the `PangoFontMap` used to look up fonts for this context.
    @inlinable var fontMap: FontMapRef! {
        /// Gets the `PangoFontMap` used to look up fonts for this context.
        get {
            let rv = FontMapRef(gconstpointer: gconstpointer(pango_context_get_font_map(context_ptr)))
            return rv
        }
        /// Sets the font map to be searched when fonts are looked-up in this context.
        /// This is only for internal use by Pango backends, a `PangoContext` obtained
        /// via one of the recommended methods should already have a suitable font map.
        nonmutating set {
            pango_context_set_font_map(context_ptr, UnsafeMutablePointer<PangoFontMap>(newValue?.font_map_ptr))
        }
    }

    /// Retrieves the gravity for the context. This is similar to
    /// `pango_context_get_base_gravity()`, except for when the base gravity
    /// is `PANGO_GRAVITY_AUTO` for which `pango_gravity_get_for_matrix()` is used
    /// to return the gravity from the current context matrix.
    @inlinable var gravity: PangoGravity {
        /// Retrieves the gravity for the context. This is similar to
        /// `pango_context_get_base_gravity()`, except for when the base gravity
        /// is `PANGO_GRAVITY_AUTO` for which `pango_gravity_get_for_matrix()` is used
        /// to return the gravity from the current context matrix.
        get {
            let rv = pango_context_get_gravity(context_ptr)
            return rv
        }
    }

    /// Retrieves the gravity hint for the context. See
    /// `pango_context_set_gravity_hint()` for details.
    @inlinable var gravityHint: PangoGravityHint {
        /// Retrieves the gravity hint for the context. See
        /// `pango_context_set_gravity_hint()` for details.
        get {
            let rv = pango_context_get_gravity_hint(context_ptr)
            return rv
        }
        /// Sets the gravity hint for the context.
        /// 
        /// The gravity hint is used in laying vertical text out, and is only relevant
        /// if gravity of the context as returned by `pango_context_get_gravity()`
        /// is set `PANGO_GRAVITY_EAST` or `PANGO_GRAVITY_WEST`.
        nonmutating set {
            pango_context_set_gravity_hint(context_ptr, newValue)
        }
    }

    /// Retrieves the global language tag for the context.
    @inlinable var language: LanguageRef! {
        /// Retrieves the global language tag for the context.
        get {
            let rv = LanguageRef(gconstpointer: gconstpointer(pango_context_get_language(context_ptr)))
            return rv
        }
        /// Sets the global language tag for the context.  The default language
        /// for the locale of the running process can be found using
        /// `pango_language_get_default()`.
        nonmutating set {
            pango_context_set_language(context_ptr, UnsafeMutablePointer<PangoLanguage>(newValue?.language_ptr))
        }
    }

    /// Gets the transformation matrix that will be applied when
    /// rendering with this context. See `pango_context_set_matrix()`.
    @inlinable var matrix: MatrixRef! {
        /// Gets the transformation matrix that will be applied when
        /// rendering with this context. See `pango_context_set_matrix()`.
        get {
            let rv = MatrixRef(gconstpointer: gconstpointer(pango_context_get_matrix(context_ptr)))
            return rv
        }
        /// Sets the transformation matrix that will be applied when rendering
        /// with this context. Note that reported metrics are in the user space
        /// coordinates before the application of the matrix, not device-space
        /// coordinates after the application of the matrix. So, they don't scale
        /// with the matrix, though they may change slightly for different
        /// matrices, depending on how the text is fit to the pixel grid.
        nonmutating set {
            pango_context_set_matrix(context_ptr, UnsafePointer<PangoMatrix>(newValue?.matrix_ptr))
        }
    }

    /// Returns whether font rendering with this context should
    /// round glyph positions and widths.
    @inlinable var roundGlyphPositions: Bool {
        /// Returns whether font rendering with this context should
        /// round glyph positions and widths.
        get {
            let rv = ((pango_context_get_round_glyph_positions(context_ptr)) != 0)
            return rv
        }
        /// Sets whether font rendering with this context should
        /// round glyph positions and widths to integral positions,
        /// in device units.
        /// 
        /// This is useful when the renderer can't handle subpixel
        /// positioning of glyphs.
        /// 
        /// The default value is to round glyph positions, to remain
        /// compatible with previous Pango behavior.
        nonmutating set {
            pango_context_set_round_glyph_positions(context_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns the current serial number of `context`.  The serial number is
    /// initialized to an small number larger than zero when a new context
    /// is created and is increased whenever the context is changed using any
    /// of the setter functions, or the `PangoFontMap` it uses to find fonts has
    /// changed. The serial may wrap, but will never have the value 0. Since it
    /// can wrap, never compare it with "less than", always use "not equals".
    /// 
    /// This can be used to automatically detect changes to a `PangoContext`, and
    /// is only useful when implementing objects that need update when their
    /// `PangoContext` changes, like `PangoLayout`.
    @inlinable var serial: Int {
        /// Returns the current serial number of `context`.  The serial number is
        /// initialized to an small number larger than zero when a new context
        /// is created and is increased whenever the context is changed using any
        /// of the setter functions, or the `PangoFontMap` it uses to find fonts has
        /// changed. The serial may wrap, but will never have the value 0. Since it
        /// can wrap, never compare it with "less than", always use "not equals".
        /// 
        /// This can be used to automatically detect changes to a `PangoContext`, and
        /// is only useful when implementing objects that need update when their
        /// `PangoContext` changes, like `PangoLayout`.
        get {
            let rv = Int(pango_context_get_serial(context_ptr))
            return rv
        }
    }


}



// MARK: - Coverage Class

/// The `CoverageProtocol` protocol exposes the methods and properties of an underlying `PangoCoverage` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Coverage`.
/// Alternatively, use `CoverageRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoCoverage` structure represents a map from Unicode characters
/// to `PangoCoverageLevel`. It is an opaque structure with no public fields.
public protocol CoverageProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `PangoCoverage` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoCoverage` instance.
    var coverage_ptr: UnsafeMutablePointer<PangoCoverage>! { get }

}

/// The `CoverageRef` type acts as a lightweight Swift reference to an underlying `PangoCoverage` instance.
/// It exposes methods that can operate on this data type through `CoverageProtocol` conformance.
/// Use `CoverageRef` only as an `unowned` reference to an existing `PangoCoverage` instance.
///
/// The `PangoCoverage` structure represents a map from Unicode characters
/// to `PangoCoverageLevel`. It is an opaque structure with no public fields.
public struct CoverageRef: CoverageProtocol {
        /// Untyped pointer to the underlying `PangoCoverage` instance.
    /// For type-safe access, use the generated, typed pointer `coverage_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CoverageRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoCoverage>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoCoverage>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoCoverage>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoCoverage>?) {
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

    /// Reference intialiser for a related type that implements `CoverageProtocol`
    @inlinable init<T: CoverageProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Create a new `PangoCoverage`
    @inlinable init() {
        let rv = pango_coverage_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Convert data generated from `pango_coverage_to_bytes()` back
    /// to a `PangoCoverage`
    ///
    /// **from_bytes is deprecated:**
    /// This returns %NULL
    @available(*, deprecated) @inlinable static func from(bytes: UnsafeMutablePointer<guchar>!, nBytes: Int) -> CoverageRef! {
        guard let rv = CoverageRef(gconstpointer: gconstpointer(pango_coverage_from_bytes(bytes, gint(nBytes)))) else { return nil }
        return rv
    }
}

/// The `Coverage` type acts as a reference-counted owner of an underlying `PangoCoverage` instance.
/// It provides the methods that can operate on this data type through `CoverageProtocol` conformance.
/// Use `Coverage` as a strong reference or owner of a `PangoCoverage` instance.
///
/// The `PangoCoverage` structure represents a map from Unicode characters
/// to `PangoCoverageLevel`. It is an opaque structure with no public fields.
open class Coverage: GLibObject.Object, CoverageProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Coverage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoCoverage>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Coverage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoCoverage>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Coverage` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Coverage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Coverage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoCoverage>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Coverage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoCoverage>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `PangoCoverage`.
    /// i.e., ownership is transferred to the `Coverage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoCoverage>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `CoverageProtocol`
    /// Will retain `PangoCoverage`.
    /// - Parameter other: an instance of a related type that implements `CoverageProtocol`
    @inlinable public init<T: CoverageProtocol>(coverage other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Create a new `PangoCoverage`
    @inlinable public init() {
        let rv = pango_coverage_new()
        super.init(gpointer: (rv))
    }

    /// Convert data generated from `pango_coverage_to_bytes()` back
    /// to a `PangoCoverage`
    ///
    /// **from_bytes is deprecated:**
    /// This returns %NULL
    @available(*, deprecated) @inlinable public static func from(bytes: UnsafeMutablePointer<guchar>!, nBytes: Int) -> Coverage! {
        guard let rv = Coverage(gconstpointer: gconstpointer(pango_coverage_from_bytes(bytes, gint(nBytes)))) else { return nil }
        return rv
    }

}

// MARK: no Coverage properties

public enum CoverageSignalName: String, SignalNameProtocol {
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

public extension CoverageProtocol {
    /// Connect a `CoverageSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: CoverageSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: Coverage Class: CoverageProtocol extension (methods and fields)
public extension CoverageProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoCoverage` instance.
    @inlinable var coverage_ptr: UnsafeMutablePointer<PangoCoverage>! { return ptr?.assumingMemoryBound(to: PangoCoverage.self) }

    /// Copy an existing `PangoCoverage`. (This function may now be unnecessary
    /// since we refcount the structure. File a bug if you use it.)
    @inlinable func copy() -> CoverageRef! {
        guard let rv = CoverageRef(gconstpointer: gconstpointer(pango_coverage_copy(coverage_ptr))) else { return nil }
        return rv
    }

    /// Determine whether a particular index is covered by `coverage`
    @inlinable func get(index_: Int) -> PangoCoverageLevel {
        let rv = pango_coverage_get(coverage_ptr, gint(index_))
        return rv
    }

    /// Set the coverage for each index in `coverage` to be the max (better)
    /// value of the current coverage for the index and the coverage for
    /// the corresponding index in `other`.
    ///
    /// **max is deprecated:**
    /// This function does nothing
    @available(*, deprecated) @inlinable func max<CoverageT: CoverageProtocol>(other: CoverageT) {
        pango_coverage_max(coverage_ptr, other.coverage_ptr)
    
    }

    /// Increase the reference count on the `PangoCoverage` by one
    @discardableResult @inlinable func ref() -> CoverageRef! {
        guard let rv = CoverageRef(gconstpointer: gconstpointer(pango_coverage_ref(coverage_ptr))) else { return nil }
        return rv
    }

    /// Modify a particular index within `coverage`
    @inlinable func set(index_: Int, level: PangoCoverageLevel) {
        pango_coverage_set(coverage_ptr, gint(index_), level)
    
    }

    /// Convert a `PangoCoverage` structure into a flat binary format
    ///
    /// **to_bytes is deprecated:**
    /// This returns %NULL
    @available(*, deprecated) @inlinable func to(bytes: UnsafeMutablePointer<UnsafeMutablePointer<guchar>?>!, nBytes: UnsafeMutablePointer<gint>!) {
        pango_coverage_to_bytes(coverage_ptr, bytes, nBytes)
    
    }

    /// Decrease the reference count on the `PangoCoverage` by one.
    /// If the result is zero, free the coverage and all associated memory.
    @inlinable func unref() {
        pango_coverage_unref(coverage_ptr)
    
    }


}



// MARK: - Engine Class

/// The `EngineProtocol` protocol exposes the methods and properties of an underlying `PangoEngine` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Engine`.
/// Alternatively, use `EngineRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `PangoEngine` is the base class for all types of language and
/// script specific engines. It has no functionality by itself.
public protocol EngineProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `PangoEngine` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoEngine` instance.
    var engine_ptr: UnsafeMutablePointer<PangoEngine>! { get }

}

/// The `EngineRef` type acts as a lightweight Swift reference to an underlying `PangoEngine` instance.
/// It exposes methods that can operate on this data type through `EngineProtocol` conformance.
/// Use `EngineRef` only as an `unowned` reference to an existing `PangoEngine` instance.
///
/// `PangoEngine` is the base class for all types of language and
/// script specific engines. It has no functionality by itself.
public struct EngineRef: EngineProtocol {
        /// Untyped pointer to the underlying `PangoEngine` instance.
    /// For type-safe access, use the generated, typed pointer `engine_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EngineRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoEngine>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoEngine>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoEngine>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoEngine>?) {
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

    /// Reference intialiser for a related type that implements `EngineProtocol`
    @inlinable init<T: EngineProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Engine` type acts as a reference-counted owner of an underlying `PangoEngine` instance.
/// It provides the methods that can operate on this data type through `EngineProtocol` conformance.
/// Use `Engine` as a strong reference or owner of a `PangoEngine` instance.
///
/// `PangoEngine` is the base class for all types of language and
/// script specific engines. It has no functionality by itself.
open class Engine: GLibObject.Object, EngineProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Engine` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoEngine>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Engine` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoEngine>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Engine` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Engine` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Engine` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoEngine>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Engine` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoEngine>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `PangoEngine`.
    /// i.e., ownership is transferred to the `Engine` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoEngine>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `EngineProtocol`
    /// Will retain `PangoEngine`.
    /// - Parameter other: an instance of a related type that implements `EngineProtocol`
    @inlinable public init<T: EngineProtocol>(engine other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no Engine properties

public enum EngineSignalName: String, SignalNameProtocol {
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

public extension EngineProtocol {
    /// Connect a `EngineSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: EngineSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: Engine Class: EngineProtocol extension (methods and fields)
public extension EngineProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoEngine` instance.
    @inlinable var engine_ptr: UnsafeMutablePointer<PangoEngine>! { return ptr?.assumingMemoryBound(to: PangoEngine.self) }


    // var parentInstance is unavailable because parent_instance is private

}



