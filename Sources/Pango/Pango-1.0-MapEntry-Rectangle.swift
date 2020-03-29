import CGLib
import CPango
import GLib
import GLibObject

// MARK: - MapEntry Record

/// The `MapEntryProtocol` protocol exposes the methods and properties of an underlying `PangoMapEntry` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MapEntry`.
/// Alternatively, use `MapEntryRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MapEntryProtocol {
    /// Untyped pointer to the underlying `PangoMapEntry` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoMapEntry` instance.
    var _ptr: UnsafeMutablePointer<PangoMapEntry> { get }
}

/// The `MapEntryRef` type acts as a lightweight Swift reference to an underlying `PangoMapEntry` instance.
/// It exposes methods that can operate on this data type through `MapEntryProtocol` conformance.
/// Use `MapEntryRef` only as an `unowned` reference to an existing `PangoMapEntry` instance.
///

public struct MapEntryRef: MapEntryProtocol {
    /// Untyped pointer to the underlying `PangoMapEntry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MapEntryRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoMapEntry>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MapEntryProtocol`
    init<T: MapEntryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapEntryProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapEntryProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapEntryProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapEntryProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapEntryProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MapEntry` type acts as an owner of an underlying `PangoMapEntry` instance.
/// It provides the methods that can operate on this data type through `MapEntryProtocol` conformance.
/// Use `MapEntry` as a strong reference or owner of a `PangoMapEntry` instance.
///

open class MapEntry: MapEntryProtocol {
    /// Untyped pointer to the underlying `PangoMapEntry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MapEntry` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<PangoMapEntry>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoMapEntry` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `MapEntry` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<PangoMapEntry>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoMapEntry, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `MapEntryProtocol`
    /// `PangoMapEntry` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `MapEntryProtocol`
    public init<T: MapEntryProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for PangoMapEntry, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`PangoMapEntry`.
    deinit {
        // no reference counting for PangoMapEntry, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapEntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapEntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoMapEntry, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapEntryProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapEntryProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoMapEntry, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapEntryProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapEntryProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoMapEntry, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapEntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapEntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoMapEntry, cannot ref(cast(_ptr))
    }



}

// MARK: - no MapEntry properties

// MARK: - no signals


public extension MapEntryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoMapEntry` instance.
    var _ptr: UnsafeMutablePointer<PangoMapEntry> { return ptr.assumingMemoryBound(to: PangoMapEntry.self) }

}



// MARK: - Matrix Record

/// The `MatrixProtocol` protocol exposes the methods and properties of an underlying `PangoMatrix` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Matrix`.
/// Alternatively, use `MatrixRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A structure specifying a transformation between user-space
/// coordinates and device coordinates. The transformation
/// is given by
/// 
/// <programlisting>
/// x_device = x_user * matrix->xx + y_user * matrix->xy + matrix->x0;
/// y_device = x_user * matrix->yx + y_user * matrix->yy + matrix->y0;
/// </programlisting>
public protocol MatrixProtocol {
    /// Untyped pointer to the underlying `PangoMatrix` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoMatrix` instance.
    var matrix_ptr: UnsafeMutablePointer<PangoMatrix> { get }
}

/// The `MatrixRef` type acts as a lightweight Swift reference to an underlying `PangoMatrix` instance.
/// It exposes methods that can operate on this data type through `MatrixProtocol` conformance.
/// Use `MatrixRef` only as an `unowned` reference to an existing `PangoMatrix` instance.
///
/// A structure specifying a transformation between user-space
/// coordinates and device coordinates. The transformation
/// is given by
/// 
/// <programlisting>
/// x_device = x_user * matrix->xx + y_user * matrix->xy + matrix->x0;
/// y_device = x_user * matrix->yx + y_user * matrix->yy + matrix->y0;
/// </programlisting>
public struct MatrixRef: MatrixProtocol {
    /// Untyped pointer to the underlying `PangoMatrix` instance.
    /// For type-safe access, use the generated, typed pointer `matrix_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MatrixRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoMatrix>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MatrixProtocol`
    init<T: MatrixProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatrixProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatrixProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatrixProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatrixProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatrixProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Matrix` type acts as an owner of an underlying `PangoMatrix` instance.
/// It provides the methods that can operate on this data type through `MatrixProtocol` conformance.
/// Use `Matrix` as a strong reference or owner of a `PangoMatrix` instance.
///
/// A structure specifying a transformation between user-space
/// coordinates and device coordinates. The transformation
/// is given by
/// 
/// <programlisting>
/// x_device = x_user * matrix->xx + y_user * matrix->xy + matrix->x0;
/// y_device = x_user * matrix->yx + y_user * matrix->yy + matrix->y0;
/// </programlisting>
open class Matrix: MatrixProtocol {
    /// Untyped pointer to the underlying `PangoMatrix` instance.
    /// For type-safe access, use the generated, typed pointer `matrix_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Matrix` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<PangoMatrix>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoMatrix` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Matrix` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<PangoMatrix>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoMatrix, cannot ref(cast(matrix_ptr))
    }

    /// Reference intialiser for a related type that implements `MatrixProtocol`
    /// `PangoMatrix` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `MatrixProtocol`
    public init<T: MatrixProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.matrix_ptr)
        // no reference counting for PangoMatrix, cannot ref(cast(matrix_ptr))
    }

    /// Do-nothing destructor for`PangoMatrix`.
    deinit {
        // no reference counting for PangoMatrix, cannot unref(cast(matrix_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatrixProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatrixProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoMatrix, cannot ref(cast(matrix_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatrixProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatrixProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoMatrix, cannot ref(cast(matrix_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatrixProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatrixProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoMatrix, cannot ref(cast(matrix_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatrixProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatrixProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoMatrix, cannot ref(cast(matrix_ptr))
    }



}

// MARK: - no Matrix properties

// MARK: - no signals


public extension MatrixProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoMatrix` instance.
    var matrix_ptr: UnsafeMutablePointer<PangoMatrix> { return ptr.assumingMemoryBound(to: PangoMatrix.self) }

