import CGLib
import CPango
import GLib
import GLibObject

// MARK: - GlyphVisAttr Record

/// The `GlyphVisAttrProtocol` protocol exposes the methods and properties of an underlying `PangoGlyphVisAttr` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GlyphVisAttr`.
/// Alternatively, use `GlyphVisAttrRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The PangoGlyphVisAttr is used to communicate information between
/// the shaping phase and the rendering phase.  More attributes may be
/// added in the future.
public protocol GlyphVisAttrProtocol {
        /// Untyped pointer to the underlying `PangoGlyphVisAttr` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoGlyphVisAttr` instance.
    var _ptr: UnsafeMutablePointer<PangoGlyphVisAttr>! { get }

}

/// The `GlyphVisAttrRef` type acts as a lightweight Swift reference to an underlying `PangoGlyphVisAttr` instance.
/// It exposes methods that can operate on this data type through `GlyphVisAttrProtocol` conformance.
/// Use `GlyphVisAttrRef` only as an `unowned` reference to an existing `PangoGlyphVisAttr` instance.
///
/// The PangoGlyphVisAttr is used to communicate information between
/// the shaping phase and the rendering phase.  More attributes may be
/// added in the future.
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

/// The `GlyphVisAttr` type acts as an owner of an underlying `PangoGlyphVisAttr` instance.
/// It provides the methods that can operate on this data type through `GlyphVisAttrProtocol` conformance.
/// Use `GlyphVisAttr` as a strong reference or owner of a `PangoGlyphVisAttr` instance.
///
/// The PangoGlyphVisAttr is used to communicate information between
/// the shaping phase and the rendering phase.  More attributes may be
/// added in the future.
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
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
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


    /// set for the first logical glyph in each cluster. (Clusters
    /// are stored in visual order, within the cluster, glyphs
    /// are always ordered in logical order, since visual
    /// order is meaningless; that is, in Arabic text, accent glyphs
    /// follow the glyphs for the base character.)
    @inlinable var isClusterStart: guint {
        /// set for the first logical glyph in each cluster. (Clusters
        /// are stored in visual order, within the cluster, glyphs
        /// are always ordered in logical order, since visual
        /// order is meaningless; that is, in Arabic text, accent glyphs
        /// follow the glyphs for the base character.)
        get {
            let rv = _ptr.pointee.is_cluster_start
            return rv
        }
        /// set for the first logical glyph in each cluster. (Clusters
        /// are stored in visual order, within the cluster, glyphs
        /// are always ordered in logical order, since visual
        /// order is meaningless; that is, in Arabic text, accent glyphs
        /// follow the glyphs for the base character.)
         set {
            _ptr.pointee.is_cluster_start = newValue
        }
    }

}



