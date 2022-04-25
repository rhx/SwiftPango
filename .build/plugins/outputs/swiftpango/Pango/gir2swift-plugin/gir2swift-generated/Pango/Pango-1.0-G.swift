import CGLib
import CHarfBuzz
import CPango
import GLib
import GLibObject
import HarfBuzz
// MARK: - GlyphGeometry Record

/// The `PangoGlyphGeometry` structure contains width and positioning
/// information for a single glyph.
/// 
/// Note that `width` is not guaranteed to be the same as the glyph
/// extents. Kerning and other positioning applied during shaping will
/// affect both the `width` and the `x_offset` for the glyphs in the
/// glyph string that results from shaping.
/// 
/// The information in this struct is intended for rendering the glyphs,
/// as follows:
/// 
/// 1. Assume the current point is (x, y)
/// 2. Render the current glyph at (x + x_offset, y + y_offset),
/// 3. Advance the current point to (x + width, y)
/// 4. Render the next glyph
///
/// The `GlyphGeometryProtocol` protocol exposes the methods and properties of an underlying `PangoGlyphGeometry` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GlyphGeometry`.
/// Alternatively, use `GlyphGeometryRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol GlyphGeometryProtocol {
        /// Untyped pointer to the underlying `PangoGlyphGeometry` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoGlyphGeometry` instance.
    var _ptr: UnsafeMutablePointer<PangoGlyphGeometry>! { get }

    /// Required Initialiser for types conforming to `GlyphGeometryProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `PangoGlyphGeometry` structure contains width and positioning
/// information for a single glyph.
/// 
/// Note that `width` is not guaranteed to be the same as the glyph
/// extents. Kerning and other positioning applied during shaping will
/// affect both the `width` and the `x_offset` for the glyphs in the
/// glyph string that results from shaping.
/// 
/// The information in this struct is intended for rendering the glyphs,
/// as follows:
/// 
/// 1. Assume the current point is (x, y)
/// 2. Render the current glyph at (x + x_offset, y + y_offset),
/// 3. Advance the current point to (x + width, y)
/// 4. Render the next glyph
///
/// The `GlyphGeometryRef` type acts as a lightweight Swift reference to an underlying `PangoGlyphGeometry` instance.
/// It exposes methods that can operate on this data type through `GlyphGeometryProtocol` conformance.
/// Use `GlyphGeometryRef` only as an `unowned` reference to an existing `PangoGlyphGeometry` instance.
///
public struct GlyphGeometryRef: GlyphGeometryProtocol {
        /// Untyped pointer to the underlying `PangoGlyphGeometry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GlyphGeometryRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoGlyphGeometry>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoGlyphGeometry>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoGlyphGeometry>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoGlyphGeometry>?) {
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

    /// Reference intialiser for a related type that implements `GlyphGeometryProtocol`
    @inlinable init<T: GlyphGeometryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PangoGlyphGeometry` structure contains width and positioning
/// information for a single glyph.
/// 
/// Note that `width` is not guaranteed to be the same as the glyph
/// extents. Kerning and other positioning applied during shaping will
/// affect both the `width` and the `x_offset` for the glyphs in the
/// glyph string that results from shaping.
/// 
/// The information in this struct is intended for rendering the glyphs,
/// as follows:
/// 
/// 1. Assume the current point is (x, y)
/// 2. Render the current glyph at (x + x_offset, y + y_offset),
/// 3. Advance the current point to (x + width, y)
/// 4. Render the next glyph
///
/// The `GlyphGeometry` type acts as an owner of an underlying `PangoGlyphGeometry` instance.
/// It provides the methods that can operate on this data type through `GlyphGeometryProtocol` conformance.
/// Use `GlyphGeometry` as a strong reference or owner of a `PangoGlyphGeometry` instance.
///
open class GlyphGeometry: GlyphGeometryProtocol {
        /// Untyped pointer to the underlying `PangoGlyphGeometry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphGeometry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoGlyphGeometry>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphGeometry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoGlyphGeometry>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphGeometry` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphGeometry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphGeometry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoGlyphGeometry>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphGeometry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoGlyphGeometry>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoGlyphGeometry` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `GlyphGeometry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoGlyphGeometry>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoGlyphGeometry, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `GlyphGeometryProtocol`
    /// `PangoGlyphGeometry` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `GlyphGeometryProtocol`
    @inlinable public init<T: GlyphGeometryProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoGlyphGeometry, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `PangoGlyphGeometry`.
    deinit {
        // no reference counting for PangoGlyphGeometry, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoGlyphGeometry, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoGlyphGeometry, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoGlyphGeometry, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoGlyphGeometry, cannot ref(_ptr)
    }



}

// MARK: no GlyphGeometry properties

// MARK: no GlyphGeometry signals

// MARK: GlyphGeometry has no signals
// MARK: GlyphGeometry Record: GlyphGeometryProtocol extension (methods and fields)
public extension GlyphGeometryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoGlyphGeometry` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoGlyphGeometry>! { return ptr?.assumingMemoryBound(to: PangoGlyphGeometry.self) }


    /// the logical width to use for the the character.
    @inlinable var width: PangoGlyphUnit {
        /// the logical width to use for the the character.
        get {
            let rv = _ptr.pointee.width
    return rv
        }
        /// the logical width to use for the the character.
         set {
            _ptr.pointee.width = newValue
        }
    }

    /// horizontal offset from nominal character position.
    @inlinable var xOffset: PangoGlyphUnit {
        /// horizontal offset from nominal character position.
        get {
            let rv = _ptr.pointee.x_offset
    return rv
        }
        /// horizontal offset from nominal character position.
         set {
            _ptr.pointee.x_offset = newValue
        }
    }

    /// vertical offset from nominal character position.
    @inlinable var yOffset: PangoGlyphUnit {
        /// vertical offset from nominal character position.
        get {
            let rv = _ptr.pointee.y_offset
    return rv
        }
        /// vertical offset from nominal character position.
         set {
            _ptr.pointee.y_offset = newValue
        }
    }

}



