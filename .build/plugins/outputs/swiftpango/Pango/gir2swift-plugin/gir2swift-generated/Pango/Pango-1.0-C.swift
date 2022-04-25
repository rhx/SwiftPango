import CGLib
import CHarfBuzz
import CPango
import GLib
import GLibObject
import HarfBuzz
// MARK: - Context Class

/// A `PangoContext` stores global information used to control the
/// itemization process.
/// 
/// The information stored by `PangoContext` includes the fontmap used
/// to look up fonts, and default values such as the default language,
/// default gravity, or default font.
/// 
/// To obtain a `PangoContext`, use [method`Pango.FontMap.create_context`].
///
/// The `ContextProtocol` protocol exposes the methods and properties of an underlying `PangoContext` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Context`.
/// Alternatively, use `ContextRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ContextProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `PangoContext` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoContext` instance.
    var context_ptr: UnsafeMutablePointer<PangoContext>! { get }

    /// Required Initialiser for types conforming to `ContextProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `PangoContext` stores global information used to control the
/// itemization process.
/// 
/// The information stored by `PangoContext` includes the fontmap used
/// to look up fonts, and default values such as the default language,
/// default gravity, or default font.
/// 
/// To obtain a `PangoContext`, use [method`Pango.FontMap.create_context`].
///
/// The `ContextRef` type acts as a lightweight Swift reference to an underlying `PangoContext` instance.
/// It exposes methods that can operate on this data type through `ContextProtocol` conformance.
/// Use `ContextRef` only as an `unowned` reference to an existing `PangoContext` instance.
///
public struct ContextRef: ContextProtocol, GWeakCapturing {
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

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ContextProtocol>(_ other: T) -> ContextRef { ContextRef(other) }

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
    /// be followed by a [method`Pango.Context.set_font_map`] call, and the
    /// function [method`Pango.FontMap.create_context`] does these two steps
    /// together and hence users are recommended to use that.
    /// 
    /// If you are using Pango as part of a higher-level system,
    /// that system may have it's own way of create a `PangoContext`.
    /// For instance, the GTK toolkit has, among others,
    /// ``gtk_widget_get_pango_context()``. Use those instead.
    @inlinable init() {
            let result = pango_context_new()
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }
}

