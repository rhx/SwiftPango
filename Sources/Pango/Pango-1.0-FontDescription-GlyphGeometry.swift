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
/// The `PangoFontDescription` structure represents the description
/// of an ideal font. These structures are used both to list
/// what fonts are available on the system and also for specifying
/// the characteristics of a font to load.
public protocol FontDescriptionProtocol {
        /// Untyped pointer to the underlying `PangoFontDescription` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFontDescription` instance.
    var font_description_ptr: UnsafeMutablePointer<PangoFontDescription>! { get }

}

/// The `FontDescriptionRef` type acts as a lightweight Swift reference to an underlying `PangoFontDescription` instance.
/// It exposes methods that can operate on this data type through `FontDescriptionProtocol` conformance.
/// Use `FontDescriptionRef` only as an `unowned` reference to an existing `PangoFontDescription` instance.
///
/// The `PangoFontDescription` structure represents the description
/// of an ideal font. These structures are used both to list
/// what fonts are available on the system and also for specifying
/// the characteristics of a font to load.
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
    @inlinable init(raw: UnsafeRawPointer) {
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
    /// Creates a new font description from a string representation in the
    /// form
    /// 
    /// "\[FAMILY-LIST] \[STYLE-OPTIONS] \[SIZE] \[VARIATIONS]",
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
    /// "Cantarell Italic Light 15 \`wght`=200"
    @inlinable static func from(string str: UnsafePointer<CChar>!) -> FontDescriptionRef! {
        guard let rv = FontDescriptionRef(gconstpointer: gconstpointer(pango_font_description_from_string(str))) else { return nil }
        return rv
    }
}

/// The `FontDescription` type acts as an owner of an underlying `PangoFontDescription` instance.
/// It provides the methods that can operate on this data type through `FontDescriptionProtocol` conformance.
/// Use `FontDescription` as a strong reference or owner of a `PangoFontDescription` instance.
///
/// The `PangoFontDescription` structure represents the description
/// of an ideal font. These structures are used both to list
/// what fonts are available on the system and also for specifying
/// the characteristics of a font to load.
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
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
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

    /// Creates a new font description from a string representation in the
    /// form
    /// 
    /// "\[FAMILY-LIST] \[STYLE-OPTIONS] \[SIZE] \[VARIATIONS]",
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
    /// "Cantarell Italic Light 15 \`wght`=200"
    @inlinable public static func from(string str: UnsafePointer<CChar>!) -> FontDescription! {
        guard let rv = FontDescription(gconstpointer: gconstpointer(pango_font_description_from_string(str))) else { return nil }
        return rv
    }

}

// MARK: no FontDescription properties

// MARK: no FontDescription signals