// MARK: - GlyphInfo Record

/// A `PangoGlyphInfo` structure represents a single glyph with
/// positioning information and visual attributes.
///
/// The `GlyphInfoProtocol` protocol exposes the methods and properties of an underlying `PangoGlyphInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GlyphInfo`.
/// Alternatively, use `GlyphInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol GlyphInfoProtocol {
        /// Untyped pointer to the underlying `PangoGlyphInfo` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoGlyphInfo` instance.
    var _ptr: UnsafeMutablePointer<PangoGlyphInfo>! { get }

    /// Required Initialiser for types conforming to `GlyphInfoProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `PangoGlyphInfo` structure represents a single glyph with
/// positioning information and visual attributes.
///
/// The `GlyphInfoRef` type acts as a lightweight Swift reference to an underlying `PangoGlyphInfo` instance.
/// It exposes methods that can operate on this data type through `GlyphInfoProtocol` conformance.
/// Use `GlyphInfoRef` only as an `unowned` reference to an existing `PangoGlyphInfo` instance.
///
public struct GlyphInfoRef: GlyphInfoProtocol {
        /// Untyped pointer to the underlying `PangoGlyphInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GlyphInfoRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoGlyphInfo>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoGlyphInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoGlyphInfo>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoGlyphInfo>?) {
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

    /// Reference intialiser for a related type that implements `GlyphInfoProtocol`
    @inlinable init<T: GlyphInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphInfoProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphInfoProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphInfoProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphInfoProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphInfoProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `PangoGlyphInfo` structure represents a single glyph with
/// positioning information and visual attributes.
///
/// The `GlyphInfo` type acts as an owner of an underlying `PangoGlyphInfo` instance.
/// It provides the methods that can operate on this data type through `GlyphInfoProtocol` conformance.
/// Use `GlyphInfo` as a strong reference or owner of a `PangoGlyphInfo` instance.
///
open class GlyphInfo: GlyphInfoProtocol {
        /// Untyped pointer to the underlying `PangoGlyphInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoGlyphInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoGlyphInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphInfo` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoGlyphInfo>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoGlyphInfo>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoGlyphInfo` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `GlyphInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoGlyphInfo>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoGlyphInfo, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `GlyphInfoProtocol`
    /// `PangoGlyphInfo` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `GlyphInfoProtocol`
    @inlinable public init<T: GlyphInfoProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoGlyphInfo, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `PangoGlyphInfo`.
    deinit {
        // no reference counting for PangoGlyphInfo, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoGlyphInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphInfoProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphInfoProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoGlyphInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphInfoProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphInfoProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoGlyphInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoGlyphInfo, cannot ref(_ptr)
    }



}

// MARK: no GlyphInfo properties

// MARK: no GlyphInfo signals

// MARK: GlyphInfo has no signals
// MARK: GlyphInfo Record: GlyphInfoProtocol extension (methods and fields)
public extension GlyphInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoGlyphInfo` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoGlyphInfo>! { return ptr?.assumingMemoryBound(to: PangoGlyphInfo.self) }


    /// the glyph itself.
    @inlinable var glyph: PangoGlyph {
        /// the glyph itself.
        get {
            let rv = _ptr.pointee.glyph
    return rv
        }
        /// the glyph itself.
         set {
            _ptr.pointee.glyph = newValue
        }
    }

    /// the positional information about the glyph.
    @inlinable var geometry: PangoGlyphGeometry {
        /// the positional information about the glyph.
        get {
            let rv = _ptr.pointee.geometry
    return rv
        }
        /// the positional information about the glyph.
         set {
            _ptr.pointee.geometry = newValue
        }
    }

    /// the visual attributes of the glyph.
    @inlinable var attr: PangoGlyphVisAttr {
        /// the visual attributes of the glyph.
        get {
            let rv = _ptr.pointee.attr
    return rv
        }
        /// the visual attributes of the glyph.
         set {
            _ptr.pointee.attr = newValue
        }
    }

}



// MARK: - GlyphItem Record

/// A `PangoGlyphItem` is a pair of a `PangoItem` and the glyphs
/// resulting from shaping the items text.
/// 
/// As an example of the usage of `PangoGlyphItem`, the results
/// of shaping text with `PangoLayout` is a list of `PangoLayoutLine`,
/// each of which contains a list of `PangoGlyphItem`.
///
/// The `GlyphItemProtocol` protocol exposes the methods and properties of an underlying `PangoGlyphItem` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GlyphItem`.
/// Alternatively, use `GlyphItemRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol GlyphItemProtocol {
        /// Untyped pointer to the underlying `PangoGlyphItem` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoGlyphItem` instance.
    var glyph_item_ptr: UnsafeMutablePointer<PangoGlyphItem>! { get }

    /// Required Initialiser for types conforming to `GlyphItemProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `PangoGlyphItem` is a pair of a `PangoItem` and the glyphs
/// resulting from shaping the items text.
/// 
/// As an example of the usage of `PangoGlyphItem`, the results
/// of shaping text with `PangoLayout` is a list of `PangoLayoutLine`,
/// each of which contains a list of `PangoGlyphItem`.
///
/// The `GlyphItemRef` type acts as a lightweight Swift reference to an underlying `PangoGlyphItem` instance.
/// It exposes methods that can operate on this data type through `GlyphItemProtocol` conformance.
/// Use `GlyphItemRef` only as an `unowned` reference to an existing `PangoGlyphItem` instance.
///
public struct GlyphItemRef: GlyphItemProtocol {
        /// Untyped pointer to the underlying `PangoGlyphItem` instance.
    /// For type-safe access, use the generated, typed pointer `glyph_item_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GlyphItemRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoGlyphItem>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoGlyphItem>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoGlyphItem>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoGlyphItem>?) {
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

