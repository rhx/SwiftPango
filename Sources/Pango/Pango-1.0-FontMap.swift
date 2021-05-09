import CGLib
import CPango
import GLib
import GLibObject

// MARK: - FontMap Class

/// The `FontMapProtocol` protocol exposes the methods and properties of an underlying `PangoFontMap` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontMap`.
/// Alternatively, use `FontMapRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `PangoFontMap` represents the set of fonts available for a
/// particular rendering system.
/// 
/// This is a virtual object with implementations being specific to
/// particular rendering systems.
public protocol FontMapProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `PangoFontMap` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFontMap` instance.
    var font_map_ptr: UnsafeMutablePointer<PangoFontMap>! { get }

    /// Required Initialiser for types conforming to `FontMapProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `FontMapRef` type acts as a lightweight Swift reference to an underlying `PangoFontMap` instance.
/// It exposes methods that can operate on this data type through `FontMapProtocol` conformance.
/// Use `FontMapRef` only as an `unowned` reference to an existing `PangoFontMap` instance.
///
/// A `PangoFontMap` represents the set of fonts available for a
/// particular rendering system.
/// 
/// This is a virtual object with implementations being specific to
/// particular rendering systems.
public struct FontMapRef: FontMapProtocol, GWeakCapturing {
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

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FontMapProtocol>(_ other: T) -> FontMapRef { FontMapRef(other) }

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
/// A `PangoFontMap` represents the set of fonts available for a
/// particular rendering system.
/// 
/// This is a virtual object with implementations being specific to
/// particular rendering systems.
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
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

// MARK: FontMap has no signals
// MARK: FontMap Class: FontMapProtocol extension (methods and fields)
public extension FontMapProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontMap` instance.
    @inlinable var font_map_ptr: UnsafeMutablePointer<PangoFontMap>! { return ptr?.assumingMemoryBound(to: PangoFontMap.self) }

    /// Forces a change in the context, which will cause any `PangoContext`
    /// using this fontmap to change.
    /// 
    /// This function is only useful when implementing a new backend
    /// for Pango, something applications won't do. Backends should
    /// call this function if they have attached extra data to the
    /// context and such data is changed.
    @inlinable func changed() {
        pango_font_map_changed(font_map_ptr)
    
    }

    /// Creates a `PangoContext` connected to `fontmap`.
    /// 
    /// This is equivalent to [ctor`Pango.Context.new`] followed by
    /// [method`Pango.Context.set_font_map`].
    /// 
    /// If you are using Pango as part of a higher-level system,
    /// that system may have it's own way of create a `PangoContext`.
    /// For instance, the GTK toolkit has, among others,
    /// `gtk_widget_get_pango_context()`. Use those instead.
    @inlinable func createContext() -> ContextRef! {
        let rv = ContextRef(gconstpointer: gconstpointer(pango_font_map_create_context(font_map_ptr)))
        return rv
    }

    /// Gets a font family by name.
    @inlinable func getFamily(name: UnsafePointer<CChar>!) -> FontFamilyRef! {
        let rv = FontFamilyRef(gconstpointer: gconstpointer(pango_font_map_get_family(font_map_ptr, name)))
        return rv
    }

    /// Returns the current serial number of `fontmap`.
    /// 
    /// The serial number is initialized to an small number larger than zero
    /// when a new fontmap is created and is increased whenever the fontmap
    /// is changed. It may wrap, but will never have the value 0. Since it can
    /// wrap, never compare it with "less than", always use "not equals".
    /// 
    /// The fontmap can only be changed using backend-specific API, like changing
    /// fontmap resolution.
    /// 
    /// This can be used to automatically detect changes to a `PangoFontMap`,
    /// like in `PangoContext`.
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
    /// Returns the current serial number of `fontmap`.
    /// 
    /// The serial number is initialized to an small number larger than zero
    /// when a new fontmap is created and is increased whenever the fontmap
    /// is changed. It may wrap, but will never have the value 0. Since it can
    /// wrap, never compare it with "less than", always use "not equals".
    /// 
    /// The fontmap can only be changed using backend-specific API, like changing
    /// fontmap resolution.
    /// 
    /// This can be used to automatically detect changes to a `PangoFontMap`,
    /// like in `PangoContext`.
    @inlinable var serial: Int {
        /// Returns the current serial number of `fontmap`.
        /// 
        /// The serial number is initialized to an small number larger than zero
        /// when a new fontmap is created and is increased whenever the fontmap
        /// is changed. It may wrap, but will never have the value 0. Since it can
        /// wrap, never compare it with "less than", always use "not equals".
        /// 
        /// The fontmap can only be changed using backend-specific API, like changing
        /// fontmap resolution.
        /// 
        /// This can be used to automatically detect changes to a `PangoFontMap`,
        /// like in `PangoContext`.
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



