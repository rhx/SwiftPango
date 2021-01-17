import CGLib
import CPango
import GLib
import GLibObject

// MARK: - IncludedModule Record

/// The `IncludedModuleProtocol` protocol exposes the methods and properties of an underlying `PangoIncludedModule` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IncludedModule`.
/// Alternatively, use `IncludedModuleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoIncludedModule` structure for a statically linked module
/// contains the functions that would otherwise be loaded from a dynamically
/// loaded module.
public protocol IncludedModuleProtocol {
        /// Untyped pointer to the underlying `PangoIncludedModule` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoIncludedModule` instance.
    var _ptr: UnsafeMutablePointer<PangoIncludedModule>! { get }

}

/// The `IncludedModuleRef` type acts as a lightweight Swift reference to an underlying `PangoIncludedModule` instance.
/// It exposes methods that can operate on this data type through `IncludedModuleProtocol` conformance.
/// Use `IncludedModuleRef` only as an `unowned` reference to an existing `PangoIncludedModule` instance.
///
/// The `PangoIncludedModule` structure for a statically linked module
/// contains the functions that would otherwise be loaded from a dynamically
/// loaded module.
public struct IncludedModuleRef: IncludedModuleProtocol {
        /// Untyped pointer to the underlying `PangoIncludedModule` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IncludedModuleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoIncludedModule>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoIncludedModule>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoIncludedModule>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoIncludedModule>?) {
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

    /// Reference intialiser for a related type that implements `IncludedModuleProtocol`
    @inlinable init<T: IncludedModuleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IncludedModuleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IncludedModuleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IncludedModuleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IncludedModuleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IncludedModuleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `IncludedModule` type acts as an owner of an underlying `PangoIncludedModule` instance.
/// It provides the methods that can operate on this data type through `IncludedModuleProtocol` conformance.
/// Use `IncludedModule` as a strong reference or owner of a `PangoIncludedModule` instance.
///
/// The `PangoIncludedModule` structure for a statically linked module
/// contains the functions that would otherwise be loaded from a dynamically
/// loaded module.
open class IncludedModule: IncludedModuleProtocol {
        /// Untyped pointer to the underlying `PangoIncludedModule` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IncludedModule` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoIncludedModule>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IncludedModule` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoIncludedModule>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IncludedModule` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IncludedModule` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IncludedModule` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoIncludedModule>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IncludedModule` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoIncludedModule>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoIncludedModule` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `IncludedModule` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoIncludedModule>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoIncludedModule, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `IncludedModuleProtocol`
    /// `PangoIncludedModule` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `IncludedModuleProtocol`
    @inlinable public init<T: IncludedModuleProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoIncludedModule, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `PangoIncludedModule`.
    deinit {
        // no reference counting for PangoIncludedModule, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IncludedModuleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IncludedModuleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoIncludedModule, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IncludedModuleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IncludedModuleProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoIncludedModule, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IncludedModuleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IncludedModuleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoIncludedModule, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IncludedModuleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IncludedModuleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoIncludedModule, cannot ref(_ptr)
    }



}

// MARK: no IncludedModule properties

// MARK: no IncludedModule signals

// MARK: IncludedModule has no signals
// MARK: IncludedModule Record: IncludedModuleProtocol extension (methods and fields)
public extension IncludedModuleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoIncludedModule` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoIncludedModule>! { return ptr?.assumingMemoryBound(to: PangoIncludedModule.self) }

    /// Do not use.  Does not do anything.
    ///
    /// **module_register is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) @inlinable func moduleRegister() {
        pango_module_register(_ptr)
    
    }

    // var list is unavailable because list is void

    // var `init` is unavailable because init is void

    // var exit is unavailable because exit is void

    // var create is unavailable because create is void

}



