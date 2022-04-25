import CGLib
import CHarfBuzz
import CPango
import GLib
import GLibObject
import HarfBuzz
// MARK: - Analysis Record

/// The `PangoAnalysis` structure stores information about
/// the properties of a segment of text.
///
/// The `AnalysisProtocol` protocol exposes the methods and properties of an underlying `PangoAnalysis` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Analysis`.
/// Alternatively, use `AnalysisRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol AnalysisProtocol {
        /// Untyped pointer to the underlying `PangoAnalysis` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoAnalysis` instance.
    var _ptr: UnsafeMutablePointer<PangoAnalysis>! { get }

    /// Required Initialiser for types conforming to `AnalysisProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `PangoAnalysis` structure stores information about
/// the properties of a segment of text.
///
/// The `AnalysisRef` type acts as a lightweight Swift reference to an underlying `PangoAnalysis` instance.
/// It exposes methods that can operate on this data type through `AnalysisProtocol` conformance.
/// Use `AnalysisRef` only as an `unowned` reference to an existing `PangoAnalysis` instance.
///
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

/// The `PangoAnalysis` structure stores information about
/// the properties of a segment of text.
///
/// The `Analysis` type acts as an owner of an underlying `PangoAnalysis` instance.
/// It provides the methods that can operate on this data type through `AnalysisProtocol` conformance.
/// Use `Analysis` as a strong reference or owner of a `PangoAnalysis` instance.
///
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

    /// Determines possible line, word, and character breaks
    /// for a string of Unicode text with a single analysis.
    /// 
    /// For most purposes you may want to use [func`Pango.get_log_attrs`].
    ///
    /// **break is deprecated:**
    /// Use [func@Pango.default_break],
    ///   [func@Pango.tailor_break] and [func@Pango.attr_break].
    @available(*, deprecated) @inlinable func break_(text: UnsafePointer<CChar>!, length: Int, attrs: UnsafeMutablePointer<PangoLogAttr>!, attrsLen: Int) {
        
        pango_break(text, gint(length), _ptr, attrs, gint(attrsLen))
        
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
    @inlinable func defaultBreak<LogAttrT: LogAttrProtocol>(text: UnsafePointer<CChar>!, length: Int, attrs: LogAttrT, attrsLen: Int) {
        
        pango_default_break(text, gint(length), _ptr, attrs._ptr, gint(attrsLen))
        
    }

    /// Convert the characters in `text` into glyphs.
    /// 
    /// Given a segment of text and the corresponding `PangoAnalysis` structure
    /// returned from [func`Pango.itemize`], convert the characters into glyphs.
    /// You may also pass in only a substring of the item from [func`Pango.itemize`].
    /// 
    /// This is similar to [func`Pango.shape_full`], except it also takes flags
    /// that can influence the shaping process.
    /// 
    /// Note that the extra attributes in the `analyis` that is returned from
    /// [func`Pango.itemize`] have indices that are relative to the entire paragraph,
    /// so you do not pass the full paragraph text as `paragraph_text`, you need
    /// to subtract the item offset from their indices before calling
    /// [func`Pango.shape_with_flags`].
    @inlinable func shapeWithFlags<GlyphStringT: GlyphStringProtocol>(itemText: UnsafePointer<CChar>!, itemLength: Int, paragraphText: UnsafePointer<CChar>? = nil, paragraphLength: Int, glyphs: GlyphStringT, flags: ShapeFlags) {
        
        pango_shape_with_flags(itemText, gint(itemLength), paragraphText, gint(paragraphLength), _ptr, glyphs.glyph_string_ptr, flags.value)
        
    }

    /// Apply language-specific tailoring to the breaks in `attrs`.
    /// 
    /// The line breaks are assumed to have been produced by [func`Pango.default_break`].
    /// 
    /// If `offset` is not -1, it is used to apply attributes from `analysis` that are
    /// relevant to line breaking.
    /// 
    /// Note that it is better to pass -1 for `offset` and use [func`Pango.attr_break`]
    /// to apply attributes to the whole paragraph.
    @inlinable func tailorBreak(text: UnsafePointer<CChar>!, length: Int, offset: Int, attrs: UnsafeMutablePointer<PangoLogAttr>!, attrsLen: Int) {
        
        pango_tailor_break(text, gint(length), _ptr, gint(offset), attrs, gint(attrsLen))
        
    }

    /// unused, reserved
    @inlinable var shapeEngine: UnsafeMutablePointer<PangoEngineShape>! {
        /// unused, reserved
        get {
            let rv = _ptr.pointee.shape_engine
    return rv
        }
        /// unused, reserved
         set {
            _ptr.pointee.shape_engine = newValue
        }
    }

    /// unused, reserved
    @inlinable var langEngine: UnsafeMutablePointer<PangoEngineLang>! {
        /// unused, reserved
        get {
            let rv = _ptr.pointee.lang_engine
    return rv
        }
        /// unused, reserved
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
            let rv = GLib.SListRef(gconstpointer: gconstpointer(_ptr.pointee.extra_attrs))
    return rv
        }
        /// extra attributes for this segment.
         set {
            _ptr.pointee.extra_attrs = UnsafeMutablePointer<GSList>(newValue._ptr)
        }
    }

}



// MARK: - AttrClass Record

/// The `PangoAttrClass` structure stores the type and operations for
/// a particular type of attribute.
/// 
/// The functions in this structure should not be called directly. Instead,
/// one should use the wrapper functions provided for `PangoAttribute`.
///
/// The `AttrClassProtocol` protocol exposes the methods and properties of an underlying `PangoAttrClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AttrClass`.
/// Alternatively, use `AttrClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol AttrClassProtocol {
        /// Untyped pointer to the underlying `PangoAttrClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoAttrClass` instance.
    var _ptr: UnsafeMutablePointer<PangoAttrClass>! { get }

    /// Required Initialiser for types conforming to `AttrClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `PangoAttrClass` structure stores the type and operations for
/// a particular type of attribute.
/// 
/// The functions in this structure should not be called directly. Instead,
/// one should use the wrapper functions provided for `PangoAttribute`.
///
/// The `AttrClassRef` type acts as a lightweight Swift reference to an underlying `PangoAttrClass` instance.
/// It exposes methods that can operate on this data type through `AttrClassProtocol` conformance.
/// Use `AttrClassRef` only as an `unowned` reference to an existing `PangoAttrClass` instance.
///
public struct AttrClassRef: AttrClassProtocol {
        /// Untyped pointer to the underlying `PangoAttrClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AttrClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoAttrClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoAttrClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoAttrClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoAttrClass>?) {
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

    /// Reference intialiser for a related type that implements `AttrClassProtocol`
    @inlinable init<T: AttrClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PangoAttrClass` structure stores the type and operations for
/// a particular type of attribute.
/// 
/// The functions in this structure should not be called directly. Instead,
/// one should use the wrapper functions provided for `PangoAttribute`.
///
/// The `AttrClass` type acts as an owner of an underlying `PangoAttrClass` instance.
/// It provides the methods that can operate on this data type through `AttrClassProtocol` conformance.
/// Use `AttrClass` as a strong reference or owner of a `PangoAttrClass` instance.
///
open class AttrClass: AttrClassProtocol {
        /// Untyped pointer to the underlying `PangoAttrClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoAttrClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoAttrClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoAttrClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoAttrClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoAttrClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `AttrClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoAttrClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoAttrClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `AttrClassProtocol`
    /// `PangoAttrClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `AttrClassProtocol`
    @inlinable public init<T: AttrClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoAttrClass, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `PangoAttrClass`.
    deinit {
        // no reference counting for PangoAttrClass, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoAttrClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoAttrClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoAttrClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoAttrClass, cannot ref(_ptr)
    }



}

// MARK: no AttrClass properties

// MARK: no AttrClass signals

// MARK: AttrClass has no signals
// MARK: AttrClass Record: AttrClassProtocol extension (methods and fields)
public extension AttrClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoAttrClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoAttrClass>! { return ptr?.assumingMemoryBound(to: PangoAttrClass.self) }


    /// the type ID for this attribute
    @inlinable var type: PangoAttrType {
        /// the type ID for this attribute
        get {
            let rv = _ptr.pointee.type
    return rv
        }
        /// the type ID for this attribute
         set {
            _ptr.pointee.type = newValue
        }
    }

    // var copy is unavailable because copy is void

    // var destroy is unavailable because destroy is void

    // var equal is unavailable because equal is void

}



// MARK: - AttrColor Record

/// The `PangoAttrColor` structure is used to represent attributes that
/// are colors.
///
/// The `AttrColorProtocol` protocol exposes the methods and properties of an underlying `PangoAttrColor` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AttrColor`.
/// Alternatively, use `AttrColorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol AttrColorProtocol {
        /// Untyped pointer to the underlying `PangoAttrColor` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoAttrColor` instance.
    var _ptr: UnsafeMutablePointer<PangoAttrColor>! { get }

    /// Required Initialiser for types conforming to `AttrColorProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `PangoAttrColor` structure is used to represent attributes that
/// are colors.
///
/// The `AttrColorRef` type acts as a lightweight Swift reference to an underlying `PangoAttrColor` instance.
/// It exposes methods that can operate on this data type through `AttrColorProtocol` conformance.
/// Use `AttrColorRef` only as an `unowned` reference to an existing `PangoAttrColor` instance.
///
public struct AttrColorRef: AttrColorProtocol {
        /// Untyped pointer to the underlying `PangoAttrColor` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AttrColorRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoAttrColor>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoAttrColor>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoAttrColor>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoAttrColor>?) {
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

