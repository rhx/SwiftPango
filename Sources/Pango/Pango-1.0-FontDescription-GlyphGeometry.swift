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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoFontDescription` instance.
    var font_description_ptr: UnsafeMutablePointer<PangoFontDescription> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension FontDescriptionRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoFontDescription>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FontDescriptionProtocol`
    init<T: FontDescriptionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new font description structure with all fields unset.
    init() {
        let rv: UnsafeMutablePointer<PangoFontDescription>! = cast(pango_font_description_new())
        ptr = UnsafeMutableRawPointer(cast(rv))
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
    static func from(string str: UnsafePointer<CChar>) -> FontDescriptionRef! {
        let rv: UnsafeMutablePointer<PangoFontDescription>! = cast(pango_font_description_from_string(str))
        return rv.map { FontDescriptionRef(cast($0)) }
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontDescription` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<PangoFontDescription>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoFontDescription` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FontDescription` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<PangoFontDescription>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoFontDescription, cannot ref(cast(font_description_ptr))
    }

    /// Reference intialiser for a related type that implements `FontDescriptionProtocol`
    /// `PangoFontDescription` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FontDescriptionProtocol`
    public init<T: FontDescriptionProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.font_description_ptr)
        // no reference counting for PangoFontDescription, cannot ref(cast(font_description_ptr))
    }

    /// Do-nothing destructor for `PangoFontDescription`.
    deinit {
        // no reference counting for PangoFontDescription, cannot unref(cast(font_description_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoFontDescription, cannot ref(cast(font_description_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoFontDescription, cannot ref(cast(font_description_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoFontDescription, cannot ref(cast(font_description_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoFontDescription, cannot ref(cast(font_description_ptr))
    }

    /// Creates a new font description structure with all fields unset.
    public init() {
        let rv: UnsafeMutablePointer<PangoFontDescription>! = cast(pango_font_description_new())
        ptr = UnsafeMutableRawPointer(cast(rv))
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
    public static func from(string str: UnsafePointer<CChar>) -> FontDescription! {
        let rv: UnsafeMutablePointer<PangoFontDescription>! = cast(pango_font_description_from_string(str))
        return rv.map { FontDescription(cast($0)) }
    }

}

// MARK: no FontDescription properties

// MARK: no FontDescription signals


