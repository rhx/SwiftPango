import CGLib
import CPango
import GLib
import GLibObject

// MARK: - FontFace Class

/// The `FontFaceProtocol` protocol exposes the methods and properties of an underlying `PangoFontFace` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontFace`.
/// Alternatively, use `FontFaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoFontFace` structure is used to represent a group of fonts with
/// the same family, slant, weight, width, but varying sizes.
public protocol FontFaceProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `PangoFontFace` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFontFace` instance.
    var font_face_ptr: UnsafeMutablePointer<PangoFontFace>! { get }

}

/// The `FontFaceRef` type acts as a lightweight Swift reference to an underlying `PangoFontFace` instance.
/// It exposes methods that can operate on this data type through `FontFaceProtocol` conformance.
/// Use `FontFaceRef` only as an `unowned` reference to an existing `PangoFontFace` instance.
///
/// The `PangoFontFace` structure is used to represent a group of fonts with
/// the same family, slant, weight, width, but varying sizes.
public struct FontFaceRef: FontFaceProtocol {
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

/// The `FontFace` type acts as a reference-counted owner of an underlying `PangoFontFace` instance.
/// It provides the methods that can operate on this data type through `FontFaceProtocol` conformance.
/// Use `FontFace` as a strong reference or owner of a `PangoFontFace` instance.
///
/// The `PangoFontFace` structure is used to represent a group of fonts with
/// the same family, slant, weight, width, but varying sizes.
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
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
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

public extension FontFaceProtocol {
    /// Connect a `FontFaceSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: FontFaceSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

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
    /// different faces in the `PangoFontFamily` for the face. This
    /// name is unique among all faces in the family and is suitable
    /// for displaying to users.
    @inlinable func getFaceName() -> String! {
        let rv = pango_font_face_get_face_name(font_face_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the `PangoFontFamily` that `face`
    /// belongs to.
    @inlinable func getFamily() -> FontFamilyRef! {
        let rv = FontFamilyRef(gconstpointer: gconstpointer(pango_font_face_get_family(font_face_ptr)))
        return rv
    }

    /// List the available sizes for a font. This is only applicable to bitmap
    /// fonts. For scalable fonts, stores `nil` at the location pointed to by
    /// `sizes` and 0 at the location pointed to by `n_sizes`. The sizes returned
    /// are in Pango units and are sorted in ascending order.
    @inlinable func list(sizes: UnsafeMutablePointer<UnsafeMutablePointer<CInt>?>! = nil, nSizes: UnsafeMutablePointer<gint>!) {
        pango_font_face_list_sizes(font_face_ptr, sizes, nSizes)
    
    }
    /// Gets a name representing the style of this face among the
    /// different faces in the `PangoFontFamily` for the face. This
    /// name is unique among all faces in the family and is suitable
    /// for displaying to users.
    @inlinable var faceName: String! {
        /// Gets a name representing the style of this face among the
        /// different faces in the `PangoFontFamily` for the face. This
        /// name is unique among all faces in the family and is suitable
        /// for displaying to users.
        get {
            let rv = pango_font_face_get_face_name(font_face_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the `PangoFontFamily` that `face`
    /// belongs to.
    @inlinable var family: FontFamilyRef! {
        /// Gets the `PangoFontFamily` that `face`
        /// belongs to.
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



// MARK: - FontFamily Class

/// The `FontFamilyProtocol` protocol exposes the methods and properties of an underlying `PangoFontFamily` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontFamily`.
/// Alternatively, use `FontFamilyRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoFontFamily` structure is used to represent a family of related
/// font faces. The faces in a family share a common design, but differ in
/// slant, weight, width and other aspects.
public protocol FontFamilyProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `PangoFontFamily` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFontFamily` instance.
    var font_family_ptr: UnsafeMutablePointer<PangoFontFamily>! { get }

}

/// The `FontFamilyRef` type acts as a lightweight Swift reference to an underlying `PangoFontFamily` instance.
/// It exposes methods that can operate on this data type through `FontFamilyProtocol` conformance.
/// Use `FontFamilyRef` only as an `unowned` reference to an existing `PangoFontFamily` instance.
///
/// The `PangoFontFamily` structure is used to represent a family of related
/// font faces. The faces in a family share a common design, but differ in
/// slant, weight, width and other aspects.
public struct FontFamilyRef: FontFamilyProtocol {
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
/// The `PangoFontFamily` structure is used to represent a family of related
/// font faces. The faces in a family share a common design, but differ in
/// slant, weight, width and other aspects.
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
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
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

public extension FontFamilyProtocol {
    /// Connect a `FontFamilySignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: FontFamilySignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

// MARK: FontFamily Class: FontFamilyProtocol extension (methods and fields)
public extension FontFamilyProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontFamily` instance.
    @inlinable var font_family_ptr: UnsafeMutablePointer<PangoFontFamily>! { return ptr?.assumingMemoryBound(to: PangoFontFamily.self) }

    /// Gets the `PangoFontFace` of `family` with the given name.
    @inlinable func getFace(name: UnsafePointer<CChar>? = nil) -> FontFaceRef! {
        let rv = FontFaceRef(gconstpointer: gconstpointer(pango_font_family_get_face(font_family_ptr, name)))
        return rv
    }

    /// Gets the name of the family. The name is unique among all
    /// fonts for the font backend and can be used in a `PangoFontDescription`
    /// to specify that a face from this family is desired.
    @inlinable func getName() -> String! {
        let rv = pango_font_family_get_name(font_family_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Lists the different font faces that make up `family`. The faces
    /// in a family share a common design, but differ in slant, weight,
    /// width and other aspects.
    @inlinable func list(faces: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<PangoFontFace>?>?>! = nil, nFaces: UnsafeMutablePointer<gint>!) {
        pango_font_family_list_faces(font_family_ptr, faces, nFaces)
    
    }
    /// A monospace font is a font designed for text display where the the
    /// characters form a regular grid. For Western languages this would
    /// mean that the advance width of all characters are the same, but
    /// this categorization also includes Asian fonts which include
    /// double-width characters: characters that occupy two grid cells.
    /// `g_unichar_iswide()` returns a result that indicates whether a
    /// character is typically double-width in a monospace font.
    /// 
    /// The best way to find out the grid-cell size is to call
    /// `pango_font_metrics_get_approximate_digit_width()`, since the results
    /// of `pango_font_metrics_get_approximate_char_width()` may be affected
    /// by double-width characters.
    @inlinable var isMonospace: Bool {
        /// A monospace font is a font designed for text display where the the
        /// characters form a regular grid. For Western languages this would
        /// mean that the advance width of all characters are the same, but
        /// this categorization also includes Asian fonts which include
        /// double-width characters: characters that occupy two grid cells.
        /// `g_unichar_iswide()` returns a result that indicates whether a
        /// character is typically double-width in a monospace font.
        /// 
        /// The best way to find out the grid-cell size is to call
        /// `pango_font_metrics_get_approximate_digit_width()`, since the results
        /// of `pango_font_metrics_get_approximate_char_width()` may be affected
        /// by double-width characters.
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

    /// Gets the name of the family. The name is unique among all
    /// fonts for the font backend and can be used in a `PangoFontDescription`
    /// to specify that a face from this family is desired.
    @inlinable var name: String! {
        /// Gets the name of the family. The name is unique among all
        /// fonts for the font backend and can be used in a `PangoFontDescription`
        /// to specify that a face from this family is desired.
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



// MARK: - FontMap Class

/// The `FontMapProtocol` protocol exposes the methods and properties of an underlying `PangoFontMap` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontMap`.
/// Alternatively, use `FontMapRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoFontMap` represents the set of fonts available for a
/// particular rendering system. This is a virtual object with
/// implementations being specific to particular rendering systems.  To
/// create an implementation of a `PangoFontMap`, the rendering-system
/// specific code should allocate a larger structure that contains a nested
/// `PangoFontMap`, fill in the <structfield>klass</structfield> member of the nested `PangoFontMap` with a
/// pointer to a appropriate `PangoFontMapClass`, then call
/// `pango_font_map_init()` on the structure.
/// 
/// The `PangoFontMap` structure contains one member which the implementation
/// fills in.
public protocol FontMapProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `PangoFontMap` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFontMap` instance.
    var font_map_ptr: UnsafeMutablePointer<PangoFontMap>! { get }

}

/// The `FontMapRef` type acts as a lightweight Swift reference to an underlying `PangoFontMap` instance.
/// It exposes methods that can operate on this data type through `FontMapProtocol` conformance.
/// Use `FontMapRef` only as an `unowned` reference to an existing `PangoFontMap` instance.
///
/// The `PangoFontMap` represents the set of fonts available for a
/// particular rendering system. This is a virtual object with
/// implementations being specific to particular rendering systems.  To
/// create an implementation of a `PangoFontMap`, the rendering-system
/// specific code should allocate a larger structure that contains a nested
/// `PangoFontMap`, fill in the <structfield>klass</structfield> member of the nested `PangoFontMap` with a
/// pointer to a appropriate `PangoFontMapClass`, then call
/// `pango_font_map_init()` on the structure.
/// 
/// The `PangoFontMap` structure contains one member which the implementation
/// fills in.
public struct FontMapRef: FontMapProtocol {
        /// Untyped pointer to the underlying `PangoFontMap` instance.
    /// For type-safe access, use the generated, typed pointer `font_map_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontMapRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoFontMap>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoFontMap>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoFontMap>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoFontMap>?) {
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

    /// Reference intialiser for a related type that implements `FontMapProtocol`
    @inlinable init<T: FontMapProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FontMap` type acts as a reference-counted owner of an underlying `PangoFontMap` instance.
/// It provides the methods that can operate on this data type through `FontMapProtocol` conformance.
/// Use `FontMap` as a strong reference or owner of a `PangoFontMap` instance.
///
/// The `PangoFontMap` represents the set of fonts available for a
/// particular rendering system. This is a virtual object with
/// implementations being specific to particular rendering systems.  To
/// create an implementation of a `PangoFontMap`, the rendering-system
/// specific code should allocate a larger structure that contains a nested
/// `PangoFontMap`, fill in the <structfield>klass</structfield> member of the nested `PangoFontMap` with a
/// pointer to a appropriate `PangoFontMapClass`, then call
/// `pango_font_map_init()` on the structure.
/// 
/// The `PangoFontMap` structure contains one member which the implementation
/// fills in.
open class FontMap: GLibObject.Object, FontMapProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontMap` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoFontMap>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontMap` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoFontMap>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontMap` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontMap` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontMap` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoFontMap>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontMap` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoFontMap>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `PangoFontMap`.
    /// i.e., ownership is transferred to the `FontMap` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoFontMap>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FontMapProtocol`
    /// Will retain `PangoFontMap`.
    /// - Parameter other: an instance of a related type that implements `FontMapProtocol`
    @inlinable public init<T: FontMapProtocol>(fontMap other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no FontMap properties

public enum FontMapSignalName: String, SignalNameProtocol {
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

public extension FontMapProtocol {
    /// Connect a `FontMapSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: FontMapSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

// MARK: FontMap Class: FontMapProtocol extension (methods and fields)
public extension FontMapProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontMap` instance.
    @inlinable var font_map_ptr: UnsafeMutablePointer<PangoFontMap>! { return ptr?.assumingMemoryBound(to: PangoFontMap.self) }

    /// Forces a change in the context, which will cause any `PangoContext`
    /// using this fontmap to change.
    /// 
    /// This function is only useful when implementing a new backend
    /// for Pango, something applications won't do. Backends should
    /// call this function if they have attached extra data to the context
    /// and such data is changed.
    @inlinable func changed() {
        pango_font_map_changed(font_map_ptr)
    
    }

    /// Creates a `PangoContext` connected to `fontmap`.  This is equivalent
    /// to `pango_context_new()` followed by `pango_context_set_font_map()`.
    /// 
    /// If you are using Pango as part of a higher-level system,
    /// that system may have it's own way of create a `PangoContext`.
    /// For instance, the GTK+ toolkit has, among others,
    /// `gdk_pango_context_get_for_screen()`, and
    /// `gtk_widget_get_pango_context()`.  Use those instead.
    @inlinable func createContext() -> ContextRef! {
        let rv = ContextRef(gconstpointer: gconstpointer(pango_font_map_create_context(font_map_ptr)))
        return rv
    }

    /// Gets a font family by name.
    @inlinable func getFamily(name: UnsafePointer<CChar>!) -> FontFamilyRef! {
        let rv = FontFamilyRef(gconstpointer: gconstpointer(pango_font_map_get_family(font_map_ptr, name)))
        return rv
    }

    /// Returns the current serial number of `fontmap`.  The serial number is
    /// initialized to an small number larger than zero when a new fontmap
    /// is created and is increased whenever the fontmap is changed. It may
    /// wrap, but will never have the value 0. Since it can wrap, never compare
    /// it with "less than", always use "not equals".
    /// 
    /// The fontmap can only be changed using backend-specific API, like changing
    /// fontmap resolution.
    /// 
    /// This can be used to automatically detect changes to a `PangoFontMap`, like
    /// in `PangoContext`.
    @inlinable func getSerial() -> Int {
        let rv = Int(pango_font_map_get_serial(font_map_ptr))
        return rv
    }

    /// List all families for a fontmap.
    @inlinable func list(families: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<PangoFontFamily>?>?>!, nFamilies: UnsafeMutablePointer<gint>!) {
        pango_font_map_list_families(font_map_ptr, families, nFamilies)
    
    }

    /// Load the font in the fontmap that is the closest match for `desc`.
    @inlinable func loadFont<ContextT: ContextProtocol, FontDescriptionT: FontDescriptionProtocol>(context: ContextT, desc: FontDescriptionT) -> FontRef! {
        let rv = FontRef(gconstpointer: gconstpointer(pango_font_map_load_font(font_map_ptr, context.context_ptr, desc.font_description_ptr)))
        return rv
    }

    /// Load a set of fonts in the fontmap that can be used to render
    /// a font matching `desc`.
    @inlinable func loadFontset<ContextT: ContextProtocol, FontDescriptionT: FontDescriptionProtocol, LanguageT: LanguageProtocol>(context: ContextT, desc: FontDescriptionT, language: LanguageT) -> FontsetRef! {
        let rv = FontsetRef(gconstpointer: gconstpointer(pango_font_map_load_fontset(font_map_ptr, context.context_ptr, desc.font_description_ptr, language.language_ptr)))
        return rv
    }
    /// Returns the current serial number of `fontmap`.  The serial number is
    /// initialized to an small number larger than zero when a new fontmap
    /// is created and is increased whenever the fontmap is changed. It may
    /// wrap, but will never have the value 0. Since it can wrap, never compare
    /// it with "less than", always use "not equals".
    /// 
    /// The fontmap can only be changed using backend-specific API, like changing
    /// fontmap resolution.
    /// 
    /// This can be used to automatically detect changes to a `PangoFontMap`, like
    /// in `PangoContext`.
    @inlinable var serial: Int {
        /// Returns the current serial number of `fontmap`.  The serial number is
        /// initialized to an small number larger than zero when a new fontmap
        /// is created and is increased whenever the fontmap is changed. It may
        /// wrap, but will never have the value 0. Since it can wrap, never compare
        /// it with "less than", always use "not equals".
        /// 
        /// The fontmap can only be changed using backend-specific API, like changing
        /// fontmap resolution.
        /// 
        /// This can be used to automatically detect changes to a `PangoFontMap`, like
        /// in `PangoContext`.
        get {
            let rv = Int(pango_font_map_get_serial(font_map_ptr))
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = font_map_ptr.pointee.parent_instance
            return rv
        }
    }

}



// MARK: - Fontset Class

/// The `FontsetProtocol` protocol exposes the methods and properties of an underlying `PangoFontset` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Fontset`.
/// Alternatively, use `FontsetRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `PangoFontset` represents a set of `PangoFont` to use
/// when rendering text. It is the result of resolving a
/// `PangoFontDescription` against a particular `PangoContext`.
/// It has operations for finding the component font for
/// a particular Unicode character, and for finding a composite
/// set of metrics for the entire fontset.
public protocol FontsetProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `PangoFontset` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFontset` instance.
    var fontset_ptr: UnsafeMutablePointer<PangoFontset>! { get }

}

/// The `FontsetRef` type acts as a lightweight Swift reference to an underlying `PangoFontset` instance.
/// It exposes methods that can operate on this data type through `FontsetProtocol` conformance.
/// Use `FontsetRef` only as an `unowned` reference to an existing `PangoFontset` instance.
///
/// A `PangoFontset` represents a set of `PangoFont` to use
/// when rendering text. It is the result of resolving a
/// `PangoFontDescription` against a particular `PangoContext`.
/// It has operations for finding the component font for
/// a particular Unicode character, and for finding a composite
/// set of metrics for the entire fontset.
public struct FontsetRef: FontsetProtocol {
        /// Untyped pointer to the underlying `PangoFontset` instance.
    /// For type-safe access, use the generated, typed pointer `fontset_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontsetRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoFontset>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoFontset>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoFontset>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoFontset>?) {
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

    /// Reference intialiser for a related type that implements `FontsetProtocol`
    @inlinable init<T: FontsetProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Fontset` type acts as a reference-counted owner of an underlying `PangoFontset` instance.
/// It provides the methods that can operate on this data type through `FontsetProtocol` conformance.
/// Use `Fontset` as a strong reference or owner of a `PangoFontset` instance.
///
/// A `PangoFontset` represents a set of `PangoFont` to use
/// when rendering text. It is the result of resolving a
/// `PangoFontDescription` against a particular `PangoContext`.
/// It has operations for finding the component font for
/// a particular Unicode character, and for finding a composite
/// set of metrics for the entire fontset.
open class Fontset: GLibObject.Object, FontsetProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Fontset` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoFontset>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Fontset` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoFontset>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Fontset` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Fontset` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Fontset` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoFontset>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Fontset` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoFontset>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `PangoFontset`.
    /// i.e., ownership is transferred to the `Fontset` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoFontset>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FontsetProtocol`
    /// Will retain `PangoFontset`.
    /// - Parameter other: an instance of a related type that implements `FontsetProtocol`
    @inlinable public init<T: FontsetProtocol>(fontset other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no Fontset properties

public enum FontsetSignalName: String, SignalNameProtocol {
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

public extension FontsetProtocol {
    /// Connect a `FontsetSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: FontsetSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

// MARK: Fontset Class: FontsetProtocol extension (methods and fields)
public extension FontsetProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontset` instance.
    @inlinable var fontset_ptr: UnsafeMutablePointer<PangoFontset>! { return ptr?.assumingMemoryBound(to: PangoFontset.self) }

    /// Iterates through all the fonts in a fontset, calling `func` for
    /// each one. If `func` returns `true`, that stops the iteration.
    @inlinable func foreach(`func`: PangoFontsetForeachFunc?, data: gpointer! = nil) {
        pango_fontset_foreach(fontset_ptr, `func`, data)
    
    }

    /// Returns the font in the fontset that contains the best glyph for the
    /// Unicode character `wc`.
    @inlinable func getFont(wc: Int) -> FontRef! {
        let rv = FontRef(gconstpointer: gconstpointer(pango_fontset_get_font(fontset_ptr, guint(wc))))
        return rv
    }

    /// Get overall metric information for the fonts in the fontset.
    @inlinable func getMetrics() -> FontMetricsRef! {
        let rv = FontMetricsRef(gconstpointer: gconstpointer(pango_fontset_get_metrics(fontset_ptr)))
        return rv
    }
    /// Get overall metric information for the fonts in the fontset.
    @inlinable var metrics: FontMetricsRef! {
        /// Get overall metric information for the fonts in the fontset.
        get {
            let rv = FontMetricsRef(gconstpointer: gconstpointer(pango_fontset_get_metrics(fontset_ptr)))
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = fontset_ptr.pointee.parent_instance
            return rv
        }
    }

}



// MARK: - FontsetSimple Class

/// The `FontsetSimpleProtocol` protocol exposes the methods and properties of an underlying `PangoFontsetSimple` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontsetSimple`.
/// Alternatively, use `FontsetSimpleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `PangoFontsetSimple` is a implementation of the abstract
/// `PangoFontset` base class in terms of an array of fonts,
/// which the creator provides when constructing the
/// `PangoFontsetSimple`.
public protocol FontsetSimpleProtocol: FontsetProtocol {
        /// Untyped pointer to the underlying `PangoFontsetSimple` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFontsetSimple` instance.
    var fontset_simple_ptr: UnsafeMutablePointer<PangoFontsetSimple>! { get }

}

/// The `FontsetSimpleRef` type acts as a lightweight Swift reference to an underlying `PangoFontsetSimple` instance.
/// It exposes methods that can operate on this data type through `FontsetSimpleProtocol` conformance.
/// Use `FontsetSimpleRef` only as an `unowned` reference to an existing `PangoFontsetSimple` instance.
///
/// `PangoFontsetSimple` is a implementation of the abstract
/// `PangoFontset` base class in terms of an array of fonts,
/// which the creator provides when constructing the
/// `PangoFontsetSimple`.
public struct FontsetSimpleRef: FontsetSimpleProtocol {
        /// Untyped pointer to the underlying `PangoFontsetSimple` instance.
    /// For type-safe access, use the generated, typed pointer `fontset_simple_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontsetSimpleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoFontsetSimple>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoFontsetSimple>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoFontsetSimple>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoFontsetSimple>?) {
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

    /// Reference intialiser for a related type that implements `FontsetSimpleProtocol`
    @inlinable init<T: FontsetSimpleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `PangoFontsetSimple` for the given language.
    @inlinable init<LanguageT: LanguageProtocol>( language: LanguageT) {
        let rv = pango_fontset_simple_new(language.language_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `FontsetSimple` type acts as a reference-counted owner of an underlying `PangoFontsetSimple` instance.
/// It provides the methods that can operate on this data type through `FontsetSimpleProtocol` conformance.
/// Use `FontsetSimple` as a strong reference or owner of a `PangoFontsetSimple` instance.
///
/// `PangoFontsetSimple` is a implementation of the abstract
/// `PangoFontset` base class in terms of an array of fonts,
/// which the creator provides when constructing the
/// `PangoFontsetSimple`.
open class FontsetSimple: Fontset, FontsetSimpleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontsetSimple` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoFontsetSimple>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontsetSimple` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoFontsetSimple>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontsetSimple` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontsetSimple` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontsetSimple` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoFontsetSimple>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontsetSimple` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoFontsetSimple>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `PangoFontsetSimple`.
    /// i.e., ownership is transferred to the `FontsetSimple` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoFontsetSimple>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FontsetSimpleProtocol`
    /// Will retain `PangoFontsetSimple`.
    /// - Parameter other: an instance of a related type that implements `FontsetSimpleProtocol`
    @inlinable public init<T: FontsetSimpleProtocol>(fontsetSimple other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `PangoFontsetSimple` for the given language.
    @inlinable public init<LanguageT: LanguageProtocol>( language: LanguageT) {
        let rv = pango_fontset_simple_new(language.language_ptr)
        super.init(gpointer: (rv))
    }


}

// MARK: no FontsetSimple properties

public enum FontsetSimpleSignalName: String, SignalNameProtocol {
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

public extension FontsetSimpleProtocol {
    /// Connect a `FontsetSimpleSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: FontsetSimpleSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

// MARK: FontsetSimple Class: FontsetSimpleProtocol extension (methods and fields)
public extension FontsetSimpleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontsetSimple` instance.
    @inlinable var fontset_simple_ptr: UnsafeMutablePointer<PangoFontsetSimple>! { return ptr?.assumingMemoryBound(to: PangoFontsetSimple.self) }

    /// Adds a font to the fontset.
    @inlinable func append<FontT: FontProtocol>(font: FontT) {
        pango_fontset_simple_append(fontset_simple_ptr, font.font_ptr)
    
    }

    /// Returns the number of fonts in the fontset.
    @inlinable func size() -> Int {
        let rv = Int(pango_fontset_simple_size(fontset_simple_ptr))
        return rv
    }


}



// MARK: - Layout Class

/// The `LayoutProtocol` protocol exposes the methods and properties of an underlying `PangoLayout` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Layout`.
/// Alternatively, use `LayoutRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoLayout` structure represents an entire paragraph
/// of text. It is initialized with a `PangoContext`, UTF-8 string
/// and set of attributes for that string. Once that is done, the
/// set of formatted lines can be extracted from the object,
/// the layout can be rendered, and conversion between logical
/// character positions within the layout's text, and the physical
/// position of the resulting glyphs can be made.
/// 
/// There are also a number of parameters to adjust the formatting
/// of a `PangoLayout`, which are illustrated in <xref linkend="parameters"/>.
/// It is possible, as well, to ignore the 2-D setup, and simply
/// treat the results of a `PangoLayout` as a list of lines.
/// 
/// <figure id="parameters">
/// <title>Adjustable parameters (on the left) and font metrics (on the right) for a PangoLayout</title>
/// <graphic fileref="layout.png" format="PNG"></graphic>
/// </figure>
/// 
/// The `PangoLayout` structure is opaque, and has no user-visible
/// fields.
public protocol LayoutProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `PangoLayout` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoLayout` instance.
    var layout_ptr: UnsafeMutablePointer<PangoLayout>! { get }

}

/// The `LayoutRef` type acts as a lightweight Swift reference to an underlying `PangoLayout` instance.
/// It exposes methods that can operate on this data type through `LayoutProtocol` conformance.
/// Use `LayoutRef` only as an `unowned` reference to an existing `PangoLayout` instance.
///
/// The `PangoLayout` structure represents an entire paragraph
/// of text. It is initialized with a `PangoContext`, UTF-8 string
/// and set of attributes for that string. Once that is done, the
/// set of formatted lines can be extracted from the object,
/// the layout can be rendered, and conversion between logical
/// character positions within the layout's text, and the physical
/// position of the resulting glyphs can be made.
/// 
/// There are also a number of parameters to adjust the formatting
/// of a `PangoLayout`, which are illustrated in <xref linkend="parameters"/>.
/// It is possible, as well, to ignore the 2-D setup, and simply
/// treat the results of a `PangoLayout` as a list of lines.
/// 
/// <figure id="parameters">
/// <title>Adjustable parameters (on the left) and font metrics (on the right) for a PangoLayout</title>
/// <graphic fileref="layout.png" format="PNG"></graphic>
/// </figure>
/// 
/// The `PangoLayout` structure is opaque, and has no user-visible
/// fields.
public struct LayoutRef: LayoutProtocol {
        /// Untyped pointer to the underlying `PangoLayout` instance.
    /// For type-safe access, use the generated, typed pointer `layout_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LayoutRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoLayout>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoLayout>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoLayout>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoLayout>?) {
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

    /// Reference intialiser for a related type that implements `LayoutProtocol`
    @inlinable init<T: LayoutProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Create a new `PangoLayout` object with attributes initialized to
    /// default values for a particular `PangoContext`.
    @inlinable init<ContextT: ContextProtocol>( context: ContextT) {
        let rv = pango_layout_new(context.context_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `Layout` type acts as a reference-counted owner of an underlying `PangoLayout` instance.
/// It provides the methods that can operate on this data type through `LayoutProtocol` conformance.
/// Use `Layout` as a strong reference or owner of a `PangoLayout` instance.
///
/// The `PangoLayout` structure represents an entire paragraph
/// of text. It is initialized with a `PangoContext`, UTF-8 string
/// and set of attributes for that string. Once that is done, the
/// set of formatted lines can be extracted from the object,
/// the layout can be rendered, and conversion between logical
/// character positions within the layout's text, and the physical
/// position of the resulting glyphs can be made.
/// 
/// There are also a number of parameters to adjust the formatting
/// of a `PangoLayout`, which are illustrated in <xref linkend="parameters"/>.
/// It is possible, as well, to ignore the 2-D setup, and simply
/// treat the results of a `PangoLayout` as a list of lines.
/// 
/// <figure id="parameters">
/// <title>Adjustable parameters (on the left) and font metrics (on the right) for a PangoLayout</title>
/// <graphic fileref="layout.png" format="PNG"></graphic>
/// </figure>
/// 
/// The `PangoLayout` structure is opaque, and has no user-visible
/// fields.
open class Layout: GLibObject.Object, LayoutProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Layout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoLayout>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Layout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoLayout>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Layout` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Layout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Layout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoLayout>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Layout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoLayout>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `PangoLayout`.
    /// i.e., ownership is transferred to the `Layout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoLayout>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `LayoutProtocol`
    /// Will retain `PangoLayout`.
    /// - Parameter other: an instance of a related type that implements `LayoutProtocol`
    @inlinable public init<T: LayoutProtocol>(layout other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Create a new `PangoLayout` object with attributes initialized to
    /// default values for a particular `PangoContext`.
    @inlinable public init<ContextT: ContextProtocol>( context: ContextT) {
        let rv = pango_layout_new(context.context_ptr)
        super.init(gpointer: (rv))
    }


}

// MARK: no Layout properties

public enum LayoutSignalName: String, SignalNameProtocol {
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

public extension LayoutProtocol {
    /// Connect a `LayoutSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: LayoutSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

// MARK: Layout Class: LayoutProtocol extension (methods and fields)
public extension LayoutProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoLayout` instance.
    @inlinable var layout_ptr: UnsafeMutablePointer<PangoLayout>! { return ptr?.assumingMemoryBound(to: PangoLayout.self) }

    /// Forces recomputation of any state in the `PangoLayout` that
    /// might depend on the layout's context. This function should
    /// be called if you make changes to the context subsequent
    /// to creating the layout.
    @inlinable func contextChanged() {
        pango_layout_context_changed(layout_ptr)
    
    }

    /// Does a deep copy-by-value of the `src` layout. The attribute list,
    /// tab array, and text from the original layout are all copied by
    /// value.
    @inlinable func copy() -> LayoutRef! {
        guard let rv = LayoutRef(gconstpointer: gconstpointer(pango_layout_copy(layout_ptr))) else { return nil }
        return rv
    }

    /// Gets the alignment for the layout: how partial lines are
    /// positioned within the horizontal space available.
    @inlinable func getAlignment() -> PangoAlignment {
        let rv = pango_layout_get_alignment(layout_ptr)
        return rv
    }

    /// Gets the attribute list for the layout, if any.
    @inlinable func getAttributes() -> AttrListRef! {
        let rv = AttrListRef(gconstpointer: gconstpointer(pango_layout_get_attributes(layout_ptr)))
        return rv
    }

    /// Gets whether to calculate the bidirectional base direction
    /// for the layout according to the contents of the layout.
    /// See `pango_layout_set_auto_dir()`.
    @inlinable func getAutoDir() -> Bool {
        let rv = ((pango_layout_get_auto_dir(layout_ptr)) != 0)
        return rv
    }

    /// Gets the Y position of baseline of the first line in `layout`.
    @inlinable func getBaseline() -> Int {
        let rv = Int(pango_layout_get_baseline(layout_ptr))
        return rv
    }

    /// Returns the number of Unicode characters in the
    /// the text of `layout`.
    @inlinable func getCharacterCount() -> Int {
        let rv = Int(pango_layout_get_character_count(layout_ptr))
        return rv
    }

    /// Retrieves the `PangoContext` used for this layout.
    @inlinable func getContext() -> ContextRef! {
        let rv = ContextRef(gconstpointer: gconstpointer(pango_layout_get_context(layout_ptr)))
        return rv
    }

    /// Given an index within a layout, determines the positions that of the
    /// strong and weak cursors if the insertion point is at that
    /// index. The position of each cursor is stored as a zero-width
    /// rectangle. The strong cursor location is the location where
    /// characters of the directionality equal to the base direction of the
    /// layout are inserted.  The weak cursor location is the location
    /// where characters of the directionality opposite to the base
    /// direction of the layout are inserted.
    @inlinable func getCursorPos(index_: Int, strongPos: RectangleRef? = nil, weakPos: RectangleRef? = nil) {
        pango_layout_get_cursor_pos(layout_ptr, gint(index_), strongPos?._ptr, weakPos?._ptr)
    
    }
    /// Given an index within a layout, determines the positions that of the
    /// strong and weak cursors if the insertion point is at that
    /// index. The position of each cursor is stored as a zero-width
    /// rectangle. The strong cursor location is the location where
    /// characters of the directionality equal to the base direction of the
    /// layout are inserted.  The weak cursor location is the location
    /// where characters of the directionality opposite to the base
    /// direction of the layout are inserted.
    @inlinable func getCursorPos<RectangleT: RectangleProtocol>(index_: Int, strongPos: RectangleT?, weakPos: RectangleT?) {
        pango_layout_get_cursor_pos(layout_ptr, gint(index_), strongPos?._ptr, weakPos?._ptr)
    
    }

    /// Gets the text direction at the given character
    /// position in `layout`.
    @inlinable func getDirection(index: Int) -> PangoDirection {
        let rv = pango_layout_get_direction(layout_ptr, gint(index))
        return rv
    }

    /// Gets the type of ellipsization being performed for `layout`.
    /// See `pango_layout_set_ellipsize()`
    @inlinable func getEllipsize() -> PangoEllipsizeMode {
        let rv = pango_layout_get_ellipsize(layout_ptr)
        return rv
    }

    /// Computes the logical and ink extents of `layout`. Logical extents
    /// are usually what you want for positioning things.  Note that both extents
    /// may have non-zero x and y.  You may want to use those to offset where you
    /// render the layout.  Not doing that is a very typical bug that shows up as
    /// right-to-left layouts not being correctly positioned in a layout with
    /// a set width.
    /// 
    /// The extents are given in layout coordinates and in Pango units; layout
    /// coordinates begin at the top left corner of the layout.
    @inlinable func getExtents(inkRect: RectangleRef? = nil, logicalRect: RectangleRef? = nil) {
        pango_layout_get_extents(layout_ptr, inkRect?._ptr, logicalRect?._ptr)
    
    }
    /// Computes the logical and ink extents of `layout`. Logical extents
    /// are usually what you want for positioning things.  Note that both extents
    /// may have non-zero x and y.  You may want to use those to offset where you
    /// render the layout.  Not doing that is a very typical bug that shows up as
    /// right-to-left layouts not being correctly positioned in a layout with
    /// a set width.
    /// 
    /// The extents are given in layout coordinates and in Pango units; layout
    /// coordinates begin at the top left corner of the layout.
    @inlinable func getExtents<RectangleT: RectangleProtocol>(inkRect: RectangleT?, logicalRect: RectangleT?) {
        pango_layout_get_extents(layout_ptr, inkRect?._ptr, logicalRect?._ptr)
    
    }

    /// Gets the font description for the layout, if any.
    @inlinable func getFontDescription() -> FontDescriptionRef! {
        let rv = FontDescriptionRef(gconstpointer: gconstpointer(pango_layout_get_font_description(layout_ptr)))
        return rv
    }

    /// Gets the height of layout used for ellipsization.  See
    /// `pango_layout_set_height()` for details.
    @inlinable func getHeight() -> Int {
        let rv = Int(pango_layout_get_height(layout_ptr))
        return rv
    }

    /// Gets the paragraph indent width in Pango units. A negative value
    /// indicates a hanging indentation.
    @inlinable func getIndent() -> Int {
        let rv = Int(pango_layout_get_indent(layout_ptr))
        return rv
    }

    /// Returns an iterator to iterate over the visual extents of the layout.
    @inlinable func getIter() -> LayoutIterRef! {
        let rv = LayoutIterRef(gconstpointer: gconstpointer(pango_layout_get_iter(layout_ptr)))
        return rv
    }

    /// Gets whether each complete line should be stretched to fill the entire
    /// width of the layout.
    @inlinable func getJustify() -> Bool {
        let rv = ((pango_layout_get_justify(layout_ptr)) != 0)
        return rv
    }

    /// Retrieves a particular line from a `PangoLayout`.
    /// 
    /// Use the faster `pango_layout_get_line_readonly()` if you do not plan
    /// to modify the contents of the line (glyphs, glyph widths, etc.).
    @inlinable func get(line: Int) -> LayoutLineRef! {
        let rv = LayoutLineRef(gconstpointer: gconstpointer(pango_layout_get_line(layout_ptr, gint(line))))
        return rv
    }

    /// Retrieves the count of lines for the `layout`.
    @inlinable func getLineCount() -> Int {
        let rv = Int(pango_layout_get_line_count(layout_ptr))
        return rv
    }

    /// Retrieves a particular line from a `PangoLayout`.
    /// 
    /// This is a faster alternative to `pango_layout_get_line()`,
    /// but the user is not expected
    /// to modify the contents of the line (glyphs, glyph widths, etc.).
    @inlinable func getLineReadonly(line: Int) -> LayoutLineRef! {
        let rv = LayoutLineRef(gconstpointer: gconstpointer(pango_layout_get_line_readonly(layout_ptr, gint(line))))
        return rv
    }

    /// Gets the value that has been
    /// set with `pango_layout_set_line_spacing()`.
    @inlinable func getLineSpacing() -> CFloat {
        let rv = pango_layout_get_line_spacing(layout_ptr)
        return rv
    }

    /// Returns the lines of the `layout` as a list.
    /// 
    /// Use the faster `pango_layout_get_lines_readonly()` if you do not plan
    /// to modify the contents of the lines (glyphs, glyph widths, etc.).
    @inlinable func getLines() -> GLib.SListRef! {
        let rv = GLib.SListRef(pango_layout_get_lines(layout_ptr))
        return rv
    }

    /// Returns the lines of the `layout` as a list.
    /// 
    /// This is a faster alternative to `pango_layout_get_lines()`,
    /// but the user is not expected
    /// to modify the contents of the lines (glyphs, glyph widths, etc.).
    @inlinable func getLinesReadonly() -> GLib.SListRef! {
        let rv = GLib.SListRef(pango_layout_get_lines_readonly(layout_ptr))
        return rv
    }

    /// Retrieves an array of logical attributes for each character in
    /// the `layout`.
    @inlinable func getLog(attrs: UnsafeMutablePointer<UnsafeMutablePointer<PangoLogAttr>?>!, nAttrs: UnsafeMutablePointer<gint>!) {
        pango_layout_get_log_attrs(layout_ptr, attrs, nAttrs)
    
    }

    /// Retrieves an array of logical attributes for each character in
    /// the `layout`.
    /// 
    /// This is a faster alternative to `pango_layout_get_log_attrs()`.
    /// The returned array is part of `layout` and must not be modified.
    /// Modifying the layout will invalidate the returned array.
    /// 
    /// The number of attributes returned in `n_attrs` will be one more
    /// than the total number of characters in the layout, since there
    /// need to be attributes corresponding to both the position before
    /// the first character and the position after the last character.
    @inlinable func getLogAttrsReadonly(nAttrs: UnsafeMutablePointer<gint>!) -> UnsafePointer<PangoLogAttr>! {
        let rv = pango_layout_get_log_attrs_readonly(layout_ptr, nAttrs)
        return rv
    }

    /// Computes the logical and ink extents of `layout` in device units.
    /// This function just calls `pango_layout_get_extents()` followed by
    /// two `pango_extents_to_pixels()` calls, rounding `ink_rect` and `logical_rect`
    /// such that the rounded rectangles fully contain the unrounded one (that is,
    /// passes them as first argument to `pango_extents_to_pixels()`).
    @inlinable func getPixelExtents(inkRect: RectangleRef? = nil, logicalRect: RectangleRef? = nil) {
        pango_layout_get_pixel_extents(layout_ptr, inkRect?._ptr, logicalRect?._ptr)
    
    }
    /// Computes the logical and ink extents of `layout` in device units.
    /// This function just calls `pango_layout_get_extents()` followed by
    /// two `pango_extents_to_pixels()` calls, rounding `ink_rect` and `logical_rect`
    /// such that the rounded rectangles fully contain the unrounded one (that is,
    /// passes them as first argument to `pango_extents_to_pixels()`).
    @inlinable func getPixelExtents<RectangleT: RectangleProtocol>(inkRect: RectangleT?, logicalRect: RectangleT?) {
        pango_layout_get_pixel_extents(layout_ptr, inkRect?._ptr, logicalRect?._ptr)
    
    }

    /// Determines the logical width and height of a `PangoLayout`
    /// in device units. (`pango_layout_get_size()` returns the width
    /// and height scaled by `PANGO_SCALE`.) This
    /// is simply a convenience function around
    /// `pango_layout_get_pixel_extents()`.
    @inlinable func getPixelSize(width: UnsafeMutablePointer<gint>! = nil, height: UnsafeMutablePointer<gint>! = nil) {
        pango_layout_get_pixel_size(layout_ptr, width, height)
    
    }

    /// Returns the current serial number of `layout`.  The serial number is
    /// initialized to an small number  larger than zero when a new layout
    /// is created and is increased whenever the layout is changed using any
    /// of the setter functions, or the `PangoContext` it uses has changed.
    /// The serial may wrap, but will never have the value 0. Since it
    /// can wrap, never compare it with "less than", always use "not equals".
    /// 
    /// This can be used to automatically detect changes to a `PangoLayout`, and
    /// is useful for example to decide whether a layout needs redrawing.
    /// To force the serial to be increased, use `pango_layout_context_changed()`.
    @inlinable func getSerial() -> Int {
        let rv = Int(pango_layout_get_serial(layout_ptr))
        return rv
    }

    /// Obtains the value set by `pango_layout_set_single_paragraph_mode()`.
    @inlinable func getSingleParagraphMode() -> Bool {
        let rv = ((pango_layout_get_single_paragraph_mode(layout_ptr)) != 0)
        return rv
    }

    /// Determines the logical width and height of a `PangoLayout`
    /// in Pango units (device units scaled by `PANGO_SCALE`). This
    /// is simply a convenience function around `pango_layout_get_extents()`.
    @inlinable func getSize(width: UnsafeMutablePointer<gint>! = nil, height: UnsafeMutablePointer<gint>! = nil) {
        pango_layout_get_size(layout_ptr, width, height)
    
    }

    /// Gets the amount of spacing between the lines of the layout.
    @inlinable func getSpacing() -> Int {
        let rv = Int(pango_layout_get_spacing(layout_ptr))
        return rv
    }

    /// Gets the current `PangoTabArray` used by this layout. If no
    /// `PangoTabArray` has been set, then the default tabs are in use
    /// and `nil` is returned. Default tabs are every 8 spaces.
    /// The return value should be freed with `pango_tab_array_free()`.
    @inlinable func getTabs() -> TabArrayRef! {
        let rv = TabArrayRef(gconstpointer: gconstpointer(pango_layout_get_tabs(layout_ptr)))
        return rv
    }

    /// Gets the text in the layout. The returned text should not
    /// be freed or modified.
    @inlinable func getText() -> String! {
        let rv = pango_layout_get_text(layout_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Counts the number unknown glyphs in `layout`.  That is, zero if
    /// glyphs for all characters in the layout text were found, or more
    /// than zero otherwise.
    /// 
    /// This function can be used to determine if there are any fonts
    /// available to render all characters in a certain string, or when
    /// used in combination with `PANGO_ATTR_FALLBACK`, to check if a
    /// certain font supports all the characters in the string.
    @inlinable func getUnknownGlyphsCount() -> Int {
        let rv = Int(pango_layout_get_unknown_glyphs_count(layout_ptr))
        return rv
    }

    /// Gets the width to which the lines of the `PangoLayout` should wrap.
    @inlinable func getWidth() -> Int {
        let rv = Int(pango_layout_get_width(layout_ptr))
        return rv
    }

    /// Gets the wrap mode for the layout.
    /// 
    /// Use `pango_layout_is_wrapped()` to query whether any paragraphs
    /// were actually wrapped.
    @inlinable func getWrap() -> PangoWrapMode {
        let rv = pango_layout_get_wrap(layout_ptr)
        return rv
    }

    /// Converts from byte `index_` within the `layout` to line and X position.
    /// (X position is measured from the left edge of the line)
    @inlinable func indexToLineX(index_: Int, trailing: Bool, line: UnsafeMutablePointer<gint>! = nil, xPos: UnsafeMutablePointer<gint>! = nil) {
        pango_layout_index_to_line_x(layout_ptr, gint(index_), gboolean((trailing) ? 1 : 0), line, xPos)
    
    }

    /// Converts from an index within a `PangoLayout` to the onscreen position
    /// corresponding to the grapheme at that index, which is represented
    /// as rectangle.  Note that <literal>pos->x</literal> is always the leading
    /// edge of the grapheme and <literal>pos->x + pos->width</literal> the trailing
    /// edge of the grapheme. If the directionality of the grapheme is right-to-left,
    /// then <literal>pos->width</literal> will be negative.
    @inlinable func indexToPos<RectangleT: RectangleProtocol>(index_: Int, pos: RectangleT) {
        pango_layout_index_to_pos(layout_ptr, gint(index_), pos._ptr)
    
    }

    /// Computes a new cursor position from an old position and
    /// a count of positions to move visually. If `direction` is positive,
    /// then the new strong cursor position will be one position
    /// to the right of the old cursor position. If `direction` is negative,
    /// then the new strong cursor position will be one position
    /// to the left of the old cursor position.
    /// 
    /// In the presence of bidirectional text, the correspondence
    /// between logical and visual order will depend on the direction
    /// of the current run, and there may be jumps when the cursor
    /// is moved off of the end of a run.
    /// 
    /// Motion here is in cursor positions, not in characters, so a
    /// single call to `pango_layout_move_cursor_visually()` may move the
    /// cursor over multiple characters when multiple characters combine
    /// to form a single grapheme.
    @inlinable func moveCursorVisually(strong: Bool, oldIndex: Int, oldTrailing: Int, direction: Int, newIndex: UnsafeMutablePointer<gint>!, newTrailing: UnsafeMutablePointer<gint>!) {
        pango_layout_move_cursor_visually(layout_ptr, gboolean((strong) ? 1 : 0), gint(oldIndex), gint(oldTrailing), gint(direction), newIndex, newTrailing)
    
    }

    /// Sets the alignment for the layout: how partial lines are
    /// positioned within the horizontal space available.
    @inlinable func set(alignment: PangoAlignment) {
        pango_layout_set_alignment(layout_ptr, alignment)
    
    }

    /// Sets the text attributes for a layout object.
    /// References `attrs`, so the caller can unref its reference.
    @inlinable func setAttributes(attrs: AttrListRef? = nil) {
        pango_layout_set_attributes(layout_ptr, attrs?.attr_list_ptr)
    
    }
    /// Sets the text attributes for a layout object.
    /// References `attrs`, so the caller can unref its reference.
    @inlinable func setAttributes<AttrListT: AttrListProtocol>(attrs: AttrListT?) {
        pango_layout_set_attributes(layout_ptr, attrs?.attr_list_ptr)
    
    }

    /// Sets whether to calculate the bidirectional base direction
    /// for the layout according to the contents of the layout;
    /// when this flag is on (the default), then paragraphs in
    ///    `layout` that begin with strong right-to-left characters
    /// (Arabic and Hebrew principally), will have right-to-left
    /// layout, paragraphs with letters from other scripts will
    /// have left-to-right layout. Paragraphs with only neutral
    /// characters get their direction from the surrounding paragraphs.
    /// 
    /// When `false`, the choice between left-to-right and
    /// right-to-left layout is done according to the base direction
    /// of the layout's `PangoContext`. (See `pango_context_set_base_dir()`).
    /// 
    /// When the auto-computed direction of a paragraph differs from the
    /// base direction of the context, the interpretation of
    /// `PANGO_ALIGN_LEFT` and `PANGO_ALIGN_RIGHT` are swapped.
    @inlinable func set(autoDir: Bool) {
        pango_layout_set_auto_dir(layout_ptr, gboolean((autoDir) ? 1 : 0))
    
    }

    /// Sets the type of ellipsization being performed for `layout`.
    /// Depending on the ellipsization mode `ellipsize` text is
    /// removed from the start, middle, or end of text so they
    /// fit within the width and height of layout set with
    /// `pango_layout_set_width()` and `pango_layout_set_height()`.
    /// 
    /// If the layout contains characters such as newlines that
    /// force it to be layed out in multiple paragraphs, then whether
    /// each paragraph is ellipsized separately or the entire layout
    /// is ellipsized as a whole depends on the set height of the layout.
    /// See `pango_layout_set_height()` for details.
    @inlinable func set(ellipsize: PangoEllipsizeMode) {
        pango_layout_set_ellipsize(layout_ptr, ellipsize)
    
    }

    /// Sets the default font description for the layout. If no font
    /// description is set on the layout, the font description from
    /// the layout's context is used.
    @inlinable func setFontDescription(desc: FontDescriptionRef? = nil) {
        pango_layout_set_font_description(layout_ptr, desc?.font_description_ptr)
    
    }
    /// Sets the default font description for the layout. If no font
    /// description is set on the layout, the font description from
    /// the layout's context is used.
    @inlinable func setFontDescription<FontDescriptionT: FontDescriptionProtocol>(desc: FontDescriptionT?) {
        pango_layout_set_font_description(layout_ptr, desc?.font_description_ptr)
    
    }

    /// Sets the height to which the `PangoLayout` should be ellipsized at.  There
    /// are two different behaviors, based on whether `height` is positive or
    /// negative.
    /// 
    /// If `height` is positive, it will be the maximum height of the layout.  Only
    /// lines would be shown that would fit, and if there is any text omitted,
    /// an ellipsis added.  At least one line is included in each paragraph regardless
    /// of how small the height value is.  A value of zero will render exactly one
    /// line for the entire layout.
    /// 
    /// If `height` is negative, it will be the (negative of) maximum number of lines per
    /// paragraph.  That is, the total number of lines shown may well be more than
    /// this value if the layout contains multiple paragraphs of text.
    /// The default value of -1 means that first line of each paragraph is ellipsized.
    /// This behvaior may be changed in the future to act per layout instead of per
    /// paragraph.  File a bug against pango at <ulink
    /// url="http://bugzilla.gnome.org/">http://bugzilla.gnome.org/</ulink> if your
    /// code relies on this behavior.
    /// 
    /// Height setting only has effect if a positive width is set on
    /// `layout` and ellipsization mode of `layout` is not `PANGO_ELLIPSIZE_NONE`.
    /// The behavior is undefined if a height other than -1 is set and
    /// ellipsization mode is set to `PANGO_ELLIPSIZE_NONE`, and may change in the
    /// future.
    @inlinable func set(height: Int) {
        pango_layout_set_height(layout_ptr, gint(height))
    
    }

    /// Sets the width in Pango units to indent each paragraph. A negative value
    /// of `indent` will produce a hanging indentation. That is, the first line will
    /// have the full width, and subsequent lines will be indented by the
    /// absolute value of `indent`.
    /// 
    /// The indent setting is ignored if layout alignment is set to
    /// `PANGO_ALIGN_CENTER`.
    @inlinable func set(indent: Int) {
        pango_layout_set_indent(layout_ptr, gint(indent))
    
    }

    /// Sets whether each complete line should be stretched to
    /// fill the entire width of the layout. This stretching is typically
    /// done by adding whitespace, but for some scripts (such as Arabic),
    /// the justification may be done in more complex ways, like extending
    /// the characters.
    /// 
    /// Note that this setting is not implemented and so is ignored in Pango
    /// older than 1.18.
    @inlinable func set(justify: Bool) {
        pango_layout_set_justify(layout_ptr, gboolean((justify) ? 1 : 0))
    
    }

    /// Sets a factor for line spacing.
    /// Typical values are: 0, 1, 1.5, 2.
    /// The default values is 0.
    /// 
    /// If `factor` is non-zero, lines are placed
    /// so that
    /// 
    /// baseline2 = baseline1 + factor * height2
    /// 
    /// where height2 is the line height of the
    /// second line (as determined by the `font(s)`).
    /// In this case, the spacing set with
    /// `pango_layout_set_spacing()` is ignored.
    /// 
    /// If `factor` is zero, spacing is applied as
    /// before.
    @inlinable func setLineSpacing(factor: CFloat) {
        pango_layout_set_line_spacing(layout_ptr, factor)
    
    }

    /// Same as `pango_layout_set_markup_with_accel()`, but
    /// the markup text isn't scanned for accelerators.
    @inlinable func set(markup: UnsafePointer<CChar>!, length: Int) {
        pango_layout_set_markup(layout_ptr, markup, gint(length))
    
    }

    /// Sets the layout text and attribute list from marked-up text (see
    /// <link linkend="PangoMarkupFormat">markup format</link>). Replaces
    /// the current text and attribute list.
    /// 
    /// If `accel_marker` is nonzero, the given character will mark the
    /// character following it as an accelerator. For example, `accel_marker`
    /// might be an ampersand or underscore. All characters marked
    /// as an accelerator will receive a `PANGO_UNDERLINE_LOW` attribute,
    /// and the first character so marked will be returned in `accel_char`.
    /// Two `accel_marker` characters following each other produce a single
    /// literal `accel_marker` character.
    @inlinable func setMarkupWithAccel(markup: UnsafePointer<CChar>!, length: Int, accelMarker: gunichar, accelChar: UnsafeMutablePointer<gunichar>! = nil) {
        pango_layout_set_markup_with_accel(layout_ptr, markup, gint(length), accelMarker, accelChar)
    
    }

    /// If `setting` is `true`, do not treat newlines and similar characters
    /// as paragraph separators; instead, keep all text in a single paragraph,
    /// and display a glyph for paragraph separator characters. Used when
    /// you want to allow editing of newlines on a single text line.
    @inlinable func setSingleParagraphMode(setting: Bool) {
        pango_layout_set_single_paragraph_mode(layout_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Sets the amount of spacing in Pango unit between
    /// the lines of the layout. When placing lines with
    /// spacing, Pango arranges things so that
    /// 
    /// line2.top = line1.bottom + spacing
    /// 
    /// Note: Since 1.44, Pango defaults to using the
    /// line height (as determined by the font) for placing
    /// lines. The `spacing` set with this function is only
    /// taken into account when the line-height factor is
    /// set to zero with `pango_layout_set_line_spacing()`.
    @inlinable func set(spacing: Int) {
        pango_layout_set_spacing(layout_ptr, gint(spacing))
    
    }

    /// Sets the tabs to use for `layout`, overriding the default tabs
    /// (by default, tabs are every 8 spaces). If `tabs` is `nil`, the default
    /// tabs are reinstated. `tabs` is copied into the layout; you must
    /// free your copy of `tabs` yourself.
    @inlinable func set(tabs: TabArrayRef? = nil) {
        pango_layout_set_tabs(layout_ptr, tabs?.tab_array_ptr)
    
    }
    /// Sets the tabs to use for `layout`, overriding the default tabs
    /// (by default, tabs are every 8 spaces). If `tabs` is `nil`, the default
    /// tabs are reinstated. `tabs` is copied into the layout; you must
    /// free your copy of `tabs` yourself.
    @inlinable func set<TabArrayT: TabArrayProtocol>(tabs: TabArrayT?) {
        pango_layout_set_tabs(layout_ptr, tabs?.tab_array_ptr)
    
    }

    /// Sets the text of the layout.
    /// 
    /// This function validates `text` and renders invalid UTF-8
    /// with a placeholder glyph.
    /// 
    /// Note that if you have used `pango_layout_set_markup()` or
    /// `pango_layout_set_markup_with_accel()` on `layout` before, you may
    /// want to call `pango_layout_set_attributes()` to clear the attributes
    /// set on the layout from the markup as this function does not clear
    /// attributes.
    @inlinable func set(text: UnsafePointer<CChar>!, length: Int) {
        pango_layout_set_text(layout_ptr, text, gint(length))
    
    }

    /// Sets the width to which the lines of the `PangoLayout` should wrap or
    /// ellipsized.  The default value is -1: no width set.
    @inlinable func set(width: Int) {
        pango_layout_set_width(layout_ptr, gint(width))
    
    }

    /// Sets the wrap mode; the wrap mode only has effect if a width
    /// is set on the layout with `pango_layout_set_width()`.
    /// To turn off wrapping, set the width to -1.
    @inlinable func set(wrap: PangoWrapMode) {
        pango_layout_set_wrap(layout_ptr, wrap)
    
    }

    /// Converts from X and Y position within a layout to the byte
    /// index to the character at that logical position. If the
    /// Y position is not inside the layout, the closest position is chosen
    /// (the position will be clamped inside the layout). If the
    /// X position is not within the layout, then the start or the
    /// end of the line is chosen as described for `pango_layout_line_x_to_index()`.
    /// If either the X or Y positions were not inside the layout, then the
    /// function returns `false`; on an exact hit, it returns `true`.
    @inlinable func xyToIndex(x: Int, y: Int, index_: UnsafeMutablePointer<gint>!, trailing: UnsafeMutablePointer<gint>!) -> Bool {
        let rv = ((pango_layout_xy_to_index(layout_ptr, gint(x), gint(y), index_, trailing)) != 0)
        return rv
    }
    /// Gets the alignment for the layout: how partial lines are
    /// positioned within the horizontal space available.
    @inlinable var alignment: PangoAlignment {
        /// Gets the alignment for the layout: how partial lines are
        /// positioned within the horizontal space available.
        get {
            let rv = pango_layout_get_alignment(layout_ptr)
            return rv
        }
        /// Sets the alignment for the layout: how partial lines are
        /// positioned within the horizontal space available.
        nonmutating set {
            pango_layout_set_alignment(layout_ptr, newValue)
        }
    }

    /// Gets the attribute list for the layout, if any.
    @inlinable var attributes: AttrListRef! {
        /// Gets the attribute list for the layout, if any.
        get {
            let rv = AttrListRef(gconstpointer: gconstpointer(pango_layout_get_attributes(layout_ptr)))
            return rv
        }
        /// Sets the text attributes for a layout object.
        /// References `attrs`, so the caller can unref its reference.
        nonmutating set {
            pango_layout_set_attributes(layout_ptr, UnsafeMutablePointer<PangoAttrList>(newValue?.attr_list_ptr))
        }
    }

    /// Gets whether to calculate the bidirectional base direction
    /// for the layout according to the contents of the layout.
    /// See `pango_layout_set_auto_dir()`.
    @inlinable var autoDir: Bool {
        /// Gets whether to calculate the bidirectional base direction
        /// for the layout according to the contents of the layout.
        /// See `pango_layout_set_auto_dir()`.
        get {
            let rv = ((pango_layout_get_auto_dir(layout_ptr)) != 0)
            return rv
        }
        /// Sets whether to calculate the bidirectional base direction
        /// for the layout according to the contents of the layout;
        /// when this flag is on (the default), then paragraphs in
        ///    `layout` that begin with strong right-to-left characters
        /// (Arabic and Hebrew principally), will have right-to-left
        /// layout, paragraphs with letters from other scripts will
        /// have left-to-right layout. Paragraphs with only neutral
        /// characters get their direction from the surrounding paragraphs.
        /// 
        /// When `false`, the choice between left-to-right and
        /// right-to-left layout is done according to the base direction
        /// of the layout's `PangoContext`. (See `pango_context_set_base_dir()`).
        /// 
        /// When the auto-computed direction of a paragraph differs from the
        /// base direction of the context, the interpretation of
        /// `PANGO_ALIGN_LEFT` and `PANGO_ALIGN_RIGHT` are swapped.
        nonmutating set {
            pango_layout_set_auto_dir(layout_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the Y position of baseline of the first line in `layout`.
    @inlinable var baseline: Int {
        /// Gets the Y position of baseline of the first line in `layout`.
        get {
            let rv = Int(pango_layout_get_baseline(layout_ptr))
            return rv
        }
    }

    /// Returns the number of Unicode characters in the
    /// the text of `layout`.
    @inlinable var characterCount: Int {
        /// Returns the number of Unicode characters in the
        /// the text of `layout`.
        get {
            let rv = Int(pango_layout_get_character_count(layout_ptr))
            return rv
        }
    }

    /// Retrieves the `PangoContext` used for this layout.
    @inlinable var context: ContextRef! {
        /// Retrieves the `PangoContext` used for this layout.
        get {
            let rv = ContextRef(gconstpointer: gconstpointer(pango_layout_get_context(layout_ptr)))
            return rv
        }
    }

    /// Gets the type of ellipsization being performed for `layout`.
    /// See `pango_layout_set_ellipsize()`
    @inlinable var ellipsize: PangoEllipsizeMode {
        /// Gets the type of ellipsization being performed for `layout`.
        /// See `pango_layout_set_ellipsize()`
        get {
            let rv = pango_layout_get_ellipsize(layout_ptr)
            return rv
        }
        /// Sets the type of ellipsization being performed for `layout`.
        /// Depending on the ellipsization mode `ellipsize` text is
        /// removed from the start, middle, or end of text so they
        /// fit within the width and height of layout set with
        /// `pango_layout_set_width()` and `pango_layout_set_height()`.
        /// 
        /// If the layout contains characters such as newlines that
        /// force it to be layed out in multiple paragraphs, then whether
        /// each paragraph is ellipsized separately or the entire layout
        /// is ellipsized as a whole depends on the set height of the layout.
        /// See `pango_layout_set_height()` for details.
        nonmutating set {
            pango_layout_set_ellipsize(layout_ptr, newValue)
        }
    }

    /// Gets the font description for the layout, if any.
    @inlinable var fontDescription: FontDescriptionRef! {
        /// Gets the font description for the layout, if any.
        get {
            let rv = FontDescriptionRef(gconstpointer: gconstpointer(pango_layout_get_font_description(layout_ptr)))
            return rv
        }
        /// Sets the default font description for the layout. If no font
        /// description is set on the layout, the font description from
        /// the layout's context is used.
        nonmutating set {
            pango_layout_set_font_description(layout_ptr, UnsafePointer<PangoFontDescription>(newValue?.font_description_ptr))
        }
    }

    /// Gets the height of layout used for ellipsization.  See
    /// `pango_layout_set_height()` for details.
    @inlinable var height: Int {
        /// Gets the height of layout used for ellipsization.  See
        /// `pango_layout_set_height()` for details.
        get {
            let rv = Int(pango_layout_get_height(layout_ptr))
            return rv
        }
        /// Sets the height to which the `PangoLayout` should be ellipsized at.  There
        /// are two different behaviors, based on whether `height` is positive or
        /// negative.
        /// 
        /// If `height` is positive, it will be the maximum height of the layout.  Only
        /// lines would be shown that would fit, and if there is any text omitted,
        /// an ellipsis added.  At least one line is included in each paragraph regardless
        /// of how small the height value is.  A value of zero will render exactly one
        /// line for the entire layout.
        /// 
        /// If `height` is negative, it will be the (negative of) maximum number of lines per
        /// paragraph.  That is, the total number of lines shown may well be more than
        /// this value if the layout contains multiple paragraphs of text.
        /// The default value of -1 means that first line of each paragraph is ellipsized.
        /// This behvaior may be changed in the future to act per layout instead of per
        /// paragraph.  File a bug against pango at <ulink
        /// url="http://bugzilla.gnome.org/">http://bugzilla.gnome.org/</ulink> if your
        /// code relies on this behavior.
        /// 
        /// Height setting only has effect if a positive width is set on
        /// `layout` and ellipsization mode of `layout` is not `PANGO_ELLIPSIZE_NONE`.
        /// The behavior is undefined if a height other than -1 is set and
        /// ellipsization mode is set to `PANGO_ELLIPSIZE_NONE`, and may change in the
        /// future.
        nonmutating set {
            pango_layout_set_height(layout_ptr, gint(newValue))
        }
    }

    /// Gets the paragraph indent width in Pango units. A negative value
    /// indicates a hanging indentation.
    @inlinable var indent: Int {
        /// Gets the paragraph indent width in Pango units. A negative value
        /// indicates a hanging indentation.
        get {
            let rv = Int(pango_layout_get_indent(layout_ptr))
            return rv
        }
        /// Sets the width in Pango units to indent each paragraph. A negative value
        /// of `indent` will produce a hanging indentation. That is, the first line will
        /// have the full width, and subsequent lines will be indented by the
        /// absolute value of `indent`.
        /// 
        /// The indent setting is ignored if layout alignment is set to
        /// `PANGO_ALIGN_CENTER`.
        nonmutating set {
            pango_layout_set_indent(layout_ptr, gint(newValue))
        }
    }

    /// Queries whether the layout had to ellipsize any paragraphs.
    /// 
    /// This returns `true` if the ellipsization mode for `layout`
    /// is not `PANGO_ELLIPSIZE_NONE`, a positive width is set on `layout`,
    /// and there are paragraphs exceeding that width that have to be
    /// ellipsized.
    @inlinable var isEllipsized: Bool {
        /// Queries whether the layout had to ellipsize any paragraphs.
        /// 
        /// This returns `true` if the ellipsization mode for `layout`
        /// is not `PANGO_ELLIPSIZE_NONE`, a positive width is set on `layout`,
        /// and there are paragraphs exceeding that width that have to be
        /// ellipsized.
        get {
            let rv = ((pango_layout_is_ellipsized(layout_ptr)) != 0)
            return rv
        }
    }

    /// Queries whether the layout had to wrap any paragraphs.
    /// 
    /// This returns `true` if a positive width is set on `layout`,
    /// ellipsization mode of `layout` is set to `PANGO_ELLIPSIZE_NONE`,
    /// and there are paragraphs exceeding the layout width that have
    /// to be wrapped.
    @inlinable var isWrapped: Bool {
        /// Queries whether the layout had to wrap any paragraphs.
        /// 
        /// This returns `true` if a positive width is set on `layout`,
        /// ellipsization mode of `layout` is set to `PANGO_ELLIPSIZE_NONE`,
        /// and there are paragraphs exceeding the layout width that have
        /// to be wrapped.
        get {
            let rv = ((pango_layout_is_wrapped(layout_ptr)) != 0)
            return rv
        }
    }

    /// Returns an iterator to iterate over the visual extents of the layout.
    @inlinable var iter: LayoutIterRef! {
        /// Returns an iterator to iterate over the visual extents of the layout.
        get {
            let rv = LayoutIterRef(gconstpointer: gconstpointer(pango_layout_get_iter(layout_ptr)))
            return rv
        }
    }

    /// Gets whether each complete line should be stretched to fill the entire
    /// width of the layout.
    @inlinable var justify: Bool {
        /// Gets whether each complete line should be stretched to fill the entire
        /// width of the layout.
        get {
            let rv = ((pango_layout_get_justify(layout_ptr)) != 0)
            return rv
        }
        /// Sets whether each complete line should be stretched to
        /// fill the entire width of the layout. This stretching is typically
        /// done by adding whitespace, but for some scripts (such as Arabic),
        /// the justification may be done in more complex ways, like extending
        /// the characters.
        /// 
        /// Note that this setting is not implemented and so is ignored in Pango
        /// older than 1.18.
        nonmutating set {
            pango_layout_set_justify(layout_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Retrieves the count of lines for the `layout`.
    @inlinable var lineCount: Int {
        /// Retrieves the count of lines for the `layout`.
        get {
            let rv = Int(pango_layout_get_line_count(layout_ptr))
            return rv
        }
    }

    /// Gets the value that has been
    /// set with `pango_layout_set_line_spacing()`.
    @inlinable var lineSpacing: CFloat {
        /// Gets the value that has been
        /// set with `pango_layout_set_line_spacing()`.
        get {
            let rv = pango_layout_get_line_spacing(layout_ptr)
            return rv
        }
        /// Sets a factor for line spacing.
        /// Typical values are: 0, 1, 1.5, 2.
        /// The default values is 0.
        /// 
        /// If `factor` is non-zero, lines are placed
        /// so that
        /// 
        /// baseline2 = baseline1 + factor * height2
        /// 
        /// where height2 is the line height of the
        /// second line (as determined by the `font(s)`).
        /// In this case, the spacing set with
        /// `pango_layout_set_spacing()` is ignored.
        /// 
        /// If `factor` is zero, spacing is applied as
        /// before.
        nonmutating set {
            pango_layout_set_line_spacing(layout_ptr, newValue)
        }
    }

    /// Returns the lines of the `layout` as a list.
    /// 
    /// Use the faster `pango_layout_get_lines_readonly()` if you do not plan
    /// to modify the contents of the lines (glyphs, glyph widths, etc.).
    @inlinable var lines: GLib.SListRef! {
        /// Returns the lines of the `layout` as a list.
        /// 
        /// Use the faster `pango_layout_get_lines_readonly()` if you do not plan
        /// to modify the contents of the lines (glyphs, glyph widths, etc.).
        get {
            let rv = GLib.SListRef(pango_layout_get_lines(layout_ptr))
            return rv
        }
    }

    /// Returns the lines of the `layout` as a list.
    /// 
    /// This is a faster alternative to `pango_layout_get_lines()`,
    /// but the user is not expected
    /// to modify the contents of the lines (glyphs, glyph widths, etc.).
    @inlinable var linesReadonly: GLib.SListRef! {
        /// Returns the lines of the `layout` as a list.
        /// 
        /// This is a faster alternative to `pango_layout_get_lines()`,
        /// but the user is not expected
        /// to modify the contents of the lines (glyphs, glyph widths, etc.).
        get {
            let rv = GLib.SListRef(pango_layout_get_lines_readonly(layout_ptr))
            return rv
        }
    }

    /// Returns the current serial number of `layout`.  The serial number is
    /// initialized to an small number  larger than zero when a new layout
    /// is created and is increased whenever the layout is changed using any
    /// of the setter functions, or the `PangoContext` it uses has changed.
    /// The serial may wrap, but will never have the value 0. Since it
    /// can wrap, never compare it with "less than", always use "not equals".
    /// 
    /// This can be used to automatically detect changes to a `PangoLayout`, and
    /// is useful for example to decide whether a layout needs redrawing.
    /// To force the serial to be increased, use `pango_layout_context_changed()`.
    @inlinable var serial: Int {
        /// Returns the current serial number of `layout`.  The serial number is
        /// initialized to an small number  larger than zero when a new layout
        /// is created and is increased whenever the layout is changed using any
        /// of the setter functions, or the `PangoContext` it uses has changed.
        /// The serial may wrap, but will never have the value 0. Since it
        /// can wrap, never compare it with "less than", always use "not equals".
        /// 
        /// This can be used to automatically detect changes to a `PangoLayout`, and
        /// is useful for example to decide whether a layout needs redrawing.
        /// To force the serial to be increased, use `pango_layout_context_changed()`.
        get {
            let rv = Int(pango_layout_get_serial(layout_ptr))
            return rv
        }
    }

    /// Obtains the value set by `pango_layout_set_single_paragraph_mode()`.
    @inlinable var singleParagraphMode: Bool {
        /// Obtains the value set by `pango_layout_set_single_paragraph_mode()`.
        get {
            let rv = ((pango_layout_get_single_paragraph_mode(layout_ptr)) != 0)
            return rv
        }
        /// If `setting` is `true`, do not treat newlines and similar characters
        /// as paragraph separators; instead, keep all text in a single paragraph,
        /// and display a glyph for paragraph separator characters. Used when
        /// you want to allow editing of newlines on a single text line.
        nonmutating set {
            pango_layout_set_single_paragraph_mode(layout_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the amount of spacing between the lines of the layout.
    @inlinable var spacing: Int {
        /// Gets the amount of spacing between the lines of the layout.
        get {
            let rv = Int(pango_layout_get_spacing(layout_ptr))
            return rv
        }
        /// Sets the amount of spacing in Pango unit between
        /// the lines of the layout. When placing lines with
        /// spacing, Pango arranges things so that
        /// 
        /// line2.top = line1.bottom + spacing
        /// 
        /// Note: Since 1.44, Pango defaults to using the
        /// line height (as determined by the font) for placing
        /// lines. The `spacing` set with this function is only
        /// taken into account when the line-height factor is
        /// set to zero with `pango_layout_set_line_spacing()`.
        nonmutating set {
            pango_layout_set_spacing(layout_ptr, gint(newValue))
        }
    }

    /// Gets the current `PangoTabArray` used by this layout. If no
    /// `PangoTabArray` has been set, then the default tabs are in use
    /// and `nil` is returned. Default tabs are every 8 spaces.
    /// The return value should be freed with `pango_tab_array_free()`.
    @inlinable var tabs: TabArrayRef! {
        /// Gets the current `PangoTabArray` used by this layout. If no
        /// `PangoTabArray` has been set, then the default tabs are in use
        /// and `nil` is returned. Default tabs are every 8 spaces.
        /// The return value should be freed with `pango_tab_array_free()`.
        get {
            let rv = TabArrayRef(gconstpointer: gconstpointer(pango_layout_get_tabs(layout_ptr)))
            return rv
        }
        /// Sets the tabs to use for `layout`, overriding the default tabs
        /// (by default, tabs are every 8 spaces). If `tabs` is `nil`, the default
        /// tabs are reinstated. `tabs` is copied into the layout; you must
        /// free your copy of `tabs` yourself.
        nonmutating set {
            pango_layout_set_tabs(layout_ptr, UnsafeMutablePointer<PangoTabArray>(newValue?.tab_array_ptr))
        }
    }

    /// Gets the text in the layout. The returned text should not
    /// be freed or modified.
    @inlinable var text: String! {
        /// Gets the text in the layout. The returned text should not
        /// be freed or modified.
        get {
            let rv = pango_layout_get_text(layout_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Counts the number unknown glyphs in `layout`.  That is, zero if
    /// glyphs for all characters in the layout text were found, or more
    /// than zero otherwise.
    /// 
    /// This function can be used to determine if there are any fonts
    /// available to render all characters in a certain string, or when
    /// used in combination with `PANGO_ATTR_FALLBACK`, to check if a
    /// certain font supports all the characters in the string.
    @inlinable var unknownGlyphsCount: Int {
        /// Counts the number unknown glyphs in `layout`.  That is, zero if
        /// glyphs for all characters in the layout text were found, or more
        /// than zero otherwise.
        /// 
        /// This function can be used to determine if there are any fonts
        /// available to render all characters in a certain string, or when
        /// used in combination with `PANGO_ATTR_FALLBACK`, to check if a
        /// certain font supports all the characters in the string.
        get {
            let rv = Int(pango_layout_get_unknown_glyphs_count(layout_ptr))
            return rv
        }
    }

    /// Gets the width to which the lines of the `PangoLayout` should wrap.
    @inlinable var width: Int {
        /// Gets the width to which the lines of the `PangoLayout` should wrap.
        get {
            let rv = Int(pango_layout_get_width(layout_ptr))
            return rv
        }
        /// Sets the width to which the lines of the `PangoLayout` should wrap or
        /// ellipsized.  The default value is -1: no width set.
        nonmutating set {
            pango_layout_set_width(layout_ptr, gint(newValue))
        }
    }

    /// Gets the wrap mode for the layout.
    /// 
    /// Use `pango_layout_is_wrapped()` to query whether any paragraphs
    /// were actually wrapped.
    @inlinable var wrap: PangoWrapMode {
        /// Gets the wrap mode for the layout.
        /// 
        /// Use `pango_layout_is_wrapped()` to query whether any paragraphs
        /// were actually wrapped.
        get {
            let rv = pango_layout_get_wrap(layout_ptr)
            return rv
        }
        /// Sets the wrap mode; the wrap mode only has effect if a width
        /// is set on the layout with `pango_layout_set_width()`.
        /// To turn off wrapping, set the width to -1.
        nonmutating set {
            pango_layout_set_wrap(layout_ptr, newValue)
        }
    }


}