    /// Reference intialiser for a related type that implements `AttrColorProtocol`
    @inlinable init<T: AttrColorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrColorProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrColorProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrColorProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrColorProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrColorProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PangoAttrColor` structure is used to represent attributes that
/// are colors.
///
/// The `AttrColor` type acts as an owner of an underlying `PangoAttrColor` instance.
/// It provides the methods that can operate on this data type through `AttrColorProtocol` conformance.
/// Use `AttrColor` as a strong reference or owner of a `PangoAttrColor` instance.
///
open class AttrColor: AttrColorProtocol {
        /// Untyped pointer to the underlying `PangoAttrColor` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrColor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoAttrColor>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrColor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoAttrColor>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrColor` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrColor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrColor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoAttrColor>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrColor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoAttrColor>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoAttrColor` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `AttrColor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoAttrColor>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoAttrColor, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `AttrColorProtocol`
    /// `PangoAttrColor` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `AttrColorProtocol`
    @inlinable public init<T: AttrColorProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoAttrColor, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `PangoAttrColor`.
    deinit {
        // no reference counting for PangoAttrColor, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrColorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrColorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoAttrColor, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrColorProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrColorProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoAttrColor, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrColorProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrColorProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoAttrColor, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrColorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrColorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoAttrColor, cannot ref(_ptr)
    }



}

// MARK: no AttrColor properties

// MARK: no AttrColor signals

// MARK: AttrColor has no signals
// MARK: AttrColor Record: AttrColorProtocol extension (methods and fields)
public extension AttrColorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoAttrColor` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoAttrColor>! { return ptr?.assumingMemoryBound(to: PangoAttrColor.self) }


    /// the common portion of the attribute
    @inlinable var attr: PangoAttribute {
        /// the common portion of the attribute
        get {
            let rv = _ptr.pointee.attr
    return rv
        }
        /// the common portion of the attribute
         set {
            _ptr.pointee.attr = newValue
        }
    }

    /// the `PangoColor` which is the value of the attribute
    @inlinable var color: PangoColor {
        /// the `PangoColor` which is the value of the attribute
        get {
            let rv = _ptr.pointee.color
    return rv
        }
        /// the `PangoColor` which is the value of the attribute
         set {
            _ptr.pointee.color = newValue
        }
    }

}



// MARK: - AttrFloat Record

/// The `PangoAttrFloat` structure is used to represent attributes with
/// a float or double value.
///
/// The `AttrFloatProtocol` protocol exposes the methods and properties of an underlying `PangoAttrFloat` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AttrFloat`.
/// Alternatively, use `AttrFloatRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol AttrFloatProtocol {
        /// Untyped pointer to the underlying `PangoAttrFloat` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoAttrFloat` instance.
    var _ptr: UnsafeMutablePointer<PangoAttrFloat>! { get }

    /// Required Initialiser for types conforming to `AttrFloatProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `PangoAttrFloat` structure is used to represent attributes with
/// a float or double value.
///
/// The `AttrFloatRef` type acts as a lightweight Swift reference to an underlying `PangoAttrFloat` instance.
/// It exposes methods that can operate on this data type through `AttrFloatProtocol` conformance.
/// Use `AttrFloatRef` only as an `unowned` reference to an existing `PangoAttrFloat` instance.
///
public struct AttrFloatRef: AttrFloatProtocol {
        /// Untyped pointer to the underlying `PangoAttrFloat` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AttrFloatRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoAttrFloat>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoAttrFloat>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoAttrFloat>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoAttrFloat>?) {
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

    /// Reference intialiser for a related type that implements `AttrFloatProtocol`
    @inlinable init<T: AttrFloatProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFloatProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFloatProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFloatProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFloatProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFloatProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PangoAttrFloat` structure is used to represent attributes with
/// a float or double value.
///
/// The `AttrFloat` type acts as an owner of an underlying `PangoAttrFloat` instance.
/// It provides the methods that can operate on this data type through `AttrFloatProtocol` conformance.
/// Use `AttrFloat` as a strong reference or owner of a `PangoAttrFloat` instance.
///
open class AttrFloat: AttrFloatProtocol {
        /// Untyped pointer to the underlying `PangoAttrFloat` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrFloat` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoAttrFloat>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrFloat` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoAttrFloat>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrFloat` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrFloat` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrFloat` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoAttrFloat>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrFloat` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoAttrFloat>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoAttrFloat` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `AttrFloat` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoAttrFloat>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoAttrFloat, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `AttrFloatProtocol`
    /// `PangoAttrFloat` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `AttrFloatProtocol`
    @inlinable public init<T: AttrFloatProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoAttrFloat, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `PangoAttrFloat`.
    deinit {
        // no reference counting for PangoAttrFloat, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFloatProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFloatProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoAttrFloat, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFloatProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFloatProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoAttrFloat, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFloatProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFloatProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoAttrFloat, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFloatProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFloatProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoAttrFloat, cannot ref(_ptr)
    }



}

// MARK: no AttrFloat properties

// MARK: no AttrFloat signals

// MARK: AttrFloat has no signals
// MARK: AttrFloat Record: AttrFloatProtocol extension (methods and fields)
public extension AttrFloatProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoAttrFloat` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoAttrFloat>! { return ptr?.assumingMemoryBound(to: PangoAttrFloat.self) }


    /// the common portion of the attribute
    @inlinable var attr: PangoAttribute {
        /// the common portion of the attribute
        get {
            let rv = _ptr.pointee.attr
    return rv
        }
        /// the common portion of the attribute
         set {
            _ptr.pointee.attr = newValue
        }
    }

    /// the value of the attribute
    @inlinable var value: CDouble {
        /// the value of the attribute
        get {
            let rv = _ptr.pointee.value
    return rv
        }
        /// the value of the attribute
         set {
            _ptr.pointee.value = newValue
        }
    }

}



// MARK: - AttrFontDesc Record

/// The `PangoAttrFontDesc` structure is used to store an attribute that
/// sets all aspects of the font description at once.
///
/// The `AttrFontDescProtocol` protocol exposes the methods and properties of an underlying `PangoAttrFontDesc` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AttrFontDesc`.
/// Alternatively, use `AttrFontDescRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol AttrFontDescProtocol {
        /// Untyped pointer to the underlying `PangoAttrFontDesc` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoAttrFontDesc` instance.
    var _ptr: UnsafeMutablePointer<PangoAttrFontDesc>! { get }

    /// Required Initialiser for types conforming to `AttrFontDescProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `PangoAttrFontDesc` structure is used to store an attribute that
/// sets all aspects of the font description at once.
///
/// The `AttrFontDescRef` type acts as a lightweight Swift reference to an underlying `PangoAttrFontDesc` instance.
/// It exposes methods that can operate on this data type through `AttrFontDescProtocol` conformance.
/// Use `AttrFontDescRef` only as an `unowned` reference to an existing `PangoAttrFontDesc` instance.
///
public struct AttrFontDescRef: AttrFontDescProtocol {
        /// Untyped pointer to the underlying `PangoAttrFontDesc` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AttrFontDescRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoAttrFontDesc>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoAttrFontDesc>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoAttrFontDesc>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoAttrFontDesc>?) {
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

    /// Reference intialiser for a related type that implements `AttrFontDescProtocol`
    @inlinable init<T: AttrFontDescProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontDescProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontDescProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontDescProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontDescProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontDescProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PangoAttrFontDesc` structure is used to store an attribute that
/// sets all aspects of the font description at once.
///
/// The `AttrFontDesc` type acts as an owner of an underlying `PangoAttrFontDesc` instance.
/// It provides the methods that can operate on this data type through `AttrFontDescProtocol` conformance.
/// Use `AttrFontDesc` as a strong reference or owner of a `PangoAttrFontDesc` instance.
///
open class AttrFontDesc: AttrFontDescProtocol {
        /// Untyped pointer to the underlying `PangoAttrFontDesc` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrFontDesc` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoAttrFontDesc>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrFontDesc` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoAttrFontDesc>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrFontDesc` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrFontDesc` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrFontDesc` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoAttrFontDesc>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrFontDesc` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoAttrFontDesc>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoAttrFontDesc` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `AttrFontDesc` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoAttrFontDesc>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoAttrFontDesc, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `AttrFontDescProtocol`
    /// `PangoAttrFontDesc` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `AttrFontDescProtocol`
    @inlinable public init<T: AttrFontDescProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoAttrFontDesc, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `PangoAttrFontDesc`.
    deinit {
        // no reference counting for PangoAttrFontDesc, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontDescProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontDescProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoAttrFontDesc, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontDescProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontDescProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoAttrFontDesc, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontDescProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontDescProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoAttrFontDesc, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontDescProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontDescProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoAttrFontDesc, cannot ref(_ptr)
    }



}

// MARK: no AttrFontDesc properties

// MARK: no AttrFontDesc signals

