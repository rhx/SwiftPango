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
public protocol FontFaceProtocol: ObjectProtocol {
    /// Untyped pointer to the underlying `PangoFontFace` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoFontFace` instance.
    var font_face_ptr: UnsafeMutablePointer<PangoFontFace> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension FontFaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoFontFace>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FontFaceProtocol`
    init<T: FontFaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FontFace` type acts as a reference-counted owner of an underlying `PangoFontFace` instance.
/// It provides the methods that can operate on this data type through `FontFaceProtocol` conformance.
/// Use `FontFace` as a strong reference or owner of a `PangoFontFace` instance.
///
/// The `PangoFontFace` structure is used to represent a group of fonts with
/// the same family, slant, weight, width, but varying sizes.
open class FontFace: Object, FontFaceProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FontFace` instance.
    public init(_ op: UnsafeMutablePointer<PangoFontFace>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `FontFaceProtocol`
    /// Will retain `PangoFontFace`.
    public convenience init<T: FontFaceProtocol>(_ other: T) {
        self.init(cast(other.font_face_ptr))
        g_object_ref(cast(font_face_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoFontFace.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoFontFace.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoFontFace.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoFontFace>(opaquePointer))
    }



}

// MARK: - no FontFace properties

public enum FontFaceSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"

}

public extension FontFaceProtocol {
    /// Connect a `FontFaceSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: FontFaceSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(font_face_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension FontFaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontFace` instance.
    var font_face_ptr: UnsafeMutablePointer<PangoFontFace> { return ptr.assumingMemoryBound(to: PangoFontFace.self) }

    /// Returns the family, style, variant, weight and stretch of
    /// a `PangoFontFace`. The size field of the resulting font description
    /// will be unset.
    func describe() -> UnsafeMutablePointer<PangoFontDescription>! {
        let rv = pango_font_face_describe(cast(font_face_ptr))
        return cast(rv)
    }

    /// Gets a name representing the style of this face among the
    /// different faces in the `PangoFontFamily` for the face. This
    /// name is unique among all faces in the family and is suitable
    /// for displaying to users.
    func getFaceName() -> String! {
        let rv = pango_font_face_get_face_name(cast(font_face_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// List the available sizes for a font. This is only applicable to bitmap
    /// fonts. For scalable fonts, stores `nil` at the location pointed to by
    /// `sizes` and 0 at the location pointed to by `n_sizes`. The sizes returned
    /// are in Pango units and are sorted in ascending order.
    func list(sizes: UnsafeMutablePointer<UnsafeMutablePointer<CInt>>, nSizes n_sizes: UnsafeMutablePointer<CInt>) {
        pango_font_face_list_sizes(cast(font_face_ptr), cast(sizes), cast(n_sizes))
    
    }
    /// Gets a name representing the style of this face among the
    /// different faces in the `PangoFontFamily` for the face. This
    /// name is unique among all faces in the family and is suitable
    /// for displaying to users.
    var faceName: String! {
        /// Gets a name representing the style of this face among the
        /// different faces in the `PangoFontFamily` for the face. This
        /// name is unique among all faces in the family and is suitable
        /// for displaying to users.
        get {
            let rv = pango_font_face_get_face_name(cast(font_face_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Returns whether a `PangoFontFace` is synthesized by the underlying
    /// font rendering engine from another face, perhaps by shearing, emboldening,
    /// or lightening it.
    var isSynthesized: Bool {
        /// Returns whether a `PangoFontFace` is synthesized by the underlying
        /// font rendering engine from another face, perhaps by shearing, emboldening,
        /// or lightening it.
        get {
            let rv = pango_font_face_is_synthesized(cast(font_face_ptr))
            return Bool(rv != 0)
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
public protocol FontFamilyProtocol: ObjectProtocol {
    /// Untyped pointer to the underlying `PangoFontFamily` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoFontFamily` instance.
    var font_family_ptr: UnsafeMutablePointer<PangoFontFamily> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension FontFamilyRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoFontFamily>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FontFamilyProtocol`
    init<T: FontFamilyProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
open class FontFamily: Object, FontFamilyProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FontFamily` instance.
    public init(_ op: UnsafeMutablePointer<PangoFontFamily>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `FontFamilyProtocol`
    /// Will retain `PangoFontFamily`.
    public convenience init<T: FontFamilyProtocol>(_ other: T) {
        self.init(cast(other.font_family_ptr))
        g_object_ref(cast(font_family_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoFontFamily.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoFontFamily.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoFontFamily.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoFontFamily>(opaquePointer))
    }



}

// MARK: - no FontFamily properties

public enum FontFamilySignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"

}

public extension FontFamilyProtocol {
    /// Connect a `FontFamilySignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: FontFamilySignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(font_family_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension FontFamilyProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontFamily` instance.
    var font_family_ptr: UnsafeMutablePointer<PangoFontFamily> { return ptr.assumingMemoryBound(to: PangoFontFamily.self) }

    /// Gets the name of the family. The name is unique among all
    /// fonts for the font backend and can be used in a `PangoFontDescription`
    /// to specify that a face from this family is desired.
    func getName() -> String! {
        let rv = pango_font_family_get_name(cast(font_family_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Lists the different font faces that make up `family`. The faces
    /// in a family share a common design, but differ in slant, weight,
    /// width and other aspects.
    func list(faces: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<PangoFontFace>>>, nFaces n_faces: UnsafeMutablePointer<CInt>) {
        pango_font_family_list_faces(cast(font_family_ptr), cast(faces), cast(n_faces))
    
    }
    /// A monospace font is a font designed for text display where the the
    /// characters form a regular grid. For Western languages this would
    /// mean that the advance width of all characters are the same, but
    /// this categorization also includes Asian fonts which include
    /// double-width characters: characters that occupy two grid cells.
    /// g_unichar_iswide() returns a result that indicates whether a
    /// character is typically double-width in a monospace font.
    /// 
    /// The best way to find out the grid-cell size is to call
    /// pango_font_metrics_get_approximate_digit_width(), since the results
    /// of pango_font_metrics_get_approximate_char_width() may be affected
    /// by double-width characters.
    var isMonospace: Bool {
        /// A monospace font is a font designed for text display where the the
        /// characters form a regular grid. For Western languages this would
        /// mean that the advance width of all characters are the same, but
        /// this categorization also includes Asian fonts which include
        /// double-width characters: characters that occupy two grid cells.
        /// g_unichar_iswide() returns a result that indicates whether a
        /// character is typically double-width in a monospace font.
        /// 
        /// The best way to find out the grid-cell size is to call
        /// pango_font_metrics_get_approximate_digit_width(), since the results
        /// of pango_font_metrics_get_approximate_char_width() may be affected
        /// by double-width characters.
        get {
            let rv = pango_font_family_is_monospace(cast(font_family_ptr))
            return Bool(rv != 0)
        }
    }

    /// A variable font is a font which has axes that can be modified to
    /// produce different faces.
    var isVariable: Bool {
        /// A variable font is a font which has axes that can be modified to
        /// produce different faces.
        get {
            let rv = pango_font_family_is_variable(cast(font_family_ptr))
            return Bool(rv != 0)
        }
    }

    /// Gets the name of the family. The name is unique among all
    /// fonts for the font backend and can be used in a `PangoFontDescription`
    /// to specify that a face from this family is desired.
    var name: String! {
        /// Gets the name of the family. The name is unique among all
        /// fonts for the font backend and can be used in a `PangoFontDescription`
        /// to specify that a face from this family is desired.
        get {
            let rv = pango_font_family_get_name(cast(font_family_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
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
/// pango_font_map_init() on the structure.
/// 
/// The `PangoFontMap` structure contains one member which the implementation
/// fills in.
public protocol FontMapProtocol: ObjectProtocol {
    /// Untyped pointer to the underlying `PangoFontMap` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoFontMap` instance.
    var font_map_ptr: UnsafeMutablePointer<PangoFontMap> { get }
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
/// pango_font_map_init() on the structure.
/// 
/// The `PangoFontMap` structure contains one member which the implementation
/// fills in.
public struct FontMapRef: FontMapProtocol {
    /// Untyped pointer to the underlying `PangoFontMap` instance.
    /// For type-safe access, use the generated, typed pointer `font_map_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FontMapRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoFontMap>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FontMapProtocol`
    init<T: FontMapProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
/// pango_font_map_init() on the structure.
/// 
/// The `PangoFontMap` structure contains one member which the implementation
/// fills in.
open class FontMap: Object, FontMapProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FontMap` instance.
    public init(_ op: UnsafeMutablePointer<PangoFontMap>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `FontMapProtocol`
    /// Will retain `PangoFontMap`.
    public convenience init<T: FontMapProtocol>(_ other: T) {
        self.init(cast(other.font_map_ptr))
        g_object_ref(cast(font_map_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoFontMap.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoFontMap.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoFontMap.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoFontMap>(opaquePointer))
    }



}

// MARK: - no FontMap properties

public enum FontMapSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"

}

public extension FontMapProtocol {
    /// Connect a `FontMapSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: FontMapSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(font_map_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension FontMapProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontMap` instance.
    var font_map_ptr: UnsafeMutablePointer<PangoFontMap> { return ptr.assumingMemoryBound(to: PangoFontMap.self) }

    /// Forces a change in the context, which will cause any `PangoContext`
    /// using this fontmap to change.
    /// 
    /// This function is only useful when implementing a new backend
    /// for Pango, something applications won't do. Backends should
    /// call this function if they have attached extra data to the context
    /// and such data is changed.
    func changed() {
        pango_font_map_changed(cast(font_map_ptr))
    
    }

    /// Creates a `PangoContext` connected to `fontmap`.  This is equivalent
    /// to pango_context_new() followed by pango_context_set_font_map().
    /// 
    /// If you are using Pango as part of a higher-level system,
    /// that system may have it's own way of create a `PangoContext`.
    /// For instance, the GTK+ toolkit has, among others,
    /// gdk_pango_context_get_for_screen(), and
    /// gtk_widget_get_pango_context().  Use those instead.
    func createContext() -> UnsafeMutablePointer<PangoContext>! {
        let rv = pango_font_map_create_context(cast(font_map_ptr))
        return cast(rv)
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
    func getSerial() -> CUnsignedInt {
        let rv = pango_font_map_get_serial(cast(font_map_ptr))
        return CUnsignedInt(rv)
    }

    /// List all families for a fontmap.
    func list(families: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<PangoFontFamily>>>, nFamilies n_families: UnsafeMutablePointer<CInt>) {
        pango_font_map_list_families(cast(font_map_ptr), cast(families), cast(n_families))
    
    }

    /// Load the font in the fontmap that is the closest match for `desc`.
    func loadFont(context: ContextProtocol, desc: FontDescriptionProtocol) -> UnsafeMutablePointer<PangoFont>! {
        let rv = pango_font_map_load_font(cast(font_map_ptr), cast(context.ptr), cast(desc.ptr))
        return cast(rv)
    }

    /// Load a set of fonts in the fontmap that can be used to render
    /// a font matching `desc`.
    func loadFontset(context: ContextProtocol, desc: FontDescriptionProtocol, language: LanguageProtocol) -> UnsafeMutablePointer<PangoFontset>! {
        let rv = pango_font_map_load_fontset(cast(font_map_ptr), cast(context.ptr), cast(desc.ptr), cast(language.ptr))
        return cast(rv)
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
    var serial: CUnsignedInt {
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
            let rv = pango_font_map_get_serial(cast(font_map_ptr))
            return CUnsignedInt(rv)
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
public protocol FontsetProtocol: ObjectProtocol {
    /// Untyped pointer to the underlying `PangoFontset` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoFontset` instance.
    var fontset_ptr: UnsafeMutablePointer<PangoFontset> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension FontsetRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoFontset>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FontsetProtocol`
    init<T: FontsetProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
open class Fontset: Object, FontsetProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Fontset` instance.
    public init(_ op: UnsafeMutablePointer<PangoFontset>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `FontsetProtocol`
    /// Will retain `PangoFontset`.
    public convenience init<T: FontsetProtocol>(_ other: T) {
        self.init(cast(other.fontset_ptr))
        g_object_ref(cast(fontset_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoFontset.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoFontset.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoFontset.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoFontset>(opaquePointer))
    }



}

// MARK: - no Fontset properties

public enum FontsetSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"

}

public extension FontsetProtocol {
    /// Connect a `FontsetSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: FontsetSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(fontset_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension FontsetProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontset` instance.
    var fontset_ptr: UnsafeMutablePointer<PangoFontset> { return ptr.assumingMemoryBound(to: PangoFontset.self) }

    /// Iterates through all the fonts in a fontset, calling `func` for
    /// each one. If `func` returns `true`, that stops the iteration.
    func foreach(func_: @escaping FontsetForeachFunc, data: UnsafeMutableRawPointer) {
        pango_fontset_foreach(cast(fontset_ptr), func_, cast(data))
    
    }

    /// Returns the font in the fontset that contains the best glyph for the
    /// Unicode character `wc`.
    func getFont(wc: CUnsignedInt) -> UnsafeMutablePointer<PangoFont>! {
        let rv = pango_fontset_get_font(cast(fontset_ptr), guint(wc))
        return cast(rv)
    }

    /// Get overall metric information for the fonts in the fontset.
    func getMetrics() -> UnsafeMutablePointer<PangoFontMetrics>! {
        let rv = pango_fontset_get_metrics(cast(fontset_ptr))
        return cast(rv)
    }
    /// Get overall metric information for the fonts in the fontset.
    var metrics: UnsafeMutablePointer<PangoFontMetrics>! {
        /// Get overall metric information for the fonts in the fontset.
        get {
            let rv = pango_fontset_get_metrics(cast(fontset_ptr))
            return cast(rv)
        }
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
public protocol LayoutProtocol: ObjectProtocol {
    /// Untyped pointer to the underlying `PangoLayout` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoLayout` instance.
    var layout_ptr: UnsafeMutablePointer<PangoLayout> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension LayoutRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoLayout>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `LayoutProtocol`
    init<T: LayoutProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Create a new `PangoLayout` object with attributes initialized to
    /// default values for a particular `PangoContext`.
    init( context: ContextProtocol) {
        let rv = pango_layout_new(cast(context.ptr))
        self.init(cast(rv))
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
open class Layout: Object, LayoutProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Layout` instance.
    public init(_ op: UnsafeMutablePointer<PangoLayout>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `LayoutProtocol`
    /// Will retain `PangoLayout`.
    public convenience init<T: LayoutProtocol>(_ other: T) {
        self.init(cast(other.layout_ptr))
        g_object_ref(cast(layout_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoLayout.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoLayout.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoLayout.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoLayout>(opaquePointer))
    }

    /// Create a new `PangoLayout` object with attributes initialized to
    /// default values for a particular `PangoContext`.
    public convenience init( context: ContextProtocol) {
        let rv = pango_layout_new(cast(context.ptr))
        self.init(cast(rv))
    }


}

// MARK: - no Layout properties

public enum LayoutSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"

}

public extension LayoutProtocol {
    /// Connect a `LayoutSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: LayoutSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(layout_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension LayoutProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoLayout` instance.
    var layout_ptr: UnsafeMutablePointer<PangoLayout> { return ptr.assumingMemoryBound(to: PangoLayout.self) }

    /// Forces recomputation of any state in the `PangoLayout` that
    /// might depend on the layout's context. This function should
    /// be called if you make changes to the context subsequent
    /// to creating the layout.
    func contextChanged() {
        pango_layout_context_changed(cast(layout_ptr))
    
    }

    /// Does a deep copy-by-value of the `src` layout. The attribute list,
    /// tab array, and text from the original layout are all copied by
    /// value.
    func copy() -> UnsafeMutablePointer<PangoLayout>! {
        let rv = pango_layout_copy(cast(layout_ptr))
        return cast(rv)
    }

    /// Gets the alignment for the layout: how partial lines are
    /// positioned within the horizontal space available.
    func getAlignment() -> PangoAlignment {
        let rv = pango_layout_get_alignment(cast(layout_ptr))
        return rv
    }

    /// Gets the attribute list for the layout, if any.
    func getAttributes() -> UnsafeMutablePointer<PangoAttrList>! {
        let rv = pango_layout_get_attributes(cast(layout_ptr))
        return cast(rv)
    }

    /// Gets whether to calculate the bidirectional base direction
    /// for the layout according to the contents of the layout.
    /// See pango_layout_set_auto_dir().
    func getAutoDir() -> Bool {
        let rv = pango_layout_get_auto_dir(cast(layout_ptr))
        return Bool(rv != 0)
    }

    /// Gets the Y position of baseline of the first line in `layout`.
    func getBaseline() -> CInt {
        let rv = pango_layout_get_baseline(cast(layout_ptr))
        return rv
    }

    /// Returns the number of Unicode characters in the
    /// the text of `layout`.
    func getCharacterCount() -> CInt {
        let rv = pango_layout_get_character_count(cast(layout_ptr))
        return CInt(rv)
    }

    /// Retrieves the `PangoContext` used for this layout.
    func getContext() -> UnsafeMutablePointer<PangoContext>! {
        let rv = pango_layout_get_context(cast(layout_ptr))
        return cast(rv)
    }

    /// Given an index within a layout, determines the positions that of the
    /// strong and weak cursors if the insertion point is at that
    /// index. The position of each cursor is stored as a zero-width
    /// rectangle. The strong cursor location is the location where
    /// characters of the directionality equal to the base direction of the
    /// layout are inserted.  The weak cursor location is the location
    /// where characters of the directionality opposite to the base
    /// direction of the layout are inserted.
    func getCursorPos(index_: CInt, strongPos strong_pos: RectangleProtocol, weakPos weak_pos: RectangleProtocol) {
        pango_layout_get_cursor_pos(cast(layout_ptr), index_, cast(strong_pos.ptr), cast(weak_pos.ptr))
    
    }

    /// Gets the type of ellipsization being performed for `layout`.
    /// See pango_layout_set_ellipsize()
    func getEllipsize() -> PangoEllipsizeMode {
        let rv = pango_layout_get_ellipsize(cast(layout_ptr))
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
    func getExtents(inkRect ink_rect: RectangleProtocol, logicalRect logical_rect: RectangleProtocol) {
        pango_layout_get_extents(cast(layout_ptr), cast(ink_rect.ptr), cast(logical_rect.ptr))
    
    }

    /// Gets the font description for the layout, if any.
    func getFontDescription() -> UnsafePointer<PangoFontDescription>! {
        let rv = pango_layout_get_font_description(cast(layout_ptr))
        return cast(rv)
    }

    /// Gets the height of layout used for ellipsization.  See
    /// pango_layout_set_height() for details.
    func getHeight() -> CInt {
        let rv = pango_layout_get_height(cast(layout_ptr))
        return rv
    }

    /// Gets the paragraph indent width in Pango units. A negative value
    /// indicates a hanging indentation.
    func getIndent() -> CInt {
        let rv = pango_layout_get_indent(cast(layout_ptr))
        return rv
    }

    /// Returns an iterator to iterate over the visual extents of the layout.
    func getIter() -> UnsafeMutablePointer<PangoLayoutIter>! {
        let rv = pango_layout_get_iter(cast(layout_ptr))
        return cast(rv)
    }

    /// Gets whether each complete line should be stretched to fill the entire
    /// width of the layout.
    func getJustify() -> Bool {
        let rv = pango_layout_get_justify(cast(layout_ptr))
        return Bool(rv != 0)
    }

    /// Retrieves a particular line from a `PangoLayout`.
    /// 
    /// Use the faster pango_layout_get_line_readonly() if you do not plan
    /// to modify the contents of the line (glyphs, glyph widths, etc.).
    func get(line: CInt) -> UnsafeMutablePointer<PangoLayoutLine>! {
        let rv = pango_layout_get_line(cast(layout_ptr), line)
        return cast(rv)
    }

    /// Retrieves the count of lines for the `layout`.
    func getLineCount() -> CInt {
        let rv = pango_layout_get_line_count(cast(layout_ptr))
        return rv
    }

    /// Retrieves a particular line from a `PangoLayout`.
    /// 
    /// This is a faster alternative to pango_layout_get_line(),
    /// but the user is not expected
    /// to modify the contents of the line (glyphs, glyph widths, etc.).
    func getLineReadonly(line: CInt) -> UnsafeMutablePointer<PangoLayoutLine>! {
        let rv = pango_layout_get_line_readonly(cast(layout_ptr), line)
        return cast(rv)
    }

    /// Gets the value that has been
    /// set with pango_layout_set_line_spacing().
    func getLineSpacing() -> CFloat {
        let rv = pango_layout_get_line_spacing(cast(layout_ptr))
        return rv
    }

    /// Returns the lines of the `layout` as a list.
    /// 
    /// Use the faster pango_layout_get_lines_readonly() if you do not plan
    /// to modify the contents of the lines (glyphs, glyph widths, etc.).
    func getLines() -> UnsafeMutablePointer<GSList>! {
        let rv = pango_layout_get_lines(cast(layout_ptr))
        return cast(rv)
    }

    /// Returns the lines of the `layout` as a list.
    /// 
    /// This is a faster alternative to pango_layout_get_lines(),
    /// but the user is not expected
    /// to modify the contents of the lines (glyphs, glyph widths, etc.).
    func getLinesReadonly() -> UnsafeMutablePointer<GSList>! {
        let rv = pango_layout_get_lines_readonly(cast(layout_ptr))
        return cast(rv)
    }

    /// Retrieves an array of logical attributes for each character in
    /// the `layout`.
    func getLog(attrs: UnsafeMutablePointer<UnsafeMutablePointer<PangoLogAttr>>, nAttrs n_attrs: UnsafeMutablePointer<CInt>) {
        pango_layout_get_log_attrs(cast(layout_ptr), cast(attrs), cast(n_attrs))
    
    }

    /// Retrieves an array of logical attributes for each character in
    /// the `layout`.
    /// 
    /// This is a faster alternative to pango_layout_get_log_attrs().
    /// The returned array is part of `layout` and must not be modified.
    /// Modifying the layout will invalidate the returned array.
    /// 
    /// The number of attributes returned in `n_attrs` will be one more
    /// than the total number of characters in the layout, since there
    /// need to be attributes corresponding to both the position before
    /// the first character and the position after the last character.
    func getLogAttrsReadonly(nAttrs n_attrs: UnsafeMutablePointer<CInt>) -> UnsafePointer<PangoLogAttr>! {
        let rv = pango_layout_get_log_attrs_readonly(cast(layout_ptr), cast(n_attrs))
        return cast(rv)
    }

    /// Computes the logical and ink extents of `layout` in device units.
    /// This function just calls pango_layout_get_extents() followed by
    /// two pango_extents_to_pixels() calls, rounding `ink_rect` and `logical_rect`
    /// such that the rounded rectangles fully contain the unrounded one (that is,
    /// passes them as first argument to pango_extents_to_pixels()).
    func getPixelExtents(inkRect ink_rect: RectangleProtocol, logicalRect logical_rect: RectangleProtocol) {
        pango_layout_get_pixel_extents(cast(layout_ptr), cast(ink_rect.ptr), cast(logical_rect.ptr))
    
    }

    /// Determines the logical width and height of a `PangoLayout`
    /// in device units. (pango_layout_get_size() returns the width
    /// and height scaled by `PANGO_SCALE`.) This
    /// is simply a convenience function around
    /// pango_layout_get_pixel_extents().
    func getPixelSize(width: UnsafeMutablePointer<CInt>, height: UnsafeMutablePointer<CInt>) {
        pango_layout_get_pixel_size(cast(layout_ptr), cast(width), cast(height))
    
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
    /// To force the serial to be increased, use pango_layout_context_changed().
    func getSerial() -> CUnsignedInt {
        let rv = pango_layout_get_serial(cast(layout_ptr))
        return CUnsignedInt(rv)
    }

    /// Obtains the value set by pango_layout_set_single_paragraph_mode().
    func getSingleParagraphMode() -> Bool {
        let rv = pango_layout_get_single_paragraph_mode(cast(layout_ptr))
        return Bool(rv != 0)
    }

    /// Determines the logical width and height of a `PangoLayout`
    /// in Pango units (device units scaled by `PANGO_SCALE`). This
    /// is simply a convenience function around pango_layout_get_extents().
    func getSize(width: UnsafeMutablePointer<CInt>, height: UnsafeMutablePointer<CInt>) {
        pango_layout_get_size(cast(layout_ptr), cast(width), cast(height))
    
    }

    /// Gets the amount of spacing between the lines of the layout.
    func getSpacing() -> CInt {
        let rv = pango_layout_get_spacing(cast(layout_ptr))
        return rv
    }

    /// Gets the current `PangoTabArray` used by this layout. If no
    /// `PangoTabArray` has been set, then the default tabs are in use
    /// and `nil` is returned. Default tabs are every 8 spaces.
    /// The return value should be freed with pango_tab_array_free().
    func getTabs() -> UnsafeMutablePointer<PangoTabArray>! {
        let rv = pango_layout_get_tabs(cast(layout_ptr))
        return cast(rv)
    }

    /// Gets the text in the layout. The returned text should not
    /// be freed or modified.
    func getText() -> String! {
        let rv = pango_layout_get_text(cast(layout_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Counts the number unknown glyphs in `layout`.  That is, zero if
    /// glyphs for all characters in the layout text were found, or more
    /// than zero otherwise.
    /// 
    /// This function can be used to determine if there are any fonts
    /// available to render all characters in a certain string, or when
    /// used in combination with `PANGO_ATTR_FALLBACK`, to check if a
    /// certain font supports all the characters in the string.
    func getUnknownGlyphsCount() -> CInt {
        let rv = pango_layout_get_unknown_glyphs_count(cast(layout_ptr))
        return rv
    }

    /// Gets the width to which the lines of the `PangoLayout` should wrap.
    func getWidth() -> CInt {
        let rv = pango_layout_get_width(cast(layout_ptr))
        return rv
    }

    /// Gets the wrap mode for the layout.
    /// 
    /// Use pango_layout_is_wrapped() to query whether any paragraphs
    /// were actually wrapped.
    func getWrap() -> PangoWrapMode {
        let rv = pango_layout_get_wrap(cast(layout_ptr))
        return rv
    }

    /// Converts from byte `index_` within the `layout` to line and X position.
    /// (X position is measured from the left edge of the line)
    func indexToLineX(index_: CInt, trailing: Bool, line: UnsafeMutablePointer<CInt>, xPos x_pos: UnsafeMutablePointer<CInt>) {
        pango_layout_index_to_line_x(cast(layout_ptr), index_, gboolean(trailing ? 1 : 0), cast(line), cast(x_pos))
    
    }

    /// Converts from an index within a `PangoLayout` to the onscreen position
    /// corresponding to the grapheme at that index, which is represented
    /// as rectangle.  Note that <literal>pos->x</literal> is always the leading
    /// edge of the grapheme and <literal>pos->x + pos->width</literal> the trailing
    /// edge of the grapheme. If the directionality of the grapheme is right-to-left,
    /// then <literal>pos->width</literal> will be negative.
    func indexToPos(index_: CInt, pos: RectangleProtocol) {
        pango_layout_index_to_pos(cast(layout_ptr), index_, cast(pos.ptr))
    
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
    /// single call to pango_layout_move_cursor_visually() may move the
    /// cursor over multiple characters when multiple characters combine
    /// to form a single grapheme.
    func moveCursorVisually(strong: Bool, oldIndex old_index: CInt, oldTrailing old_trailing: CInt, direction: CInt, newIndex new_index: UnsafeMutablePointer<CInt>, newTrailing new_trailing: UnsafeMutablePointer<CInt>) {
        pango_layout_move_cursor_visually(cast(layout_ptr), gboolean(strong ? 1 : 0), old_index, old_trailing, direction, cast(new_index), cast(new_trailing))
    
    }

    /// Sets the alignment for the layout: how partial lines are
    /// positioned within the horizontal space available.
    func set(alignment: Alignment) {
        pango_layout_set_alignment(cast(layout_ptr), alignment)
    
    }

    /// Sets the text attributes for a layout object.
    /// References `attrs`, so the caller can unref its reference.
    func setAttributes(attrs: AttrListProtocol) {
        pango_layout_set_attributes(cast(layout_ptr), cast(attrs.ptr))
    
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
    /// of the layout's `PangoContext`. (See pango_context_set_base_dir()).
    /// 
    /// When the auto-computed direction of a paragraph differs from the
    /// base direction of the context, the interpretation of
    /// `PANGO_ALIGN_LEFT` and `PANGO_ALIGN_RIGHT` are swapped.
    func set(autoDir auto_dir: Bool) {
        pango_layout_set_auto_dir(cast(layout_ptr), gboolean(auto_dir ? 1 : 0))
    
    }

    /// Sets the type of ellipsization being performed for `layout`.
    /// Depending on the ellipsization mode `ellipsize` text is
    /// removed from the start, middle, or end of text so they
    /// fit within the width and height of layout set with
    /// pango_layout_set_width() and pango_layout_set_height().
    /// 
    /// If the layout contains characters such as newlines that
    /// force it to be layed out in multiple paragraphs, then whether
    /// each paragraph is ellipsized separately or the entire layout
    /// is ellipsized as a whole depends on the set height of the layout.
    /// See pango_layout_set_height() for details.
    func set(ellipsize: EllipsizeMode) {
        pango_layout_set_ellipsize(cast(layout_ptr), ellipsize)
    
    }

    /// Sets the default font description for the layout. If no font
    /// description is set on the layout, the font description from
    /// the layout's context is used.
    func setFontDescription(desc: FontDescriptionProtocol) {
        pango_layout_set_font_description(cast(layout_ptr), cast(desc.ptr))
    
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
    func set(height: CInt) {
        pango_layout_set_height(cast(layout_ptr), height)
    
    }

    /// Sets the width in Pango units to indent each paragraph. A negative value
    /// of `indent` will produce a hanging indentation. That is, the first line will
    /// have the full width, and subsequent lines will be indented by the
    /// absolute value of `indent`.
    /// 
    /// The indent setting is ignored if layout alignment is set to
    /// `PANGO_ALIGN_CENTER`.
    func set(indent: CInt) {
        pango_layout_set_indent(cast(layout_ptr), indent)
    
    }

    /// Sets whether each complete line should be stretched to
    /// fill the entire width of the layout. This stretching is typically
    /// done by adding whitespace, but for some scripts (such as Arabic),
    /// the justification may be done in more complex ways, like extending
    /// the characters.
    /// 
    /// Note that this setting is not implemented and so is ignored in Pango
    /// older than 1.18.
    func set(justify: Bool) {
        pango_layout_set_justify(cast(layout_ptr), gboolean(justify ? 1 : 0))
    
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
    /// second line (as determined by the font(s)).
    /// In this case, the spacing set with
    /// pango_layout_set_spacing() is ignored.
    /// 
    /// If `factor` is zero, spacing is applied as
    /// before.
    func setLineSpacing(factor: gfloat) {
        pango_layout_set_line_spacing(cast(layout_ptr), factor)
    
    }

    /// Same as pango_layout_set_markup_with_accel(), but
    /// the markup text isn't scanned for accelerators.
    func set(markup: UnsafePointer<CChar>, length: CInt) {
        pango_layout_set_markup(cast(layout_ptr), markup, length)
    
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
    func setMarkupWithAccel(markup: UnsafePointer<CChar>, length: CInt, accelMarker accel_marker: gunichar, accelChar accel_char: UnsafeMutablePointer<gunichar>) {
        pango_layout_set_markup_with_accel(cast(layout_ptr), markup, length, accel_marker, cast(accel_char))
    
    }

    /// If `setting` is `true`, do not treat newlines and similar characters
    /// as paragraph separators; instead, keep all text in a single paragraph,
    /// and display a glyph for paragraph separator characters. Used when
    /// you want to allow editing of newlines on a single text line.
    func setSingleParagraphMode(setting: Bool) {
        pango_layout_set_single_paragraph_mode(cast(layout_ptr), gboolean(setting ? 1 : 0))
    
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
    /// set to zero with pango_layout_set_line_spacing().
    func set(spacing: CInt) {
        pango_layout_set_spacing(cast(layout_ptr), spacing)
    
    }

    /// Sets the tabs to use for `layout`, overriding the default tabs
    /// (by default, tabs are every 8 spaces). If `tabs` is `nil`, the default
    /// tabs are reinstated. `tabs` is copied into the layout; you must
    /// free your copy of `tabs` yourself.
    func set(tabs: TabArrayProtocol) {
        pango_layout_set_tabs(cast(layout_ptr), cast(tabs.ptr))
    
    }

    /// Sets the text of the layout.
    /// 
    /// This function validates `text` and renders invalid UTF-8
    /// with a placeholder glyph.
    /// 
    /// Note that if you have used pango_layout_set_markup() or
    /// pango_layout_set_markup_with_accel() on `layout` before, you may
    /// want to call pango_layout_set_attributes() to clear the attributes
    /// set on the layout from the markup as this function does not clear
    /// attributes.
    func set(text: UnsafePointer<CChar>, length: CInt) {
        pango_layout_set_text(cast(layout_ptr), text, length)
    
    }

    /// Sets the width to which the lines of the `PangoLayout` should wrap or
    /// ellipsized.  The default value is -1: no width set.
    func set(width: CInt) {
        pango_layout_set_width(cast(layout_ptr), width)
    
    }

    /// Sets the wrap mode; the wrap mode only has effect if a width
    /// is set on the layout with pango_layout_set_width().
    /// To turn off wrapping, set the width to -1.
    func set(wrap: WrapMode) {
        pango_layout_set_wrap(cast(layout_ptr), wrap)
    
    }

    /// Converts from X and Y position within a layout to the byte
    /// index to the character at that logical position. If the
    /// Y position is not inside the layout, the closest position is chosen
    /// (the position will be clamped inside the layout). If the
    /// X position is not within the layout, then the start or the
    /// end of the line is chosen as described for pango_layout_line_x_to_index().
    /// If either the X or Y positions were not inside the layout, then the
    /// function returns `false`; on an exact hit, it returns `true`.
    func xyToIndex(x: CInt, y: CInt, index_: UnsafeMutablePointer<CInt>, trailing: UnsafeMutablePointer<CInt>) -> Bool {
        let rv = pango_layout_xy_to_index(cast(layout_ptr), x, y, cast(index_), cast(trailing))
        return Bool(rv != 0)
    }
    /// Gets the alignment for the layout: how partial lines are
    /// positioned within the horizontal space available.
    var alignment: PangoAlignment {
        /// Gets the alignment for the layout: how partial lines are
        /// positioned within the horizontal space available.
        get {
            let rv = pango_layout_get_alignment(cast(layout_ptr))
            return rv
        }
        /// Sets the alignment for the layout: how partial lines are
        /// positioned within the horizontal space available.
        nonmutating set {
            pango_layout_set_alignment(cast(layout_ptr), newValue)
        }
    }

    /// Gets the attribute list for the layout, if any.
    var attributes: UnsafeMutablePointer<PangoAttrList>! {
        /// Gets the attribute list for the layout, if any.
        get {
            let rv = pango_layout_get_attributes(cast(layout_ptr))
            return cast(rv)
        }
        /// Sets the text attributes for a layout object.
        /// References `attrs`, so the caller can unref its reference.
        nonmutating set {
            pango_layout_set_attributes(cast(layout_ptr), cast(newValue))
        }
    }

    /// Gets whether to calculate the bidirectional base direction
    /// for the layout according to the contents of the layout.
    /// See pango_layout_set_auto_dir().
    var autoDir: Bool {
        /// Gets whether to calculate the bidirectional base direction
        /// for the layout according to the contents of the layout.
        /// See pango_layout_set_auto_dir().
        get {
            let rv = pango_layout_get_auto_dir(cast(layout_ptr))
            return Bool(rv != 0)
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
        /// of the layout's `PangoContext`. (See pango_context_set_base_dir()).
        /// 
        /// When the auto-computed direction of a paragraph differs from the
        /// base direction of the context, the interpretation of
        /// `PANGO_ALIGN_LEFT` and `PANGO_ALIGN_RIGHT` are swapped.
        nonmutating set {
            pango_layout_set_auto_dir(cast(layout_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Gets the Y position of baseline of the first line in `layout`.
    var baseline: CInt {
        /// Gets the Y position of baseline of the first line in `layout`.
        get {
            let rv = pango_layout_get_baseline(cast(layout_ptr))
            return rv
        }
    }

    /// Returns the number of Unicode characters in the
    /// the text of `layout`.
    var characterCount: CInt {
        /// Returns the number of Unicode characters in the
        /// the text of `layout`.
        get {
            let rv = pango_layout_get_character_count(cast(layout_ptr))
            return CInt(rv)
        }
    }

    /// Retrieves the `PangoContext` used for this layout.
    var context: UnsafeMutablePointer<PangoContext>! {
        /// Retrieves the `PangoContext` used for this layout.
        get {
            let rv = pango_layout_get_context(cast(layout_ptr))
            return cast(rv)
        }
    }

    /// Gets the type of ellipsization being performed for `layout`.
    /// See pango_layout_set_ellipsize()
    var ellipsize: PangoEllipsizeMode {
        /// Gets the type of ellipsization being performed for `layout`.
        /// See pango_layout_set_ellipsize()
        get {
            let rv = pango_layout_get_ellipsize(cast(layout_ptr))
            return rv
        }
        /// Sets the type of ellipsization being performed for `layout`.
        /// Depending on the ellipsization mode `ellipsize` text is
        /// removed from the start, middle, or end of text so they
        /// fit within the width and height of layout set with
        /// pango_layout_set_width() and pango_layout_set_height().
        /// 
        /// If the layout contains characters such as newlines that
        /// force it to be layed out in multiple paragraphs, then whether
        /// each paragraph is ellipsized separately or the entire layout
        /// is ellipsized as a whole depends on the set height of the layout.
        /// See pango_layout_set_height() for details.
        nonmutating set {
            pango_layout_set_ellipsize(cast(layout_ptr), newValue)
        }
    }

    /// Gets the font description for the layout, if any.
    var fontDescription: UnsafePointer<PangoFontDescription>! {
        /// Gets the font description for the layout, if any.
        get {
            let rv = pango_layout_get_font_description(cast(layout_ptr))
            return cast(rv)
        }
        /// Sets the default font description for the layout. If no font
        /// description is set on the layout, the font description from
        /// the layout's context is used.
        nonmutating set {
            pango_layout_set_font_description(cast(layout_ptr), cast(newValue))
        }
    }

    /// Gets the height of layout used for ellipsization.  See
    /// pango_layout_set_height() for details.
    var height: CInt {
        /// Gets the height of layout used for ellipsization.  See
        /// pango_layout_set_height() for details.
        get {
            let rv = pango_layout_get_height(cast(layout_ptr))
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
            pango_layout_set_height(cast(layout_ptr), newValue)
        }
    }

    /// Gets the paragraph indent width in Pango units. A negative value
    /// indicates a hanging indentation.
    var indent: CInt {
        /// Gets the paragraph indent width in Pango units. A negative value
        /// indicates a hanging indentation.
        get {
            let rv = pango_layout_get_indent(cast(layout_ptr))
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
            pango_layout_set_indent(cast(layout_ptr), newValue)
        }
    }

    /// Queries whether the layout had to ellipsize any paragraphs.
    /// 
    /// This returns `true` if the ellipsization mode for `layout`
    /// is not `PANGO_ELLIPSIZE_NONE`, a positive width is set on `layout`,
    /// and there are paragraphs exceeding that width that have to be
    /// ellipsized.
    var isEllipsized: Bool {
        /// Queries whether the layout had to ellipsize any paragraphs.
        /// 
        /// This returns `true` if the ellipsization mode for `layout`
        /// is not `PANGO_ELLIPSIZE_NONE`, a positive width is set on `layout`,
        /// and there are paragraphs exceeding that width that have to be
        /// ellipsized.
        get {
            let rv = pango_layout_is_ellipsized(cast(layout_ptr))
            return Bool(rv != 0)
        }
    }

    /// Queries whether the layout had to wrap any paragraphs.
    /// 
    /// This returns `true` if a positive width is set on `layout`,
    /// ellipsization mode of `layout` is set to `PANGO_ELLIPSIZE_NONE`,
    /// and there are paragraphs exceeding the layout width that have
    /// to be wrapped.
    var isWrapped: Bool {
        /// Queries whether the layout had to wrap any paragraphs.
        /// 
        /// This returns `true` if a positive width is set on `layout`,
        /// ellipsization mode of `layout` is set to `PANGO_ELLIPSIZE_NONE`,
        /// and there are paragraphs exceeding the layout width that have
        /// to be wrapped.
        get {
            let rv = pango_layout_is_wrapped(cast(layout_ptr))
            return Bool(rv != 0)
        }
    }

    /// Returns an iterator to iterate over the visual extents of the layout.
    var iter: UnsafeMutablePointer<PangoLayoutIter>! {
        /// Returns an iterator to iterate over the visual extents of the layout.
        get {
            let rv = pango_layout_get_iter(cast(layout_ptr))
            return cast(rv)
        }
    }

    /// Gets whether each complete line should be stretched to fill the entire
    /// width of the layout.
    var justify: Bool {
        /// Gets whether each complete line should be stretched to fill the entire
        /// width of the layout.
        get {
            let rv = pango_layout_get_justify(cast(layout_ptr))
            return Bool(rv != 0)
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
            pango_layout_set_justify(cast(layout_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Retrieves the count of lines for the `layout`.
    var lineCount: CInt {
        /// Retrieves the count of lines for the `layout`.
        get {
            let rv = pango_layout_get_line_count(cast(layout_ptr))
            return rv
        }
    }

    /// Gets the value that has been
    /// set with pango_layout_set_line_spacing().
    var lineSpacing: CFloat {
        /// Gets the value that has been
        /// set with pango_layout_set_line_spacing().
        get {
            let rv = pango_layout_get_line_spacing(cast(layout_ptr))
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
        /// second line (as determined by the font(s)).
        /// In this case, the spacing set with
        /// pango_layout_set_spacing() is ignored.
        /// 
        /// If `factor` is zero, spacing is applied as
        /// before.
        nonmutating set {
            pango_layout_set_line_spacing(cast(layout_ptr), newValue)
        }
    }

    /// Returns the lines of the `layout` as a list.
    /// 
    /// Use the faster pango_layout_get_lines_readonly() if you do not plan
    /// to modify the contents of the lines (glyphs, glyph widths, etc.).
    var lines: UnsafeMutablePointer<GSList>! {
        /// Returns the lines of the `layout` as a list.
        /// 
        /// Use the faster pango_layout_get_lines_readonly() if you do not plan
        /// to modify the contents of the lines (glyphs, glyph widths, etc.).
        get {
            let rv = pango_layout_get_lines(cast(layout_ptr))
            return cast(rv)
        }
    }

    /// Returns the lines of the `layout` as a list.
    /// 
    /// This is a faster alternative to pango_layout_get_lines(),
    /// but the user is not expected
    /// to modify the contents of the lines (glyphs, glyph widths, etc.).
    var linesReadonly: UnsafeMutablePointer<GSList>! {
        /// Returns the lines of the `layout` as a list.
        /// 
        /// This is a faster alternative to pango_layout_get_lines(),
        /// but the user is not expected
        /// to modify the contents of the lines (glyphs, glyph widths, etc.).
        get {
            let rv = pango_layout_get_lines_readonly(cast(layout_ptr))
            return cast(rv)
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
    /// To force the serial to be increased, use pango_layout_context_changed().
    var serial: CUnsignedInt {
        /// Returns the current serial number of `layout`.  The serial number is
        /// initialized to an small number  larger than zero when a new layout
        /// is created and is increased whenever the layout is changed using any
        /// of the setter functions, or the `PangoContext` it uses has changed.
        /// The serial may wrap, but will never have the value 0. Since it
        /// can wrap, never compare it with "less than", always use "not equals".
        /// 
        /// This can be used to automatically detect changes to a `PangoLayout`, and
        /// is useful for example to decide whether a layout needs redrawing.
        /// To force the serial to be increased, use pango_layout_context_changed().
        get {
            let rv = pango_layout_get_serial(cast(layout_ptr))
            return CUnsignedInt(rv)
        }
    }

    /// Obtains the value set by pango_layout_set_single_paragraph_mode().
    var singleParagraphMode: Bool {
        /// Obtains the value set by pango_layout_set_single_paragraph_mode().
        get {
            let rv = pango_layout_get_single_paragraph_mode(cast(layout_ptr))
            return Bool(rv != 0)
        }
        /// If `setting` is `true`, do not treat newlines and similar characters
        /// as paragraph separators; instead, keep all text in a single paragraph,
        /// and display a glyph for paragraph separator characters. Used when
        /// you want to allow editing of newlines on a single text line.
        nonmutating set {
            pango_layout_set_single_paragraph_mode(cast(layout_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Gets the amount of spacing between the lines of the layout.
    var spacing: CInt {
        /// Gets the amount of spacing between the lines of the layout.
        get {
            let rv = pango_layout_get_spacing(cast(layout_ptr))
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
        /// set to zero with pango_layout_set_line_spacing().
        nonmutating set {
            pango_layout_set_spacing(cast(layout_ptr), newValue)
        }
    }

    /// Gets the current `PangoTabArray` used by this layout. If no
    /// `PangoTabArray` has been set, then the default tabs are in use
    /// and `nil` is returned. Default tabs are every 8 spaces.
    /// The return value should be freed with pango_tab_array_free().
    var tabs: UnsafeMutablePointer<PangoTabArray>! {
        /// Gets the current `PangoTabArray` used by this layout. If no
        /// `PangoTabArray` has been set, then the default tabs are in use
        /// and `nil` is returned. Default tabs are every 8 spaces.
        /// The return value should be freed with pango_tab_array_free().
        get {
            let rv = pango_layout_get_tabs(cast(layout_ptr))
            return cast(rv)
        }
        /// Sets the tabs to use for `layout`, overriding the default tabs
        /// (by default, tabs are every 8 spaces). If `tabs` is `nil`, the default
        /// tabs are reinstated. `tabs` is copied into the layout; you must
        /// free your copy of `tabs` yourself.
        nonmutating set {
            pango_layout_set_tabs(cast(layout_ptr), cast(newValue))
        }
    }

    /// Gets the text in the layout. The returned text should not
    /// be freed or modified.
    var text: String! {
        /// Gets the text in the layout. The returned text should not
        /// be freed or modified.
        get {
            let rv = pango_layout_get_text(cast(layout_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
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
    var unknownGlyphsCount: CInt {
        /// Counts the number unknown glyphs in `layout`.  That is, zero if
        /// glyphs for all characters in the layout text were found, or more
        /// than zero otherwise.
        /// 
        /// This function can be used to determine if there are any fonts
        /// available to render all characters in a certain string, or when
        /// used in combination with `PANGO_ATTR_FALLBACK`, to check if a
        /// certain font supports all the characters in the string.
        get {
            let rv = pango_layout_get_unknown_glyphs_count(cast(layout_ptr))
            return rv
        }
    }

    /// Gets the width to which the lines of the `PangoLayout` should wrap.
    var width: CInt {
        /// Gets the width to which the lines of the `PangoLayout` should wrap.
        get {
            let rv = pango_layout_get_width(cast(layout_ptr))
            return rv
        }
        /// Sets the width to which the lines of the `PangoLayout` should wrap or
        /// ellipsized.  The default value is -1: no width set.
        nonmutating set {
            pango_layout_set_width(cast(layout_ptr), newValue)
        }
    }

    /// Gets the wrap mode for the layout.
    /// 
    /// Use pango_layout_is_wrapped() to query whether any paragraphs
    /// were actually wrapped.
    var wrap: PangoWrapMode {
        /// Gets the wrap mode for the layout.
        /// 
        /// Use pango_layout_is_wrapped() to query whether any paragraphs
        /// were actually wrapped.
        get {
            let rv = pango_layout_get_wrap(cast(layout_ptr))
            return rv
        }
        /// Sets the wrap mode; the wrap mode only has effect if a width
        /// is set on the layout with pango_layout_set_width().
        /// To turn off wrapping, set the width to -1.
        nonmutating set {
            pango_layout_set_wrap(cast(layout_ptr), newValue)
        }
    }
}



