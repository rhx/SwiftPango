import CGLib
import CPango
import GLib
import GLibObject

// MARK: - GlyphString Record

/// The `GlyphStringProtocol` protocol exposes the methods and properties of an underlying `PangoGlyphString` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GlyphString`.
/// Alternatively, use `GlyphStringRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `PangoGlyphString` is used to store strings of glyphs with geometry
/// and visual attribute information.
/// 
/// The storage for the glyph information is owned by the structure
/// which simplifies memory management.
public protocol GlyphStringProtocol {
        /// Untyped pointer to the underlying `PangoGlyphString` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoGlyphString` instance.
    var glyph_string_ptr: UnsafeMutablePointer<PangoGlyphString>! { get }

    /// Required Initialiser for types conforming to `GlyphStringProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `GlyphStringRef` type acts as a lightweight Swift reference to an underlying `PangoGlyphString` instance.
/// It exposes methods that can operate on this data type through `GlyphStringProtocol` conformance.
/// Use `GlyphStringRef` only as an `unowned` reference to an existing `PangoGlyphString` instance.
///
/// A `PangoGlyphString` is used to store strings of glyphs with geometry
/// and visual attribute information.
/// 
/// The storage for the glyph information is owned by the structure
/// which simplifies memory management.
public struct GlyphStringRef: GlyphStringProtocol {
        /// Untyped pointer to the underlying `PangoGlyphString` instance.
    /// For type-safe access, use the generated, typed pointer `glyph_string_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GlyphStringRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoGlyphString>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoGlyphString>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoGlyphString>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoGlyphString>?) {
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

    /// Reference intialiser for a related type that implements `GlyphStringProtocol`
    @inlinable init<T: GlyphStringProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphStringProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphStringProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphStringProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphStringProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphStringProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Create a new `PangoGlyphString`.
    @inlinable init() {
        let rv = pango_glyph_string_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `GlyphString` type acts as an owner of an underlying `PangoGlyphString` instance.
/// It provides the methods that can operate on this data type through `GlyphStringProtocol` conformance.
/// Use `GlyphString` as a strong reference or owner of a `PangoGlyphString` instance.
///
/// A `PangoGlyphString` is used to store strings of glyphs with geometry
/// and visual attribute information.
/// 
/// The storage for the glyph information is owned by the structure
/// which simplifies memory management.
open class GlyphString: GlyphStringProtocol {
        /// Untyped pointer to the underlying `PangoGlyphString` instance.
    /// For type-safe access, use the generated, typed pointer `glyph_string_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphString` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoGlyphString>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphString` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoGlyphString>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphString` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphString` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphString` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoGlyphString>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphString` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoGlyphString>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoGlyphString` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `GlyphString` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoGlyphString>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoGlyphString, cannot ref(glyph_string_ptr)
    }

    /// Reference intialiser for a related type that implements `GlyphStringProtocol`
    /// `PangoGlyphString` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `GlyphStringProtocol`
    @inlinable public init<T: GlyphStringProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoGlyphString, cannot ref(glyph_string_ptr)
    }

    /// Do-nothing destructor for `PangoGlyphString`.
    deinit {
        // no reference counting for PangoGlyphString, cannot unref(glyph_string_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphStringProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphStringProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoGlyphString, cannot ref(glyph_string_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphStringProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphStringProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoGlyphString, cannot ref(glyph_string_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphStringProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphStringProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoGlyphString, cannot ref(glyph_string_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphStringProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphStringProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoGlyphString, cannot ref(glyph_string_ptr)
    }

