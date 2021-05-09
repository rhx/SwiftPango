import CGLib
import CPango
import GLib
import GLibObject

// MARK: - FontDescription Record

/// The `FontDescriptionProtocol` protocol exposes the methods and properties of an underlying `PangoFontDescription` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontDescription`.
/// Alternatively, use `FontDescriptionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `PangoFontDescription` describes a font in an implementation-independent
/// manner.
/// 
/// `PangoFontDescription` structures are used both to list what fonts are
/// available on the system and also for specifying the characteristics of
/// a font to load.
public protocol FontDescriptionProtocol {
        /// Untyped pointer to the underlying `PangoFontDescription` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFontDescription` instance.
    var font_description_ptr: UnsafeMutablePointer<PangoFontDescription>! { get }

    /// Required Initialiser for types conforming to `FontDescriptionProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `FontDescriptionRef` type acts as a lightweight Swift reference to an underlying `PangoFontDescription` instance.
/// It exposes methods that can operate on this data type through `FontDescriptionProtocol` conformance.
/// Use `FontDescriptionRef` only as an `unowned` reference to an existing `PangoFontDescription` instance.
///
/// A `PangoFontDescription` describes a font in an implementation-independent
/// manner.
/// 
/// `PangoFontDescription` structures are used both to list what fonts are
/// available on the system and also for specifying the characteristics of
/// a font to load.
public struct FontDescriptionRef: FontDescriptionProtocol {
        /// Untyped pointer to the underlying `PangoFontDescription` instance.
    /// For type-safe access, use the generated, typed pointer `font_description_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontDescriptionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoFontDescription>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoFontDescription>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoFontDescription>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoFontDescription>?) {
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

    /// Reference intialiser for a related type that implements `FontDescriptionProtocol`
    @inlinable init<T: FontDescriptionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new font description structure with all fields unset.
    @inlinable init() {
        let rv = pango_font_description_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new font description from a string representation.
    /// 
    /// The string must have the form
    /// 
    ///     "\[FAMILY-LIST] \[STYLE-OPTIONS] \[SIZE] \[VARIATIONS]",
    /// 
    /// where FAMILY-LIST is a comma-separated list of families optionally
    /// terminated by a comma, STYLE_OPTIONS is a whitespace-separated list
    /// of words where each word describes one of style, variant, weight,
    /// stretch, or gravity, and SIZE is a decimal number (size in points)
    /// or optionally followed by the unit modifier "px" for absolute size.
    /// VARIATIONS is a comma-separated list of font variation
    /// specifications of the form "\`axis`=value" (the = sign is optional).
    /// 
    /// The following words are understood as styles:
    /// "Normal", "Roman", "Oblique", "Italic".
    /// 
    /// The following words are understood as variants:
    /// "Small-Caps".
    /// 
    /// The following words are understood as weights:
    /// "Thin", "Ultra-Light", "Extra-Light", "Light", "Semi-Light",
    /// "Demi-Light", "Book", "Regular", "Medium", "Semi-Bold", "Demi-Bold",
    /// "Bold", "Ultra-Bold", "Extra-Bold", "Heavy", "Black", "Ultra-Black",
    /// "Extra-Black".
    /// 
    /// The following words are understood as stretch values:
    /// "Ultra-Condensed", "Extra-Condensed", "Condensed", "Semi-Condensed",
    /// "Semi-Expanded", "Expanded", "Extra-Expanded", "Ultra-Expanded".
    /// 
    /// The following words are understood as gravity values:
    /// "Not-Rotated", "South", "Upside-Down", "North", "Rotated-Left",
    /// "East", "Rotated-Right", "West".
    /// 
    /// Any one of the options may be absent. If FAMILY-LIST is absent, then
    /// the family_name field of the resulting font description will be
    /// initialized to `nil`. If STYLE-OPTIONS is missing, then all style
    /// options will be set to the default values. If SIZE is missing, the
    /// size in the resulting font description will be set to 0.
    /// 
    /// A typical example:
    /// 
    ///     "Cantarell Italic Light 15 \`wght`=200"
    @inlinable static func from(string str: UnsafePointer<CChar>!) -> FontDescriptionRef! {
        guard let rv = FontDescriptionRef(gconstpointer: gconstpointer(pango_font_description_from_string(str))) else { return nil }
        return rv
    }
}

/// The `FontDescription` type acts as an owner of an underlying `PangoFontDescription` instance.
/// It provides the methods that can operate on this data type through `FontDescriptionProtocol` conformance.
/// Use `FontDescription` as a strong reference or owner of a `PangoFontDescription` instance.
///
/// A `PangoFontDescription` describes a font in an implementation-independent
/// manner.
/// 
/// `PangoFontDescription` structures are used both to list what fonts are
/// available on the system and also for specifying the characteristics of
/// a font to load.
open class FontDescription: FontDescriptionProtocol {
        /// Untyped pointer to the underlying `PangoFontDescription` instance.
    /// For type-safe access, use the generated, typed pointer `font_description_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontDescription` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoFontDescription>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontDescription` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoFontDescription>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontDescription` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontDescription` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontDescription` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoFontDescription>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontDescription` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoFontDescription>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoFontDescription` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FontDescription` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoFontDescription>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoFontDescription, cannot ref(font_description_ptr)
    }

