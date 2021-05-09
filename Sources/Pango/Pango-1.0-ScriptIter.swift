import CGLib
import CPango
import GLib
import GLibObject

// MARK: - ScriptIter Record

/// The `ScriptIterProtocol` protocol exposes the methods and properties of an underlying `PangoScriptIter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ScriptIter`.
/// Alternatively, use `ScriptIterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `PangoScriptIter` is used to iterate through a string
/// and identify ranges in different scripts.
public protocol ScriptIterProtocol {
        /// Untyped pointer to the underlying `PangoScriptIter` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoScriptIter` instance.
    var script_iter_ptr: UnsafeMutablePointer<PangoScriptIter>! { get }

    /// Required Initialiser for types conforming to `ScriptIterProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ScriptIterRef` type acts as a lightweight Swift reference to an underlying `PangoScriptIter` instance.
/// It exposes methods that can operate on this data type through `ScriptIterProtocol` conformance.
/// Use `ScriptIterRef` only as an `unowned` reference to an existing `PangoScriptIter` instance.
///
/// A `PangoScriptIter` is used to iterate through a string
/// and identify ranges in different scripts.
public struct ScriptIterRef: ScriptIterProtocol {
        /// Untyped pointer to the underlying `PangoScriptIter` instance.
    /// For type-safe access, use the generated, typed pointer `script_iter_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ScriptIterRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoScriptIter>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoScriptIter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoScriptIter>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoScriptIter>?) {
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

    /// Reference intialiser for a related type that implements `ScriptIterProtocol`
    @inlinable init<T: ScriptIterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScriptIterProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScriptIterProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScriptIterProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScriptIterProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScriptIterProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Create a new `PangoScriptIter`, used to break a string of
    /// Unicode text into runs by Unicode script. No copy is made of
    /// `text`, so the caller needs to make sure it remains valid until
    /// the iterator is freed with `pango_script_iter_free()`.
    @inlinable init( text: UnsafePointer<CChar>!, length: Int) {
        let rv = pango_script_iter_new(text, gint(length))
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `ScriptIter` type acts as an owner of an underlying `PangoScriptIter` instance.
/// It provides the methods that can operate on this data type through `ScriptIterProtocol` conformance.
/// Use `ScriptIter` as a strong reference or owner of a `PangoScriptIter` instance.
///
/// A `PangoScriptIter` is used to iterate through a string
/// and identify ranges in different scripts.
open class ScriptIter: ScriptIterProtocol {
        /// Untyped pointer to the underlying `PangoScriptIter` instance.
    /// For type-safe access, use the generated, typed pointer `script_iter_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ScriptIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoScriptIter>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ScriptIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoScriptIter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ScriptIter` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ScriptIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ScriptIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoScriptIter>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ScriptIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoScriptIter>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoScriptIter` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ScriptIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoScriptIter>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoScriptIter, cannot ref(script_iter_ptr)
    }

    /// Reference intialiser for a related type that implements `ScriptIterProtocol`
    /// `PangoScriptIter` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ScriptIterProtocol`
    @inlinable public init<T: ScriptIterProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoScriptIter, cannot ref(script_iter_ptr)
    }

    /// Do-nothing destructor for `PangoScriptIter`.
    deinit {
        // no reference counting for PangoScriptIter, cannot unref(script_iter_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScriptIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScriptIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoScriptIter, cannot ref(script_iter_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScriptIterProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScriptIterProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoScriptIter, cannot ref(script_iter_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScriptIterProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScriptIterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoScriptIter, cannot ref(script_iter_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScriptIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScriptIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoScriptIter, cannot ref(script_iter_ptr)
    }

    /// Create a new `PangoScriptIter`, used to break a string of
    /// Unicode text into runs by Unicode script. No copy is made of
    /// `text`, so the caller needs to make sure it remains valid until
    /// the iterator is freed with `pango_script_iter_free()`.
    @inlinable public init( text: UnsafePointer<CChar>!, length: Int) {
        let rv = pango_script_iter_new(text, gint(length))
        ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no ScriptIter properties

// MARK: no ScriptIter signals

// MARK: ScriptIter has no signals
// MARK: ScriptIter Record: ScriptIterProtocol extension (methods and fields)
public extension ScriptIterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoScriptIter` instance.
    @inlinable var script_iter_ptr: UnsafeMutablePointer<PangoScriptIter>! { return ptr?.assumingMemoryBound(to: PangoScriptIter.self) }

    /// Frees a `PangoScriptIter` created with `pango_script_iter_new()`.
    @inlinable func free() {
        pango_script_iter_free(script_iter_ptr)
    
    }

    /// Gets information about the range to which `iter` currently points.
    /// The range is the set of locations p where *start &lt;= p &lt; *end.
    /// (That is, it doesn't include the character stored at *end)
    /// 
    /// Note that while the type of the `script` argument is declared
    /// as PangoScript, as of Pango 1.18, this function simply returns
    /// GUnicodeScript values. Callers must be prepared to handle unknown
    /// values.
    @inlinable func getRange(start: UnsafeMutablePointer<UnsafePointer<CChar>?>! = nil, end: UnsafeMutablePointer<UnsafePointer<CChar>?>! = nil, script: UnsafeMutablePointer<PangoScript>! = nil) {
        pango_script_iter_get_range(script_iter_ptr, start, end, script)
    
    }

    /// Advances a `PangoScriptIter` to the next range. If `iter`
    /// is already at the end, it is left unchanged and `false`
    /// is returned.
    @inlinable func next() -> Bool {
        let rv = ((pango_script_iter_next(script_iter_ptr)) != 0)
        return rv
    }


}