    /// Create a new `PangoGlyphString`.
    @inlinable public init() {
        let rv = pango_glyph_string_new()
        ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no GlyphString properties

// MARK: no GlyphString signals

// MARK: GlyphString has no signals
// MARK: GlyphString Record: GlyphStringProtocol extension (methods and fields)
public extension GlyphStringProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoGlyphString` instance.
    @inlinable var glyph_string_ptr: UnsafeMutablePointer<PangoGlyphString>! { return ptr?.assumingMemoryBound(to: PangoGlyphString.self) }

    /// Copy a glyph string and associated storage.
    @inlinable func copy() -> GlyphStringRef! {
        guard let rv = GlyphStringRef(gconstpointer: gconstpointer(pango_glyph_string_copy(glyph_string_ptr))) else { return nil }
        return rv
    }

    /// Compute the logical and ink extents of a glyph string.
    /// 
    /// See the documentation for [method`Pango.Font.get_glyph_extents`] for details
    /// about the interpretation of the rectangles.
    /// 
    /// Examples of logical (red) and ink (green) rects:
    /// 
    /// ![](rects1.png) ![](rects2.png)
    @inlinable func extents<FontT: FontProtocol>(font: FontT, inkRect: RectangleRef? = nil, logicalRect: RectangleRef? = nil) {
        pango_glyph_string_extents(glyph_string_ptr, font.font_ptr, inkRect?._ptr, logicalRect?._ptr)
    
    }
    /// Compute the logical and ink extents of a glyph string.
    /// 
    /// See the documentation for [method`Pango.Font.get_glyph_extents`] for details
    /// about the interpretation of the rectangles.
    /// 
    /// Examples of logical (red) and ink (green) rects:
    /// 
    /// ![](rects1.png) ![](rects2.png)
    @inlinable func extents<FontT: FontProtocol, RectangleT: RectangleProtocol>(font: FontT, inkRect: RectangleT?, logicalRect: RectangleT?) {
        pango_glyph_string_extents(glyph_string_ptr, font.font_ptr, inkRect?._ptr, logicalRect?._ptr)
    
    }

    /// Computes the extents of a sub-portion of a glyph string.
    /// 
    /// The extents are relative to the start of the glyph string range
    /// (the origin of their coordinate system is at the start of the range,
    /// not at the start of the entire glyph string).
    @inlinable func extentsRange<FontT: FontProtocol>(start: Int, end: Int, font: FontT, inkRect: RectangleRef? = nil, logicalRect: RectangleRef? = nil) {
        pango_glyph_string_extents_range(glyph_string_ptr, gint(start), gint(end), font.font_ptr, inkRect?._ptr, logicalRect?._ptr)
    
    }
    /// Computes the extents of a sub-portion of a glyph string.
    /// 
    /// The extents are relative to the start of the glyph string range
    /// (the origin of their coordinate system is at the start of the range,
    /// not at the start of the entire glyph string).
    @inlinable func extentsRange<FontT: FontProtocol, RectangleT: RectangleProtocol>(start: Int, end: Int, font: FontT, inkRect: RectangleT?, logicalRect: RectangleT?) {
        pango_glyph_string_extents_range(glyph_string_ptr, gint(start), gint(end), font.font_ptr, inkRect?._ptr, logicalRect?._ptr)
    
    }

    /// Free a glyph string and associated storage.
    @inlinable func free() {
        pango_glyph_string_free(glyph_string_ptr)
    
    }

    /// Given a `PangoGlyphString` and corresponding text, determine the width
    /// corresponding to each character.
    /// 
    /// When multiple characters compose a single cluster, the width of the
    /// entire cluster is divided equally among the characters.
    /// 
    /// See also [method`Pango.GlyphItem.get_logical_widths`].
    @inlinable func getLogicalWidths(text: UnsafePointer<CChar>!, length: Int, embeddingLevel: Int, logicalWidths: UnsafeMutablePointer<CInt>!) {
        pango_glyph_string_get_logical_widths(glyph_string_ptr, text, gint(length), gint(embeddingLevel), logicalWidths)
    
    }

    /// Computes the logical width of the glyph string.
    /// 
    /// This can also be computed using [method`Pango.GlyphString.extents`].
    /// However, since this only computes the width, it's much faster. This
    /// is in fact only a convenience function that computes the sum of
    /// `geometry.width` for each glyph in the `glyphs`.
    @inlinable func getWidth() -> Int {
        let rv = Int(pango_glyph_string_get_width(glyph_string_ptr))
        return rv
    }

    /// Converts from character position to x position.
    /// 
    /// The X position is measured from the left edge of the run.
    /// Character positions are computed by dividing up each cluster
    /// into equal portions.
    @inlinable func indexToX<AnalysisT: AnalysisProtocol>(text: UnsafeMutablePointer<CChar>!, length: Int, analysis: AnalysisT, index_: Int, trailing: Bool, xPos: UnsafeMutablePointer<gint>!) {
        pango_glyph_string_index_to_x(glyph_string_ptr, text, gint(length), analysis._ptr, gint(index_), gboolean((trailing) ? 1 : 0), xPos)
    
    }

    /// Resize a glyph string to the given length.
    @inlinable func setSize(newLen: Int) {
        pango_glyph_string_set_size(glyph_string_ptr, gint(newLen))
    
    }

    /// Convert from x offset to character position.
    /// 
    /// Character positions are computed by dividing up each cluster into
    /// equal portions. In scripts where positioning within a cluster is
    /// not allowed (such as Thai), the returned value may not be a valid
    /// cursor position; the caller must combine the result with the logical
    /// attributes for the text to compute the valid cursor position.
    @inlinable func xToIndex<AnalysisT: AnalysisProtocol>(text: UnsafeMutablePointer<CChar>!, length: Int, analysis: AnalysisT, xPos: Int, index_: UnsafeMutablePointer<gint>!, trailing: UnsafeMutablePointer<gint>!) {
        pango_glyph_string_x_to_index(glyph_string_ptr, text, gint(length), analysis._ptr, gint(xPos), index_, trailing)
    
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
    @inlinable func shape<AnalysisT: AnalysisProtocol>(text: UnsafePointer<CChar>!, length: Int, analysis: AnalysisT) {
        pango_shape(text, gint(length), analysis._ptr, glyph_string_ptr)
    
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
    @inlinable func shapeFull<AnalysisT: AnalysisProtocol>(itemText: UnsafePointer<CChar>!, itemLength: Int, paragraphText: UnsafePointer<CChar>? = nil, paragraphLength: Int, analysis: AnalysisT) {
        pango_shape_full(itemText, gint(itemLength), paragraphText, gint(paragraphLength), analysis._ptr, glyph_string_ptr)
    
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
    @inlinable func shapeWithFlags<AnalysisT: AnalysisProtocol>(itemText: UnsafePointer<CChar>!, itemLength: Int, paragraphText: UnsafePointer<CChar>? = nil, paragraphLength: Int, analysis: AnalysisT, flags: ShapeFlags) {
        pango_shape_with_flags(itemText, gint(itemLength), paragraphText, gint(paragraphLength), analysis._ptr, glyph_string_ptr, flags.value)
    
    }
    /// Computes the logical width of the glyph string.
    /// 
    /// This can also be computed using [method`Pango.GlyphString.extents`].
    /// However, since this only computes the width, it's much faster. This
    /// is in fact only a convenience function that computes the sum of
    /// `geometry.width` for each glyph in the `glyphs`.
    @inlinable var width: Int {
        /// Computes the logical width of the glyph string.
        /// 
        /// This can also be computed using [method`Pango.GlyphString.extents`].
        /// However, since this only computes the width, it's much faster. This
        /// is in fact only a convenience function that computes the sum of
        /// `geometry.width` for each glyph in the `glyphs`.
        get {
            let rv = Int(pango_glyph_string_get_width(glyph_string_ptr))
            return rv
        }
    }

    /// number of the glyphs in this glyph string.
    @inlinable var numGlyphs: gint {
        /// number of the glyphs in this glyph string.
        get {
            let rv = glyph_string_ptr.pointee.num_glyphs
            return rv
        }
        /// number of the glyphs in this glyph string.
         set {
            glyph_string_ptr.pointee.num_glyphs = newValue
        }
    }

    /// array of glyph information
    ///          for the glyph string.
    @inlinable var glyphs: UnsafeMutablePointer<PangoGlyphInfo>! {
        /// array of glyph information
        ///          for the glyph string.
        get {
            let rv = glyph_string_ptr.pointee.glyphs
            return rv
        }
        /// array of glyph information
        ///          for the glyph string.
         set {
            glyph_string_ptr.pointee.glyphs = newValue
        }
    }

    /// logical cluster info, indexed by the byte index
    ///                within the text corresponding to the glyph string.
    @inlinable var logClusters: UnsafeMutablePointer<gint>! {
        /// logical cluster info, indexed by the byte index
        ///                within the text corresponding to the glyph string.
        get {
            let rv = glyph_string_ptr.pointee.log_clusters
            return rv
        }
        /// logical cluster info, indexed by the byte index
        ///                within the text corresponding to the glyph string.
         set {
            glyph_string_ptr.pointee.log_clusters = newValue
        }
    }

    // var space is unavailable because space is private

}



