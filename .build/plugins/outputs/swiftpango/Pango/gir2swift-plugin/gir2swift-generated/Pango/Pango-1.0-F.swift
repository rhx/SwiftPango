import CGLib
import CHarfBuzz
import CPango
import GLib
import GLibObject
import HarfBuzz
// MARK: - Font Class

/// A `PangoFont` is used to represent a font in a
/// rendering-system-independent manner.
///
/// The `FontProtocol` protocol exposes the methods and properties of an underlying `PangoFont` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Font`.
/// Alternatively, use `FontRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FontProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `PangoFont` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFont` instance.
    var font_ptr: UnsafeMutablePointer<PangoFont>! { get }

    /// Required Initialiser for types conforming to `FontProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `PangoFont` is used to represent a font in a
/// rendering-system-independent manner.
///
/// The `FontRef` type acts as a lightweight Swift reference to an underlying `PangoFont` instance.
/// It exposes methods that can operate on this data type through `FontProtocol` conformance.
/// Use `FontRef` only as an `unowned` reference to an existing `PangoFont` instance.
///
public struct FontRef: FontProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `PangoFont` instance.
    /// For type-safe access, use the generated, typed pointer `font_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoFont>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoFont>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoFont>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoFont>?) {
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

    /// Reference intialiser for a related type that implements `FontProtocol`
    @inlinable init<T: FontProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FontProtocol>(_ other: T) -> FontRef { FontRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Loads data previously created via [method`Pango.Font.serialize`].
    /// 
    /// For a discussion of the supported format, see that function.
    /// 
    /// Note: to verify that the returned font is identical to
    /// the one that was serialized, you can compare `bytes` to the
    /// result of serializing the font again.
    @inlinable static func deserialize<ContextT: ContextProtocol, GLibBytesT: GLib.BytesProtocol>(context: ContextT, bytes: GLibBytesT) throws -> Pango.FontRef! {
            var error: UnsafeMutablePointer<GError>?
        let result = pango_font_deserialize(context.context_ptr, bytes.bytes_ptr, &error)
        if let error = error { throw GLibError(error) }
        let maybeRV = FontRef(gconstpointer: gconstpointer(result))
        
        guard let rv = maybeRV else { return nil }
        return rv
    }
}

/// A `PangoFont` is used to represent a font in a
/// rendering-system-independent manner.
///
/// The `Font` type acts as a reference-counted owner of an underlying `PangoFont` instance.
/// It provides the methods that can operate on this data type through `FontProtocol` conformance.
/// Use `Font` as a strong reference or owner of a `PangoFont` instance.
///
open class Font: GLibObject.Object, FontProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Font` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoFont>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Font` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoFont>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Font` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Font` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Font` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoFont>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Font` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoFont>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `PangoFont`.
    /// i.e., ownership is transferred to the `Font` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoFont>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FontProtocol`
    /// Will retain `PangoFont`.
    /// - Parameter other: an instance of a related type that implements `FontProtocol`
    @inlinable public init<T: FontProtocol>(font other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }


    /// Loads data previously created via [method`Pango.Font.serialize`].
    /// 
    /// For a discussion of the supported format, see that function.
    /// 
    /// Note: to verify that the returned font is identical to
    /// the one that was serialized, you can compare `bytes` to the
    /// result of serializing the font again.
    @inlinable public static func deserialize<ContextT: ContextProtocol, GLibBytesT: GLib.BytesProtocol>(context: ContextT, bytes: GLibBytesT) throws -> Pango.Font! {
            var error: UnsafeMutablePointer<GError>?
        let result = pango_font_deserialize(context.context_ptr, bytes.bytes_ptr, &error)
        if let error = error { throw GLibError(error) }
        let maybeRV = Font(gconstpointer: gconstpointer(result))
        
        guard let rv = maybeRV else { return nil }
            if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
return rv
    }

}

// MARK: no Font properties

public enum FontSignalName: String, SignalNameProtocol {
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

// MARK: Font has no signals
// MARK: Font Class: FontProtocol extension (methods and fields)
public extension FontProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFont` instance.
    @inlinable var font_ptr: UnsafeMutablePointer<PangoFont>! { return ptr?.assumingMemoryBound(to: PangoFont.self) }

    /// Returns a description of the font, with font size set in points.
    /// 
    /// Use [method`Pango.Font.describe_with_absolute_size`] if you want
    /// the font size in device units.
    @inlinable func describe() -> Pango.FontDescriptionRef! {
        let result = pango_font_describe(font_ptr)
        let rv = FontDescriptionRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Returns a description of the font, with absolute font size set
    /// in device units.
    /// 
    /// Use [method`Pango.Font.describe`] if you want the font size in points.
    @inlinable func describeWithAbsoluteSize() -> Pango.FontDescriptionRef! {
        let result = pango_font_describe_with_absolute_size(font_ptr)
        let rv = FontDescriptionRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Computes the coverage map for a given font and language tag.
    @inlinable func getCoverage<LanguageT: LanguageProtocol>(language: LanguageT) -> Pango.CoverageRef! {
        let result = pango_font_get_coverage(font_ptr, language.language_ptr)
        let rv = CoverageRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Gets the `PangoFontFace` to which `font` belongs.
    @inlinable func getFace() -> Pango.FontFaceRef! {
        let result = pango_font_get_face(font_ptr)
        let rv = FontFaceRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Obtain the OpenType features that are provided by the font.
    /// 
    /// These are passed to the rendering system, together with features
    /// that have been explicitly set via attributes.
    /// 
    /// Note that this does not include OpenType features which the
    /// rendering system enables by default.
    @inlinable func get(features: UnsafeMutablePointer<hb_feature_t>!, len: Int, numFeatures: UnsafeMutablePointer<guint>!) {
        
        pango_font_get_features(font_ptr, features, guint(len), numFeatures)
        
    }

    /// Gets the font map for which the font was created.
    /// 
    /// Note that the font maintains a *weak* reference to
    /// the font map, so if all references to font map are
    /// dropped, the font map will be finalized even if there
    /// are fonts created with the font map that are still alive.
    /// In that case this function will return `nil`.
    /// 
    /// It is the responsibility of the user to ensure that the
    /// font map is kept alive. In most uses this is not an issue
    /// as a `PangoContext` holds a reference to the font map.
    @inlinable func getFontMap() -> Pango.FontMapRef! {
        let result = pango_font_get_font_map(font_ptr)
        let rv = FontMapRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Gets the logical and ink extents of a glyph within a font.
    /// 
    /// The coordinate system for each rectangle has its origin at the
    /// base line and horizontal origin of the character with increasing
    /// coordinates extending to the right and down. The macros `PANGO_ASCENT()`,
    /// `PANGO_DESCENT()`, `PANGO_LBEARING()`, and `PANGO_RBEARING()` can be used to convert
    /// from the extents rectangle to more traditional font metrics. The units
    /// of the rectangles are in 1/PANGO_SCALE of a device unit.
    /// 
    /// If `font` is `nil`, this function gracefully sets some sane values in the
    /// output variables and returns.
    @inlinable func getGlyphExtents(glyph: PangoGlyph, inkRect: RectangleRef? = nil, logicalRect: RectangleRef? = nil) {
            
        pango_font_get_glyph_extents(font_ptr, glyph, inkRect?._ptr, logicalRect?._ptr)
            
    }
    /// Gets the logical and ink extents of a glyph within a font.
    /// 
    /// The coordinate system for each rectangle has its origin at the
    /// base line and horizontal origin of the character with increasing
    /// coordinates extending to the right and down. The macros `PANGO_ASCENT()`,
    /// `PANGO_DESCENT()`, `PANGO_LBEARING()`, and `PANGO_RBEARING()` can be used to convert
    /// from the extents rectangle to more traditional font metrics. The units
    /// of the rectangles are in 1/PANGO_SCALE of a device unit.
    /// 
    /// If `font` is `nil`, this function gracefully sets some sane values in the
    /// output variables and returns.
    @inlinable func getGlyphExtents<RectangleT: RectangleProtocol>(glyph: PangoGlyph, inkRect: RectangleT?, logicalRect: RectangleT?) {
        
        pango_font_get_glyph_extents(font_ptr, glyph, inkRect?._ptr, logicalRect?._ptr)
        
    }

    /// Get a `hb_font_t` object backing this font.
    /// 
    /// Note that the objects returned by this function are cached
    /// and immutable. If you need to make changes to the `hb_font_t`,
    /// use [`hb_font_create_sub_font()`](https://harfbuzz.github.io/harfbuzz-hb-font.html`hb-font-create-sub-font`).
    @inlinable func getHbFont() -> HarfBuzz.font_tRef! {
        let result = pango_font_get_hb_font(font_ptr)
        let rv = HarfBuzz.font_tRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Returns the languages that are supported by `font`.
    /// 
    /// If the font backend does not provide this information,
    /// `nil` is returned. For the fontconfig backend, this
    /// corresponds to the FC_LANG member of the FcPattern.
    /// 
    /// The returned array is only valid as long as the font
    /// and its fontmap are valid.
    @inlinable func getLanguages() -> UnsafeMutablePointer<UnsafeMutablePointer<PangoLanguage>?>! {
        let result = pango_font_get_languages(font_ptr)
        let rv = result
        return rv
    }

    /// Gets overall metric information for a font.
    /// 
    /// Since the metrics may be substantially different for different scripts,
    /// a language tag can be provided to indicate that the metrics should be
    /// retrieved that correspond to the `script(s)` used by that language.
    /// 
    /// If `font` is `nil`, this function gracefully sets some sane values in the
    /// output variables and returns.
    @inlinable func getMetrics(language: LanguageRef? = nil) -> Pango.FontMetricsRef! {
            let result = pango_font_get_metrics(font_ptr, language?.language_ptr)
        let rv = FontMetricsRef(gconstpointer: gconstpointer(result))
            return rv
    }
    /// Gets overall metric information for a font.
    /// 
    /// Since the metrics may be substantially different for different scripts,
    /// a language tag can be provided to indicate that the metrics should be
    /// retrieved that correspond to the `script(s)` used by that language.
    /// 
    /// If `font` is `nil`, this function gracefully sets some sane values in the
    /// output variables and returns.
    @inlinable func getMetrics<LanguageT: LanguageProtocol>(language: LanguageT?) -> Pango.FontMetricsRef! {
        let result = pango_font_get_metrics(font_ptr, language?.language_ptr)
        let rv = FontMetricsRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Returns whether the font provides a glyph for this character.
    @inlinable func hasChar(wc: gunichar) -> Bool {
        let result = pango_font_has_char(font_ptr, wc)
        let rv = ((result) != 0)
        return rv
    }

    /// Serializes the `font` in a way that can be uniquely identified.
    /// 
    /// There are no guarantees about the format of the output across different
    /// versions of Pango.
    /// 
    /// The intended use of this function is testing, benchmarking and debugging.
    /// The format is not meant as a permanent storage format.
    /// 
    /// To recreate a font from its serialized form, use [func`Pango.Font.deserialize`].
    @inlinable func serialize() -> GLib.BytesRef! {
        let result = pango_font_serialize(font_ptr)
        let rv = GLib.BytesRef(gconstpointer: gconstpointer(result))
        return rv
    }
    /// Gets the `PangoFontFace` to which `font` belongs.
    @inlinable var face: Pango.FontFaceRef! {
        /// Gets the `PangoFontFace` to which `font` belongs.
        get {
            let result = pango_font_get_face(font_ptr)
        let rv = FontFaceRef(gconstpointer: gconstpointer(result))
            return rv
        }
    }

    /// Gets the font map for which the font was created.
    /// 
    /// Note that the font maintains a *weak* reference to
    /// the font map, so if all references to font map are
    /// dropped, the font map will be finalized even if there
    /// are fonts created with the font map that are still alive.
    /// In that case this function will return `nil`.
    /// 
    /// It is the responsibility of the user to ensure that the
    /// font map is kept alive. In most uses this is not an issue
    /// as a `PangoContext` holds a reference to the font map.
    @inlinable var fontMap: Pango.FontMapRef! {
        /// Gets the font map for which the font was created.
        /// 
        /// Note that the font maintains a *weak* reference to
        /// the font map, so if all references to font map are
        /// dropped, the font map will be finalized even if there
        /// are fonts created with the font map that are still alive.
        /// In that case this function will return `nil`.
        /// 
        /// It is the responsibility of the user to ensure that the
        /// font map is kept alive. In most uses this is not an issue
        /// as a `PangoContext` holds a reference to the font map.
        get {
            let result = pango_font_get_font_map(font_ptr)
        let rv = FontMapRef(gconstpointer: gconstpointer(result))
            return rv
        }
    }

    /// Get a `hb_font_t` object backing this font.
    /// 
    /// Note that the objects returned by this function are cached
    /// and immutable. If you need to make changes to the `hb_font_t`,
    /// use [`hb_font_create_sub_font()`](https://harfbuzz.github.io/harfbuzz-hb-font.html`hb-font-create-sub-font`).
    @inlinable var hbFont: HarfBuzz.font_tRef! {
        /// Get a `hb_font_t` object backing this font.
        /// 
        /// Note that the objects returned by this function are cached
        /// and immutable. If you need to make changes to the `hb_font_t`,
        /// use [`hb_font_create_sub_font()`](https://harfbuzz.github.io/harfbuzz-hb-font.html`hb-font-create-sub-font`).
        get {
            let result = pango_font_get_hb_font(font_ptr)
        let rv = HarfBuzz.font_tRef(gconstpointer: gconstpointer(result))
            return rv
        }
    }

    /// Returns the languages that are supported by `font`.
    /// 
    /// If the font backend does not provide this information,
    /// `nil` is returned. For the fontconfig backend, this
    /// corresponds to the FC_LANG member of the FcPattern.
    /// 
    /// The returned array is only valid as long as the font
    /// and its fontmap are valid.
    @inlinable var languages: UnsafeMutablePointer<UnsafeMutablePointer<PangoLanguage>?>! {
        /// Returns the languages that are supported by `font`.
        /// 
        /// If the font backend does not provide this information,
        /// `nil` is returned. For the fontconfig backend, this
        /// corresponds to the FC_LANG member of the FcPattern.
        /// 
        /// The returned array is only valid as long as the font
        /// and its fontmap are valid.
        get {
            let result = pango_font_get_languages(font_ptr)
        let rv = result
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = font_ptr.pointee.parent_instance
    return rv
        }
    }

}



// MARK: - FontFace Class

/// A `PangoFontFace` is used to represent a group of fonts with
/// the same family, slant, weight, and width, but varying sizes.
///
/// The `FontFaceProtocol` protocol exposes the methods and properties of an underlying `PangoFontFace` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontFace`.
/// Alternatively, use `FontFaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FontFaceProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `PangoFontFace` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFontFace` instance.
    var font_face_ptr: UnsafeMutablePointer<PangoFontFace>! { get }