// MARK: AttrFontDesc has no signals
// MARK: AttrFontDesc Record: AttrFontDescProtocol extension (methods and fields)
public extension AttrFontDescProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoAttrFontDesc` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoAttrFontDesc>! { return ptr?.assumingMemoryBound(to: PangoAttrFontDesc.self) }


    /// the common portion of the attribute
    @inlinable var attr: PangoAttribute {
        /// the common portion of the attribute
        get {
            let rv = _ptr.pointee.attr
    return rv
        }
        /// the common portion of the attribute
         set {
            _ptr.pointee.attr = newValue
        }
    }

    /// the font description which is the value of this attribute
    @inlinable var desc: FontDescriptionRef! {
        /// the font description which is the value of this attribute
        get {
            let rv = FontDescriptionRef(gconstpointer: gconstpointer(_ptr.pointee.desc))
    return rv
        }
        /// the font description which is the value of this attribute
         set {
            _ptr.pointee.desc = UnsafeMutablePointer<PangoFontDescription>(newValue.font_description_ptr)
        }
    }

}



// MARK: - AttrFontFeatures Record

/// The `PangoAttrFontFeatures` structure is used to represent OpenType
/// font features as an attribute.
///
/// The `AttrFontFeaturesProtocol` protocol exposes the methods and properties of an underlying `PangoAttrFontFeatures` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AttrFontFeatures`.
/// Alternatively, use `AttrFontFeaturesRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol AttrFontFeaturesProtocol {
        /// Untyped pointer to the underlying `PangoAttrFontFeatures` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoAttrFontFeatures` instance.
    var _ptr: UnsafeMutablePointer<PangoAttrFontFeatures>! { get }

    /// Required Initialiser for types conforming to `AttrFontFeaturesProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `PangoAttrFontFeatures` structure is used to represent OpenType
/// font features as an attribute.
///
/// The `AttrFontFeaturesRef` type acts as a lightweight Swift reference to an underlying `PangoAttrFontFeatures` instance.
/// It exposes methods that can operate on this data type through `AttrFontFeaturesProtocol` conformance.
/// Use `AttrFontFeaturesRef` only as an `unowned` reference to an existing `PangoAttrFontFeatures` instance.
///
public struct AttrFontFeaturesRef: AttrFontFeaturesProtocol {
        /// Untyped pointer to the underlying `PangoAttrFontFeatures` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AttrFontFeaturesRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoAttrFontFeatures>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoAttrFontFeatures>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoAttrFontFeatures>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoAttrFontFeatures>?) {
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

    /// Reference intialiser for a related type that implements `AttrFontFeaturesProtocol`
    @inlinable init<T: AttrFontFeaturesProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontFeaturesProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontFeaturesProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontFeaturesProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontFeaturesProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontFeaturesProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PangoAttrFontFeatures` structure is used to represent OpenType
/// font features as an attribute.
///
/// The `AttrFontFeatures` type acts as an owner of an underlying `PangoAttrFontFeatures` instance.
/// It provides the methods that can operate on this data type through `AttrFontFeaturesProtocol` conformance.
/// Use `AttrFontFeatures` as a strong reference or owner of a `PangoAttrFontFeatures` instance.
///
open class AttrFontFeatures: AttrFontFeaturesProtocol {
        /// Untyped pointer to the underlying `PangoAttrFontFeatures` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrFontFeatures` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoAttrFontFeatures>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrFontFeatures` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoAttrFontFeatures>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrFontFeatures` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrFontFeatures` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrFontFeatures` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoAttrFontFeatures>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrFontFeatures` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoAttrFontFeatures>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoAttrFontFeatures` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `AttrFontFeatures` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoAttrFontFeatures>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoAttrFontFeatures, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `AttrFontFeaturesProtocol`
    /// `PangoAttrFontFeatures` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `AttrFontFeaturesProtocol`
    @inlinable public init<T: AttrFontFeaturesProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoAttrFontFeatures, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `PangoAttrFontFeatures`.
    deinit {
        // no reference counting for PangoAttrFontFeatures, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontFeaturesProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontFeaturesProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoAttrFontFeatures, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontFeaturesProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontFeaturesProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoAttrFontFeatures, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontFeaturesProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontFeaturesProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoAttrFontFeatures, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontFeaturesProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontFeaturesProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoAttrFontFeatures, cannot ref(_ptr)
    }



}

// MARK: no AttrFontFeatures properties

// MARK: no AttrFontFeatures signals

// MARK: AttrFontFeatures has no signals
// MARK: AttrFontFeatures Record: AttrFontFeaturesProtocol extension (methods and fields)
public extension AttrFontFeaturesProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoAttrFontFeatures` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoAttrFontFeatures>! { return ptr?.assumingMemoryBound(to: PangoAttrFontFeatures.self) }


    /// the common portion of the attribute
    @inlinable var attr: PangoAttribute {
        /// the common portion of the attribute
        get {
            let rv = _ptr.pointee.attr
    return rv
        }
        /// the common portion of the attribute
         set {
            _ptr.pointee.attr = newValue
        }
    }

    /// the features, as a string in CSS syntax
    @inlinable var features: UnsafeMutablePointer<gchar>! {
        /// the features, as a string in CSS syntax
        get {
            let rv = _ptr.pointee.features
    return rv
        }
        /// the features, as a string in CSS syntax
         set {
            _ptr.pointee.features = newValue
        }
    }

}



// MARK: - AttrInt Record

/// The `PangoAttrInt` structure is used to represent attributes with
/// an integer or enumeration value.
///
/// The `AttrIntProtocol` protocol exposes the methods and properties of an underlying `PangoAttrInt` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AttrInt`.
/// Alternatively, use `AttrIntRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol AttrIntProtocol {
        /// Untyped pointer to the underlying `PangoAttrInt` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoAttrInt` instance.
    var _ptr: UnsafeMutablePointer<PangoAttrInt>! { get }

    /// Required Initialiser for types conforming to `AttrIntProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `PangoAttrInt` structure is used to represent attributes with
/// an integer or enumeration value.
///
/// The `AttrIntRef` type acts as a lightweight Swift reference to an underlying `PangoAttrInt` instance.
/// It exposes methods that can operate on this data type through `AttrIntProtocol` conformance.
/// Use `AttrIntRef` only as an `unowned` reference to an existing `PangoAttrInt` instance.
///
public struct AttrIntRef: AttrIntProtocol {
        /// Untyped pointer to the underlying `PangoAttrInt` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AttrIntRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoAttrInt>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoAttrInt>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoAttrInt>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoAttrInt>?) {
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

    /// Reference intialiser for a related type that implements `AttrIntProtocol`
    @inlinable init<T: AttrIntProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIntProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIntProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIntProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIntProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIntProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PangoAttrInt` structure is used to represent attributes with
/// an integer or enumeration value.
///
/// The `AttrInt` type acts as an owner of an underlying `PangoAttrInt` instance.
/// It provides the methods that can operate on this data type through `AttrIntProtocol` conformance.
/// Use `AttrInt` as a strong reference or owner of a `PangoAttrInt` instance.
///
open class AttrInt: AttrIntProtocol {
        /// Untyped pointer to the underlying `PangoAttrInt` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrInt` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoAttrInt>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrInt` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoAttrInt>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrInt` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrInt` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrInt` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoAttrInt>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrInt` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoAttrInt>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoAttrInt` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `AttrInt` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoAttrInt>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoAttrInt, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `AttrIntProtocol`
    /// `PangoAttrInt` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `AttrIntProtocol`
    @inlinable public init<T: AttrIntProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoAttrInt, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `PangoAttrInt`.
    deinit {
        // no reference counting for PangoAttrInt, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIntProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIntProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoAttrInt, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIntProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIntProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoAttrInt, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIntProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIntProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoAttrInt, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIntProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIntProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoAttrInt, cannot ref(_ptr)
    }



}

// MARK: no AttrInt properties

// MARK: no AttrInt signals

// MARK: AttrInt has no signals
// MARK: AttrInt Record: AttrIntProtocol extension (methods and fields)
public extension AttrIntProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoAttrInt` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoAttrInt>! { return ptr?.assumingMemoryBound(to: PangoAttrInt.self) }


    /// the common portion of the attribute
    @inlinable var attr: PangoAttribute {
        /// the common portion of the attribute
        get {
            let rv = _ptr.pointee.attr
    return rv
        }
        /// the common portion of the attribute
         set {
            _ptr.pointee.attr = newValue
        }
    }

    /// the value of the attribute
    @inlinable var value: gint {
        /// the value of the attribute
        get {
            let rv = _ptr.pointee.value
    return rv
        }
        /// the value of the attribute
         set {
            _ptr.pointee.value = newValue
        }
    }

}



// MARK: - AttrIterator Record

/// A `PangoAttrIterator` is used to iterate through a `PangoAttrList`.
/// 
/// A new iterator is created with [method`Pango.AttrList.get_iterator`].
/// Once the iterator is created, it can be advanced through the style
/// changes in the text using [method`Pango.AttrIterator.next`]. At each
/// style change, the range of the current style segment and the attributes
/// currently in effect can be queried.
///
/// The `AttrIteratorProtocol` protocol exposes the methods and properties of an underlying `PangoAttrIterator` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AttrIterator`.
/// Alternatively, use `AttrIteratorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol AttrIteratorProtocol {
        /// Untyped pointer to the underlying `PangoAttrIterator` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoAttrIterator` instance.
    var attr_iterator_ptr: UnsafeMutablePointer<PangoAttrIterator>! { get }

    /// Required Initialiser for types conforming to `AttrIteratorProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `PangoAttrIterator` is used to iterate through a `PangoAttrList`.
/// 
/// A new iterator is created with [method`Pango.AttrList.get_iterator`].
/// Once the iterator is created, it can be advanced through the style
/// changes in the text using [method`Pango.AttrIterator.next`]. At each
/// style change, the range of the current style segment and the attributes
/// currently in effect can be queried.
///
/// The `AttrIteratorRef` type acts as a lightweight Swift reference to an underlying `PangoAttrIterator` instance.
/// It exposes methods that can operate on this data type through `AttrIteratorProtocol` conformance.
/// Use `AttrIteratorRef` only as an `unowned` reference to an existing `PangoAttrIterator` instance.
///
public struct AttrIteratorRef: AttrIteratorProtocol {
        /// Untyped pointer to the underlying `PangoAttrIterator` instance.
    /// For type-safe access, use the generated, typed pointer `attr_iterator_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AttrIteratorRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoAttrIterator>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoAttrIterator>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoAttrIterator>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoAttrIterator>?) {
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