    /// Changes the transformation represented by `matrix` to be the
    /// transformation given by first applying transformation
    /// given by `new_matrix` then applying the original transformation.
    func concat(newMatrix new_matrix: MatrixProtocol) {
        pango_matrix_concat(cast(matrix_ptr), cast(new_matrix.ptr))
    
    }

    /// Copies a `PangoMatrix`.
    func copy() -> UnsafeMutablePointer<PangoMatrix>! {
        let rv = pango_matrix_copy(cast(matrix_ptr))
        return cast(rv)
    }

    /// Free a `PangoMatrix` created with `pango_matrix_copy()`.
    func free() {
        pango_matrix_free(cast(matrix_ptr))
    
    }

    /// Returns the scale factor of a matrix on the height of the font.
    /// That is, the scale factor in the direction perpendicular to the
    /// vector that the X coordinate is mapped to.  If the scale in the X
    /// coordinate is needed as well, use `pango_matrix_get_font_scale_factors()`.
    func getFontScaleFactor() -> CDouble {
        let rv = pango_matrix_get_font_scale_factor(cast(matrix_ptr))
        return rv
    }

    /// Calculates the scale factor of a matrix on the width and height of the font.
    /// That is, `xscale` is the scale factor in the direction of the X coordinate,
    /// and `yscale` is the scale factor in the direction perpendicular to the
    /// vector that the X coordinate is mapped to.
    /// 
    /// Note that output numbers will always be non-negative.
    func getFontScaleFactors(xscale: UnsafeMutablePointer<CDouble>, yscale: UnsafeMutablePointer<CDouble>) {
        pango_matrix_get_font_scale_factors(cast(matrix_ptr), cast(xscale), cast(yscale))
    
    }

    /// Changes the transformation represented by `matrix` to be the
    /// transformation given by first rotating by `degrees` degrees
    /// counter-clockwise then applying the original transformation.
    func rotate(degrees: gdouble) {
        pango_matrix_rotate(cast(matrix_ptr), degrees)
    
    }

    /// Changes the transformation represented by `matrix` to be the
    /// transformation given by first scaling by `sx` in the X direction
    /// and `sy` in the Y direction then applying the original
    /// transformation.
    func scale(scaleX scale_x: gdouble, scaleY scale_y: gdouble) {
        pango_matrix_scale(cast(matrix_ptr), scale_x, scale_y)
    
    }

    /// Transforms the distance vector (`dx`,`dy`) by `matrix`. This is
    /// similar to `pango_matrix_transform_point()` except that the translation
    /// components of the transformation are ignored. The calculation of
    /// the returned vector is as follows:
    /// 
    /// <programlisting>
    /// dx2 = dx1 * xx + dy1 * xy;
    /// dy2 = dx1 * yx + dy1 * yy;
    /// </programlisting>
    /// 
    /// Affine transformations are position invariant, so the same vector
    /// always transforms to the same vector. If (`x1`,`y1`) transforms
    /// to (`x2`,`y2`) then (`x1`+`dx1`,`y1`+`dy1`) will transform to
    /// (`x1`+`dx2`,`y1`+`dy2`) for all values of `x1` and `x2`.
    func transformDistance(dx: UnsafeMutablePointer<CDouble>, dy: UnsafeMutablePointer<CDouble>) {
        pango_matrix_transform_distance(cast(matrix_ptr), cast(dx), cast(dy))
    
    }

    /// First transforms the `rect` using `matrix`, then calculates the bounding box
    /// of the transformed rectangle.  The rectangle should be in device units
    /// (pixels).
    /// 
    /// This function is useful for example when you want to draw a rotated
    /// `PangoLayout` to an image buffer, and want to know how large the image
    /// should be and how much you should shift the layout when rendering.
    /// 
    /// For better accuracy, you should use `pango_matrix_transform_rectangle()` on
    /// original rectangle in Pango units and convert to pixels afterward
    /// using `pango_extents_to_pixels()`'s first argument.
    func transformPixelRectangle(rect: RectangleProtocol) {
        pango_matrix_transform_pixel_rectangle(cast(matrix_ptr), cast(rect.ptr))
    
    }