    /// Reference intialiser for a related type that implements `GlyphItemProtocol`
    @inlinable init<T: GlyphItemProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `PangoGlyphItem` is a pair of a `PangoItem` and the glyphs
/// resulting from shaping the items text.
/// 
/// As an example of the usage of `PangoGlyphItem`, the results
/// of shaping text with `PangoLayout` is a list of `PangoLayoutLine`,
/// each of which contains a list of `PangoGlyphItem`.
///
/// The `GlyphItem` type acts as an owner of an underlying `PangoGlyphItem` instance.
/// It provides the methods that can operate on this data type through `GlyphItemProtocol` conformance.
/// Use `GlyphItem` as a strong reference or owner of a `PangoGlyphItem` instance.
///
open class GlyphItem: GlyphItemProtocol {
        /// Untyped pointer to the underlying `PangoGlyphItem` instance.
    /// For type-safe access, use the generated, typed pointer `glyph_item_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoGlyphItem>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoGlyphItem>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphItem` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoGlyphItem>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoGlyphItem>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoGlyphItem` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `GlyphItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoGlyphItem>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoGlyphItem, cannot ref(glyph_item_ptr)
    }

    /// Reference intialiser for a related type that implements `GlyphItemProtocol`
    /// `PangoGlyphItem` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `GlyphItemProtocol`
    @inlinable public init<T: GlyphItemProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoGlyphItem, cannot ref(glyph_item_ptr)
    }

    /// Do-nothing destructor for `PangoGlyphItem`.
    deinit {
        // no reference counting for PangoGlyphItem, cannot unref(glyph_item_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoGlyphItem, cannot ref(glyph_item_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoGlyphItem, cannot ref(glyph_item_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoGlyphItem, cannot ref(glyph_item_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoGlyphItem, cannot ref(glyph_item_ptr)
    }



}

// MARK: no GlyphItem properties

// MARK: no GlyphItem signals

