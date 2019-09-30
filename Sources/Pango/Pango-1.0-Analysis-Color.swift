import CGLib
import CPango
import GLib
import GLibObject

// MARK: - Analysis Record

/// The `AnalysisProtocol` protocol exposes the methods and properties of an underlying `PangoAnalysis` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Analysis`.
/// Alternatively, use `AnalysisRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoAnalysis` structure stores information about
/// the properties of a segment of text.
public protocol AnalysisProtocol {
    /// Untyped pointer to the underlying `PangoAnalysis` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoAnalysis` instance.
    var _ptr: UnsafeMutablePointer<PangoAnalysis> { get }
}

/// The `AnalysisRef` type acts as a lightweight Swift reference to an underlying `PangoAnalysis` instance.
/// It exposes methods that can operate on this data type through `AnalysisProtocol` conformance.
/// Use `AnalysisRef` only as an `unowned` reference to an existing `PangoAnalysis` instance.
///
/// The `PangoAnalysis` structure stores information about
/// the properties of a segment of text.
public struct AnalysisRef: AnalysisProtocol {
    /// Untyped pointer to the underlying `PangoAnalysis` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AnalysisRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoAnalysis>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AnalysisProtocol`
    init<T: AnalysisProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AnalysisProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AnalysisProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AnalysisProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AnalysisProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AnalysisProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Analysis` type acts as an owner of an underlying `PangoAnalysis` instance.
/// It provides the methods that can operate on this data type through `AnalysisProtocol` conformance.
/// Use `Analysis` as a strong reference or owner of a `PangoAnalysis` instance.
///
/// The `PangoAnalysis` structure stores information about
/// the properties of a segment of text.
open class Analysis: AnalysisProtocol {
    /// Untyped pointer to the underlying `PangoAnalysis` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Analysis` instance.
    public init(_ op: UnsafeMutablePointer<PangoAnalysis>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `AnalysisProtocol`
    /// `PangoAnalysis` does not allow reference counting.
    public convenience init<T: AnalysisProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for PangoAnalysis, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`PangoAnalysis`.
    deinit {
        // no reference counting for PangoAnalysis, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AnalysisProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoAnalysis.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AnalysisProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoAnalysis.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AnalysisProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoAnalysis.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AnalysisProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoAnalysis>(opaquePointer))
    }



}

// MARK: - no Analysis properties

// MARK: - no signals


public extension AnalysisProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoAnalysis` instance.
    var _ptr: UnsafeMutablePointer<PangoAnalysis> { return ptr.assumingMemoryBound(to: PangoAnalysis.self) }

    /// Determines possible line, word, and character breaks
    /// for a string of Unicode text with a single analysis.
    /// For most purposes you may want to use pango_get_log_attrs().
    ///
    /// **break is deprecated:**
    /// Use pango_default_break() and pango_tailor_break()
    @available(*, deprecated) func break_(text: UnsafePointer<gchar>, length: CInt, attrs: UnsafeMutablePointer<PangoLogAttr>, attrsLen attrs_len: CInt) {
        pango_break(text, length, cast(_ptr), cast(attrs), attrs_len)
    
    }

    /// This is the default break algorithm. It applies Unicode
    /// rules without language-specific tailoring, therefore
    /// the `analyis` argument is unused and can be `nil`.
    /// 
    /// See pango_tailor_break() for language-specific breaks.
    func defaultBreak(text: UnsafePointer<gchar>, length: CInt, attrs: LogAttrProtocol, attrsLen attrs_len: CInt) {
        pango_default_break(text, length, cast(_ptr), cast(attrs.ptr), attrs_len)
    
    }

    /// Given a segment of text and the corresponding
    /// `PangoAnalysis` structure returned from pango_itemize(),
    /// convert the characters into glyphs. You may also pass
    /// in only a substring of the item from pango_itemize().
    /// 
    /// It is recommended that you use pango_shape_full() instead, since
    /// that API allows for shaping interaction happening across text item
    /// boundaries.
    func shape(text: UnsafePointer<CChar>, length: CInt, glyphs: GlyphStringProtocol) {
        pango_shape(text, length, cast(_ptr), cast(glyphs.ptr))
    
    }

    /// Given a segment of text and the corresponding
    /// `PangoAnalysis` structure returned from pango_itemize(),
    /// convert the characters into glyphs. You may also pass
    /// in only a substring of the item from pango_itemize().
    /// 
    /// This is similar to pango_shape(), except it also can optionally take
    /// the full paragraph text as input, which will then be used to perform
    /// certain cross-item shaping interactions.  If you have access to the broader
    /// text of which `item_text` is part of, provide the broader text as
    /// `paragraph_text`.  If `paragraph_text` is `nil`, item text is used instead.
    func shapeFull(itemText item_text: UnsafePointer<CChar>, itemLength item_length: CInt, paragraphText paragraph_text: UnsafePointer<CChar>, paragraphLength paragraph_length: CInt, glyphs: GlyphStringProtocol) {
        pango_shape_full(item_text, item_length, paragraph_text, paragraph_length, cast(_ptr), cast(glyphs.ptr))
    
    }

    /// Given a segment of text and the corresponding
    /// `PangoAnalysis` structure returned from pango_itemize(),
    /// convert the characters into glyphs. You may also pass
    /// in only a substring of the item from pango_itemize().
    /// 
    /// This is similar to pango_shape_full(), except it also takes
    /// flags that can influence the shaping process.
    func shapeWithFlags(itemText item_text: UnsafePointer<CChar>, itemLength item_length: CInt, paragraphText paragraph_text: UnsafePointer<CChar>, paragraphLength paragraph_length: CInt, glyphs: GlyphStringProtocol, flags: ShapeFlags) {
        pango_shape_with_flags(item_text, item_length, paragraph_text, paragraph_length, cast(_ptr), cast(glyphs.ptr), flags)
    
    }

    /// Apply language-specific tailoring to the breaks in
    /// `log_attrs`, which are assumed to have been produced
    /// by pango_default_break().
    /// 
    /// If `offset` is not -1, it is used to apply attributes
    /// from `analysis` that are relevant to line breaking.
    func tailorBreak(text: UnsafePointer<CChar>, length: CInt, offset: CInt, logAttrs log_attrs: UnsafeMutablePointer<PangoLogAttr>, logAttrsLen log_attrs_len: CInt) {
        pango_tailor_break(text, length, cast(_ptr), offset, cast(log_attrs), log_attrs_len)
    
    }
}



// MARK: - AttrClass Record

/// The `AttrClassProtocol` protocol exposes the methods and properties of an underlying `PangoAttrClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AttrClass`.
/// Alternatively, use `AttrClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoAttrClass` structure stores the type and operations for
/// a particular type of attribute. The functions in this structure should
/// not be called directly. Instead, one should use the wrapper functions
/// provided for `PangoAttribute`.
public protocol AttrClassProtocol {
    /// Untyped pointer to the underlying `PangoAttrClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoAttrClass` instance.
    var _ptr: UnsafeMutablePointer<PangoAttrClass> { get }
}

/// The `AttrClassRef` type acts as a lightweight Swift reference to an underlying `PangoAttrClass` instance.
/// It exposes methods that can operate on this data type through `AttrClassProtocol` conformance.
/// Use `AttrClassRef` only as an `unowned` reference to an existing `PangoAttrClass` instance.
///
/// The `PangoAttrClass` structure stores the type and operations for
/// a particular type of attribute. The functions in this structure should
/// not be called directly. Instead, one should use the wrapper functions
/// provided for `PangoAttribute`.
public struct AttrClassRef: AttrClassProtocol {
    /// Untyped pointer to the underlying `PangoAttrClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AttrClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoAttrClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AttrClassProtocol`
    init<T: AttrClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AttrClass` type acts as an owner of an underlying `PangoAttrClass` instance.
/// It provides the methods that can operate on this data type through `AttrClassProtocol` conformance.
/// Use `AttrClass` as a strong reference or owner of a `PangoAttrClass` instance.
///
/// The `PangoAttrClass` structure stores the type and operations for
/// a particular type of attribute. The functions in this structure should
/// not be called directly. Instead, one should use the wrapper functions
/// provided for `PangoAttribute`.
open class AttrClass: AttrClassProtocol {
    /// Untyped pointer to the underlying `PangoAttrClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AttrClass` instance.
    public init(_ op: UnsafeMutablePointer<PangoAttrClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `AttrClassProtocol`
    /// `PangoAttrClass` does not allow reference counting.
    public convenience init<T: AttrClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for PangoAttrClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`PangoAttrClass`.
    deinit {
        // no reference counting for PangoAttrClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoAttrClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoAttrClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoAttrClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoAttrClass>(opaquePointer))
    }



}

// MARK: - no AttrClass properties

// MARK: - no signals


public extension AttrClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoAttrClass` instance.
    var _ptr: UnsafeMutablePointer<PangoAttrClass> { return ptr.assumingMemoryBound(to: PangoAttrClass.self) }

}



// MARK: - AttrColor Record

/// The `AttrColorProtocol` protocol exposes the methods and properties of an underlying `PangoAttrColor` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AttrColor`.
/// Alternatively, use `AttrColorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoAttrColor` structure is used to represent attributes that
/// are colors.
public protocol AttrColorProtocol {
    /// Untyped pointer to the underlying `PangoAttrColor` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoAttrColor` instance.
    var _ptr: UnsafeMutablePointer<PangoAttrColor> { get }
}

/// The `AttrColorRef` type acts as a lightweight Swift reference to an underlying `PangoAttrColor` instance.
/// It exposes methods that can operate on this data type through `AttrColorProtocol` conformance.
/// Use `AttrColorRef` only as an `unowned` reference to an existing `PangoAttrColor` instance.
///
/// The `PangoAttrColor` structure is used to represent attributes that
/// are colors.
public struct AttrColorRef: AttrColorProtocol {
    /// Untyped pointer to the underlying `PangoAttrColor` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AttrColorRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoAttrColor>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AttrColorProtocol`
    init<T: AttrColorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrColorProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrColorProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrColorProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrColorProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrColorProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AttrColor` type acts as an owner of an underlying `PangoAttrColor` instance.
/// It provides the methods that can operate on this data type through `AttrColorProtocol` conformance.
/// Use `AttrColor` as a strong reference or owner of a `PangoAttrColor` instance.
///
/// The `PangoAttrColor` structure is used to represent attributes that
/// are colors.
open class AttrColor: AttrColorProtocol {
    /// Untyped pointer to the underlying `PangoAttrColor` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AttrColor` instance.
    public init(_ op: UnsafeMutablePointer<PangoAttrColor>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `AttrColorProtocol`
    /// `PangoAttrColor` does not allow reference counting.
    public convenience init<T: AttrColorProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for PangoAttrColor, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`PangoAttrColor`.
    deinit {
        // no reference counting for PangoAttrColor, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrColorProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoAttrColor.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrColorProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoAttrColor.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrColorProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoAttrColor.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrColorProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoAttrColor>(opaquePointer))
    }



}

// MARK: - no AttrColor properties

// MARK: - no signals


public extension AttrColorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoAttrColor` instance.
    var _ptr: UnsafeMutablePointer<PangoAttrColor> { return ptr.assumingMemoryBound(to: PangoAttrColor.self) }

}



// MARK: - AttrFloat Record

/// The `AttrFloatProtocol` protocol exposes the methods and properties of an underlying `PangoAttrFloat` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AttrFloat`.
/// Alternatively, use `AttrFloatRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoAttrFloat` structure is used to represent attributes with
/// a float or double value.
public protocol AttrFloatProtocol {
    /// Untyped pointer to the underlying `PangoAttrFloat` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoAttrFloat` instance.
    var _ptr: UnsafeMutablePointer<PangoAttrFloat> { get }
}

/// The `AttrFloatRef` type acts as a lightweight Swift reference to an underlying `PangoAttrFloat` instance.
/// It exposes methods that can operate on this data type through `AttrFloatProtocol` conformance.
/// Use `AttrFloatRef` only as an `unowned` reference to an existing `PangoAttrFloat` instance.
///
/// The `PangoAttrFloat` structure is used to represent attributes with
/// a float or double value.
public struct AttrFloatRef: AttrFloatProtocol {
    /// Untyped pointer to the underlying `PangoAttrFloat` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AttrFloatRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoAttrFloat>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AttrFloatProtocol`
    init<T: AttrFloatProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFloatProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFloatProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFloatProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFloatProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFloatProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AttrFloat` type acts as an owner of an underlying `PangoAttrFloat` instance.
/// It provides the methods that can operate on this data type through `AttrFloatProtocol` conformance.
/// Use `AttrFloat` as a strong reference or owner of a `PangoAttrFloat` instance.
///
/// The `PangoAttrFloat` structure is used to represent attributes with
/// a float or double value.
open class AttrFloat: AttrFloatProtocol {
    /// Untyped pointer to the underlying `PangoAttrFloat` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AttrFloat` instance.
    public init(_ op: UnsafeMutablePointer<PangoAttrFloat>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `AttrFloatProtocol`
    /// `PangoAttrFloat` does not allow reference counting.
    public convenience init<T: AttrFloatProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for PangoAttrFloat, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`PangoAttrFloat`.
    deinit {
        // no reference counting for PangoAttrFloat, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFloatProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoAttrFloat.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFloatProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoAttrFloat.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFloatProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoAttrFloat.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFloatProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoAttrFloat>(opaquePointer))
    }



}

// MARK: - no AttrFloat properties

// MARK: - no signals


public extension AttrFloatProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoAttrFloat` instance.
    var _ptr: UnsafeMutablePointer<PangoAttrFloat> { return ptr.assumingMemoryBound(to: PangoAttrFloat.self) }

}



// MARK: - AttrFontDesc Record

/// The `AttrFontDescProtocol` protocol exposes the methods and properties of an underlying `PangoAttrFontDesc` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AttrFontDesc`.
/// Alternatively, use `AttrFontDescRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoAttrFontDesc` structure is used to store an attribute that
/// sets all aspects of the font description at once.
public protocol AttrFontDescProtocol {
    /// Untyped pointer to the underlying `PangoAttrFontDesc` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoAttrFontDesc` instance.
    var _ptr: UnsafeMutablePointer<PangoAttrFontDesc> { get }
}

/// The `AttrFontDescRef` type acts as a lightweight Swift reference to an underlying `PangoAttrFontDesc` instance.
/// It exposes methods that can operate on this data type through `AttrFontDescProtocol` conformance.
/// Use `AttrFontDescRef` only as an `unowned` reference to an existing `PangoAttrFontDesc` instance.
///
/// The `PangoAttrFontDesc` structure is used to store an attribute that
/// sets all aspects of the font description at once.
public struct AttrFontDescRef: AttrFontDescProtocol {
    /// Untyped pointer to the underlying `PangoAttrFontDesc` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AttrFontDescRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoAttrFontDesc>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AttrFontDescProtocol`
    init<T: AttrFontDescProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontDescProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontDescProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontDescProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontDescProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontDescProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AttrFontDesc` type acts as an owner of an underlying `PangoAttrFontDesc` instance.
/// It provides the methods that can operate on this data type through `AttrFontDescProtocol` conformance.
/// Use `AttrFontDesc` as a strong reference or owner of a `PangoAttrFontDesc` instance.
///
/// The `PangoAttrFontDesc` structure is used to store an attribute that
/// sets all aspects of the font description at once.
open class AttrFontDesc: AttrFontDescProtocol {
    /// Untyped pointer to the underlying `PangoAttrFontDesc` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AttrFontDesc` instance.
    public init(_ op: UnsafeMutablePointer<PangoAttrFontDesc>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `AttrFontDescProtocol`
    /// `PangoAttrFontDesc` does not allow reference counting.
    public convenience init<T: AttrFontDescProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for PangoAttrFontDesc, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`PangoAttrFontDesc`.
    deinit {
        // no reference counting for PangoAttrFontDesc, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontDescProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoAttrFontDesc.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontDescProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoAttrFontDesc.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontDescProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoAttrFontDesc.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontDescProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoAttrFontDesc>(opaquePointer))
    }



}

// MARK: - no AttrFontDesc properties

// MARK: - no signals


public extension AttrFontDescProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoAttrFontDesc` instance.
    var _ptr: UnsafeMutablePointer<PangoAttrFontDesc> { return ptr.assumingMemoryBound(to: PangoAttrFontDesc.self) }

}



// MARK: - AttrFontFeatures Record

/// The `AttrFontFeaturesProtocol` protocol exposes the methods and properties of an underlying `PangoAttrFontFeatures` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AttrFontFeatures`.
/// Alternatively, use `AttrFontFeaturesRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoAttrFontFeatures` structure is used to represent OpenType
/// font features as an attribute.
public protocol AttrFontFeaturesProtocol {
    /// Untyped pointer to the underlying `PangoAttrFontFeatures` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoAttrFontFeatures` instance.
    var _ptr: UnsafeMutablePointer<PangoAttrFontFeatures> { get }
}

/// The `AttrFontFeaturesRef` type acts as a lightweight Swift reference to an underlying `PangoAttrFontFeatures` instance.
/// It exposes methods that can operate on this data type through `AttrFontFeaturesProtocol` conformance.
/// Use `AttrFontFeaturesRef` only as an `unowned` reference to an existing `PangoAttrFontFeatures` instance.
///
/// The `PangoAttrFontFeatures` structure is used to represent OpenType
/// font features as an attribute.
public struct AttrFontFeaturesRef: AttrFontFeaturesProtocol {
    /// Untyped pointer to the underlying `PangoAttrFontFeatures` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AttrFontFeaturesRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoAttrFontFeatures>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AttrFontFeaturesProtocol`
    init<T: AttrFontFeaturesProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontFeaturesProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontFeaturesProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontFeaturesProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontFeaturesProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontFeaturesProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AttrFontFeatures` type acts as an owner of an underlying `PangoAttrFontFeatures` instance.
/// It provides the methods that can operate on this data type through `AttrFontFeaturesProtocol` conformance.
/// Use `AttrFontFeatures` as a strong reference or owner of a `PangoAttrFontFeatures` instance.
///
/// The `PangoAttrFontFeatures` structure is used to represent OpenType
/// font features as an attribute.
open class AttrFontFeatures: AttrFontFeaturesProtocol {
    /// Untyped pointer to the underlying `PangoAttrFontFeatures` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AttrFontFeatures` instance.
    public init(_ op: UnsafeMutablePointer<PangoAttrFontFeatures>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `AttrFontFeaturesProtocol`
    /// `PangoAttrFontFeatures` does not allow reference counting.
    public convenience init<T: AttrFontFeaturesProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for PangoAttrFontFeatures, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`PangoAttrFontFeatures`.
    deinit {
        // no reference counting for PangoAttrFontFeatures, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontFeaturesProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoAttrFontFeatures.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontFeaturesProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoAttrFontFeatures.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontFeaturesProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoAttrFontFeatures.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrFontFeaturesProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoAttrFontFeatures>(opaquePointer))
    }



}

// MARK: - no AttrFontFeatures properties

// MARK: - no signals


public extension AttrFontFeaturesProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoAttrFontFeatures` instance.
    var _ptr: UnsafeMutablePointer<PangoAttrFontFeatures> { return ptr.assumingMemoryBound(to: PangoAttrFontFeatures.self) }

}



// MARK: - AttrInt Record

/// The `AttrIntProtocol` protocol exposes the methods and properties of an underlying `PangoAttrInt` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AttrInt`.
/// Alternatively, use `AttrIntRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoAttrInt` structure is used to represent attributes with
/// an integer or enumeration value.
public protocol AttrIntProtocol {
    /// Untyped pointer to the underlying `PangoAttrInt` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoAttrInt` instance.
    var _ptr: UnsafeMutablePointer<PangoAttrInt> { get }
}

/// The `AttrIntRef` type acts as a lightweight Swift reference to an underlying `PangoAttrInt` instance.
/// It exposes methods that can operate on this data type through `AttrIntProtocol` conformance.
/// Use `AttrIntRef` only as an `unowned` reference to an existing `PangoAttrInt` instance.
///
/// The `PangoAttrInt` structure is used to represent attributes with
/// an integer or enumeration value.
public struct AttrIntRef: AttrIntProtocol {
    /// Untyped pointer to the underlying `PangoAttrInt` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AttrIntRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoAttrInt>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AttrIntProtocol`
    init<T: AttrIntProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIntProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIntProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIntProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIntProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIntProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AttrInt` type acts as an owner of an underlying `PangoAttrInt` instance.
/// It provides the methods that can operate on this data type through `AttrIntProtocol` conformance.
/// Use `AttrInt` as a strong reference or owner of a `PangoAttrInt` instance.
///
/// The `PangoAttrInt` structure is used to represent attributes with
/// an integer or enumeration value.
open class AttrInt: AttrIntProtocol {
    /// Untyped pointer to the underlying `PangoAttrInt` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AttrInt` instance.
    public init(_ op: UnsafeMutablePointer<PangoAttrInt>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `AttrIntProtocol`
    /// `PangoAttrInt` does not allow reference counting.
    public convenience init<T: AttrIntProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for PangoAttrInt, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`PangoAttrInt`.
    deinit {
        // no reference counting for PangoAttrInt, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIntProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoAttrInt.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIntProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoAttrInt.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIntProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoAttrInt.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIntProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoAttrInt>(opaquePointer))
    }



}

// MARK: - no AttrInt properties

// MARK: - no signals


public extension AttrIntProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoAttrInt` instance.
    var _ptr: UnsafeMutablePointer<PangoAttrInt> { return ptr.assumingMemoryBound(to: PangoAttrInt.self) }

}



// MARK: - AttrIterator Record

/// The `AttrIteratorProtocol` protocol exposes the methods and properties of an underlying `PangoAttrIterator` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AttrIterator`.
/// Alternatively, use `AttrIteratorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoAttrIterator` structure is used to represent an
/// iterator through a `PangoAttrList`. A new iterator is created
/// with pango_attr_list_get_iterator(). Once the iterator
/// is created, it can be advanced through the style changes
/// in the text using pango_attr_iterator_next(). At each
/// style change, the range of the current style segment and the
/// attributes currently in effect can be queried.
public protocol AttrIteratorProtocol {
    /// Untyped pointer to the underlying `PangoAttrIterator` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoAttrIterator` instance.
    var attr_iterator_ptr: UnsafeMutablePointer<PangoAttrIterator> { get }
}

/// The `AttrIteratorRef` type acts as a lightweight Swift reference to an underlying `PangoAttrIterator` instance.
/// It exposes methods that can operate on this data type through `AttrIteratorProtocol` conformance.
/// Use `AttrIteratorRef` only as an `unowned` reference to an existing `PangoAttrIterator` instance.
///
/// The `PangoAttrIterator` structure is used to represent an
/// iterator through a `PangoAttrList`. A new iterator is created
/// with pango_attr_list_get_iterator(). Once the iterator
/// is created, it can be advanced through the style changes
/// in the text using pango_attr_iterator_next(). At each
/// style change, the range of the current style segment and the
/// attributes currently in effect can be queried.
public struct AttrIteratorRef: AttrIteratorProtocol {
    /// Untyped pointer to the underlying `PangoAttrIterator` instance.
    /// For type-safe access, use the generated, typed pointer `attr_iterator_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AttrIteratorRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoAttrIterator>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AttrIteratorProtocol`
    init<T: AttrIteratorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIteratorProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIteratorProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIteratorProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIteratorProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIteratorProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AttrIterator` type acts as an owner of an underlying `PangoAttrIterator` instance.
/// It provides the methods that can operate on this data type through `AttrIteratorProtocol` conformance.
/// Use `AttrIterator` as a strong reference or owner of a `PangoAttrIterator` instance.
///
/// The `PangoAttrIterator` structure is used to represent an
/// iterator through a `PangoAttrList`. A new iterator is created
/// with pango_attr_list_get_iterator(). Once the iterator
/// is created, it can be advanced through the style changes
/// in the text using pango_attr_iterator_next(). At each
/// style change, the range of the current style segment and the
/// attributes currently in effect can be queried.
open class AttrIterator: AttrIteratorProtocol {
    /// Untyped pointer to the underlying `PangoAttrIterator` instance.
    /// For type-safe access, use the generated, typed pointer `attr_iterator_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AttrIterator` instance.
    public init(_ op: UnsafeMutablePointer<PangoAttrIterator>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `AttrIteratorProtocol`
    /// `PangoAttrIterator` does not allow reference counting.
    public convenience init<T: AttrIteratorProtocol>(_ other: T) {
        self.init(cast(other.attr_iterator_ptr))
        // no reference counting for PangoAttrIterator, cannot ref(cast(attr_iterator_ptr))
    }

    /// Do-nothing destructor for`PangoAttrIterator`.
    deinit {
        // no reference counting for PangoAttrIterator, cannot unref(cast(attr_iterator_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIteratorProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoAttrIterator.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIteratorProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoAttrIterator.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIteratorProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoAttrIterator.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrIteratorProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoAttrIterator>(opaquePointer))
    }



}

// MARK: - no AttrIterator properties

// MARK: - no signals


public extension AttrIteratorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoAttrIterator` instance.
    var attr_iterator_ptr: UnsafeMutablePointer<PangoAttrIterator> { return ptr.assumingMemoryBound(to: PangoAttrIterator.self) }