    /// Transforms the point (`x`, `y`) by `matrix`.
    func transformPoint(x: UnsafeMutablePointer<CDouble>, y: UnsafeMutablePointer<CDouble>) {
        pango_matrix_transform_point(cast(matrix_ptr), cast(x), cast(y))
    
    }

    /// First transforms `rect` using `matrix`, then calculates the bounding box
    /// of the transformed rectangle.  The rectangle should be in Pango units.
    /// 
    /// This function is useful for example when you want to draw a rotated
    /// `PangoLayout` to an image buffer, and want to know how large the image
    /// should be and how much you should shift the layout when rendering.
    /// 
    /// If you have a rectangle in device units (pixels), use
    /// `pango_matrix_transform_pixel_rectangle()`.
    /// 
    /// If you have the rectangle in Pango units and want to convert to
    /// transformed pixel bounding box, it is more accurate to transform it first
    /// (using this function) and pass the result to `pango_extents_to_pixels()`,
    /// first argument, for an inclusive rounded rectangle.
    /// However, there are valid reasons that you may want to convert
    /// to pixels first and then transform, for example when the transformed
    /// coordinates may overflow in Pango units (large matrix translation for
    /// example).
    func transformRectangle(rect: RectangleProtocol) {
        pango_matrix_transform_rectangle(cast(matrix_ptr), cast(rect.ptr))
    
    }

    /// Changes the transformation represented by `matrix` to be the
    /// transformation given by first translating by (`tx`, `ty`)
    /// then applying the original transformation.
    func translate(tx: gdouble, ty: gdouble) {
        pango_matrix_translate(cast(matrix_ptr), tx, ty)
    
    }

    /// Finds the gravity that best matches the rotation component
    /// in a `PangoMatrix`.
    func gravityGetForMatrix() -> PangoGravity {
        let rv = pango_gravity_get_for_matrix(cast(matrix_ptr))
        return rv
    }
    /// Returns the scale factor of a matrix on the height of the font.
    /// That is, the scale factor in the direction perpendicular to the
    /// vector that the X coordinate is mapped to.  If the scale in the X
    /// coordinate is needed as well, use `pango_matrix_get_font_scale_factors()`.
    var fontScaleFactor: CDouble {
        /// Returns the scale factor of a matrix on the height of the font.
        /// That is, the scale factor in the direction perpendicular to the
        /// vector that the X coordinate is mapped to.  If the scale in the X
        /// coordinate is needed as well, use `pango_matrix_get_font_scale_factors()`.
        get {
            let rv = pango_matrix_get_font_scale_factor(cast(matrix_ptr))
            return rv
        }
    }
}



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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoRectangle` instance.
    var _ptr: UnsafeMutablePointer<PangoRectangle> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension RectangleRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoRectangle>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RectangleProtocol`
    init<T: RectangleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Rectangle` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<PangoRectangle>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoRectangle` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Rectangle` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<PangoRectangle>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoRectangle, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `RectangleProtocol`
    /// `PangoRectangle` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `RectangleProtocol`
    public init<T: RectangleProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for PangoRectangle, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`PangoRectangle`.
    deinit {
        // no reference counting for PangoRectangle, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoRectangle, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoRectangle, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoRectangle, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoRectangle, cannot ref(cast(_ptr))
    }



}

// MARK: - no Rectangle properties

// MARK: - no signals


public extension RectangleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoRectangle` instance.
    var _ptr: UnsafeMutablePointer<PangoRectangle> { return ptr.assumingMemoryBound(to: PangoRectangle.self) }

    /// Create a new shape attribute. A shape is used to impose a
    /// particular ink and logical rectangle on the result of shaping a
    /// particular glyph. This might be used, for instance, for
    /// embedding a picture or a widget inside a `PangoLayout`.
    func attrShapeNew(logicalRect logical_rect: RectangleProtocol) -> UnsafeMutablePointer<PangoAttribute>! {
        let rv = pango_attr_shape_new(cast(_ptr), cast(logical_rect.ptr))
        return cast(rv)
    }

    /// Like `pango_attr_shape_new()`, but a user data pointer is also
    /// provided; this pointer can be accessed when later
    /// rendering the glyph.
    func attrShapeNewWithData(logicalRect logical_rect: RectangleProtocol, data: UnsafeMutableRawPointer, copyFunc copy_func: @escaping AttrDataCopyFunc, destroyFunc destroy_func: @escaping GLib.DestroyNotify) -> UnsafeMutablePointer<PangoAttribute>! {
        let rv = pango_attr_shape_new_with_data(cast(_ptr), cast(logical_rect.ptr), cast(data), copy_func, destroy_func)
        return cast(rv)
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
    func extentsToPixels(nearest: RectangleProtocol) {
        pango_extents_to_pixels(cast(_ptr), cast(nearest.ptr))
    
    }
}



