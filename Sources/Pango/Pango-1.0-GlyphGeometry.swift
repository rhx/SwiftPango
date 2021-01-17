import CGLib
import CPango
import GLib
import GLibObject

// MARK: - GlyphGeometry Record

/// The `GlyphGeometryProtocol` protocol exposes the methods and properties of an underlying `PangoGlyphGeometry` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GlyphGeometry`.
/// Alternatively, use `GlyphGeometryRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoGlyphGeometry` structure contains width and positioning
/// information for a single glyph.
public protocol GlyphGeometryProtocol {
        /// Untyped pointer to the underlying `PangoGlyphGeometry` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoGlyphGeometry` instance.
    var _ptr: UnsafeMutablePointer<PangoGlyphGeometry>! { get }

}

/// The `GlyphGeometryRef` type acts as a lightweight Swift reference to an underlying `PangoGlyphGeometry` instance.
/// It exposes methods that can operate on this data type through `GlyphGeometryProtocol` conformance.
/// Use `GlyphGeometryRef` only as an `unowned` reference to an existing `PangoGlyphGeometry` instance.
///
/// The `PangoGlyphGeometry` structure contains width and positioning
/// information for a single glyph.
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

/// The `GlyphGeometry` type acts as an owner of an underlying `PangoGlyphGeometry` instance.
/// It provides the methods that can operate on this data type through `GlyphGeometryProtocol` conformance.
/// Use `GlyphGeometry` as a strong reference or owner of a `PangoGlyphGeometry` instance.
///
/// The `PangoGlyphGeometry` structure contains width and positioning
/// information for a single glyph.
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
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
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