// MARK: FontDescription Record: FontDescriptionProtocol extension (methods and fields)
public extension FontDescriptionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontDescription` instance.
    var font_description_ptr: UnsafeMutablePointer<PangoFontDescription> { return ptr.assumingMemoryBound(to: PangoFontDescription.self) }

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
    func betterMatch(oldMatch old_match: FontDescriptionProtocol, newMatch new_match: FontDescriptionProtocol) -> Bool {
        let rv = pango_font_description_better_match(cast(font_description_ptr), cast(old_match.ptr), cast(new_match.ptr))
        return Bool(rv != 0)
    }

    /// Make a copy of a `PangoFontDescription`.
    func copy() -> UnsafeMutablePointer<PangoFontDescription>! {
        let rv: UnsafeMutablePointer<PangoFontDescription>! = cast(pango_font_description_copy(cast(font_description_ptr)))
        return cast(rv)
    }

    /// Like `pango_font_description_copy()`, but only a shallow copy is made
    /// of the family name and other allocated fields. The result can only
    /// be used until `desc` is modified or freed. This is meant to be used
    /// when the copy is only needed temporarily.
    func copyStatic() -> UnsafeMutablePointer<PangoFontDescription>! {
        let rv: UnsafeMutablePointer<PangoFontDescription>! = cast(pango_font_description_copy_static(cast(font_description_ptr)))
        return cast(rv)
    }

    /// Compares two font descriptions for equality. Two font descriptions
    /// are considered equal if the fonts they describe are provably identical.
    /// This means that their masks do not have to match, as long as other fields
    /// are all the same. (Two font descriptions may result in identical fonts
    /// being loaded, but still compare `false`.)
    func equal(desc2: FontDescriptionProtocol) -> Bool {
        let rv = pango_font_description_equal(cast(font_description_ptr), cast(desc2.ptr))
        return Bool(rv != 0)
    }

    /// Frees a font description.
    func free() {
        pango_font_description_free(cast(font_description_ptr))
    
    }

    /// Gets the family name field of a font description. See
    /// `pango_font_description_set_family()`.
    func getFamily() -> String! {
        let rv: String! = cast(pango_font_description_get_family(cast(font_description_ptr)))
        return cast(rv)
    }

    /// Gets the gravity field of a font description. See
    /// `pango_font_description_set_gravity()`.
    func getGravity() -> PangoGravity {
        let rv = pango_font_description_get_gravity(cast(font_description_ptr))
        return cast(rv)
    }

    /// Determines which fields in a font description have been set.
    func getSetFields() -> PangoFontMask {
        let rv = pango_font_description_get_set_fields(cast(font_description_ptr))
        return cast(rv)
    }

    /// Gets the size field of a font description.
    /// See `pango_font_description_set_size()`.
    func getSize() -> Int {
        let rv: Int = cast(pango_font_description_get_size(cast(font_description_ptr)))
        return Int(rv)
    }

    /// Determines whether the size of the font is in points (not absolute) or device units (absolute).
    /// See `pango_font_description_set_size()` and `pango_font_description_set_absolute_size()`.
    func getSizeIsAbsolute() -> Bool {
        let rv = pango_font_description_get_size_is_absolute(cast(font_description_ptr))
        return Bool(rv != 0)
    }

    /// Gets the stretch field of a font description.
    /// See `pango_font_description_set_stretch()`.
    func getStretch() -> PangoStretch {
        let rv = pango_font_description_get_stretch(cast(font_description_ptr))
        return cast(rv)
    }

    /// Gets the style field of a `PangoFontDescription`. See
    /// `pango_font_description_set_style()`.
    func getStyle() -> PangoStyle {
        let rv = pango_font_description_get_style(cast(font_description_ptr))
        return cast(rv)
    }

    /// Gets the variant field of a `PangoFontDescription`. See
    /// `pango_font_description_set_variant()`.
    func getVariant() -> PangoVariant {
        let rv = pango_font_description_get_variant(cast(font_description_ptr))
        return cast(rv)
    }

    /// Gets the variations field of a font description. See
    /// `pango_font_description_set_variations()`.
    func getVariations() -> String! {
        let rv: String! = cast(pango_font_description_get_variations(cast(font_description_ptr)))
        return cast(rv)
    }

    /// Gets the weight field of a font description. See
    /// `pango_font_description_set_weight()`.
    func getWeight() -> PangoWeight {
        let rv = pango_font_description_get_weight(cast(font_description_ptr))
        return cast(rv)
    }

    /// Computes a hash of a `PangoFontDescription` structure suitable
    /// to be used, for example, as an argument to `g_hash_table_new()`.
    /// The hash value is independent of `desc`->mask.
    func hash() -> Int {
        let rv: Int = cast(pango_font_description_hash(cast(font_description_ptr)))
        return Int(rv)
    }

    /// Merges the fields that are set in `desc_to_merge` into the fields in
    /// `desc`.  If `replace_existing` is `false`, only fields in `desc` that
    /// are not already set are affected. If `true`, then fields that are
    /// already set will be replaced as well.
    /// 
    /// If `desc_to_merge` is `nil`, this function performs nothing.
    func merge(descToMerge desc_to_merge: FontDescriptionProtocol, replaceExisting replace_existing: Bool) {
        pango_font_description_merge(cast(font_description_ptr), cast(desc_to_merge.ptr), gboolean(replace_existing ? 1 : 0))
    
    }

    /// Like `pango_font_description_merge()`, but only a shallow copy is made
    /// of the family name and other allocated fields. `desc` can only be
    /// used until `desc_to_merge` is modified or freed. This is meant
    /// to be used when the merged font description is only needed temporarily.
    func mergeStatic(descToMerge desc_to_merge: FontDescriptionProtocol, replaceExisting replace_existing: Bool) {
        pango_font_description_merge_static(cast(font_description_ptr), cast(desc_to_merge.ptr), gboolean(replace_existing ? 1 : 0))
    
    }

    /// Sets the size field of a font description, in device units. This is mutually
    /// exclusive with `pango_font_description_set_size()` which sets the font size
    /// in points.
    func setAbsolute(size: gdouble) {
        pango_font_description_set_absolute_size(cast(font_description_ptr), size)
    
    }

    /// Sets the family name field of a font description. The family
    /// name represents a family of related font styles, and will
    /// resolve to a particular `PangoFontFamily`. In some uses of
    /// `PangoFontDescription`, it is also possible to use a comma
    /// separated list of family names for this field.
    func set(family: UnsafePointer<CChar>) {
        pango_font_description_set_family(cast(font_description_ptr), family)
    
    }

    /// Like `pango_font_description_set_family()`, except that no
    /// copy of `family` is made. The caller must make sure that the
    /// string passed in stays around until `desc` has been freed
    /// or the name is set again. This function can be used if
    /// `family` is a static string such as a C string literal, or
    /// if `desc` is only needed temporarily.
    func setFamilyStatic(family: UnsafePointer<CChar>) {
        pango_font_description_set_family_static(cast(font_description_ptr), family)
    
    }

    /// Sets the gravity field of a font description. The gravity field
    /// specifies how the glyphs should be rotated.  If `gravity` is
    /// `PANGO_GRAVITY_AUTO`, this actually unsets the gravity mask on
    /// the font description.
    /// 
    /// This function is seldom useful to the user.  Gravity should normally
    /// be set on a `PangoContext`.
    func set(gravity: Gravity) {
        pango_font_description_set_gravity(cast(font_description_ptr), gravity)
    
    }

    /// Sets the size field of a font description in fractional points. This is mutually
    /// exclusive with `pango_font_description_set_absolute_size()`.
    func set(size: CInt) {
        pango_font_description_set_size(cast(font_description_ptr), gint(size))
    
    }

    /// Sets the stretch field of a font description. The stretch field
    /// specifies how narrow or wide the font should be.
    func set(stretch: Stretch) {
        pango_font_description_set_stretch(cast(font_description_ptr), stretch)
    
    }

    /// Sets the style field of a `PangoFontDescription`. The
    /// `PangoStyle` enumeration describes whether the font is slanted and
    /// the manner in which it is slanted; it can be either
    /// `PANGO_STYLE_NORMAL`, `PANGO_STYLE_ITALIC`, or `PANGO_STYLE_OBLIQUE`.
    /// Most fonts will either have a italic style or an oblique
    /// style, but not both, and font matching in Pango will
    /// match italic specifications with oblique fonts and vice-versa
    /// if an exact match is not found.
    func set(style: Style) {
        pango_font_description_set_style(cast(font_description_ptr), style)
    
    }

    /// Sets the variant field of a font description. The `PangoVariant`
    /// can either be `PANGO_VARIANT_NORMAL` or `PANGO_VARIANT_SMALL_CAPS`.
    func set(variant: Variant) {
        pango_font_description_set_variant(cast(font_description_ptr), variant)
    
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
    func set(variations: UnsafePointer<CChar>) {
        pango_font_description_set_variations(cast(font_description_ptr), variations)
    
    }

    /// Like `pango_font_description_set_variations()`, except that no
    /// copy of `variations` is made. The caller must make sure that the
    /// string passed in stays around until `desc` has been freed
    /// or the name is set again. This function can be used if
    /// `variations` is a static string such as a C string literal, or
    /// if `desc` is only needed temporarily.
    func setVariationsStatic(variations: UnsafePointer<CChar>) {
        pango_font_description_set_variations_static(cast(font_description_ptr), variations)
    
    }

    /// Sets the weight field of a font description. The weight field
    /// specifies how bold or light the font should be. In addition
    /// to the values of the `PangoWeight` enumeration, other intermediate
    /// numeric values are possible.
    func set(weight: Weight) {
        pango_font_description_set_weight(cast(font_description_ptr), weight)
    
    }

    /// Creates a filename representation of a font description. The
    /// filename is identical to the result from calling
    /// `pango_font_description_to_string()`, but with underscores instead of
    /// characters that are untypical in filenames, and in lower case only.
    func toFilename() -> String! {
        let rv: String! = cast(pango_font_description_to_filename(cast(font_description_ptr)))
        return cast(rv)
    }

    /// Creates a string representation of a font description. See
    /// `pango_font_description_from_string()` for a description of the
    /// format of the string representation. The family list in the
    /// string description will only have a terminating comma if the
    /// last word of the list is a valid style option.
    func toString() -> String! {
        let rv: String! = cast(pango_font_description_to_string(cast(font_description_ptr)))
        return cast(rv)
    }

    /// Unsets some of the fields in a `PangoFontDescription`.  The unset
    /// fields will get back to their default values.
    func unsetFields(toUnset to_unset: FontMask) {
        pango_font_description_unset_fields(cast(font_description_ptr), to_unset.value)
    
    }

    /// Create a new font description attribute. This attribute
    /// allows setting family, style, weight, variant, stretch,
    /// and size simultaneously.
    func attrFontDescNew() -> UnsafeMutablePointer<PangoAttribute>! {
        let rv: UnsafeMutablePointer<PangoAttribute>! = cast(pango_attr_font_desc_new(cast(font_description_ptr)))
        return cast(rv)
    }
    /// Gets the family name field of a font description. See
    /// `pango_font_description_set_family()`.
    var family: String! {
        /// Gets the family name field of a font description. See
        /// `pango_font_description_set_family()`.
        get {
            let rv: String! = cast(pango_font_description_get_family(cast(font_description_ptr)))
            return cast(rv)
        }
        /// Sets the family name field of a font description. The family
        /// name represents a family of related font styles, and will
        /// resolve to a particular `PangoFontFamily`. In some uses of
        /// `PangoFontDescription`, it is also possible to use a comma
        /// separated list of family names for this field.
        nonmutating set {
            pango_font_description_set_family(cast(font_description_ptr), cast(newValue))
        }
    }

    /// Gets the gravity field of a font description. See
    /// `pango_font_description_set_gravity()`.
    var gravity: PangoGravity {
        /// Gets the gravity field of a font description. See
        /// `pango_font_description_set_gravity()`.
        get {
            let rv = pango_font_description_get_gravity(cast(font_description_ptr))
            return cast(rv)
        }
        /// Sets the gravity field of a font description. The gravity field
        /// specifies how the glyphs should be rotated.  If `gravity` is
        /// `PANGO_GRAVITY_AUTO`, this actually unsets the gravity mask on
        /// the font description.
        /// 
        /// This function is seldom useful to the user.  Gravity should normally
        /// be set on a `PangoContext`.
        nonmutating set {
            pango_font_description_set_gravity(cast(font_description_ptr), cast(newValue))
        }
    }

    /// Determines which fields in a font description have been set.
    var setFields: PangoFontMask {
        /// Determines which fields in a font description have been set.
        get {
            let rv = pango_font_description_get_set_fields(cast(font_description_ptr))
            return cast(rv)
        }
    }

    /// Gets the size field of a font description.
    /// See `pango_font_description_set_size()`.
    var size: Int {
        /// Gets the size field of a font description.
        /// See `pango_font_description_set_size()`.
        get {
            let rv: Int = cast(pango_font_description_get_size(cast(font_description_ptr)))
            return Int(rv)
        }
        /// Sets the size field of a font description in fractional points. This is mutually
        /// exclusive with `pango_font_description_set_absolute_size()`.
        nonmutating set {
            pango_font_description_set_size(cast(font_description_ptr), gint(newValue))
        }
    }

    /// Determines whether the size of the font is in points (not absolute) or device units (absolute).
    /// See `pango_font_description_set_size()` and `pango_font_description_set_absolute_size()`.
    var sizeIsAbsolute: Bool {
        /// Determines whether the size of the font is in points (not absolute) or device units (absolute).
        /// See `pango_font_description_set_size()` and `pango_font_description_set_absolute_size()`.
        get {
            let rv = pango_font_description_get_size_is_absolute(cast(font_description_ptr))
            return Bool(rv != 0)
        }
    }

    /// Gets the stretch field of a font description.
    /// See `pango_font_description_set_stretch()`.
    var stretch: PangoStretch {
        /// Gets the stretch field of a font description.
        /// See `pango_font_description_set_stretch()`.
        get {
            let rv = pango_font_description_get_stretch(cast(font_description_ptr))
            return cast(rv)
        }
        /// Sets the stretch field of a font description. The stretch field
        /// specifies how narrow or wide the font should be.
        nonmutating set {
            pango_font_description_set_stretch(cast(font_description_ptr), cast(newValue))
        }
    }

    /// Gets the style field of a `PangoFontDescription`. See
    /// `pango_font_description_set_style()`.
    var style: PangoStyle {
        /// Gets the style field of a `PangoFontDescription`. See
        /// `pango_font_description_set_style()`.
        get {
            let rv = pango_font_description_get_style(cast(font_description_ptr))
            return cast(rv)
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
            pango_font_description_set_style(cast(font_description_ptr), cast(newValue))
        }
    }

    /// Gets the variant field of a `PangoFontDescription`. See
    /// `pango_font_description_set_variant()`.
    var variant: PangoVariant {
        /// Gets the variant field of a `PangoFontDescription`. See
        /// `pango_font_description_set_variant()`.
        get {
            let rv = pango_font_description_get_variant(cast(font_description_ptr))
            return cast(rv)
        }
        /// Sets the variant field of a font description. The `PangoVariant`
        /// can either be `PANGO_VARIANT_NORMAL` or `PANGO_VARIANT_SMALL_CAPS`.
        nonmutating set {
            pango_font_description_set_variant(cast(font_description_ptr), cast(newValue))
        }
    }

    /// Gets the variations field of a font description. See
    /// `pango_font_description_set_variations()`.
    var variations: String! {
        /// Gets the variations field of a font description. See
        /// `pango_font_description_set_variations()`.
        get {
            let rv: String! = cast(pango_font_description_get_variations(cast(font_description_ptr)))
            return cast(rv)
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
            pango_font_description_set_variations(cast(font_description_ptr), cast(newValue))
        }
    }

    /// Gets the weight field of a font description. See
    /// `pango_font_description_set_weight()`.
    var weight: PangoWeight {
        /// Gets the weight field of a font description. See
        /// `pango_font_description_set_weight()`.
        get {
            let rv = pango_font_description_get_weight(cast(font_description_ptr))
            return cast(rv)
        }
        /// Sets the weight field of a font description. The weight field
        /// specifies how bold or light the font should be. In addition
        /// to the values of the `PangoWeight` enumeration, other intermediate
        /// numeric values are possible.
        nonmutating set {
            pango_font_description_set_weight(cast(font_description_ptr), cast(newValue))
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoFontFaceClass` instance.
    var _ptr: UnsafeMutablePointer<PangoFontFaceClass> { get }
}