    /// Reference intialiser for a related type that implements `AttrIteratorProtocol`
    @inlinable init<T: AttrIteratorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIteratorProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIteratorProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIteratorProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIteratorProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIteratorProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `PangoAttrIterator` is used to iterate through a `PangoAttrList`.
/// 
/// A new iterator is created with [method`Pango.AttrList.get_iterator`].
/// Once the iterator is created, it can be advanced through the style
/// changes in the text using [method`Pango.AttrIterator.next`]. At each
/// style change, the range of the current style segment and the attributes
/// currently in effect can be queried.
///
/// The `AttrIterator` type acts as an owner of an underlying `PangoAttrIterator` instance.
/// It provides the methods that can operate on this data type through `AttrIteratorProtocol` conformance.
/// Use `AttrIterator` as a strong reference or owner of a `PangoAttrIterator` instance.
///
open class AttrIterator: AttrIteratorProtocol {
        /// Untyped pointer to the underlying `PangoAttrIterator` instance.
    /// For type-safe access, use the generated, typed pointer `attr_iterator_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrIterator` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoAttrIterator>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrIterator` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoAttrIterator>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrIterator` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrIterator` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrIterator` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoAttrIterator>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrIterator` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoAttrIterator>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoAttrIterator` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `AttrIterator` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoAttrIterator>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoAttrIterator, cannot ref(attr_iterator_ptr)
    }

    /// Reference intialiser for a related type that implements `AttrIteratorProtocol`
    /// `PangoAttrIterator` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `AttrIteratorProtocol`
    @inlinable public init<T: AttrIteratorProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoAttrIterator, cannot ref(attr_iterator_ptr)
    }

    /// Do-nothing destructor for `PangoAttrIterator`.
    deinit {
        // no reference counting for PangoAttrIterator, cannot unref(attr_iterator_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIteratorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIteratorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoAttrIterator, cannot ref(attr_iterator_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIteratorProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIteratorProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoAttrIterator, cannot ref(attr_iterator_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIteratorProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIteratorProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoAttrIterator, cannot ref(attr_iterator_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIteratorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIteratorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoAttrIterator, cannot ref(attr_iterator_ptr)
    }



}

// MARK: no AttrIterator properties

// MARK: no AttrIterator signals

// MARK: AttrIterator has no signals
// MARK: AttrIterator Record: AttrIteratorProtocol extension (methods and fields)
public extension AttrIteratorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoAttrIterator` instance.
    @inlinable var attr_iterator_ptr: UnsafeMutablePointer<PangoAttrIterator>! { return ptr?.assumingMemoryBound(to: PangoAttrIterator.self) }

    /// Copy a `PangoAttrIterator`.
    @inlinable func copy() -> Pango.AttrIteratorRef! {
        let result = pango_attr_iterator_copy(attr_iterator_ptr)
        guard let rv = AttrIteratorRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Destroy a `PangoAttrIterator` and free all associated memory.
    @inlinable func destroy() {
        
        pango_attr_iterator_destroy(attr_iterator_ptr)
        
    }

    /// Find the current attribute of a particular type
    /// at the iterator location.
    /// 
    /// When multiple attributes of the same type overlap,
    /// the attribute whose range starts closest to the
    /// current location is used.
    @inlinable func get(type: PangoAttrType) -> Pango.AttributeRef! {
        let result = pango_attr_iterator_get(attr_iterator_ptr, type)
        let rv = AttributeRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Gets a list of all attributes at the current position of the
    /// iterator.
    @inlinable func getAttrs() -> GLib.SListRef! {
        let result = pango_attr_iterator_get_attrs(attr_iterator_ptr)
        let rv = GLib.SListRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Get the font and other attributes at the current
    /// iterator position.
    @inlinable func getFont<FontDescriptionT: FontDescriptionProtocol>(desc: FontDescriptionT, language: UnsafeMutablePointer<UnsafeMutablePointer<PangoLanguage>?>! = nil, extraAttrs: UnsafeMutablePointer<UnsafeMutablePointer<GSList>?>! = nil) {
        
        pango_attr_iterator_get_font(attr_iterator_ptr, desc.font_description_ptr, language, extraAttrs)
        
    }

    /// Advance the iterator until the next change of style.
    @inlinable func next() -> Bool {
        let result = pango_attr_iterator_next(attr_iterator_ptr)
        let rv = ((result) != 0)
        return rv
    }

    /// Get the range of the current segment.
    /// 
    /// Note that the stored return values are signed, not unsigned
    /// like the values in `PangoAttribute`. To deal with this API
    /// oversight, stored return values that wouldn't fit into
    /// a signed integer are clamped to `G_MAXINT`.
    @inlinable func range(start: UnsafeMutablePointer<gint>!, end: UnsafeMutablePointer<gint>!) {
        
        pango_attr_iterator_range(attr_iterator_ptr, start, end)
        
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
    @inlinable func itemize<AttrListT: AttrListProtocol, ContextT: ContextProtocol>(context: ContextT, text: UnsafePointer<CChar>!, startIndex: Int, length: Int, attrs: AttrListT) -> GLib.ListRef! {
        let result = pango_itemize(context.context_ptr, text, gint(startIndex), gint(length), attrs.attr_list_ptr, attr_iterator_ptr)
        let rv = GLib.ListRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Like ``pango_itemize()``, but with an explicitly specified base direction.
    /// 
    /// The base direction is used when computing bidirectional levels.
    /// [func`itemize`] gets the base direction from the `PangoContext`
    /// (see [method`Pango.Context.set_base_dir`]).
    @inlinable func itemizeWithBaseDir<AttrListT: AttrListProtocol, ContextT: ContextProtocol>(context: ContextT, baseDir: PangoDirection, text: UnsafePointer<CChar>!, startIndex: Int, length: Int, attrs: AttrListT) -> GLib.ListRef! {
        let result = pango_itemize_with_base_dir(context.context_ptr, baseDir, text, gint(startIndex), gint(length), attrs.attr_list_ptr, attr_iterator_ptr)
        let rv = GLib.ListRef(gconstpointer: gconstpointer(result))
        return rv
    }
    /// Gets a list of all attributes at the current position of the
    /// iterator.
    @inlinable var attrs: GLib.SListRef! {
        /// Gets a list of all attributes at the current position of the
        /// iterator.
        get {
            let result = pango_attr_iterator_get_attrs(attr_iterator_ptr)
        let rv = GLib.SListRef(gconstpointer: gconstpointer(result))
            return rv
        }
    }


}



// MARK: - AttrLanguage Record

/// The `PangoAttrLanguage` structure is used to represent attributes that
/// are languages.
///
/// The `AttrLanguageProtocol` protocol exposes the methods and properties of an underlying `PangoAttrLanguage` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AttrLanguage`.
/// Alternatively, use `AttrLanguageRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol AttrLanguageProtocol {
        /// Untyped pointer to the underlying `PangoAttrLanguage` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoAttrLanguage` instance.
    var _ptr: UnsafeMutablePointer<PangoAttrLanguage>! { get }

    /// Required Initialiser for types conforming to `AttrLanguageProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `PangoAttrLanguage` structure is used to represent attributes that
/// are languages.
///
/// The `AttrLanguageRef` type acts as a lightweight Swift reference to an underlying `PangoAttrLanguage` instance.
/// It exposes methods that can operate on this data type through `AttrLanguageProtocol` conformance.
/// Use `AttrLanguageRef` only as an `unowned` reference to an existing `PangoAttrLanguage` instance.
///
public struct AttrLanguageRef: AttrLanguageProtocol {
        /// Untyped pointer to the underlying `PangoAttrLanguage` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AttrLanguageRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoAttrLanguage>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoAttrLanguage>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoAttrLanguage>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoAttrLanguage>?) {
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

    /// Reference intialiser for a related type that implements `AttrLanguageProtocol`
    @inlinable init<T: AttrLanguageProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrLanguageProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrLanguageProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrLanguageProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrLanguageProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrLanguageProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PangoAttrLanguage` structure is used to represent attributes that
/// are languages.
///
/// The `AttrLanguage` type acts as an owner of an underlying `PangoAttrLanguage` instance.
/// It provides the methods that can operate on this data type through `AttrLanguageProtocol` conformance.
/// Use `AttrLanguage` as a strong reference or owner of a `PangoAttrLanguage` instance.
///
open class AttrLanguage: AttrLanguageProtocol {
        /// Untyped pointer to the underlying `PangoAttrLanguage` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrLanguage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoAttrLanguage>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrLanguage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoAttrLanguage>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrLanguage` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrLanguage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrLanguage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoAttrLanguage>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrLanguage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoAttrLanguage>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoAttrLanguage` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `AttrLanguage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoAttrLanguage>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoAttrLanguage, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `AttrLanguageProtocol`
    /// `PangoAttrLanguage` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `AttrLanguageProtocol`
    @inlinable public init<T: AttrLanguageProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoAttrLanguage, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `PangoAttrLanguage`.
    deinit {
        // no reference counting for PangoAttrLanguage, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrLanguageProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrLanguageProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoAttrLanguage, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrLanguageProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrLanguageProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoAttrLanguage, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrLanguageProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrLanguageProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoAttrLanguage, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrLanguageProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrLanguageProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoAttrLanguage, cannot ref(_ptr)
    }



}

// MARK: no AttrLanguage properties

// MARK: no AttrLanguage signals