    /// Required Initialiser for types conforming to `FontFaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `PangoFontFace` is used to represent a group of fonts with
/// the same family, slant, weight, and width, but varying sizes.
///
/// The `FontFaceRef` type acts as a lightweight Swift reference to an underlying `PangoFontFace` instance.
/// It exposes methods that can operate on this data type through `FontFaceProtocol` conformance.
/// Use `FontFaceRef` only as an `unowned` reference to an existing `PangoFontFace` instance.
///
public struct FontFaceRef: FontFaceProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `PangoFontFace` instance.
    /// For type-safe access, use the generated, typed pointer `font_face_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontFaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoFontFace>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoFontFace>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoFontFace>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoFontFace>?) {
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

    /// Reference intialiser for a related type that implements `FontFaceProtocol`
    @inlinable init<T: FontFaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FontFaceProtocol>(_ other: T) -> FontFaceRef { FontFaceRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `PangoFontFace` is used to represent a group of fonts with
/// the same family, slant, weight, and width, but varying sizes.
///
/// The `FontFace` type acts as a reference-counted owner of an underlying `PangoFontFace` instance.
/// It provides the methods that can operate on this data type through `FontFaceProtocol` conformance.
/// Use `FontFace` as a strong reference or owner of a `PangoFontFace` instance.
///
open class FontFace: GLibObject.Object, FontFaceProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontFace` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoFontFace>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontFace` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoFontFace>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontFace` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontFace` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontFace` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoFontFace>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontFace` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoFontFace>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `PangoFontFace`.
    /// i.e., ownership is transferred to the `FontFace` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoFontFace>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FontFaceProtocol`
    /// Will retain `PangoFontFace`.
    /// - Parameter other: an instance of a related type that implements `FontFaceProtocol`
    @inlinable public init<T: FontFaceProtocol>(fontFace other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no FontFace properties

public enum FontFaceSignalName: String, SignalNameProtocol {
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

// MARK: FontFace has no signals
// MARK: FontFace Class: FontFaceProtocol extension (methods and fields)
public extension FontFaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontFace` instance.
    @inlinable var font_face_ptr: UnsafeMutablePointer<PangoFontFace>! { return ptr?.assumingMemoryBound(to: PangoFontFace.self) }

    /// Returns a font description that matches the face.
    /// 
    /// The resulting font description will have the family, style,
    /// variant, weight and stretch of the face, but its size field
    /// will be unset.
    @inlinable func describe() -> Pango.FontDescriptionRef! {
        let result = pango_font_face_describe(font_face_ptr)
        let rv = FontDescriptionRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Gets a name representing the style of this face.
    /// 
    /// Note that a font family may contain multiple faces
    /// with the same name (e.g. a variable and a non-variable
    /// face for the same style).
    @inlinable func getFaceName() -> String! {
        let result = pango_font_face_get_face_name(font_face_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Gets the `PangoFontFamily` that `face` belongs to.
    @inlinable func getFamily() -> Pango.FontFamilyRef! {
        let result = pango_font_face_get_family(font_face_ptr)
        let rv = FontFamilyRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// List the available sizes for a font.
    /// 
    /// This is only applicable to bitmap fonts. For scalable fonts, stores
    /// `nil` at the location pointed to by `sizes` and 0 at the location pointed
    /// to by `n_sizes`. The sizes returned are in Pango units and are sorted
    /// in ascending order.
    @inlinable func list(sizes: UnsafeMutablePointer<UnsafeMutablePointer<CInt>?>! = nil, nSizes: UnsafeMutablePointer<gint>!) {
        
        pango_font_face_list_sizes(font_face_ptr, sizes, nSizes)
        
    }
    /// Gets a name representing the style of this face.
    /// 
    /// Note that a font family may contain multiple faces
    /// with the same name (e.g. a variable and a non-variable
    /// face for the same style).
    @inlinable var faceName: String! {
        /// Gets a name representing the style of this face.
        /// 
        /// Note that a font family may contain multiple faces
        /// with the same name (e.g. a variable and a non-variable
        /// face for the same style).
        get {
            let result = pango_font_face_get_face_name(font_face_ptr)
        let rv = result.map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the `PangoFontFamily` that `face` belongs to.
    @inlinable var family: Pango.FontFamilyRef! {
        /// Gets the `PangoFontFamily` that `face` belongs to.
        get {
            let result = pango_font_face_get_family(font_face_ptr)
        let rv = FontFamilyRef(gconstpointer: gconstpointer(result))
            return rv
        }
    }

    /// Returns whether a `PangoFontFace` is synthesized.
    /// 
    /// This will be the case if the underlying font rendering engine
    /// creates this face from another face, by shearing, emboldening,
    /// lightening or modifying it in some other way.
    @inlinable var isSynthesized: Bool {
        /// Returns whether a `PangoFontFace` is synthesized.
        /// 
        /// This will be the case if the underlying font rendering engine
        /// creates this face from another face, by shearing, emboldening,
        /// lightening or modifying it in some other way.
        get {
            let result = pango_font_face_is_synthesized(font_face_ptr)
        let rv = ((result) != 0)
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = font_face_ptr.pointee.parent_instance
    return rv
        }
    }

}



/// Metatype/GType declaration for Font
public extension FontClassRef {
    
    /// This getter returns the GLib type identifier registered for `Font`
    static var metatypeReference: GType { pango_font_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<PangoFontClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: PangoFontClass.self) }
    
    static var metatype: PangoFontClass? { metatypePointer?.pointee } 
    
    static var wrapper: FontClassRef? { FontClassRef(metatypePointer) }
    
    
}

// MARK: - FontClass Record


///
/// The `FontClassProtocol` protocol exposes the methods and properties of an underlying `PangoFontClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontClass`.
/// Alternatively, use `FontClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FontClassProtocol {
        /// Untyped pointer to the underlying `PangoFontClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFontClass` instance.
    var _ptr: UnsafeMutablePointer<PangoFontClass>! { get }

    /// Required Initialiser for types conforming to `FontClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `FontClassRef` type acts as a lightweight Swift reference to an underlying `PangoFontClass` instance.
/// It exposes methods that can operate on this data type through `FontClassProtocol` conformance.
/// Use `FontClassRef` only as an `unowned` reference to an existing `PangoFontClass` instance.
///
public struct FontClassRef: FontClassProtocol {
        /// Untyped pointer to the underlying `PangoFontClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoFontClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoFontClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoFontClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoFontClass>?) {
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

    /// Reference intialiser for a related type that implements `FontClassProtocol`
    @inlinable init<T: FontClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FontClass Record: FontClassProtocol extension (methods and fields)
public extension FontClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoFontClass>! { return ptr?.assumingMemoryBound(to: PangoFontClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
    return rv
        }
    }

    // var describe is unavailable because describe is void

    // var getCoverage is unavailable because get_coverage is void

    // var getGlyphExtents is unavailable because get_glyph_extents is void

    // var getMetrics is unavailable because get_metrics is void

    // var getFontMap is unavailable because get_font_map is void

    // var describeAbsolute is unavailable because describe_absolute is void

    // var getFeatures is unavailable because get_features is void

    // var createHbFont is unavailable because create_hb_font is void

}



// MARK: - FontFamily Class

/// A `PangoFontFamily` is used to represent a family of related
/// font faces.
/// 
/// The font faces in a family share a common design, but differ in
/// slant, weight, width or other aspects.
///
/// The `FontFamilyProtocol` protocol exposes the methods and properties of an underlying `PangoFontFamily` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontFamily`.
/// Alternatively, use `FontFamilyRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FontFamilyProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `PangoFontFamily` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFontFamily` instance.
    var font_family_ptr: UnsafeMutablePointer<PangoFontFamily>! { get }

    /// Required Initialiser for types conforming to `FontFamilyProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `PangoFontFamily` is used to represent a family of related
/// font faces.
/// 
/// The font faces in a family share a common design, but differ in
/// slant, weight, width or other aspects.
///
/// The `FontFamilyRef` type acts as a lightweight Swift reference to an underlying `PangoFontFamily` instance.
/// It exposes methods that can operate on this data type through `FontFamilyProtocol` conformance.
/// Use `FontFamilyRef` only as an `unowned` reference to an existing `PangoFontFamily` instance.
///
public struct FontFamilyRef: FontFamilyProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `PangoFontFamily` instance.
    /// For type-safe access, use the generated, typed pointer `font_family_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontFamilyRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoFontFamily>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoFontFamily>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoFontFamily>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoFontFamily>?) {
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

    /// Reference intialiser for a related type that implements `FontFamilyProtocol`
    @inlinable init<T: FontFamilyProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FontFamilyProtocol>(_ other: T) -> FontFamilyRef { FontFamilyRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `PangoFontFamily` is used to represent a family of related
/// font faces.
/// 
/// The font faces in a family share a common design, but differ in
/// slant, weight, width or other aspects.
///
/// The `FontFamily` type acts as a reference-counted owner of an underlying `PangoFontFamily` instance.
/// It provides the methods that can operate on this data type through `FontFamilyProtocol` conformance.
/// Use `FontFamily` as a strong reference or owner of a `PangoFontFamily` instance.
///
open class FontFamily: GLibObject.Object, FontFamilyProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontFamily` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoFontFamily>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontFamily` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoFontFamily>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontFamily` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontFamily` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontFamily` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoFontFamily>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontFamily` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoFontFamily>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `PangoFontFamily`.
    /// i.e., ownership is transferred to the `FontFamily` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoFontFamily>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FontFamilyProtocol`
    /// Will retain `PangoFontFamily`.
    /// - Parameter other: an instance of a related type that implements `FontFamilyProtocol`
    @inlinable public init<T: FontFamilyProtocol>(fontFamily other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no FontFamily properties

public enum FontFamilySignalName: String, SignalNameProtocol {
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

// MARK: FontFamily has no signals
// MARK: FontFamily Class: FontFamilyProtocol extension (methods and fields)
public extension FontFamilyProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontFamily` instance.
    @inlinable var font_family_ptr: UnsafeMutablePointer<PangoFontFamily>! { return ptr?.assumingMemoryBound(to: PangoFontFamily.self) }

    /// Gets the `PangoFontFace` of `family` with the given name.
    @inlinable func getFace(name: UnsafePointer<CChar>? = nil) -> Pango.FontFaceRef! {
        let result = pango_font_family_get_face(font_family_ptr, name)
        let rv = FontFaceRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Gets the name of the family.
    /// 
    /// The name is unique among all fonts for the font backend and can
    /// be used in a `PangoFontDescription` to specify that a face from
    /// this family is desired.
    @inlinable func getName() -> String! {
        let result = pango_font_family_get_name(font_family_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Lists the different font faces that make up `family`.
    /// 
    /// The faces in a family share a common design, but differ in slant, weight,
    /// width and other aspects.
    /// 
    /// Note that the returned faces are not in any particular order, and
    /// multiple faces may have the same name or characteristics.
    /// 
    /// `PangoFontFamily` also implemented the [iface`Gio.ListModel`] interface
    /// for enumerating faces.
    @inlinable func list(faces: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<PangoFontFace>?>?>! = nil, nFaces: UnsafeMutablePointer<gint>!) {
        
        pango_font_family_list_faces(font_family_ptr, faces, nFaces)
        
    }
    /// A monospace font is a font designed for text display where the the
    /// characters form a regular grid.
    /// 
    /// For Western languages this would
    /// mean that the advance width of all characters are the same, but
    /// this categorization also includes Asian fonts which include
    /// double-width characters: characters that occupy two grid cells.
    /// `g_unichar_iswide()` returns a result that indicates whether a
    /// character is typically double-width in a monospace font.
    /// 
    /// The best way to find out the grid-cell size is to call
    /// [method`Pango.FontMetrics.get_approximate_digit_width`], since the
    /// results of [method`Pango.FontMetrics.get_approximate_char_width`] may
    /// be affected by double-width characters.
    @inlinable var isMonospace: Bool {
        /// A monospace font is a font designed for text display where the the
        /// characters form a regular grid.
        /// 
        /// For Western languages this would
        /// mean that the advance width of all characters are the same, but
        /// this categorization also includes Asian fonts which include
        /// double-width characters: characters that occupy two grid cells.
        /// `g_unichar_iswide()` returns a result that indicates whether a
        /// character is typically double-width in a monospace font.
        /// 
        /// The best way to find out the grid-cell size is to call
        /// [method`Pango.FontMetrics.get_approximate_digit_width`], since the
        /// results of [method`Pango.FontMetrics.get_approximate_char_width`] may
        /// be affected by double-width characters.
        get {
            let result = pango_font_family_is_monospace(font_family_ptr)
        let rv = ((result) != 0)
            return rv
        }
    }

    /// A variable font is a font which has axes that can be modified to
    /// produce different faces.
    /// 
    /// Such axes are also known as _variations_; see
    /// [method`Pango.FontDescription.set_variations`] for more information.
    @inlinable var isVariable: Bool {
        /// A variable font is a font which has axes that can be modified to
        /// produce different faces.
        /// 
        /// Such axes are also known as _variations_; see
        /// [method`Pango.FontDescription.set_variations`] for more information.
        get {
            let result = pango_font_family_is_variable(font_family_ptr)
        let rv = ((result) != 0)
            return rv
        }
    }

    /// Gets the name of the family.
    /// 
    /// The name is unique among all fonts for the font backend and can
    /// be used in a `PangoFontDescription` to specify that a face from
    /// this family is desired.
    @inlinable var name: String! {
        /// Gets the name of the family.
        /// 
        /// The name is unique among all fonts for the font backend and can
        /// be used in a `PangoFontDescription` to specify that a face from
        /// this family is desired.
        get {
            let result = pango_font_family_get_name(font_family_ptr)
        let rv = result.map({ String(cString: $0) })
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = font_family_ptr.pointee.parent_instance
    return rv
        }
    }

}



// MARK: - FontMap Class

/// A `PangoFontMap` represents the set of fonts available for a
/// particular rendering system.
/// 
/// This is a virtual object with implementations being specific to
/// particular rendering systems.
///
/// The `FontMapProtocol` protocol exposes the methods and properties of an underlying `PangoFontMap` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontMap`.
/// Alternatively, use `FontMapRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FontMapProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `PangoFontMap` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFontMap` instance.
    var font_map_ptr: UnsafeMutablePointer<PangoFontMap>! { get }

    /// Required Initialiser for types conforming to `FontMapProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `PangoFontMap` represents the set of fonts available for a
/// particular rendering system.
/// 
/// This is a virtual object with implementations being specific to
/// particular rendering systems.
///
/// The `FontMapRef` type acts as a lightweight Swift reference to an underlying `PangoFontMap` instance.
/// It exposes methods that can operate on this data type through `FontMapProtocol` conformance.
/// Use `FontMapRef` only as an `unowned` reference to an existing `PangoFontMap` instance.
///
public struct FontMapRef: FontMapProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `PangoFontMap` instance.
    /// For type-safe access, use the generated, typed pointer `font_map_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontMapRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoFontMap>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoFontMap>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoFontMap>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoFontMap>?) {
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

    /// Reference intialiser for a related type that implements `FontMapProtocol`
    @inlinable init<T: FontMapProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FontMapProtocol>(_ other: T) -> FontMapRef { FontMapRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `PangoFontMap` represents the set of fonts available for a
/// particular rendering system.
/// 
/// This is a virtual object with implementations being specific to
/// particular rendering systems.
///
/// The `FontMap` type acts as a reference-counted owner of an underlying `PangoFontMap` instance.
/// It provides the methods that can operate on this data type through `FontMapProtocol` conformance.
/// Use `FontMap` as a strong reference or owner of a `PangoFontMap` instance.
///
open class FontMap: GLibObject.Object, FontMapProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontMap` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoFontMap>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontMap` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoFontMap>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontMap` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontMap` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontMap` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoFontMap>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontMap` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoFontMap>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `PangoFontMap`.
    /// i.e., ownership is transferred to the `FontMap` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoFontMap>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FontMapProtocol`
    /// Will retain `PangoFontMap`.
    /// - Parameter other: an instance of a related type that implements `FontMapProtocol`
    @inlinable public init<T: FontMapProtocol>(fontMap other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no FontMap properties

public enum FontMapSignalName: String, SignalNameProtocol {
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

// MARK: FontMap has no signals
// MARK: FontMap Class: FontMapProtocol extension (methods and fields)
public extension FontMapProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontMap` instance.
    @inlinable var font_map_ptr: UnsafeMutablePointer<PangoFontMap>! { return ptr?.assumingMemoryBound(to: PangoFontMap.self) }

    /// Forces a change in the context, which will cause any `PangoContext`
    /// using this fontmap to change.
    /// 
    /// This function is only useful when implementing a new backend
    /// for Pango, something applications won't do. Backends should
    /// call this function if they have attached extra data to the
    /// context and such data is changed.
    @inlinable func changed() {
        
        pango_font_map_changed(font_map_ptr)
        
    }

    /// Creates a `PangoContext` connected to `fontmap`.
    /// 
    /// This is equivalent to [ctor`Pango.Context.new`] followed by
    /// [method`Pango.Context.set_font_map`].
    /// 
    /// If you are using Pango as part of a higher-level system,
    /// that system may have it's own way of create a `PangoContext`.
    /// For instance, the GTK toolkit has, among others,
    /// `gtk_widget_get_pango_context()`. Use those instead.
    @inlinable func createContext() -> Pango.ContextRef! {
        let result = pango_font_map_create_context(font_map_ptr)
        let rv = ContextRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Gets a font family by name.
    @inlinable func getFamily(name: UnsafePointer<CChar>!) -> Pango.FontFamilyRef! {
        let result = pango_font_map_get_family(font_map_ptr, name)
        let rv = FontFamilyRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Returns the current serial number of `fontmap`.
    /// 
    /// The serial number is initialized to an small number larger than zero
    /// when a new fontmap is created and is increased whenever the fontmap
    /// is changed. It may wrap, but will never have the value 0. Since it can
    /// wrap, never compare it with "less than", always use "not equals".
    /// 
    /// The fontmap can only be changed using backend-specific API, like changing
    /// fontmap resolution.
    /// 
    /// This can be used to automatically detect changes to a `PangoFontMap`,
    /// like in `PangoContext`.
    @inlinable func getSerial() -> Int {
        let result = pango_font_map_get_serial(font_map_ptr)
        let rv = Int(result)
        return rv
    }

    /// List all families for a fontmap.
    /// 
    /// Note that the returned families are not in any particular order.
    /// 
    /// `PangoFontMap` also implemented the [iface`Gio.ListModel`] interface
    /// for enumerating families.
    @inlinable func list(families: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<PangoFontFamily>?>?>!, nFamilies: UnsafeMutablePointer<gint>!) {
        
        pango_font_map_list_families(font_map_ptr, families, nFamilies)
        
    }

    /// Load the font in the fontmap that is the closest match for `desc`.
    @inlinable func loadFont<ContextT: ContextProtocol, FontDescriptionT: FontDescriptionProtocol>(context: ContextT, desc: FontDescriptionT) -> Pango.FontRef! {
        let result = pango_font_map_load_font(font_map_ptr, context.context_ptr, desc.font_description_ptr)
        let rv = FontRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Load a set of fonts in the fontmap that can be used to render
    /// a font matching `desc`.
    @inlinable func loadFontset<ContextT: ContextProtocol, FontDescriptionT: FontDescriptionProtocol, LanguageT: LanguageProtocol>(context: ContextT, desc: FontDescriptionT, language: LanguageT) -> Pango.FontsetRef! {
        let result = pango_font_map_load_fontset(font_map_ptr, context.context_ptr, desc.font_description_ptr, language.language_ptr)
        let rv = FontsetRef(gconstpointer: gconstpointer(result))
        return rv
    }
    /// Returns the current serial number of `fontmap`.
    /// 
    /// The serial number is initialized to an small number larger than zero
    /// when a new fontmap is created and is increased whenever the fontmap
    /// is changed. It may wrap, but will never have the value 0. Since it can
    /// wrap, never compare it with "less than", always use "not equals".
    /// 
    /// The fontmap can only be changed using backend-specific API, like changing
    /// fontmap resolution.
    /// 
    /// This can be used to automatically detect changes to a `PangoFontMap`,
    /// like in `PangoContext`.
    @inlinable var serial: Int {
        /// Returns the current serial number of `fontmap`.
        /// 
        /// The serial number is initialized to an small number larger than zero
        /// when a new fontmap is created and is increased whenever the fontmap
        /// is changed. It may wrap, but will never have the value 0. Since it can
        /// wrap, never compare it with "less than", always use "not equals".
        /// 
        /// The fontmap can only be changed using backend-specific API, like changing
        /// fontmap resolution.
        /// 
        /// This can be used to automatically detect changes to a `PangoFontMap`,
        /// like in `PangoContext`.
        get {
            let result = pango_font_map_get_serial(font_map_ptr)
        let rv = Int(result)
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = font_map_ptr.pointee.parent_instance
    return rv
        }
    }

}



// MARK: - Fontset Class

/// A `PangoFontset` represents a set of `PangoFont` to use when rendering text.
/// 
/// A `PangoFontset` is the result of resolving a `PangoFontDescription`
/// against a particular `PangoContext`. It has operations for finding the
/// component font for a particular Unicode character, and for finding a
/// composite set of metrics for the entire fontset.
///
/// The `FontsetProtocol` protocol exposes the methods and properties of an underlying `PangoFontset` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Fontset`.
/// Alternatively, use `FontsetRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FontsetProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `PangoFontset` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFontset` instance.
    var fontset_ptr: UnsafeMutablePointer<PangoFontset>! { get }

    /// Required Initialiser for types conforming to `FontsetProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `PangoFontset` represents a set of `PangoFont` to use when rendering text.
/// 
/// A `PangoFontset` is the result of resolving a `PangoFontDescription`
/// against a particular `PangoContext`. It has operations for finding the
/// component font for a particular Unicode character, and for finding a
/// composite set of metrics for the entire fontset.
///
/// The `FontsetRef` type acts as a lightweight Swift reference to an underlying `PangoFontset` instance.
/// It exposes methods that can operate on this data type through `FontsetProtocol` conformance.
/// Use `FontsetRef` only as an `unowned` reference to an existing `PangoFontset` instance.
///
public struct FontsetRef: FontsetProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `PangoFontset` instance.
    /// For type-safe access, use the generated, typed pointer `fontset_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontsetRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoFontset>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoFontset>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoFontset>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoFontset>?) {
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

    /// Reference intialiser for a related type that implements `FontsetProtocol`
    @inlinable init<T: FontsetProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FontsetProtocol>(_ other: T) -> FontsetRef { FontsetRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `PangoFontset` represents a set of `PangoFont` to use when rendering text.
/// 
/// A `PangoFontset` is the result of resolving a `PangoFontDescription`
/// against a particular `PangoContext`. It has operations for finding the
/// component font for a particular Unicode character, and for finding a
/// composite set of metrics for the entire fontset.
///
/// The `Fontset` type acts as a reference-counted owner of an underlying `PangoFontset` instance.
/// It provides the methods that can operate on this data type through `FontsetProtocol` conformance.
/// Use `Fontset` as a strong reference or owner of a `PangoFontset` instance.
///
open class Fontset: GLibObject.Object, FontsetProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Fontset` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoFontset>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Fontset` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoFontset>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Fontset` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Fontset` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Fontset` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoFontset>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Fontset` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoFontset>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `PangoFontset`.
    /// i.e., ownership is transferred to the `Fontset` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoFontset>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FontsetProtocol`
    /// Will retain `PangoFontset`.
    /// - Parameter other: an instance of a related type that implements `FontsetProtocol`
    @inlinable public init<T: FontsetProtocol>(fontset other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no Fontset properties

public enum FontsetSignalName: String, SignalNameProtocol {
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

// MARK: Fontset has no signals
// MARK: Fontset Class: FontsetProtocol extension (methods and fields)
public extension FontsetProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontset` instance.
    @inlinable var fontset_ptr: UnsafeMutablePointer<PangoFontset>! { return ptr?.assumingMemoryBound(to: PangoFontset.self) }

    /// Iterates through all the fonts in a fontset, calling `func` for
    /// each one.
    /// 
    /// If `func` returns `true`, that stops the iteration.
    @inlinable func foreach(`func`: PangoFontsetForeachFunc?, data: gpointer? = nil) {
        
        pango_fontset_foreach(fontset_ptr, `func`, data)
        
    }

    /// Returns the font in the fontset that contains the best
    /// glyph for a Unicode character.
    @inlinable func getFont(wc: Int) -> Pango.FontRef! {
        let result = pango_fontset_get_font(fontset_ptr, guint(wc))
        let rv = FontRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Get overall metric information for the fonts in the fontset.
    @inlinable func getMetrics() -> Pango.FontMetricsRef! {
        let result = pango_fontset_get_metrics(fontset_ptr)
        let rv = FontMetricsRef(gconstpointer: gconstpointer(result))
        return rv
    }
    /// Get overall metric information for the fonts in the fontset.
    @inlinable var metrics: Pango.FontMetricsRef! {
        /// Get overall metric information for the fonts in the fontset.
        get {
            let result = pango_fontset_get_metrics(fontset_ptr)
        let rv = FontMetricsRef(gconstpointer: gconstpointer(result))
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = fontset_ptr.pointee.parent_instance
    return rv
        }
    }

}



// MARK: - FontsetSimple Class

/// `PangoFontsetSimple` is a implementation of the abstract
/// `PangoFontset` base class as an array of fonts.
/// 
/// When creating a `PangoFontsetSimple`, you have to provide
/// the array of fonts that make up the fontset.
///
/// The `FontsetSimpleProtocol` protocol exposes the methods and properties of an underlying `PangoFontsetSimple` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontsetSimple`.
/// Alternatively, use `FontsetSimpleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FontsetSimpleProtocol: FontsetProtocol {
        /// Untyped pointer to the underlying `PangoFontsetSimple` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFontsetSimple` instance.
    var fontset_simple_ptr: UnsafeMutablePointer<PangoFontsetSimple>! { get }

    /// Required Initialiser for types conforming to `FontsetSimpleProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `PangoFontsetSimple` is a implementation of the abstract
/// `PangoFontset` base class as an array of fonts.
/// 
/// When creating a `PangoFontsetSimple`, you have to provide
/// the array of fonts that make up the fontset.
///
/// The `FontsetSimpleRef` type acts as a lightweight Swift reference to an underlying `PangoFontsetSimple` instance.
/// It exposes methods that can operate on this data type through `FontsetSimpleProtocol` conformance.
/// Use `FontsetSimpleRef` only as an `unowned` reference to an existing `PangoFontsetSimple` instance.
///
public struct FontsetSimpleRef: FontsetSimpleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `PangoFontsetSimple` instance.
    /// For type-safe access, use the generated, typed pointer `fontset_simple_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontsetSimpleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoFontsetSimple>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoFontsetSimple>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoFontsetSimple>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoFontsetSimple>?) {
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

    /// Reference intialiser for a related type that implements `FontsetSimpleProtocol`
    @inlinable init<T: FontsetSimpleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FontsetSimpleProtocol>(_ other: T) -> FontsetSimpleRef { FontsetSimpleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `PangoFontsetSimple` for the given language.
    @inlinable init<LanguageT: LanguageProtocol>( language: LanguageT) {
            let result = pango_fontset_simple_new(language.language_ptr)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }
}

/// `PangoFontsetSimple` is a implementation of the abstract
/// `PangoFontset` base class as an array of fonts.
/// 
/// When creating a `PangoFontsetSimple`, you have to provide
/// the array of fonts that make up the fontset.
///
/// The `FontsetSimple` type acts as a reference-counted owner of an underlying `PangoFontsetSimple` instance.
/// It provides the methods that can operate on this data type through `FontsetSimpleProtocol` conformance.
/// Use `FontsetSimple` as a strong reference or owner of a `PangoFontsetSimple` instance.
///
open class FontsetSimple: Fontset, FontsetSimpleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontsetSimple` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoFontsetSimple>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontsetSimple` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoFontsetSimple>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontsetSimple` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontsetSimple` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontsetSimple` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoFontsetSimple>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontsetSimple` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoFontsetSimple>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `PangoFontsetSimple`.
    /// i.e., ownership is transferred to the `FontsetSimple` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoFontsetSimple>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FontsetSimpleProtocol`
    /// Will retain `PangoFontsetSimple`.
    /// - Parameter other: an instance of a related type that implements `FontsetSimpleProtocol`
    @inlinable public init<T: FontsetSimpleProtocol>(fontsetSimple other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `PangoFontsetSimple` for the given language.
    @inlinable public init<LanguageT: LanguageProtocol>( language: LanguageT) {
            let result = pango_fontset_simple_new(language.language_ptr)
        let rv = result
            super.init(gpointer: (rv))
    if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

// MARK: no FontsetSimple properties

public enum FontsetSimpleSignalName: String, SignalNameProtocol {
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

// MARK: FontsetSimple has no signals
// MARK: FontsetSimple Class: FontsetSimpleProtocol extension (methods and fields)
public extension FontsetSimpleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontsetSimple` instance.
    @inlinable var fontset_simple_ptr: UnsafeMutablePointer<PangoFontsetSimple>! { return ptr?.assumingMemoryBound(to: PangoFontsetSimple.self) }

    /// Adds a font to the fontset.
    /// 
    /// The fontset takes ownership of `font`.
    @inlinable func append<FontT: FontProtocol>(font: FontT) {
        
        pango_fontset_simple_append(fontset_simple_ptr, font.font_ptr)
        
    }

    /// Returns the number of fonts in the fontset.
    @inlinable func size() -> Int {
        let result = pango_fontset_simple_size(fontset_simple_ptr)
        let rv = Int(result)
        return rv
    }


}



// MARK: - FontDescription Record

/// A `PangoFontDescription` describes a font in an implementation-independent
/// manner.
/// 
/// `PangoFontDescription` structures are used both to list what fonts are
/// available on the system and also for specifying the characteristics of
/// a font to load.
///
/// The `FontDescriptionProtocol` protocol exposes the methods and properties of an underlying `PangoFontDescription` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontDescription`.
/// Alternatively, use `FontDescriptionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FontDescriptionProtocol {
        /// Untyped pointer to the underlying `PangoFontDescription` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFontDescription` instance.
    var font_description_ptr: UnsafeMutablePointer<PangoFontDescription>! { get }

    /// Required Initialiser for types conforming to `FontDescriptionProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `PangoFontDescription` describes a font in an implementation-independent
/// manner.
/// 
/// `PangoFontDescription` structures are used both to list what fonts are
/// available on the system and also for specifying the characteristics of
/// a font to load.
///
/// The `FontDescriptionRef` type acts as a lightweight Swift reference to an underlying `PangoFontDescription` instance.
/// It exposes methods that can operate on this data type through `FontDescriptionProtocol` conformance.
/// Use `FontDescriptionRef` only as an `unowned` reference to an existing `PangoFontDescription` instance.
///
public struct FontDescriptionRef: FontDescriptionProtocol {
        /// Untyped pointer to the underlying `PangoFontDescription` instance.
    /// For type-safe access, use the generated, typed pointer `font_description_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontDescriptionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoFontDescription>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoFontDescription>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoFontDescription>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoFontDescription>?) {
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

    /// Reference intialiser for a related type that implements `FontDescriptionProtocol`
    @inlinable init<T: FontDescriptionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new font description structure with all fields unset.
    @inlinable init() {
            let result = pango_font_description_new()
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new font description from a string representation.
    /// 
    /// The string must have the form
    /// 
    ///     "\[FAMILY-LIST] \[STYLE-OPTIONS] \[SIZE] \[VARIATIONS]",
    /// 
    /// where FAMILY-LIST is a comma-separated list of families optionally
    /// terminated by a comma, STYLE_OPTIONS is a whitespace-separated list
    /// of words where each word describes one of style, variant, weight,
    /// stretch, or gravity, and SIZE is a decimal number (size in points)
    /// or optionally followed by the unit modifier "px" for absolute size.
    /// VARIATIONS is a comma-separated list of font variation
    /// specifications of the form "\`axis`=value" (the = sign is optional).
    /// 
    /// The following words are understood as styles:
    /// "Normal", "Roman", "Oblique", "Italic".
    /// 
    /// The following words are understood as variants:
    /// "Small-Caps", "All-Small-Caps", "Petite-Caps", "All-Petite-Caps",
    /// "Unicase", "Title-Caps".
    /// 
    /// The following words are understood as weights:
    /// "Thin", "Ultra-Light", "Extra-Light", "Light", "Semi-Light",
    /// "Demi-Light", "Book", "Regular", "Medium", "Semi-Bold", "Demi-Bold",
    /// "Bold", "Ultra-Bold", "Extra-Bold", "Heavy", "Black", "Ultra-Black",
    /// "Extra-Black".
    /// 
    /// The following words are understood as stretch values:
    /// "Ultra-Condensed", "Extra-Condensed", "Condensed", "Semi-Condensed",
    /// "Semi-Expanded", "Expanded", "Extra-Expanded", "Ultra-Expanded".
    /// 
    /// The following words are understood as gravity values:
    /// "Not-Rotated", "South", "Upside-Down", "North", "Rotated-Left",
    /// "East", "Rotated-Right", "West".
    /// 
    /// Any one of the options may be absent. If FAMILY-LIST is absent, then
    /// the family_name field of the resulting font description will be
    /// initialized to `nil`. If STYLE-OPTIONS is missing, then all style
    /// options will be set to the default values. If SIZE is missing, the
    /// size in the resulting font description will be set to 0.
    /// 
    /// A typical example:
    /// 
    ///     "Cantarell Italic Light 15 \`wght`=200"
    @inlinable static func from(string str: UnsafePointer<CChar>!) -> Pango.FontDescriptionRef! {
            let result = pango_font_description_from_string(str)
        guard let rv = FontDescriptionRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }
}

/// A `PangoFontDescription` describes a font in an implementation-independent
/// manner.
/// 
/// `PangoFontDescription` structures are used both to list what fonts are
/// available on the system and also for specifying the characteristics of
/// a font to load.
///
/// The `FontDescription` type acts as an owner of an underlying `PangoFontDescription` instance.
/// It provides the methods that can operate on this data type through `FontDescriptionProtocol` conformance.
/// Use `FontDescription` as a strong reference or owner of a `PangoFontDescription` instance.
///
open class FontDescription: FontDescriptionProtocol {
        /// Untyped pointer to the underlying `PangoFontDescription` instance.
    /// For type-safe access, use the generated, typed pointer `font_description_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontDescription` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoFontDescription>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontDescription` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoFontDescription>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontDescription` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontDescription` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontDescription` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoFontDescription>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontDescription` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoFontDescription>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoFontDescription` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FontDescription` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoFontDescription>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoFontDescription, cannot ref(font_description_ptr)
    }

    /// Reference intialiser for a related type that implements `FontDescriptionProtocol`
    /// `PangoFontDescription` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FontDescriptionProtocol`
    @inlinable public init<T: FontDescriptionProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoFontDescription, cannot ref(font_description_ptr)
    }

    /// Do-nothing destructor for `PangoFontDescription`.
    deinit {
        // no reference counting for PangoFontDescription, cannot unref(font_description_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoFontDescription, cannot ref(font_description_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoFontDescription, cannot ref(font_description_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoFontDescription, cannot ref(font_description_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoFontDescription, cannot ref(font_description_ptr)
    }

    /// Creates a new font description structure with all fields unset.
    @inlinable public init() {
            let result = pango_font_description_new()
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new font description from a string representation.
    /// 
    /// The string must have the form
    /// 
    ///     "\[FAMILY-LIST] \[STYLE-OPTIONS] \[SIZE] \[VARIATIONS]",
    /// 
    /// where FAMILY-LIST is a comma-separated list of families optionally
    /// terminated by a comma, STYLE_OPTIONS is a whitespace-separated list
    /// of words where each word describes one of style, variant, weight,
    /// stretch, or gravity, and SIZE is a decimal number (size in points)
    /// or optionally followed by the unit modifier "px" for absolute size.
    /// VARIATIONS is a comma-separated list of font variation
    /// specifications of the form "\`axis`=value" (the = sign is optional).
    /// 
    /// The following words are understood as styles:
    /// "Normal", "Roman", "Oblique", "Italic".
    /// 
    /// The following words are understood as variants:
    /// "Small-Caps", "All-Small-Caps", "Petite-Caps", "All-Petite-Caps",
    /// "Unicase", "Title-Caps".
    /// 
    /// The following words are understood as weights:
    /// "Thin", "Ultra-Light", "Extra-Light", "Light", "Semi-Light",
    /// "Demi-Light", "Book", "Regular", "Medium", "Semi-Bold", "Demi-Bold",
    /// "Bold", "Ultra-Bold", "Extra-Bold", "Heavy", "Black", "Ultra-Black",
    /// "Extra-Black".
    /// 
    /// The following words are understood as stretch values:
    /// "Ultra-Condensed", "Extra-Condensed", "Condensed", "Semi-Condensed",
    /// "Semi-Expanded", "Expanded", "Extra-Expanded", "Ultra-Expanded".
    /// 
    /// The following words are understood as gravity values:
    /// "Not-Rotated", "South", "Upside-Down", "North", "Rotated-Left",
    /// "East", "Rotated-Right", "West".
    /// 
    /// Any one of the options may be absent. If FAMILY-LIST is absent, then
    /// the family_name field of the resulting font description will be
    /// initialized to `nil`. If STYLE-OPTIONS is missing, then all style
    /// options will be set to the default values. If SIZE is missing, the
    /// size in the resulting font description will be set to 0.
    /// 
    /// A typical example:
    /// 
    ///     "Cantarell Italic Light 15 \`wght`=200"
    @inlinable public static func from(string str: UnsafePointer<CChar>!) -> Pango.FontDescription! {
            let result = pango_font_description_from_string(str)
        guard let rv = FontDescription(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

}

// MARK: no FontDescription properties

// MARK: no FontDescription signals

// MARK: FontDescription has no signals
// MARK: FontDescription Record: FontDescriptionProtocol extension (methods and fields)
public extension FontDescriptionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontDescription` instance.
    @inlinable var font_description_ptr: UnsafeMutablePointer<PangoFontDescription>! { return ptr?.assumingMemoryBound(to: PangoFontDescription.self) }

    /// Determines if the style attributes of `new_match` are a closer match
    /// for `desc` than those of `old_match` are, or if `old_match` is `nil`,
    /// determines if `new_match` is a match at all.
    /// 
    /// Approximate matching is done for weight and style; other style attributes
    /// must match exactly. Style attributes are all attributes other than family
    /// and size-related attributes. Approximate matching for style considers
    /// `PANGO_STYLE_OBLIQUE` and `PANGO_STYLE_ITALIC` as matches, but not as good
    /// a match as when the styles are equal.
    /// 
    /// Note that `old_match` must match `desc`.
    @inlinable func betterMatch<FontDescriptionT: FontDescriptionProtocol>(oldMatch: FontDescriptionT?, newMatch: FontDescriptionT) -> Bool {
        let result = pango_font_description_better_match(font_description_ptr, oldMatch?.font_description_ptr, newMatch.font_description_ptr)
        let rv = ((result) != 0)
        return rv
    }

    /// Make a copy of a `PangoFontDescription`.
    @inlinable func copy() -> Pango.FontDescriptionRef! {
        let result = pango_font_description_copy(font_description_ptr)
        guard let rv = FontDescriptionRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Make a copy of a `PangoFontDescription`, but don't duplicate
    /// allocated fields.
    /// 
    /// This is like [method`Pango.FontDescription.copy`], but only a shallow
    /// copy is made of the family name and other allocated fields. The result
    /// can only be used until `desc` is modified or freed. This is meant
    /// to be used when the copy is only needed temporarily.
    @inlinable func copyStatic() -> Pango.FontDescriptionRef! {
        let result = pango_font_description_copy_static(font_description_ptr)
        guard let rv = FontDescriptionRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Compares two font descriptions for equality.
    /// 
    /// Two font descriptions are considered equal if the fonts they describe
    /// are provably identical. This means that their masks do not have to match,
    /// as long as other fields are all the same. (Two font descriptions may
    /// result in identical fonts being loaded, but still compare `false`.)
    @inlinable func equal<FontDescriptionT: FontDescriptionProtocol>(desc2: FontDescriptionT) -> Bool {
        let result = pango_font_description_equal(font_description_ptr, desc2.font_description_ptr)
        let rv = ((result) != 0)
        return rv
    }

    /// Frees a font description.
    @inlinable func free() {
        
        pango_font_description_free(font_description_ptr)
        
    }

    /// Gets the family name field of a font description.
    /// 
    /// See [method`Pango.FontDescription.set_family`].
    @inlinable func getFamily() -> String! {
        let result = pango_font_description_get_family(font_description_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Gets the gravity field of a font description.
    /// 
    /// See [method`Pango.FontDescription.set_gravity`].
    @inlinable func getGravity() -> PangoGravity {
        let result = pango_font_description_get_gravity(font_description_ptr)
        let rv = result
        return rv
    }

    /// Determines which fields in a font description have been set.
    @inlinable func getSetFields() -> Pango.FontMask {
        let result = pango_font_description_get_set_fields(font_description_ptr)
        let rv = FontMask(result)
        return rv
    }

    /// Gets the size field of a font description.
    /// 
    /// See [method`Pango.FontDescription.set_size`].
    @inlinable func getSize() -> Int {
        let result = pango_font_description_get_size(font_description_ptr)
        let rv = Int(result)
        return rv
    }

    /// Determines whether the size of the font is in points (not absolute)
    /// or device units (absolute).
    /// 
    /// See [method`Pango.FontDescription.set_size`]
    /// and [method`Pango.FontDescription.set_absolute_size`].
    @inlinable func getSizeIsAbsolute() -> Bool {
        let result = pango_font_description_get_size_is_absolute(font_description_ptr)
        let rv = ((result) != 0)
        return rv
    }

    /// Gets the stretch field of a font description.
    /// 
    /// See [method`Pango.FontDescription.set_stretch`].
    @inlinable func getStretch() -> PangoStretch {
        let result = pango_font_description_get_stretch(font_description_ptr)
        let rv = result
        return rv
    }

    /// Gets the style field of a `PangoFontDescription`.
    /// 
    /// See [method`Pango.FontDescription.set_style`].
    @inlinable func getStyle() -> PangoStyle {
        let result = pango_font_description_get_style(font_description_ptr)
        let rv = result
        return rv
    }

    /// Gets the variant field of a `PangoFontDescription`.
    /// 
    /// See [method`Pango.FontDescription.set_variant`].
    @inlinable func getVariant() -> PangoVariant {
        let result = pango_font_description_get_variant(font_description_ptr)
        let rv = result
        return rv
    }

    /// Gets the variations field of a font description.
    /// 
    /// See [method`Pango.FontDescription.set_variations`].
    @inlinable func getVariations() -> String! {
        let result = pango_font_description_get_variations(font_description_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Gets the weight field of a font description.
    /// 
    /// See [method`Pango.FontDescription.set_weight`].
    @inlinable func getWeight() -> PangoWeight {
        let result = pango_font_description_get_weight(font_description_ptr)
        let rv = result
        return rv
    }

    /// Computes a hash of a `PangoFontDescription` structure.
    /// 
    /// This is suitable to be used, for example, as an argument
    /// to `g_hash_table_new()`. The hash value is independent of `desc-`&gt;mask.
    @inlinable func hash() -> Int {
        let result = pango_font_description_hash(font_description_ptr)
        let rv = Int(result)
        return rv
    }

    /// Merges the fields that are set in `desc_to_merge` into the fields in
    /// `desc`.
    /// 
    /// If `replace_existing` is `false`, only fields in `desc` that
    /// are not already set are affected. If `true`, then fields that are
    /// already set will be replaced as well.
    /// 
    /// If `desc_to_merge` is `nil`, this function performs nothing.
    @inlinable func merge(descToMerge: FontDescriptionRef? = nil, replaceExisting: Bool) {
            
        pango_font_description_merge(font_description_ptr, descToMerge?.font_description_ptr, gboolean((replaceExisting) ? 1 : 0))
            
    }
    /// Merges the fields that are set in `desc_to_merge` into the fields in
    /// `desc`.
    /// 
    /// If `replace_existing` is `false`, only fields in `desc` that
    /// are not already set are affected. If `true`, then fields that are
    /// already set will be replaced as well.
    /// 
    /// If `desc_to_merge` is `nil`, this function performs nothing.
    @inlinable func merge<FontDescriptionT: FontDescriptionProtocol>(descToMerge: FontDescriptionT?, replaceExisting: Bool) {
        
        pango_font_description_merge(font_description_ptr, descToMerge?.font_description_ptr, gboolean((replaceExisting) ? 1 : 0))
        
    }

    /// Merges the fields that are set in `desc_to_merge` into the fields in
    /// `desc`, without copying allocated fields.
    /// 
    /// This is like [method`Pango.FontDescription.merge`], but only a shallow copy
    /// is made of the family name and other allocated fields. `desc` can only
    /// be used until `desc_to_merge` is modified or freed. This is meant to
    /// be used when the merged font description is only needed temporarily.
    @inlinable func mergeStatic<FontDescriptionT: FontDescriptionProtocol>(descToMerge: FontDescriptionT, replaceExisting: Bool) {
        
        pango_font_description_merge_static(font_description_ptr, descToMerge.font_description_ptr, gboolean((replaceExisting) ? 1 : 0))
        
    }

    /// Sets the size field of a font description, in device units.
    /// 
    /// This is mutually exclusive with [method`Pango.FontDescription.set_size`]
    /// which sets the font size in points.
    @inlinable func setAbsolute(size: CDouble) {
        
        pango_font_description_set_absolute_size(font_description_ptr, size)
        
    }

    /// Sets the family name field of a font description.
    /// 
    /// The family
    /// name represents a family of related font styles, and will
    /// resolve to a particular `PangoFontFamily`. In some uses of
    /// `PangoFontDescription`, it is also possible to use a comma
    /// separated list of family names for this field.
    @inlinable func set(family: UnsafePointer<CChar>!) {
        
        pango_font_description_set_family(font_description_ptr, family)
        
    }

    /// Sets the family name field of a font description, without copying the string.
    /// 
    /// This is like [method`Pango.FontDescription.set_family`], except that no
    /// copy of `family` is made. The caller must make sure that the
    /// string passed in stays around until `desc` has been freed or the
    /// name is set again. This function can be used if `family` is a static
    /// string such as a C string literal, or if `desc` is only needed temporarily.
    @inlinable func setFamilyStatic(family: UnsafePointer<CChar>!) {
        
        pango_font_description_set_family_static(font_description_ptr, family)
        
    }

    /// Sets the gravity field of a font description.
    /// 
    /// The gravity field
    /// specifies how the glyphs should be rotated. If `gravity` is
    /// `PANGO_GRAVITY_AUTO`, this actually unsets the gravity mask on
    /// the font description.
    /// 
    /// This function is seldom useful to the user. Gravity should normally
    /// be set on a `PangoContext`.
    @inlinable func set(gravity: PangoGravity) {
        
        pango_font_description_set_gravity(font_description_ptr, gravity)
        
    }

    /// Sets the size field of a font description in fractional points.
    /// 
    /// This is mutually exclusive with
    /// [method`Pango.FontDescription.set_absolute_size`].
    @inlinable func set(size: Int) {
        
        pango_font_description_set_size(font_description_ptr, gint(size))
        
    }

    /// Sets the stretch field of a font description.
    /// 
    /// The [enum`Pango.Stretch`] field specifies how narrow or
    /// wide the font should be.
    @inlinable func set(stretch: PangoStretch) {
        
        pango_font_description_set_stretch(font_description_ptr, stretch)
        
    }

    /// Sets the style field of a `PangoFontDescription`.
    /// 
    /// The [enum`Pango.Style`] enumeration describes whether the font is
    /// slanted and the manner in which it is slanted; it can be either
    /// `PANGO_STYLE_NORMAL`, `PANGO_STYLE_ITALIC`, or `PANGO_STYLE_OBLIQUE`.
    /// 
    /// Most fonts will either have a italic style or an oblique style,
    /// but not both, and font matching in Pango will match italic
    /// specifications with oblique fonts and vice-versa if an exact
    /// match is not found.
    @inlinable func set(style: PangoStyle) {
        
        pango_font_description_set_style(font_description_ptr, style)
        
    }

    /// Sets the variant field of a font description.
    /// 
    /// The [enum`Pango.Variant`] can either be `PANGO_VARIANT_NORMAL`
    /// or `PANGO_VARIANT_SMALL_CAPS`.
    @inlinable func set(variant: PangoVariant) {
        
        pango_font_description_set_variant(font_description_ptr, variant)
        
    }

    /// Sets the variations field of a font description.
    /// 
    /// OpenType font variations allow to select a font instance by
    /// specifying values for a number of axes, such as width or weight.
    /// 
    /// The format of the variations string is
    /// 
    ///     AXIS1=VALUE,AXIS2=VALUE...
    /// 
    /// with each AXIS a 4 character tag that identifies a font axis,
    /// and each VALUE a floating point number. Unknown axes are ignored,
    /// and values are clamped to their allowed range.
    /// 
    /// Pango does not currently have a way to find supported axes of
    /// a font. Both harfbuzz and freetype have API for this. See
    /// for example [hb_ot_var_get_axis_infos](https://harfbuzz.github.io/harfbuzz-hb-ot-var.html`hb-ot-var-get-axis-infos`).
    @inlinable func set(variations: UnsafePointer<CChar>? = nil) {
        
        pango_font_description_set_variations(font_description_ptr, variations)
        
    }

    /// Sets the variations field of a font description.
    /// 
    /// This is like [method`Pango.FontDescription.set_variations`], except
    /// that no copy of `variations` is made. The caller must make sure that
    /// the string passed in stays around until `desc` has been freed
    /// or the name is set again. This function can be used if
    /// `variations` is a static string such as a C string literal,
    /// or if `desc` is only needed temporarily.
    @inlinable func setVariationsStatic(variations: UnsafePointer<CChar>!) {
        
        pango_font_description_set_variations_static(font_description_ptr, variations)
        
    }

    /// Sets the weight field of a font description.
    /// 
    /// The weight field
    /// specifies how bold or light the font should be. In addition
    /// to the values of the [enum`Pango.Weight`] enumeration, other
    /// intermediate numeric values are possible.
    @inlinable func set(weight: PangoWeight) {
        
        pango_font_description_set_weight(font_description_ptr, weight)
        
    }

    /// Creates a filename representation of a font description.
    /// 
    /// The filename is identical to the result from calling
    /// [method`Pango.FontDescription.to_string`], but with underscores
    /// instead of characters that are untypical in filenames, and in
    /// lower case only.
    @inlinable func toFilename() -> String! {
        let result = pango_font_description_to_filename(font_description_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Creates a string representation of a font description.
    /// 
    /// See [func`Pango.FontDescription.from_string`] for a description
    /// of the format of the string representation. The family list in
    /// the string description will only have a terminating comma if
    /// the last word of the list is a valid style option.
    @inlinable func toString() -> String! {
        let result = pango_font_description_to_string(font_description_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Unsets some of the fields in a `PangoFontDescription`.
    /// 
    /// The unset fields will get back to their default values.
    @inlinable func unsetFields(toUnset: FontMask) {
        
        pango_font_description_unset_fields(font_description_ptr, toUnset.value)
        
    }

    /// Create a new font description attribute.
    /// 
    /// This attribute allows setting family, style, weight, variant,
    /// stretch, and size simultaneously.
    @inlinable func attrFontDescNew() -> Pango.AttributeRef! {
        let result = pango_attr_font_desc_new(font_description_ptr)
        let rv = AttributeRef(gconstpointer: gconstpointer(result))
        return rv
    }
    /// Gets the family name field of a font description.
    /// 
    /// See [method`Pango.FontDescription.set_family`].
    @inlinable var family: String! {
        /// Gets the family name field of a font description.
        /// 
        /// See [method`Pango.FontDescription.set_family`].
        get {
            let result = pango_font_description_get_family(font_description_ptr)
        let rv = result.map({ String(cString: $0) })
            return rv
        }
        /// Sets the family name field of a font description.
        /// 
        /// The family
        /// name represents a family of related font styles, and will
        /// resolve to a particular `PangoFontFamily`. In some uses of
        /// `PangoFontDescription`, it is also possible to use a comma
        /// separated list of family names for this field.
        nonmutating set {
            pango_font_description_set_family(font_description_ptr, newValue)
        }
    }

    /// Gets the gravity field of a font description.
    /// 
    /// See [method`Pango.FontDescription.set_gravity`].
    @inlinable var gravity: PangoGravity {
        /// Gets the gravity field of a font description.
        /// 
        /// See [method`Pango.FontDescription.set_gravity`].
        get {
            let result = pango_font_description_get_gravity(font_description_ptr)
        let rv = result
            return rv
        }
        /// Sets the gravity field of a font description.
        /// 
        /// The gravity field
        /// specifies how the glyphs should be rotated. If `gravity` is
        /// `PANGO_GRAVITY_AUTO`, this actually unsets the gravity mask on
        /// the font description.
        /// 
        /// This function is seldom useful to the user. Gravity should normally
        /// be set on a `PangoContext`.
        nonmutating set {
            pango_font_description_set_gravity(font_description_ptr, newValue)
        }
    }

    /// Determines which fields in a font description have been set.
    @inlinable var setFields: Pango.FontMask {
        /// Determines which fields in a font description have been set.
        get {
            let result = pango_font_description_get_set_fields(font_description_ptr)
        let rv = FontMask(result)
            return rv
        }
    }

    /// Gets the size field of a font description.
    /// 
    /// See [method`Pango.FontDescription.set_size`].
    @inlinable var size: Int {
        /// Gets the size field of a font description.
        /// 
        /// See [method`Pango.FontDescription.set_size`].
        get {
            let result = pango_font_description_get_size(font_description_ptr)
        let rv = Int(result)
            return rv
        }
        /// Sets the size field of a font description in fractional points.
        /// 
        /// This is mutually exclusive with
        /// [method`Pango.FontDescription.set_absolute_size`].
        nonmutating set {
            pango_font_description_set_size(font_description_ptr, gint(newValue))
        }
    }

    /// Determines whether the size of the font is in points (not absolute)
    /// or device units (absolute).
    /// 
    /// See [method`Pango.FontDescription.set_size`]
    /// and [method`Pango.FontDescription.set_absolute_size`].
    @inlinable var sizeIsAbsolute: Bool {
        /// Determines whether the size of the font is in points (not absolute)
        /// or device units (absolute).
        /// 
        /// See [method`Pango.FontDescription.set_size`]
        /// and [method`Pango.FontDescription.set_absolute_size`].
        get {
            let result = pango_font_description_get_size_is_absolute(font_description_ptr)
        let rv = ((result) != 0)
            return rv
        }
    }

    /// Gets the stretch field of a font description.
    /// 
    /// See [method`Pango.FontDescription.set_stretch`].
    @inlinable var stretch: PangoStretch {
        /// Gets the stretch field of a font description.
        /// 
        /// See [method`Pango.FontDescription.set_stretch`].
        get {
            let result = pango_font_description_get_stretch(font_description_ptr)
        let rv = result
            return rv
        }
        /// Sets the stretch field of a font description.
        /// 
        /// The [enum`Pango.Stretch`] field specifies how narrow or
        /// wide the font should be.
        nonmutating set {
            pango_font_description_set_stretch(font_description_ptr, newValue)
        }
    }

    /// Gets the style field of a `PangoFontDescription`.
    /// 
    /// See [method`Pango.FontDescription.set_style`].
    @inlinable var style: PangoStyle {
        /// Gets the style field of a `PangoFontDescription`.
        /// 
        /// See [method`Pango.FontDescription.set_style`].
        get {
            let result = pango_font_description_get_style(font_description_ptr)
        let rv = result
            return rv
        }
        /// Sets the style field of a `PangoFontDescription`.
        /// 
        /// The [enum`Pango.Style`] enumeration describes whether the font is
        /// slanted and the manner in which it is slanted; it can be either
        /// `PANGO_STYLE_NORMAL`, `PANGO_STYLE_ITALIC`, or `PANGO_STYLE_OBLIQUE`.
        /// 
        /// Most fonts will either have a italic style or an oblique style,
        /// but not both, and font matching in Pango will match italic
        /// specifications with oblique fonts and vice-versa if an exact
        /// match is not found.
        nonmutating set {
            pango_font_description_set_style(font_description_ptr, newValue)
        }
    }

    /// Gets the variant field of a `PangoFontDescription`.
    /// 
    /// See [method`Pango.FontDescription.set_variant`].
    @inlinable var variant: PangoVariant {
        /// Gets the variant field of a `PangoFontDescription`.
        /// 
        /// See [method`Pango.FontDescription.set_variant`].
        get {
            let result = pango_font_description_get_variant(font_description_ptr)
        let rv = result
            return rv
        }
        /// Sets the variant field of a font description.
        /// 
        /// The [enum`Pango.Variant`] can either be `PANGO_VARIANT_NORMAL`
        /// or `PANGO_VARIANT_SMALL_CAPS`.
        nonmutating set {
            pango_font_description_set_variant(font_description_ptr, newValue)
        }
    }

    /// Gets the variations field of a font description.
    /// 
    /// See [method`Pango.FontDescription.set_variations`].
    @inlinable var variations: String! {
        /// Gets the variations field of a font description.
        /// 
        /// See [method`Pango.FontDescription.set_variations`].
        get {
            let result = pango_font_description_get_variations(font_description_ptr)
        let rv = result.map({ String(cString: $0) })
            return rv
        }
        /// Sets the variations field of a font description.
        /// 
        /// OpenType font variations allow to select a font instance by
        /// specifying values for a number of axes, such as width or weight.
        /// 
        /// The format of the variations string is
        /// 
        ///     AXIS1=VALUE,AXIS2=VALUE...
        /// 
        /// with each AXIS a 4 character tag that identifies a font axis,
        /// and each VALUE a floating point number. Unknown axes are ignored,
        /// and values are clamped to their allowed range.
        /// 
        /// Pango does not currently have a way to find supported axes of
        /// a font. Both harfbuzz and freetype have API for this. See
        /// for example [hb_ot_var_get_axis_infos](https://harfbuzz.github.io/harfbuzz-hb-ot-var.html`hb-ot-var-get-axis-infos`).
        nonmutating set {
            pango_font_description_set_variations(font_description_ptr, newValue)
        }
    }

    /// Gets the weight field of a font description.
    /// 
    /// See [method`Pango.FontDescription.set_weight`].
    @inlinable var weight: PangoWeight {
        /// Gets the weight field of a font description.
        /// 
        /// See [method`Pango.FontDescription.set_weight`].
        get {
            let result = pango_font_description_get_weight(font_description_ptr)
        let rv = result
            return rv
        }
        /// Sets the weight field of a font description.
        /// 
        /// The weight field
        /// specifies how bold or light the font should be. In addition
        /// to the values of the [enum`Pango.Weight`] enumeration, other
        /// intermediate numeric values are possible.
        nonmutating set {
            pango_font_description_set_weight(font_description_ptr, newValue)
        }
    }


}



/// Metatype/GType declaration for FontFace
public extension FontFaceClassRef {
    
    /// This getter returns the GLib type identifier registered for `FontFace`
    static var metatypeReference: GType { pango_font_face_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<PangoFontFaceClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: PangoFontFaceClass.self) }
    
    static var metatype: PangoFontFaceClass? { metatypePointer?.pointee } 
    
    static var wrapper: FontFaceClassRef? { FontFaceClassRef(metatypePointer) }
    
    
}

// MARK: - FontFaceClass Record


///
/// The `FontFaceClassProtocol` protocol exposes the methods and properties of an underlying `PangoFontFaceClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontFaceClass`.
/// Alternatively, use `FontFaceClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FontFaceClassProtocol {
        /// Untyped pointer to the underlying `PangoFontFaceClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFontFaceClass` instance.
    var _ptr: UnsafeMutablePointer<PangoFontFaceClass>! { get }

    /// Required Initialiser for types conforming to `FontFaceClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `FontFaceClassRef` type acts as a lightweight Swift reference to an underlying `PangoFontFaceClass` instance.
/// It exposes methods that can operate on this data type through `FontFaceClassProtocol` conformance.
/// Use `FontFaceClassRef` only as an `unowned` reference to an existing `PangoFontFaceClass` instance.
///
public struct FontFaceClassRef: FontFaceClassProtocol {
        /// Untyped pointer to the underlying `PangoFontFaceClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontFaceClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoFontFaceClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoFontFaceClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoFontFaceClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoFontFaceClass>?) {
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

    /// Reference intialiser for a related type that implements `FontFaceClassProtocol`
    @inlinable init<T: FontFaceClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FontFaceClass Record: FontFaceClassProtocol extension (methods and fields)
public extension FontFaceClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontFaceClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoFontFaceClass>! { return ptr?.assumingMemoryBound(to: PangoFontFaceClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
    return rv
        }
    }

    // var getFaceName is unavailable because get_face_name is void

    // var describe is unavailable because describe is void

    // var listSizes is unavailable because list_sizes is void

    // var isSynthesized is unavailable because is_synthesized is void

    // var getFamily is unavailable because get_family is void

    // var PangoReserved3 is unavailable because _pango_reserved3 is void

    // var PangoReserved4 is unavailable because _pango_reserved4 is void

}



/// Metatype/GType declaration for FontFamily
public extension FontFamilyClassRef {
    
    /// This getter returns the GLib type identifier registered for `FontFamily`
    static var metatypeReference: GType { pango_font_family_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<PangoFontFamilyClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: PangoFontFamilyClass.self) }
    
    static var metatype: PangoFontFamilyClass? { metatypePointer?.pointee } 
    
    static var wrapper: FontFamilyClassRef? { FontFamilyClassRef(metatypePointer) }
    
    
}

// MARK: - FontFamilyClass Record


///
/// The `FontFamilyClassProtocol` protocol exposes the methods and properties of an underlying `PangoFontFamilyClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontFamilyClass`.
/// Alternatively, use `FontFamilyClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FontFamilyClassProtocol {
        /// Untyped pointer to the underlying `PangoFontFamilyClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFontFamilyClass` instance.
    var _ptr: UnsafeMutablePointer<PangoFontFamilyClass>! { get }

    /// Required Initialiser for types conforming to `FontFamilyClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `FontFamilyClassRef` type acts as a lightweight Swift reference to an underlying `PangoFontFamilyClass` instance.
/// It exposes methods that can operate on this data type through `FontFamilyClassProtocol` conformance.
/// Use `FontFamilyClassRef` only as an `unowned` reference to an existing `PangoFontFamilyClass` instance.
///
public struct FontFamilyClassRef: FontFamilyClassProtocol {
        /// Untyped pointer to the underlying `PangoFontFamilyClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontFamilyClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoFontFamilyClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoFontFamilyClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoFontFamilyClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoFontFamilyClass>?) {
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

    /// Reference intialiser for a related type that implements `FontFamilyClassProtocol`
    @inlinable init<T: FontFamilyClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FontFamilyClass Record: FontFamilyClassProtocol extension (methods and fields)
public extension FontFamilyClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontFamilyClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoFontFamilyClass>! { return ptr?.assumingMemoryBound(to: PangoFontFamilyClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
    return rv
        }
    }

    // var listFaces is unavailable because list_faces is void

    // var getName is unavailable because get_name is void

    // var isMonospace is unavailable because is_monospace is void

    // var isVariable is unavailable because is_variable is void

    // var getFace is unavailable because get_face is void

    // var PangoReserved2 is unavailable because _pango_reserved2 is void

}



/// Metatype/GType declaration for FontMap
public extension FontMapClassRef {
    
    /// This getter returns the GLib type identifier registered for `FontMap`
    static var metatypeReference: GType { pango_font_map_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<PangoFontMapClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: PangoFontMapClass.self) }
    
    static var metatype: PangoFontMapClass? { metatypePointer?.pointee } 
    
    static var wrapper: FontMapClassRef? { FontMapClassRef(metatypePointer) }
    
    
}

// MARK: - FontMapClass Record

/// The `PangoFontMapClass` structure holds the virtual functions for
/// a particular `PangoFontMap` implementation.
///
/// The `FontMapClassProtocol` protocol exposes the methods and properties of an underlying `PangoFontMapClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontMapClass`.
/// Alternatively, use `FontMapClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FontMapClassProtocol {
        /// Untyped pointer to the underlying `PangoFontMapClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFontMapClass` instance.
    var _ptr: UnsafeMutablePointer<PangoFontMapClass>! { get }

    /// Required Initialiser for types conforming to `FontMapClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `PangoFontMapClass` structure holds the virtual functions for
/// a particular `PangoFontMap` implementation.
///
/// The `FontMapClassRef` type acts as a lightweight Swift reference to an underlying `PangoFontMapClass` instance.
/// It exposes methods that can operate on this data type through `FontMapClassProtocol` conformance.
/// Use `FontMapClassRef` only as an `unowned` reference to an existing `PangoFontMapClass` instance.
///
public struct FontMapClassRef: FontMapClassProtocol {
        /// Untyped pointer to the underlying `PangoFontMapClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontMapClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoFontMapClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoFontMapClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoFontMapClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoFontMapClass>?) {
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

    /// Reference intialiser for a related type that implements `FontMapClassProtocol`
    @inlinable init<T: FontMapClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FontMapClass Record: FontMapClassProtocol extension (methods and fields)
public extension FontMapClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontMapClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoFontMapClass>! { return ptr?.assumingMemoryBound(to: PangoFontMapClass.self) }


    /// parent `GObjectClass`
    @inlinable var parentClass: GObjectClass {
        /// parent `GObjectClass`
        get {
            let rv = _ptr.pointee.parent_class
    return rv
        }
    }

    // var loadFont is unavailable because load_font is void

    // var listFamilies is unavailable because list_families is void

    // var loadFontset is unavailable because load_fontset is void

    /// the type of rendering-system-dependent engines that
    /// can handle fonts of this fonts loaded with this fontmap.
    @inlinable var shapeEngineType: UnsafePointer<CChar>! {
        /// the type of rendering-system-dependent engines that
        /// can handle fonts of this fonts loaded with this fontmap.
        get {
            let rv = _ptr.pointee.shape_engine_type
    return rv
        }
    }

    // var getSerial is unavailable because get_serial is void

    // var changed is unavailable because changed is void

    // var getFamily is unavailable because get_family is void

    // var getFace is unavailable because get_face is void

}



// MARK: - FontMetrics Record

/// A `PangoFontMetrics` structure holds the overall metric information
/// for a font.
/// 
/// The information in a `PangoFontMetrics` structure may be restricted
/// to a script. The fields of this structure are private to implementations
/// of a font backend. See the documentation of the corresponding getters
/// for documentation of their meaning.
/// 
/// For an overview of the most important metrics, see:
/// 
/// &lt;picture&gt;
///   &lt;source srcset="fontmetrics-dark.png" media="(prefers-color-scheme: dark)"&gt;
///   &lt;img alt="Font metrics" src="fontmetrics-light.png"&gt;
/// &lt;/picture&gt;
///
/// The `FontMetricsProtocol` protocol exposes the methods and properties of an underlying `PangoFontMetrics` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontMetrics`.
/// Alternatively, use `FontMetricsRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FontMetricsProtocol {
        /// Untyped pointer to the underlying `PangoFontMetrics` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFontMetrics` instance.
    var font_metrics_ptr: UnsafeMutablePointer<PangoFontMetrics>! { get }

    /// Required Initialiser for types conforming to `FontMetricsProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `PangoFontMetrics` structure holds the overall metric information
/// for a font.
/// 
/// The information in a `PangoFontMetrics` structure may be restricted
/// to a script. The fields of this structure are private to implementations
/// of a font backend. See the documentation of the corresponding getters
/// for documentation of their meaning.
/// 
/// For an overview of the most important metrics, see:
/// 
/// &lt;picture&gt;
///   &lt;source srcset="fontmetrics-dark.png" media="(prefers-color-scheme: dark)"&gt;
///   &lt;img alt="Font metrics" src="fontmetrics-light.png"&gt;
/// &lt;/picture&gt;
///
/// The `FontMetricsRef` type acts as a lightweight Swift reference to an underlying `PangoFontMetrics` instance.
/// It exposes methods that can operate on this data type through `FontMetricsProtocol` conformance.
/// Use `FontMetricsRef` only as an `unowned` reference to an existing `PangoFontMetrics` instance.
///
public struct FontMetricsRef: FontMetricsProtocol {
        /// Untyped pointer to the underlying `PangoFontMetrics` instance.
    /// For type-safe access, use the generated, typed pointer `font_metrics_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontMetricsRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoFontMetrics>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoFontMetrics>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoFontMetrics>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoFontMetrics>?) {
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

    /// Reference intialiser for a related type that implements `FontMetricsProtocol`
    @inlinable init<T: FontMetricsProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `PangoFontMetrics` structure holds the overall metric information
/// for a font.
/// 
/// The information in a `PangoFontMetrics` structure may be restricted
/// to a script. The fields of this structure are private to implementations
/// of a font backend. See the documentation of the corresponding getters
/// for documentation of their meaning.
/// 
/// For an overview of the most important metrics, see:
/// 
/// &lt;picture&gt;
///   &lt;source srcset="fontmetrics-dark.png" media="(prefers-color-scheme: dark)"&gt;
///   &lt;img alt="Font metrics" src="fontmetrics-light.png"&gt;
/// &lt;/picture&gt;
///
/// The `FontMetrics` type acts as a reference-counted owner of an underlying `PangoFontMetrics` instance.
/// It provides the methods that can operate on this data type through `FontMetricsProtocol` conformance.
/// Use `FontMetrics` as a strong reference or owner of a `PangoFontMetrics` instance.
///
open class FontMetrics: FontMetricsProtocol {
        /// Untyped pointer to the underlying `PangoFontMetrics` instance.
    /// For type-safe access, use the generated, typed pointer `font_metrics_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontMetrics` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoFontMetrics>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontMetrics` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoFontMetrics>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontMetrics` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontMetrics` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontMetrics` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoFontMetrics>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontMetrics` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoFontMetrics>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `PangoFontMetrics`.
    /// i.e., ownership is transferred to the `FontMetrics` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoFontMetrics>) {
        ptr = UnsafeMutableRawPointer(op)
        pango_font_metrics_ref(ptr.assumingMemoryBound(to: PangoFontMetrics.self))
    }

    /// Reference intialiser for a related type that implements `FontMetricsProtocol`
    /// Will retain `PangoFontMetrics`.
    /// - Parameter other: an instance of a related type that implements `FontMetricsProtocol`
    @inlinable public init<T: FontMetricsProtocol>(_ other: T) {
        ptr = other.ptr
        pango_font_metrics_ref(ptr.assumingMemoryBound(to: PangoFontMetrics.self))
    }

    /// Releases the underlying `PangoFontMetrics` instance using `pango_font_metrics_unref`.
    deinit {
        pango_font_metrics_unref(ptr.assumingMemoryBound(to: PangoFontMetrics.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        pango_font_metrics_ref(ptr.assumingMemoryBound(to: PangoFontMetrics.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        pango_font_metrics_ref(ptr.assumingMemoryBound(to: PangoFontMetrics.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        pango_font_metrics_ref(ptr.assumingMemoryBound(to: PangoFontMetrics.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        pango_font_metrics_ref(ptr.assumingMemoryBound(to: PangoFontMetrics.self))
    }



}

// MARK: no FontMetrics properties

// MARK: no FontMetrics signals

// MARK: FontMetrics has no signals
// MARK: FontMetrics Record: FontMetricsProtocol extension (methods and fields)
public extension FontMetricsProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontMetrics` instance.
    @inlinable var font_metrics_ptr: UnsafeMutablePointer<PangoFontMetrics>! { return ptr?.assumingMemoryBound(to: PangoFontMetrics.self) }

    /// Gets the approximate character width for a font metrics structure.
    /// 
    /// This is merely a representative value useful, for example, for
    /// determining the initial size for a window. Actual characters in
    /// text will be wider and narrower than this.
    @inlinable func getApproximateCharWidth() -> Int {
        let result = pango_font_metrics_get_approximate_char_width(font_metrics_ptr)
        let rv = Int(result)
        return rv
    }

    /// Gets the approximate digit width for a font metrics structure.
    /// 
    /// This is merely a representative value useful, for example, for
    /// determining the initial size for a window. Actual digits in
    /// text can be wider or narrower than this, though this value
    /// is generally somewhat more accurate than the result of
    /// `pango_font_metrics_get_approximate_char_width()` for digits.
    @inlinable func getApproximateDigitWidth() -> Int {
        let result = pango_font_metrics_get_approximate_digit_width(font_metrics_ptr)
        let rv = Int(result)
        return rv
    }

    /// Gets the ascent from a font metrics structure.
    /// 
    /// The ascent is the distance from the baseline to the logical top
    /// of a line of text. (The logical top may be above or below the top
    /// of the actual drawn ink. It is necessary to lay out the text to
    /// figure where the ink will be.)
    @inlinable func getAscent() -> Int {
        let result = pango_font_metrics_get_ascent(font_metrics_ptr)
        let rv = Int(result)
        return rv
    }

    /// Gets the descent from a font metrics structure.
    /// 
    /// The descent is the distance from the baseline to the logical bottom
    /// of a line of text. (The logical bottom may be above or below the
    /// bottom of the actual drawn ink. It is necessary to lay out the text
    /// to figure where the ink will be.)
    @inlinable func getDescent() -> Int {
        let result = pango_font_metrics_get_descent(font_metrics_ptr)
        let rv = Int(result)
        return rv
    }

    /// Gets the line height from a font metrics structure.
    /// 
    /// The line height is the recommended distance between successive
    /// baselines in wrapped text using this font.
    /// 
    /// If the line height is not available, 0 is returned.
    @inlinable func getHeight() -> Int {
        let result = pango_font_metrics_get_height(font_metrics_ptr)
        let rv = Int(result)
        return rv
    }

    /// Gets the suggested position to draw the strikethrough.
    /// 
    /// The value returned is the distance *above* the
    /// baseline of the top of the strikethrough.
    @inlinable func getStrikethroughPosition() -> Int {
        let result = pango_font_metrics_get_strikethrough_position(font_metrics_ptr)
        let rv = Int(result)
        return rv
    }

    /// Gets the suggested thickness to draw for the strikethrough.
    @inlinable func getStrikethroughThickness() -> Int {
        let result = pango_font_metrics_get_strikethrough_thickness(font_metrics_ptr)
        let rv = Int(result)
        return rv
    }

    /// Gets the suggested position to draw the underline.
    /// 
    /// The value returned is the distance *above* the baseline of the top
    /// of the underline. Since most fonts have underline positions beneath
    /// the baseline, this value is typically negative.
    @inlinable func getUnderlinePosition() -> Int {
        let result = pango_font_metrics_get_underline_position(font_metrics_ptr)
        let rv = Int(result)
        return rv
    }

    /// Gets the suggested thickness to draw for the underline.
    @inlinable func getUnderlineThickness() -> Int {
        let result = pango_font_metrics_get_underline_thickness(font_metrics_ptr)
        let rv = Int(result)
        return rv
    }

    /// Increase the reference count of a font metrics structure by one.
    @discardableResult @inlinable func ref() -> Pango.FontMetricsRef! {
        let result = pango_font_metrics_ref(font_metrics_ptr)
        guard let rv = FontMetricsRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Decrease the reference count of a font metrics structure by one.
    /// 
    /// If the result is zero, frees the structure and any associated memory.
    @inlinable func unref() {
        
        pango_font_metrics_unref(font_metrics_ptr)
        
    }
    /// Gets the approximate character width for a font metrics structure.
    /// 
    /// This is merely a representative value useful, for example, for
    /// determining the initial size for a window. Actual characters in
    /// text will be wider and narrower than this.
    @inlinable var approximateCharWidth: Int {
        /// Gets the approximate character width for a font metrics structure.
        /// 
        /// This is merely a representative value useful, for example, for
        /// determining the initial size for a window. Actual characters in
        /// text will be wider and narrower than this.
        get {
            let result = pango_font_metrics_get_approximate_char_width(font_metrics_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// Gets the approximate digit width for a font metrics structure.
    /// 
    /// This is merely a representative value useful, for example, for
    /// determining the initial size for a window. Actual digits in
    /// text can be wider or narrower than this, though this value
    /// is generally somewhat more accurate than the result of
    /// `pango_font_metrics_get_approximate_char_width()` for digits.
    @inlinable var approximateDigitWidth: Int {
        /// Gets the approximate digit width for a font metrics structure.
        /// 
        /// This is merely a representative value useful, for example, for
        /// determining the initial size for a window. Actual digits in
        /// text can be wider or narrower than this, though this value
        /// is generally somewhat more accurate than the result of
        /// `pango_font_metrics_get_approximate_char_width()` for digits.
        get {
            let result = pango_font_metrics_get_approximate_digit_width(font_metrics_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// Gets the ascent from a font metrics structure.
    /// 
    /// The ascent is the distance from the baseline to the logical top
    /// of a line of text. (The logical top may be above or below the top
    /// of the actual drawn ink. It is necessary to lay out the text to
    /// figure where the ink will be.)
    @inlinable var ascent: Int {
        /// Gets the ascent from a font metrics structure.
        /// 
        /// The ascent is the distance from the baseline to the logical top
        /// of a line of text. (The logical top may be above or below the top
        /// of the actual drawn ink. It is necessary to lay out the text to
        /// figure where the ink will be.)
        get {
            let result = pango_font_metrics_get_ascent(font_metrics_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// Gets the descent from a font metrics structure.
    /// 
    /// The descent is the distance from the baseline to the logical bottom
    /// of a line of text. (The logical bottom may be above or below the
    /// bottom of the actual drawn ink. It is necessary to lay out the text
    /// to figure where the ink will be.)
    @inlinable var descent: Int {
        /// Gets the descent from a font metrics structure.
        /// 
        /// The descent is the distance from the baseline to the logical bottom
        /// of a line of text. (The logical bottom may be above or below the
        /// bottom of the actual drawn ink. It is necessary to lay out the text
        /// to figure where the ink will be.)
        get {
            let result = pango_font_metrics_get_descent(font_metrics_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// Gets the line height from a font metrics structure.
    /// 
    /// The line height is the recommended distance between successive
    /// baselines in wrapped text using this font.
    /// 
    /// If the line height is not available, 0 is returned.
    @inlinable var height: Int {
        /// Gets the line height from a font metrics structure.
        /// 
        /// The line height is the recommended distance between successive
        /// baselines in wrapped text using this font.
        /// 
        /// If the line height is not available, 0 is returned.
        get {
            let result = pango_font_metrics_get_height(font_metrics_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// Gets the suggested position to draw the strikethrough.
    /// 
    /// The value returned is the distance *above* the
    /// baseline of the top of the strikethrough.
    @inlinable var strikethroughPosition: Int {
        /// Gets the suggested position to draw the strikethrough.
        /// 
        /// The value returned is the distance *above* the
        /// baseline of the top of the strikethrough.
        get {
            let result = pango_font_metrics_get_strikethrough_position(font_metrics_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// Gets the suggested thickness to draw for the strikethrough.
    @inlinable var strikethroughThickness: Int {
        /// Gets the suggested thickness to draw for the strikethrough.
        get {
            let result = pango_font_metrics_get_strikethrough_thickness(font_metrics_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// Gets the suggested position to draw the underline.
    /// 
    /// The value returned is the distance *above* the baseline of the top
    /// of the underline. Since most fonts have underline positions beneath
    /// the baseline, this value is typically negative.
    @inlinable var underlinePosition: Int {
        /// Gets the suggested position to draw the underline.
        /// 
        /// The value returned is the distance *above* the baseline of the top
        /// of the underline. Since most fonts have underline positions beneath
        /// the baseline, this value is typically negative.
        get {
            let result = pango_font_metrics_get_underline_position(font_metrics_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// Gets the suggested thickness to draw for the underline.
    @inlinable var underlineThickness: Int {
        /// Gets the suggested thickness to draw for the underline.
        get {
            let result = pango_font_metrics_get_underline_thickness(font_metrics_ptr)
        let rv = Int(result)
            return rv
        }
    }

    // var refCount is unavailable because ref_count is private

    // var _ascent is unavailable because ascent is private

    // var _descent is unavailable because descent is private

    // var _height is unavailable because height is private

    // var _approximateCharWidth is unavailable because approximate_char_width is private

    // var _approximateDigitWidth is unavailable because approximate_digit_width is private

    // var _underlinePosition is unavailable because underline_position is private

    // var _underlineThickness is unavailable because underline_thickness is private

    // var _strikethroughPosition is unavailable because strikethrough_position is private

    // var _strikethroughThickness is unavailable because strikethrough_thickness is private

}



/// Metatype/GType declaration for Fontset
public extension FontsetClassRef {
    
    /// This getter returns the GLib type identifier registered for `Fontset`
    static var metatypeReference: GType { pango_fontset_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<PangoFontsetClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: PangoFontsetClass.self) }
    
    static var metatype: PangoFontsetClass? { metatypePointer?.pointee } 
    
    static var wrapper: FontsetClassRef? { FontsetClassRef(metatypePointer) }
    
    
}

// MARK: - FontsetClass Record

/// The `PangoFontsetClass` structure holds the virtual functions for
/// a particular `PangoFontset` implementation.
///
/// The `FontsetClassProtocol` protocol exposes the methods and properties of an underlying `PangoFontsetClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontsetClass`.
/// Alternatively, use `FontsetClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FontsetClassProtocol {
        /// Untyped pointer to the underlying `PangoFontsetClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFontsetClass` instance.
    var _ptr: UnsafeMutablePointer<PangoFontsetClass>! { get }

    /// Required Initialiser for types conforming to `FontsetClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `PangoFontsetClass` structure holds the virtual functions for
/// a particular `PangoFontset` implementation.
///
/// The `FontsetClassRef` type acts as a lightweight Swift reference to an underlying `PangoFontsetClass` instance.
/// It exposes methods that can operate on this data type through `FontsetClassProtocol` conformance.
/// Use `FontsetClassRef` only as an `unowned` reference to an existing `PangoFontsetClass` instance.
///
public struct FontsetClassRef: FontsetClassProtocol {
        /// Untyped pointer to the underlying `PangoFontsetClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontsetClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoFontsetClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoFontsetClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoFontsetClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoFontsetClass>?) {
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

    /// Reference intialiser for a related type that implements `FontsetClassProtocol`
    @inlinable init<T: FontsetClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FontsetClass Record: FontsetClassProtocol extension (methods and fields)
public extension FontsetClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontsetClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoFontsetClass>! { return ptr?.assumingMemoryBound(to: PangoFontsetClass.self) }


    /// parent `GObjectClass`
    @inlinable var parentClass: GObjectClass {
        /// parent `GObjectClass`
        get {
            let rv = _ptr.pointee.parent_class
    return rv
        }
    }

    // var getFont is unavailable because get_font is void

    // var getMetrics is unavailable because get_metrics is void

    // var getLanguage is unavailable because get_language is void

    // var foreach is unavailable because foreach is void

    // var PangoReserved1 is unavailable because _pango_reserved1 is void

    // var PangoReserved2 is unavailable because _pango_reserved2 is void

    // var PangoReserved3 is unavailable because _pango_reserved3 is void

    // var PangoReserved4 is unavailable because _pango_reserved4 is void

}



/// Metatype/GType declaration for FontsetSimple
public extension FontsetSimpleClassRef {
    
    /// This getter returns the GLib type identifier registered for `FontsetSimple`
    static var metatypeReference: GType { pango_fontset_simple_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<PangoFontsetSimpleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: PangoFontsetSimpleClass.self) }
    
    static var metatype: PangoFontsetSimpleClass? { metatypePointer?.pointee } 
    
    static var wrapper: FontsetSimpleClassRef? { FontsetSimpleClassRef(metatypePointer) }
    
    
}

// MARK: - FontsetSimpleClass Record


///
/// The `FontsetSimpleClassProtocol` protocol exposes the methods and properties of an underlying `PangoFontsetSimpleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontsetSimpleClass`.
/// Alternatively, use `FontsetSimpleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FontsetSimpleClassProtocol {
        /// Untyped pointer to the underlying `PangoFontsetSimpleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFontsetSimpleClass` instance.
    var _ptr: UnsafeMutablePointer<PangoFontsetSimpleClass>! { get }

    /// Required Initialiser for types conforming to `FontsetSimpleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `FontsetSimpleClassRef` type acts as a lightweight Swift reference to an underlying `PangoFontsetSimpleClass` instance.
/// It exposes methods that can operate on this data type through `FontsetSimpleClassProtocol` conformance.
/// Use `FontsetSimpleClassRef` only as an `unowned` reference to an existing `PangoFontsetSimpleClass` instance.
///
public struct FontsetSimpleClassRef: FontsetSimpleClassProtocol {
        /// Untyped pointer to the underlying `PangoFontsetSimpleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontsetSimpleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoFontsetSimpleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoFontsetSimpleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoFontsetSimpleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoFontsetSimpleClass>?) {
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

    /// Reference intialiser for a related type that implements `FontsetSimpleClassProtocol`
    @inlinable init<T: FontsetSimpleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FontsetSimpleClass Record: FontsetSimpleClassProtocol extension (methods and fields)
public extension FontsetSimpleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontsetSimpleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoFontsetSimpleClass>! { return ptr?.assumingMemoryBound(to: PangoFontsetSimpleClass.self) }



}