/// The `FontFaceClassRef` type acts as a lightweight Swift reference to an underlying `PangoFontFaceClass` instance.
/// It exposes methods that can operate on this data type through `FontFaceClassProtocol` conformance.
/// Use `FontFaceClassRef` only as an `unowned` reference to an existing `PangoFontFaceClass` instance.
///

public struct FontFaceClassRef: FontFaceClassProtocol {
        /// Untyped pointer to the underlying `PangoFontFaceClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FontFaceClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoFontFaceClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FontFaceClassProtocol`
    init<T: FontFaceClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontFaceClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<PangoFontFaceClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoFontFaceClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FontFaceClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<PangoFontFaceClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoFontFaceClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `FontFaceClassProtocol`
    /// `PangoFontFaceClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FontFaceClassProtocol`
    public init<T: FontFaceClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for PangoFontFaceClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `PangoFontFaceClass`.
    deinit {
        // no reference counting for PangoFontFaceClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoFontFaceClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoFontFaceClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoFontFaceClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoFontFaceClass, cannot ref(cast(_ptr))
    }



}

// MARK: no FontFaceClass properties

// MARK: no FontFaceClass signals


// MARK: FontFaceClass Record: FontFaceClassProtocol extension (methods and fields)
public extension FontFaceClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontFaceClass` instance.
    var _ptr: UnsafeMutablePointer<PangoFontFaceClass> { return ptr.assumingMemoryBound(to: PangoFontFaceClass.self) }


    var parentClass: GObjectClass {
        get {
            let rv: GObjectClass = cast(_ptr.pointee.parent_class)
            return rv
        }
    }

    // var getFaceName is unavailable because get_face_name is void

    // var describe is unavailable because describe is void

    // var listSizes is unavailable because list_sizes is void

    // var isSynthesized is unavailable because is_synthesized is void

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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoFontFamilyClass` instance.
    var _ptr: UnsafeMutablePointer<PangoFontFamilyClass> { get }
}

