import CGLib
import CPango
import GLib
import GLibObject

// MARK: - Fontset Class

/// A `PangoFontset` represents a set of `PangoFont` to use when rendering text.
/// 
/// A `PAngoFontset` is the result of resolving a `PangoFontDescription`
/// against a particular `PangoContext`. It has operations for finding the
/// component font for a particular Unicode character, and for finding a
/// composite set of metrics for the entire fontset.
///
/// The `FontsetProtocol` protocol exposes the methods and properties of an underlying `PangoFontset` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Fontset`.
/// Alternatively, use `FontsetRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FontsetProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `PangoFontset` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFontset` instance.
    var fontset_ptr: UnsafeMutablePointer<PangoFontset>! { get }

    /// Required Initialiser for types conforming to `FontsetProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `PangoFontset` represents a set of `PangoFont` to use when rendering text.
/// 
/// A `PAngoFontset` is the result of resolving a `PangoFontDescription`
/// against a particular `PangoContext`. It has operations for finding the
/// component font for a particular Unicode character, and for finding a
/// composite set of metrics for the entire fontset.
///
/// The `FontsetRef` type acts as a lightweight Swift reference to an underlying `PangoFontset` instance.
/// It exposes methods that can operate on this data type through `FontsetProtocol` conformance.
/// Use `FontsetRef` only as an `unowned` reference to an existing `PangoFontset` instance.
///
public struct FontsetRef: FontsetProtocol, GWeakCapturing {
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

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FontsetProtocol>(_ other: T) -> FontsetRef { FontsetRef(other) }

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

/// A `PangoFontset` represents a set of `PangoFont` to use when rendering text.
/// 
/// A `PAngoFontset` is the result of resolving a `PangoFontDescription`
/// against a particular `PangoContext`. It has operations for finding the
/// component font for a particular Unicode character, and for finding a
/// composite set of metrics for the entire fontset.
///
/// The `Fontset` type acts as a reference-counted owner of an underlying `PangoFontset` instance.
/// It provides the methods that can operate on this data type through `FontsetProtocol` conformance.
/// Use `Fontset` as a strong reference or owner of a `PangoFontset` instance.
///
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
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

// MARK: Fontset has no signals
// MARK: Fontset Class: FontsetProtocol extension (methods and fields)
public extension FontsetProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontset` instance.
    @inlinable var fontset_ptr: UnsafeMutablePointer<PangoFontset>! { return ptr?.assumingMemoryBound(to: PangoFontset.self) }

    /// Iterates through all the fonts in a fontset, calling `func` for
    /// each one.
    /// 
    /// If `func` returns `true`, that stops the iteration.
    @inlinable func foreach(`func`: PangoFontsetForeachFunc?, data: gpointer! = nil) {
        pango_fontset_foreach(fontset_ptr, `func`, data)
    
    }

    /// Returns the font in the fontset that contains the best glyph for a
    /// Unicode character.
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