/// A `PangoContext` stores global information used to control the
/// itemization process.
/// 
/// The information stored by `PangoContext` includes the fontmap used
/// to look up fonts, and default values such as the default language,
/// default gravity, or default font.
/// 
/// To obtain a `PangoContext`, use [method`Pango.FontMap.create_context`].
///
/// The `Context` type acts as a reference-counted owner of an underlying `PangoContext` instance.
/// It provides the methods that can operate on this data type through `ContextProtocol` conformance.
/// Use `Context` as a strong reference or owner of a `PangoContext` instance.
///
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
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
    /// be followed by a [method`Pango.Context.set_font_map`] call, and the
    /// function [method`Pango.FontMap.create_context`] does these two steps
    /// together and hence users are recommended to use that.
    /// 
    /// If you are using Pango as part of a higher-level system,
    /// that system may have it's own way of create a `PangoContext`.
    /// For instance, the GTK toolkit has, among others,
    /// ``gtk_widget_get_pango_context()``. Use those instead.
    @inlinable public init() {
            let result = pango_context_new()
        let rv = result
            super.init(gpointer: (rv))
    if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
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

// MARK: Context has no signals
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

    /// Retrieves the base direction for the context.
    /// 
    /// See [method`Pango.Context.set_base_dir`].
    @inlinable func getBaseDir() -> PangoDirection {
        let result = pango_context_get_base_dir(context_ptr)
        let rv = result
        return rv
    }

    /// Retrieves the base gravity for the context.
    /// 
    /// See [method`Pango.Context.set_base_gravity`].
    @inlinable func getBaseGravity() -> PangoGravity {
        let result = pango_context_get_base_gravity(context_ptr)
        let rv = result
        return rv
    }

    /// Retrieve the default font description for the context.
    @inlinable func getFontDescription() -> Pango.FontDescriptionRef! {
        let result = pango_context_get_font_description(context_ptr)
        let rv = FontDescriptionRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Gets the `PangoFontMap` used to look up fonts for this context.
    @inlinable func getFontMap() -> Pango.FontMapRef! {
        let result = pango_context_get_font_map(context_ptr)
        let rv = FontMapRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Retrieves the gravity for the context.
    /// 
    /// This is similar to [method`Pango.Context.get_base_gravity`],
    /// except for when the base gravity is `PANGO_GRAVITY_AUTO` for
    /// which [func`Pango.Gravity.get_for_matrix`] is used to return the
    /// gravity from the current context matrix.
    @inlinable func getGravity() -> PangoGravity {
        let result = pango_context_get_gravity(context_ptr)
        let rv = result
        return rv
    }

    /// Retrieves the gravity hint for the context.
    /// 
    /// See [method`Pango.Context.set_gravity_hint`] for details.
    @inlinable func getGravityHint() -> PangoGravityHint {
        let result = pango_context_get_gravity_hint(context_ptr)
        let rv = result
        return rv
    }

    /// Retrieves the global language tag for the context.
    @inlinable func getLanguage() -> Pango.LanguageRef! {
        let result = pango_context_get_language(context_ptr)
        let rv = LanguageRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Gets the transformation matrix that will be applied when
    /// rendering with this context.
    /// 
    /// See [method`Pango.Context.set_matrix`].
    @inlinable func getMatrix() -> Pango.MatrixRef! {
        let result = pango_context_get_matrix(context_ptr)
        let rv = MatrixRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Get overall metric information for a particular font description.
    /// 
    /// Since the metrics may be substantially different for different scripts,
    /// a language tag can be provided to indicate that the metrics should be
    /// retrieved that correspond to the `script(s)` used by that language.
    /// 
    /// The `PangoFontDescription` is interpreted in the same way as by [func`itemize`],
    /// and the family name may be a comma separated list of names. If characters
    /// from multiple of these families would be used to render the string, then
    /// the returned fonts would be a composite of the metrics for the fonts loaded
    /// for the individual families.
    @inlinable func getMetrics(desc: FontDescriptionRef? = nil, language: LanguageRef? = nil) -> Pango.FontMetricsRef! {
            let result = pango_context_get_metrics(context_ptr, desc?.font_description_ptr, language?.language_ptr)
        let rv = FontMetricsRef(gconstpointer: gconstpointer(result))
            return rv
    }
    /// Get overall metric information for a particular font description.
    /// 
    /// Since the metrics may be substantially different for different scripts,
    /// a language tag can be provided to indicate that the metrics should be
    /// retrieved that correspond to the `script(s)` used by that language.
    /// 
    /// The `PangoFontDescription` is interpreted in the same way as by [func`itemize`],
    /// and the family name may be a comma separated list of names. If characters
    /// from multiple of these families would be used to render the string, then
    /// the returned fonts would be a composite of the metrics for the fonts loaded
    /// for the individual families.
    @inlinable func getMetrics<FontDescriptionT: FontDescriptionProtocol, LanguageT: LanguageProtocol>(desc: FontDescriptionT?, language: LanguageT?) -> Pango.FontMetricsRef! {
        let result = pango_context_get_metrics(context_ptr, desc?.font_description_ptr, language?.language_ptr)
        let rv = FontMetricsRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Returns whether font rendering with this context should
    /// round glyph positions and widths.
    @inlinable func getRoundGlyphPositions() -> Bool {
        let result = pango_context_get_round_glyph_positions(context_ptr)
        let rv = ((result) != 0)
        return rv
    }

    /// Returns the current serial number of `context`.
    /// 
    /// The serial number is initialized to an small number larger than zero
    /// when a new context is created and is increased whenever the context
    /// is changed using any of the setter functions, or the `PangoFontMap` it
    /// uses to find fonts has changed. The serial may wrap, but will never
    /// have the value 0. Since it can wrap, never compare it with "less than",
    /// always use "not equals".
    /// 
    /// This can be used to automatically detect changes to a `PangoContext`,
    /// and is only useful when implementing objects that need update when their
    /// `PangoContext` changes, like `PangoLayout`.
    @inlinable func getSerial() -> Int {
        let result = pango_context_get_serial(context_ptr)
        let rv = Int(result)
        return rv
    }

    /// List all families for a context.
    @inlinable func list(families: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<PangoFontFamily>?>?>!, nFamilies: UnsafeMutablePointer<gint>!) {
        
        pango_context_list_families(context_ptr, families, nFamilies)
        
    }

    /// Loads the font in one of the fontmaps in the context
    /// that is the closest match for `desc`.
    @inlinable func loadFont<FontDescriptionT: FontDescriptionProtocol>(desc: FontDescriptionT) -> Pango.FontRef! {
        let result = pango_context_load_font(context_ptr, desc.font_description_ptr)
        let rv = FontRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Load a set of fonts in the context that can be used to render
    /// a font matching `desc`.
    @inlinable func loadFontset<FontDescriptionT: FontDescriptionProtocol, LanguageT: LanguageProtocol>(desc: FontDescriptionT, language: LanguageT) -> Pango.FontsetRef! {
        let result = pango_context_load_fontset(context_ptr, desc.font_description_ptr, language.language_ptr)
        let rv = FontsetRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Sets the base direction for the context.
    /// 
    /// The base direction is used in applying the Unicode bidirectional
    /// algorithm; if the `direction` is `PANGO_DIRECTION_LTR` or
    /// `PANGO_DIRECTION_RTL`, then the value will be used as the paragraph
    /// direction in the Unicode bidirectional algorithm. A value of
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

    /// Sets the font map to be searched when fonts are looked-up
    /// in this context.
    /// 
    /// This is only for internal use by Pango backends, a `PangoContext`
    /// obtained via one of the recommended methods should already have a
    /// suitable font map.
    @inlinable func set<FontMapT: FontMapProtocol>(fontMap: FontMapT) {
        
        pango_context_set_font_map(context_ptr, fontMap.font_map_ptr)
        
    }

    /// Sets the gravity hint for the context.
    /// 
    /// The gravity hint is used in laying vertical text out, and
    /// is only relevant if gravity of the context as returned by
    /// [method`Pango.Context.get_gravity`] is set to `PANGO_GRAVITY_EAST`
    /// or `PANGO_GRAVITY_WEST`.
    @inlinable func setGravity(hint: PangoGravityHint) {
        
        pango_context_set_gravity_hint(context_ptr, hint)
        
    }

    /// Sets the global language tag for the context.
    /// 
    /// The default language for the locale of the running process
    /// can be found using [func`Pango.Language.get_default`].
    @inlinable func set<LanguageT: LanguageProtocol>(language: LanguageT) {
        
        pango_context_set_language(context_ptr, language.language_ptr)
        
    }

    /// Sets the transformation matrix that will be applied when rendering
    /// with this context.
    /// 
    /// Note that reported metrics are in the user space coordinates before
    /// the application of the matrix, not device-space coordinates after the
    /// application of the matrix. So, they don't scale with the matrix, though
    /// they may change slightly for different matrices, depending on how the
    /// text is fit to the pixel grid.
    @inlinable func set(matrix: MatrixRef? = nil) {
            
        pango_context_set_matrix(context_ptr, matrix?.matrix_ptr)
            
    }
    /// Sets the transformation matrix that will be applied when rendering
    /// with this context.
    /// 
    /// Note that reported metrics are in the user space coordinates before
    /// the application of the matrix, not device-space coordinates after the
    /// application of the matrix. So, they don't scale with the matrix, though
    /// they may change slightly for different matrices, depending on how the
    /// text is fit to the pixel grid.
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

    /// Breaks a piece of text into segments with consistent directional
    /// level and font.
    /// 
    /// Each byte of `text` will be contained in exactly one of the items in the
    /// returned list; the generated list of items will be in logical order (the
    /// start offsets of the items are ascending).
    /// 
    /// `cached_iter` should be an iterator over `attrs` currently positioned
    /// at a range before or containing `start_index`; `cached_iter` will be
    /// advanced to the range covering the position just after
    /// `start_index` + `length`. (i.e. if itemizing in a loop, just keep passing
    /// in the same `cached_iter`).
    @inlinable func itemize<AttrListT: AttrListProtocol>(text: UnsafePointer<CChar>!, startIndex: Int, length: Int, attrs: AttrListT, cachedIter: AttrIteratorRef? = nil) -> GLib.ListRef! {
            let result = pango_itemize(context_ptr, text, gint(startIndex), gint(length), attrs.attr_list_ptr, cachedIter?.attr_iterator_ptr)
        let rv = GLib.ListRef(gconstpointer: gconstpointer(result))
            return rv
    }
    /// Breaks a piece of text into segments with consistent directional
    /// level and font.
    /// 
    /// Each byte of `text` will be contained in exactly one of the items in the
    /// returned list; the generated list of items will be in logical order (the
    /// start offsets of the items are ascending).
    /// 
    /// `cached_iter` should be an iterator over `attrs` currently positioned
    /// at a range before or containing `start_index`; `cached_iter` will be
    /// advanced to the range covering the position just after
    /// `start_index` + `length`. (i.e. if itemizing in a loop, just keep passing
    /// in the same `cached_iter`).
    @inlinable func itemize<AttrIteratorT: AttrIteratorProtocol, AttrListT: AttrListProtocol>(text: UnsafePointer<CChar>!, startIndex: Int, length: Int, attrs: AttrListT, cachedIter: AttrIteratorT?) -> GLib.ListRef! {
        let result = pango_itemize(context_ptr, text, gint(startIndex), gint(length), attrs.attr_list_ptr, cachedIter?.attr_iterator_ptr)
        let rv = GLib.ListRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Like ``pango_itemize()``, but with an explicitly specified base direction.
    /// 
    /// The base direction is used when computing bidirectional levels.
    /// [func`itemize`] gets the base direction from the `PangoContext`
    /// (see [method`Pango.Context.set_base_dir`]).
    @inlinable func itemizeWith<AttrListT: AttrListProtocol>(baseDir: PangoDirection, text: UnsafePointer<CChar>!, startIndex: Int, length: Int, attrs: AttrListT, cachedIter: AttrIteratorRef? = nil) -> GLib.ListRef! {
            let result = pango_itemize_with_base_dir(context_ptr, baseDir, text, gint(startIndex), gint(length), attrs.attr_list_ptr, cachedIter?.attr_iterator_ptr)
        let rv = GLib.ListRef(gconstpointer: gconstpointer(result))
            return rv
    }
    /// Like ``pango_itemize()``, but with an explicitly specified base direction.
    /// 
    /// The base direction is used when computing bidirectional levels.
    /// [func`itemize`] gets the base direction from the `PangoContext`
    /// (see [method`Pango.Context.set_base_dir`]).
    @inlinable func itemizeWith<AttrIteratorT: AttrIteratorProtocol, AttrListT: AttrListProtocol>(baseDir: PangoDirection, text: UnsafePointer<CChar>!, startIndex: Int, length: Int, attrs: AttrListT, cachedIter: AttrIteratorT?) -> GLib.ListRef! {
        let result = pango_itemize_with_base_dir(context_ptr, baseDir, text, gint(startIndex), gint(length), attrs.attr_list_ptr, cachedIter?.attr_iterator_ptr)
        let rv = GLib.ListRef(gconstpointer: gconstpointer(result))
        return rv
    }
    /// Retrieves the base direction for the context.
    /// 
    /// See [method`Pango.Context.set_base_dir`].
    @inlinable var baseDir: PangoDirection {
        /// Retrieves the base direction for the context.
        /// 
        /// See [method`Pango.Context.set_base_dir`].
        get {
            let result = pango_context_get_base_dir(context_ptr)
        let rv = result
            return rv
        }
        /// Sets the base direction for the context.
        /// 
        /// The base direction is used in applying the Unicode bidirectional
        /// algorithm; if the `direction` is `PANGO_DIRECTION_LTR` or
        /// `PANGO_DIRECTION_RTL`, then the value will be used as the paragraph
        /// direction in the Unicode bidirectional algorithm. A value of
        /// `PANGO_DIRECTION_WEAK_LTR` or `PANGO_DIRECTION_WEAK_RTL` is used only
        /// for paragraphs that do not contain any strong characters themselves.
        nonmutating set {
            pango_context_set_base_dir(context_ptr, newValue)
        }
    }

    /// Retrieves the base gravity for the context.
    /// 
    /// See [method`Pango.Context.set_base_gravity`].
    @inlinable var baseGravity: PangoGravity {
        /// Retrieves the base gravity for the context.
        /// 
        /// See [method`Pango.Context.set_base_gravity`].
        get {
            let result = pango_context_get_base_gravity(context_ptr)
        let rv = result
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
    @inlinable var fontDescription: Pango.FontDescriptionRef! {
        /// Retrieve the default font description for the context.
        get {
            let result = pango_context_get_font_description(context_ptr)
        let rv = FontDescriptionRef(gconstpointer: gconstpointer(result))
            return rv
        }
        /// Set the default font description for the context
        nonmutating set {
            pango_context_set_font_description(context_ptr, UnsafePointer<PangoFontDescription>(newValue?.font_description_ptr))
        }
    }

    /// Gets the `PangoFontMap` used to look up fonts for this context.
    @inlinable var fontMap: Pango.FontMapRef! {
        /// Gets the `PangoFontMap` used to look up fonts for this context.
        get {
            let result = pango_context_get_font_map(context_ptr)
        let rv = FontMapRef(gconstpointer: gconstpointer(result))
            return rv
        }
        /// Sets the font map to be searched when fonts are looked-up
        /// in this context.
        /// 
        /// This is only for internal use by Pango backends, a `PangoContext`
        /// obtained via one of the recommended methods should already have a
        /// suitable font map.
        nonmutating set {
            pango_context_set_font_map(context_ptr, UnsafeMutablePointer<PangoFontMap>(newValue?.font_map_ptr))
        }
    }

    /// Retrieves the gravity for the context.
    /// 
    /// This is similar to [method`Pango.Context.get_base_gravity`],
    /// except for when the base gravity is `PANGO_GRAVITY_AUTO` for
    /// which [func`Pango.Gravity.get_for_matrix`] is used to return the
    /// gravity from the current context matrix.
    @inlinable var gravity: PangoGravity {
        /// Retrieves the gravity for the context.
        /// 
        /// This is similar to [method`Pango.Context.get_base_gravity`],
        /// except for when the base gravity is `PANGO_GRAVITY_AUTO` for
        /// which [func`Pango.Gravity.get_for_matrix`] is used to return the
        /// gravity from the current context matrix.
        get {
            let result = pango_context_get_gravity(context_ptr)
        let rv = result
            return rv
        }
    }

    /// Retrieves the gravity hint for the context.
    /// 
    /// See [method`Pango.Context.set_gravity_hint`] for details.
    @inlinable var gravityHint: PangoGravityHint {
        /// Retrieves the gravity hint for the context.
        /// 
        /// See [method`Pango.Context.set_gravity_hint`] for details.
        get {
            let result = pango_context_get_gravity_hint(context_ptr)
        let rv = result
            return rv
        }
        /// Sets the gravity hint for the context.
        /// 
        /// The gravity hint is used in laying vertical text out, and
        /// is only relevant if gravity of the context as returned by
        /// [method`Pango.Context.get_gravity`] is set to `PANGO_GRAVITY_EAST`
        /// or `PANGO_GRAVITY_WEST`.
        nonmutating set {
            pango_context_set_gravity_hint(context_ptr, newValue)
        }
    }

    /// Retrieves the global language tag for the context.
    @inlinable var language: Pango.LanguageRef! {
        /// Retrieves the global language tag for the context.
        get {
            let result = pango_context_get_language(context_ptr)
        let rv = LanguageRef(gconstpointer: gconstpointer(result))
            return rv
        }
        /// Sets the global language tag for the context.
        /// 
        /// The default language for the locale of the running process
        /// can be found using [func`Pango.Language.get_default`].
        nonmutating set {
            pango_context_set_language(context_ptr, UnsafeMutablePointer<PangoLanguage>(newValue?.language_ptr))
        }
    }

    /// Gets the transformation matrix that will be applied when
    /// rendering with this context.
    /// 
    /// See [method`Pango.Context.set_matrix`].
    @inlinable var matrix: Pango.MatrixRef! {
        /// Gets the transformation matrix that will be applied when
        /// rendering with this context.
        /// 
        /// See [method`Pango.Context.set_matrix`].
        get {
            let result = pango_context_get_matrix(context_ptr)
        let rv = MatrixRef(gconstpointer: gconstpointer(result))
            return rv
        }
        /// Sets the transformation matrix that will be applied when rendering
        /// with this context.
        /// 
        /// Note that reported metrics are in the user space coordinates before
        /// the application of the matrix, not device-space coordinates after the
        /// application of the matrix. So, they don't scale with the matrix, though
        /// they may change slightly for different matrices, depending on how the
        /// text is fit to the pixel grid.
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
            let result = pango_context_get_round_glyph_positions(context_ptr)
        let rv = ((result) != 0)
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

    /// Returns the current serial number of `context`.
    /// 
    /// The serial number is initialized to an small number larger than zero
    /// when a new context is created and is increased whenever the context
    /// is changed using any of the setter functions, or the `PangoFontMap` it
    /// uses to find fonts has changed. The serial may wrap, but will never
    /// have the value 0. Since it can wrap, never compare it with "less than",
    /// always use "not equals".
    /// 
    /// This can be used to automatically detect changes to a `PangoContext`,
    /// and is only useful when implementing objects that need update when their
    /// `PangoContext` changes, like `PangoLayout`.
    @inlinable var serial: Int {
        /// Returns the current serial number of `context`.
        /// 
        /// The serial number is initialized to an small number larger than zero
        /// when a new context is created and is increased whenever the context
        /// is changed using any of the setter functions, or the `PangoFontMap` it
        /// uses to find fonts has changed. The serial may wrap, but will never
        /// have the value 0. Since it can wrap, never compare it with "less than",
        /// always use "not equals".
        /// 
        /// This can be used to automatically detect changes to a `PangoContext`,
        /// and is only useful when implementing objects that need update when their
        /// `PangoContext` changes, like `PangoLayout`.
        get {
            let result = pango_context_get_serial(context_ptr)
        let rv = Int(result)
            return rv
        }
    }


}



// MARK: - Coverage Class

/// A `PangoCoverage` structure is a map from Unicode characters
/// to [enum`Pango.CoverageLevel`] values.
/// 
/// It is often necessary in Pango to determine if a particular
/// font can represent a particular character, and also how well
/// it can represent that character. The `PangoCoverage` is a data
/// structure that is used to represent that information. It is an
/// opaque structure with no public fields.
///
/// The `CoverageProtocol` protocol exposes the methods and properties of an underlying `PangoCoverage` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Coverage`.
/// Alternatively, use `CoverageRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol CoverageProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `PangoCoverage` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoCoverage` instance.
    var coverage_ptr: UnsafeMutablePointer<PangoCoverage>! { get }

    /// Required Initialiser for types conforming to `CoverageProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `PangoCoverage` structure is a map from Unicode characters
/// to [enum`Pango.CoverageLevel`] values.
/// 
/// It is often necessary in Pango to determine if a particular
/// font can represent a particular character, and also how well
/// it can represent that character. The `PangoCoverage` is a data
/// structure that is used to represent that information. It is an
/// opaque structure with no public fields.
///
/// The `CoverageRef` type acts as a lightweight Swift reference to an underlying `PangoCoverage` instance.
/// It exposes methods that can operate on this data type through `CoverageProtocol` conformance.
/// Use `CoverageRef` only as an `unowned` reference to an existing `PangoCoverage` instance.
///
public struct CoverageRef: CoverageProtocol, GWeakCapturing {
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

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: CoverageProtocol>(_ other: T) -> CoverageRef { CoverageRef(other) }

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
            let result = pango_coverage_new()
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }
    /// Convert data generated from [method`Pango.Coverage.to_bytes`]
    /// back to a `PangoCoverage`.
    ///
    /// **from_bytes is deprecated:**
    /// This returns %NULL
    @available(*, deprecated) @inlinable static func from(bytes: UnsafeMutablePointer<guchar>!, nBytes: Int) -> Pango.CoverageRef! {
            let result = pango_coverage_from_bytes(bytes, gint(nBytes))
        guard let rv = CoverageRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }
}

/// A `PangoCoverage` structure is a map from Unicode characters
/// to [enum`Pango.CoverageLevel`] values.
/// 
/// It is often necessary in Pango to determine if a particular
/// font can represent a particular character, and also how well
/// it can represent that character. The `PangoCoverage` is a data
/// structure that is used to represent that information. It is an
/// opaque structure with no public fields.
///
/// The `Coverage` type acts as a reference-counted owner of an underlying `PangoCoverage` instance.
/// It provides the methods that can operate on this data type through `CoverageProtocol` conformance.
/// Use `Coverage` as a strong reference or owner of a `PangoCoverage` instance.
///
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
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
            let result = pango_coverage_new()
        let rv = result
            super.init(gpointer: (rv))
    if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Convert data generated from [method`Pango.Coverage.to_bytes`]
    /// back to a `PangoCoverage`.
    ///
    /// **from_bytes is deprecated:**
    /// This returns %NULL
    @available(*, deprecated) @inlinable public static func from(bytes: UnsafeMutablePointer<guchar>!, nBytes: Int) -> Pango.Coverage! {
            let result = pango_coverage_from_bytes(bytes, gint(nBytes))
        guard let rv = Coverage(gconstpointer: gconstpointer(result)) else { return nil }
            if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
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

// MARK: Coverage has no signals
// MARK: Coverage Class: CoverageProtocol extension (methods and fields)
public extension CoverageProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoCoverage` instance.
    @inlinable var coverage_ptr: UnsafeMutablePointer<PangoCoverage>! { return ptr?.assumingMemoryBound(to: PangoCoverage.self) }

    /// Copy an existing `PangoCoverage`.
    @inlinable func copy() -> Pango.CoverageRef! {
        let result = pango_coverage_copy(coverage_ptr)
        guard let rv = CoverageRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Determine whether a particular index is covered by `coverage`.
    @inlinable func get(index: Int) -> PangoCoverageLevel {
        let result = pango_coverage_get(coverage_ptr, gint(index))
        let rv = result
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

    /// Increase the reference count on the `PangoCoverage` by one.
    ///
    /// **ref is deprecated:**
    /// Use g_object_ref instead
    @available(*, deprecated) @discardableResult @inlinable func ref() -> Pango.CoverageRef! {
        let result = pango_coverage_ref(coverage_ptr)
        guard let rv = CoverageRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Modify a particular index within `coverage`
    @inlinable func set(index: Int, level: PangoCoverageLevel) {
        
        pango_coverage_set(coverage_ptr, gint(index), level)
        
    }

    /// Convert a `PangoCoverage` structure into a flat binary format.
    ///
    /// **to_bytes is deprecated:**
    /// This returns %NULL
    @available(*, deprecated) @inlinable func to(bytes: UnsafeMutablePointer<UnsafeMutablePointer<guchar>?>!, nBytes: UnsafeMutablePointer<gint>!) {
        
        pango_coverage_to_bytes(coverage_ptr, bytes, nBytes)
        
    }

    /// Decrease the reference count on the `PangoCoverage` by one.
    /// 
    /// If the result is zero, free the coverage and all associated memory.
    ///
    /// **unref is deprecated:**
    /// Use g_object_unref instead
    @available(*, deprecated) @inlinable func unref() {
        
        pango_coverage_unref(coverage_ptr)
        
    }


}



// MARK: - Color Record

/// The `PangoColor` structure is used to
/// represent a color in an uncalibrated RGB color-space.
///
/// The `ColorProtocol` protocol exposes the methods and properties of an underlying `PangoColor` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Color`.
/// Alternatively, use `ColorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ColorProtocol {
        /// Untyped pointer to the underlying `PangoColor` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoColor` instance.
    var color_ptr: UnsafeMutablePointer<PangoColor>! { get }

    /// Required Initialiser for types conforming to `ColorProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `PangoColor` structure is used to
/// represent a color in an uncalibrated RGB color-space.
///
/// The `ColorRef` type acts as a lightweight Swift reference to an underlying `PangoColor` instance.
/// It exposes methods that can operate on this data type through `ColorProtocol` conformance.
/// Use `ColorRef` only as an `unowned` reference to an existing `PangoColor` instance.
///
public struct ColorRef: ColorProtocol {
        /// Untyped pointer to the underlying `PangoColor` instance.
    /// For type-safe access, use the generated, typed pointer `color_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ColorRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoColor>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoColor>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoColor>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoColor>?) {
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

    /// Reference intialiser for a related type that implements `ColorProtocol`
    @inlinable init<T: ColorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PangoColor` structure is used to
/// represent a color in an uncalibrated RGB color-space.
///
/// The `Color` type acts as an owner of an underlying `PangoColor` instance.
/// It provides the methods that can operate on this data type through `ColorProtocol` conformance.
/// Use `Color` as a strong reference or owner of a `PangoColor` instance.
///
open class Color: ColorProtocol {
        /// Untyped pointer to the underlying `PangoColor` instance.
    /// For type-safe access, use the generated, typed pointer `color_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Color` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoColor>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Color` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoColor>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Color` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Color` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Color` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoColor>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Color` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoColor>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoColor` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Color` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoColor>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoColor, cannot ref(color_ptr)
    }

    /// Reference intialiser for a related type that implements `ColorProtocol`
    /// `PangoColor` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ColorProtocol`
    @inlinable public init<T: ColorProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoColor, cannot ref(color_ptr)
    }

    /// Do-nothing destructor for `PangoColor`.
    deinit {
        // no reference counting for PangoColor, cannot unref(color_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoColor, cannot ref(color_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoColor, cannot ref(color_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoColor, cannot ref(color_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoColor, cannot ref(color_ptr)
    }



}

// MARK: no Color properties

// MARK: no Color signals

// MARK: Color has no signals
// MARK: Color Record: ColorProtocol extension (methods and fields)
public extension ColorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoColor` instance.
    @inlinable var color_ptr: UnsafeMutablePointer<PangoColor>! { return ptr?.assumingMemoryBound(to: PangoColor.self) }

    /// Creates a copy of `src`.
    /// 
    /// The copy should be freed with [method`Pango.Color.free`].
    /// Primarily used by language bindings, not that useful
    /// otherwise (since colors can just be copied by assignment
    /// in C).
    @inlinable func copy() -> Pango.ColorRef! {
        let result = pango_color_copy(color_ptr)
        guard let rv = ColorRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Frees a color allocated by [method`Pango.Color.copy`].
    @inlinable func free() {
        
        pango_color_free(color_ptr)
        
    }

    /// Fill in the fields of a color from a string specification.
    /// 
    /// The string can either one of a large set of standard names.
    /// (Taken from the CSS Color [specification](https://www.w3.org/TR/css-color-4/`named-colors`),
    /// or it can be a value in the form ``rgb``, ``rrggbb``,
    /// ``rrrgggbbb`` or ``rrrrggggbbbb``, where `r`, `g` and `b`
    /// are hex digits of the red, green, and blue components
    /// of the color, respectively. (White in the four forms is
    /// ``fff``, ``ffffff``, ``fffffffff`` and ``ffffffffffff``.)
    @inlinable func parse(spec: UnsafePointer<CChar>!) -> Bool {
        let result = pango_color_parse(color_ptr, spec)
        let rv = ((result) != 0)
        return rv
    }

    /// Fill in the fields of a color from a string specification.
    /// 
    /// The string can either one of a large set of standard names.
    /// (Taken from the CSS Color [specification](https://www.w3.org/TR/css-color-4/`named-colors`),
    /// or it can be a hexadecimal value in the form ``rgb``,
    /// ``rrggbb``, ``rrrgggbbb`` or ``rrrrggggbbbb`` where `r`, `g`
    /// and `b` are hex digits of the red, green, and blue components
    /// of the color, respectively. (White in the four forms is
    /// ``fff``, ``ffffff``, ``fffffffff`` and ``ffffffffffff``.)
    /// 
    /// Additionally, parse strings of the form ``rgba``, ``rrggbbaa``,
    /// ``rrrrggggbbbbaaaa``, if `alpha` is not `nil`, and set `alpha`
    /// to the value specified by the hex digits for `a`. If no alpha
    /// component is found in `spec`, `alpha` is set to 0xffff (for a
    /// solid color).
    @inlinable func parseWith(alpha: UnsafeMutablePointer<guint16>! = nil, spec: UnsafePointer<CChar>!) -> Bool {
        let result = pango_color_parse_with_alpha(color_ptr, alpha, spec)
        let rv = ((result) != 0)
        return rv
    }

    /// Returns a textual specification of `color`.
    /// 
    /// The string is in the hexadecimal form ``rrrrggggbbbb``,
    /// where `r`, `g` and `b` are hex digits representing the
    /// red, green, and blue components respectively.
    @inlinable func toString() -> String! {
        let result = pango_color_to_string(color_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// value of red component
    @inlinable var red: guint16 {
        /// value of red component
        get {
            let rv = color_ptr.pointee.red
    return rv
        }
        /// value of red component
         set {
            color_ptr.pointee.red = newValue
        }
    }

    /// value of green component
    @inlinable var green: guint16 {
        /// value of green component
        get {
            let rv = color_ptr.pointee.green
    return rv
        }
        /// value of green component
         set {
            color_ptr.pointee.green = newValue
        }
    }

    /// value of blue component
    @inlinable var blue: guint16 {
        /// value of blue component
        get {
            let rv = color_ptr.pointee.blue
    return rv
        }
        /// value of blue component
         set {
            color_ptr.pointee.blue = newValue
        }
    }

}



/// Metatype/GType declaration for Context
public extension ContextClassRef {
    
    /// This getter returns the GLib type identifier registered for `Context`
    static var metatypeReference: GType { pango_context_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<PangoContextClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: PangoContextClass.self) }
    
    static var metatype: PangoContextClass? { metatypePointer?.pointee } 
    
    static var wrapper: ContextClassRef? { ContextClassRef(metatypePointer) }
    
    
}

// MARK: - ContextClass Record


///
/// The `ContextClassProtocol` protocol exposes the methods and properties of an underlying `PangoContextClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ContextClass`.
/// Alternatively, use `ContextClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ContextClassProtocol {
        /// Untyped pointer to the underlying `PangoContextClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoContextClass` instance.
    var _ptr: UnsafeMutablePointer<PangoContextClass>! { get }

    /// Required Initialiser for types conforming to `ContextClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ContextClassRef` type acts as a lightweight Swift reference to an underlying `PangoContextClass` instance.
/// It exposes methods that can operate on this data type through `ContextClassProtocol` conformance.
/// Use `ContextClassRef` only as an `unowned` reference to an existing `PangoContextClass` instance.
///
public struct ContextClassRef: ContextClassProtocol {
        /// Untyped pointer to the underlying `PangoContextClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ContextClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoContextClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoContextClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoContextClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoContextClass>?) {
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

    /// Reference intialiser for a related type that implements `ContextClassProtocol`
    @inlinable init<T: ContextClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContextClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ContextClass Record: ContextClassProtocol extension (methods and fields)
public extension ContextClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoContextClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoContextClass>! { return ptr?.assumingMemoryBound(to: PangoContextClass.self) }



}