// MARK: FontDescription Record: FontDescriptionProtocol extension (methods and fields)
public extension FontDescriptionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontDescription` instance.
    @inlinable var font_description_ptr: UnsafeMutablePointer<PangoFontDescription>! { return ptr?.assumingMemoryBound(to: PangoFontDescription.self) }

    /// Determines if the style attributes of `new_match` are a closer match
    /// for `desc` than those of `old_match` are, or if `old_match` is `nil`,
    /// determines if `new_match` is a match at all.
    /// Approximate matching is done for
    /// weight and style; other style attributes must match exactly.
    /// Style attributes are all attributes other than family and size-related
    /// attributes.  Approximate matching for style considers PANGO_STYLE_OBLIQUE
    /// and PANGO_STYLE_ITALIC as matches, but not as good a match as when the
    /// styles are equal.
    /// 
    /// Note that `old_match` must match `desc`.
    @inlinable func betterMatch<FontDescriptionT: FontDescriptionProtocol>(oldMatch old_match: FontDescriptionT? = nil, newMatch new_match: FontDescriptionT) -> Bool {
        let rv = ((pango_font_description_better_match(font_description_ptr, old_match?.font_description_ptr, new_match.font_description_ptr)) != 0)
        return rv
    }

    /// Make a copy of a `PangoFontDescription`.
    @inlinable func copy() -> FontDescriptionRef! {
        guard let rv = FontDescriptionRef(gconstpointer: gconstpointer(pango_font_description_copy(font_description_ptr))) else { return nil }
        return rv
    }

    /// Like `pango_font_description_copy()`, but only a shallow copy is made
    /// of the family name and other allocated fields. The result can only
    /// be used until `desc` is modified or freed. This is meant to be used
    /// when the copy is only needed temporarily.
    @inlinable func copyStatic() -> FontDescriptionRef! {
        guard let rv = FontDescriptionRef(gconstpointer: gconstpointer(pango_font_description_copy_static(font_description_ptr))) else { return nil }
        return rv
    }

    /// Compares two font descriptions for equality. Two font descriptions
    /// are considered equal if the fonts they describe are provably identical.
    /// This means that their masks do not have to match, as long as other fields
    /// are all the same. (Two font descriptions may result in identical fonts
    /// being loaded, but still compare `false`.)
    @inlinable func equal<FontDescriptionT: FontDescriptionProtocol>(desc2: FontDescriptionT) -> Bool {
        let rv = ((pango_font_description_equal(font_description_ptr, desc2.font_description_ptr)) != 0)
        return rv
    }

    /// Frees a font description.
    @inlinable func free() {
        pango_font_description_free(font_description_ptr)
    
    }

    /// Gets the family name field of a font description. See
    /// `pango_font_description_set_family()`.
    @inlinable func getFamily() -> String! {
        let rv = pango_font_description_get_family(font_description_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the gravity field of a font description. See
    /// `pango_font_description_set_gravity()`.
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
    /// See `pango_font_description_set_size()`.
    @inlinable func getSize() -> Int {
        let rv = Int(pango_font_description_get_size(font_description_ptr))
        return rv
    }

    /// Determines whether the size of the font is in points (not absolute) or device units (absolute).
    /// See `pango_font_description_set_size()` and `pango_font_description_set_absolute_size()`.
    @inlinable func getSizeIsAbsolute() -> Bool {
        let rv = ((pango_font_description_get_size_is_absolute(font_description_ptr)) != 0)
        return rv
    }

    /// Gets the stretch field of a font description.
    /// See `pango_font_description_set_stretch()`.
    @inlinable func getStretch() -> PangoStretch {
        let rv = pango_font_description_get_stretch(font_description_ptr)
        return rv
    }

    /// Gets the style field of a `PangoFontDescription`. See
    /// `pango_font_description_set_style()`.
    @inlinable func getStyle() -> PangoStyle {
        let rv = pango_font_description_get_style(font_description_ptr)
        return rv
    }

    /// Gets the variant field of a `PangoFontDescription`. See
    /// `pango_font_description_set_variant()`.
    @inlinable func getVariant() -> PangoVariant {
        let rv = pango_font_description_get_variant(font_description_ptr)
        return rv
    }

    /// Gets the variations field of a font description. See
    /// `pango_font_description_set_variations()`.
    @inlinable func getVariations() -> String! {
        let rv = pango_font_description_get_variations(font_description_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the weight field of a font description. See
    /// `pango_font_description_set_weight()`.
    @inlinable func getWeight() -> PangoWeight {
        let rv = pango_font_description_get_weight(font_description_ptr)
        return rv
    }

    /// Computes a hash of a `PangoFontDescription` structure suitable
    /// to be used, for example, as an argument to `g_hash_table_new()`.
    /// The hash value is independent of `desc`->mask.
    @inlinable func hash() -> Int {
        let rv = Int(pango_font_description_hash(font_description_ptr))
        return rv
    }

    /// Merges the fields that are set in `desc_to_merge` into the fields in
    /// `desc`.  If `replace_existing` is `false`, only fields in `desc` that
    /// are not already set are affected. If `true`, then fields that are
    /// already set will be replaced as well.
    /// 
    /// If `desc_to_merge` is `nil`, this function performs nothing.
    @inlinable func merge<FontDescriptionT: FontDescriptionProtocol>(descToMerge desc_to_merge: FontDescriptionT? = nil, replaceExisting replace_existing: Bool) {
        pango_font_description_merge(font_description_ptr, desc_to_merge?.font_description_ptr, gboolean((replace_existing) ? 1 : 0))
    
    }

    /// Like `pango_font_description_merge()`, but only a shallow copy is made
    /// of the family name and other allocated fields. `desc` can only be
    /// used until `desc_to_merge` is modified or freed. This is meant
    /// to be used when the merged font description is only needed temporarily.
    @inlinable func mergeStatic<FontDescriptionT: FontDescriptionProtocol>(descToMerge desc_to_merge: FontDescriptionT, replaceExisting replace_existing: Bool) {
        pango_font_description_merge_static(font_description_ptr, desc_to_merge.font_description_ptr, gboolean((replace_existing) ? 1 : 0))
    
    }

    /// Sets the size field of a font description, in device units. This is mutually
    /// exclusive with `pango_font_description_set_size()` which sets the font size
    /// in points.
    @inlinable func setAbsolute(size: CDouble) {
        pango_font_description_set_absolute_size(font_description_ptr, size)
    
    }

    /// Sets the family name field of a font description. The family
    /// name represents a family of related font styles, and will
    /// resolve to a particular `PangoFontFamily`. In some uses of
    /// `PangoFontDescription`, it is also possible to use a comma
    /// separated list of family names for this field.
    @inlinable func set(family: UnsafePointer<CChar>!) {
        pango_font_description_set_family(font_description_ptr, family)
    
    }

    /// Like `pango_font_description_set_family()`, except that no
    /// copy of `family` is made. The caller must make sure that the
    /// string passed in stays around until `desc` has been freed
    /// or the name is set again. This function can be used if
    /// `family` is a static string such as a C string literal, or
    /// if `desc` is only needed temporarily.
    @inlinable func setFamilyStatic(family: UnsafePointer<CChar>!) {
        pango_font_description_set_family_static(font_description_ptr, family)
    
    }

    /// Sets the gravity field of a font description. The gravity field
    /// specifies how the glyphs should be rotated.  If `gravity` is
    /// `PANGO_GRAVITY_AUTO`, this actually unsets the gravity mask on
    /// the font description.
    /// 
    /// This function is seldom useful to the user.  Gravity should normally
    /// be set on a `PangoContext`.
    @inlinable func set(gravity: PangoGravity) {
        pango_font_description_set_gravity(font_description_ptr, gravity)
    
    }

    /// Sets the size field of a font description in fractional points. This is mutually
    /// exclusive with `pango_font_description_set_absolute_size()`.
    @inlinable func set(size: Int) {
        pango_font_description_set_size(font_description_ptr, gint(size))
    
    }

    /// Sets the stretch field of a font description. The stretch field
    /// specifies how narrow or wide the font should be.
    @inlinable func set(stretch: PangoStretch) {
        pango_font_description_set_stretch(font_description_ptr, stretch)
    
    }

    /// Sets the style field of a `PangoFontDescription`. The
    /// `PangoStyle` enumeration describes whether the font is slanted and
    /// the manner in which it is slanted; it can be either
    /// `PANGO_STYLE_NORMAL`, `PANGO_STYLE_ITALIC`, or `PANGO_STYLE_OBLIQUE`.
    /// Most fonts will either have a italic style or an oblique
    /// style, but not both, and font matching in Pango will
    /// match italic specifications with oblique fonts and vice-versa
    /// if an exact match is not found.
    @inlinable func set(style: PangoStyle) {
        pango_font_description_set_style(font_description_ptr, style)
    
    }

    /// Sets the variant field of a font description. The `PangoVariant`
    /// can either be `PANGO_VARIANT_NORMAL` or `PANGO_VARIANT_SMALL_CAPS`.
    @inlinable func set(variant: PangoVariant) {
        pango_font_description_set_variant(font_description_ptr, variant)
    
    }

    /// Sets the variations field of a font description. OpenType
    /// font variations allow to select a font instance by specifying
    /// values for a number of axes, such as width or weight.
    /// 
    /// The format of the variations string is AXIS1=VALUE,AXIS2=VALUE...,
    /// with each AXIS a 4 character tag that identifies a font axis,
    /// and each VALUE a floating point number. Unknown axes are ignored,
    /// and values are clamped to their allowed range.
    /// 
    /// Pango does not currently have a way to find supported axes of
    /// a font. Both harfbuzz or freetype have API for this.
    @inlinable func set(variations: UnsafePointer<CChar>!) {
        pango_font_description_set_variations(font_description_ptr, variations)
    
    }

    /// Like `pango_font_description_set_variations()`, except that no
    /// copy of `variations` is made. The caller must make sure that the
    /// string passed in stays around until `desc` has been freed
    /// or the name is set again. This function can be used if
    /// `variations` is a static string such as a C string literal, or
    /// if `desc` is only needed temporarily.
    @inlinable func setVariationsStatic(variations: UnsafePointer<CChar>!) {
        pango_font_description_set_variations_static(font_description_ptr, variations)
    
    }

    /// Sets the weight field of a font description. The weight field
    /// specifies how bold or light the font should be. In addition
    /// to the values of the `PangoWeight` enumeration, other intermediate
    /// numeric values are possible.
    @inlinable func set(weight: PangoWeight) {
        pango_font_description_set_weight(font_description_ptr, weight)
    
    }

    /// Creates a filename representation of a font description. The
    /// filename is identical to the result from calling
    /// `pango_font_description_to_string()`, but with underscores instead of
    /// characters that are untypical in filenames, and in lower case only.
    @inlinable func toFilename() -> String! {
        let rv = pango_font_description_to_filename(font_description_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Creates a string representation of a font description. See
    /// `pango_font_description_from_string()` for a description of the
    /// format of the string representation. The family list in the
    /// string description will only have a terminating comma if the
    /// last word of the list is a valid style option.
    @inlinable func toString() -> String! {
        let rv = pango_font_description_to_string(font_description_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Unsets some of the fields in a `PangoFontDescription`.  The unset
    /// fields will get back to their default values.
    @inlinable func unsetFields(toUnset to_unset: FontMask) {
        pango_font_description_unset_fields(font_description_ptr, to_unset.value)
    
    }

    /// Create a new font description attribute. This attribute
    /// allows setting family, style, weight, variant, stretch,
    /// and size simultaneously.
    @inlinable func attrFontDescNew() -> AttributeRef! {
        let rv = AttributeRef(gconstpointer: gconstpointer(pango_attr_font_desc_new(font_description_ptr)))
        return rv
    }
    /// Gets the family name field of a font description. See
    /// `pango_font_description_set_family()`.
    @inlinable var family: String! {
        /// Gets the family name field of a font description. See
        /// `pango_font_description_set_family()`.
        get {
            let rv = pango_font_description_get_family(font_description_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the family name field of a font description. The family
        /// name represents a family of related font styles, and will
        /// resolve to a particular `PangoFontFamily`. In some uses of
        /// `PangoFontDescription`, it is also possible to use a comma
        /// separated list of family names for this field.
        nonmutating set {
            pango_font_description_set_family(font_description_ptr, newValue)
        }
    }

    /// Gets the gravity field of a font description. See
    /// `pango_font_description_set_gravity()`.
    @inlinable var gravity: PangoGravity {
        /// Gets the gravity field of a font description. See
        /// `pango_font_description_set_gravity()`.
        get {
            let rv = pango_font_description_get_gravity(font_description_ptr)
            return rv
        }
        /// Sets the gravity field of a font description. The gravity field
        /// specifies how the glyphs should be rotated.  If `gravity` is
        /// `PANGO_GRAVITY_AUTO`, this actually unsets the gravity mask on
        /// the font description.
        /// 
        /// This function is seldom useful to the user.  Gravity should normally
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
    /// See `pango_font_description_set_size()`.
    @inlinable var size: Int {
        /// Gets the size field of a font description.
        /// See `pango_font_description_set_size()`.
        get {
            let rv = Int(pango_font_description_get_size(font_description_ptr))
            return rv
        }
        /// Sets the size field of a font description in fractional points. This is mutually
        /// exclusive with `pango_font_description_set_absolute_size()`.
        nonmutating set {
            pango_font_description_set_size(font_description_ptr, gint(newValue))
        }
    }

    /// Determines whether the size of the font is in points (not absolute) or device units (absolute).
    /// See `pango_font_description_set_size()` and `pango_font_description_set_absolute_size()`.
    @inlinable var sizeIsAbsolute: Bool {
        /// Determines whether the size of the font is in points (not absolute) or device units (absolute).
        /// See `pango_font_description_set_size()` and `pango_font_description_set_absolute_size()`.
        get {
            let rv = ((pango_font_description_get_size_is_absolute(font_description_ptr)) != 0)
            return rv
        }
    }

    /// Gets the stretch field of a font description.
    /// See `pango_font_description_set_stretch()`.
    @inlinable var stretch: PangoStretch {
        /// Gets the stretch field of a font description.
        /// See `pango_font_description_set_stretch()`.
        get {
            let rv = pango_font_description_get_stretch(font_description_ptr)
            return rv
        }
        /// Sets the stretch field of a font description. The stretch field
        /// specifies how narrow or wide the font should be.
        nonmutating set {
            pango_font_description_set_stretch(font_description_ptr, newValue)
        }
    }

    /// Gets the style field of a `PangoFontDescription`. See
    /// `pango_font_description_set_style()`.
    @inlinable var style: PangoStyle {
        /// Gets the style field of a `PangoFontDescription`. See
        /// `pango_font_description_set_style()`.
        get {
            let rv = pango_font_description_get_style(font_description_ptr)
            return rv
        }
        /// Sets the style field of a `PangoFontDescription`. The
        /// `PangoStyle` enumeration describes whether the font is slanted and
        /// the manner in which it is slanted; it can be either
        /// `PANGO_STYLE_NORMAL`, `PANGO_STYLE_ITALIC`, or `PANGO_STYLE_OBLIQUE`.
        /// Most fonts will either have a italic style or an oblique
        /// style, but not both, and font matching in Pango will
        /// match italic specifications with oblique fonts and vice-versa
        /// if an exact match is not found.
        nonmutating set {
            pango_font_description_set_style(font_description_ptr, newValue)
        }
    }

    /// Gets the variant field of a `PangoFontDescription`. See
    /// `pango_font_description_set_variant()`.
    @inlinable var variant: PangoVariant {
        /// Gets the variant field of a `PangoFontDescription`. See
        /// `pango_font_description_set_variant()`.
        get {
            let rv = pango_font_description_get_variant(font_description_ptr)
            return rv
        }
        /// Sets the variant field of a font description. The `PangoVariant`
        /// can either be `PANGO_VARIANT_NORMAL` or `PANGO_VARIANT_SMALL_CAPS`.
        nonmutating set {
            pango_font_description_set_variant(font_description_ptr, newValue)
        }
    }

    /// Gets the variations field of a font description. See
    /// `pango_font_description_set_variations()`.
    @inlinable var variations: String! {
        /// Gets the variations field of a font description. See
        /// `pango_font_description_set_variations()`.
        get {
            let rv = pango_font_description_get_variations(font_description_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the variations field of a font description. OpenType
        /// font variations allow to select a font instance by specifying
        /// values for a number of axes, such as width or weight.
        /// 
        /// The format of the variations string is AXIS1=VALUE,AXIS2=VALUE...,
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

    /// Gets the weight field of a font description. See
    /// `pango_font_description_set_weight()`.
    @inlinable var weight: PangoWeight {
        /// Gets the weight field of a font description. See
        /// `pango_font_description_set_weight()`.
        get {
            let rv = pango_font_description_get_weight(font_description_ptr)
            return rv
        }
        /// Sets the weight field of a font description. The weight field
        /// specifies how bold or light the font should be. In addition
        /// to the values of the `PangoWeight` enumeration, other intermediate
        /// numeric values are possible.
        nonmutating set {
            pango_font_description_set_weight(font_description_ptr, newValue)
        }
    }


}



// MARK: - FontFaceClass Record

/// The `FontFaceClassProtocol` protocol exposes the methods and properties of an underlying `PangoFontFaceClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontFaceClass`.
/// Alternatively, use `FontFaceClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FontFaceClassProtocol {
        /// Untyped pointer to the underlying `PangoFontFaceClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFontFaceClass` instance.
    var _ptr: UnsafeMutablePointer<PangoFontFaceClass>! { get }

}

