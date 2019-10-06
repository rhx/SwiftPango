import CGLib
import CPango
import GLib
import GLibObject

// MARK: - Item Record

/// The `ItemProtocol` protocol exposes the methods and properties of an underlying `PangoItem` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Item`.
/// Alternatively, use `ItemRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoItem` structure stores information about a segment of text.
public protocol ItemProtocol {
    /// Untyped pointer to the underlying `PangoItem` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoItem` instance.
    var item_ptr: UnsafeMutablePointer<PangoItem> { get }
}

/// The `ItemRef` type acts as a lightweight Swift reference to an underlying `PangoItem` instance.
/// It exposes methods that can operate on this data type through `ItemProtocol` conformance.
/// Use `ItemRef` only as an `unowned` reference to an existing `PangoItem` instance.
///
/// The `PangoItem` structure stores information about a segment of text.
public struct ItemRef: ItemProtocol {
    /// Untyped pointer to the underlying `PangoItem` instance.
    /// For type-safe access, use the generated, typed pointer `item_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ItemRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoItem>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ItemProtocol`
    init<T: ItemProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ItemProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ItemProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ItemProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ItemProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ItemProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `PangoItem` structure initialized to default values.
    init() {
        let rv = pango_item_new()
        self.init(cast(rv))
    }
}

/// The `Item` type acts as an owner of an underlying `PangoItem` instance.
/// It provides the methods that can operate on this data type through `ItemProtocol` conformance.
/// Use `Item` as a strong reference or owner of a `PangoItem` instance.
///
/// The `PangoItem` structure stores information about a segment of text.
open class Item: ItemProtocol {
    /// Untyped pointer to the underlying `PangoItem` instance.
    /// For type-safe access, use the generated, typed pointer `item_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Item` instance.
    public init(_ op: UnsafeMutablePointer<PangoItem>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ItemProtocol`
    /// `PangoItem` does not allow reference counting.
    public convenience init<T: ItemProtocol>(_ other: T) {
        self.init(cast(other.item_ptr))
        // no reference counting for PangoItem, cannot ref(cast(item_ptr))
    }

    /// Do-nothing destructor for`PangoItem`.
    deinit {
        // no reference counting for PangoItem, cannot unref(cast(item_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ItemProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoItem.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ItemProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoItem.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ItemProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoItem.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ItemProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoItem>(opaquePointer))
    }

    /// Creates a new `PangoItem` structure initialized to default values.
    public convenience init() {
        let rv = pango_item_new()
        self.init(cast(rv))
    }


}

// MARK: - no Item properties

// MARK: - no signals


public extension ItemProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoItem` instance.
    var item_ptr: UnsafeMutablePointer<PangoItem> { return ptr.assumingMemoryBound(to: PangoItem.self) }

    /// Add attributes to a PangoItem. The idea is that you have
    /// attributes that don't affect itemization, such as font features,
    /// so you filter them out using `pango_attr_list_filter()`, itemize
    /// your text, then reapply the attributes to the resulting items
    /// using this function.
    /// 
    /// The `iter` should be positioned before the range of the item,
    /// and will be advanced past it. This function is meant to be called
    /// in a loop over the items resulting from itemization, while passing
    /// the iter to each call.
    func applyAttrs(iter: AttrIteratorProtocol) {
        pango_item_apply_attrs(cast(item_ptr), cast(iter.ptr))
    
    }

    /// Copy an existing `PangoItem` structure.
    func copy() -> UnsafeMutablePointer<PangoItem>! {
        let rv = pango_item_copy(cast(item_ptr))
        return cast(rv)
    }

    /// Free a `PangoItem` and all associated memory.
    func free() {
        pango_item_free(cast(item_ptr))
    
    }

    /// Modifies `orig` to cover only the text after `split_index`, and
    /// returns a new item that covers the text before `split_index` that
    /// used to be in `orig`. You can think of `split_index` as the length of
    /// the returned item. `split_index` may not be 0, and it may not be
    /// greater than or equal to the length of `orig` (that is, there must
    /// be at least one byte assigned to each item, you can't create a
    /// zero-length item). `split_offset` is the length of the first item in
    /// chars, and must be provided because the text used to generate the
    /// item isn't available, so `pango_item_split()` can't count the char
    /// length of the split items itself.
    func split(splitIndex split_index: CInt, splitOffset split_offset: CInt) -> UnsafeMutablePointer<PangoItem>! {
        let rv = pango_item_split(cast(item_ptr), split_index, split_offset)
        return cast(rv)
    }
}



// MARK: - Language Record

/// The `LanguageProtocol` protocol exposes the methods and properties of an underlying `PangoLanguage` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Language`.
/// Alternatively, use `LanguageRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoLanguage` structure is used to
/// represent a language.
/// 
/// `PangoLanguage` pointers can be efficiently
/// copied and compared with each other.
public protocol LanguageProtocol {
    /// Untyped pointer to the underlying `PangoLanguage` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `PangoLanguage` instance.
    var language_ptr: UnsafeMutablePointer<PangoLanguage> { get }
}

/// The `LanguageRef` type acts as a lightweight Swift reference to an underlying `PangoLanguage` instance.
/// It exposes methods that can operate on this data type through `LanguageProtocol` conformance.
/// Use `LanguageRef` only as an `unowned` reference to an existing `PangoLanguage` instance.
///
/// The `PangoLanguage` structure is used to
/// represent a language.
/// 
/// `PangoLanguage` pointers can be efficiently
/// copied and compared with each other.
public struct LanguageRef: LanguageProtocol {
    /// Untyped pointer to the underlying `PangoLanguage` instance.
    /// For type-safe access, use the generated, typed pointer `language_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension LanguageRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<PangoLanguage>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `LanguageProtocol`
    init<T: LanguageProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LanguageProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LanguageProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LanguageProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LanguageProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LanguageProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Take a RFC-3066 format language tag as a string and convert it to a
    /// `PangoLanguage` pointer that can be efficiently copied (copy the
    /// pointer) and compared with other language tags (compare the
    /// pointer.)
    /// 
    /// This function first canonicalizes the string by converting it to
    /// lowercase, mapping '_' to '-', and stripping all characters other
    /// than letters and '-'.
    /// 
    /// Use `pango_language_get_default()` if you want to get the `PangoLanguage` for
    /// the current locale of the process.
    static func from(string language: UnsafePointer<CChar>) -> LanguageRef! {
        let rv = pango_language_from_string(language)
        return rv.map { LanguageRef(cast($0)) }
    }

