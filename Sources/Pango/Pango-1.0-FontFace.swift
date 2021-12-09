import CGLib
import CPango
import GLib
import GLibObject

// MARK: - FontFace Class

/// A `PangoFontFace` is used to represent a group of fonts with
/// the same family, slant, weight, and width, but varying sizes.
///
/// The `FontFaceProtocol` protocol exposes the methods and properties of an underlying `PangoFontFace` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontFace`.
/// Alternatively, use `FontFaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FontFaceProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `PangoFontFace` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFontFace` instance.
    var font_face_ptr: UnsafeMutablePointer<PangoFontFace>! { get }

    /// Required Initialiser for types conforming to `FontFaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `PangoFontFace` is used to represent a group of fonts with
/// the same family, slant, weight, and width, but varying sizes.
///
/// The `FontFaceRef` type acts as a lightweight Swift reference to an underlying `PangoFontFace` instance.
/// It exposes methods that can operate on this data type through `FontFaceProtocol` conformance.
/// Use `FontFaceRef` only as an `unowned` reference to an existing `PangoFontFace` instance.
///
public struct FontFaceRef: FontFaceProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `PangoFontFace` instance.
    /// For type-safe access, use the generated, typed pointer `font_face_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontFaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoFontFace>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoFontFace>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoFontFace>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoFontFace>?) {
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

    /// Reference intialiser for a related type that implements `FontFaceProtocol`
    @inlinable init<T: FontFaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FontFaceProtocol>(_ other: T) -> FontFaceRef { FontFaceRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `PangoFontFace` is used to represent a group of fonts with
/// the same family, slant, weight, and width, but varying sizes.
///
/// The `FontFace` type acts as a reference-counted owner of an underlying `PangoFontFace` instance.
/// It provides the methods that can operate on this data type through `FontFaceProtocol` conformance.
/// Use `FontFace` as a strong reference or owner of a `PangoFontFace` instance.
///
open class FontFace: GLibObject.Object, FontFaceProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontFace` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoFontFace>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontFace` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoFontFace>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontFace` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontFace` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontFace` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoFontFace>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontFace` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoFontFace>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `PangoFontFace`.
    /// i.e., ownership is transferred to the `FontFace` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoFontFace>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FontFaceProtocol`
    /// Will retain `PangoFontFace`.
    /// - Parameter other: an instance of a related type that implements `FontFaceProtocol`
    @inlinable public init<T: FontFaceProtocol>(fontFace other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no FontFace properties

public enum FontFaceSignalName: String, SignalNameProtocol {
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"

}

// MARK: FontFace has no signals
// MARK: FontFace Class: FontFaceProtocol extension (methods and fields)
public extension FontFaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontFace` instance.
    @inlinable var font_face_ptr: UnsafeMutablePointer<PangoFontFace>! { return ptr?.assumingMemoryBound(to: PangoFontFace.self) }

    /// Returns the family, style, variant, weight and stretch of
    /// a `PangoFontFace`. The size field of the resulting font description
    /// will be unset.
    @inlinable func describe() -> FontDescriptionRef! {
        let rv = FontDescriptionRef(gconstpointer: gconstpointer(pango_font_face_describe(font_face_ptr)))
        return rv
    }

    /// Gets a name representing the style of this face among the
    /// different faces in the `PangoFontFamily` for the face. The
    /// name is suitable for displaying to users.
    @inlinable func getFaceName() -> String! {
        let rv = pango_font_face_get_face_name(font_face_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the `PangoFontFamily` that `face` belongs to.
    @inlinable func getFamily() -> FontFamilyRef! {
        let rv = FontFamilyRef(gconstpointer: gconstpointer(pango_font_face_get_family(font_face_ptr)))
        return rv
    }

    /// List the available sizes for a font.
    /// 
    /// This is only applicable to bitmap fonts. For scalable fonts, stores
    /// `nil` at the location pointed to by `sizes` and 0 at the location pointed
    /// to by `n_sizes`. The sizes returned are in Pango units and are sorted
    /// in ascending order.
    @inlinable func list(sizes: UnsafeMutablePointer<UnsafeMutablePointer<CInt>?>! = nil, nSizes: UnsafeMutablePointer<gint>!) {
        pango_font_face_list_sizes(font_face_ptr, sizes, nSizes)
    
    }
    /// Gets a name representing the style of this face among the
    /// different faces in the `PangoFontFamily` for the face. The
    /// name is suitable for displaying to users.
    @inlinable var faceName: String! {
        /// Gets a name representing the style of this face among the
        /// different faces in the `PangoFontFamily` for the face. The
        /// name is suitable for displaying to users.
        get {
            let rv = pango_font_face_get_face_name(font_face_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the `PangoFontFamily` that `face` belongs to.
    @inlinable var family: FontFamilyRef! {
        /// Gets the `PangoFontFamily` that `face` belongs to.
        get {
            let rv = FontFamilyRef(gconstpointer: gconstpointer(pango_font_face_get_family(font_face_ptr)))
            return rv
        }
    }

    /// Returns whether a `PangoFontFace` is synthesized by the underlying
    /// font rendering engine from another face, perhaps by shearing, emboldening,
    /// or lightening it.
    @inlinable var isSynthesized: Bool {
        /// Returns whether a `PangoFontFace` is synthesized by the underlying
        /// font rendering engine from another face, perhaps by shearing, emboldening,
        /// or lightening it.
        get {
            let rv = ((pango_font_face_is_synthesized(font_face_ptr)) != 0)
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = font_face_ptr.pointee.parent_instance
            return rv
        }
    }

}