/// The `FontFaceClassRef` type acts as a lightweight Swift reference to an underlying `PangoFontFaceClass` instance.
/// It exposes methods that can operate on this data type through `FontFaceClassProtocol` conformance.
/// Use `FontFaceClassRef` only as an `unowned` reference to an existing `PangoFontFaceClass` instance.
///

public struct FontFaceClassRef: FontFaceClassProtocol {
        /// Untyped pointer to the underlying `PangoFontFaceClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontFaceClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoFontFaceClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoFontFaceClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoFontFaceClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoFontFaceClass>?) {
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

    /// Reference intialiser for a related type that implements `FontFaceClassProtocol`
    @inlinable init<T: FontFaceClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FontFaceClass` type acts as an owner of an underlying `PangoFontFaceClass` instance.
/// It provides the methods that can operate on this data type through `FontFaceClassProtocol` conformance.
/// Use `FontFaceClass` as a strong reference or owner of a `PangoFontFaceClass` instance.
///

open class FontFaceClass: FontFaceClassProtocol {
        /// Untyped pointer to the underlying `PangoFontFaceClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontFaceClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoFontFaceClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontFaceClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoFontFaceClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontFaceClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontFaceClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontFaceClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoFontFaceClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontFaceClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoFontFaceClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoFontFaceClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FontFaceClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoFontFaceClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoFontFaceClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `FontFaceClassProtocol`
    /// `PangoFontFaceClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FontFaceClassProtocol`
    @inlinable public init<T: FontFaceClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoFontFaceClass, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `PangoFontFaceClass`.
    deinit {
        // no reference counting for PangoFontFaceClass, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoFontFaceClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoFontFaceClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoFontFaceClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoFontFaceClass, cannot ref(_ptr)
    }



}