    /// Reference intialiser for a related type that implements `FontDescriptionProtocol`
    /// `PangoFontDescription` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FontDescriptionProtocol`
    @inlinable public init<T: FontDescriptionProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoFontDescription, cannot ref(font_description_ptr)
    }

    /// Do-nothing destructor for `PangoFontDescription`.
    deinit {
        // no reference counting for PangoFontDescription, cannot unref(font_description_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoFontDescription, cannot ref(font_description_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoFontDescription, cannot ref(font_description_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoFontDescription, cannot ref(font_description_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoFontDescription, cannot ref(font_description_ptr)
    }

    /// Creates a new font description structure with all fields unset.
    @inlinable public init() {
        let rv = pango_font_description_new()
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new font description from a string representation.
    /// 
    /// The string must have the form
    /// 
    ///     "\[FAMILY-LIST] \[STYLE-OPTIONS] \[SIZE] \[VARIATIONS]",
    /// 
    /// where FAMILY-LIST is a comma-separated list of families optionally
    /// terminated by a comma, STYLE_OPTIONS is a whitespace-separated list
    /// of words where each word describes one of style, variant, weight,
    /// stretch, or gravity, and SIZE is a decimal number (size in points)
    /// or optionally followed by the unit modifier "px" for absolute size.
    /// VARIATIONS is a comma-separated list of font variation
    /// specifications of the form "\`axis`=value" (the = sign is optional).
    /// 
    /// The following words are understood as styles:
    /// "Normal", "Roman", "Oblique", "Italic".
    /// 
    /// The following words are understood as variants:
    /// "Small-Caps".
    /// 
    /// The following words are understood as weights:
    /// "Thin", "Ultra-Light", "Extra-Light", "Light", "Semi-Light",
    /// "Demi-Light", "Book", "Regular", "Medium", "Semi-Bold", "Demi-Bold",
    /// "Bold", "Ultra-Bold", "Extra-Bold", "Heavy", "Black", "Ultra-Black",
    /// "Extra-Black".
    /// 
    /// The following words are understood as stretch values:
    /// "Ultra-Condensed", "Extra-Condensed", "Condensed", "Semi-Condensed",
    /// "Semi-Expanded", "Expanded", "Extra-Expanded", "Ultra-Expanded".
    /// 
    /// The following words are understood as gravity values:
    /// "Not-Rotated", "South", "Upside-Down", "North", "Rotated-Left",
    /// "East", "Rotated-Right", "West".
    /// 
    /// Any one of the options may be absent. If FAMILY-LIST is absent, then
    /// the family_name field of the resulting font description will be
    /// initialized to `nil`. If STYLE-OPTIONS is missing, then all style
    /// options will be set to the default values. If SIZE is missing, the
    /// size in the resulting font description will be set to 0.
    /// 
    /// A typical example:
    /// 
    ///     "Cantarell Italic Light 15 \`wght`=200"
    @inlinable public static func from(string str: UnsafePointer<CChar>!) -> FontDescription! {
        guard let rv = FontDescription(gconstpointer: gconstpointer(pango_font_description_from_string(str))) else { return nil }
        return rv
    }

}

// MARK: no FontDescription properties

// MARK: no FontDescription signals

// MARK: FontDescription has no signals
// MARK: FontDescription Record: FontDescriptionProtocol extension (methods and fields)
public extension FontDescriptionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontDescription` instance.
    @inlinable var font_description_ptr: UnsafeMutablePointer<PangoFontDescription>! { return ptr?.assumingMemoryBound(to: PangoFontDescription.self) }

    /// Determines if the style attributes of `new_match` are a closer match
    /// for `desc` than those of `old_match` are, or if `old_match` is `nil`,
    /// determines if `new_match` is a match at all.
    /// 
    /// Approximate matching is done for weight and style; other style attributes
    /// must match exactly. Style attributes are all attributes other than family
    /// and size-related attributes. Approximate matching for style considers
    /// `PANGO_STYLE_OBLIQUE` and `PANGO_STYLE_ITALIC` as matches, but not as good
    /// a match as when the styles are equal.
    /// 
    /// Note that `old_match` must match `desc`.
    @inlinable func betterMatch<FontDescriptionT: FontDescriptionProtocol>(oldMatch: FontDescriptionT?, newMatch: FontDescriptionT) -> Bool {
        let rv = ((pango_font_description_better_match(font_description_ptr, oldMatch?.font_description_ptr, newMatch.font_description_ptr)) != 0)
        return rv
    }

    /// Make a copy of a `PangoFontDescription`.
    @inlinable func copy() -> FontDescriptionRef! {
        guard let rv = FontDescriptionRef(gconstpointer: gconstpointer(pango_font_description_copy(font_description_ptr))) else { return nil }
        return rv
    }

    /// Make a copy of a `PangoFontDescription`, but don't duplicate
    /// allocated fields.
    /// 
    /// This is like [method`Pango.FontDescription.copy`], but only a shallow
    /// copy is made of the family name and other allocated fields. The result
    /// can only be used until `desc` is modified or freed. This is meant
    /// to be used when the copy is only needed temporarily.
    @inlinable func copyStatic() -> FontDescriptionRef! {
        guard let rv = FontDescriptionRef(gconstpointer: gconstpointer(pango_font_description_copy_static(font_description_ptr))) else { return nil }
        return rv
    }

    /// Compares two font descriptions for equality.
    /// 
    /// Two font descriptions are considered equal if the fonts they describe
    /// are provably identical. This means that their masks do not have to match,
    /// as long as other fields are all the same. (Two font descriptions may
    /// result in identical fonts being loaded, but still compare `false`.)
    @inlinable func equal<FontDescriptionT: FontDescriptionProtocol>(desc2: FontDescriptionT) -> Bool {
        let rv = ((pango_font_description_equal(font_description_ptr, desc2.font_description_ptr)) != 0)
        return rv
    }

    /// Frees a font description.
    @inlinable func free() {
        pango_font_description_free(font_description_ptr)
    
    }

    /// Gets the family name field of a font description.
    /// 
    /// See [method`Pango.FontDescription.set_family`].
    @inlinable func getFamily() -> String! {
        let rv = pango_font_description_get_family(font_description_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the gravity field of a font description.
    /// 
    /// See [method`Pango.FontDescription.set_gravity`].
    @inlinable func getGravity() -> PangoGravity {
        let rv = pango_font_description_get_gravity(font_description_ptr)
        return rv
    }

    /// Determines which fields in a font description have been set.
    @inlinable func getSetFields() -> FontMask {
        let rv = FontMask(pango_font_description_get_set_fields(font_description_ptr))
        return rv
    }

    /// Gets the size field of a font description.
    /// 
    /// See [method`Pango.FontDescription.set_size`].
    @inlinable func getSize() -> Int {
        let rv = Int(pango_font_description_get_size(font_description_ptr))
        return rv
    }

    /// Determines whether the size of the font is in points (not absolute)
    /// or device units (absolute).
    /// 
    /// See [method`Pango.FontDescription.set_size`]
    /// and [method`Pango.FontDescription.set_absolute_size`].
    @inlinable func getSizeIsAbsolute() -> Bool {
        let rv = ((pango_font_description_get_size_is_absolute(font_description_ptr)) != 0)
        return rv
    }

    /// Gets the stretch field of a font description.
    /// 
    /// See [method`Pango.FontDescription.set_stretch`].
    @inlinable func getStretch() -> PangoStretch {
        let rv = pango_font_description_get_stretch(font_description_ptr)
        return rv
    }

    /// Gets the style field of a `PangoFontDescription`.
    /// 
    /// See [method`Pango.FontDescription.set_style`].
    @inlinable func getStyle() -> PangoStyle {
        let rv = pango_font_description_get_style(font_description_ptr)
        return rv
    }

    /// Gets the variant field of a `PangoFontDescription`.
    /// 
    /// See [method`Pango.FontDescription.set_variant`].
    @inlinable func getVariant() -> PangoVariant {
        let rv = pango_font_description_get_variant(font_description_ptr)
        return rv
    }

    /// Gets the variations field of a font description.
    /// 
    /// See [method`Pango.FontDescription.set_variations`].
    @inlinable func getVariations() -> String! {
        let rv = pango_font_description_get_variations(font_description_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the weight field of a font description.
    /// 
    /// See [method`Pango.FontDescription.set_weight`].
    @inlinable func getWeight() -> PangoWeight {
        let rv = pango_font_description_get_weight(font_description_ptr)
        return rv
    }

    /// Computes a hash of a `PangoFontDescription` structure.
    /// 
    /// This is suitable to be used, for example, as an argument
    /// to `g_hash_table_new()`. The hash value is independent of `desc-`&gt;mask.
    @inlinable func hash() -> Int {
        let rv = Int(pango_font_description_hash(font_description_ptr))
        return rv
    }

    /// Merges the fields that are set in `desc_to_merge` into the fields in
    /// `desc`.
    /// 
    /// If `replace_existing` is `false`, only fields in `desc` that
    /// are not already set are affected. If `true`, then fields that are
    /// already set will be replaced as well.
    /// 
    /// If `desc_to_merge` is `nil`, this function performs nothing.
    @inlinable func merge(descToMerge: FontDescriptionRef? = nil, replaceExisting: Bool) {
        pango_font_description_merge(font_description_ptr, descToMerge?.font_description_ptr, gboolean((replaceExisting) ? 1 : 0))
    
    }
    /// Merges the fields that are set in `desc_to_merge` into the fields in
    /// `desc`.
    /// 
    /// If `replace_existing` is `false`, only fields in `desc` that
    /// are not already set are affected. If `true`, then fields that are
    /// already set will be replaced as well.
    /// 
    /// If `desc_to_merge` is `nil`, this function performs nothing.
    @inlinable func merge<FontDescriptionT: FontDescriptionProtocol>(descToMerge: FontDescriptionT?, replaceExisting: Bool) {
        pango_font_description_merge(font_description_ptr, descToMerge?.font_description_ptr, gboolean((replaceExisting) ? 1 : 0))
    
    }

    /// Merges the fields that are set in `desc_to_merge` into the fields in
    /// `desc`, without copying allocated fields.
    /// 
    /// This is like [method`Pango.FontDescription.merge`], but only a shallow copy
    /// is made of the family name and other allocated fields. `desc` can only
    /// be used until `desc_to_merge` is modified or freed. This is meant to
    /// be used when the merged font description is only needed temporarily.
    @inlinable func mergeStatic<FontDescriptionT: FontDescriptionProtocol>(descToMerge: FontDescriptionT, replaceExisting: Bool) {
        pango_font_description_merge_static(font_description_ptr, descToMerge.font_description_ptr, gboolean((replaceExisting) ? 1 : 0))
    
    }

    /// Sets the size field of a font description, in device units.
    /// 
    /// This is mutually exclusive with [method`Pango.FontDescription.set_size`]
    /// which sets the font size in points.
    @inlinable func setAbsolute(size: CDouble) {
        pango_font_description_set_absolute_size(font_description_ptr, size)
    
    }

    /// Sets the family name field of a font description.
    /// 
    /// The family
    /// name represents a family of related font styles, and will
    /// resolve to a particular `PangoFontFamily`. In some uses of
    /// `PangoFontDescription`, it is also possible to use a comma
    /// separated list of family names for this field.
    @inlinable func set(family: UnsafePointer<CChar>!) {
        pango_font_description_set_family(font_description_ptr, family)
    
    }

    /// Sets the family name field of a font description, without copying the string.
    /// 
    /// This is like [method`Pango.FontDescription.set_family`], except that no
    /// copy of `family` is made. The caller must make sure that the
    /// string passed in stays around until `desc` has been freed or the
    /// name is set again. This function can be used if `family` is a static
    /// string such as a C string literal, or if `desc` is only needed temporarily.
    @inlinable func setFamilyStatic(family: UnsafePointer<CChar>!) {
        pango_font_description_set_family_static(font_description_ptr, family)
    
    }

    /// Sets the gravity field of a font description.
    /// 
    /// The gravity field
    /// specifies how the glyphs should be rotated. If `gravity` is
    /// `PANGO_GRAVITY_AUTO`, this actually unsets the gravity mask on
    /// the font description.
    /// 
    /// This function is seldom useful to the user. Gravity should normally
    /// be set on a `PangoContext`.
    @inlinable func set(gravity: PangoGravity) {
        pango_font_description_set_gravity(font_description_ptr, gravity)
    
    }

    /// Sets the size field of a font description in fractional points.
    /// 
    /// This is mutually exclusive with
    /// [method`Pango.FontDescription.set_absolute_size`].
    @inlinable func set(size: Int) {
        pango_font_description_set_size(font_description_ptr, gint(size))
    
    }

    /// Sets the stretch field of a font description.
    /// 
    /// The [enum`Pango.Stretch`] field specifies how narrow or
    /// wide the font should be.
    @inlinable func set(stretch: PangoStretch) {
        pango_font_description_set_stretch(font_description_ptr, stretch)
    
    }

    /// Sets the style field of a `PangoFontDescription`.
    /// 
    /// The [enum`Pango.Style`] enumeration describes whether the font is
    /// slanted and the manner in which it is slanted; it can be either
    /// `PANGO_STYLE_NORMAL`, `PANGO_STYLE_ITALIC`, or `PANGO_STYLE_OBLIQUE`.
    /// 
    /// Most fonts will either have a italic style or an oblique style,
    /// but not both, and font matching in Pango will match italic
    /// specifications with oblique fonts and vice-versa if an exact
    /// match is not found.
    @inlinable func set(style: PangoStyle) {
        pango_font_description_set_style(font_description_ptr, style)
    
    }

    /// Sets the variant field of a font description.
    /// 
    /// The [enum`Pango.Variant`] can either be `PANGO_VARIANT_NORMAL`
    /// or `PANGO_VARIANT_SMALL_CAPS`.
    @inlinable func set(variant: PangoVariant) {
        pango_font_description_set_variant(font_description_ptr, variant)
    
    }

    /// Sets the variations field of a font description.
    /// 
    /// OpenType font variations allow to select a font instance by
    /// specifying values for a number of axes, such as width or weight.
    /// 
    /// The format of the variations string is
    /// 
    ///     AXIS1=VALUE,AXIS2=VALUE...
    /// 
    /// with each AXIS a 4 character tag that identifies a font axis,
    /// and each VALUE a floating point number. Unknown axes are ignored,
    /// and values are clamped to their allowed range.
    /// 
    /// Pango does not currently have a way to find supported axes of
    /// a font. Both harfbuzz or freetype have API for this.
    @inlinable func set(variations: UnsafePointer<CChar>!) {
        pango_font_description_set_variations(font_description_ptr, variations)
    
    }

    /// Sets the variations field of a font description.
    /// 
    /// This is like [method`Pango.FontDescription.set_variations`], except
    /// that no copy of `variations` is made. The caller must make sure that
    /// the string passed in stays around until `desc` has been freed
    /// or the name is set again. This function can be used if
    /// `variations` is a static string such as a C string literal,
    /// or if `desc` is only needed temporarily.
    @inlinable func setVariationsStatic(variations: UnsafePointer<CChar>!) {
        pango_font_description_set_variations_static(font_description_ptr, variations)
    
    }

    /// Sets the weight field of a font description.
    /// 
    /// The weight field
    /// specifies how bold or light the font should be. In addition
    /// to the values of the [enum`Pango.Weight`] enumeration, other
    /// intermediate numeric values are possible.
    @inlinable func set(weight: PangoWeight) {
        pango_font_description_set_weight(font_description_ptr, weight)
    
    }

    /// Creates a filename representation of a font description.
    /// 
    /// The filename is identical to the result from calling
    /// [method`Pango.FontDescription.to_string`], but with underscores
    /// instead of characters that are untypical in filenames, and in
    /// lower case only.
    @inlinable func toFilename() -> String! {
        let rv = pango_font_description_to_filename(font_description_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Creates a string representation of a font description.
    /// 
    /// See [type_func`Pango.FontDescription.from_string`] for a description
    /// of the format of the string representation. The family list in
    /// the string description will only have a terminating comma if
    /// the last word of the list is a valid style option.
    @inlinable func toString() -> String! {
        let rv = pango_font_description_to_string(font_description_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Unsets some of the fields in a `PangoFontDescription`.
    /// 
    /// The unset fields will get back to their default values.
    @inlinable func unsetFields(toUnset: FontMask) {
        pango_font_description_unset_fields(font_description_ptr, toUnset.value)
    
    }

    /// Create a new font description attribute.
    /// 
    /// This attribute allows setting family, style, weight, variant,
    /// stretch, and size simultaneously.
    @inlinable func attrFontDescNew() -> AttributeRef! {
        let rv = AttributeRef(gconstpointer: gconstpointer(pango_attr_font_desc_new(font_description_ptr)))
        return rv
    }
    /// Gets the family name field of a font description.
    /// 
    /// See [method`Pango.FontDescription.set_family`].
    @inlinable var family: String! {
        /// Gets the family name field of a font description.
        /// 
        /// See [method`Pango.FontDescription.set_family`].
        get {
            let rv = pango_font_description_get_family(font_description_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the family name field of a font description.
        /// 
        /// The family
        /// name represents a family of related font styles, and will
        /// resolve to a particular `PangoFontFamily`. In some uses of
        /// `PangoFontDescription`, it is also possible to use a comma
        /// separated list of family names for this field.
        nonmutating set {
            pango_font_description_set_family(font_description_ptr, newValue)
        }
    }

    /// Gets the gravity field of a font description.
    /// 
    /// See [method`Pango.FontDescription.set_gravity`].
    @inlinable var gravity: PangoGravity {
        /// Gets the gravity field of a font description.
        /// 
        /// See [method`Pango.FontDescription.set_gravity`].
        get {
            let rv = pango_font_description_get_gravity(font_description_ptr)
            return rv
        }
        /// Sets the gravity field of a font description.
        /// 
        /// The gravity field
        /// specifies how the glyphs should be rotated. If `gravity` is
        /// `PANGO_GRAVITY_AUTO`, this actually unsets the gravity mask on
        /// the font description.
        /// 
        /// This function is seldom useful to the user. Gravity should normally
        /// be set on a `PangoContext`.
        nonmutating set {
            pango_font_description_set_gravity(font_description_ptr, newValue)
        }
    }

    /// Determines which fields in a font description have been set.
    @inlinable var setFields: FontMask {
        /// Determines which fields in a font description have been set.
        get {
            let rv = FontMask(pango_font_description_get_set_fields(font_description_ptr))
            return rv
        }
    }

    /// Gets the size field of a font description.
    /// 
    /// See [method`Pango.FontDescription.set_size`].
    @inlinable var size: Int {
        /// Gets the size field of a font description.
        /// 
        /// See [method`Pango.FontDescription.set_size`].
        get {
            let rv = Int(pango_font_description_get_size(font_description_ptr))
            return rv
        }
        /// Sets the size field of a font description in fractional points.
        /// 
        /// This is mutually exclusive with
        /// [method`Pango.FontDescription.set_absolute_size`].
        nonmutating set {
            pango_font_description_set_size(font_description_ptr, gint(newValue))
        }
    }

    /// Determines whether the size of the font is in points (not absolute)
    /// or device units (absolute).
    /// 
    /// See [method`Pango.FontDescription.set_size`]
    /// and [method`Pango.FontDescription.set_absolute_size`].
    @inlinable var sizeIsAbsolute: Bool {
        /// Determines whether the size of the font is in points (not absolute)
        /// or device units (absolute).
        /// 
        /// See [method`Pango.FontDescription.set_size`]
        /// and [method`Pango.FontDescription.set_absolute_size`].
        get {
            let rv = ((pango_font_description_get_size_is_absolute(font_description_ptr)) != 0)
            return rv
        }
    }

    /// Gets the stretch field of a font description.
    /// 
    /// See [method`Pango.FontDescription.set_stretch`].
    @inlinable var stretch: PangoStretch {
        /// Gets the stretch field of a font description.
        /// 
        /// See [method`Pango.FontDescription.set_stretch`].
        get {
            let rv = pango_font_description_get_stretch(font_description_ptr)
            return rv
        }
        /// Sets the stretch field of a font description.
        /// 
        /// The [enum`Pango.Stretch`] field specifies how narrow or
        /// wide the font should be.
        nonmutating set {
            pango_font_description_set_stretch(font_description_ptr, newValue)
        }
    }

    /// Gets the style field of a `PangoFontDescription`.
    /// 
    /// See [method`Pango.FontDescription.set_style`].
    @inlinable var style: PangoStyle {
        /// Gets the style field of a `PangoFontDescription`.
        /// 
        /// See [method`Pango.FontDescription.set_style`].
        get {
            let rv = pango_font_description_get_style(font_description_ptr)
            return rv
        }
        /// Sets the style field of a `PangoFontDescription`.
        /// 
        /// The [enum`Pango.Style`] enumeration describes whether the font is
        /// slanted and the manner in which it is slanted; it can be either
        /// `PANGO_STYLE_NORMAL`, `PANGO_STYLE_ITALIC`, or `PANGO_STYLE_OBLIQUE`.
        /// 
        /// Most fonts will either have a italic style or an oblique style,
        /// but not both, and font matching in Pango will match italic
        /// specifications with oblique fonts and vice-versa if an exact
        /// match is not found.
        nonmutating set {
            pango_font_description_set_style(font_description_ptr, newValue)
        }
    }

    /// Gets the variant field of a `PangoFontDescription`.
    /// 
    /// See [method`Pango.FontDescription.set_variant`].
    @inlinable var variant: PangoVariant {
        /// Gets the variant field of a `PangoFontDescription`.
        /// 
        /// See [method`Pango.FontDescription.set_variant`].
        get {
            let rv = pango_font_description_get_variant(font_description_ptr)
            return rv
        }
        /// Sets the variant field of a font description.
        /// 
        /// The [enum`Pango.Variant`] can either be `PANGO_VARIANT_NORMAL`
        /// or `PANGO_VARIANT_SMALL_CAPS`.
        nonmutating set {
            pango_font_description_set_variant(font_description_ptr, newValue)
        }
    }

    /// Gets the variations field of a font description.
    /// 
    /// See [method`Pango.FontDescription.set_variations`].
    @inlinable var variations: String! {
        /// Gets the variations field of a font description.
        /// 
        /// See [method`Pango.FontDescription.set_variations`].
        get {
            let rv = pango_font_description_get_variations(font_description_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the variations field of a font description.
        /// 
        /// OpenType font variations allow to select a font instance by
        /// specifying values for a number of axes, such as width or weight.
        /// 
        /// The format of the variations string is
        /// 
        ///     AXIS1=VALUE,AXIS2=VALUE...
        /// 
        /// with each AXIS a 4 character tag that identifies a font axis,
        /// and each VALUE a floating point number. Unknown axes are ignored,
        /// and values are clamped to their allowed range.
        /// 
        /// Pango does not currently have a way to find supported axes of
        /// a font. Both harfbuzz or freetype have API for this.
        nonmutating set {
            pango_font_description_set_variations(font_description_ptr, newValue)
        }
    }

    /// Gets the weight field of a font description.
    /// 
    /// See [method`Pango.FontDescription.set_weight`].
    @inlinable var weight: PangoWeight {
        /// Gets the weight field of a font description.
        /// 
        /// See [method`Pango.FontDescription.set_weight`].
        get {
            let rv = pango_font_description_get_weight(font_description_ptr)
            return rv
        }
        /// Sets the weight field of a font description.
        /// 
        /// The weight field
        /// specifies how bold or light the font should be. In addition
        /// to the values of the [enum`Pango.Weight`] enumeration, other
        /// intermediate numeric values are possible.
        nonmutating set {
            pango_font_description_set_weight(font_description_ptr, newValue)
        }
    }


}