/// The `FontFamilyClassRef` type acts as a lightweight Swift reference to an underlying `PangoFontFamilyClass` instance.
/// It exposes methods that can operate on this data type through `FontFamilyClassProtocol` conformance.
/// Use `FontFamilyClassRef` only as an `unowned` reference to an existing `PangoFontFamilyClass` instance.
///

public struct FontFamilyClassRef: FontFamilyClassProtocol {
        /// Untyped pointer to the underlying `PangoFontFamilyClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FontFamilyClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoFontFamilyClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FontFamilyClassProtocol`
    init<T: FontFamilyClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontFamilyClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<PangoFontFamilyClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoFontFamilyClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FontFamilyClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<PangoFontFamilyClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoFontFamilyClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `FontFamilyClassProtocol`
    /// `PangoFontFamilyClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FontFamilyClassProtocol`
    public init<T: FontFamilyClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for PangoFontFamilyClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `PangoFontFamilyClass`.
    deinit {
        // no reference counting for PangoFontFamilyClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoFontFamilyClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoFontFamilyClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoFontFamilyClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoFontFamilyClass, cannot ref(cast(_ptr))
    }



}

// MARK: no FontFamilyClass properties

// MARK: no FontFamilyClass signals


// MARK: FontFamilyClass Record: FontFamilyClassProtocol extension (methods and fields)
public extension FontFamilyClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontFamilyClass` instance.
    var _ptr: UnsafeMutablePointer<PangoFontFamilyClass> { return ptr.assumingMemoryBound(to: PangoFontFamilyClass.self) }


    var parentClass: GObjectClass {
        get {
            let rv: GObjectClass = cast(_ptr.pointee.parent_class)
            return rv
        }
    }

    // var listFaces is unavailable because list_faces is void

    // var getName is unavailable because get_name is void

    // var isMonospace is unavailable because is_monospace is void

    // var isVariable is unavailable because is_variable is void

    // var PangoReserved2 is unavailable because _pango_reserved2 is void

    // var PangoReserved3 is unavailable because _pango_reserved3 is void

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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoFontMapClass` instance.
    var _ptr: UnsafeMutablePointer<PangoFontMapClass> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension FontMapClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoFontMapClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FontMapClassProtocol`
    init<T: FontMapClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontMapClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<PangoFontMapClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoFontMapClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FontMapClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<PangoFontMapClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoFontMapClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `FontMapClassProtocol`
    /// `PangoFontMapClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FontMapClassProtocol`
    public init<T: FontMapClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for PangoFontMapClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `PangoFontMapClass`.
    deinit {
        // no reference counting for PangoFontMapClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoFontMapClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoFontMapClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoFontMapClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoFontMapClass, cannot ref(cast(_ptr))
    }



}

// MARK: no FontMapClass properties

// MARK: no FontMapClass signals


// MARK: FontMapClass Record: FontMapClassProtocol extension (methods and fields)
public extension FontMapClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontMapClass` instance.
    var _ptr: UnsafeMutablePointer<PangoFontMapClass> { return ptr.assumingMemoryBound(to: PangoFontMapClass.self) }


    /// parent `GObjectClass`.
    var parentClass: GObjectClass {
        /// parent `GObjectClass`.
        get {
            let rv: GObjectClass = cast(_ptr.pointee.parent_class)
            return rv
        }
    }

    // var loadFont is unavailable because load_font is void

    // var listFamilies is unavailable because list_families is void

    // var loadFontset is unavailable because load_fontset is void

    /// the type of rendering-system-dependent engines that
    /// can handle fonts of this fonts loaded with this fontmap.
    var shapeEngineType: UnsafePointer<CChar> {
        /// the type of rendering-system-dependent engines that
        /// can handle fonts of this fonts loaded with this fontmap.
        get {
            let rv: UnsafePointer<CChar> = cast(_ptr.pointee.shape_engine_type)
            return rv
        }
    }

    // var getSerial is unavailable because get_serial is void

    // var changed is unavailable because changed is void

    // var PangoReserved1 is unavailable because _pango_reserved1 is void

    // var PangoReserved2 is unavailable because _pango_reserved2 is void

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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoFontMetrics` instance.
    var font_metrics_ptr: UnsafeMutablePointer<PangoFontMetrics> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension FontMetricsRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoFontMetrics>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FontMetricsProtocol`
    init<T: FontMetricsProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontMetrics` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<PangoFontMetrics>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `PangoFontMetrics`.
    /// i.e., ownership is transferred to the `FontMetrics` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<PangoFontMetrics>) {
        ptr = UnsafeMutableRawPointer(op)
        pango_font_metrics_ref(cast(font_metrics_ptr))
    }

    /// Reference intialiser for a related type that implements `FontMetricsProtocol`
    /// Will retain `PangoFontMetrics`.
    /// - Parameter other: an instance of a related type that implements `FontMetricsProtocol`
    public init<T: FontMetricsProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.font_metrics_ptr)
        pango_font_metrics_ref(cast(font_metrics_ptr))
    }

    /// Releases the underlying `PangoFontMetrics` instance using `pango_font_metrics_unref`.
    deinit {
        pango_font_metrics_unref(cast(font_metrics_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        pango_font_metrics_ref(cast(font_metrics_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        pango_font_metrics_ref(cast(font_metrics_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        pango_font_metrics_ref(cast(font_metrics_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        pango_font_metrics_ref(cast(font_metrics_ptr))
    }



}

// MARK: no FontMetrics properties

// MARK: no FontMetrics signals


// MARK: FontMetrics Record: FontMetricsProtocol extension (methods and fields)
public extension FontMetricsProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontMetrics` instance.
    var font_metrics_ptr: UnsafeMutablePointer<PangoFontMetrics> { return ptr.assumingMemoryBound(to: PangoFontMetrics.self) }

    /// Gets the approximate character width for a font metrics structure.
    /// This is merely a representative value useful, for example, for
    /// determining the initial size for a window. Actual characters in
    /// text will be wider and narrower than this.
    func getApproximateCharWidth() -> Int {
        let rv: Int = cast(pango_font_metrics_get_approximate_char_width(cast(font_metrics_ptr)))
        return cast(rv)
    }

    /// Gets the approximate digit width for a font metrics structure.
    /// This is merely a representative value useful, for example, for
    /// determining the initial size for a window. Actual digits in
    /// text can be wider or narrower than this, though this value
    /// is generally somewhat more accurate than the result of
    /// `pango_font_metrics_get_approximate_char_width()` for digits.
    func getApproximateDigitWidth() -> Int {
        let rv: Int = cast(pango_font_metrics_get_approximate_digit_width(cast(font_metrics_ptr)))
        return cast(rv)
    }

    /// Gets the ascent from a font metrics structure. The ascent is
    /// the distance from the baseline to the logical top of a line
    /// of text. (The logical top may be above or below the top of the
    /// actual drawn ink. It is necessary to lay out the text to figure
    /// where the ink will be.)
    func getAscent() -> Int {
        let rv: Int = cast(pango_font_metrics_get_ascent(cast(font_metrics_ptr)))
        return cast(rv)
    }

    /// Gets the descent from a font metrics structure. The descent is
    /// the distance from the baseline to the logical bottom of a line
    /// of text. (The logical bottom may be above or below the bottom of the
    /// actual drawn ink. It is necessary to lay out the text to figure
    /// where the ink will be.)
    func getDescent() -> Int {
        let rv: Int = cast(pango_font_metrics_get_descent(cast(font_metrics_ptr)))
        return cast(rv)
    }

    /// Gets the line height from a font metrics structure. The
    /// line height is the distance between successive baselines
    /// in wrapped text.
    /// 
    /// If the line height is not available, 0 is returned.
    func getHeight() -> Int {
        let rv: Int = cast(pango_font_metrics_get_height(cast(font_metrics_ptr)))
        return cast(rv)
    }

    /// Gets the suggested position to draw the strikethrough.
    /// The value returned is the distance <emphasis>above</emphasis> the
    /// baseline of the top of the strikethrough.
    func getStrikethroughPosition() -> Int {
        let rv: Int = cast(pango_font_metrics_get_strikethrough_position(cast(font_metrics_ptr)))
        return cast(rv)
    }

    /// Gets the suggested thickness to draw for the strikethrough.
    func getStrikethroughThickness() -> Int {
        let rv: Int = cast(pango_font_metrics_get_strikethrough_thickness(cast(font_metrics_ptr)))
        return cast(rv)
    }

    /// Gets the suggested position to draw the underline.
    /// The value returned is the distance <emphasis>above</emphasis> the
    /// baseline of the top of the underline. Since most fonts have
    /// underline positions beneath the baseline, this value is typically
    /// negative.
    func getUnderlinePosition() -> Int {
        let rv: Int = cast(pango_font_metrics_get_underline_position(cast(font_metrics_ptr)))
        return cast(rv)
    }

    /// Gets the suggested thickness to draw for the underline.
    func getUnderlineThickness() -> Int {
        let rv: Int = cast(pango_font_metrics_get_underline_thickness(cast(font_metrics_ptr)))
        return cast(rv)
    }

    /// Increase the reference count of a font metrics structure by one.
    func ref() -> UnsafeMutablePointer<PangoFontMetrics>! {
        let rv: UnsafeMutablePointer<PangoFontMetrics>! = cast(pango_font_metrics_ref(cast(font_metrics_ptr)))
        return cast(rv)
    }

    /// Decrease the reference count of a font metrics structure by one. If
    /// the result is zero, frees the structure and any associated
    /// memory.
    func unref() {
        pango_font_metrics_unref(cast(font_metrics_ptr))
    
    }
    /// Gets the approximate character width for a font metrics structure.
    /// This is merely a representative value useful, for example, for
    /// determining the initial size for a window. Actual characters in
    /// text will be wider and narrower than this.
    var approximateCharWidth: Int {
        /// Gets the approximate character width for a font metrics structure.
        /// This is merely a representative value useful, for example, for
        /// determining the initial size for a window. Actual characters in
        /// text will be wider and narrower than this.
        get {
            let rv: Int = cast(pango_font_metrics_get_approximate_char_width(cast(font_metrics_ptr)))
            return cast(rv)
        }
    }

    /// Gets the approximate digit width for a font metrics structure.
    /// This is merely a representative value useful, for example, for
    /// determining the initial size for a window. Actual digits in
    /// text can be wider or narrower than this, though this value
    /// is generally somewhat more accurate than the result of
    /// `pango_font_metrics_get_approximate_char_width()` for digits.
    var approximateDigitWidth: Int {
        /// Gets the approximate digit width for a font metrics structure.
        /// This is merely a representative value useful, for example, for
        /// determining the initial size for a window. Actual digits in
        /// text can be wider or narrower than this, though this value
        /// is generally somewhat more accurate than the result of
        /// `pango_font_metrics_get_approximate_char_width()` for digits.
        get {
            let rv: Int = cast(pango_font_metrics_get_approximate_digit_width(cast(font_metrics_ptr)))
            return cast(rv)
        }
    }

    /// Gets the ascent from a font metrics structure. The ascent is
    /// the distance from the baseline to the logical top of a line
    /// of text. (The logical top may be above or below the top of the
    /// actual drawn ink. It is necessary to lay out the text to figure
    /// where the ink will be.)
    var ascent: Int {
        /// Gets the ascent from a font metrics structure. The ascent is
        /// the distance from the baseline to the logical top of a line
        /// of text. (The logical top may be above or below the top of the
        /// actual drawn ink. It is necessary to lay out the text to figure
        /// where the ink will be.)
        get {
            let rv: Int = cast(pango_font_metrics_get_ascent(cast(font_metrics_ptr)))
            return cast(rv)
        }
    }

    /// Gets the descent from a font metrics structure. The descent is
    /// the distance from the baseline to the logical bottom of a line
    /// of text. (The logical bottom may be above or below the bottom of the
    /// actual drawn ink. It is necessary to lay out the text to figure
    /// where the ink will be.)
    var descent: Int {
        /// Gets the descent from a font metrics structure. The descent is
        /// the distance from the baseline to the logical bottom of a line
        /// of text. (The logical bottom may be above or below the bottom of the
        /// actual drawn ink. It is necessary to lay out the text to figure
        /// where the ink will be.)
        get {
            let rv: Int = cast(pango_font_metrics_get_descent(cast(font_metrics_ptr)))
            return cast(rv)
        }
    }

    /// Gets the line height from a font metrics structure. The
    /// line height is the distance between successive baselines
    /// in wrapped text.
    /// 
    /// If the line height is not available, 0 is returned.
    var height: Int {
        /// Gets the line height from a font metrics structure. The
        /// line height is the distance between successive baselines
        /// in wrapped text.
        /// 
        /// If the line height is not available, 0 is returned.
        get {
            let rv: Int = cast(pango_font_metrics_get_height(cast(font_metrics_ptr)))
            return cast(rv)
        }
    }

    /// Gets the suggested position to draw the strikethrough.
    /// The value returned is the distance <emphasis>above</emphasis> the
    /// baseline of the top of the strikethrough.
    var strikethroughPosition: Int {
        /// Gets the suggested position to draw the strikethrough.
        /// The value returned is the distance <emphasis>above</emphasis> the
        /// baseline of the top of the strikethrough.
        get {
            let rv: Int = cast(pango_font_metrics_get_strikethrough_position(cast(font_metrics_ptr)))
            return cast(rv)
        }
    }

    /// Gets the suggested thickness to draw for the strikethrough.
    var strikethroughThickness: Int {
        /// Gets the suggested thickness to draw for the strikethrough.
        get {
            let rv: Int = cast(pango_font_metrics_get_strikethrough_thickness(cast(font_metrics_ptr)))
            return cast(rv)
        }
    }

    /// Gets the suggested position to draw the underline.
    /// The value returned is the distance <emphasis>above</emphasis> the
    /// baseline of the top of the underline. Since most fonts have
    /// underline positions beneath the baseline, this value is typically
    /// negative.
    var underlinePosition: Int {
        /// Gets the suggested position to draw the underline.
        /// The value returned is the distance <emphasis>above</emphasis> the
        /// baseline of the top of the underline. Since most fonts have
        /// underline positions beneath the baseline, this value is typically
        /// negative.
        get {
            let rv: Int = cast(pango_font_metrics_get_underline_position(cast(font_metrics_ptr)))
            return cast(rv)
        }
    }

    /// Gets the suggested thickness to draw for the underline.
    var underlineThickness: Int {
        /// Gets the suggested thickness to draw for the underline.
        get {
            let rv: Int = cast(pango_font_metrics_get_underline_thickness(cast(font_metrics_ptr)))
            return cast(rv)
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoFontsetClass` instance.
    var _ptr: UnsafeMutablePointer<PangoFontsetClass> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension FontsetClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoFontsetClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FontsetClassProtocol`
    init<T: FontsetClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontsetClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<PangoFontsetClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoFontsetClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FontsetClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<PangoFontsetClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoFontsetClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `FontsetClassProtocol`
    /// `PangoFontsetClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FontsetClassProtocol`
    public init<T: FontsetClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for PangoFontsetClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `PangoFontsetClass`.
    deinit {
        // no reference counting for PangoFontsetClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoFontsetClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoFontsetClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoFontsetClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoFontsetClass, cannot ref(cast(_ptr))
    }



}

// MARK: no FontsetClass properties

// MARK: no FontsetClass signals


// MARK: FontsetClass Record: FontsetClassProtocol extension (methods and fields)
public extension FontsetClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontsetClass` instance.
    var _ptr: UnsafeMutablePointer<PangoFontsetClass> { return ptr.assumingMemoryBound(to: PangoFontsetClass.self) }


    /// parent `GObjectClass`.
    var parentClass: GObjectClass {
        /// parent `GObjectClass`.
        get {
            let rv: GObjectClass = cast(_ptr.pointee.parent_class)
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoFontsetSimpleClass` instance.
    var _ptr: UnsafeMutablePointer<PangoFontsetSimpleClass> { get }
}