// MARK: no FontFaceClass properties

// MARK: no FontFaceClass signals


// MARK: FontFaceClass Record: FontFaceClassProtocol extension (methods and fields)
public extension FontFaceClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontFaceClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoFontFaceClass>! { return ptr?.assumingMemoryBound(to: PangoFontFaceClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var getFaceName is unavailable because get_face_name is void

    // var describe is unavailable because describe is void

    // var listSizes is unavailable because list_sizes is void

    // var isSynthesized is unavailable because is_synthesized is void

    // var getFamily is unavailable because get_family is void

    // var PangoReserved3 is unavailable because _pango_reserved3 is void

    // var PangoReserved4 is unavailable because _pango_reserved4 is void

}



// MARK: - FontFamilyClass Record

/// The `FontFamilyClassProtocol` protocol exposes the methods and properties of an underlying `PangoFontFamilyClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontFamilyClass`.
/// Alternatively, use `FontFamilyClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FontFamilyClassProtocol {
        /// Untyped pointer to the underlying `PangoFontFamilyClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFontFamilyClass` instance.
    var _ptr: UnsafeMutablePointer<PangoFontFamilyClass>! { get }

}

/// The `FontFamilyClassRef` type acts as a lightweight Swift reference to an underlying `PangoFontFamilyClass` instance.
/// It exposes methods that can operate on this data type through `FontFamilyClassProtocol` conformance.
/// Use `FontFamilyClassRef` only as an `unowned` reference to an existing `PangoFontFamilyClass` instance.
///

public struct FontFamilyClassRef: FontFamilyClassProtocol {
        /// Untyped pointer to the underlying `PangoFontFamilyClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontFamilyClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoFontFamilyClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoFontFamilyClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoFontFamilyClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoFontFamilyClass>?) {
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

    /// Reference intialiser for a related type that implements `FontFamilyClassProtocol`
    @inlinable init<T: FontFamilyClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FontFamilyClass` type acts as an owner of an underlying `PangoFontFamilyClass` instance.
/// It provides the methods that can operate on this data type through `FontFamilyClassProtocol` conformance.
/// Use `FontFamilyClass` as a strong reference or owner of a `PangoFontFamilyClass` instance.
///

open class FontFamilyClass: FontFamilyClassProtocol {
        /// Untyped pointer to the underlying `PangoFontFamilyClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontFamilyClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoFontFamilyClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontFamilyClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoFontFamilyClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontFamilyClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontFamilyClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontFamilyClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoFontFamilyClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontFamilyClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoFontFamilyClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoFontFamilyClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FontFamilyClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoFontFamilyClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoFontFamilyClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `FontFamilyClassProtocol`
    /// `PangoFontFamilyClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FontFamilyClassProtocol`
    @inlinable public init<T: FontFamilyClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoFontFamilyClass, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `PangoFontFamilyClass`.
    deinit {
        // no reference counting for PangoFontFamilyClass, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoFontFamilyClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoFontFamilyClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoFontFamilyClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoFontFamilyClass, cannot ref(_ptr)
    }



}

// MARK: no FontFamilyClass properties

// MARK: no FontFamilyClass signals


// MARK: FontFamilyClass Record: FontFamilyClassProtocol extension (methods and fields)
public extension FontFamilyClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontFamilyClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoFontFamilyClass>! { return ptr?.assumingMemoryBound(to: PangoFontFamilyClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var listFaces is unavailable because list_faces is void

    // var getName is unavailable because get_name is void

    // var isMonospace is unavailable because is_monospace is void

    // var isVariable is unavailable because is_variable is void

    // var getFace is unavailable because get_face is void

    // var PangoReserved2 is unavailable because _pango_reserved2 is void

}



// MARK: - FontMapClass Record

/// The `FontMapClassProtocol` protocol exposes the methods and properties of an underlying `PangoFontMapClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontMapClass`.
/// Alternatively, use `FontMapClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoFontMapClass` structure holds the virtual functions for
/// a particular `PangoFontMap` implementation.
public protocol FontMapClassProtocol {
        /// Untyped pointer to the underlying `PangoFontMapClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFontMapClass` instance.
    var _ptr: UnsafeMutablePointer<PangoFontMapClass>! { get }

}

/// The `FontMapClassRef` type acts as a lightweight Swift reference to an underlying `PangoFontMapClass` instance.
/// It exposes methods that can operate on this data type through `FontMapClassProtocol` conformance.
/// Use `FontMapClassRef` only as an `unowned` reference to an existing `PangoFontMapClass` instance.
///
/// The `PangoFontMapClass` structure holds the virtual functions for
/// a particular `PangoFontMap` implementation.
public struct FontMapClassRef: FontMapClassProtocol {
        /// Untyped pointer to the underlying `PangoFontMapClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontMapClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoFontMapClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoFontMapClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoFontMapClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoFontMapClass>?) {
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

