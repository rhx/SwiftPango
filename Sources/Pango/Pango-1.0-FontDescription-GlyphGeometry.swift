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
        let rv = pango_font_description_new()
        self.init(cast(rv))
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
        let rv = pango_font_description_from_string(str)
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
    /// Ownership is transferred to the `FontDescription` instance.
    public init(_ op: UnsafeMutablePointer<PangoFontDescription>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FontDescriptionProtocol`
    /// `PangoFontDescription` does not allow reference counting.
    public convenience init<T: FontDescriptionProtocol>(_ other: T) {
        self.init(cast(other.font_description_ptr))
        // no reference counting for PangoFontDescription, cannot ref(cast(font_description_ptr))
    }

    /// Do-nothing destructor for`PangoFontDescription`.
    deinit {
        // no reference counting for PangoFontDescription, cannot unref(cast(font_description_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoFontDescription.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoFontDescription.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoFontDescription.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontDescriptionProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoFontDescription>(opaquePointer))
    }

    /// Creates a new font description structure with all fields unset.
    public convenience init() {
        let rv = pango_font_description_new()
        self.init(cast(rv))
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
        let rv = pango_font_description_from_string(str)
        return rv.map { FontDescription(cast($0)) }
    }

}

// MARK: - no FontDescription properties

// MARK: - no signals


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
        let rv = pango_font_description_copy(cast(font_description_ptr))
        return cast(rv)
    }

    /// Like `pango_font_description_copy()`, but only a shallow copy is made
    /// of the family name and other allocated fields. The result can only
    /// be used until `desc` is modified or freed. This is meant to be used
    /// when the copy is only needed temporarily.
    func copyStatic() -> UnsafeMutablePointer<PangoFontDescription>! {
        let rv = pango_font_description_copy_static(cast(font_description_ptr))
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
        let rv = pango_font_description_get_family(cast(font_description_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the gravity field of a font description. See
    /// `pango_font_description_set_gravity()`.
    func getGravity() -> PangoGravity {
        let rv = pango_font_description_get_gravity(cast(font_description_ptr))
        return rv
    }

    /// Determines which fields in a font description have been set.
    func getSetFields() -> PangoFontMask {
        let rv = pango_font_description_get_set_fields(cast(font_description_ptr))
        return rv
    }

    /// Gets the size field of a font description.
    /// See `pango_font_description_set_size()`.
    func getSize() -> CInt {
        let rv = pango_font_description_get_size(cast(font_description_ptr))
        return CInt(rv)
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
        return rv
    }

    /// Gets the style field of a `PangoFontDescription`. See
    /// `pango_font_description_set_style()`.
    func getStyle() -> PangoStyle {
        let rv = pango_font_description_get_style(cast(font_description_ptr))
        return rv
    }

    /// Gets the variant field of a `PangoFontDescription`. See
    /// `pango_font_description_set_variant()`.
    func getVariant() -> PangoVariant {
        let rv = pango_font_description_get_variant(cast(font_description_ptr))
        return rv
    }

    /// Gets the variations field of a font description. See
    /// `pango_font_description_set_variations()`.
    func getVariations() -> String! {
        let rv = pango_font_description_get_variations(cast(font_description_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the weight field of a font description. See
    /// `pango_font_description_set_weight()`.
    func getWeight() -> PangoWeight {
        let rv = pango_font_description_get_weight(cast(font_description_ptr))
        return rv
    }

    /// Computes a hash of a `PangoFontDescription` structure suitable
    /// to be used, for example, as an argument to `g_hash_table_new()`.
    /// The hash value is independent of `desc`->mask.
    func hash() -> CUnsignedInt {
        let rv = pango_font_description_hash(cast(font_description_ptr))
        return CUnsignedInt(rv)
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
        let rv = pango_font_description_to_filename(cast(font_description_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Creates a string representation of a font description. See
    /// `pango_font_description_from_string()` for a description of the
    /// format of the string representation. The family list in the
    /// string description will only have a terminating comma if the
    /// last word of the list is a valid style option.
    func toString() -> String! {
        let rv = pango_font_description_to_string(cast(font_description_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Unsets some of the fields in a `PangoFontDescription`.  The unset
    /// fields will get back to their default values.
    func unsetFields(toUnset to_unset: FontMask) {
        pango_font_description_unset_fields(cast(font_description_ptr), to_unset)
    
    }

    /// Create a new font description attribute. This attribute
    /// allows setting family, style, weight, variant, stretch,
    /// and size simultaneously.
    func attrFontDescNew() -> UnsafeMutablePointer<PangoAttribute>! {
        let rv = pango_attr_font_desc_new(cast(font_description_ptr))
        return cast(rv)
    }
    /// Gets the family name field of a font description. See
    /// `pango_font_description_set_family()`.
    var family: String! {
        /// Gets the family name field of a font description. See
        /// `pango_font_description_set_family()`.
        get {
            let rv = pango_font_description_get_family(cast(font_description_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Sets the family name field of a font description. The family
        /// name represents a family of related font styles, and will
        /// resolve to a particular `PangoFontFamily`. In some uses of
        /// `PangoFontDescription`, it is also possible to use a comma
        /// separated list of family names for this field.
        nonmutating set {
            pango_font_description_set_family(cast(font_description_ptr), newValue)
        }
    }

    /// Gets the gravity field of a font description. See
    /// `pango_font_description_set_gravity()`.
    var gravity: PangoGravity {
        /// Gets the gravity field of a font description. See
        /// `pango_font_description_set_gravity()`.
        get {
            let rv = pango_font_description_get_gravity(cast(font_description_ptr))
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
            pango_font_description_set_gravity(cast(font_description_ptr), newValue)
        }
    }

    /// Determines which fields in a font description have been set.
    var setFields: PangoFontMask {
        /// Determines which fields in a font description have been set.
        get {
            let rv = pango_font_description_get_set_fields(cast(font_description_ptr))
            return rv
        }
    }

    /// Gets the size field of a font description.
    /// See `pango_font_description_set_size()`.
    var size: CInt {
        /// Gets the size field of a font description.
        /// See `pango_font_description_set_size()`.
        get {
            let rv = pango_font_description_get_size(cast(font_description_ptr))
            return CInt(rv)
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
            return rv
        }
        /// Sets the stretch field of a font description. The stretch field
        /// specifies how narrow or wide the font should be.
        nonmutating set {
            pango_font_description_set_stretch(cast(font_description_ptr), newValue)
        }
    }

    /// Gets the style field of a `PangoFontDescription`. See
    /// `pango_font_description_set_style()`.
    var style: PangoStyle {
        /// Gets the style field of a `PangoFontDescription`. See
        /// `pango_font_description_set_style()`.
        get {
            let rv = pango_font_description_get_style(cast(font_description_ptr))
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
            pango_font_description_set_style(cast(font_description_ptr), newValue)
        }
    }

    /// Gets the variant field of a `PangoFontDescription`. See
    /// `pango_font_description_set_variant()`.
    var variant: PangoVariant {
        /// Gets the variant field of a `PangoFontDescription`. See
        /// `pango_font_description_set_variant()`.
        get {
            let rv = pango_font_description_get_variant(cast(font_description_ptr))
            return rv
        }
        /// Sets the variant field of a font description. The `PangoVariant`
        /// can either be `PANGO_VARIANT_NORMAL` or `PANGO_VARIANT_SMALL_CAPS`.
        nonmutating set {
            pango_font_description_set_variant(cast(font_description_ptr), newValue)
        }
    }

    /// Gets the variations field of a font description. See
    /// `pango_font_description_set_variations()`.
    var variations: String! {
        /// Gets the variations field of a font description. See
        /// `pango_font_description_set_variations()`.
        get {
            let rv = pango_font_description_get_variations(cast(font_description_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
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
            pango_font_description_set_variations(cast(font_description_ptr), newValue)
        }
    }

    /// Gets the weight field of a font description. See
    /// `pango_font_description_set_weight()`.
    var weight: PangoWeight {
        /// Gets the weight field of a font description. See
        /// `pango_font_description_set_weight()`.
        get {
            let rv = pango_font_description_get_weight(cast(font_description_ptr))
            return rv
        }
        /// Sets the weight field of a font description. The weight field
        /// specifies how bold or light the font should be. In addition
        /// to the values of the `PangoWeight` enumeration, other intermediate
        /// numeric values are possible.
        nonmutating set {
            pango_font_description_set_weight(cast(font_description_ptr), newValue)
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
    /// Ownership is transferred to the `FontFaceClass` instance.
    public init(_ op: UnsafeMutablePointer<PangoFontFaceClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FontFaceClassProtocol`
    /// `PangoFontFaceClass` does not allow reference counting.
    public convenience init<T: FontFaceClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for PangoFontFaceClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`PangoFontFaceClass`.
    deinit {
        // no reference counting for PangoFontFaceClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoFontFaceClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoFontFaceClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoFontFaceClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFaceClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoFontFaceClass>(opaquePointer))
    }



}

