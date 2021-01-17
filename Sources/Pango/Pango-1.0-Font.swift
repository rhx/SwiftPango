import CGLib
import CPango
import GLib
import GLibObject

// MARK: - Font Class

/// The `FontProtocol` protocol exposes the methods and properties of an underlying `PangoFont` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Font`.
/// Alternatively, use `FontRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoFont` structure is used to represent
/// a font in a rendering-system-independent matter.
/// To create an implementation of a `PangoFont`,
/// the rendering-system specific code should allocate
/// a larger structure that contains a nested
/// `PangoFont`, fill in the <structfield>klass</structfield> member of
/// the nested `PangoFont` with a pointer to
/// a appropriate `PangoFontClass`, then call
/// `pango_font_init()` on the structure.
/// 
/// The `PangoFont` structure contains one member
/// which the implementation fills in.
public protocol FontProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `PangoFont` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFont` instance.
    var font_ptr: UnsafeMutablePointer<PangoFont>! { get }

}

/// The `FontRef` type acts as a lightweight Swift reference to an underlying `PangoFont` instance.
/// It exposes methods that can operate on this data type through `FontProtocol` conformance.
/// Use `FontRef` only as an `unowned` reference to an existing `PangoFont` instance.
///
/// The `PangoFont` structure is used to represent
/// a font in a rendering-system-independent matter.
/// To create an implementation of a `PangoFont`,
/// the rendering-system specific code should allocate
/// a larger structure that contains a nested
/// `PangoFont`, fill in the <structfield>klass</structfield> member of
/// the nested `PangoFont` with a pointer to
/// a appropriate `PangoFontClass`, then call
/// `pango_font_init()` on the structure.
/// 
/// The `PangoFont` structure contains one member
/// which the implementation fills in.
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

    }

/// The `Font` type acts as a reference-counted owner of an underlying `PangoFont` instance.
/// It provides the methods that can operate on this data type through `FontProtocol` conformance.
/// Use `Font` as a strong reference or owner of a `PangoFont` instance.
///
/// The `PangoFont` structure is used to represent
/// a font in a rendering-system-independent matter.
/// To create an implementation of a `PangoFont`,
/// the rendering-system specific code should allocate
/// a larger structure that contains a nested
/// `PangoFont`, fill in the <structfield>klass</structfield> member of
/// the nested `PangoFont` with a pointer to
/// a appropriate `PangoFontClass`, then call
/// `pango_font_init()` on the structure.
/// 
/// The `PangoFont` structure contains one member
/// which the implementation fills in.
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
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
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

// MARK: Font has no signals
// MARK: Font Class: FontProtocol extension (methods and fields)
public extension FontProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFont` instance.
    @inlinable var font_ptr: UnsafeMutablePointer<PangoFont>! { return ptr?.assumingMemoryBound(to: PangoFont.self) }

    /// Returns a description of the font, with font size set in points.
    /// Use `pango_font_describe_with_absolute_size()` if you want the font
    /// size in device units.
    @inlinable func describe() -> FontDescriptionRef! {
        let rv = FontDescriptionRef(gconstpointer: gconstpointer(pango_font_describe(font_ptr)))
        return rv
    }

    /// Returns a description of the font, with absolute font size set
    /// (in device units). Use `pango_font_describe()` if you want the font
    /// size in points.
    @inlinable func describeWithAbsoluteSize() -> FontDescriptionRef! {
        let rv = FontDescriptionRef(gconstpointer: gconstpointer(pango_font_describe_with_absolute_size(font_ptr)))
        return rv
    }

    /// Finds the best matching shaper for a font for a particular
    /// language tag and character point.
    ///
    /// **find_shaper is deprecated:**
    /// Shape engines are no longer used
    @available(*, deprecated) @inlinable func findShaper<LanguageT: LanguageProtocol>(language: LanguageT, ch: guint32) -> EngineShapeRef! {
        let rv = EngineShapeRef(gconstpointer: gconstpointer(pango_font_find_shaper(font_ptr, language.language_ptr, ch)))
        return rv
    }

    /// Computes the coverage map for a given font and language tag.
    @inlinable func getCoverage<LanguageT: LanguageProtocol>(language: LanguageT) -> CoverageRef! {
        let rv = CoverageRef(gconstpointer: gconstpointer(pango_font_get_coverage(font_ptr, language.language_ptr)))
        return rv
    }

    /// Gets the `PangoFontFace` to which `font` belongs.
    @inlinable func getFace() -> FontFaceRef! {
        let rv = FontFaceRef(gconstpointer: gconstpointer(pango_font_get_face(font_ptr)))
        return rv
    }

    /// Obtain the OpenType features that are provided by the font.
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
    /// Note that the font maintains a <firstterm>weak</firstterm> reference
    /// to the font map, so if all references to font map are dropped, the font
    /// map will be finalized even if there are fonts created with the font
    /// map that are still alive.  In that case this function will return `nil`.
    /// It is the responsibility of the user to ensure that the font map is kept
    /// alive.  In most uses this is not an issue as a `PangoContext` holds
    /// a reference to the font map.
    @inlinable func getFontMap() -> FontMapRef! {
        let rv = FontMapRef(gconstpointer: gconstpointer(pango_font_get_font_map(font_ptr)))
        return rv
    }

    /// Gets the logical and ink extents of a glyph within a font. The
    /// coordinate system for each rectangle has its origin at the
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
    /// Gets the logical and ink extents of a glyph within a font. The
    /// coordinate system for each rectangle has its origin at the
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

    /// Get a hb_font_t object backing this font.
    /// 
    /// Note that the objects returned by this function
    /// are cached and immutable. If you need to make
    /// changes to the hb_font_t, use `hb_font_create_sub_font()`.
    @inlinable func getHbFont() -> UnsafeMutablePointer<hb_font_t>? {
        let rv = pango_font_get_hb_font(font_ptr)
        return rv
    }

    /// Gets overall metric information for a font. Since the metrics may be
    /// substantially different for different scripts, a language tag can
    /// be provided to indicate that the metrics should be retrieved that
    /// correspond to the `script(s)` used by that language.
    /// 
    /// If `font` is `nil`, this function gracefully sets some sane values in the
    /// output variables and returns.
    @inlinable func getMetrics(language: LanguageRef? = nil) -> FontMetricsRef! {
        let rv = FontMetricsRef(gconstpointer: gconstpointer(pango_font_get_metrics(font_ptr, language?.language_ptr)))
        return rv
    }
    /// Gets overall metric information for a font. Since the metrics may be
    /// substantially different for different scripts, a language tag can
    /// be provided to indicate that the metrics should be retrieved that
    /// correspond to the `script(s)` used by that language.
    /// 
    /// If `font` is `nil`, this function gracefully sets some sane values in the
    /// output variables and returns.
    @inlinable func getMetrics<LanguageT: LanguageProtocol>(language: LanguageT?) -> FontMetricsRef! {
        let rv = FontMetricsRef(gconstpointer: gconstpointer(pango_font_get_metrics(font_ptr, language?.language_ptr)))
        return rv
    }

    /// Returns whether the font provides a glyph for this character.
    /// 
    /// Returns `true` if `font` can render `wc`
    @inlinable func hasChar(wc: gunichar) -> Bool {
        let rv = ((pango_font_has_char(font_ptr, wc)) != 0)
        return rv
    }
    /// Gets the `PangoFontFace` to which `font` belongs.
    @inlinable var face: FontFaceRef! {
        /// Gets the `PangoFontFace` to which `font` belongs.
        get {
            let rv = FontFaceRef(gconstpointer: gconstpointer(pango_font_get_face(font_ptr)))
            return rv
        }
    }

    /// Gets the font map for which the font was created.
    /// 
    /// Note that the font maintains a <firstterm>weak</firstterm> reference
    /// to the font map, so if all references to font map are dropped, the font
    /// map will be finalized even if there are fonts created with the font
    /// map that are still alive.  In that case this function will return `nil`.
    /// It is the responsibility of the user to ensure that the font map is kept
    /// alive.  In most uses this is not an issue as a `PangoContext` holds
    /// a reference to the font map.
    @inlinable var fontMap: FontMapRef! {
        /// Gets the font map for which the font was created.
        /// 
        /// Note that the font maintains a <firstterm>weak</firstterm> reference
        /// to the font map, so if all references to font map are dropped, the font
        /// map will be finalized even if there are fonts created with the font
        /// map that are still alive.  In that case this function will return `nil`.
        /// It is the responsibility of the user to ensure that the font map is kept
        /// alive.  In most uses this is not an issue as a `PangoContext` holds
        /// a reference to the font map.
        get {
            let rv = FontMapRef(gconstpointer: gconstpointer(pango_font_get_font_map(font_ptr)))
            return rv
        }
    }

    /// Get a hb_font_t object backing this font.
    /// 
    /// Note that the objects returned by this function
    /// are cached and immutable. If you need to make
    /// changes to the hb_font_t, use `hb_font_create_sub_font()`.
    @inlinable var hbFont: UnsafeMutablePointer<hb_font_t>? {
        /// Get a hb_font_t object backing this font.
        /// 
        /// Note that the objects returned by this function
        /// are cached and immutable. If you need to make
        /// changes to the hb_font_t, use `hb_font_create_sub_font()`.
        get {
            let rv = pango_font_get_hb_font(font_ptr)
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