    /// Copy a `PangoAttrIterator`
    func copy() -> UnsafeMutablePointer<PangoAttrIterator>! {
        let rv = pango_attr_iterator_copy(cast(attr_iterator_ptr))
        return cast(rv)
    }

    /// Destroy a `PangoAttrIterator` and free all associated memory.
    func destroy() {
        pango_attr_iterator_destroy(cast(attr_iterator_ptr))
    
    }

    /// Find the current attribute of a particular type at the iterator
    /// location. When multiple attributes of the same type overlap,
    /// the attribute whose range starts closest to the current location
    /// is used.
    func get(type: AttrType) -> UnsafeMutablePointer<PangoAttribute>! {
        let rv = pango_attr_iterator_get(cast(attr_iterator_ptr), type)
        return cast(rv)
    }

    /// Gets a list of all attributes at the current position of the
    /// iterator.
    func getAttrs() -> UnsafeMutablePointer<GSList>! {
        let rv = pango_attr_iterator_get_attrs(cast(attr_iterator_ptr))
        return cast(rv)
    }

    /// Get the font and other attributes at the current iterator position.
    func getFont(desc: FontDescriptionProtocol, language: LanguageProtocol, extraAttrs extra_attrs: SListProtocol) {
        pango_attr_iterator_get_font(cast(attr_iterator_ptr), cast(desc.ptr), cast(language.ptr), cast(extra_attrs.ptr))
    
    }