    /// Reference intialiser for a related type that implements `FontMapClassProtocol`
    @inlinable init<T: FontMapClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FontMapClass` type acts as an owner of an underlying `PangoFontMapClass` instance.
/// It provides the methods that can operate on this data type through `FontMapClassProtocol` conformance.
/// Use `FontMapClass` as a strong reference or owner of a `PangoFontMapClass` instance.
///
/// The `PangoFontMapClass` structure holds the virtual functions for
/// a particular `PangoFontMap` implementation.
open class FontMapClass: FontMapClassProtocol {
        /// Untyped pointer to the underlying `PangoFontMapClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontMapClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoFontMapClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontMapClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoFontMapClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontMapClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontMapClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontMapClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoFontMapClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontMapClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoFontMapClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoFontMapClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FontMapClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoFontMapClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoFontMapClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `FontMapClassProtocol`
    /// `PangoFontMapClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FontMapClassProtocol`
    @inlinable public init<T: FontMapClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoFontMapClass, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `PangoFontMapClass`.
    deinit {
        // no reference counting for PangoFontMapClass, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoFontMapClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoFontMapClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoFontMapClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoFontMapClass, cannot ref(_ptr)
    }



}

// MARK: no FontMapClass properties

// MARK: no FontMapClass signals


// MARK: FontMapClass Record: FontMapClassProtocol extension (methods and fields)
public extension FontMapClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontMapClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoFontMapClass>! { return ptr?.assumingMemoryBound(to: PangoFontMapClass.self) }


    /// parent `GObjectClass`.
    @inlinable var parentClass: GObjectClass {
        /// parent `GObjectClass`.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var loadFont is unavailable because load_font is void

    // var listFamilies is unavailable because list_families is void

    // var loadFontset is unavailable because load_fontset is void

    /// the type of rendering-system-dependent engines that
    /// can handle fonts of this fonts loaded with this fontmap.
    @inlinable var shapeEngineType: UnsafePointer<CChar>! {
        /// the type of rendering-system-dependent engines that
        /// can handle fonts of this fonts loaded with this fontmap.
        get {
            let rv = _ptr.pointee.shape_engine_type
            return rv
        }
    }

    // var getSerial is unavailable because get_serial is void

    // var changed is unavailable because changed is void

    // var getFamily is unavailable because get_family is void

    // var getFace is unavailable because get_face is void

}



// MARK: - FontMetrics Record

/// The `FontMetricsProtocol` protocol exposes the methods and properties of an underlying `PangoFontMetrics` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontMetrics`.
/// Alternatively, use `FontMetricsRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `PangoFontMetrics` structure holds the overall metric information
/// for a font (possibly restricted to a script). The fields of this
/// structure are private to implementations of a font backend. See
/// the documentation of the corresponding getters for documentation
/// of their meaning.
public protocol FontMetricsProtocol {
        /// Untyped pointer to the underlying `PangoFontMetrics` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFontMetrics` instance.
    var font_metrics_ptr: UnsafeMutablePointer<PangoFontMetrics>! { get }

}

/// The `FontMetricsRef` type acts as a lightweight Swift reference to an underlying `PangoFontMetrics` instance.
/// It exposes methods that can operate on this data type through `FontMetricsProtocol` conformance.
/// Use `FontMetricsRef` only as an `unowned` reference to an existing `PangoFontMetrics` instance.
///
/// A `PangoFontMetrics` structure holds the overall metric information
/// for a font (possibly restricted to a script). The fields of this
/// structure are private to implementations of a font backend. See
/// the documentation of the corresponding getters for documentation
/// of their meaning.
public struct FontMetricsRef: FontMetricsProtocol {
        /// Untyped pointer to the underlying `PangoFontMetrics` instance.
    /// For type-safe access, use the generated, typed pointer `font_metrics_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontMetricsRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoFontMetrics>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoFontMetrics>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoFontMetrics>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoFontMetrics>?) {
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

    /// Reference intialiser for a related type that implements `FontMetricsProtocol`
    @inlinable init<T: FontMetricsProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FontMetrics` type acts as a reference-counted owner of an underlying `PangoFontMetrics` instance.
/// It provides the methods that can operate on this data type through `FontMetricsProtocol` conformance.
/// Use `FontMetrics` as a strong reference or owner of a `PangoFontMetrics` instance.
///
/// A `PangoFontMetrics` structure holds the overall metric information
/// for a font (possibly restricted to a script). The fields of this
/// structure are private to implementations of a font backend. See
/// the documentation of the corresponding getters for documentation
/// of their meaning.
open class FontMetrics: FontMetricsProtocol {
        /// Untyped pointer to the underlying `PangoFontMetrics` instance.
    /// For type-safe access, use the generated, typed pointer `font_metrics_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontMetrics` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoFontMetrics>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontMetrics` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoFontMetrics>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontMetrics` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontMetrics` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontMetrics` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoFontMetrics>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontMetrics` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoFontMetrics>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `PangoFontMetrics`.
    /// i.e., ownership is transferred to the `FontMetrics` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoFontMetrics>) {
        ptr = UnsafeMutableRawPointer(op)
        pango_font_metrics_ref(ptr.assumingMemoryBound(to: PangoFontMetrics.self))
    }

    /// Reference intialiser for a related type that implements `FontMetricsProtocol`
    /// Will retain `PangoFontMetrics`.
    /// - Parameter other: an instance of a related type that implements `FontMetricsProtocol`
    @inlinable public init<T: FontMetricsProtocol>(_ other: T) {
        ptr = other.ptr
        pango_font_metrics_ref(ptr.assumingMemoryBound(to: PangoFontMetrics.self))
    }