// MARK: GlyphItem has no signals
// MARK: GlyphItem Record: GlyphItemProtocol extension (methods and fields)
public extension GlyphItemProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoGlyphItem` instance.
    @inlinable var glyph_item_ptr: UnsafeMutablePointer<PangoGlyphItem>! { return ptr?.assumingMemoryBound(to: PangoGlyphItem.self) }

    /// Splits a shaped item (`PangoGlyphItem`) into multiple items based
    /// on an attribute list.
    /// 
    /// The idea is that if you have attributes that don't affect shaping,
    /// such as color or underline, to avoid affecting shaping, you filter
    /// them out ([method`Pango.AttrList.filter`]), apply the shaping process
    /// and then reapply them to the result using this function.
    /// 
    /// All attributes that start or end inside a cluster are applied
    /// to that cluster; for instance, if half of a cluster is underlined
    /// and the other-half strikethrough, then the cluster will end
    /// up with both underline and strikethrough attributes. In these
    /// cases, it may happen that `item-`&gt;extra_attrs for some of the
    /// result items can have multiple attributes of the same type.
    /// 
    /// This function takes ownership of `glyph_item`; it will be reused
    /// as one of the elements in the list.
    @inlinable func applyAttrs<AttrListT: AttrListProtocol>(text: UnsafePointer<CChar>!, list: AttrListT) -> GLib.SListRef! {
        let result = pango_glyph_item_apply_attrs(glyph_item_ptr, text, list.attr_list_ptr)
        let rv = GLib.SListRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Make a deep copy of an existing `PangoGlyphItem` structure.
    @inlinable func copy() -> Pango.GlyphItemRef! {
        let result = pango_glyph_item_copy(glyph_item_ptr)
        guard let rv = GlyphItemRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Frees a `PangoGlyphItem` and resources to which it points.
    @inlinable func free() {
        
        pango_glyph_item_free(glyph_item_ptr)
        
    }

    /// Given a `PangoGlyphItem` and the corresponding text, determine the
    /// width corresponding to each character.
    /// 
    /// When multiple characters compose a single cluster, the width of the
    /// entire cluster is divided equally among the characters.
    /// 
    /// See also [method`Pango.GlyphString.get_logical_widths`].
    @inlinable func getLogicalWidths(text: UnsafePointer<CChar>!, logicalWidths: UnsafeMutablePointer<CInt>!) {
        
        pango_glyph_item_get_logical_widths(glyph_item_ptr, text, logicalWidths)
        
    }

    /// Adds spacing between the graphemes of `glyph_item` to
    /// give the effect of typographic letter spacing.
    @inlinable func letterSpace(text: UnsafePointer<CChar>!, logAttrs: UnsafeMutablePointer<PangoLogAttr>!, letterSpacing: Int) {
        
        pango_glyph_item_letter_space(glyph_item_ptr, text, logAttrs, gint(letterSpacing))
        
    }

    /// Modifies `orig` to cover only the text after `split_index`, and
    /// returns a new item that covers the text before `split_index` that
    /// used to be in `orig`.
    /// 
    /// You can think of `split_index` as the length of the returned item.
    /// `split_index` may not be 0, and it may not be greater than or equal
    /// to the length of `orig` (that is, there must be at least one byte
    /// assigned to each item, you can't create a zero-length item).
    /// 
    /// This function is similar in function to `pango_item_split()` (and uses
    /// it internally.)
    @inlinable func split(text: UnsafePointer<CChar>!, splitIndex: Int) -> Pango.GlyphItemRef! {
        let result = pango_glyph_item_split(glyph_item_ptr, text, gint(splitIndex))
        guard let rv = GlyphItemRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// corresponding `PangoItem`
    @inlinable var item: ItemRef! {
        /// corresponding `PangoItem`
        get {
            let rv = ItemRef(gconstpointer: gconstpointer(glyph_item_ptr.pointee.item))
    return rv
        }
        /// corresponding `PangoItem`
         set {
            glyph_item_ptr.pointee.item = UnsafeMutablePointer<PangoItem>(newValue.item_ptr)
        }
    }

    /// corresponding `PangoGlyphString`
    @inlinable var glyphs: GlyphStringRef! {
        /// corresponding `PangoGlyphString`
        get {
            let rv = GlyphStringRef(gconstpointer: gconstpointer(glyph_item_ptr.pointee.glyphs))
    return rv
        }
        /// corresponding `PangoGlyphString`
         set {
            glyph_item_ptr.pointee.glyphs = UnsafeMutablePointer<PangoGlyphString>(newValue.glyph_string_ptr)
        }
    }

    /// shift of the baseline, relative to the baseline
    ///   of the containing line. Positive values shift upwards
    @inlinable var yOffset: gint {
        /// shift of the baseline, relative to the baseline
        ///   of the containing line. Positive values shift upwards
        get {
            let rv = glyph_item_ptr.pointee.y_offset
    return rv
        }
        /// shift of the baseline, relative to the baseline
        ///   of the containing line. Positive values shift upwards
         set {
            glyph_item_ptr.pointee.y_offset = newValue
        }
    }

    /// horizontal displacement to apply before the
    ///   glyph item. Positive values shift right
    @inlinable var startXOffset: gint {
        /// horizontal displacement to apply before the
        ///   glyph item. Positive values shift right
        get {
            let rv = glyph_item_ptr.pointee.start_x_offset
    return rv
        }
        /// horizontal displacement to apply before the
        ///   glyph item. Positive values shift right
         set {
            glyph_item_ptr.pointee.start_x_offset = newValue
        }
    }

    /// horizontal displacement to apply after th
    ///   glyph item. Positive values shift right
    @inlinable var endXOffset: gint {
        /// horizontal displacement to apply after th
        ///   glyph item. Positive values shift right
        get {
            let rv = glyph_item_ptr.pointee.end_x_offset
    return rv
        }
        /// horizontal displacement to apply after th
        ///   glyph item. Positive values shift right
         set {
            glyph_item_ptr.pointee.end_x_offset = newValue
        }
    }

}



// MARK: - GlyphItemIter Record

/// A `PangoGlyphItemIter` is an iterator over the clusters in a
/// `PangoGlyphItem`.
/// 
/// The *forward direction* of the iterator is the logical direction of text.
/// That is, with increasing `start_index` and `start_char` values. If `glyph_item`
/// is right-to-left (that is, if `glyph_item-&gt;item-&gt;analysis.level` is odd),
/// then `start_glyph` decreases as the iterator moves forward.  Moreover,
/// in right-to-left cases, `start_glyph` is greater than `end_glyph`.
/// 
/// An iterator should be initialized using either
/// `pango_glyph_item_iter_init_start()` or
/// `pango_glyph_item_iter_init_end()`, for forward and backward iteration
/// respectively, and walked over using any desired mixture of
/// `pango_glyph_item_iter_next_cluster()` and
/// `pango_glyph_item_iter_prev_cluster()`.
/// 
/// A common idiom for doing a forward iteration over the clusters is:
/// 
/// ```
/// PangoGlyphItemIter cluster_iter;
/// gboolean have_cluster;
/// 
/// for (have_cluster = pango_glyph_item_iter_init_start (&cluster_iter,
///                                                       glyph_item, text);
///      have_cluster;
///      have_cluster = pango_glyph_item_iter_next_cluster (&cluster_iter))
/// {
///   ...
/// }
/// ```
/// 
/// Note that `text` is the start of the text for layout, which is then
/// indexed by `glyph_item-&gt;item-&gt;offset` to get to the text of `glyph_item`.
/// The `start_index` and `end_index` values can directly index into `text`. The
/// `start_glyph`, `end_glyph`, `start_char`, and `end_char` values however are
/// zero-based for the `glyph_item`.  For each cluster, the item pointed at by
/// the start variables is included in the cluster while the one pointed at by
/// end variables is not.
/// 
/// None of the members of a `PangoGlyphItemIter` should be modified manually.
///
/// The `GlyphItemIterProtocol` protocol exposes the methods and properties of an underlying `PangoGlyphItemIter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GlyphItemIter`.
/// Alternatively, use `GlyphItemIterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol GlyphItemIterProtocol {
        /// Untyped pointer to the underlying `PangoGlyphItemIter` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoGlyphItemIter` instance.
    var glyph_item_iter_ptr: UnsafeMutablePointer<PangoGlyphItemIter>! { get }

    /// Required Initialiser for types conforming to `GlyphItemIterProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `PangoGlyphItemIter` is an iterator over the clusters in a
/// `PangoGlyphItem`.
/// 
/// The *forward direction* of the iterator is the logical direction of text.
/// That is, with increasing `start_index` and `start_char` values. If `glyph_item`
/// is right-to-left (that is, if `glyph_item-&gt;item-&gt;analysis.level` is odd),
/// then `start_glyph` decreases as the iterator moves forward.  Moreover,
/// in right-to-left cases, `start_glyph` is greater than `end_glyph`.
/// 
/// An iterator should be initialized using either
/// `pango_glyph_item_iter_init_start()` or
/// `pango_glyph_item_iter_init_end()`, for forward and backward iteration
/// respectively, and walked over using any desired mixture of
/// `pango_glyph_item_iter_next_cluster()` and
/// `pango_glyph_item_iter_prev_cluster()`.
/// 
/// A common idiom for doing a forward iteration over the clusters is:
/// 
/// ```
/// PangoGlyphItemIter cluster_iter;
/// gboolean have_cluster;
/// 
/// for (have_cluster = pango_glyph_item_iter_init_start (&cluster_iter,
///                                                       glyph_item, text);
///      have_cluster;
///      have_cluster = pango_glyph_item_iter_next_cluster (&cluster_iter))
/// {
///   ...
/// }
/// ```
/// 
/// Note that `text` is the start of the text for layout, which is then
/// indexed by `glyph_item-&gt;item-&gt;offset` to get to the text of `glyph_item`.
/// The `start_index` and `end_index` values can directly index into `text`. The
/// `start_glyph`, `end_glyph`, `start_char`, and `end_char` values however are
/// zero-based for the `glyph_item`.  For each cluster, the item pointed at by
/// the start variables is included in the cluster while the one pointed at by
/// end variables is not.
/// 
/// None of the members of a `PangoGlyphItemIter` should be modified manually.
///
/// The `GlyphItemIterRef` type acts as a lightweight Swift reference to an underlying `PangoGlyphItemIter` instance.
/// It exposes methods that can operate on this data type through `GlyphItemIterProtocol` conformance.
/// Use `GlyphItemIterRef` only as an `unowned` reference to an existing `PangoGlyphItemIter` instance.
///
public struct GlyphItemIterRef: GlyphItemIterProtocol {
        /// Untyped pointer to the underlying `PangoGlyphItemIter` instance.
    /// For type-safe access, use the generated, typed pointer `glyph_item_iter_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GlyphItemIterRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoGlyphItemIter>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoGlyphItemIter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoGlyphItemIter>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoGlyphItemIter>?) {
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