    /// Advance the iterator until the next change of style.
    func next() -> Bool {
        let rv = pango_attr_iterator_next(cast(attr_iterator_ptr))
        return Bool(rv != 0)
    }

    /// Get the range of the current segment. Note that the
    /// stored return values are signed, not unsigned like
    /// the values in `PangoAttribute`. To deal with this API
    /// oversight, stored return values that wouldn't fit into
    /// a signed integer are clamped to `G_MAXINT`.
    func range(start: UnsafeMutablePointer<CInt>, end: UnsafeMutablePointer<CInt>) {
        pango_attr_iterator_range(cast(attr_iterator_ptr), cast(start), cast(end))
    
    }

    /// Breaks a piece of text into segments with consistent
    /// directional level and shaping engine. Each byte of `text` will
    /// be contained in exactly one of the items in the returned list;
    /// the generated list of items will be in logical order (the start
    /// offsets of the items are ascending).
    /// 
    /// `cached_iter` should be an iterator over `attrs` currently positioned at a
    /// range before or containing `start_index`; `cached_iter` will be advanced to
    /// the range covering the position just after `start_index` + `length`.
    /// (i.e. if itemizing in a loop, just keep passing in the same `cached_iter`).
    func itemize(context: ContextProtocol, text: UnsafePointer<CChar>, startIndex start_index: CInt, length: CInt, attrs: AttrListProtocol) -> UnsafeMutablePointer<GList>! {
        let rv = pango_itemize(cast(context.ptr), text, start_index, length, cast(attrs.ptr), cast(attr_iterator_ptr))
        return cast(rv)
    }