// MARK: AttrLanguage has no signals
// MARK: AttrLanguage Record: AttrLanguageProtocol extension (methods and fields)
public extension AttrLanguageProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoAttrLanguage` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoAttrLanguage>! { return ptr?.assumingMemoryBound(to: PangoAttrLanguage.self) }


    /// the common portion of the attribute
    @inlinable var attr: PangoAttribute {
        /// the common portion of the attribute
        get {
            let rv = _ptr.pointee.attr
    return rv
        }
        /// the common portion of the attribute
         set {
            _ptr.pointee.attr = newValue
        }
    }

    /// the `PangoLanguage` which is the value of the attribute
    @inlinable var value: LanguageRef! {
        /// the `PangoLanguage` which is the value of the attribute
        get {
            let rv = LanguageRef(gconstpointer: gconstpointer(_ptr.pointee.value))
    return rv
        }
        /// the `PangoLanguage` which is the value of the attribute
         set {
            _ptr.pointee.value = UnsafeMutablePointer<PangoLanguage>(newValue.language_ptr)
        }
    }

}



// MARK: - AttrList Record

/// A `PangoAttrList` represents a list of attributes that apply to a section
/// of text.
/// 
/// The attributes in a `PangoAttrList` are, in general, allowed to overlap in
/// an arbitrary fashion. However, if the attributes are manipulated only through
/// [method`Pango.AttrList.change`], the overlap between properties will meet
/// stricter criteria.
/// 
/// Since the `PangoAttrList` structure is stored as a linear list, it is not
/// suitable for storing attributes for large amounts of text. In general, you
/// should not use a single `PangoAttrList` for more than one paragraph of text.
///
/// The `AttrListProtocol` protocol exposes the methods and properties of an underlying `PangoAttrList` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AttrList`.
/// Alternatively, use `AttrListRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol AttrListProtocol {
        /// Untyped pointer to the underlying `PangoAttrList` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoAttrList` instance.
    var attr_list_ptr: UnsafeMutablePointer<PangoAttrList>! { get }

    /// Required Initialiser for types conforming to `AttrListProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `PangoAttrList` represents a list of attributes that apply to a section
/// of text.
/// 
/// The attributes in a `PangoAttrList` are, in general, allowed to overlap in
/// an arbitrary fashion. However, if the attributes are manipulated only through
/// [method`Pango.AttrList.change`], the overlap between properties will meet
/// stricter criteria.
/// 
/// Since the `PangoAttrList` structure is stored as a linear list, it is not
/// suitable for storing attributes for large amounts of text. In general, you
/// should not use a single `PangoAttrList` for more than one paragraph of text.
///
/// The `AttrListRef` type acts as a lightweight Swift reference to an underlying `PangoAttrList` instance.
/// It exposes methods that can operate on this data type through `AttrListProtocol` conformance.
/// Use `AttrListRef` only as an `unowned` reference to an existing `PangoAttrList` instance.
///
public struct AttrListRef: AttrListProtocol {
        /// Untyped pointer to the underlying `PangoAttrList` instance.
    /// For type-safe access, use the generated, typed pointer `attr_list_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AttrListRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoAttrList>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoAttrList>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoAttrList>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoAttrList>?) {
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

    /// Reference intialiser for a related type that implements `AttrListProtocol`
    @inlinable init<T: AttrListProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrListProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrListProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrListProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrListProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrListProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Create a new empty attribute list with a reference
    /// count of one.
    @inlinable init() {
            let result = pango_attr_list_new()
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }
    /// Deserializes a `PangoAttrList` from a string.
    /// 
    /// This is the counterpart to [method`Pango.AttrList.to_string`].
    /// See that functions for details about the format.
    @inlinable static func from(string text: UnsafePointer<CChar>!) -> Pango.AttrListRef! {
            let result = pango_attr_list_from_string(text)
        guard let rv = AttrListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }
}

