import CGLib
import CPango
import GLib
import GLibObject

// MARK: - FontMetrics Record

/// The `FontMetricsProtocol` protocol exposes the methods and properties of an underlying `PangoFontMetrics` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontMetrics`.
/// Alternatively, use `FontMetricsRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `PangoFontMetrics` structure holds the overall metric information
/// for a font.
/// 
/// The information in a `PangoFontMetrics` structure may be restricted
/// to a script. The fields of this structure are private to implementations
/// of a font backend. See the documentation of the corresponding getters
/// for documentation of their meaning.
public protocol FontMetricsProtocol {
        /// Untyped pointer to the underlying `PangoFontMetrics` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFontMetrics` instance.
    var font_metrics_ptr: UnsafeMutablePointer<PangoFontMetrics>! { get }

    /// Required Initialiser for types conforming to `FontMetricsProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `FontMetricsRef` type acts as a lightweight Swift reference to an underlying `PangoFontMetrics` instance.
/// It exposes methods that can operate on this data type through `FontMetricsProtocol` conformance.
/// Use `FontMetricsRef` only as an `unowned` reference to an existing `PangoFontMetrics` instance.
///
/// A `PangoFontMetrics` structure holds the overall metric information
/// for a font.
/// 
/// The information in a `PangoFontMetrics` structure may be restricted
/// to a script. The fields of this structure are private to implementations
/// of a font backend. See the documentation of the corresponding getters
/// for documentation of their meaning.
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

/// The `FontMetrics` type acts as a reference-counted owner of an underlying `PangoFontMetrics` instance.
/// It provides the methods that can operate on this data type through `FontMetricsProtocol` conformance.
/// Use `FontMetrics` as a strong reference or owner of a `PangoFontMetrics` instance.
///
/// A `PangoFontMetrics` structure holds the overall metric information
/// for a font.
/// 
/// The information in a `PangoFontMetrics` structure may be restricted
/// to a script. The fields of this structure are private to implementations
/// of a font backend. See the documentation of the corresponding getters
/// for documentation of their meaning.
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
        let rv = Int(pango_font_metrics_get_approximate_char_width(font_metrics_ptr))
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
        let rv = Int(pango_font_metrics_get_approximate_digit_width(font_metrics_ptr))
        return rv
    }

    /// Gets the ascent from a font metrics structure.
    /// 
    /// The ascent is the distance from the baseline to the logical top
    /// of a line of text. (The logical top may be above or below the top
    /// of the actual drawn ink. It is necessary to lay out the text to
    /// figure where the ink will be.)
    @inlinable func getAscent() -> Int {
        let rv = Int(pango_font_metrics_get_ascent(font_metrics_ptr))
        return rv
    }

    /// Gets the descent from a font metrics structure.
    /// 
    /// The descent is the distance from the baseline to the logical bottom
    /// of a line of text. (The logical bottom may be above or below the
    /// bottom of the actual drawn ink. It is necessary to lay out the text
    /// to figure where the ink will be.)
    @inlinable func getDescent() -> Int {
        let rv = Int(pango_font_metrics_get_descent(font_metrics_ptr))
        return rv
    }

    /// Gets the line height from a font metrics structure.
    /// 
    /// The line height is the distance between successive baselines
    /// in wrapped text.
    /// 
    /// If the line height is not available, 0 is returned.
    @inlinable func getHeight() -> Int {
        let rv = Int(pango_font_metrics_get_height(font_metrics_ptr))
        return rv
    }

    /// Gets the suggested position to draw the strikethrough.
    /// 
    /// The value returned is the distance *above* the
    /// baseline of the top of the strikethrough.
    @inlinable func getStrikethroughPosition() -> Int {
        let rv = Int(pango_font_metrics_get_strikethrough_position(font_metrics_ptr))
        return rv
    }

    /// Gets the suggested thickness to draw for the strikethrough.
    @inlinable func getStrikethroughThickness() -> Int {
        let rv = Int(pango_font_metrics_get_strikethrough_thickness(font_metrics_ptr))
        return rv
    }

    /// Gets the suggested position to draw the underline.
    /// 
    /// The value returned is the distance *above* the baseline of the top
    /// of the underline. Since most fonts have underline positions beneath
    /// the baseline, this value is typically negative.
    @inlinable func getUnderlinePosition() -> Int {
        let rv = Int(pango_font_metrics_get_underline_position(font_metrics_ptr))
        return rv
    }

    /// Gets the suggested thickness to draw for the underline.
    @inlinable func getUnderlineThickness() -> Int {
        let rv = Int(pango_font_metrics_get_underline_thickness(font_metrics_ptr))
        return rv
    }

    /// Increase the reference count of a font metrics structure by one.
    @discardableResult @inlinable func ref() -> FontMetricsRef! {
        guard let rv = FontMetricsRef(gconstpointer: gconstpointer(pango_font_metrics_ref(font_metrics_ptr))) else { return nil }
        return rv
    }

    /// Decrease the reference count of a font metrics structure by one.
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
            let rv = Int(pango_font_metrics_get_approximate_char_width(font_metrics_ptr))
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
            let rv = Int(pango_font_metrics_get_approximate_digit_width(font_metrics_ptr))
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
            let rv = Int(pango_font_metrics_get_ascent(font_metrics_ptr))
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
            let rv = Int(pango_font_metrics_get_descent(font_metrics_ptr))
            return rv
        }
    }

    /// Gets the line height from a font metrics structure.
    /// 
    /// The line height is the distance between successive baselines
    /// in wrapped text.
    /// 
    /// If the line height is not available, 0 is returned.
    @inlinable var height: Int {
        /// Gets the line height from a font metrics structure.
        /// 
        /// The line height is the distance between successive baselines
        /// in wrapped text.
        /// 
        /// If the line height is not available, 0 is returned.
        get {
            let rv = Int(pango_font_metrics_get_height(font_metrics_ptr))
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
            let rv = Int(pango_font_metrics_get_strikethrough_position(font_metrics_ptr))
            return rv
        }
    }

    /// Gets the suggested thickness to draw for the strikethrough.
    @inlinable var strikethroughThickness: Int {
        /// Gets the suggested thickness to draw for the strikethrough.
        get {
            let rv = Int(pango_font_metrics_get_strikethrough_thickness(font_metrics_ptr))
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
            let rv = Int(pango_font_metrics_get_underline_position(font_metrics_ptr))
            return rv
        }
    }

    /// Gets the suggested thickness to draw for the underline.
    @inlinable var underlineThickness: Int {
        /// Gets the suggested thickness to draw for the underline.
        get {
            let rv = Int(pango_font_metrics_get_underline_thickness(font_metrics_ptr))
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