/// The `FontsetSimpleClassRef` type acts as a lightweight Swift reference to an underlying `PangoFontsetSimpleClass` instance.
/// It exposes methods that can operate on this data type through `FontsetSimpleClassProtocol` conformance.
/// Use `FontsetSimpleClassRef` only as an `unowned` reference to an existing `PangoFontsetSimpleClass` instance.
///

public struct FontsetSimpleClassRef: FontsetSimpleClassProtocol {
        /// Untyped pointer to the underlying `PangoFontsetSimpleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FontsetSimpleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoFontsetSimpleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FontsetSimpleClassProtocol`
    init<T: FontsetSimpleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontsetSimpleClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<PangoFontsetSimpleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoFontsetSimpleClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FontsetSimpleClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<PangoFontsetSimpleClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoFontsetSimpleClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `FontsetSimpleClassProtocol`
    /// `PangoFontsetSimpleClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FontsetSimpleClassProtocol`
    public init<T: FontsetSimpleClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for PangoFontsetSimpleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `PangoFontsetSimpleClass`.
    deinit {
        // no reference counting for PangoFontsetSimpleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoFontsetSimpleClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoFontsetSimpleClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoFontsetSimpleClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetSimpleClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoFontsetSimpleClass, cannot ref(cast(_ptr))
    }



}