    /// Releases the underlying `PangoFontMetrics` instance using `pango_font_metrics_unref`.
    deinit {
        pango_font_metrics_unref(ptr.assumingMemoryBound(to: PangoFontMetrics.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        pango_font_metrics_ref(ptr.assumingMemoryBound(to: PangoFontMetrics.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        pango_font_metrics_ref(ptr.assumingMemoryBound(to: PangoFontMetrics.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        pango_font_metrics_ref(ptr.assumingMemoryBound(to: PangoFontMetrics.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        pango_font_metrics_ref(ptr.assumingMemoryBound(to: PangoFontMetrics.self))
    }



}

// MARK: no FontMetrics properties

// MARK: no FontMetrics signals


// MARK: FontMetrics Record: FontMetricsProtocol extension (methods and fields)
public extension FontMetricsProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontMetrics` instance.
    @inlinable var font_metrics_ptr: UnsafeMutablePointer<PangoFontMetrics>! { return ptr?.assumingMemoryBound(to: PangoFontMetrics.self) }

    /// Gets the approximate character width for a font metrics structure.
    /// This is merely a representative value useful, for example, for
    /// determining the initial size for a window. Actual characters in
    /// text will be wider and narrower than this.
    @inlinable func getApproximateCharWidth() -> Int {
        let rv = Int(pango_font_metrics_get_approximate_char_width(font_metrics_ptr))
        return rv
    }

    /// Gets the approximate digit width for a font metrics structure.
    /// This is merely a representative value useful, for example, for
    /// determining the initial size for a window. Actual digits in
    /// text can be wider or narrower than this, though this value
    /// is generally somewhat more accurate than the result of
    /// `pango_font_metrics_get_approximate_char_width()` for digits.
    @inlinable func getApproximateDigitWidth() -> Int {
        let rv = Int(pango_font_metrics_get_approximate_digit_width(font_metrics_ptr))
        return rv
    }

    /// Gets the ascent from a font metrics structure. The ascent is
    /// the distance from the baseline to the logical top of a line
    /// of text. (The logical top may be above or below the top of the
    /// actual drawn ink. It is necessary to lay out the text to figure
    /// where the ink will be.)
    @inlinable func getAscent() -> Int {
        let rv = Int(pango_font_metrics_get_ascent(font_metrics_ptr))
        return rv
    }

    /// Gets the descent from a font metrics structure. The descent is
    /// the distance from the baseline to the logical bottom of a line
    /// of text. (The logical bottom may be above or below the bottom of the
    /// actual drawn ink. It is necessary to lay out the text to figure
    /// where the ink will be.)
    @inlinable func getDescent() -> Int {
        let rv = Int(pango_font_metrics_get_descent(font_metrics_ptr))
        return rv
    }

    /// Gets the line height from a font metrics structure. The
    /// line height is the distance between successive baselines
    /// in wrapped text.
    /// 
    /// If the line height is not available, 0 is returned.
    @inlinable func getHeight() -> Int {
        let rv = Int(pango_font_metrics_get_height(font_metrics_ptr))
        return rv
    }

    /// Gets the suggested position to draw the strikethrough.
    /// The value returned is the distance <emphasis>above</emphasis> the
    /// baseline of the top of the strikethrough.
    @inlinable func getStrikethroughPosition() -> Int {
        let rv = Int(pango_font_metrics_get_strikethrough_position(font_metrics_ptr))
        return rv
    }

    /// Gets the suggested thickness to draw for the strikethrough.
    @inlinable func getStrikethroughThickness() -> Int {
        let rv = Int(pango_font_metrics_get_strikethrough_thickness(font_metrics_ptr))
        return rv
    }

    /// Gets the suggested position to draw the underline.
    /// The value returned is the distance <emphasis>above</emphasis> the
    /// baseline of the top of the underline. Since most fonts have
    /// underline positions beneath the baseline, this value is typically
    /// negative.
    @inlinable func getUnderlinePosition() -> Int {
        let rv = Int(pango_font_metrics_get_underline_position(font_metrics_ptr))
        return rv
    }

    /// Gets the suggested thickness to draw for the underline.
    @inlinable func getUnderlineThickness() -> Int {
        let rv = Int(pango_font_metrics_get_underline_thickness(font_metrics_ptr))
        return rv
    }

    /// Increase the reference count of a font metrics structure by one.
    @discardableResult @inlinable func ref() -> FontMetricsRef! {
        guard let rv = FontMetricsRef(gconstpointer: gconstpointer(pango_font_metrics_ref(font_metrics_ptr))) else { return nil }
        return rv
    }

    /// Decrease the reference count of a font metrics structure by one. If
    /// the result is zero, frees the structure and any associated
    /// memory.
    @inlinable func unref() {
        pango_font_metrics_unref(font_metrics_ptr)
    
    }
    /// Gets the approximate character width for a font metrics structure.
    /// This is merely a representative value useful, for example, for
    /// determining the initial size for a window. Actual characters in
    /// text will be wider and narrower than this.
    @inlinable var approximateCharWidth: Int {
        /// Gets the approximate character width for a font metrics structure.
        /// This is merely a representative value useful, for example, for
        /// determining the initial size for a window. Actual characters in
        /// text will be wider and narrower than this.
        get {
            let rv = Int(pango_font_metrics_get_approximate_char_width(font_metrics_ptr))
            return rv
        }
    }

    /// Gets the approximate digit width for a font metrics structure.
    /// This is merely a representative value useful, for example, for
    /// determining the initial size for a window. Actual digits in
    /// text can be wider or narrower than this, though this value
    /// is generally somewhat more accurate than the result of
    /// `pango_font_metrics_get_approximate_char_width()` for digits.
    @inlinable var approximateDigitWidth: Int {
        /// Gets the approximate digit width for a font metrics structure.
        /// This is merely a representative value useful, for example, for
        /// determining the initial size for a window. Actual digits in
        /// text can be wider or narrower than this, though this value
        /// is generally somewhat more accurate than the result of
        /// `pango_font_metrics_get_approximate_char_width()` for digits.
        get {
            let rv = Int(pango_font_metrics_get_approximate_digit_width(font_metrics_ptr))
            return rv
        }
    }

    /// Gets the ascent from a font metrics structure. The ascent is
    /// the distance from the baseline to the logical top of a line
    /// of text. (The logical top may be above or below the top of the
    /// actual drawn ink. It is necessary to lay out the text to figure
    /// where the ink will be.)
    @inlinable var ascent: Int {
        /// Gets the ascent from a font metrics structure. The ascent is
        /// the distance from the baseline to the logical top of a line
        /// of text. (The logical top may be above or below the top of the
        /// actual drawn ink. It is necessary to lay out the text to figure
        /// where the ink will be.)
        get {
            let rv = Int(pango_font_metrics_get_ascent(font_metrics_ptr))
            return rv
        }
    }

    /// Gets the descent from a font metrics structure. The descent is
    /// the distance from the baseline to the logical bottom of a line
    /// of text. (The logical bottom may be above or below the bottom of the
    /// actual drawn ink. It is necessary to lay out the text to figure
    /// where the ink will be.)
    @inlinable var descent: Int {
        /// Gets the descent from a font metrics structure. The descent is
        /// the distance from the baseline to the logical bottom of a line
        /// of text. (The logical bottom may be above or below the bottom of the
        /// actual drawn ink. It is necessary to lay out the text to figure
        /// where the ink will be.)
        get {
            let rv = Int(pango_font_metrics_get_descent(font_metrics_ptr))
            return rv
        }
    }

    /// Gets the line height from a font metrics structure. The
    /// line height is the distance between successive baselines
    /// in wrapped text.
    /// 
    /// If the line height is not available, 0 is returned.
    @inlinable var height: Int {
        /// Gets the line height from a font metrics structure. The
        /// line height is the distance between successive baselines
        /// in wrapped text.
        /// 
        /// If the line height is not available, 0 is returned.
        get {
            let rv = Int(pango_font_metrics_get_height(font_metrics_ptr))
            return rv
        }
    }

    /// Gets the suggested position to draw the strikethrough.
    /// The value returned is the distance <emphasis>above</emphasis> the
    /// baseline of the top of the strikethrough.
    @inlinable var strikethroughPosition: Int {
        /// Gets the suggested position to draw the strikethrough.
        /// The value returned is the distance <emphasis>above</emphasis> the
        /// baseline of the top of the strikethrough.
        get {
            let rv = Int(pango_font_metrics_get_strikethrough_position(font_metrics_ptr))
            return rv
        }
    }

    /// Gets the suggested thickness to draw for the strikethrough.
    @inlinable var strikethroughThickness: Int {
        /// Gets the suggested thickness to draw for the strikethrough.
        get {
            let rv = Int(pango_font_metrics_get_strikethrough_thickness(font_metrics_ptr))
            return rv
        }
    }

    /// Gets the suggested position to draw the underline.
    /// The value returned is the distance <emphasis>above</emphasis> the
    /// baseline of the top of the underline. Since most fonts have
    /// underline positions beneath the baseline, this value is typically
    /// negative.
    @inlinable var underlinePosition: Int {
        /// Gets the suggested position to draw the underline.
        /// The value returned is the distance <emphasis>above</emphasis> the
        /// baseline of the top of the underline. Since most fonts have
        /// underline positions beneath the baseline, this value is typically
        /// negative.
        get {
            let rv = Int(pango_font_metrics_get_underline_position(font_metrics_ptr))
            return rv
        }
    }

    /// Gets the suggested thickness to draw for the underline.
    @inlinable var underlineThickness: Int {
        /// Gets the suggested thickness to draw for the underline.
        get {
            let rv = Int(pango_font_metrics_get_underline_thickness(font_metrics_ptr))
            return rv
        }
    }

    // var refCount is unavailable because ref_count is private

    // var _ascent is unavailable because ascent is private

    // var _descent is unavailable because descent is private

    // var _height is unavailable because height is private

    // var _approximateCharWidth is unavailable because approximate_char_width is private

    // var _approximateDigitWidth is unavailable because approximate_digit_width is private

    // var _underlinePosition is unavailable because underline_position is private

    // var _underlineThickness is unavailable because underline_thickness is private

    // var _strikethroughPosition is unavailable because strikethrough_position is private

    // var _strikethroughThickness is unavailable because strikethrough_thickness is private

}



// MARK: - FontsetClass Record

/// The `FontsetClassProtocol` protocol exposes the methods and properties of an underlying `PangoFontsetClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontsetClass`.
/// Alternatively, use `FontsetClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoFontsetClass` structure holds the virtual functions for
/// a particular `PangoFontset` implementation.
public protocol FontsetClassProtocol {
        /// Untyped pointer to the underlying `PangoFontsetClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFontsetClass` instance.
    var _ptr: UnsafeMutablePointer<PangoFontsetClass>! { get }

}

/// The `FontsetClassRef` type acts as a lightweight Swift reference to an underlying `PangoFontsetClass` instance.
/// It exposes methods that can operate on this data type through `FontsetClassProtocol` conformance.
/// Use `FontsetClassRef` only as an `unowned` reference to an existing `PangoFontsetClass` instance.
///
/// The `PangoFontsetClass` structure holds the virtual functions for
/// a particular `PangoFontset` implementation.
public struct FontsetClassRef: FontsetClassProtocol {
        /// Untyped pointer to the underlying `PangoFontsetClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontsetClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoFontsetClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoFontsetClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoFontsetClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoFontsetClass>?) {
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

    /// Reference intialiser for a related type that implements `FontsetClassProtocol`
    @inlinable init<T: FontsetClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FontsetClass` type acts as an owner of an underlying `PangoFontsetClass` instance.
/// It provides the methods that can operate on this data type through `FontsetClassProtocol` conformance.
/// Use `FontsetClass` as a strong reference or owner of a `PangoFontsetClass` instance.
///
/// The `PangoFontsetClass` structure holds the virtual functions for
/// a particular `PangoFontset` implementation.
open class FontsetClass: FontsetClassProtocol {
        /// Untyped pointer to the underlying `PangoFontsetClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontsetClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoFontsetClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontsetClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoFontsetClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontsetClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontsetClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontsetClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoFontsetClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontsetClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoFontsetClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoFontsetClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FontsetClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoFontsetClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoFontsetClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `FontsetClassProtocol`
    /// `PangoFontsetClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FontsetClassProtocol`
    @inlinable public init<T: FontsetClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoFontsetClass, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `PangoFontsetClass`.
    deinit {
        // no reference counting for PangoFontsetClass, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoFontsetClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoFontsetClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoFontsetClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoFontsetClass, cannot ref(_ptr)
    }



}

// MARK: no FontsetClass properties

// MARK: no FontsetClass signals


// MARK: FontsetClass Record: FontsetClassProtocol extension (methods and fields)
public extension FontsetClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontsetClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoFontsetClass>! { return ptr?.assumingMemoryBound(to: PangoFontsetClass.self) }


    /// parent `GObjectClass`.
    @inlinable var parentClass: GObjectClass {
        /// parent `GObjectClass`.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var getFont is unavailable because get_font is void

    // var getMetrics is unavailable because get_metrics is void

    // var getLanguage is unavailable because get_language is void

    // var foreach is unavailable because foreach is void

    // var PangoReserved1 is unavailable because _pango_reserved1 is void

    // var PangoReserved2 is unavailable because _pango_reserved2 is void

    // var PangoReserved3 is unavailable because _pango_reserved3 is void

    // var PangoReserved4 is unavailable because _pango_reserved4 is void

}



// MARK: - FontsetSimpleClass Record

/// The `FontsetSimpleClassProtocol` protocol exposes the methods and properties of an underlying `PangoFontsetSimpleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontsetSimpleClass`.
/// Alternatively, use `FontsetSimpleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FontsetSimpleClassProtocol {
        /// Untyped pointer to the underlying `PangoFontsetSimpleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoFontsetSimpleClass` instance.
    var _ptr: UnsafeMutablePointer<PangoFontsetSimpleClass>! { get }

}

/// The `FontsetSimpleClassRef` type acts as a lightweight Swift reference to an underlying `PangoFontsetSimpleClass` instance.
/// It exposes methods that can operate on this data type through `FontsetSimpleClassProtocol` conformance.
/// Use `FontsetSimpleClassRef` only as an `unowned` reference to an existing `PangoFontsetSimpleClass` instance.
///

public struct FontsetSimpleClassRef: FontsetSimpleClassProtocol {
        /// Untyped pointer to the underlying `PangoFontsetSimpleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontsetSimpleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoFontsetSimpleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoFontsetSimpleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoFontsetSimpleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoFontsetSimpleClass>?) {
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

    /// Reference intialiser for a related type that implements `FontsetSimpleClassProtocol`
    @inlinable init<T: FontsetSimpleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleClassProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FontsetSimpleClass` type acts as an owner of an underlying `PangoFontsetSimpleClass` instance.
/// It provides the methods that can operate on this data type through `FontsetSimpleClassProtocol` conformance.
/// Use `FontsetSimpleClass` as a strong reference or owner of a `PangoFontsetSimpleClass` instance.
///

open class FontsetSimpleClass: FontsetSimpleClassProtocol {
        /// Untyped pointer to the underlying `PangoFontsetSimpleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontsetSimpleClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoFontsetSimpleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontsetSimpleClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoFontsetSimpleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontsetSimpleClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontsetSimpleClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontsetSimpleClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoFontsetSimpleClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontsetSimpleClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoFontsetSimpleClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoFontsetSimpleClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FontsetSimpleClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoFontsetSimpleClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoFontsetSimpleClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `FontsetSimpleClassProtocol`
    /// `PangoFontsetSimpleClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FontsetSimpleClassProtocol`
    @inlinable public init<T: FontsetSimpleClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoFontsetSimpleClass, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `PangoFontsetSimpleClass`.
    deinit {
        // no reference counting for PangoFontsetSimpleClass, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoFontsetSimpleClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoFontsetSimpleClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoFontsetSimpleClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoFontsetSimpleClass, cannot ref(_ptr)
    }



}

// MARK: no FontsetSimpleClass properties

// MARK: no FontsetSimpleClass signals


// MARK: FontsetSimpleClass Record: FontsetSimpleClassProtocol extension (methods and fields)
public extension FontsetSimpleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontsetSimpleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoFontsetSimpleClass>! { return ptr?.assumingMemoryBound(to: PangoFontsetSimpleClass.self) }



}



// MARK: - GlyphGeometry Record

/// The `GlyphGeometryProtocol` protocol exposes the methods and properties of an underlying `PangoGlyphGeometry` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GlyphGeometry`.
/// Alternatively, use `GlyphGeometryRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoGlyphGeometry` structure contains width and positioning
/// information for a single glyph.
public protocol GlyphGeometryProtocol {
        /// Untyped pointer to the underlying `PangoGlyphGeometry` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoGlyphGeometry` instance.
    var _ptr: UnsafeMutablePointer<PangoGlyphGeometry>! { get }

}

/// The `GlyphGeometryRef` type acts as a lightweight Swift reference to an underlying `PangoGlyphGeometry` instance.
/// It exposes methods that can operate on this data type through `GlyphGeometryProtocol` conformance.
/// Use `GlyphGeometryRef` only as an `unowned` reference to an existing `PangoGlyphGeometry` instance.
///
/// The `PangoGlyphGeometry` structure contains width and positioning
/// information for a single glyph.
public struct GlyphGeometryRef: GlyphGeometryProtocol {
        /// Untyped pointer to the underlying `PangoGlyphGeometry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GlyphGeometryRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoGlyphGeometry>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoGlyphGeometry>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoGlyphGeometry>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoGlyphGeometry>?) {
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

    /// Reference intialiser for a related type that implements `GlyphGeometryProtocol`
    @inlinable init<T: GlyphGeometryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `GlyphGeometry` type acts as an owner of an underlying `PangoGlyphGeometry` instance.
/// It provides the methods that can operate on this data type through `GlyphGeometryProtocol` conformance.
/// Use `GlyphGeometry` as a strong reference or owner of a `PangoGlyphGeometry` instance.
///
/// The `PangoGlyphGeometry` structure contains width and positioning
/// information for a single glyph.
open class GlyphGeometry: GlyphGeometryProtocol {
        /// Untyped pointer to the underlying `PangoGlyphGeometry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphGeometry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoGlyphGeometry>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphGeometry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoGlyphGeometry>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphGeometry` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphGeometry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphGeometry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoGlyphGeometry>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphGeometry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoGlyphGeometry>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoGlyphGeometry` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `GlyphGeometry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoGlyphGeometry>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoGlyphGeometry, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `GlyphGeometryProtocol`
    /// `PangoGlyphGeometry` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `GlyphGeometryProtocol`
    @inlinable public init<T: GlyphGeometryProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoGlyphGeometry, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `PangoGlyphGeometry`.
    deinit {
        // no reference counting for PangoGlyphGeometry, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoGlyphGeometry, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoGlyphGeometry, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoGlyphGeometry, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoGlyphGeometry, cannot ref(_ptr)
    }



}

// MARK: no GlyphGeometry properties

// MARK: no GlyphGeometry signals


// MARK: GlyphGeometry Record: GlyphGeometryProtocol extension (methods and fields)
public extension GlyphGeometryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoGlyphGeometry` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoGlyphGeometry>! { return ptr?.assumingMemoryBound(to: PangoGlyphGeometry.self) }


    /// the logical width to use for the the character.
    @inlinable var width: PangoGlyphUnit {
        /// the logical width to use for the the character.
        get {
            let rv = _ptr.pointee.width
            return rv
        }
        /// the logical width to use for the the character.
         set {
            _ptr.pointee.width = newValue
        }
    }

    /// horizontal offset from nominal character position.
    @inlinable var xOffset: PangoGlyphUnit {
        /// horizontal offset from nominal character position.
        get {
            let rv = _ptr.pointee.x_offset
            return rv
        }
        /// horizontal offset from nominal character position.
         set {
            _ptr.pointee.x_offset = newValue
        }
    }

    /// vertical offset from nominal character position.
    @inlinable var yOffset: PangoGlyphUnit {
        /// vertical offset from nominal character position.
        get {
            let rv = _ptr.pointee.y_offset
            return rv
        }
        /// vertical offset from nominal character position.
         set {
            _ptr.pointee.y_offset = newValue
        }
    }

}



