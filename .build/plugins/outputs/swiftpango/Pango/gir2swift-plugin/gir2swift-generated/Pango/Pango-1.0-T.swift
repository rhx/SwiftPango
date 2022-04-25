import CGLib
import CHarfBuzz
import CPango
import GLib
import GLibObject
import HarfBuzz
// MARK: - TabArray Record

/// A `PangoTabArray` contains an array of tab stops.
/// 
/// `PangoTabArray` can be used to set tab stops in a `PangoLayout`.
/// Each tab stop has an alignment, a position, and optionally
/// a character to use as decimal point.
///
/// The `TabArrayProtocol` protocol exposes the methods and properties of an underlying `PangoTabArray` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TabArray`.
/// Alternatively, use `TabArrayRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TabArrayProtocol {
        /// Untyped pointer to the underlying `PangoTabArray` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoTabArray` instance.
    var tab_array_ptr: UnsafeMutablePointer<PangoTabArray>! { get }

    /// Required Initialiser for types conforming to `TabArrayProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `PangoTabArray` contains an array of tab stops.
/// 
/// `PangoTabArray` can be used to set tab stops in a `PangoLayout`.
/// Each tab stop has an alignment, a position, and optionally
/// a character to use as decimal point.
///
/// The `TabArrayRef` type acts as a lightweight Swift reference to an underlying `PangoTabArray` instance.
/// It exposes methods that can operate on this data type through `TabArrayProtocol` conformance.
/// Use `TabArrayRef` only as an `unowned` reference to an existing `PangoTabArray` instance.
///
public struct TabArrayRef: TabArrayProtocol {
        /// Untyped pointer to the underlying `PangoTabArray` instance.
    /// For type-safe access, use the generated, typed pointer `tab_array_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TabArrayRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoTabArray>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoTabArray>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoTabArray>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoTabArray>?) {
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

    /// Reference intialiser for a related type that implements `TabArrayProtocol`
    @inlinable init<T: TabArrayProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TabArrayProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TabArrayProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TabArrayProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TabArrayProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TabArrayProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates an array of `initial_size` tab stops.
    /// 
    /// Tab stops are specified in pixel units if `positions_in_pixels` is `true`,
    /// otherwise in Pango units. All stops are initially at position 0.
    @inlinable init( initialSize: Int, positionsInPixels: Bool) {
            let result = pango_tab_array_new(gint(initialSize), gboolean((positionsInPixels) ? 1 : 0))
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }


    // *** newWithPositions() is not available because it has a varargs (...) parameter!


    // *** newWithPositions() is not available because it has a varargs (...) parameter!


    /// Deserializes a `PangoTabArray` from a string.
    /// 
    /// This is the counterpart to [method`Pango.TabArray.to_string`].
    /// See that functions for details about the format.
    @inlinable static func from(string text: UnsafePointer<CChar>!) -> Pango.TabArrayRef! {
            let result = pango_tab_array_from_string(text)
        guard let rv = TabArrayRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }
}