    /// Like pango_itemize(), but the base direction to use when
    /// computing bidirectional levels (see pango_context_set_base_dir ()),
    /// is specified explicitly rather than gotten from the `PangoContext`.
    func itemizeWithBaseDir(context: ContextProtocol, baseDir base_dir: Direction, text: UnsafePointer<CChar>, startIndex start_index: CInt, length: CInt, attrs: AttrListProtocol) -> UnsafeMutablePointer<GList>! {
        let rv = pango_itemize_with_base_dir(cast(context.ptr), base_dir, text, start_index, length, cast(attrs.ptr), cast(attr_iterator_ptr))
        return cast(rv)
    }
    /// Gets a list of all attributes at the current position of the
    /// iterator.
    var attrs: UnsafeMutablePointer<GSList>! {
        /// Gets a list of all attributes at the current position of the
        /// iterator.
        get {
            let rv = pango_attr_iterator_get_attrs(cast(attr_iterator_ptr))
            return cast(rv)
        }
    }
}



// MARK: - AttrLanguage Record

/// The `AttrLanguageProtocol` protocol exposes the methods and properties of an underlying `PangoAttrLanguage` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AttrLanguage`.
/// Alternatively, use `AttrLanguageRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoAttrLanguage` structure is used to represent attributes that
/// are languages.
public protocol AttrLanguageProtocol {
    /// Untyped pointer to the underlying `PangoAttrLanguage` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoAttrLanguage` instance.
    var _ptr: UnsafeMutablePointer<PangoAttrLanguage> { get }
}

/// The `AttrLanguageRef` type acts as a lightweight Swift reference to an underlying `PangoAttrLanguage` instance.
/// It exposes methods that can operate on this data type through `AttrLanguageProtocol` conformance.
/// Use `AttrLanguageRef` only as an `unowned` reference to an existing `PangoAttrLanguage` instance.
///
/// The `PangoAttrLanguage` structure is used to represent attributes that
/// are languages.
public struct AttrLanguageRef: AttrLanguageProtocol {
    /// Untyped pointer to the underlying `PangoAttrLanguage` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AttrLanguageRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoAttrLanguage>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AttrLanguageProtocol`
    init<T: AttrLanguageProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrLanguageProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrLanguageProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrLanguageProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrLanguageProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrLanguageProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AttrLanguage` type acts as an owner of an underlying `PangoAttrLanguage` instance.
/// It provides the methods that can operate on this data type through `AttrLanguageProtocol` conformance.
/// Use `AttrLanguage` as a strong reference or owner of a `PangoAttrLanguage` instance.
///
/// The `PangoAttrLanguage` structure is used to represent attributes that
/// are languages.
open class AttrLanguage: AttrLanguageProtocol {
    /// Untyped pointer to the underlying `PangoAttrLanguage` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AttrLanguage` instance.
    public init(_ op: UnsafeMutablePointer<PangoAttrLanguage>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `AttrLanguageProtocol`
    /// `PangoAttrLanguage` does not allow reference counting.
    public convenience init<T: AttrLanguageProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for PangoAttrLanguage, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`PangoAttrLanguage`.
    deinit {
        // no reference counting for PangoAttrLanguage, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrLanguageProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoAttrLanguage.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrLanguageProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoAttrLanguage.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrLanguageProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoAttrLanguage.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrLanguageProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoAttrLanguage>(opaquePointer))
    }



}

// MARK: - no AttrLanguage properties

// MARK: - no signals


public extension AttrLanguageProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoAttrLanguage` instance.
    var _ptr: UnsafeMutablePointer<PangoAttrLanguage> { return ptr.assumingMemoryBound(to: PangoAttrLanguage.self) }

}



// MARK: - AttrList Record

/// The `AttrListProtocol` protocol exposes the methods and properties of an underlying `PangoAttrList` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AttrList`.
/// Alternatively, use `AttrListRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoAttrList` structure represents a list of attributes
/// that apply to a section of text. The attributes are, in general,
/// allowed to overlap in an arbitrary fashion, however, if the
/// attributes are manipulated only through pango_attr_list_change(),
/// the overlap between properties will meet stricter criteria.
/// 
/// Since the `PangoAttrList` structure is stored as a linear list,
/// it is not suitable for storing attributes for large amounts
/// of text. In general, you should not use a single `PangoAttrList`
/// for more than one paragraph of text.
public protocol AttrListProtocol {
    /// Untyped pointer to the underlying `PangoAttrList` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoAttrList` instance.
    var attr_list_ptr: UnsafeMutablePointer<PangoAttrList> { get }
}

/// The `AttrListRef` type acts as a lightweight Swift reference to an underlying `PangoAttrList` instance.
/// It exposes methods that can operate on this data type through `AttrListProtocol` conformance.
/// Use `AttrListRef` only as an `unowned` reference to an existing `PangoAttrList` instance.
///
/// The `PangoAttrList` structure represents a list of attributes
/// that apply to a section of text. The attributes are, in general,
/// allowed to overlap in an arbitrary fashion, however, if the
/// attributes are manipulated only through pango_attr_list_change(),
/// the overlap between properties will meet stricter criteria.
/// 
/// Since the `PangoAttrList` structure is stored as a linear list,
/// it is not suitable for storing attributes for large amounts
/// of text. In general, you should not use a single `PangoAttrList`
/// for more than one paragraph of text.
public struct AttrListRef: AttrListProtocol {
    /// Untyped pointer to the underlying `PangoAttrList` instance.
    /// For type-safe access, use the generated, typed pointer `attr_list_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AttrListRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoAttrList>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AttrListProtocol`
    init<T: AttrListProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrListProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrListProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrListProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrListProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrListProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Create a new empty attribute list with a reference count of one.
    init() {
        let rv = pango_attr_list_new()
        self.init(cast(rv))
    }
}

/// The `AttrList` type acts as a reference-counted owner of an underlying `PangoAttrList` instance.
/// It provides the methods that can operate on this data type through `AttrListProtocol` conformance.
/// Use `AttrList` as a strong reference or owner of a `PangoAttrList` instance.
///
/// The `PangoAttrList` structure represents a list of attributes
/// that apply to a section of text. The attributes are, in general,
/// allowed to overlap in an arbitrary fashion, however, if the
/// attributes are manipulated only through pango_attr_list_change(),
/// the overlap between properties will meet stricter criteria.
/// 
/// Since the `PangoAttrList` structure is stored as a linear list,
/// it is not suitable for storing attributes for large amounts
/// of text. In general, you should not use a single `PangoAttrList`
/// for more than one paragraph of text.
open class AttrList: AttrListProtocol {
    /// Untyped pointer to the underlying `PangoAttrList` instance.
    /// For type-safe access, use the generated, typed pointer `attr_list_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AttrList` instance.
    public init(_ op: UnsafeMutablePointer<PangoAttrList>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `AttrListProtocol`
    /// Will retain `PangoAttrList`.
    public convenience init<T: AttrListProtocol>(_ other: T) {
        self.init(cast(other.attr_list_ptr))
        pango_attr_list_ref(cast(attr_list_ptr))
    }

    /// Releases the underlying `PangoAttrList` instance using `pango_attr_list_unref`.
    deinit {
        pango_attr_list_unref(cast(attr_list_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrListProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoAttrList.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrListProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoAttrList.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrListProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoAttrList.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrListProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoAttrList>(opaquePointer))
    }

    /// Create a new empty attribute list with a reference count of one.
    public convenience init() {
        let rv = pango_attr_list_new()
        self.init(cast(rv))
    }


}

// MARK: - no AttrList properties

// MARK: - no signals


public extension AttrListProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoAttrList` instance.
    var attr_list_ptr: UnsafeMutablePointer<PangoAttrList> { return ptr.assumingMemoryBound(to: PangoAttrList.self) }

    /// Insert the given attribute into the `PangoAttrList`. It will
    /// replace any attributes of the same type on that segment
    /// and be merged with any adjoining attributes that are identical.
    /// 
    /// This function is slower than pango_attr_list_insert() for
    /// creating a attribute list in order (potentially much slower
    /// for large lists). However, pango_attr_list_insert() is not
    /// suitable for continually changing a set of attributes
    /// since it never removes or combines existing attributes.
    func change(attr: AttributeProtocol) {
        pango_attr_list_change(cast(attr_list_ptr), cast(attr.ptr))
    
    }

    /// Copy `list` and return an identical new list.
    func copy() -> UnsafeMutablePointer<PangoAttrList>! {
        let rv = pango_attr_list_copy(cast(attr_list_ptr))
        return cast(rv)
    }

    /// Given a `PangoAttrList` and callback function, removes any elements
    /// of `list` for which `func` returns `true` and inserts them into
    /// a new list.
    func filter(func_: @escaping AttrFilterFunc, data: UnsafeMutableRawPointer) -> UnsafeMutablePointer<PangoAttrList>! {
        let rv = pango_attr_list_filter(cast(attr_list_ptr), func_, cast(data))
        return cast(rv)
    }

    /// Gets a list of all attributes in `list`.
    func getAttributes() -> UnsafeMutablePointer<GSList>! {
        let rv = pango_attr_list_get_attributes(cast(attr_list_ptr))
        return cast(rv)
    }

    /// Create a iterator initialized to the beginning of the list.
    /// `list` must not be modified until this iterator is freed.
    func getIterator() -> UnsafeMutablePointer<PangoAttrIterator>! {
        let rv = pango_attr_list_get_iterator(cast(attr_list_ptr))
        return cast(rv)
    }

    /// Insert the given attribute into the `PangoAttrList`. It will
    /// be inserted after all other attributes with a matching
    /// `start_index`.
    func insert(attr: AttributeProtocol) {
        pango_attr_list_insert(cast(attr_list_ptr), cast(attr.ptr))
    
    }

    /// Insert the given attribute into the `PangoAttrList`. It will
    /// be inserted before all other attributes with a matching
    /// `start_index`.
    func insertBefore(attr: AttributeProtocol) {
        pango_attr_list_insert_before(cast(attr_list_ptr), cast(attr.ptr))
    
    }

    /// Increase the reference count of the given attribute list by one.
    func ref() -> UnsafeMutablePointer<PangoAttrList>! {
        let rv = pango_attr_list_ref(cast(attr_list_ptr))
        return cast(rv)
    }

    /// This function opens up a hole in `list`, fills it in with attributes from
    /// the left, and then merges `other` on top of the hole.
    /// 
    /// This operation is equivalent to stretching every attribute
    /// that applies at position `pos` in `list` by an amount `len`,
    /// and then calling pango_attr_list_change() with a copy
    /// of each attribute in `other` in sequence (offset in position by `pos`).
    /// 
    /// This operation proves useful for, for instance, inserting
    /// a pre-edit string in the middle of an edit buffer.
    func splice(other: AttrListProtocol, pos: CInt, len: CInt) {
        pango_attr_list_splice(cast(attr_list_ptr), cast(other.ptr), gint(pos), gint(len))
    
    }

    /// Decrease the reference count of the given attribute list by one.
    /// If the result is zero, free the attribute list and the attributes
    /// it contains.
    func unref() {
        pango_attr_list_unref(cast(attr_list_ptr))
    
    }

    /// Update indices of attributes in `list` for
    /// a change in the text they refer to.
    /// 
    /// The change that this function applies is
    /// removing `remove` bytes at position `pos`
    /// and inserting `add` bytes instead.
    /// 
    /// Attributes that fall entirely in the
    /// (`pos`, `pos` + `remove`) range are removed.
    /// 
    /// Attributes that start or end inside the
    /// (`pos`, `pos` + `remove`) range are shortened to
    /// reflect the removal.
    /// 
    /// Attributes start and end positions are updated
    /// if they are behind `pos` + `remove`.
    func update(pos: CInt, remove: CInt, add: CInt) {
        pango_attr_list_update(cast(attr_list_ptr), pos, remove, add)
    
    }

    /// Breaks a piece of text into segments with consistent
    /// directional level and shaping engine. Each byte of `text` will
    /// be contained in exactly one of the items in the returned list;
    /// the generated list of items will be in logical order (the start
    /// offsets of the items are ascending).
    /// 
    /// `cached_iter` should be an iterator over `attrs` currently positioned at a
    /// range before or containing `start_index`; `cached_iter` will be advanced to
    /// the range covering the position just after `start_index` + `length`.
    /// (i.e. if itemizing in a loop, just keep passing in the same `cached_iter`).
    func itemize(context: ContextProtocol, text: UnsafePointer<CChar>, startIndex start_index: CInt, length: CInt, cachedIter cached_iter: AttrIteratorProtocol) -> UnsafeMutablePointer<GList>! {
        let rv = pango_itemize(cast(context.ptr), text, start_index, length, cast(attr_list_ptr), cast(cached_iter.ptr))
        return cast(rv)
    }

    /// Like pango_itemize(), but the base direction to use when
    /// computing bidirectional levels (see pango_context_set_base_dir ()),
    /// is specified explicitly rather than gotten from the `PangoContext`.
    func itemizeWithBaseDir(context: ContextProtocol, baseDir base_dir: Direction, text: UnsafePointer<CChar>, startIndex start_index: CInt, length: CInt, cachedIter cached_iter: AttrIteratorProtocol) -> UnsafeMutablePointer<GList>! {
        let rv = pango_itemize_with_base_dir(cast(context.ptr), base_dir, text, start_index, length, cast(attr_list_ptr), cast(cached_iter.ptr))
        return cast(rv)
    }

    /// After feeding a pango markup parser some data with g_markup_parse_context_parse(),
    /// use this function to get the list of pango attributes and text out of the
    /// markup. This function will not free `context`, use g_markup_parse_context_free()
    /// to do so.
    func markupParserFinish(context: MarkupParseContextProtocol, text: UnsafeMutablePointer<UnsafeMutablePointer<CChar>>, accelChar accel_char: UnsafeMutablePointer<gunichar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = pango_markup_parser_finish(cast(context.ptr), cast(attr_list_ptr), cast(text), cast(accel_char), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Parses marked-up text (see
    /// <link linkend="PangoMarkupFormat">markup format</link>) to create
    /// a plain-text string and an attribute list.
    /// 
    /// If `accel_marker` is nonzero, the given character will mark the
    /// character following it as an accelerator. For example, `accel_marker`
    /// might be an ampersand or underscore. All characters marked
    /// as an accelerator will receive a `PANGO_UNDERLINE_LOW` attribute,
    /// and the first character so marked will be returned in `accel_char`.
    /// Two `accel_marker` characters following each other produce a single
    /// literal `accel_marker` character.
    /// 
    /// To parse a stream of pango markup incrementally, use pango_markup_parser_new().
    /// 
    /// If any error happens, none of the output arguments are touched except
    /// for `error`.
    func parseMarkup(markupText markup_text: UnsafePointer<CChar>, length: CInt, accelMarker accel_marker: gunichar, text: UnsafeMutablePointer<UnsafeMutablePointer<CChar>>, accelChar accel_char: UnsafeMutablePointer<gunichar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = pango_parse_markup(markup_text, length, accel_marker, cast(attr_list_ptr), cast(text), cast(accel_char), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }
    /// Gets a list of all attributes in `list`.
    var attributes: UnsafeMutablePointer<GSList>! {
        /// Gets a list of all attributes in `list`.
        get {
            let rv = pango_attr_list_get_attributes(cast(attr_list_ptr))
            return cast(rv)
        }
    }

    /// Create a iterator initialized to the beginning of the list.
    /// `list` must not be modified until this iterator is freed.
    var iterator: UnsafeMutablePointer<PangoAttrIterator>! {
        /// Create a iterator initialized to the beginning of the list.
        /// `list` must not be modified until this iterator is freed.
        get {
            let rv = pango_attr_list_get_iterator(cast(attr_list_ptr))
            return cast(rv)
        }
    }
}



// MARK: - AttrShape Record

/// The `AttrShapeProtocol` protocol exposes the methods and properties of an underlying `PangoAttrShape` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AttrShape`.
/// Alternatively, use `AttrShapeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoAttrShape` structure is used to represent attributes which
/// impose shape restrictions.
public protocol AttrShapeProtocol {
    /// Untyped pointer to the underlying `PangoAttrShape` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoAttrShape` instance.
    var _ptr: UnsafeMutablePointer<PangoAttrShape> { get }
}

/// The `AttrShapeRef` type acts as a lightweight Swift reference to an underlying `PangoAttrShape` instance.
/// It exposes methods that can operate on this data type through `AttrShapeProtocol` conformance.
/// Use `AttrShapeRef` only as an `unowned` reference to an existing `PangoAttrShape` instance.
///
/// The `PangoAttrShape` structure is used to represent attributes which
/// impose shape restrictions.
public struct AttrShapeRef: AttrShapeProtocol {
    /// Untyped pointer to the underlying `PangoAttrShape` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AttrShapeRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoAttrShape>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AttrShapeProtocol`
    init<T: AttrShapeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrShapeProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrShapeProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrShapeProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrShapeProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrShapeProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AttrShape` type acts as an owner of an underlying `PangoAttrShape` instance.
/// It provides the methods that can operate on this data type through `AttrShapeProtocol` conformance.
/// Use `AttrShape` as a strong reference or owner of a `PangoAttrShape` instance.
///
/// The `PangoAttrShape` structure is used to represent attributes which
/// impose shape restrictions.
open class AttrShape: AttrShapeProtocol {
    /// Untyped pointer to the underlying `PangoAttrShape` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AttrShape` instance.
    public init(_ op: UnsafeMutablePointer<PangoAttrShape>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `AttrShapeProtocol`
    /// `PangoAttrShape` does not allow reference counting.
    public convenience init<T: AttrShapeProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for PangoAttrShape, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`PangoAttrShape`.
    deinit {
        // no reference counting for PangoAttrShape, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrShapeProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoAttrShape.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrShapeProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoAttrShape.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrShapeProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoAttrShape.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrShapeProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoAttrShape>(opaquePointer))
    }



}

// MARK: - no AttrShape properties

// MARK: - no signals


public extension AttrShapeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoAttrShape` instance.
    var _ptr: UnsafeMutablePointer<PangoAttrShape> { return ptr.assumingMemoryBound(to: PangoAttrShape.self) }

}



// MARK: - AttrSize Record

/// The `AttrSizeProtocol` protocol exposes the methods and properties of an underlying `PangoAttrSize` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AttrSize`.
/// Alternatively, use `AttrSizeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoAttrSize` structure is used to represent attributes which
/// set font size.
public protocol AttrSizeProtocol {
    /// Untyped pointer to the underlying `PangoAttrSize` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoAttrSize` instance.
    var _ptr: UnsafeMutablePointer<PangoAttrSize> { get }
}

/// The `AttrSizeRef` type acts as a lightweight Swift reference to an underlying `PangoAttrSize` instance.
/// It exposes methods that can operate on this data type through `AttrSizeProtocol` conformance.
/// Use `AttrSizeRef` only as an `unowned` reference to an existing `PangoAttrSize` instance.
///
/// The `PangoAttrSize` structure is used to represent attributes which
/// set font size.
public struct AttrSizeRef: AttrSizeProtocol {
    /// Untyped pointer to the underlying `PangoAttrSize` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AttrSizeRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoAttrSize>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AttrSizeProtocol`
    init<T: AttrSizeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrSizeProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrSizeProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrSizeProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrSizeProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrSizeProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AttrSize` type acts as an owner of an underlying `PangoAttrSize` instance.
/// It provides the methods that can operate on this data type through `AttrSizeProtocol` conformance.
/// Use `AttrSize` as a strong reference or owner of a `PangoAttrSize` instance.
///
/// The `PangoAttrSize` structure is used to represent attributes which
/// set font size.
open class AttrSize: AttrSizeProtocol {
    /// Untyped pointer to the underlying `PangoAttrSize` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AttrSize` instance.
    public init(_ op: UnsafeMutablePointer<PangoAttrSize>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `AttrSizeProtocol`
    /// `PangoAttrSize` does not allow reference counting.
    public convenience init<T: AttrSizeProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for PangoAttrSize, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`PangoAttrSize`.
    deinit {
        // no reference counting for PangoAttrSize, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrSizeProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoAttrSize.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrSizeProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoAttrSize.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrSizeProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoAttrSize.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrSizeProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoAttrSize>(opaquePointer))
    }



}

// MARK: - no AttrSize properties

// MARK: - no signals


public extension AttrSizeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoAttrSize` instance.
    var _ptr: UnsafeMutablePointer<PangoAttrSize> { return ptr.assumingMemoryBound(to: PangoAttrSize.self) }

}



// MARK: - AttrString Record

/// The `AttrStringProtocol` protocol exposes the methods and properties of an underlying `PangoAttrString` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AttrString`.
/// Alternatively, use `AttrStringRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoAttrString` structure is used to represent attributes with
/// a string value.
public protocol AttrStringProtocol {
    /// Untyped pointer to the underlying `PangoAttrString` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoAttrString` instance.
    var _ptr: UnsafeMutablePointer<PangoAttrString> { get }
}

/// The `AttrStringRef` type acts as a lightweight Swift reference to an underlying `PangoAttrString` instance.
/// It exposes methods that can operate on this data type through `AttrStringProtocol` conformance.
/// Use `AttrStringRef` only as an `unowned` reference to an existing `PangoAttrString` instance.
///
/// The `PangoAttrString` structure is used to represent attributes with
/// a string value.
public struct AttrStringRef: AttrStringProtocol {
    /// Untyped pointer to the underlying `PangoAttrString` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AttrStringRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoAttrString>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AttrStringProtocol`
    init<T: AttrStringProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrStringProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrStringProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrStringProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrStringProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrStringProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AttrString` type acts as an owner of an underlying `PangoAttrString` instance.
/// It provides the methods that can operate on this data type through `AttrStringProtocol` conformance.
/// Use `AttrString` as a strong reference or owner of a `PangoAttrString` instance.
///
/// The `PangoAttrString` structure is used to represent attributes with
/// a string value.
open class AttrString: AttrStringProtocol {
    /// Untyped pointer to the underlying `PangoAttrString` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AttrString` instance.
    public init(_ op: UnsafeMutablePointer<PangoAttrString>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `AttrStringProtocol`
    /// `PangoAttrString` does not allow reference counting.
    public convenience init<T: AttrStringProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for PangoAttrString, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`PangoAttrString`.
    deinit {
        // no reference counting for PangoAttrString, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrStringProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoAttrString.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrStringProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoAttrString.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrStringProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoAttrString.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttrStringProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoAttrString>(opaquePointer))
    }



}

// MARK: - no AttrString properties

// MARK: - no signals


public extension AttrStringProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoAttrString` instance.
    var _ptr: UnsafeMutablePointer<PangoAttrString> { return ptr.assumingMemoryBound(to: PangoAttrString.self) }

}



// MARK: - Attribute Record

/// The `AttributeProtocol` protocol exposes the methods and properties of an underlying `PangoAttribute` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Attribute`.
/// Alternatively, use `AttributeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoAttribute` structure represents the common portions of all
/// attributes. Particular types of attributes include this structure
/// as their initial portion. The common portion of the attribute holds
/// the range to which the value in the type-specific part of the attribute
/// applies and should be initialized using pango_attribute_init().
/// By default an attribute will have an all-inclusive range of [0,`G_MAXUINT`].
public protocol AttributeProtocol {
    /// Untyped pointer to the underlying `PangoAttribute` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoAttribute` instance.
    var attribute_ptr: UnsafeMutablePointer<PangoAttribute> { get }
}

/// The `AttributeRef` type acts as a lightweight Swift reference to an underlying `PangoAttribute` instance.
/// It exposes methods that can operate on this data type through `AttributeProtocol` conformance.
/// Use `AttributeRef` only as an `unowned` reference to an existing `PangoAttribute` instance.
///
/// The `PangoAttribute` structure represents the common portions of all
/// attributes. Particular types of attributes include this structure
/// as their initial portion. The common portion of the attribute holds
/// the range to which the value in the type-specific part of the attribute
/// applies and should be initialized using pango_attribute_init().
/// By default an attribute will have an all-inclusive range of [0,`G_MAXUINT`].
public struct AttributeRef: AttributeProtocol {
    /// Untyped pointer to the underlying `PangoAttribute` instance.
    /// For type-safe access, use the generated, typed pointer `attribute_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AttributeRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoAttribute>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AttributeProtocol`
    init<T: AttributeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttributeProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttributeProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttributeProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttributeProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttributeProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Attribute` type acts as an owner of an underlying `PangoAttribute` instance.
/// It provides the methods that can operate on this data type through `AttributeProtocol` conformance.
/// Use `Attribute` as a strong reference or owner of a `PangoAttribute` instance.
///
/// The `PangoAttribute` structure represents the common portions of all
/// attributes. Particular types of attributes include this structure
/// as their initial portion. The common portion of the attribute holds
/// the range to which the value in the type-specific part of the attribute
/// applies and should be initialized using pango_attribute_init().
/// By default an attribute will have an all-inclusive range of [0,`G_MAXUINT`].
open class Attribute: AttributeProtocol {
    /// Untyped pointer to the underlying `PangoAttribute` instance.
    /// For type-safe access, use the generated, typed pointer `attribute_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Attribute` instance.
    public init(_ op: UnsafeMutablePointer<PangoAttribute>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `AttributeProtocol`
    /// `PangoAttribute` does not allow reference counting.
    public convenience init<T: AttributeProtocol>(_ other: T) {
        self.init(cast(other.attribute_ptr))
        // no reference counting for PangoAttribute, cannot ref(cast(attribute_ptr))
    }

    /// Do-nothing destructor for`PangoAttribute`.
    deinit {
        // no reference counting for PangoAttribute, cannot unref(cast(attribute_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttributeProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoAttribute.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttributeProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoAttribute.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttributeProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoAttribute.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AttributeProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoAttribute>(opaquePointer))
    }



}

// MARK: - no Attribute properties

// MARK: - no signals


public extension AttributeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoAttribute` instance.
    var attribute_ptr: UnsafeMutablePointer<PangoAttribute> { return ptr.assumingMemoryBound(to: PangoAttribute.self) }

    /// Make a copy of an attribute.
    func copy() -> UnsafeMutablePointer<PangoAttribute>! {
        let rv = pango_attribute_copy(cast(attribute_ptr))
        return cast(rv)
    }

    /// Destroy a `PangoAttribute` and free all associated memory.
    func destroy() {
        pango_attribute_destroy(cast(attribute_ptr))
    
    }

    /// Compare two attributes for equality. This compares only the
    /// actual value of the two attributes and not the ranges that the
    /// attributes apply to.
    func equal(attr2: AttributeProtocol) -> Bool {
        let rv = pango_attribute_equal(cast(attribute_ptr), cast(attr2.ptr))
        return Bool(rv != 0)
    }

    /// Initializes `attr`'s klass to `klass`,
    /// it's start_index to `PANGO_ATTR_INDEX_FROM_TEXT_BEGINNING`
    /// and end_index to `PANGO_ATTR_INDEX_TO_TEXT_END`
    /// such that the attribute applies
    /// to the entire text by default.
    func init_(klass: AttrClassProtocol) {
        pango_attribute_init(cast(attribute_ptr), cast(klass.ptr))
    
    }
}



// MARK: - Color Record

/// The `ColorProtocol` protocol exposes the methods and properties of an underlying `PangoColor` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Color`.
/// Alternatively, use `ColorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoColor` structure is used to
/// represent a color in an uncalibrated RGB color-space.
public protocol ColorProtocol {
    /// Untyped pointer to the underlying `PangoColor` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoColor` instance.
    var color_ptr: UnsafeMutablePointer<PangoColor> { get }
}

/// The `ColorRef` type acts as a lightweight Swift reference to an underlying `PangoColor` instance.
/// It exposes methods that can operate on this data type through `ColorProtocol` conformance.
/// Use `ColorRef` only as an `unowned` reference to an existing `PangoColor` instance.
///
/// The `PangoColor` structure is used to
/// represent a color in an uncalibrated RGB color-space.
public struct ColorRef: ColorProtocol {
    /// Untyped pointer to the underlying `PangoColor` instance.
    /// For type-safe access, use the generated, typed pointer `color_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ColorRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoColor>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ColorProtocol`
    init<T: ColorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Color` type acts as an owner of an underlying `PangoColor` instance.
/// It provides the methods that can operate on this data type through `ColorProtocol` conformance.
/// Use `Color` as a strong reference or owner of a `PangoColor` instance.
///
/// The `PangoColor` structure is used to
/// represent a color in an uncalibrated RGB color-space.
open class Color: ColorProtocol {
    /// Untyped pointer to the underlying `PangoColor` instance.
    /// For type-safe access, use the generated, typed pointer `color_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Color` instance.
    public init(_ op: UnsafeMutablePointer<PangoColor>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ColorProtocol`
    /// `PangoColor` does not allow reference counting.
    public convenience init<T: ColorProtocol>(_ other: T) {
        self.init(cast(other.color_ptr))
        // no reference counting for PangoColor, cannot ref(cast(color_ptr))
    }

    /// Do-nothing destructor for`PangoColor`.
    deinit {
        // no reference counting for PangoColor, cannot unref(cast(color_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoColor.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoColor.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoColor.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoColor>(opaquePointer))
    }



}

// MARK: - no Color properties

// MARK: - no signals


public extension ColorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoColor` instance.
    var color_ptr: UnsafeMutablePointer<PangoColor> { return ptr.assumingMemoryBound(to: PangoColor.self) }

    /// Creates a copy of `src`, which should be freed with
    /// pango_color_free(). Primarily used by language bindings,
    /// not that useful otherwise (since colors can just be copied
    /// by assignment in C).
    func copy() -> UnsafeMutablePointer<PangoColor>! {
        let rv = pango_color_copy(cast(color_ptr))
        return cast(rv)
    }

    /// Frees a color allocated by pango_color_copy().
    func free() {
        pango_color_free(cast(color_ptr))
    
    }

    /// Fill in the fields of a color from a string specification. The
    /// string can either one of a large set of standard names. (Taken
    /// from the CSS <ulink url="http://dev.w3.org/csswg/css-color/`named`-colors">specification</ulink>), or it can be a hexadecimal
    /// value in the
    /// form '&num;rgb' '&num;rrggbb' '&num;rrrgggbbb' or '&num;rrrrggggbbbb' where
    /// 'r', 'g' and 'b' are hex digits of the red, green, and blue
    /// components of the color, respectively. (White in the four
    /// forms is '&num;fff' '&num;ffffff' '&num;fffffffff' and '&num;ffffffffffff')
    func parse(spec: UnsafePointer<CChar>) -> Bool {
        let rv = pango_color_parse(cast(color_ptr), spec)
        return Bool(rv != 0)
    }

    /// Returns a textual specification of `color` in the hexadecimal form
    /// <literal>&num;rrrrggggbbbb</literal>, where <literal>r</literal>,
    /// <literal>g</literal> and <literal>b</literal> are hex digits representing
    /// the red, green, and blue components respectively.
    func toString() -> String! {
        let rv = pango_color_to_string(cast(color_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }
}