// MARK: - no FontFaceClass properties

// MARK: - no signals


public extension FontFaceClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontFaceClass` instance.
    var _ptr: UnsafeMutablePointer<PangoFontFaceClass> { return ptr.assumingMemoryBound(to: PangoFontFaceClass.self) }

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
    /// Ownership is transferred to the `FontFamilyClass` instance.
    public init(_ op: UnsafeMutablePointer<PangoFontFamilyClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FontFamilyClassProtocol`
    /// `PangoFontFamilyClass` does not allow reference counting.
    public convenience init<T: FontFamilyClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for PangoFontFamilyClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`PangoFontFamilyClass`.
    deinit {
        // no reference counting for PangoFontFamilyClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoFontFamilyClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoFontFamilyClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoFontFamilyClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontFamilyClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoFontFamilyClass>(opaquePointer))
    }



}

// MARK: - no FontFamilyClass properties

// MARK: - no signals


public extension FontFamilyClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontFamilyClass` instance.
    var _ptr: UnsafeMutablePointer<PangoFontFamilyClass> { return ptr.assumingMemoryBound(to: PangoFontFamilyClass.self) }

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
    /// Ownership is transferred to the `FontMapClass` instance.
    public init(_ op: UnsafeMutablePointer<PangoFontMapClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FontMapClassProtocol`
    /// `PangoFontMapClass` does not allow reference counting.
    public convenience init<T: FontMapClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for PangoFontMapClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`PangoFontMapClass`.
    deinit {
        // no reference counting for PangoFontMapClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoFontMapClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoFontMapClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoFontMapClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMapClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoFontMapClass>(opaquePointer))
    }



}

