import CGLib
import CPango
import GLib
import GLibObject

// MARK: - FontFamily Class

/// The `FontFamilyProtocol` protocol exposes the methods and properties of an underlying `PangoFontFamily` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontFamily`.
/// Alternatively, use `FontFamilyRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `PangoFontFamily` is used to represent a family of related
/// font faces.
/// 
/// The font faces in a family share a common design, but differ in
/// slant, weight, width or other aspects.
public protocol FontFamilyProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `PangoFontFamily` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFontFamily` instance.
    var font_family_ptr: UnsafeMutablePointer<PangoFontFamily>! { get }

    /// Required Initialiser for types conforming to `FontFamilyProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `FontFamilyRef` type acts as a lightweight Swift reference to an underlying `PangoFontFamily` instance.
/// It exposes methods that can operate on this data type through `FontFamilyProtocol` conformance.
/// Use `FontFamilyRef` only as an `unowned` reference to an existing `PangoFontFamily` instance.
///
/// A `PangoFontFamily` is used to represent a family of related
/// font faces.
/// 
/// The font faces in a family share a common design, but differ in
/// slant, weight, width or other aspects.
public struct FontFamilyRef: FontFamilyProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `PangoFontFamily` instance.
    /// For type-safe access, use the generated, typed pointer `font_family_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontFamilyRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoFontFamily>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoFontFamily>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoFontFamily>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoFontFamily>?) {
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

    /// Reference intialiser for a related type that implements `FontFamilyProtocol`
    @inlinable init<T: FontFamilyProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FontFamilyProtocol>(_ other: T) -> FontFamilyRef { FontFamilyRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FontFamily` type acts as a reference-counted owner of an underlying `PangoFontFamily` instance.
/// It provides the methods that can operate on this data type through `FontFamilyProtocol` conformance.
/// Use `FontFamily` as a strong reference or owner of a `PangoFontFamily` instance.
///
/// A `PangoFontFamily` is used to represent a family of related
/// font faces.
/// 
/// The font faces in a family share a common design, but differ in
/// slant, weight, width or other aspects.
open class FontFamily: GLibObject.Object, FontFamilyProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontFamily` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoFontFamily>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontFamily` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoFontFamily>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontFamily` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontFamily` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontFamily` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoFontFamily>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontFamily` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoFontFamily>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `PangoFontFamily`.
    /// i.e., ownership is transferred to the `FontFamily` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoFontFamily>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FontFamilyProtocol`
    /// Will retain `PangoFontFamily`.
    /// - Parameter other: an instance of a related type that implements `FontFamilyProtocol`
    @inlinable public init<T: FontFamilyProtocol>(fontFamily other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no FontFamily properties

public enum FontFamilySignalName: String, SignalNameProtocol {
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"

}

// MARK: FontFamily has no signals
// MARK: FontFamily Class: FontFamilyProtocol extension (methods and fields)
public extension FontFamilyProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontFamily` instance.
    @inlinable var font_family_ptr: UnsafeMutablePointer<PangoFontFamily>! { return ptr?.assumingMemoryBound(to: PangoFontFamily.self) }

    /// Gets the `PangoFontFace` of `family` with the given name.
    @inlinable func getFace(name: UnsafePointer<CChar>? = nil) -> FontFaceRef! {
        let rv = FontFaceRef(gconstpointer: gconstpointer(pango_font_family_get_face(font_family_ptr, name)))
        return rv
    }

    /// Gets the name of the family.
    /// 
    /// The name is unique among all fonts for the font backend and can
    /// be used in a `PangoFontDescription` to specify that a face from
    /// this family is desired.
    @inlinable func getName() -> String! {
        let rv = pango_font_family_get_name(font_family_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Lists the different font faces that make up `family`.
    /// 
    /// The faces in a family share a common design, but differ in slant, weight,
    /// width and other aspects.
    @inlinable func list(faces: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<PangoFontFace>?>?>! = nil, nFaces: UnsafeMutablePointer<gint>!) {
        pango_font_family_list_faces(font_family_ptr, faces, nFaces)
    
    }
    /// A monospace font is a font designed for text display where the the
    /// characters form a regular grid.
    /// 
    /// For Western languages this would
    /// mean that the advance width of all characters are the same, but
    /// this categorization also includes Asian fonts which include
    /// double-width characters: characters that occupy two grid cells.
    /// `g_unichar_iswide()` returns a result that indicates whether a
    /// character is typically double-width in a monospace font.
    /// 
    /// The best way to find out the grid-cell size is to call
    /// [method`Pango.FontMetrics.get_approximate_digit_width`], since the
    /// results of [method`Pango.FontMetrics.get_approximate_char_width`] may
    /// be affected by double-width characters.
    @inlinable var isMonospace: Bool {
        /// A monospace font is a font designed for text display where the the
        /// characters form a regular grid.
        /// 
        /// For Western languages this would
        /// mean that the advance width of all characters are the same, but
        /// this categorization also includes Asian fonts which include
        /// double-width characters: characters that occupy two grid cells.
        /// `g_unichar_iswide()` returns a result that indicates whether a
        /// character is typically double-width in a monospace font.
        /// 
        /// The best way to find out the grid-cell size is to call
        /// [method`Pango.FontMetrics.get_approximate_digit_width`], since the
        /// results of [method`Pango.FontMetrics.get_approximate_char_width`] may
        /// be affected by double-width characters.
        get {
            let rv = ((pango_font_family_is_monospace(font_family_ptr)) != 0)
            return rv
        }
    }

    /// A variable font is a font which has axes that can be modified to
    /// produce different faces.
    @inlinable var isVariable: Bool {
        /// A variable font is a font which has axes that can be modified to
        /// produce different faces.
        get {
            let rv = ((pango_font_family_is_variable(font_family_ptr)) != 0)
            return rv
        }
    }

    /// Gets the name of the family.
    /// 
    /// The name is unique among all fonts for the font backend and can
    /// be used in a `PangoFontDescription` to specify that a face from
    /// this family is desired.
    @inlinable var name: String! {
        /// Gets the name of the family.
        /// 
        /// The name is unique among all fonts for the font backend and can
        /// be used in a `PangoFontDescription` to specify that a face from
        /// this family is desired.
        get {
            let rv = pango_font_family_get_name(font_family_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = font_family_ptr.pointee.parent_instance
            return rv
        }
    }

}



