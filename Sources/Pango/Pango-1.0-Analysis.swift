import CGLib
import CPango
import GLib
import GLibObject

// MARK: - Analysis Record

/// The `AnalysisProtocol` protocol exposes the methods and properties of an underlying `PangoAnalysis` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Analysis`.
/// Alternatively, use `AnalysisRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoAnalysis` structure stores information about
/// the properties of a segment of text.
public protocol AnalysisProtocol {
        /// Untyped pointer to the underlying `PangoAnalysis` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoAnalysis` instance.
    var _ptr: UnsafeMutablePointer<PangoAnalysis>! { get }

    /// Required Initialiser for types conforming to `AnalysisProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `AnalysisRef` type acts as a lightweight Swift reference to an underlying `PangoAnalysis` instance.
/// It exposes methods that can operate on this data type through `AnalysisProtocol` conformance.
/// Use `AnalysisRef` only as an `unowned` reference to an existing `PangoAnalysis` instance.
///
/// The `PangoAnalysis` structure stores information about
/// the properties of a segment of text.
public struct AnalysisRef: AnalysisProtocol {
        /// Untyped pointer to the underlying `PangoAnalysis` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AnalysisRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoAnalysis>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoAnalysis>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoAnalysis>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoAnalysis>?) {
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

    /// Reference intialiser for a related type that implements `AnalysisProtocol`
    @inlinable init<T: AnalysisProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AnalysisProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AnalysisProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AnalysisProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AnalysisProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AnalysisProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Analysis` type acts as an owner of an underlying `PangoAnalysis` instance.
/// It provides the methods that can operate on this data type through `AnalysisProtocol` conformance.
/// Use `Analysis` as a strong reference or owner of a `PangoAnalysis` instance.
///
/// The `PangoAnalysis` structure stores information about
/// the properties of a segment of text.
open class Analysis: AnalysisProtocol {
        /// Untyped pointer to the underlying `PangoAnalysis` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Analysis` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoAnalysis>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Analysis` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoAnalysis>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Analysis` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Analysis` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Analysis` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoAnalysis>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Analysis` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoAnalysis>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoAnalysis` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Analysis` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoAnalysis>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoAnalysis, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `AnalysisProtocol`
    /// `PangoAnalysis` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `AnalysisProtocol`
    @inlinable public init<T: AnalysisProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoAnalysis, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `PangoAnalysis`.
    deinit {
        // no reference counting for PangoAnalysis, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AnalysisProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AnalysisProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoAnalysis, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AnalysisProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AnalysisProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoAnalysis, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AnalysisProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AnalysisProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoAnalysis, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AnalysisProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AnalysisProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoAnalysis, cannot ref(_ptr)
    }



}

// MARK: no Analysis properties

// MARK: no Analysis signals

// MARK: Analysis has no signals
// MARK: Analysis Record: AnalysisProtocol extension (methods and fields)
public extension AnalysisProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoAnalysis` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoAnalysis>! { return ptr?.assumingMemoryBound(to: PangoAnalysis.self) }

    /// Determines possible line, word, and character breaks for a string of
    /// Unicode text with a single analysis.
    /// 
    /// For most purposes you may want to use `pango_get_log_attrs()`.
    ///
    /// **break is deprecated:**
    /// Use pango_default_break() and pango_tailor_break()
    @available(*, deprecated) @inlinable func break_(text: UnsafePointer<gchar>!, length: Int, attrs: UnsafeMutablePointer<PangoLogAttr>!, attrsLen: Int) {
        pango_break(text, gint(length), _ptr, attrs, gint(attrsLen))
    
    }

    /// This is the default break algorithm.
    /// 
    /// It applies Unicode rules without language-specific tailoring, therefore
    /// the `analyis` argument is unused and can be `nil`.
    /// 
    /// See `pango_tailor_break()` for language-specific breaks.
    @inlinable func defaultBreak<LogAttrT: LogAttrProtocol>(text: UnsafePointer<gchar>!, length: Int, attrs: LogAttrT, attrsLen: Int) {
        pango_default_break(text, gint(length), _ptr, attrs._ptr, gint(attrsLen))
    
    }

    /// Convert the characters in `text` into glyphs.
    /// 
    /// Given a segment of text and the corresponding `PangoAnalysis` structure
    /// returned from [func`itemize`], convert the characters into glyphs. You
    /// may also pass in only a substring of the item from [func`itemize`].
    /// 
    /// It is recommended that you use [func`shape_full`] instead, since
    /// that API allows for shaping interaction happening across text item
    /// boundaries.
    /// 
    /// Note that the extra attributes in the `analyis` that is returned from
    /// [func`itemize`] have indices that are relative to the entire paragraph,
    /// so you need to subtract the item offset from their indices before
    /// calling [func`shape`].
    @inlinable func shape<GlyphStringT: GlyphStringProtocol>(text: UnsafePointer<CChar>!, length: Int, glyphs: GlyphStringT) {
        pango_shape(text, gint(length), _ptr, glyphs.glyph_string_ptr)
    
    }

