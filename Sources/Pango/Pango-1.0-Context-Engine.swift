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
public protocol ContextProtocol: ObjectProtocol {
    /// Untyped pointer to the underlying `PangoContext` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoContext` instance.
    var context_ptr: UnsafeMutablePointer<PangoContext> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension ContextRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoContext>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ContextProtocol`
    init<T: ContextProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    init() {
        let rv = pango_context_new()
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
}

/// The `Context` type acts as a reference-counted owner of an underlying `PangoContext` instance.
/// It provides the methods that can operate on this data type through `ContextProtocol` conformance.
/// Use `Context` as a strong reference or owner of a `PangoContext` instance.
///
/// The `PangoContext` structure stores global information
/// used to control the itemization process.
open class Context: Object, ContextProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Context` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<PangoContext>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `PangoContext`.
    /// i.e., ownership is transferred to the `Context` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<PangoContext>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `ContextProtocol`
    /// Will retain `PangoContext`.
    /// - Parameter other: an instance of a related type that implements `ContextProtocol`
    public init<T: ContextProtocol>(context other: T) {
        super.init(retaining: cast(other.context_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
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
    public init() {
        let rv = pango_context_new()
        super.init(cast(rv))
    }


}

// MARK: - no Context properties

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
    @discardableResult func connect(signal kind: ContextSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(context_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension ContextProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoContext` instance.
    var context_ptr: UnsafeMutablePointer<PangoContext> { return ptr.assumingMemoryBound(to: PangoContext.self) }

    /// Forces a change in the context, which will cause any `PangoLayout`
    /// using this context to re-layout.
    /// 
    /// This function is only useful when implementing a new backend
    /// for Pango, something applications won't do. Backends should
    /// call this function if they have attached extra data to the context
    /// and such data is changed.
    func changed() {
        pango_context_changed(cast(context_ptr))
    
    }

    /// Retrieves the base direction for the context. See
    /// `pango_context_set_base_dir()`.
    func getBaseDir() -> PangoDirection {
        let rv = pango_context_get_base_dir(cast(context_ptr))
        return rv
    }

    /// Retrieves the base gravity for the context. See
    /// `pango_context_set_base_gravity()`.
    func getBaseGravity() -> PangoGravity {
        let rv = pango_context_get_base_gravity(cast(context_ptr))
        return rv
    }

    /// Retrieve the default font description for the context.
    func getFontDescription() -> UnsafeMutablePointer<PangoFontDescription>! {
        let rv = pango_context_get_font_description(cast(context_ptr))
        return cast(rv)
    }

    /// Gets the `PangoFontMap` used to look up fonts for this context.
    func getFontMap() -> UnsafeMutablePointer<PangoFontMap>! {
        let rv = pango_context_get_font_map(cast(context_ptr))
        return cast(rv)
    }

    /// Retrieves the gravity for the context. This is similar to
    /// `pango_context_get_base_gravity()`, except for when the base gravity
    /// is `PANGO_GRAVITY_AUTO` for which `pango_gravity_get_for_matrix()` is used
    /// to return the gravity from the current context matrix.
    func getGravity() -> PangoGravity {
        let rv = pango_context_get_gravity(cast(context_ptr))
        return rv
    }

    /// Retrieves the gravity hint for the context. See
    /// `pango_context_set_gravity_hint()` for details.
    func getGravityHint() -> PangoGravityHint {
        let rv = pango_context_get_gravity_hint(cast(context_ptr))
        return rv
    }

    /// Retrieves the global language tag for the context.
    func getLanguage() -> UnsafeMutablePointer<PangoLanguage>! {
        let rv = pango_context_get_language(cast(context_ptr))
        return cast(rv)
    }

    /// Gets the transformation matrix that will be applied when
    /// rendering with this context. See `pango_context_set_matrix()`.
    func getMatrix() -> UnsafePointer<PangoMatrix>! {
        let rv = pango_context_get_matrix(cast(context_ptr))
        return cast(rv)
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
    func getMetrics(desc: FontDescriptionProtocol, language: LanguageProtocol) -> UnsafeMutablePointer<PangoFontMetrics>! {
        let rv = pango_context_get_metrics(cast(context_ptr), cast(desc.ptr), cast(language.ptr))
        return cast(rv)
    }

    /// Returns whether font rendering with this context should
    /// round glyph positions and widths.
    func getRoundGlyphPositions() -> Bool {
        let rv = pango_context_get_round_glyph_positions(cast(context_ptr))
        return Bool(rv != 0)
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
    func getSerial() -> CUnsignedInt {
        let rv = pango_context_get_serial(cast(context_ptr))
        return CUnsignedInt(rv)
    }

    /// List all families for a context.
    func list(families: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<PangoFontFamily>>>, nFamilies n_families: UnsafeMutablePointer<CInt>) {
        pango_context_list_families(cast(context_ptr), cast(families), cast(n_families))
    
    }

    /// Loads the font in one of the fontmaps in the context
    /// that is the closest match for `desc`.
    func loadFont(desc: FontDescriptionProtocol) -> UnsafeMutablePointer<PangoFont>! {
        let rv = pango_context_load_font(cast(context_ptr), cast(desc.ptr))
        return cast(rv)
    }

    /// Load a set of fonts in the context that can be used to render
    /// a font matching `desc`.
    func loadFontset(desc: FontDescriptionProtocol, language: LanguageProtocol) -> UnsafeMutablePointer<PangoFontset>! {
        let rv = pango_context_load_fontset(cast(context_ptr), cast(desc.ptr), cast(language.ptr))
        return cast(rv)
    }

    /// Sets the base direction for the context.
    /// 
    /// The base direction is used in applying the Unicode bidirectional
    /// algorithm; if the `direction` is `PANGO_DIRECTION_LTR` or
    /// `PANGO_DIRECTION_RTL`, then the value will be used as the paragraph
    /// direction in the Unicode bidirectional algorithm.  A value of
    /// `PANGO_DIRECTION_WEAK_LTR` or `PANGO_DIRECTION_WEAK_RTL` is used only
    /// for paragraphs that do not contain any strong characters themselves.
    func setBaseDir(direction: Direction) {
        pango_context_set_base_dir(cast(context_ptr), direction)
    
    }

    /// Sets the base gravity for the context.
    /// 
    /// The base gravity is used in laying vertical text out.
    func setBase(gravity: Gravity) {
        pango_context_set_base_gravity(cast(context_ptr), gravity)
    
    }

    /// Set the default font description for the context
    func setFontDescription(desc: FontDescriptionProtocol) {
        pango_context_set_font_description(cast(context_ptr), cast(desc.ptr))
    
    }

    /// Sets the font map to be searched when fonts are looked-up in this context.
    /// This is only for internal use by Pango backends, a `PangoContext` obtained
    /// via one of the recommended methods should already have a suitable font map.
    func set(fontMap font_map: FontMapProtocol) {
        pango_context_set_font_map(cast(context_ptr), cast(font_map.ptr))
    
    }

    /// Sets the gravity hint for the context.
    /// 
    /// The gravity hint is used in laying vertical text out, and is only relevant
    /// if gravity of the context as returned by `pango_context_get_gravity()`
    /// is set `PANGO_GRAVITY_EAST` or `PANGO_GRAVITY_WEST`.
    func setGravity(hint: GravityHint) {
        pango_context_set_gravity_hint(cast(context_ptr), hint)
    
    }

    /// Sets the global language tag for the context.  The default language
    /// for the locale of the running process can be found using
    /// `pango_language_get_default()`.
    func set(language: LanguageProtocol) {
        pango_context_set_language(cast(context_ptr), cast(language.ptr))
    
    }

    /// Sets the transformation matrix that will be applied when rendering
    /// with this context. Note that reported metrics are in the user space
    /// coordinates before the application of the matrix, not device-space
    /// coordinates after the application of the matrix. So, they don't scale
    /// with the matrix, though they may change slightly for different
    /// matrices, depending on how the text is fit to the pixel grid.
    func set(matrix: MatrixProtocol) {
        pango_context_set_matrix(cast(context_ptr), cast(matrix.ptr))
    
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
    func setRoundGlyphPositions(roundPositions round_positions: Bool) {
        pango_context_set_round_glyph_positions(cast(context_ptr), gboolean(round_positions ? 1 : 0))
    
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
    func itemize(text: UnsafePointer<CChar>, startIndex start_index: CInt, length: CInt, attrs: AttrListProtocol, cachedIter cached_iter: AttrIteratorProtocol) -> UnsafeMutablePointer<GList>! {
        let rv = pango_itemize(cast(context_ptr), text, start_index, length, cast(attrs.ptr), cast(cached_iter.ptr))
        return cast(rv)
    }

    /// Like `pango_itemize()`, but the base direction to use when
    /// computing bidirectional levels (see pango_context_set_base_dir ()),
    /// is specified explicitly rather than gotten from the `PangoContext`.
    func itemizeWith(baseDir base_dir: Direction, text: UnsafePointer<CChar>, startIndex start_index: CInt, length: CInt, attrs: AttrListProtocol, cachedIter cached_iter: AttrIteratorProtocol) -> UnsafeMutablePointer<GList>! {
        let rv = pango_itemize_with_base_dir(cast(context_ptr), base_dir, text, start_index, length, cast(attrs.ptr), cast(cached_iter.ptr))
        return cast(rv)
    }
    /// Retrieves the base direction for the context. See
    /// `pango_context_set_base_dir()`.
    var baseDir: PangoDirection {
        /// Retrieves the base direction for the context. See
        /// `pango_context_set_base_dir()`.
        get {
            let rv = pango_context_get_base_dir(cast(context_ptr))
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
            pango_context_set_base_dir(cast(context_ptr), newValue)
        }
    }

    /// Retrieves the base gravity for the context. See
    /// `pango_context_set_base_gravity()`.
    var baseGravity: PangoGravity {
        /// Retrieves the base gravity for the context. See
        /// `pango_context_set_base_gravity()`.
        get {
            let rv = pango_context_get_base_gravity(cast(context_ptr))
            return rv
        }
        /// Sets the base gravity for the context.
        /// 
        /// The base gravity is used in laying vertical text out.
        nonmutating set {
            pango_context_set_base_gravity(cast(context_ptr), newValue)
        }
    }

    /// Retrieve the default font description for the context.
    var fontDescription: UnsafeMutablePointer<PangoFontDescription>! {
        /// Retrieve the default font description for the context.
        get {
            let rv = pango_context_get_font_description(cast(context_ptr))
            return cast(rv)
        }
        /// Set the default font description for the context
        nonmutating set {
            pango_context_set_font_description(cast(context_ptr), cast(newValue))
        }
    }

    /// Gets the `PangoFontMap` used to look up fonts for this context.
    var fontMap: UnsafeMutablePointer<PangoFontMap>! {
        /// Gets the `PangoFontMap` used to look up fonts for this context.
        get {
            let rv = pango_context_get_font_map(cast(context_ptr))
            return cast(rv)
        }
        /// Sets the font map to be searched when fonts are looked-up in this context.
        /// This is only for internal use by Pango backends, a `PangoContext` obtained
        /// via one of the recommended methods should already have a suitable font map.
        nonmutating set {
            pango_context_set_font_map(cast(context_ptr), cast(newValue))
        }
    }

    /// Retrieves the gravity for the context. This is similar to
    /// `pango_context_get_base_gravity()`, except for when the base gravity
    /// is `PANGO_GRAVITY_AUTO` for which `pango_gravity_get_for_matrix()` is used
    /// to return the gravity from the current context matrix.
    var gravity: PangoGravity {
        /// Retrieves the gravity for the context. This is similar to
        /// `pango_context_get_base_gravity()`, except for when the base gravity
        /// is `PANGO_GRAVITY_AUTO` for which `pango_gravity_get_for_matrix()` is used
        /// to return the gravity from the current context matrix.
        get {
            let rv = pango_context_get_gravity(cast(context_ptr))
            return rv
        }
    }

    /// Retrieves the gravity hint for the context. See
    /// `pango_context_set_gravity_hint()` for details.
    var gravityHint: PangoGravityHint {
        /// Retrieves the gravity hint for the context. See
        /// `pango_context_set_gravity_hint()` for details.
        get {
            let rv = pango_context_get_gravity_hint(cast(context_ptr))
            return rv
        }
        /// Sets the gravity hint for the context.
        /// 
        /// The gravity hint is used in laying vertical text out, and is only relevant
        /// if gravity of the context as returned by `pango_context_get_gravity()`
        /// is set `PANGO_GRAVITY_EAST` or `PANGO_GRAVITY_WEST`.
        nonmutating set {
            pango_context_set_gravity_hint(cast(context_ptr), newValue)
        }
    }

    /// Retrieves the global language tag for the context.
    var language: UnsafeMutablePointer<PangoLanguage>! {
        /// Retrieves the global language tag for the context.
        get {
            let rv = pango_context_get_language(cast(context_ptr))
            return cast(rv)
        }
        /// Sets the global language tag for the context.  The default language
        /// for the locale of the running process can be found using
        /// `pango_language_get_default()`.
        nonmutating set {
            pango_context_set_language(cast(context_ptr), cast(newValue))
        }
    }

    /// Gets the transformation matrix that will be applied when
    /// rendering with this context. See `pango_context_set_matrix()`.
    var matrix: UnsafePointer<PangoMatrix>! {
        /// Gets the transformation matrix that will be applied when
        /// rendering with this context. See `pango_context_set_matrix()`.
        get {
            let rv = pango_context_get_matrix(cast(context_ptr))
            return cast(rv)
        }
        /// Sets the transformation matrix that will be applied when rendering
        /// with this context. Note that reported metrics are in the user space
        /// coordinates before the application of the matrix, not device-space
        /// coordinates after the application of the matrix. So, they don't scale
        /// with the matrix, though they may change slightly for different
        /// matrices, depending on how the text is fit to the pixel grid.
        nonmutating set {
            pango_context_set_matrix(cast(context_ptr), cast(newValue))
        }
    }

    /// Returns whether font rendering with this context should
    /// round glyph positions and widths.
    var roundGlyphPositions: Bool {
        /// Returns whether font rendering with this context should
        /// round glyph positions and widths.
        get {
            let rv = pango_context_get_round_glyph_positions(cast(context_ptr))
            return Bool(rv != 0)
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
            pango_context_set_round_glyph_positions(cast(context_ptr), gboolean(newValue ? 1 : 0))
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
    var serial: CUnsignedInt {
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
            let rv = pango_context_get_serial(cast(context_ptr))
            return CUnsignedInt(rv)
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
public protocol CoverageProtocol: ObjectProtocol {
    /// Untyped pointer to the underlying `PangoCoverage` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoCoverage` instance.
    var coverage_ptr: UnsafeMutablePointer<PangoCoverage> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension CoverageRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoCoverage>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CoverageProtocol`
    init<T: CoverageProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Create a new `PangoCoverage`
    init() {
        let rv = pango_coverage_new()
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
    /// Convert data generated from `pango_coverage_to_bytes()` back
    /// to a `PangoCoverage`
    ///
    /// **from_bytes is deprecated:**
    /// This returns %NULL
    @available(*, deprecated) static func from(bytes: UnsafeMutablePointer<guchar>, nBytes n_bytes: CInt) -> CoverageRef! {
        let rv = pango_coverage_from_bytes(cast(bytes), n_bytes)
        return rv.map { CoverageRef(cast($0)) }
    }
}

/// The `Coverage` type acts as a reference-counted owner of an underlying `PangoCoverage` instance.
/// It provides the methods that can operate on this data type through `CoverageProtocol` conformance.
/// Use `Coverage` as a strong reference or owner of a `PangoCoverage` instance.
///
/// The `PangoCoverage` structure represents a map from Unicode characters
/// to `PangoCoverageLevel`. It is an opaque structure with no public fields.
open class Coverage: Object, CoverageProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Coverage` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<PangoCoverage>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `PangoCoverage`.
    /// i.e., ownership is transferred to the `Coverage` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<PangoCoverage>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `CoverageProtocol`
    /// Will retain `PangoCoverage`.
    /// - Parameter other: an instance of a related type that implements `CoverageProtocol`
    public init<T: CoverageProtocol>(coverage other: T) {
        super.init(retaining: cast(other.coverage_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Create a new `PangoCoverage`
    public init() {
        let rv = pango_coverage_new()
        super.init(cast(rv))
    }

    /// Convert data generated from `pango_coverage_to_bytes()` back
    /// to a `PangoCoverage`
    ///
    /// **from_bytes is deprecated:**
    /// This returns %NULL
    @available(*, deprecated) public static func from(bytes: UnsafeMutablePointer<guchar>, nBytes n_bytes: CInt) -> Coverage! {
        let rv = pango_coverage_from_bytes(cast(bytes), n_bytes)
        return rv.map { Coverage(cast($0)) }
    }

}

// MARK: - no Coverage properties

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
    @discardableResult func connect(signal kind: CoverageSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(coverage_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension CoverageProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoCoverage` instance.
    var coverage_ptr: UnsafeMutablePointer<PangoCoverage> { return ptr.assumingMemoryBound(to: PangoCoverage.self) }

    /// Copy an existing `PangoCoverage`. (This function may now be unnecessary
    /// since we refcount the structure. File a bug if you use it.)
    func copy() -> UnsafeMutablePointer<PangoCoverage>! {
        let rv = pango_coverage_copy(cast(coverage_ptr))
        return cast(rv)
    }

    /// Determine whether a particular index is covered by `coverage`
    func get(index_: CInt) -> PangoCoverageLevel {
        let rv = pango_coverage_get(cast(coverage_ptr), index_)
        return rv
    }

    /// Set the coverage for each index in `coverage` to be the max (better)
    /// value of the current coverage for the index and the coverage for
    /// the corresponding index in `other`.
    ///
    /// **max is deprecated:**
    /// This function does nothing
    @available(*, deprecated) func max(other: CoverageProtocol) {
        pango_coverage_max(cast(coverage_ptr), cast(other.ptr))
    
    }

    /// Increase the reference count on the `PangoCoverage` by one
    func ref() -> UnsafeMutablePointer<PangoCoverage>! {
        let rv = pango_coverage_ref(cast(coverage_ptr))
        return cast(rv)
    }

    /// Modify a particular index within `coverage`
    func set(index_: CInt, level: CoverageLevel) {
        pango_coverage_set(cast(coverage_ptr), index_, level)
    
    }

    /// Convert a `PangoCoverage` structure into a flat binary format
    ///
    /// **to_bytes is deprecated:**
    /// This returns %NULL
    @available(*, deprecated) func to(bytes: UnsafeMutablePointer<UnsafeMutablePointer<guchar>>, nBytes n_bytes: UnsafeMutablePointer<CInt>) {
        pango_coverage_to_bytes(cast(coverage_ptr), cast(bytes), cast(n_bytes))
    
    }

    /// Decrease the reference count on the `PangoCoverage` by one.
    /// If the result is zero, free the coverage and all associated memory.
    func unref() {
        pango_coverage_unref(cast(coverage_ptr))
    
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
public protocol EngineProtocol: ObjectProtocol {
    /// Untyped pointer to the underlying `PangoEngine` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoEngine` instance.
    var engine_ptr: UnsafeMutablePointer<PangoEngine> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension EngineRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoEngine>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EngineProtocol`
    init<T: EngineProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Engine` type acts as a reference-counted owner of an underlying `PangoEngine` instance.
/// It provides the methods that can operate on this data type through `EngineProtocol` conformance.
/// Use `Engine` as a strong reference or owner of a `PangoEngine` instance.
///
/// `PangoEngine` is the base class for all types of language and
/// script specific engines. It has no functionality by itself.
open class Engine: Object, EngineProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Engine` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<PangoEngine>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `PangoEngine`.
    /// i.e., ownership is transferred to the `Engine` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<PangoEngine>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `EngineProtocol`
    /// Will retain `PangoEngine`.
    /// - Parameter other: an instance of a related type that implements `EngineProtocol`
    public init<T: EngineProtocol>(engine other: T) {
        super.init(retaining: cast(other.engine_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EngineProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: - no Engine properties

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
    @discardableResult func connect(signal kind: EngineSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(engine_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension EngineProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoEngine` instance.
    var engine_ptr: UnsafeMutablePointer<PangoEngine> { return ptr.assumingMemoryBound(to: PangoEngine.self) }

}



