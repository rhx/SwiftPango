import CGLib
import CPango
import GLib
import GLibObject

// MARK: - Rectangle Record

/// The `RectangleProtocol` protocol exposes the methods and properties of an underlying `PangoRectangle` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Rectangle`.
/// Alternatively, use `RectangleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoRectangle` structure represents a rectangle. It is frequently
/// used to represent the logical or ink extents of a single glyph or section
/// of text. (See, for instance, `pango_font_get_glyph_extents()`)
public protocol RectangleProtocol {
        /// Untyped pointer to the underlying `PangoRectangle` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoRectangle` instance.
    var _ptr: UnsafeMutablePointer<PangoRectangle>! { get }

}

/// The `RectangleRef` type acts as a lightweight Swift reference to an underlying `PangoRectangle` instance.
/// It exposes methods that can operate on this data type through `RectangleProtocol` conformance.
/// Use `RectangleRef` only as an `unowned` reference to an existing `PangoRectangle` instance.
///
/// The `PangoRectangle` structure represents a rectangle. It is frequently
/// used to represent the logical or ink extents of a single glyph or section
/// of text. (See, for instance, `pango_font_get_glyph_extents()`)
public struct RectangleRef: RectangleProtocol {
        /// Untyped pointer to the underlying `PangoRectangle` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RectangleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoRectangle>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoRectangle>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoRectangle>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoRectangle>?) {
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

    /// Reference intialiser for a related type that implements `RectangleProtocol`
    @inlinable init<T: RectangleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Rectangle` type acts as an owner of an underlying `PangoRectangle` instance.
/// It provides the methods that can operate on this data type through `RectangleProtocol` conformance.
/// Use `Rectangle` as a strong reference or owner of a `PangoRectangle` instance.
///
/// The `PangoRectangle` structure represents a rectangle. It is frequently
/// used to represent the logical or ink extents of a single glyph or section
/// of text. (See, for instance, `pango_font_get_glyph_extents()`)
open class Rectangle: RectangleProtocol {
        /// Untyped pointer to the underlying `PangoRectangle` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Rectangle` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoRectangle>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Rectangle` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoRectangle>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Rectangle` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Rectangle` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Rectangle` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoRectangle>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Rectangle` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoRectangle>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoRectangle` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Rectangle` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoRectangle>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoRectangle, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `RectangleProtocol`
    /// `PangoRectangle` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `RectangleProtocol`
    @inlinable public init<T: RectangleProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoRectangle, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `PangoRectangle`.
    deinit {
        // no reference counting for PangoRectangle, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoRectangle, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoRectangle, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoRectangle, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoRectangle, cannot ref(_ptr)
    }



}

// MARK: no Rectangle properties

// MARK: no Rectangle signals

// MARK: Rectangle has no signals
// MARK: Rectangle Record: RectangleProtocol extension (methods and fields)
public extension RectangleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoRectangle` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoRectangle>! { return ptr?.assumingMemoryBound(to: PangoRectangle.self) }

    /// Create a new shape attribute. A shape is used to impose a
    /// particular ink and logical rectangle on the result of shaping a
    /// particular glyph. This might be used, for instance, for
    /// embedding a picture or a widget inside a `PangoLayout`.
    @inlinable func attrShapeNew<RectangleT: RectangleProtocol>(logicalRect: RectangleT) -> AttributeRef! {
        let rv = AttributeRef(gconstpointer: gconstpointer(pango_attr_shape_new(_ptr, logicalRect._ptr)))
        return rv
    }

    /// Like `pango_attr_shape_new()`, but a user data pointer is also
    /// provided; this pointer can be accessed when later
    /// rendering the glyph.
    @inlinable func attrShapeNewWithData<RectangleT: RectangleProtocol>(logicalRect: RectangleT, data: gpointer! = nil, copyFunc: PangoAttrDataCopyFunc? = nil, destroyFunc: GDestroyNotify? = nil) -> AttributeRef! {
        let rv = AttributeRef(gconstpointer: gconstpointer(pango_attr_shape_new_with_data(_ptr, logicalRect._ptr, data, copyFunc, destroyFunc)))
        return rv
    }

    /// Converts extents from Pango units to device units, dividing by the
    /// `PANGO_SCALE` factor and performing rounding.
    /// 
    /// The `inclusive` rectangle is converted by flooring the x/y coordinates and extending
    /// width/height, such that the final rectangle completely includes the original
    /// rectangle.
    /// 
    /// The `nearest` rectangle is converted by rounding the coordinates
    /// of the rectangle to the nearest device unit (pixel).
    /// 
    /// The rule to which argument to use is: if you want the resulting device-space
    /// rectangle to completely contain the original rectangle, pass it in as `inclusive`.
    /// If you want two touching-but-not-overlapping rectangles stay
    /// touching-but-not-overlapping after rounding to device units, pass them in
    /// as `nearest`.
    @inlinable func extentsToPixels(nearest: RectangleRef? = nil) {
        pango_extents_to_pixels(_ptr, nearest?._ptr)
    
    }
    /// Converts extents from Pango units to device units, dividing by the
    /// `PANGO_SCALE` factor and performing rounding.
    /// 
    /// The `inclusive` rectangle is converted by flooring the x/y coordinates and extending
    /// width/height, such that the final rectangle completely includes the original
    /// rectangle.
    /// 
    /// The `nearest` rectangle is converted by rounding the coordinates
    /// of the rectangle to the nearest device unit (pixel).
    /// 
    /// The rule to which argument to use is: if you want the resulting device-space
    /// rectangle to completely contain the original rectangle, pass it in as `inclusive`.
    /// If you want two touching-but-not-overlapping rectangles stay
    /// touching-but-not-overlapping after rounding to device units, pass them in
    /// as `nearest`.
    @inlinable func extentsToPixels<RectangleT: RectangleProtocol>(nearest: RectangleT?) {
        pango_extents_to_pixels(_ptr, nearest?._ptr)
    
    }

    /// X coordinate of the left side of the rectangle.
    @inlinable var x: gint {
        /// X coordinate of the left side of the rectangle.
        get {
            let rv = _ptr.pointee.x
            return rv
        }
        /// X coordinate of the left side of the rectangle.
         set {
            _ptr.pointee.x = newValue
        }
    }

    /// Y coordinate of the the top side of the rectangle.
    @inlinable var y: gint {
        /// Y coordinate of the the top side of the rectangle.
        get {
            let rv = _ptr.pointee.y
            return rv
        }
        /// Y coordinate of the the top side of the rectangle.
         set {
            _ptr.pointee.y = newValue
        }
    }

    /// width of the rectangle.
    @inlinable var width: gint {
        /// width of the rectangle.
        get {
            let rv = _ptr.pointee.width
            return rv
        }
        /// width of the rectangle.
         set {
            _ptr.pointee.width = newValue
        }
    }

    /// height of the rectangle.
    @inlinable var height: gint {
        /// height of the rectangle.
        get {
            let rv = _ptr.pointee.height
            return rv
        }
        /// height of the rectangle.
         set {
            _ptr.pointee.height = newValue
        }
    }

}



