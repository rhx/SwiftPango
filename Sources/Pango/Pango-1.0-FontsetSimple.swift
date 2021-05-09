import CGLib
import CPango
import GLib
import GLibObject

// MARK: - FontsetSimple Class

/// The `FontsetSimpleProtocol` protocol exposes the methods and properties of an underlying `PangoFontsetSimple` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontsetSimple`.
/// Alternatively, use `FontsetSimpleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `PangoFontsetSimple` is a implementation of the abstract
/// `PangoFontset` base class as an array of fonts.
/// 
/// When creating a `PangoFontsetSimple`, you have to provide
/// the array of fonts that make up the fontset.
public protocol FontsetSimpleProtocol: FontsetProtocol {
        /// Untyped pointer to the underlying `PangoFontsetSimple` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFontsetSimple` instance.
    var fontset_simple_ptr: UnsafeMutablePointer<PangoFontsetSimple>! { get }

    /// Required Initialiser for types conforming to `FontsetSimpleProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `FontsetSimpleRef` type acts as a lightweight Swift reference to an underlying `PangoFontsetSimple` instance.
/// It exposes methods that can operate on this data type through `FontsetSimpleProtocol` conformance.
/// Use `FontsetSimpleRef` only as an `unowned` reference to an existing `PangoFontsetSimple` instance.
///
/// `PangoFontsetSimple` is a implementation of the abstract
/// `PangoFontset` base class as an array of fonts.
/// 
/// When creating a `PangoFontsetSimple`, you have to provide
/// the array of fonts that make up the fontset.
public struct FontsetSimpleRef: FontsetSimpleProtocol, GWeakCapturing {
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

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FontsetSimpleProtocol>(_ other: T) -> FontsetSimpleRef { FontsetSimpleRef(other) }

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
/// `PangoFontset` base class as an array of fonts.
/// 
/// When creating a `PangoFontsetSimple`, you have to provide
/// the array of fonts that make up the fontset.
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
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
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
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

// MARK: FontsetSimple has no signals
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