    /// Reference intialiser for a related type that implements `GlyphItemIterProtocol`
    @inlinable init<T: GlyphItemIterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemIterProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemIterProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemIterProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemIterProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemIterProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `PangoGlyphItemIter` is an iterator over the clusters in a
/// `PangoGlyphItem`.
/// 
/// The *forward direction* of the iterator is the logical direction of text.
/// That is, with increasing `start_index` and `start_char` values. If `glyph_item`
/// is right-to-left (that is, if `glyph_item-&gt;item-&gt;analysis.level` is odd),
/// then `start_glyph` decreases as the iterator moves forward.  Moreover,
/// in right-to-left cases, `start_glyph` is greater than `end_glyph`.
/// 
/// An iterator should be initialized using either
/// `pango_glyph_item_iter_init_start()` or
/// `pango_glyph_item_iter_init_end()`, for forward and backward iteration
/// respectively, and walked over using any desired mixture of
/// `pango_glyph_item_iter_next_cluster()` and
/// `pango_glyph_item_iter_prev_cluster()`.
/// 
/// A common idiom for doing a forward iteration over the clusters is:
/// 
/// ```
/// PangoGlyphItemIter cluster_iter;
/// gboolean have_cluster;
/// 
/// for (have_cluster = pango_glyph_item_iter_init_start (&cluster_iter,
///                                                       glyph_item, text);
///      have_cluster;
///      have_cluster = pango_glyph_item_iter_next_cluster (&cluster_iter))
/// {
///   ...
/// }
/// ```
/// 
/// Note that `text` is the start of the text for layout, which is then
/// indexed by `glyph_item-&gt;item-&gt;offset` to get to the text of `glyph_item`.
/// The `start_index` and `end_index` values can directly index into `text`. The
/// `start_glyph`, `end_glyph`, `start_char`, and `end_char` values however are
/// zero-based for the `glyph_item`.  For each cluster, the item pointed at by
/// the start variables is included in the cluster while the one pointed at by
/// end variables is not.
/// 
/// None of the members of a `PangoGlyphItemIter` should be modified manually.
///
/// The `GlyphItemIter` type acts as an owner of an underlying `PangoGlyphItemIter` instance.
/// It provides the methods that can operate on this data type through `GlyphItemIterProtocol` conformance.
/// Use `GlyphItemIter` as a strong reference or owner of a `PangoGlyphItemIter` instance.
///
open class GlyphItemIter: GlyphItemIterProtocol {
        /// Untyped pointer to the underlying `PangoGlyphItemIter` instance.
    /// For type-safe access, use the generated, typed pointer `glyph_item_iter_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphItemIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoGlyphItemIter>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphItemIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoGlyphItemIter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphItemIter` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphItemIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphItemIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoGlyphItemIter>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphItemIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoGlyphItemIter>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoGlyphItemIter` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `GlyphItemIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoGlyphItemIter>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoGlyphItemIter, cannot ref(glyph_item_iter_ptr)
    }

    /// Reference intialiser for a related type that implements `GlyphItemIterProtocol`
    /// `PangoGlyphItemIter` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `GlyphItemIterProtocol`
    @inlinable public init<T: GlyphItemIterProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoGlyphItemIter, cannot ref(glyph_item_iter_ptr)
    }

    /// Do-nothing destructor for `PangoGlyphItemIter`.
    deinit {
        // no reference counting for PangoGlyphItemIter, cannot unref(glyph_item_iter_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoGlyphItemIter, cannot ref(glyph_item_iter_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemIterProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemIterProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoGlyphItemIter, cannot ref(glyph_item_iter_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemIterProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemIterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoGlyphItemIter, cannot ref(glyph_item_iter_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphItemIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoGlyphItemIter, cannot ref(glyph_item_iter_ptr)
    }



}

// MARK: no GlyphItemIter properties

// MARK: no GlyphItemIter signals

