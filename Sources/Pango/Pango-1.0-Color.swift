import CGLib
import CPango
import GLib
import GLibObject

// MARK: - Color Record

/// The `PangoColor` structure is used to
/// represent a color in an uncalibrated RGB color-space.
///
/// The `ColorProtocol` protocol exposes the methods and properties of an underlying `PangoColor` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Color`.
/// Alternatively, use `ColorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ColorProtocol {
        /// Untyped pointer to the underlying `PangoColor` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoColor` instance.
    var color_ptr: UnsafeMutablePointer<PangoColor>! { get }

    /// Required Initialiser for types conforming to `ColorProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `PangoColor` structure is used to
/// represent a color in an uncalibrated RGB color-space.
///
/// The `ColorRef` type acts as a lightweight Swift reference to an underlying `PangoColor` instance.
/// It exposes methods that can operate on this data type through `ColorProtocol` conformance.
/// Use `ColorRef` only as an `unowned` reference to an existing `PangoColor` instance.
///
public struct ColorRef: ColorProtocol {
        /// Untyped pointer to the underlying `PangoColor` instance.
    /// For type-safe access, use the generated, typed pointer `color_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ColorRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoColor>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoColor>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoColor>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoColor>?) {
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

    /// Reference intialiser for a related type that implements `ColorProtocol`
    @inlinable init<T: ColorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PangoColor` structure is used to
/// represent a color in an uncalibrated RGB color-space.
///
/// The `Color` type acts as an owner of an underlying `PangoColor` instance.
/// It provides the methods that can operate on this data type through `ColorProtocol` conformance.
/// Use `Color` as a strong reference or owner of a `PangoColor` instance.
///
open class Color: ColorProtocol {
        /// Untyped pointer to the underlying `PangoColor` instance.
    /// For type-safe access, use the generated, typed pointer `color_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Color` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoColor>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Color` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoColor>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Color` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Color` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Color` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoColor>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Color` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoColor>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoColor` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Color` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoColor>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoColor, cannot ref(color_ptr)
    }

    /// Reference intialiser for a related type that implements `ColorProtocol`
    /// `PangoColor` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ColorProtocol`
    @inlinable public init<T: ColorProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoColor, cannot ref(color_ptr)
    }

    /// Do-nothing destructor for `PangoColor`.
    deinit {
        // no reference counting for PangoColor, cannot unref(color_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoColor, cannot ref(color_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoColor, cannot ref(color_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoColor, cannot ref(color_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoColor, cannot ref(color_ptr)
    }



}

// MARK: no Color properties

// MARK: no Color signals

// MARK: Color has no signals
// MARK: Color Record: ColorProtocol extension (methods and fields)
public extension ColorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoColor` instance.
    @inlinable var color_ptr: UnsafeMutablePointer<PangoColor>! { return ptr?.assumingMemoryBound(to: PangoColor.self) }

    /// Creates a copy of `src`.
    /// 
    /// The copy should be freed with [method`Pango.Color.free`].
    /// Primarily used by language bindings, not that useful
    /// otherwise (since colors can just be copied by assignment
    /// in C).
    @inlinable func copy() -> ColorRef! {
        guard let rv = ColorRef(gconstpointer: gconstpointer(pango_color_copy(color_ptr))) else { return nil }
        return rv
    }

    /// Frees a color allocated by [method`Pango.Color.copy`].
    @inlinable func free() {
        pango_color_free(color_ptr)
    
    }

    /// Fill in the fields of a color from a string specification.
    /// 
    /// The string can either one of a large set of standard names.
    /// (Taken from the CSS Color [specification](https://www.w3.org/TR/css-color-4/`named-colors`),
    /// or it can be a value in the form ``rgb``, ``rrggbb``,
    /// ``rrrgggbbb`` or ``rrrrggggbbbb``, where `r`, `g` and `b`
    /// are hex digits of the red, green, and blue components
    /// of the color, respectively. (White in the four forms is
    /// ``fff``, ``ffffff``, ``fffffffff`` and ``ffffffffffff``.)
    @inlinable func parse(spec: UnsafePointer<CChar>!) -> Bool {
        let rv = ((pango_color_parse(color_ptr, spec)) != 0)
        return rv
    }

    /// Fill in the fields of a color from a string specification.
    /// 
    /// The string can either one of a large set of standard names.
    /// (Taken from the CSS Color [specification](https://www.w3.org/TR/css-color-4/`named-colors`),
    /// or it can be a hexadecimal value in the form ``rgb``,
    /// ``rrggbb``, ``rrrgggbbb`` or ``rrrrggggbbbb`` where `r`, `g`
    /// and `b` are hex digits of the red, green, and blue components
    /// of the color, respectively. (White in the four forms is
    /// ``fff``, ``ffffff``, ``fffffffff`` and ``ffffffffffff``.)
    /// 
    /// Additionally, parse strings of the form ``rgba``, ``rrggbbaa``,
    /// ``rrrrggggbbbbaaaa``, if `alpha` is not `nil`, and set `alpha`
    /// to the value specified by the hex digits for `a`. If no alpha
    /// component is found in `spec`, `alpha` is set to 0xffff (for a
    /// solid color).
    @inlinable func parseWith(alpha: UnsafeMutablePointer<guint16>! = nil, spec: UnsafePointer<CChar>!) -> Bool {
        let rv = ((pango_color_parse_with_alpha(color_ptr, alpha, spec)) != 0)
        return rv
    }

    /// Returns a textual specification of `color`.
    /// 
    /// The string is in the hexadecimal form ``rrrrggggbbbb``,
    /// where `r`, `g` and `b` are hex digits representing the
    /// red, green, and blue components respectively.
    @inlinable func toString() -> String! {
        let rv = pango_color_to_string(color_ptr).map({ String(cString: $0) })
        return rv
    }

    /// value of red component
    @inlinable var red: guint16 {
        /// value of red component
        get {
            let rv = color_ptr.pointee.red
            return rv
        }
        /// value of red component
         set {
            color_ptr.pointee.red = newValue
        }
    }

    /// value of green component
    @inlinable var green: guint16 {
        /// value of green component
        get {
            let rv = color_ptr.pointee.green
            return rv
        }
        /// value of green component
         set {
            color_ptr.pointee.green = newValue
        }
    }

    /// value of blue component
    @inlinable var blue: guint16 {
        /// value of blue component
        get {
            let rv = color_ptr.pointee.blue
            return rv
        }
        /// value of blue component
         set {
            color_ptr.pointee.blue = newValue
        }
    }

}