// MARK: no FontsetSimpleClass properties

// MARK: no FontsetSimpleClass signals


// MARK: FontsetSimpleClass Record: FontsetSimpleClassProtocol extension (methods and fields)
public extension FontsetSimpleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontsetSimpleClass` instance.
    var _ptr: UnsafeMutablePointer<PangoFontsetSimpleClass> { return ptr.assumingMemoryBound(to: PangoFontsetSimpleClass.self) }



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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoGlyphGeometry` instance.
    var _ptr: UnsafeMutablePointer<PangoGlyphGeometry> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension GlyphGeometryRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoGlyphGeometry>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `GlyphGeometryProtocol`
    init<T: GlyphGeometryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GlyphGeometry` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<PangoGlyphGeometry>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoGlyphGeometry` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `GlyphGeometry` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<PangoGlyphGeometry>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoGlyphGeometry, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `GlyphGeometryProtocol`
    /// `PangoGlyphGeometry` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `GlyphGeometryProtocol`
    public init<T: GlyphGeometryProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for PangoGlyphGeometry, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `PangoGlyphGeometry`.
    deinit {
        // no reference counting for PangoGlyphGeometry, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoGlyphGeometry, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoGlyphGeometry, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoGlyphGeometry, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoGlyphGeometry, cannot ref(cast(_ptr))
    }



}

