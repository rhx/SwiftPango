import CGLib
import CPango
import GLib
import GLibObject

// MARK: - TabArray Record

/// The `TabArrayProtocol` protocol exposes the methods and properties of an underlying `PangoTabArray` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TabArray`.
/// Alternatively, use `TabArrayRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `PangoTabArray` struct contains an array
/// of tab stops. Each tab stop has an alignment and a position.
public protocol TabArrayProtocol {
        /// Untyped pointer to the underlying `PangoTabArray` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoTabArray` instance.
    var tab_array_ptr: UnsafeMutablePointer<PangoTabArray> { get }
}

/// The `TabArrayRef` type acts as a lightweight Swift reference to an underlying `PangoTabArray` instance.
/// It exposes methods that can operate on this data type through `TabArrayProtocol` conformance.
/// Use `TabArrayRef` only as an `unowned` reference to an existing `PangoTabArray` instance.
///
/// A `PangoTabArray` struct contains an array
/// of tab stops. Each tab stop has an alignment and a position.
public struct TabArrayRef: TabArrayProtocol {
        /// Untyped pointer to the underlying `PangoTabArray` instance.
    /// For type-safe access, use the generated, typed pointer `tab_array_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TabArrayRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoTabArray>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TabArrayProtocol`
    init<T: TabArrayProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TabArrayProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TabArrayProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TabArrayProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TabArrayProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TabArrayProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates an array of `initial_size` tab stops. Tab stops are specified in
    /// pixel units if `positions_in_pixels` is `true`, otherwise in Pango
    /// units. All stops are initially at position 0.
    init( initial_size: CInt, positionsInPixels positions_in_pixels: Bool) {
        let rv: UnsafeMutablePointer<PangoTabArray>! = cast(pango_tab_array_new(gint(initial_size), gboolean(positions_in_pixels ? 1 : 0)))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }


    // *** newWithPositions() is not available because it has a varargs (...) parameter!


    // *** newWithPositions() is not available because it has a varargs (...) parameter!

}

/// The `TabArray` type acts as an owner of an underlying `PangoTabArray` instance.
/// It provides the methods that can operate on this data type through `TabArrayProtocol` conformance.
/// Use `TabArray` as a strong reference or owner of a `PangoTabArray` instance.
///
/// A `PangoTabArray` struct contains an array
/// of tab stops. Each tab stop has an alignment and a position.
open class TabArray: TabArrayProtocol {
        /// Untyped pointer to the underlying `PangoTabArray` instance.
    /// For type-safe access, use the generated, typed pointer `tab_array_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TabArray` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<PangoTabArray>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoTabArray` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TabArray` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<PangoTabArray>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoTabArray, cannot ref(cast(tab_array_ptr))
    }

    /// Reference intialiser for a related type that implements `TabArrayProtocol`
    /// `PangoTabArray` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TabArrayProtocol`
    public init<T: TabArrayProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.tab_array_ptr)
        // no reference counting for PangoTabArray, cannot ref(cast(tab_array_ptr))
    }

    /// Do-nothing destructor for `PangoTabArray`.
    deinit {
        // no reference counting for PangoTabArray, cannot unref(cast(tab_array_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TabArrayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TabArrayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoTabArray, cannot ref(cast(tab_array_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TabArrayProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TabArrayProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoTabArray, cannot ref(cast(tab_array_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TabArrayProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TabArrayProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoTabArray, cannot ref(cast(tab_array_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TabArrayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TabArrayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoTabArray, cannot ref(cast(tab_array_ptr))
    }

    /// Creates an array of `initial_size` tab stops. Tab stops are specified in
    /// pixel units if `positions_in_pixels` is `true`, otherwise in Pango
    /// units. All stops are initially at position 0.
    public init( initial_size: CInt, positionsInPixels positions_in_pixels: Bool) {
        let rv: UnsafeMutablePointer<PangoTabArray>! = cast(pango_tab_array_new(gint(initial_size), gboolean(positions_in_pixels ? 1 : 0)))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }


    // *** newWithPositions() is not available because it has a varargs (...) parameter!



    // *** newWithPositions() is not available because it has a varargs (...) parameter!


}

// MARK: no TabArray properties

// MARK: no TabArray signals


// MARK: TabArray Record: TabArrayProtocol extension (methods and fields)
public extension TabArrayProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoTabArray` instance.
    var tab_array_ptr: UnsafeMutablePointer<PangoTabArray> { return ptr.assumingMemoryBound(to: PangoTabArray.self) }

    /// Copies a `PangoTabArray`
    func copy() -> UnsafeMutablePointer<PangoTabArray>! {
        let rv: UnsafeMutablePointer<PangoTabArray>! = cast(pango_tab_array_copy(cast(tab_array_ptr)))
        return cast(rv)
    }

    /// Frees a tab array and associated resources.
    func free() {
        pango_tab_array_free(cast(tab_array_ptr))
    
    }

    /// Returns `true` if the tab positions are in pixels, `false` if they are
    /// in Pango units.
    func getPositionsInPixels() -> Bool {
        let rv = pango_tab_array_get_positions_in_pixels(cast(tab_array_ptr))
        return Bool(rv != 0)
    }

    /// Gets the number of tab stops in `tab_array`.
    func getSize() -> Int {
        let rv: Int = cast(pango_tab_array_get_size(cast(tab_array_ptr)))
        return Int(rv)
    }

    /// Gets the alignment and position of a tab stop.
    func getTab(tabIndex tab_index: CInt, alignment: UnsafeMutablePointer<PangoTabAlign>, location: UnsafeMutablePointer<CInt>) {
        pango_tab_array_get_tab(cast(tab_array_ptr), gint(tab_index), cast(alignment), cast(location))
    
    }

    /// If non-`nil`, `alignments` and `locations` are filled with allocated
    /// arrays of length `pango_tab_array_get_size()`. You must free the
    /// returned array.
    func getTabs(alignments: UnsafeMutablePointer<UnsafeMutablePointer<PangoTabAlign>>, locations: UnsafeMutablePointer<UnsafeMutablePointer<CInt>>) {
        pango_tab_array_get_tabs(cast(tab_array_ptr), cast(alignments), cast(locations))
    
    }

    /// Resizes a tab array. You must subsequently initialize any tabs that
    /// were added as a result of growing the array.
    func resize(newSize new_size: CInt) {
        pango_tab_array_resize(cast(tab_array_ptr), gint(new_size))
    
    }

    /// Sets the alignment and location of a tab stop.
    /// `alignment` must always be `PANGO_TAB_LEFT` in the current
    /// implementation.
    func setTab(tabIndex tab_index: CInt, alignment: TabAlign, location: CInt) {
        pango_tab_array_set_tab(cast(tab_array_ptr), gint(tab_index), alignment, gint(location))
    
    }
    /// Returns `true` if the tab positions are in pixels, `false` if they are
    /// in Pango units.
    var positionsInPixels: Bool {
        /// Returns `true` if the tab positions are in pixels, `false` if they are
        /// in Pango units.
        get {
            let rv = pango_tab_array_get_positions_in_pixels(cast(tab_array_ptr))
            return Bool(rv != 0)
        }
    }

    /// Gets the number of tab stops in `tab_array`.
    var size: Int {
        /// Gets the number of tab stops in `tab_array`.
        get {
            let rv: Int = cast(pango_tab_array_get_size(cast(tab_array_ptr)))
            return Int(rv)
        }
    }


}