// MARK: GlyphItemIter has no signals
// MARK: GlyphItemIter Record: GlyphItemIterProtocol extension (methods and fields)
public extension GlyphItemIterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoGlyphItemIter` instance.
    @inlinable var glyph_item_iter_ptr: UnsafeMutablePointer<PangoGlyphItemIter>! { return ptr?.assumingMemoryBound(to: PangoGlyphItemIter.self) }

    /// Make a shallow copy of an existing `PangoGlyphItemIter` structure.
    @inlinable func copy() -> Pango.GlyphItemIterRef! {
        let result = pango_glyph_item_iter_copy(glyph_item_iter_ptr)
        guard let rv = GlyphItemIterRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Frees a `PangoGlyphItem`Iter.
    @inlinable func free() {
        
        pango_glyph_item_iter_free(glyph_item_iter_ptr)
        
    }

    /// Initializes a `PangoGlyphItemIter` structure to point to the
    /// last cluster in a glyph item.
    /// 
    /// See `PangoGlyphItemIter` for details of cluster orders.
    @inlinable func initEnd<GlyphItemT: GlyphItemProtocol>(glyphItem: GlyphItemT, text: UnsafePointer<CChar>!) -> Bool {
        let result = pango_glyph_item_iter_init_end(glyph_item_iter_ptr, glyphItem.glyph_item_ptr, text)
        let rv = ((result) != 0)
        return rv
    }

    /// Initializes a `PangoGlyphItemIter` structure to point to the
    /// first cluster in a glyph item.
    /// 
    /// See `PangoGlyphItemIter` for details of cluster orders.
    @inlinable func initStart<GlyphItemT: GlyphItemProtocol>(glyphItem: GlyphItemT, text: UnsafePointer<CChar>!) -> Bool {
        let result = pango_glyph_item_iter_init_start(glyph_item_iter_ptr, glyphItem.glyph_item_ptr, text)
        let rv = ((result) != 0)
        return rv
    }

    /// Advances the iterator to the next cluster in the glyph item.
    /// 
    /// See `PangoGlyphItemIter` for details of cluster orders.
    @inlinable func nextCluster() -> Bool {
        let result = pango_glyph_item_iter_next_cluster(glyph_item_iter_ptr)
        let rv = ((result) != 0)
        return rv
    }

    /// Moves the iterator to the preceding cluster in the glyph item.
    /// See `PangoGlyphItemIter` for details of cluster orders.
    @inlinable func prevCluster() -> Bool {
        let result = pango_glyph_item_iter_prev_cluster(glyph_item_iter_ptr)
        let rv = ((result) != 0)
        return rv
    }

    @inlinable var glyphItem: GlyphItemRef! {
        get {
            let rv = GlyphItemRef(gconstpointer: gconstpointer(glyph_item_iter_ptr.pointee.glyph_item))
    return rv
        }
         set {
            glyph_item_iter_ptr.pointee.glyph_item = UnsafeMutablePointer<PangoGlyphItem>(newValue.glyph_item_ptr)
        }
    }

    @inlinable var text: UnsafePointer<gchar>! {
        get {
            let rv = glyph_item_iter_ptr.pointee.text
    return rv
        }
         set {
            glyph_item_iter_ptr.pointee.text = newValue
        }
    }

    @inlinable var startGlyph: gint {
        get {
            let rv = glyph_item_iter_ptr.pointee.start_glyph
    return rv
        }
         set {
            glyph_item_iter_ptr.pointee.start_glyph = newValue
        }
    }

    @inlinable var startIndex: gint {
        get {
            let rv = glyph_item_iter_ptr.pointee.start_index
    return rv
        }
         set {
            glyph_item_iter_ptr.pointee.start_index = newValue
        }
    }

    @inlinable var startChar: gint {
        get {
            let rv = glyph_item_iter_ptr.pointee.start_char
    return rv
        }
         set {
            glyph_item_iter_ptr.pointee.start_char = newValue
        }
    }

    @inlinable var endGlyph: gint {
        get {
            let rv = glyph_item_iter_ptr.pointee.end_glyph
    return rv
        }
         set {
            glyph_item_iter_ptr.pointee.end_glyph = newValue
        }
    }

    @inlinable var endIndex: gint {
        get {
            let rv = glyph_item_iter_ptr.pointee.end_index
    return rv
        }
         set {
            glyph_item_iter_ptr.pointee.end_index = newValue
        }
    }

    @inlinable var endChar: gint {
        get {
            let rv = glyph_item_iter_ptr.pointee.end_char
    return rv
        }
         set {
            glyph_item_iter_ptr.pointee.end_char = newValue
        }
    }

}



// MARK: - GlyphString Record

/// A `PangoGlyphString` is used to store strings of glyphs with geometry
/// and visual attribute information.
/// 
/// The storage for the glyph information is owned by the structure
/// which simplifies memory management.
///
/// The `GlyphStringProtocol` protocol exposes the methods and properties of an underlying `PangoGlyphString` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GlyphString`.
/// Alternatively, use `GlyphStringRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol GlyphStringProtocol {
        /// Untyped pointer to the underlying `PangoGlyphString` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoGlyphString` instance.
    var glyph_string_ptr: UnsafeMutablePointer<PangoGlyphString>! { get }

    /// Required Initialiser for types conforming to `GlyphStringProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `PangoGlyphString` is used to store strings of glyphs with geometry
/// and visual attribute information.
/// 
/// The storage for the glyph information is owned by the structure
/// which simplifies memory management.
///
/// The `GlyphStringRef` type acts as a lightweight Swift reference to an underlying `PangoGlyphString` instance.
/// It exposes methods that can operate on this data type through `GlyphStringProtocol` conformance.
/// Use `GlyphStringRef` only as an `unowned` reference to an existing `PangoGlyphString` instance.
///
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
            let result = pango_glyph_string_new()
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }
}