/// A `PangoTabArray` contains an array of tab stops.
/// 
/// `PangoTabArray` can be used to set tab stops in a `PangoLayout`.
/// Each tab stop has an alignment, a position, and optionally
/// a character to use as decimal point.
///
/// The `TabArray` type acts as an owner of an underlying `PangoTabArray` instance.
/// It provides the methods that can operate on this data type through `TabArrayProtocol` conformance.
/// Use `TabArray` as a strong reference or owner of a `PangoTabArray` instance.
///
open class TabArray: TabArrayProtocol {
        /// Untyped pointer to the underlying `PangoTabArray` instance.
    /// For type-safe access, use the generated, typed pointer `tab_array_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TabArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoTabArray>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TabArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoTabArray>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TabArray` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TabArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TabArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoTabArray>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TabArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoTabArray>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoTabArray` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TabArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoTabArray>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoTabArray, cannot ref(tab_array_ptr)
    }

    /// Reference intialiser for a related type that implements `TabArrayProtocol`
    /// `PangoTabArray` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TabArrayProtocol`
    @inlinable public init<T: TabArrayProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoTabArray, cannot ref(tab_array_ptr)
    }

    /// Do-nothing destructor for `PangoTabArray`.
    deinit {
        // no reference counting for PangoTabArray, cannot unref(tab_array_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TabArrayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TabArrayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoTabArray, cannot ref(tab_array_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TabArrayProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TabArrayProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoTabArray, cannot ref(tab_array_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TabArrayProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TabArrayProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoTabArray, cannot ref(tab_array_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TabArrayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TabArrayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoTabArray, cannot ref(tab_array_ptr)
    }

    /// Creates an array of `initial_size` tab stops.
    /// 
    /// Tab stops are specified in pixel units if `positions_in_pixels` is `true`,
    /// otherwise in Pango units. All stops are initially at position 0.
    @inlinable public init( initialSize: Int, positionsInPixels: Bool) {
            let result = pango_tab_array_new(gint(initialSize), gboolean((positionsInPixels) ? 1 : 0))
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }


    // *** newWithPositions() is not available because it has a varargs (...) parameter!



    // *** newWithPositions() is not available because it has a varargs (...) parameter!


    /// Deserializes a `PangoTabArray` from a string.
    /// 
    /// This is the counterpart to [method`Pango.TabArray.to_string`].
    /// See that functions for details about the format.
    @inlinable public static func from(string text: UnsafePointer<CChar>!) -> Pango.TabArray! {
            let result = pango_tab_array_from_string(text)
        guard let rv = TabArray(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

}

// MARK: no TabArray properties

// MARK: no TabArray signals

// MARK: TabArray has no signals
// MARK: TabArray Record: TabArrayProtocol extension (methods and fields)
public extension TabArrayProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoTabArray` instance.
    @inlinable var tab_array_ptr: UnsafeMutablePointer<PangoTabArray>! { return ptr?.assumingMemoryBound(to: PangoTabArray.self) }

    /// Copies a `PangoTabArray`.
    @inlinable func copy() -> Pango.TabArrayRef! {
        let result = pango_tab_array_copy(tab_array_ptr)
        guard let rv = TabArrayRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Frees a tab array and associated resources.
    @inlinable func free() {
        
        pango_tab_array_free(tab_array_ptr)
        
    }

    /// Gets the Unicode character to use as decimal point.
    /// 
    /// This is only relevant for tabs with `PANGO_TAB_DECIMAL` alignment,
    /// which align content at the first occurrence of the decimal point
    /// character.
    /// 
    /// The default value of 0 means that Pango will use the
    /// decimal point according to the current locale.
    @inlinable func getDecimalPoint(tabIndex: Int) -> gunichar {
        let result = pango_tab_array_get_decimal_point(tab_array_ptr, gint(tabIndex))
        let rv = result
        return rv
    }

    /// Returns `true` if the tab positions are in pixels,
    /// `false` if they are in Pango units.
    @inlinable func getPositionsInPixels() -> Bool {
        let result = pango_tab_array_get_positions_in_pixels(tab_array_ptr)
        let rv = ((result) != 0)
        return rv
    }

    /// Gets the number of tab stops in `tab_array`.
    @inlinable func getSize() -> Int {
        let result = pango_tab_array_get_size(tab_array_ptr)
        let rv = Int(result)
        return rv
    }

    /// Gets the alignment and position of a tab stop.
    @inlinable func getTab(tabIndex: Int, alignment: UnsafeMutablePointer<PangoTabAlign>! = nil, location: UnsafeMutablePointer<gint>! = nil) {
        
        pango_tab_array_get_tab(tab_array_ptr, gint(tabIndex), alignment, location)
        
    }

    /// If non-`nil`, `alignments` and `locations` are filled with allocated
    /// arrays.
    /// 
    /// The arrays are of length [method`Pango.TabArray.get_size`].
    /// You must free the returned array.
    @inlinable func getTabs(alignments: UnsafeMutablePointer<UnsafeMutablePointer<PangoTabAlign>?>! = nil, locations: UnsafeMutablePointer<UnsafeMutablePointer<gint>?>! = nil) {
        
        pango_tab_array_get_tabs(tab_array_ptr, alignments, locations)
        
    }

    /// Resizes a tab array.
    /// 
    /// You must subsequently initialize any tabs
    /// that were added as a result of growing the array.
    @inlinable func resize(newSize: Int) {
        
        pango_tab_array_resize(tab_array_ptr, gint(newSize))
        
    }

    /// Sets the Unicode character to use as decimal point.
    /// 
    /// This is only relevant for tabs with `PANGO_TAB_DECIMAL` alignment,
    /// which align content at the first occurrence of the decimal point
    /// character.
    /// 
    /// By default, Pango uses the decimal point according
    /// to the current locale.
    @inlinable func setDecimalPoint(tabIndex: Int, decimalPoint: gunichar) {
        
        pango_tab_array_set_decimal_point(tab_array_ptr, gint(tabIndex), decimalPoint)
        
    }

    /// Sets whether positions in this array are specified in
    /// pixels.
    @inlinable func set(positionsInPixels: Bool) {
        
        pango_tab_array_set_positions_in_pixels(tab_array_ptr, gboolean((positionsInPixels) ? 1 : 0))
        
    }

    /// Sets the alignment and location of a tab stop.
    @inlinable func setTab(tabIndex: Int, alignment: PangoTabAlign, location: Int) {
        
        pango_tab_array_set_tab(tab_array_ptr, gint(tabIndex), alignment, gint(location))
        
    }

    /// Utility function to ensure that the tab stops are in increasing order.
    @inlinable func sort() {
        
        pango_tab_array_sort(tab_array_ptr)
        
    }

    /// Serializes a `PangoTabArray` to a string.
    /// 
    /// No guarantees are made about the format of the string,
    /// it may change between Pango versions.
    /// 
    /// The intended use of this function is testing and
    /// debugging. The format is not meant as a permanent
    /// storage format.
    @inlinable func toString() -> String! {
        let result = pango_tab_array_to_string(tab_array_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }
    /// Returns `true` if the tab positions are in pixels,
    /// `false` if they are in Pango units.
    @inlinable var positionsInPixels: Bool {
        /// Returns `true` if the tab positions are in pixels,
        /// `false` if they are in Pango units.
        get {
            let result = pango_tab_array_get_positions_in_pixels(tab_array_ptr)
        let rv = ((result) != 0)
            return rv
        }
        /// Sets whether positions in this array are specified in
        /// pixels.
        nonmutating set {
            pango_tab_array_set_positions_in_pixels(tab_array_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the number of tab stops in `tab_array`.
    @inlinable var size: Int {
        /// Gets the number of tab stops in `tab_array`.
        get {
            let result = pango_tab_array_get_size(tab_array_ptr)
        let rv = Int(result)
            return rv
        }
    }


}