// MARK: - no FontMapClass properties

// MARK: - no signals


public extension FontMapClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontMapClass` instance.
    var _ptr: UnsafeMutablePointer<PangoFontMapClass> { return ptr.assumingMemoryBound(to: PangoFontMapClass.self) }

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
    /// Ownership is transferred to the `FontMetrics` instance.
    public init(_ op: UnsafeMutablePointer<PangoFontMetrics>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FontMetricsProtocol`
    /// Will retain `PangoFontMetrics`.
    public convenience init<T: FontMetricsProtocol>(_ other: T) {
        self.init(cast(other.font_metrics_ptr))
        pango_font_metrics_ref(cast(font_metrics_ptr))
    }

    /// Releases the underlying `PangoFontMetrics` instance using `pango_font_metrics_unref`.
    deinit {
        pango_font_metrics_unref(cast(font_metrics_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoFontMetrics.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoFontMetrics.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoFontMetrics.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontMetricsProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoFontMetrics>(opaquePointer))
    }



}

// MARK: - no FontMetrics properties

// MARK: - no signals


public extension FontMetricsProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontMetrics` instance.
    var font_metrics_ptr: UnsafeMutablePointer<PangoFontMetrics> { return ptr.assumingMemoryBound(to: PangoFontMetrics.self) }

    /// Gets the approximate character width for a font metrics structure.
    /// This is merely a representative value useful, for example, for
    /// determining the initial size for a window. Actual characters in
    /// text will be wider and narrower than this.
    func getApproximateCharWidth() -> CInt {
        let rv = pango_font_metrics_get_approximate_char_width(cast(font_metrics_ptr))
        return rv
    }

    /// Gets the approximate digit width for a font metrics structure.
    /// This is merely a representative value useful, for example, for
    /// determining the initial size for a window. Actual digits in
    /// text can be wider or narrower than this, though this value
    /// is generally somewhat more accurate than the result of
    /// `pango_font_metrics_get_approximate_char_width()` for digits.
    func getApproximateDigitWidth() -> CInt {
        let rv = pango_font_metrics_get_approximate_digit_width(cast(font_metrics_ptr))
        return rv
    }

    /// Gets the ascent from a font metrics structure. The ascent is
    /// the distance from the baseline to the logical top of a line
    /// of text. (The logical top may be above or below the top of the
    /// actual drawn ink. It is necessary to lay out the text to figure
    /// where the ink will be.)
    func getAscent() -> CInt {
        let rv = pango_font_metrics_get_ascent(cast(font_metrics_ptr))
        return rv
    }

    /// Gets the descent from a font metrics structure. The descent is
    /// the distance from the baseline to the logical bottom of a line
    /// of text. (The logical bottom may be above or below the bottom of the
    /// actual drawn ink. It is necessary to lay out the text to figure
    /// where the ink will be.)
    func getDescent() -> CInt {
        let rv = pango_font_metrics_get_descent(cast(font_metrics_ptr))
        return rv
    }

    /// Gets the line height from a font metrics structure. The
    /// line height is the distance between successive baselines
    /// in wrapped text.
    /// 
    /// If the line height is not available, 0 is returned.
    func getHeight() -> CInt {
        let rv = pango_font_metrics_get_height(cast(font_metrics_ptr))
        return rv
    }

    /// Gets the suggested position to draw the strikethrough.
    /// The value returned is the distance <emphasis>above</emphasis> the
    /// baseline of the top of the strikethrough.
    func getStrikethroughPosition() -> CInt {
        let rv = pango_font_metrics_get_strikethrough_position(cast(font_metrics_ptr))
        return rv
    }

    /// Gets the suggested thickness to draw for the strikethrough.
    func getStrikethroughThickness() -> CInt {
        let rv = pango_font_metrics_get_strikethrough_thickness(cast(font_metrics_ptr))
        return rv
    }

    /// Gets the suggested position to draw the underline.
    /// The value returned is the distance <emphasis>above</emphasis> the
    /// baseline of the top of the underline. Since most fonts have
    /// underline positions beneath the baseline, this value is typically
    /// negative.
    func getUnderlinePosition() -> CInt {
        let rv = pango_font_metrics_get_underline_position(cast(font_metrics_ptr))
        return rv
    }

    /// Gets the suggested thickness to draw for the underline.
    func getUnderlineThickness() -> CInt {
        let rv = pango_font_metrics_get_underline_thickness(cast(font_metrics_ptr))
        return rv
    }

    /// Increase the reference count of a font metrics structure by one.
    func ref() -> UnsafeMutablePointer<PangoFontMetrics>! {
        let rv = pango_font_metrics_ref(cast(font_metrics_ptr))
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
    var approximateCharWidth: CInt {
        /// Gets the approximate character width for a font metrics structure.
        /// This is merely a representative value useful, for example, for
        /// determining the initial size for a window. Actual characters in
        /// text will be wider and narrower than this.
        get {
            let rv = pango_font_metrics_get_approximate_char_width(cast(font_metrics_ptr))
            return rv
        }
    }

    /// Gets the approximate digit width for a font metrics structure.
    /// This is merely a representative value useful, for example, for
    /// determining the initial size for a window. Actual digits in
    /// text can be wider or narrower than this, though this value
    /// is generally somewhat more accurate than the result of
    /// `pango_font_metrics_get_approximate_char_width()` for digits.
    var approximateDigitWidth: CInt {
        /// Gets the approximate digit width for a font metrics structure.
        /// This is merely a representative value useful, for example, for
        /// determining the initial size for a window. Actual digits in
        /// text can be wider or narrower than this, though this value
        /// is generally somewhat more accurate than the result of
        /// `pango_font_metrics_get_approximate_char_width()` for digits.
        get {
            let rv = pango_font_metrics_get_approximate_digit_width(cast(font_metrics_ptr))
            return rv
        }
    }

    /// Gets the ascent from a font metrics structure. The ascent is
    /// the distance from the baseline to the logical top of a line
    /// of text. (The logical top may be above or below the top of the
    /// actual drawn ink. It is necessary to lay out the text to figure
    /// where the ink will be.)
    var ascent: CInt {
        /// Gets the ascent from a font metrics structure. The ascent is
        /// the distance from the baseline to the logical top of a line
        /// of text. (The logical top may be above or below the top of the
        /// actual drawn ink. It is necessary to lay out the text to figure
        /// where the ink will be.)
        get {
            let rv = pango_font_metrics_get_ascent(cast(font_metrics_ptr))
            return rv
        }
    }

    /// Gets the descent from a font metrics structure. The descent is
    /// the distance from the baseline to the logical bottom of a line
    /// of text. (The logical bottom may be above or below the bottom of the
    /// actual drawn ink. It is necessary to lay out the text to figure
    /// where the ink will be.)
    var descent: CInt {
        /// Gets the descent from a font metrics structure. The descent is
        /// the distance from the baseline to the logical bottom of a line
        /// of text. (The logical bottom may be above or below the bottom of the
        /// actual drawn ink. It is necessary to lay out the text to figure
        /// where the ink will be.)
        get {
            let rv = pango_font_metrics_get_descent(cast(font_metrics_ptr))
            return rv
        }
    }

    /// Gets the line height from a font metrics structure. The
    /// line height is the distance between successive baselines
    /// in wrapped text.
    /// 
    /// If the line height is not available, 0 is returned.
    var height: CInt {
        /// Gets the line height from a font metrics structure. The
        /// line height is the distance between successive baselines
        /// in wrapped text.
        /// 
        /// If the line height is not available, 0 is returned.
        get {
            let rv = pango_font_metrics_get_height(cast(font_metrics_ptr))
            return rv
        }
    }

    /// Gets the suggested position to draw the strikethrough.
    /// The value returned is the distance <emphasis>above</emphasis> the
    /// baseline of the top of the strikethrough.
    var strikethroughPosition: CInt {
        /// Gets the suggested position to draw the strikethrough.
        /// The value returned is the distance <emphasis>above</emphasis> the
        /// baseline of the top of the strikethrough.
        get {
            let rv = pango_font_metrics_get_strikethrough_position(cast(font_metrics_ptr))
            return rv
        }
    }

    /// Gets the suggested thickness to draw for the strikethrough.
    var strikethroughThickness: CInt {
        /// Gets the suggested thickness to draw for the strikethrough.
        get {
            let rv = pango_font_metrics_get_strikethrough_thickness(cast(font_metrics_ptr))
            return rv
        }
    }

    /// Gets the suggested position to draw the underline.
    /// The value returned is the distance <emphasis>above</emphasis> the
    /// baseline of the top of the underline. Since most fonts have
    /// underline positions beneath the baseline, this value is typically
    /// negative.
    var underlinePosition: CInt {
        /// Gets the suggested position to draw the underline.
        /// The value returned is the distance <emphasis>above</emphasis> the
        /// baseline of the top of the underline. Since most fonts have
        /// underline positions beneath the baseline, this value is typically
        /// negative.
        get {
            let rv = pango_font_metrics_get_underline_position(cast(font_metrics_ptr))
            return rv
        }
    }

    /// Gets the suggested thickness to draw for the underline.
    var underlineThickness: CInt {
        /// Gets the suggested thickness to draw for the underline.
        get {
            let rv = pango_font_metrics_get_underline_thickness(cast(font_metrics_ptr))
            return rv
        }
    }
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
    /// Ownership is transferred to the `FontsetClass` instance.
    public init(_ op: UnsafeMutablePointer<PangoFontsetClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FontsetClassProtocol`
    /// `PangoFontsetClass` does not allow reference counting.
    public convenience init<T: FontsetClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for PangoFontsetClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`PangoFontsetClass`.
    deinit {
        // no reference counting for PangoFontsetClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoFontsetClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoFontsetClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoFontsetClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontsetClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoFontsetClass>(opaquePointer))
    }



}

// MARK: - no FontsetClass properties

// MARK: - no signals


public extension FontsetClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoFontsetClass` instance.
    var _ptr: UnsafeMutablePointer<PangoFontsetClass> { return ptr.assumingMemoryBound(to: PangoFontsetClass.self) }

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
    /// Ownership is transferred to the `GlyphGeometry` instance.
    public init(_ op: UnsafeMutablePointer<PangoGlyphGeometry>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `GlyphGeometryProtocol`
    /// `PangoGlyphGeometry` does not allow reference counting.
    public convenience init<T: GlyphGeometryProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for PangoGlyphGeometry, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`PangoGlyphGeometry`.
    deinit {
        // no reference counting for PangoGlyphGeometry, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoGlyphGeometry.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoGlyphGeometry.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoGlyphGeometry.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GlyphGeometryProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoGlyphGeometry>(opaquePointer))
    }



}

// MARK: - no GlyphGeometry properties

// MARK: - no signals


public extension GlyphGeometryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoGlyphGeometry` instance.
    var _ptr: UnsafeMutablePointer<PangoGlyphGeometry> { return ptr.assumingMemoryBound(to: PangoGlyphGeometry.self) }

}