/// A `PangoAttrList` represents a list of attributes that apply to a section
/// of text.
/// 
/// The attributes in a `PangoAttrList` are, in general, allowed to overlap in
/// an arbitrary fashion. However, if the attributes are manipulated only through
/// [method`Pango.AttrList.change`], the overlap between properties will meet
/// stricter criteria.
/// 
/// Since the `PangoAttrList` structure is stored as a linear list, it is not
/// suitable for storing attributes for large amounts of text. In general, you
/// should not use a single `PangoAttrList` for more than one paragraph of text.
///
/// The `AttrList` type acts as a reference-counted owner of an underlying `PangoAttrList` instance.
/// It provides the methods that can operate on this data type through `AttrListProtocol` conformance.
/// Use `AttrList` as a strong reference or owner of a `PangoAttrList` instance.
///
open class AttrList: AttrListProtocol {
        /// Untyped pointer to the underlying `PangoAttrList` instance.
    /// For type-safe access, use the generated, typed pointer `attr_list_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoAttrList>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoAttrList>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrList` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoAttrList>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoAttrList>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `PangoAttrList`.
    /// i.e., ownership is transferred to the `AttrList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoAttrList>) {
        ptr = UnsafeMutableRawPointer(op)
        pango_attr_list_ref(ptr.assumingMemoryBound(to: PangoAttrList.self))
    }

    /// Reference intialiser for a related type that implements `AttrListProtocol`
    /// Will retain `PangoAttrList`.
    /// - Parameter other: an instance of a related type that implements `AttrListProtocol`
    @inlinable public init<T: AttrListProtocol>(_ other: T) {
        ptr = other.ptr
        pango_attr_list_ref(ptr.assumingMemoryBound(to: PangoAttrList.self))
    }

    /// Releases the underlying `PangoAttrList` instance using `pango_attr_list_unref`.
    deinit {
        pango_attr_list_unref(ptr.assumingMemoryBound(to: PangoAttrList.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrListProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrListProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        pango_attr_list_ref(ptr.assumingMemoryBound(to: PangoAttrList.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrListProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrListProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        pango_attr_list_ref(ptr.assumingMemoryBound(to: PangoAttrList.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrListProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrListProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        pango_attr_list_ref(ptr.assumingMemoryBound(to: PangoAttrList.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrListProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrListProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        pango_attr_list_ref(ptr.assumingMemoryBound(to: PangoAttrList.self))
    }

    /// Create a new empty attribute list with a reference
    /// count of one.
    @inlinable public init() {
            let result = pango_attr_list_new()
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Deserializes a `PangoAttrList` from a string.
    /// 
    /// This is the counterpart to [method`Pango.AttrList.to_string`].
    /// See that functions for details about the format.
    @inlinable public static func from(string text: UnsafePointer<CChar>!) -> Pango.AttrList! {
            let result = pango_attr_list_from_string(text)
        guard let rv = AttrList(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

}

// MARK: no AttrList properties

// MARK: no AttrList signals

// MARK: AttrList has no signals
// MARK: AttrList Record: AttrListProtocol extension (methods and fields)
public extension AttrListProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoAttrList` instance.
    @inlinable var attr_list_ptr: UnsafeMutablePointer<PangoAttrList>! { return ptr?.assumingMemoryBound(to: PangoAttrList.self) }

    /// Insert the given attribute into the `PangoAttrList`.
    /// 
    /// It will replace any attributes of the same type
    /// on that segment and be merged with any adjoining
    /// attributes that are identical.
    /// 
    /// This function is slower than [method`Pango.AttrList.insert`]
    /// for creating an attribute list in order (potentially
    /// much slower for large lists). However,
    /// [method`Pango.AttrList.insert`] is not suitable for
    /// continually changing a set of attributes since it
    /// never removes or combines existing attributes.
    @inlinable func change<AttributeT: AttributeProtocol>(attr: AttributeT) {
        
        pango_attr_list_change(attr_list_ptr, attr.attribute_ptr)
        
    }

    /// Copy `list` and return an identical new list.
    @inlinable func copy() -> Pango.AttrListRef! {
        let result = pango_attr_list_copy(attr_list_ptr)
        guard let rv = AttrListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Checks whether `list` and `other_list` contain the same
    /// attributes and whether those attributes apply to the
    /// same ranges.
    /// 
    /// Beware that this will return wrong values if any list
    /// contains duplicates.
    @inlinable func equal<AttrListT: AttrListProtocol>(otherList: AttrListT) -> Bool {
        let result = pango_attr_list_equal(attr_list_ptr, otherList.attr_list_ptr)
        let rv = ((result) != 0)
        return rv
    }

    /// Given a `PangoAttrList` and callback function, removes
    /// any elements of `list` for which `func` returns `true` and
    /// inserts them into a new list.
    @inlinable func filter(`func`: PangoAttrFilterFunc?, data: gpointer? = nil) -> Pango.AttrListRef! {
        let result = pango_attr_list_filter(attr_list_ptr, `func`, data)
        guard let rv = AttrListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Gets a list of all attributes in `list`.
    @inlinable func getAttributes() -> GLib.SListRef! {
        let result = pango_attr_list_get_attributes(attr_list_ptr)
        let rv = GLib.SListRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Create a iterator initialized to the beginning of the list.
    /// 
    /// `list` must not be modified until this iterator is freed.
    @inlinable func getIterator() -> Pango.AttrIteratorRef! {
        let result = pango_attr_list_get_iterator(attr_list_ptr)
        let rv = AttrIteratorRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Insert the given attribute into the `PangoAttrList`.
    /// 
    /// It will be inserted after all other attributes with a
    /// matching `start_index`.
    @inlinable func insert<AttributeT: AttributeProtocol>(attr: AttributeT) {
        
        pango_attr_list_insert(attr_list_ptr, attr.attribute_ptr)
        
    }

    /// Insert the given attribute into the `PangoAttrList`.
    /// 
    /// It will be inserted before all other attributes with a
    /// matching `start_index`.
    @inlinable func insertBefore<AttributeT: AttributeProtocol>(attr: AttributeT) {
        
        pango_attr_list_insert_before(attr_list_ptr, attr.attribute_ptr)
        
    }

    /// Increase the reference count of the given attribute
    /// list by one.
    @discardableResult @inlinable func ref() -> Pango.AttrListRef! {
        let result = pango_attr_list_ref(attr_list_ptr)
        guard let rv = AttrListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// This function opens up a hole in `list`, fills it
    /// in with attributes from the left, and then merges
    /// `other` on top of the hole.
    /// 
    /// This operation is equivalent to stretching every attribute
    /// that applies at position `pos` in `list` by an amount `len`,
    /// and then calling [method`Pango.AttrList.change`] with a copy
    /// of each attribute in `other` in sequence (offset in position
    /// by `pos`, and limited in length to `len`).
    /// 
    /// This operation proves useful for, for instance, inserting
    /// a pre-edit string in the middle of an edit buffer.
    /// 
    /// For backwards compatibility, the function behaves differently
    /// when `len` is 0. In this case, the attributes from `other` are
    /// not imited to `len`, and are just overlayed on top of `list`.
    /// 
    /// This mode is useful for merging two lists of attributes together.
    @inlinable func splice<AttrListT: AttrListProtocol>(other: AttrListT, pos: Int, len: Int) {
        
        pango_attr_list_splice(attr_list_ptr, other.attr_list_ptr, gint(pos), gint(len))
        
    }

    /// Serializes a `PangoAttrList` to a string.
    /// 
    /// No guarantees are made about the format of the string,
    /// it may change between Pango versions.
    /// 
    /// The intended use of this function is testing and
    /// debugging. The format is not meant as a permanent
    /// storage format.
    @inlinable func toString() -> String! {
        let result = pango_attr_list_to_string(attr_list_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Decrease the reference count of the given attribute
    /// list by one.
    /// 
    /// If the result is zero, free the attribute list
    /// and the attributes it contains.
    @inlinable func unref() {
        
        pango_attr_list_unref(attr_list_ptr)
        
    }

    /// Update indices of attributes in `list` for a change in the
    /// text they refer to.
    /// 
    /// The change that this function applies is removing `remove`
    /// bytes at position `pos` and inserting `add` bytes instead.
    /// 
    /// Attributes that fall entirely in the (`pos`, `pos` + `remove`)
    /// range are removed.
    /// 
    /// Attributes that start or end inside the (`pos`, `pos` + `remove`)
    /// range are shortened to reflect the removal.
    /// 
    /// Attributes start and end positions are updated if they are
    /// behind `pos` + `remove`.
    @inlinable func update(pos: Int, remove: Int, add: Int) {
        
        pango_attr_list_update(attr_list_ptr, gint(pos), gint(remove), gint(add))
        
    }

    /// Apply customization from attributes to the breaks in `attrs`.
    /// 
    /// The line breaks are assumed to have been produced
    /// by [func`Pango.default_break`] and [func`Pango.tailor_break`].
    @inlinable func attrBreak(text: UnsafePointer<CChar>!, length: Int, offset: Int, attrs: UnsafeMutablePointer<PangoLogAttr>!, attrsLen: Int) {
        
        pango_attr_break(text, gint(length), attr_list_ptr, gint(offset), attrs, gint(attrsLen))
        
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
    @inlinable func itemize<ContextT: ContextProtocol>(context: ContextT, text: UnsafePointer<CChar>!, startIndex: Int, length: Int, cachedIter: AttrIteratorRef? = nil) -> GLib.ListRef! {
            let result = pango_itemize(context.context_ptr, text, gint(startIndex), gint(length), attr_list_ptr, cachedIter?.attr_iterator_ptr)
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
    @inlinable func itemize<AttrIteratorT: AttrIteratorProtocol, ContextT: ContextProtocol>(context: ContextT, text: UnsafePointer<CChar>!, startIndex: Int, length: Int, cachedIter: AttrIteratorT?) -> GLib.ListRef! {
        let result = pango_itemize(context.context_ptr, text, gint(startIndex), gint(length), attr_list_ptr, cachedIter?.attr_iterator_ptr)
        let rv = GLib.ListRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Like ``pango_itemize()``, but with an explicitly specified base direction.
    /// 
    /// The base direction is used when computing bidirectional levels.
    /// [func`itemize`] gets the base direction from the `PangoContext`
    /// (see [method`Pango.Context.set_base_dir`]).
    @inlinable func itemizeWithBaseDir<ContextT: ContextProtocol>(context: ContextT, baseDir: PangoDirection, text: UnsafePointer<CChar>!, startIndex: Int, length: Int, cachedIter: AttrIteratorRef? = nil) -> GLib.ListRef! {
            let result = pango_itemize_with_base_dir(context.context_ptr, baseDir, text, gint(startIndex), gint(length), attr_list_ptr, cachedIter?.attr_iterator_ptr)
        let rv = GLib.ListRef(gconstpointer: gconstpointer(result))
            return rv
    }
    /// Like ``pango_itemize()``, but with an explicitly specified base direction.
    /// 
    /// The base direction is used when computing bidirectional levels.
    /// [func`itemize`] gets the base direction from the `PangoContext`
    /// (see [method`Pango.Context.set_base_dir`]).
    @inlinable func itemizeWithBaseDir<AttrIteratorT: AttrIteratorProtocol, ContextT: ContextProtocol>(context: ContextT, baseDir: PangoDirection, text: UnsafePointer<CChar>!, startIndex: Int, length: Int, cachedIter: AttrIteratorT?) -> GLib.ListRef! {
        let result = pango_itemize_with_base_dir(context.context_ptr, baseDir, text, gint(startIndex), gint(length), attr_list_ptr, cachedIter?.attr_iterator_ptr)
        let rv = GLib.ListRef(gconstpointer: gconstpointer(result))
        return rv
    }
    /// Gets a list of all attributes in `list`.
    @inlinable var attributes: GLib.SListRef! {
        /// Gets a list of all attributes in `list`.
        get {
            let result = pango_attr_list_get_attributes(attr_list_ptr)
        let rv = GLib.SListRef(gconstpointer: gconstpointer(result))
            return rv
        }
    }

    /// Create a iterator initialized to the beginning of the list.
    /// 
    /// `list` must not be modified until this iterator is freed.
    @inlinable var iterator: Pango.AttrIteratorRef! {
        /// Create a iterator initialized to the beginning of the list.
        /// 
        /// `list` must not be modified until this iterator is freed.
        get {
            let result = pango_attr_list_get_iterator(attr_list_ptr)
        let rv = AttrIteratorRef(gconstpointer: gconstpointer(result))
            return rv
        }
    }


}



// MARK: - AttrShape Record

/// The `PangoAttrShape` structure is used to represent attributes which
/// impose shape restrictions.
///
/// The `AttrShapeProtocol` protocol exposes the methods and properties of an underlying `PangoAttrShape` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AttrShape`.
/// Alternatively, use `AttrShapeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol AttrShapeProtocol {
        /// Untyped pointer to the underlying `PangoAttrShape` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoAttrShape` instance.
    var _ptr: UnsafeMutablePointer<PangoAttrShape>! { get }

    /// Required Initialiser for types conforming to `AttrShapeProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `PangoAttrShape` structure is used to represent attributes which
/// impose shape restrictions.
///
/// The `AttrShapeRef` type acts as a lightweight Swift reference to an underlying `PangoAttrShape` instance.
/// It exposes methods that can operate on this data type through `AttrShapeProtocol` conformance.
/// Use `AttrShapeRef` only as an `unowned` reference to an existing `PangoAttrShape` instance.
///
public struct AttrShapeRef: AttrShapeProtocol {
        /// Untyped pointer to the underlying `PangoAttrShape` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AttrShapeRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoAttrShape>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoAttrShape>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoAttrShape>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoAttrShape>?) {
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

    /// Reference intialiser for a related type that implements `AttrShapeProtocol`
    @inlinable init<T: AttrShapeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrShapeProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrShapeProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrShapeProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrShapeProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrShapeProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PangoAttrShape` structure is used to represent attributes which
/// impose shape restrictions.
///
/// The `AttrShape` type acts as an owner of an underlying `PangoAttrShape` instance.
/// It provides the methods that can operate on this data type through `AttrShapeProtocol` conformance.
/// Use `AttrShape` as a strong reference or owner of a `PangoAttrShape` instance.
///
open class AttrShape: AttrShapeProtocol {
        /// Untyped pointer to the underlying `PangoAttrShape` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrShape` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoAttrShape>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrShape` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoAttrShape>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrShape` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrShape` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrShape` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoAttrShape>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrShape` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoAttrShape>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoAttrShape` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `AttrShape` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoAttrShape>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoAttrShape, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `AttrShapeProtocol`
    /// `PangoAttrShape` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `AttrShapeProtocol`
    @inlinable public init<T: AttrShapeProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoAttrShape, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `PangoAttrShape`.
    deinit {
        // no reference counting for PangoAttrShape, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrShapeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrShapeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoAttrShape, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrShapeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrShapeProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoAttrShape, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrShapeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrShapeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoAttrShape, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrShapeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrShapeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoAttrShape, cannot ref(_ptr)
    }



}

// MARK: no AttrShape properties

// MARK: no AttrShape signals

// MARK: AttrShape has no signals
// MARK: AttrShape Record: AttrShapeProtocol extension (methods and fields)
public extension AttrShapeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoAttrShape` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoAttrShape>! { return ptr?.assumingMemoryBound(to: PangoAttrShape.self) }


    /// the common portion of the attribute
    @inlinable var attr: PangoAttribute {
        /// the common portion of the attribute
        get {
            let rv = _ptr.pointee.attr
    return rv
        }
        /// the common portion of the attribute
         set {
            _ptr.pointee.attr = newValue
        }
    }

    /// the ink rectangle to restrict to
    @inlinable var inkRect: PangoRectangle {
        /// the ink rectangle to restrict to
        get {
            let rv = _ptr.pointee.ink_rect
    return rv
        }
        /// the ink rectangle to restrict to
         set {
            _ptr.pointee.ink_rect = newValue
        }
    }

    /// the logical rectangle to restrict to
    @inlinable var logicalRect: PangoRectangle {
        /// the logical rectangle to restrict to
        get {
            let rv = _ptr.pointee.logical_rect
    return rv
        }
        /// the logical rectangle to restrict to
         set {
            _ptr.pointee.logical_rect = newValue
        }
    }

    /// user data set (see [func`Pango.AttrShape.new_with_data`])
    @inlinable var data: gpointer? {
        /// user data set (see [func`Pango.AttrShape.new_with_data`])
        get {
            let rv = _ptr.pointee.data
    return rv
        }
        /// user data set (see [func`Pango.AttrShape.new_with_data`])
         set {
            _ptr.pointee.data = newValue
        }
    }

    /// copy function for the user data
    @inlinable var copyFunc: PangoAttrDataCopyFunc! {
        /// copy function for the user data
        get {
            let rv = _ptr.pointee.copy_func
    return rv
        }
        /// copy function for the user data
         set {
            _ptr.pointee.copy_func = newValue
        }
    }

    /// destroy function for the user data
    @inlinable var destroyFunc: GDestroyNotify! {
        /// destroy function for the user data
        get {
            let rv = _ptr.pointee.destroy_func
    return rv
        }
        /// destroy function for the user data
         set {
            _ptr.pointee.destroy_func = newValue
        }
    }

}



// MARK: - AttrSize Record

/// The `PangoAttrSize` structure is used to represent attributes which
/// set font size.
///
/// The `AttrSizeProtocol` protocol exposes the methods and properties of an underlying `PangoAttrSize` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AttrSize`.
/// Alternatively, use `AttrSizeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol AttrSizeProtocol {
        /// Untyped pointer to the underlying `PangoAttrSize` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoAttrSize` instance.
    var _ptr: UnsafeMutablePointer<PangoAttrSize>! { get }

    /// Required Initialiser for types conforming to `AttrSizeProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `PangoAttrSize` structure is used to represent attributes which
/// set font size.
///
/// The `AttrSizeRef` type acts as a lightweight Swift reference to an underlying `PangoAttrSize` instance.
/// It exposes methods that can operate on this data type through `AttrSizeProtocol` conformance.
/// Use `AttrSizeRef` only as an `unowned` reference to an existing `PangoAttrSize` instance.
///
public struct AttrSizeRef: AttrSizeProtocol {
        /// Untyped pointer to the underlying `PangoAttrSize` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AttrSizeRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoAttrSize>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoAttrSize>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoAttrSize>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoAttrSize>?) {
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

    /// Reference intialiser for a related type that implements `AttrSizeProtocol`
    @inlinable init<T: AttrSizeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrSizeProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrSizeProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrSizeProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrSizeProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrSizeProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PangoAttrSize` structure is used to represent attributes which
/// set font size.
///
/// The `AttrSize` type acts as an owner of an underlying `PangoAttrSize` instance.
/// It provides the methods that can operate on this data type through `AttrSizeProtocol` conformance.
/// Use `AttrSize` as a strong reference or owner of a `PangoAttrSize` instance.
///
open class AttrSize: AttrSizeProtocol {
        /// Untyped pointer to the underlying `PangoAttrSize` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoAttrSize>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoAttrSize>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrSize` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoAttrSize>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoAttrSize>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoAttrSize` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `AttrSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoAttrSize>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoAttrSize, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `AttrSizeProtocol`
    /// `PangoAttrSize` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `AttrSizeProtocol`
    @inlinable public init<T: AttrSizeProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoAttrSize, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `PangoAttrSize`.
    deinit {
        // no reference counting for PangoAttrSize, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrSizeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrSizeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoAttrSize, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrSizeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrSizeProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoAttrSize, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrSizeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrSizeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoAttrSize, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrSizeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrSizeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoAttrSize, cannot ref(_ptr)
    }



}

// MARK: no AttrSize properties

// MARK: no AttrSize signals

// MARK: AttrSize has no signals
// MARK: AttrSize Record: AttrSizeProtocol extension (methods and fields)
public extension AttrSizeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoAttrSize` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoAttrSize>! { return ptr?.assumingMemoryBound(to: PangoAttrSize.self) }


    /// the common portion of the attribute
    @inlinable var attr: PangoAttribute {
        /// the common portion of the attribute
        get {
            let rv = _ptr.pointee.attr
    return rv
        }
        /// the common portion of the attribute
         set {
            _ptr.pointee.attr = newValue
        }
    }

    /// size of font, in units of 1/`PANGO_SCALE` of a point (for
    ///   `PANGO_ATTR_SIZE`) or of a device unit (for `PANGO_ATTR_ABSOLUTE_SIZE`)
    @inlinable var size: gint {
        /// size of font, in units of 1/`PANGO_SCALE` of a point (for
        ///   `PANGO_ATTR_SIZE`) or of a device unit (for `PANGO_ATTR_ABSOLUTE_SIZE`)
        get {
            let rv = _ptr.pointee.size
    return rv
        }
        /// size of font, in units of 1/`PANGO_SCALE` of a point (for
        ///   `PANGO_ATTR_SIZE`) or of a device unit (for `PANGO_ATTR_ABSOLUTE_SIZE`)
         set {
            _ptr.pointee.size = newValue
        }
    }

    /// whether the font size is in device units or points.
    ///   This field is only present for compatibility with Pango-1.8.0
    ///   (`PANGO_ATTR_ABSOLUTE_SIZE` was added in 1.8.1); and always will
    ///   be `false` for `PANGO_ATTR_SIZE` and `true` for `PANGO_ATTR_ABSOLUTE_SIZE`.
    @inlinable var absolute: guint {
        /// whether the font size is in device units or points.
        ///   This field is only present for compatibility with Pango-1.8.0
        ///   (`PANGO_ATTR_ABSOLUTE_SIZE` was added in 1.8.1); and always will
        ///   be `false` for `PANGO_ATTR_SIZE` and `true` for `PANGO_ATTR_ABSOLUTE_SIZE`.
        get {
            let rv = _ptr.pointee.absolute
    return rv
        }
        /// whether the font size is in device units or points.
        ///   This field is only present for compatibility with Pango-1.8.0
        ///   (`PANGO_ATTR_ABSOLUTE_SIZE` was added in 1.8.1); and always will
        ///   be `false` for `PANGO_ATTR_SIZE` and `true` for `PANGO_ATTR_ABSOLUTE_SIZE`.
         set {
            _ptr.pointee.absolute = newValue
        }
    }

}



// MARK: - AttrString Record

/// The `PangoAttrString` structure is used to represent attributes with
/// a string value.
///
/// The `AttrStringProtocol` protocol exposes the methods and properties of an underlying `PangoAttrString` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AttrString`.
/// Alternatively, use `AttrStringRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol AttrStringProtocol {
        /// Untyped pointer to the underlying `PangoAttrString` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoAttrString` instance.
    var _ptr: UnsafeMutablePointer<PangoAttrString>! { get }

    /// Required Initialiser for types conforming to `AttrStringProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `PangoAttrString` structure is used to represent attributes with
/// a string value.
///
/// The `AttrStringRef` type acts as a lightweight Swift reference to an underlying `PangoAttrString` instance.
/// It exposes methods that can operate on this data type through `AttrStringProtocol` conformance.
/// Use `AttrStringRef` only as an `unowned` reference to an existing `PangoAttrString` instance.
///
public struct AttrStringRef: AttrStringProtocol {
        /// Untyped pointer to the underlying `PangoAttrString` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AttrStringRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoAttrString>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoAttrString>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoAttrString>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoAttrString>?) {
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

    /// Reference intialiser for a related type that implements `AttrStringProtocol`
    @inlinable init<T: AttrStringProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrStringProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrStringProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrStringProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrStringProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrStringProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PangoAttrString` structure is used to represent attributes with
/// a string value.
///
/// The `AttrString` type acts as an owner of an underlying `PangoAttrString` instance.
/// It provides the methods that can operate on this data type through `AttrStringProtocol` conformance.
/// Use `AttrString` as a strong reference or owner of a `PangoAttrString` instance.
///
open class AttrString: AttrStringProtocol {
        /// Untyped pointer to the underlying `PangoAttrString` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrString` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoAttrString>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrString` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoAttrString>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrString` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrString` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrString` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoAttrString>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AttrString` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoAttrString>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoAttrString` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `AttrString` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoAttrString>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoAttrString, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `AttrStringProtocol`
    /// `PangoAttrString` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `AttrStringProtocol`
    @inlinable public init<T: AttrStringProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoAttrString, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `PangoAttrString`.
    deinit {
        // no reference counting for PangoAttrString, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrStringProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrStringProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoAttrString, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrStringProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrStringProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoAttrString, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrStringProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrStringProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoAttrString, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrStringProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrStringProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoAttrString, cannot ref(_ptr)
    }



}

// MARK: no AttrString properties

// MARK: no AttrString signals

// MARK: AttrString has no signals
// MARK: AttrString Record: AttrStringProtocol extension (methods and fields)
public extension AttrStringProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoAttrString` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoAttrString>! { return ptr?.assumingMemoryBound(to: PangoAttrString.self) }


    /// the common portion of the attribute
    @inlinable var attr: PangoAttribute {
        /// the common portion of the attribute
        get {
            let rv = _ptr.pointee.attr
    return rv
        }
        /// the common portion of the attribute
         set {
            _ptr.pointee.attr = newValue
        }
    }

    /// the string which is the value of the attribute
    @inlinable var value: UnsafeMutablePointer<CChar>! {
        /// the string which is the value of the attribute
        get {
            let rv = _ptr.pointee.value
    return rv
        }
        /// the string which is the value of the attribute
         set {
            _ptr.pointee.value = newValue
        }
    }

}



// MARK: - Attribute Record

/// The `PangoAttribute` structure represents the common portions of all
/// attributes.
/// 
/// Particular types of attributes include this structure as their initial
/// portion. The common portion of the attribute holds the range to which
/// the value in the type-specific part of the attribute applies and should
/// be initialized using [method`Pango.Attribute.init`]. By default, an attribute
/// will have an all-inclusive range of [0,`G_MAXUINT`].
///
/// The `AttributeProtocol` protocol exposes the methods and properties of an underlying `PangoAttribute` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Attribute`.
/// Alternatively, use `AttributeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol AttributeProtocol {
        /// Untyped pointer to the underlying `PangoAttribute` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoAttribute` instance.
    var attribute_ptr: UnsafeMutablePointer<PangoAttribute>! { get }

    /// Required Initialiser for types conforming to `AttributeProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `PangoAttribute` structure represents the common portions of all
/// attributes.
/// 
/// Particular types of attributes include this structure as their initial
/// portion. The common portion of the attribute holds the range to which
/// the value in the type-specific part of the attribute applies and should
/// be initialized using [method`Pango.Attribute.init`]. By default, an attribute
/// will have an all-inclusive range of [0,`G_MAXUINT`].
///
/// The `AttributeRef` type acts as a lightweight Swift reference to an underlying `PangoAttribute` instance.
/// It exposes methods that can operate on this data type through `AttributeProtocol` conformance.
/// Use `AttributeRef` only as an `unowned` reference to an existing `PangoAttribute` instance.
///
public struct AttributeRef: AttributeProtocol {
        /// Untyped pointer to the underlying `PangoAttribute` instance.
    /// For type-safe access, use the generated, typed pointer `attribute_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AttributeRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoAttribute>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoAttribute>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoAttribute>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoAttribute>?) {
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

    /// Reference intialiser for a related type that implements `AttributeProtocol`
    @inlinable init<T: AttributeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttributeProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttributeProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttributeProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttributeProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttributeProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PangoAttribute` structure represents the common portions of all
/// attributes.
/// 
/// Particular types of attributes include this structure as their initial
/// portion. The common portion of the attribute holds the range to which
/// the value in the type-specific part of the attribute applies and should
/// be initialized using [method`Pango.Attribute.init`]. By default, an attribute
/// will have an all-inclusive range of [0,`G_MAXUINT`].
///
/// The `Attribute` type acts as an owner of an underlying `PangoAttribute` instance.
/// It provides the methods that can operate on this data type through `AttributeProtocol` conformance.
/// Use `Attribute` as a strong reference or owner of a `PangoAttribute` instance.
///
open class Attribute: AttributeProtocol {
        /// Untyped pointer to the underlying `PangoAttribute` instance.
    /// For type-safe access, use the generated, typed pointer `attribute_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Attribute` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoAttribute>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Attribute` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoAttribute>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Attribute` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Attribute` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Attribute` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoAttribute>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Attribute` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoAttribute>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoAttribute` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Attribute` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoAttribute>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoAttribute, cannot ref(attribute_ptr)
    }

    /// Reference intialiser for a related type that implements `AttributeProtocol`
    /// `PangoAttribute` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `AttributeProtocol`
    @inlinable public init<T: AttributeProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoAttribute, cannot ref(attribute_ptr)
    }

    /// Do-nothing destructor for `PangoAttribute`.
    deinit {
        // no reference counting for PangoAttribute, cannot unref(attribute_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttributeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttributeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoAttribute, cannot ref(attribute_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttributeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttributeProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoAttribute, cannot ref(attribute_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttributeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttributeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoAttribute, cannot ref(attribute_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttributeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttributeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoAttribute, cannot ref(attribute_ptr)
    }



}

// MARK: no Attribute properties

// MARK: no Attribute signals

// MARK: Attribute has no signals
// MARK: Attribute Record: AttributeProtocol extension (methods and fields)
public extension AttributeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoAttribute` instance.
    @inlinable var attribute_ptr: UnsafeMutablePointer<PangoAttribute>! { return ptr?.assumingMemoryBound(to: PangoAttribute.self) }

    /// Returns the attribute cast to `PangoAttrColor`.
    /// 
    /// This is mainly useful for language bindings.
    @inlinable func asColor() -> Pango.AttrColorRef! {
        let result = pango_attribute_as_color(attribute_ptr)
        let rv = AttrColorRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Returns the attribute cast to `PangoAttrFloat`.
    /// 
    /// This is mainly useful for language bindings.
    @inlinable func asFloat() -> Pango.AttrFloatRef! {
        let result = pango_attribute_as_float(attribute_ptr)
        let rv = AttrFloatRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Returns the attribute cast to `PangoAttrFontDesc`.
    /// 
    /// This is mainly useful for language bindings.
    @inlinable func asFontDesc() -> Pango.AttrFontDescRef! {
        let result = pango_attribute_as_font_desc(attribute_ptr)
        let rv = AttrFontDescRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Returns the attribute cast to `PangoAttrFontFeatures`.
    /// 
    /// This is mainly useful for language bindings.
    @inlinable func asFontFeatures() -> Pango.AttrFontFeaturesRef! {
        let result = pango_attribute_as_font_features(attribute_ptr)
        let rv = AttrFontFeaturesRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Returns the attribute cast to `PangoAttrInt`.
    /// 
    /// This is mainly useful for language bindings.
    @inlinable func asInt() -> Pango.AttrIntRef! {
        let result = pango_attribute_as_int(attribute_ptr)
        let rv = AttrIntRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Returns the attribute cast to `PangoAttrLanguage`.
    /// 
    /// This is mainly useful for language bindings.
    @inlinable func asLanguage() -> Pango.AttrLanguageRef! {
        let result = pango_attribute_as_language(attribute_ptr)
        let rv = AttrLanguageRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Returns the attribute cast to `PangoAttrShape`.
    /// 
    /// This is mainly useful for language bindings.
    @inlinable func asShape() -> Pango.AttrShapeRef! {
        let result = pango_attribute_as_shape(attribute_ptr)
        let rv = AttrShapeRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Returns the attribute cast to `PangoAttrSize`.
    /// 
    /// This is mainly useful for language bindings.
    @inlinable func asSize() -> Pango.AttrSizeRef! {
        let result = pango_attribute_as_size(attribute_ptr)
        let rv = AttrSizeRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Returns the attribute cast to `PangoAttrString`.
    /// 
    /// This is mainly useful for language bindings.
    @inlinable func asString() -> Pango.AttrStringRef! {
        let result = pango_attribute_as_string(attribute_ptr)
        let rv = AttrStringRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Make a copy of an attribute.
    @inlinable func copy() -> Pango.AttributeRef! {
        let result = pango_attribute_copy(attribute_ptr)
        guard let rv = AttributeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Destroy a `PangoAttribute` and free all associated memory.
    @inlinable func destroy() {
        
        pango_attribute_destroy(attribute_ptr)
        
    }

    /// Compare two attributes for equality.
    /// 
    /// This compares only the actual value of the two
    /// attributes and not the ranges that the attributes
    /// apply to.
    @inlinable func equal<AttributeT: AttributeProtocol>(attr2: AttributeT) -> Bool {
        let result = pango_attribute_equal(attribute_ptr, attr2.attribute_ptr)
        let rv = ((result) != 0)
        return rv
    }

    /// Initializes `attr`'s klass to `klass`, it's start_index to
    /// `PANGO_ATTR_INDEX_FROM_TEXT_BEGINNING` and end_index to
    /// `PANGO_ATTR_INDEX_TO_TEXT_END` such that the attribute applies
    /// to the entire text by default.
    @inlinable func init_<AttrClassT: AttrClassProtocol>(klass: AttrClassT) {
        
        pango_attribute_init(attribute_ptr, klass._ptr)
        
    }

    /// the class structure holding information about the type of the attribute
    @inlinable var klass: AttrClassRef! {
        /// the class structure holding information about the type of the attribute
        get {
            let rv = AttrClassRef(gconstpointer: gconstpointer(attribute_ptr.pointee.klass))
    return rv
        }
        /// the class structure holding information about the type of the attribute
         set {
            attribute_ptr.pointee.klass = UnsafePointer<PangoAttrClass>(newValue._ptr)
        }
    }

    /// the start index of the range (in bytes).
    @inlinable var startIndex: guint {
        /// the start index of the range (in bytes).
        get {
            let rv = attribute_ptr.pointee.start_index
    return rv
        }
        /// the start index of the range (in bytes).
         set {
            attribute_ptr.pointee.start_index = newValue
        }
    }

    /// end index of the range (in bytes). The character at this index
    ///   is not included in the range.
    @inlinable var endIndex: guint {
        /// end index of the range (in bytes). The character at this index
        ///   is not included in the range.
        get {
            let rv = attribute_ptr.pointee.end_index
    return rv
        }
        /// end index of the range (in bytes). The character at this index
        ///   is not included in the range.
         set {
            attribute_ptr.pointee.end_index = newValue
        }
    }

}