/// A `PangoGlyphString` is used to store strings of glyphs with geometry
/// and visual attribute information.
/// 
/// The storage for the glyph information is owned by the structure
/// which simplifies memory management.
///
/// The `GlyphString` type acts as an owner of an underlying `PangoGlyphString` instance.
/// It provides the methods that can operate on this data type through `GlyphStringProtocol` conformance.
/// Use `GlyphString` as a strong reference or owner of a `PangoGlyphString` instance.
///
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
            let result = pango_glyph_string_new()
        let rv = result
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
    @inlinable func copy() -> Pango.GlyphStringRef! {
        let result = pango_glyph_string_copy(glyph_string_ptr)
        guard let rv = GlyphStringRef(gconstpointer: gconstpointer(result)) else { return nil }
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
        let result = pango_glyph_string_get_width(glyph_string_ptr)
        let rv = Int(result)
        return rv
    }

    /// Converts from character position to x position.
    /// 
    /// The X position is measured from the left edge of the run.
    /// Character positions are obtained using font metrics for ligatures
    /// where available, and computed by dividing up each cluster
    /// into equal portions, otherwise.
    /// 
    /// &lt;picture&gt;
    ///   &lt;source srcset="glyphstring-positions-dark.png" media="(prefers-color-scheme: dark)"&gt;
    ///   &lt;img alt="Glyph positions" src="glyphstring-positions-light.png"&gt;
    /// &lt;/picture&gt;
    @inlinable func indexToX<AnalysisT: AnalysisProtocol>(text: UnsafePointer<CChar>!, length: Int, analysis: AnalysisT, index: Int, trailing: Bool, xPos: UnsafeMutablePointer<gint>!) {
        
        pango_glyph_string_index_to_x(glyph_string_ptr, text, gint(length), analysis._ptr, gint(index), gboolean((trailing) ? 1 : 0), xPos)
        
    }

    /// Converts from character position to x position.
    /// 
    /// This variant of [method`Pango.GlyphString.index_to_x`] additionally
    /// accepts a `PangoLogAttr` array. The grapheme boundary information
    /// in it can be used to disambiguate positioning inside some complex
    /// clusters.
    @inlinable func indexToXFull<AnalysisT: AnalysisProtocol>(text: UnsafePointer<CChar>!, length: Int, analysis: AnalysisT, attrs: LogAttrRef? = nil, index: Int, trailing: Bool, xPos: UnsafeMutablePointer<gint>!) {
            
        pango_glyph_string_index_to_x_full(glyph_string_ptr, text, gint(length), analysis._ptr, attrs?._ptr, gint(index), gboolean((trailing) ? 1 : 0), xPos)
            
    }
    /// Converts from character position to x position.
    /// 
    /// This variant of [method`Pango.GlyphString.index_to_x`] additionally
    /// accepts a `PangoLogAttr` array. The grapheme boundary information
    /// in it can be used to disambiguate positioning inside some complex
    /// clusters.
    @inlinable func indexToXFull<AnalysisT: AnalysisProtocol, LogAttrT: LogAttrProtocol>(text: UnsafePointer<CChar>!, length: Int, analysis: AnalysisT, attrs: LogAttrT?, index: Int, trailing: Bool, xPos: UnsafeMutablePointer<gint>!) {
        
        pango_glyph_string_index_to_x_full(glyph_string_ptr, text, gint(length), analysis._ptr, attrs?._ptr, gint(index), gboolean((trailing) ? 1 : 0), xPos)
        
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
    @inlinable func xToIndex<AnalysisT: AnalysisProtocol>(text: UnsafePointer<CChar>!, length: Int, analysis: AnalysisT, xPos: Int, index: UnsafeMutablePointer<gint>!, trailing: UnsafeMutablePointer<gint>!) {
        
        pango_glyph_string_x_to_index(glyph_string_ptr, text, gint(length), analysis._ptr, gint(xPos), index, trailing)
        
    }

    /// Convert the characters in `item` into glyphs.
    /// 
    /// This is similar to [func`Pango.shape_with_flags`], except it takes a
    /// `PangoItem` instead of separate `item_text` and `analysis` arguments.
    /// It also takes `log_attrs`, which may be used in implementing text
    /// transforms.
    /// 
    /// Note that the extra attributes in the `analyis` that is returned from
    /// [func`Pango.itemize`] have indices that are relative to the entire paragraph,
    /// so you do not pass the full paragraph text as `paragraph_text`, you need
    /// to subtract the item offset from their indices before calling
    /// [func`Pango.shape_with_flags`].
    @inlinable func shape<ItemT: ItemProtocol>(item: ItemT, paragraphText: UnsafePointer<CChar>? = nil, paragraphLength: Int, logAttrs: LogAttrRef? = nil, flags: ShapeFlags) {
            
        pango_shape_item(item.item_ptr, paragraphText, gint(paragraphLength), logAttrs?._ptr, glyph_string_ptr, flags.value)
            
    }
    /// Convert the characters in `item` into glyphs.
    /// 
    /// This is similar to [func`Pango.shape_with_flags`], except it takes a
    /// `PangoItem` instead of separate `item_text` and `analysis` arguments.
    /// It also takes `log_attrs`, which may be used in implementing text
    /// transforms.
    /// 
    /// Note that the extra attributes in the `analyis` that is returned from
    /// [func`Pango.itemize`] have indices that are relative to the entire paragraph,
    /// so you do not pass the full paragraph text as `paragraph_text`, you need
    /// to subtract the item offset from their indices before calling
    /// [func`Pango.shape_with_flags`].
    @inlinable func shape<ItemT: ItemProtocol, LogAttrT: LogAttrProtocol>(item: ItemT, paragraphText: UnsafePointer<CChar>? = nil, paragraphLength: Int, logAttrs: LogAttrT?, flags: ShapeFlags) {
        
        pango_shape_item(item.item_ptr, paragraphText, gint(paragraphLength), logAttrs?._ptr, glyph_string_ptr, flags.value)
        
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
            let result = pango_glyph_string_get_width(glyph_string_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// number of glyphs in this glyph string
    @inlinable var numGlyphs: gint {
        /// number of glyphs in this glyph string
        get {
            let rv = glyph_string_ptr.pointee.num_glyphs
    return rv
        }
        /// number of glyphs in this glyph string
         set {
            glyph_string_ptr.pointee.num_glyphs = newValue
        }
    }

    /// array of glyph information
    @inlinable var glyphs: UnsafeMutablePointer<PangoGlyphInfo>! {
        /// array of glyph information
        get {
            let rv = glyph_string_ptr.pointee.glyphs
    return rv
        }
        /// array of glyph information
         set {
            glyph_string_ptr.pointee.glyphs = newValue
        }
    }

    /// logical cluster info, indexed by the byte index
    ///   within the text corresponding to the glyph string
    @inlinable var logClusters: UnsafeMutablePointer<gint>! {
        /// logical cluster info, indexed by the byte index
        ///   within the text corresponding to the glyph string
        get {
            let rv = glyph_string_ptr.pointee.log_clusters
    return rv
        }
        /// logical cluster info, indexed by the byte index
        ///   within the text corresponding to the glyph string
         set {
            glyph_string_ptr.pointee.log_clusters = newValue
        }
    }

    // var space is unavailable because space is private

}



// MARK: - GlyphVisAttr Record

/// A `PangoGlyphVisAttr` structure communicates information between
/// the shaping and rendering phases.
/// 
/// Currently, it contains cluster start and color information.
/// More attributes may be added in the future.
/// 
/// Clusters are stored in visual order, within the cluster, glyphs
/// are always ordered in logical order, since visual order is meaningless;
/// that is, in Arabic text, accent glyphs follow the glyphs for the
/// base character.
///
/// The `GlyphVisAttrProtocol` protocol exposes the methods and properties of an underlying `PangoGlyphVisAttr` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GlyphVisAttr`.
/// Alternatively, use `GlyphVisAttrRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol GlyphVisAttrProtocol {
        /// Untyped pointer to the underlying `PangoGlyphVisAttr` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoGlyphVisAttr` instance.
    var _ptr: UnsafeMutablePointer<PangoGlyphVisAttr>! { get }

    /// Required Initialiser for types conforming to `GlyphVisAttrProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `PangoGlyphVisAttr` structure communicates information between
/// the shaping and rendering phases.
/// 
/// Currently, it contains cluster start and color information.
/// More attributes may be added in the future.
/// 
/// Clusters are stored in visual order, within the cluster, glyphs
/// are always ordered in logical order, since visual order is meaningless;
/// that is, in Arabic text, accent glyphs follow the glyphs for the
/// base character.
///
/// The `GlyphVisAttrRef` type acts as a lightweight Swift reference to an underlying `PangoGlyphVisAttr` instance.
/// It exposes methods that can operate on this data type through `GlyphVisAttrProtocol` conformance.
/// Use `GlyphVisAttrRef` only as an `unowned` reference to an existing `PangoGlyphVisAttr` instance.
///
public struct GlyphVisAttrRef: GlyphVisAttrProtocol {
        /// Untyped pointer to the underlying `PangoGlyphVisAttr` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GlyphVisAttrRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoGlyphVisAttr>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoGlyphVisAttr>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoGlyphVisAttr>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoGlyphVisAttr>?) {
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

    /// Reference intialiser for a related type that implements `GlyphVisAttrProtocol`
    @inlinable init<T: GlyphVisAttrProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphVisAttrProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphVisAttrProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphVisAttrProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphVisAttrProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphVisAttrProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `PangoGlyphVisAttr` structure communicates information between
/// the shaping and rendering phases.
/// 
/// Currently, it contains cluster start and color information.
/// More attributes may be added in the future.
/// 
/// Clusters are stored in visual order, within the cluster, glyphs
/// are always ordered in logical order, since visual order is meaningless;
/// that is, in Arabic text, accent glyphs follow the glyphs for the
/// base character.
///
/// The `GlyphVisAttr` type acts as an owner of an underlying `PangoGlyphVisAttr` instance.
/// It provides the methods that can operate on this data type through `GlyphVisAttrProtocol` conformance.
/// Use `GlyphVisAttr` as a strong reference or owner of a `PangoGlyphVisAttr` instance.
///
open class GlyphVisAttr: GlyphVisAttrProtocol {
        /// Untyped pointer to the underlying `PangoGlyphVisAttr` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphVisAttr` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoGlyphVisAttr>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphVisAttr` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoGlyphVisAttr>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphVisAttr` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphVisAttr` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphVisAttr` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoGlyphVisAttr>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphVisAttr` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoGlyphVisAttr>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoGlyphVisAttr` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `GlyphVisAttr` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoGlyphVisAttr>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoGlyphVisAttr, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `GlyphVisAttrProtocol`
    /// `PangoGlyphVisAttr` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `GlyphVisAttrProtocol`
    @inlinable public init<T: GlyphVisAttrProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoGlyphVisAttr, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `PangoGlyphVisAttr`.
    deinit {
        // no reference counting for PangoGlyphVisAttr, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphVisAttrProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphVisAttrProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoGlyphVisAttr, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphVisAttrProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphVisAttrProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoGlyphVisAttr, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphVisAttrProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphVisAttrProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoGlyphVisAttr, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphVisAttrProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphVisAttrProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoGlyphVisAttr, cannot ref(_ptr)
    }



}

// MARK: no GlyphVisAttr properties

// MARK: no GlyphVisAttr signals

// MARK: GlyphVisAttr has no signals
// MARK: GlyphVisAttr Record: GlyphVisAttrProtocol extension (methods and fields)
public extension GlyphVisAttrProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoGlyphVisAttr` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoGlyphVisAttr>! { return ptr?.assumingMemoryBound(to: PangoGlyphVisAttr.self) }


    /// set for the first logical glyph in each cluster.
    @inlinable var isClusterStart: guint {
        /// set for the first logical glyph in each cluster.
        get {
            let rv = _ptr.pointee.is_cluster_start
    return rv
        }
        /// set for the first logical glyph in each cluster.
         set {
            _ptr.pointee.is_cluster_start = newValue
        }
    }

    /// set if the the font will render this glyph with color. Since 1.50
    @inlinable var isColor: guint {
        /// set if the the font will render this glyph with color. Since 1.50
        get {
            let rv = _ptr.pointee.is_color
    return rv
        }
        /// set if the the font will render this glyph with color. Since 1.50
         set {
            _ptr.pointee.is_color = newValue
        }
    }

}