    /// Returns the `PangoLanguage` for the current locale of the process.
    /// Note that this can change over the life of an application.
    /// 
    /// On Unix systems, this is the return value is derived from
    /// `<literal>setlocale(LC_CTYPE, NULL)`</literal>, and the user can
    /// affect this through the environment variables LC_ALL, LC_CTYPE or
    /// LANG (checked in that order). The locale string typically is in
    /// the form lang_COUNTRY, where lang is an ISO-639 language code, and
    /// COUNTRY is an ISO-3166 country code. For instance, sv_FI for
    /// Swedish as written in Finland or pt_BR for Portuguese as written in
    /// Brazil.
    /// 
    /// On Windows, the C library does not use any such environment
    /// variables, and setting them won't affect the behavior of functions
    /// like `ctime()`. The user sets the locale through the Regional Options
    /// in the Control Panel. The C library (in the `setlocale()` function)
    /// does not use country and language codes, but country and language
    /// names spelled out in English.
    /// However, this function does check the above environment
    /// variables, and does return a Unix-style locale string based on
    /// either said environment variables or the thread's current locale.
    /// 
    /// Your application should call `<literal>setlocale(LC_ALL, "")`;</literal>
    /// for the user settings to take effect.  Gtk+ does this in its initialization
    /// functions automatically (by calling `gtk_set_locale()`).
    /// See <literal>man setlocale</literal> for more details.
    static func getDefault() -> LanguageRef! {
        let rv = pango_language_get_default()
        return rv.map { LanguageRef(cast($0)) }
    }
}

/// The `Language` type acts as an owner of an underlying `PangoLanguage` instance.
/// It provides the methods that can operate on this data type through `LanguageProtocol` conformance.
/// Use `Language` as a strong reference or owner of a `PangoLanguage` instance.
///
/// The `PangoLanguage` structure is used to
/// represent a language.
/// 
/// `PangoLanguage` pointers can be efficiently
/// copied and compared with each other.
open class Language: LanguageProtocol {
    /// Untyped pointer to the underlying `PangoLanguage` instance.
    /// For type-safe access, use the generated, typed pointer `language_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Language` instance.
    public init(_ op: UnsafeMutablePointer<PangoLanguage>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `LanguageProtocol`
    /// `PangoLanguage` does not allow reference counting.
    public convenience init<T: LanguageProtocol>(_ other: T) {
        self.init(cast(other.language_ptr))
        // no reference counting for PangoLanguage, cannot ref(cast(language_ptr))
    }

    /// Do-nothing destructor for`PangoLanguage`.
    deinit {
        // no reference counting for PangoLanguage, cannot unref(cast(language_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LanguageProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: PangoLanguage.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LanguageProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: PangoLanguage.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LanguageProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: PangoLanguage.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LanguageProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<PangoLanguage>(opaquePointer))
    }


    /// Take a RFC-3066 format language tag as a string and convert it to a
    /// `PangoLanguage` pointer that can be efficiently copied (copy the
    /// pointer) and compared with other language tags (compare the
    /// pointer.)
    /// 
    /// This function first canonicalizes the string by converting it to
    /// lowercase, mapping '_' to '-', and stripping all characters other
    /// than letters and '-'.
    /// 
    /// Use `pango_language_get_default()` if you want to get the `PangoLanguage` for
    /// the current locale of the process.
    public static func from(string language: UnsafePointer<CChar>) -> Language! {
        let rv = pango_language_from_string(language)
        return rv.map { Language(cast($0)) }
    }

    /// Returns the `PangoLanguage` for the current locale of the process.
    /// Note that this can change over the life of an application.
    /// 
    /// On Unix systems, this is the return value is derived from
    /// `<literal>setlocale(LC_CTYPE, NULL)`</literal>, and the user can
    /// affect this through the environment variables LC_ALL, LC_CTYPE or
    /// LANG (checked in that order). The locale string typically is in
    /// the form lang_COUNTRY, where lang is an ISO-639 language code, and
    /// COUNTRY is an ISO-3166 country code. For instance, sv_FI for
    /// Swedish as written in Finland or pt_BR for Portuguese as written in
    /// Brazil.
    /// 
    /// On Windows, the C library does not use any such environment
    /// variables, and setting them won't affect the behavior of functions
    /// like `ctime()`. The user sets the locale through the Regional Options
    /// in the Control Panel. The C library (in the `setlocale()` function)
    /// does not use country and language codes, but country and language
    /// names spelled out in English.
    /// However, this function does check the above environment
    /// variables, and does return a Unix-style locale string based on
    /// either said environment variables or the thread's current locale.
    /// 
    /// Your application should call `<literal>setlocale(LC_ALL, "")`;</literal>
    /// for the user settings to take effect.  Gtk+ does this in its initialization
    /// functions automatically (by calling `gtk_set_locale()`).
    /// See <literal>man setlocale</literal> for more details.
    public static func getDefault() -> Language! {
        let rv = pango_language_get_default()
        return rv.map { Language(cast($0)) }
    }

}

// MARK: - no Language properties

// MARK: - no signals


public extension LanguageProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoLanguage` instance.
    var language_ptr: UnsafeMutablePointer<PangoLanguage> { return ptr.assumingMemoryBound(to: PangoLanguage.self) }

    /// Get a string that is representative of the characters needed to
    /// render a particular language.
    /// 
    /// The sample text may be a pangram, but is not necessarily.  It is chosen to
    /// be demonstrative of normal text in the language, as well as exposing font
    /// feature requirements unique to the language.  It is suitable for use
    /// as sample text in a font selection dialog.
    /// 
    /// If `language` is `nil`, the default language as found by
    /// `pango_language_get_default()` is used.
    /// 
    /// If Pango does not have a sample string for `language`, the classic
    /// "The quick brown fox..." is returned.  This can be detected by
    /// comparing the returned pointer value to that returned for (non-existent)
    /// language code "xx".  That is, compare to:
    /// <informalexample><programlisting>
    /// pango_language_get_sample_string (pango_language_from_string ("xx"))
    /// </programlisting></informalexample>
    func getSampleString() -> String! {
        let rv = pango_language_get_sample_string(cast(language_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Determines the scripts used to to write `language`.
    /// If nothing is known about the language tag `language`,
    /// or if `language` is `nil`, then `nil` is returned.
    /// The list of scripts returned starts with the script that the
    /// language uses most and continues to the one it uses least.
    /// 
    /// The value `num_script` points at will be set to the number
    /// of scripts in the returned array (or zero if `nil` is returned).
    /// 
    /// Most languages use only one script for writing, but there are
    /// some that use two (Latin and Cyrillic for example), and a few
    /// use three (Japanese for example).  Applications should not make
    /// any assumptions on the maximum number of scripts returned
    /// though, except that it is positive if the return value is not
    /// `nil`, and it is a small number.
    /// 
    /// The `pango_language_includes_script()` function uses this function
    /// internally.
    /// 
    /// Note: while the return value is declared as PangoScript, the
    /// returned values are from the GUnicodeScript enumeration, which
    /// may have more values. Callers need to handle unknown values.
    func getScripts(numScripts num_scripts: UnsafeMutablePointer<CInt>) -> UnsafePointer<PangoScript>! {
        let rv = pango_language_get_scripts(cast(language_ptr), cast(num_scripts))
        return cast(rv)
    }

    /// Determines if `script` is one of the scripts used to
    /// write `language`. The returned value is conservative;
    /// if nothing is known about the language tag `language`,
    /// `true` will be returned, since, as far as Pango knows,
    /// `script` might be used to write `language`.
    /// 
    /// This routine is used in Pango's itemization process when
    /// determining if a supplied language tag is relevant to
    /// a particular section of text. It probably is not useful for
    /// applications in most circumstances.
    /// 
    /// This function uses `pango_language_get_scripts()` internally.
    func includes(script: Script) -> Bool {
        let rv = pango_language_includes_script(cast(language_ptr), script)
        return Bool(rv != 0)
    }

    /// Checks if a language tag matches one of the elements in a list of
    /// language ranges. A language tag is considered to match a range
    /// in the list if the range is '*', the range is exactly the tag,
    /// or the range is a prefix of the tag, and the character after it
    /// in the tag is '-'.
    func matches(rangeList range_list: UnsafePointer<CChar>) -> Bool {
        let rv = pango_language_matches(cast(language_ptr), range_list)
        return Bool(rv != 0)
    }

    /// Gets the RFC-3066 format string representing the given language tag.
    func toString() -> String! {
        let rv = pango_language_to_string(cast(language_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Create a new language tag attribute.
    func attrLanguageNew() -> UnsafeMutablePointer<PangoAttribute>! {
        let rv = pango_attr_language_new(cast(language_ptr))
        return cast(rv)
    }

    /// Do not use.  Does not do anything.
    ///
    /// **find_map is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) func findMap(engineTypeId engine_type_id: CUnsignedInt, renderTypeId render_type_id: CUnsignedInt) -> UnsafeMutablePointer<PangoMap>! {
        let rv = pango_find_map(cast(language_ptr), guint(engine_type_id), guint(render_type_id))
        return cast(rv)
    }

    /// Computes a `PangoLogAttr` for each character in `text`. The `log_attrs`
    /// array must have one `PangoLogAttr` for each position in `text`; if
    /// `text` contains N characters, it has N+1 positions, including the
    /// last position at the end of the text. `text` should be an entire
    /// paragraph; logical attributes can't be computed without context
    /// (for example you need to see spaces on either side of a word to know
    /// the word is a word).
    func getLogAttrs(text: UnsafePointer<CChar>, length: CInt, level: CInt, logAttrs log_attrs: UnsafeMutablePointer<PangoLogAttr>, attrsLen attrs_len: CInt) {
        pango_get_log_attrs(text, length, level, cast(language_ptr), cast(log_attrs), attrs_len)
    
    }
    /// Get a string that is representative of the characters needed to
    /// render a particular language.
    /// 
    /// The sample text may be a pangram, but is not necessarily.  It is chosen to
    /// be demonstrative of normal text in the language, as well as exposing font
    /// feature requirements unique to the language.  It is suitable for use
    /// as sample text in a font selection dialog.
    /// 
    /// If `language` is `nil`, the default language as found by
    /// `pango_language_get_default()` is used.
    /// 
    /// If Pango does not have a sample string for `language`, the classic
    /// "The quick brown fox..." is returned.  This can be detected by
    /// comparing the returned pointer value to that returned for (non-existent)
    /// language code "xx".  That is, compare to:
    /// <informalexample><programlisting>
    /// pango_language_get_sample_string (pango_language_from_string ("xx"))
    /// </programlisting></informalexample>
    var sampleString: String! {
        /// Get a string that is representative of the characters needed to
        /// render a particular language.
        /// 
        /// The sample text may be a pangram, but is not necessarily.  It is chosen to
        /// be demonstrative of normal text in the language, as well as exposing font
        /// feature requirements unique to the language.  It is suitable for use
        /// as sample text in a font selection dialog.
        /// 
        /// If `language` is `nil`, the default language as found by
        /// `pango_language_get_default()` is used.
        /// 
        /// If Pango does not have a sample string for `language`, the classic
        /// "The quick brown fox..." is returned.  This can be detected by
        /// comparing the returned pointer value to that returned for (non-existent)
        /// language code "xx".  That is, compare to:
        /// <informalexample><programlisting>
        /// pango_language_get_sample_string (pango_language_from_string ("xx"))
        /// </programlisting></informalexample>
        get {
            let rv = pango_language_get_sample_string(cast(language_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }
}



