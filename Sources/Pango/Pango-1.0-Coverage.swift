import CGLib
import CPango
import GLib
import GLibObject

// MARK: - Coverage Class

/// The `CoverageProtocol` protocol exposes the methods and properties of an underlying `PangoCoverage` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Coverage`.
/// Alternatively, use `CoverageRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `PangoCoverage` structure is a map from Unicode characters
/// to `PangoCoverageLevel` values.
/// 
/// It is often necessary in Pango to determine if a particular font can
/// represent a particular character, and also how well it can represent
/// that character. The `PangoCoverage` is a data structure that is used to
/// represent that information. It is an opaque structure with no public fields.
public protocol CoverageProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `PangoCoverage` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoCoverage` instance.
    var coverage_ptr: UnsafeMutablePointer<PangoCoverage>! { get }

    /// Required Initialiser for types conforming to `CoverageProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `CoverageRef` type acts as a lightweight Swift reference to an underlying `PangoCoverage` instance.
/// It exposes methods that can operate on this data type through `CoverageProtocol` conformance.
/// Use `CoverageRef` only as an `unowned` reference to an existing `PangoCoverage` instance.
///
/// A `PangoCoverage` structure is a map from Unicode characters
/// to `PangoCoverageLevel` values.
/// 
/// It is often necessary in Pango to determine if a particular font can
/// represent a particular character, and also how well it can represent
/// that character. The `PangoCoverage` is a data structure that is used to
/// represent that information. It is an opaque structure with no public fields.
public struct CoverageRef: CoverageProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `PangoCoverage` instance.
    /// For type-safe access, use the generated, typed pointer `coverage_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CoverageRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoCoverage>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoCoverage>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoCoverage>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoCoverage>?) {
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

    /// Reference intialiser for a related type that implements `CoverageProtocol`
    @inlinable init<T: CoverageProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: CoverageProtocol>(_ other: T) -> CoverageRef { CoverageRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Create a new `PangoCoverage`
    @inlinable init() {
        let rv = pango_coverage_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Convert data generated from `pango_coverage_to_bytes()` back
    /// to a `PangoCoverage`.
    ///
    /// **from_bytes is deprecated:**
    /// This returns %NULL
    @available(*, deprecated) @inlinable static func from(bytes: UnsafeMutablePointer<guchar>!, nBytes: Int) -> CoverageRef! {
        guard let rv = CoverageRef(gconstpointer: gconstpointer(pango_coverage_from_bytes(bytes, gint(nBytes)))) else { return nil }
        return rv
    }
}

/// The `Coverage` type acts as a reference-counted owner of an underlying `PangoCoverage` instance.
/// It provides the methods that can operate on this data type through `CoverageProtocol` conformance.
/// Use `Coverage` as a strong reference or owner of a `PangoCoverage` instance.
///
/// A `PangoCoverage` structure is a map from Unicode characters
/// to `PangoCoverageLevel` values.
/// 
/// It is often necessary in Pango to determine if a particular font can
/// represent a particular character, and also how well it can represent
/// that character. The `PangoCoverage` is a data structure that is used to
/// represent that information. It is an opaque structure with no public fields.
open class Coverage: GLibObject.Object, CoverageProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Coverage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoCoverage>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Coverage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoCoverage>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Coverage` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Coverage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Coverage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoCoverage>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Coverage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoCoverage>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `PangoCoverage`.
    /// i.e., ownership is transferred to the `Coverage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoCoverage>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `CoverageProtocol`
    /// Will retain `PangoCoverage`.
    /// - Parameter other: an instance of a related type that implements `CoverageProtocol`
    @inlinable public init<T: CoverageProtocol>(coverage other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CoverageProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Create a new `PangoCoverage`
    @inlinable public init() {
        let rv = pango_coverage_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Convert data generated from `pango_coverage_to_bytes()` back
    /// to a `PangoCoverage`.
    ///
    /// **from_bytes is deprecated:**
    /// This returns %NULL
    @available(*, deprecated) @inlinable public static func from(bytes: UnsafeMutablePointer<guchar>!, nBytes: Int) -> Coverage! {
        guard let rv = Coverage(gconstpointer: gconstpointer(pango_coverage_from_bytes(bytes, gint(nBytes)))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

// MARK: no Coverage properties

public enum CoverageSignalName: String, SignalNameProtocol {
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

// MARK: Coverage has no signals
// MARK: Coverage Class: CoverageProtocol extension (methods and fields)
public extension CoverageProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoCoverage` instance.
    @inlinable var coverage_ptr: UnsafeMutablePointer<PangoCoverage>! { return ptr?.assumingMemoryBound(to: PangoCoverage.self) }

    /// Copy an existing `PangoCoverage`.
    @inlinable func copy() -> CoverageRef! {
        guard let rv = CoverageRef(gconstpointer: gconstpointer(pango_coverage_copy(coverage_ptr))) else { return nil }
        return rv
    }

    /// Determine whether a particular index is covered by `coverage`.
    @inlinable func get(index_: Int) -> PangoCoverageLevel {
        let rv = pango_coverage_get(coverage_ptr, gint(index_))
        return rv
    }

    /// Set the coverage for each index in `coverage` to be the max (better)
    /// value of the current coverage for the index and the coverage for
    /// the corresponding index in `other`.
    ///
    /// **max is deprecated:**
    /// This function does nothing
    @available(*, deprecated) @inlinable func max<CoverageT: CoverageProtocol>(other: CoverageT) {
        pango_coverage_max(coverage_ptr, other.coverage_ptr)
    
    }

    /// Increase the reference count on the `PangoCoverage` by one.
    @discardableResult @inlinable func ref() -> CoverageRef! {
        guard let rv = CoverageRef(gconstpointer: gconstpointer(pango_coverage_ref(coverage_ptr))) else { return nil }
        return rv
    }

    /// Modify a particular index within `coverage`
    @inlinable func set(index_: Int, level: PangoCoverageLevel) {
        pango_coverage_set(coverage_ptr, gint(index_), level)
    
    }

    /// Convert a `PangoCoverage` structure into a flat binary format.
    ///
    /// **to_bytes is deprecated:**
    /// This returns %NULL
    @available(*, deprecated) @inlinable func to(bytes: UnsafeMutablePointer<UnsafeMutablePointer<guchar>?>!, nBytes: UnsafeMutablePointer<gint>!) {
        pango_coverage_to_bytes(coverage_ptr, bytes, nBytes)
    
    }

    /// Decrease the reference count on the `PangoCoverage` by one.
    /// 
    /// If the result is zero, free the coverage and all associated memory.
    @inlinable func unref() {
        pango_coverage_unref(coverage_ptr)
    
    }


}