// MARK: no GlyphGeometry properties

// MARK: no GlyphGeometry signals


// MARK: GlyphGeometry Record: GlyphGeometryProtocol extension (methods and fields)
public extension GlyphGeometryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoGlyphGeometry` instance.
    var _ptr: UnsafeMutablePointer<PangoGlyphGeometry> { return ptr.assumingMemoryBound(to: PangoGlyphGeometry.self) }


    /// the logical width to use for the the character.
    var width: PangoGlyphUnit {
        /// the logical width to use for the the character.
        get {
            let rv: PangoGlyphUnit = cast(_ptr.pointee.width)
            return rv
        }
        /// the logical width to use for the the character.
         set {
            _ptr.pointee.width = cast(newValue)
        }
    }

    /// horizontal offset from nominal character position.
    var xOffset: PangoGlyphUnit {
        /// horizontal offset from nominal character position.
        get {
            let rv: PangoGlyphUnit = cast(_ptr.pointee.x_offset)
            return rv
        }
        /// horizontal offset from nominal character position.
         set {
            _ptr.pointee.x_offset = cast(newValue)
        }
    }

    /// vertical offset from nominal character position.
    var yOffset: PangoGlyphUnit {
        /// vertical offset from nominal character position.
        get {
            let rv: PangoGlyphUnit = cast(_ptr.pointee.y_offset)
            return rv
        }
        /// vertical offset from nominal character position.
         set {
            _ptr.pointee.y_offset = cast(newValue)
        }
    }

}