    /// Convert the characters in `text` into glyphs.
    /// 
    /// Given a segment of text and the corresponding `PangoAnalysis` structure
    /// returned from [func`itemize`], convert the characters into glyphs. You may
    /// also pass in only a substring of the item from [func`itemize`].
    /// 
    /// This is similar to [func`shape`], except it also can optionally take
    /// the full paragraph text as input, which will then be used to perform
    /// certain cross-item shaping interactions. If you have access to the broader
    /// text of which `item_text` is part of, provide the broader text as
    /// `paragraph_text`. If `paragraph_text` is `nil`, item text is used instead.
    /// 
    /// Note that the extra attributes in the `analyis` that is returned from
    /// [func`itemize`] have indices that are relative to the entire paragraph,
    /// so you do not pass the full paragraph text as `paragraph_text`, you need
    /// to subtract the item offset from their indices before calling [func`shape_full`].
    @inlinable func shapeFull<GlyphStringT: GlyphStringProtocol>(itemText: UnsafePointer<CChar>!, itemLength: Int, paragraphText: UnsafePointer<CChar>? = nil, paragraphLength: Int, glyphs: GlyphStringT) {
        pango_shape_full(itemText, gint(itemLength), paragraphText, gint(paragraphLength), _ptr, glyphs.glyph_string_ptr)
    
    }

    /// Convert the characters in `text` into glyphs.
    /// 
    /// Given a segment of text and the corresponding `PangoAnalysis` structure
    /// returned from [func`itemize`], convert the characters into glyphs. You may
    /// also pass in only a substring of the item from [func`itemize`].
    /// 
    /// This is similar to [func`shape_full`], except it also takes flags that can
    /// influence the shaping process.
    /// 
    /// Note that the extra attributes in the `analyis` that is returned from
    /// [func`itemize`] have indices that are relative to the entire paragraph,
    /// so you do not pass the full paragraph text as `paragraph_text`, you need
    /// to subtract the item offset from their indices before calling
    /// [func`shape_with_flags`].
    @inlinable func shapeWithFlags<GlyphStringT: GlyphStringProtocol>(itemText: UnsafePointer<CChar>!, itemLength: Int, paragraphText: UnsafePointer<CChar>? = nil, paragraphLength: Int, glyphs: GlyphStringT, flags: ShapeFlags) {
        pango_shape_with_flags(itemText, gint(itemLength), paragraphText, gint(paragraphLength), _ptr, glyphs.glyph_string_ptr, flags.value)
    
    }

    /// Apply language-specific tailoring to the breaks in `log_attrs`.
    /// 
    /// The line breaks are assumed to have been produced by [func`default_break`].
    /// 
    /// If `offset` is not -1, it is used to apply attributes
    /// from `analysis` that are relevant to line breaking.
    @inlinable func tailorBreak(text: UnsafePointer<CChar>!, length: Int, offset: Int, logAttrs: UnsafeMutablePointer<PangoLogAttr>!, logAttrsLen: Int) {
        pango_tailor_break(text, gint(length), _ptr, gint(offset), logAttrs, gint(logAttrsLen))
    
    }

    /// unused
    @inlinable var shapeEngine: UnsafeMutablePointer<PangoEngineShape>! {
        /// unused
        get {
            let rv = _ptr.pointee.shape_engine
            return rv
        }
        /// unused
         set {
            _ptr.pointee.shape_engine = newValue
        }
    }

    /// unused
    @inlinable var langEngine: UnsafeMutablePointer<PangoEngineLang>! {
        /// unused
        get {
            let rv = _ptr.pointee.lang_engine
            return rv
        }
        /// unused
         set {
            _ptr.pointee.lang_engine = newValue
        }
    }

    /// the font for this segment.
    @inlinable var font: FontRef! {
        /// the font for this segment.
        get {
            let rv = FontRef(gconstpointer: gconstpointer(_ptr.pointee.font))
            return rv
        }
        /// the font for this segment.
         set {
            _ptr.pointee.font = UnsafeMutablePointer<PangoFont>(newValue.font_ptr)
        }
    }

    /// the bidirectional level for this segment.
    @inlinable var level: guint8 {
        /// the bidirectional level for this segment.
        get {
            let rv = _ptr.pointee.level
            return rv
        }
        /// the bidirectional level for this segment.
         set {
            _ptr.pointee.level = newValue
        }
    }

    /// the glyph orientation for this segment (A `PangoGravity`).
    @inlinable var gravity: guint8 {
        /// the glyph orientation for this segment (A `PangoGravity`).
        get {
            let rv = _ptr.pointee.gravity
            return rv
        }
        /// the glyph orientation for this segment (A `PangoGravity`).
         set {
            _ptr.pointee.gravity = newValue
        }
    }

    /// boolean flags for this segment (Since: 1.16).
    @inlinable var flags: guint8 {
        /// boolean flags for this segment (Since: 1.16).
        get {
            let rv = _ptr.pointee.flags
            return rv
        }
        /// boolean flags for this segment (Since: 1.16).
         set {
            _ptr.pointee.flags = newValue
        }
    }

    /// the detected script for this segment (A `PangoScript`) (Since: 1.18).
    @inlinable var script: guint8 {
        /// the detected script for this segment (A `PangoScript`) (Since: 1.18).
        get {
            let rv = _ptr.pointee.script
            return rv
        }
        /// the detected script for this segment (A `PangoScript`) (Since: 1.18).
         set {
            _ptr.pointee.script = newValue
        }
    }

    /// the detected language for this segment.
    @inlinable var language: LanguageRef! {
        /// the detected language for this segment.
        get {
            let rv = LanguageRef(gconstpointer: gconstpointer(_ptr.pointee.language))
            return rv
        }
        /// the detected language for this segment.
         set {
            _ptr.pointee.language = UnsafeMutablePointer<PangoLanguage>(newValue.language_ptr)
        }
    }

    /// extra attributes for this segment.
    @inlinable var extraAttrs: SListRef! {
        /// extra attributes for this segment.
        get {
            let rv = SListRef(gconstpointer: gconstpointer(_ptr.pointee.extra_attrs))
            return rv
        }
        /// extra attributes for this segment.
         set {
            _ptr.pointee.extra_attrs = UnsafeMutablePointer<GSList>(newValue._ptr)
        }
    }

}



