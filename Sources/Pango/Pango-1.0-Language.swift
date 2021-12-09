import CGLib
import CPango
import GLib
import GLibObject

// MARK: - Language Record

/// The `PangoLanguage` structure is used to
/// represent a language.
/// 
/// `PangoLanguage` pointers can be efficiently
/// copied and compared with each other.
///
/// The `LanguageProtocol` protocol exposes the methods and properties of an underlying `PangoLanguage` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Language`.
/// Alternatively, use `LanguageRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol LanguageProtocol {
        /// Untyped pointer to the underlying `PangoLanguage` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoLanguage` instance.
    var language_ptr: UnsafeMutablePointer<PangoLanguage>! { get }

    /// Required Initialiser for types conforming to `LanguageProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `PangoLanguage` structure is used to
/// represent a language.
/// 
/// `PangoLanguage` pointers can be efficiently
/// copied and compared with each other.
///
/// The `LanguageRef` type acts as a lightweight Swift reference to an underlying `PangoLanguage` instance.
/// It exposes methods that can operate on this data type through `LanguageProtocol` conformance.
/// Use `LanguageRef` only as an `unowned` reference to an existing `PangoLanguage` instance.
///
public struct LanguageRef: LanguageProtocol {
        /// Untyped pointer to the underlying `PangoLanguage` instance.
    /// For type-safe access, use the generated, typed pointer `language_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LanguageRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoLanguage>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoLanguage>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoLanguage>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoLanguage>?) {
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

    /// Reference intialiser for a related type that implements `LanguageProtocol`
    @inlinable init<T: LanguageProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LanguageProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LanguageProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LanguageProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LanguageProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LanguageProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Convert a language tag to a `PangoLanguage`.
    /// 
    /// The language tag must be in a RFC-3066 format. `PangoLanguage` pointers
    /// can be efficiently copied (copy the pointer) and compared with other
    /// language tags (compare the pointer.)
    /// 
    /// This function first canonicalizes the string by converting it to
    /// lowercase, mapping '_' to '-', and stripping all characters other
    /// than letters and '-'.
    /// 
    /// Use [func`Pango.Language.get_default`] if you want to get the
    /// `PangoLanguage` for the current locale of the process.
    @inlinable static func from(string language: UnsafePointer<CChar>? = nil) -> LanguageRef! {
        guard let rv = LanguageRef(gconstpointer: gconstpointer(pango_language_from_string(language))) else { return nil }
        return rv
    }

    /// Returns the `PangoLanguage` for the current locale of the process.
    /// 
    /// On Unix systems, this is the return value is derived from
    /// `setlocale (LC_CTYPE, NULL)`, and the user can
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
    /// Your application should call ``setlocale(LC_ALL, "")`` for the user
    /// settings to take effect. GTK does this in its initialization
    /// functions automatically (by calling `gtk_set_locale()`).
    /// See the `setlocale()` manpage for more details.
    /// 
    /// Note that the default language can change over the life of an application.
    /// 
    /// Also note that this function will not do the right thing if you
    /// use per-thread locales with `uselocale()`. In that case, you should
    /// just call `pango_language_from_string()` yourself.
    @inlinable static func getDefault() -> LanguageRef! {
        guard let rv = LanguageRef(gconstpointer: gconstpointer(pango_language_get_default())) else { return nil }
        return rv
    }
}

/// The `PangoLanguage` structure is used to
/// represent a language.
/// 
/// `PangoLanguage` pointers can be efficiently
/// copied and compared with each other.
///
/// The `Language` type acts as an owner of an underlying `PangoLanguage` instance.
/// It provides the methods that can operate on this data type through `LanguageProtocol` conformance.
/// Use `Language` as a strong reference or owner of a `PangoLanguage` instance.
///
open class Language: LanguageProtocol {
        /// Untyped pointer to the underlying `PangoLanguage` instance.
    /// For type-safe access, use the generated, typed pointer `language_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Language` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoLanguage>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Language` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoLanguage>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Language` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Language` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Language` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoLanguage>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Language` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoLanguage>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoLanguage` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Language` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoLanguage>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoLanguage, cannot ref(language_ptr)
    }

    /// Reference intialiser for a related type that implements `LanguageProtocol`
    /// `PangoLanguage` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `LanguageProtocol`
    @inlinable public init<T: LanguageProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoLanguage, cannot ref(language_ptr)
    }

    /// Do-nothing destructor for `PangoLanguage`.
    deinit {
        // no reference counting for PangoLanguage, cannot unref(language_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LanguageProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LanguageProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoLanguage, cannot ref(language_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LanguageProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LanguageProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoLanguage, cannot ref(language_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LanguageProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LanguageProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoLanguage, cannot ref(language_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LanguageProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LanguageProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoLanguage, cannot ref(language_ptr)
    }


    /// Convert a language tag to a `PangoLanguage`.
    /// 
    /// The language tag must be in a RFC-3066 format. `PangoLanguage` pointers
    /// can be efficiently copied (copy the pointer) and compared with other
    /// language tags (compare the pointer.)
    /// 
    /// This function first canonicalizes the string by converting it to
    /// lowercase, mapping '_' to '-', and stripping all characters other
    /// than letters and '-'.
    /// 
    /// Use [func`Pango.Language.get_default`] if you want to get the
    /// `PangoLanguage` for the current locale of the process.
    @inlinable public static func from(string language: UnsafePointer<CChar>? = nil) -> Language! {
        guard let rv = Language(gconstpointer: gconstpointer(pango_language_from_string(language))) else { return nil }
        return rv
    }

    /// Returns the `PangoLanguage` for the current locale of the process.
    /// 
    /// On Unix systems, this is the return value is derived from
    /// `setlocale (LC_CTYPE, NULL)`, and the user can
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
    /// Your application should call ``setlocale(LC_ALL, "")`` for the user
    /// settings to take effect. GTK does this in its initialization
    /// functions automatically (by calling `gtk_set_locale()`).
    /// See the `setlocale()` manpage for more details.
    /// 
    /// Note that the default language can change over the life of an application.
    /// 
    /// Also note that this function will not do the right thing if you
    /// use per-thread locales with `uselocale()`. In that case, you should
    /// just call `pango_language_from_string()` yourself.
    @inlinable public static func getDefault() -> Language! {
        guard let rv = Language(gconstpointer: gconstpointer(pango_language_get_default())) else { return nil }
        return rv
    }

}

// MARK: no Language properties

// MARK: no Language signals

// MARK: Language has no signals
// MARK: Language Record: LanguageProtocol extension (methods and fields)
public extension LanguageProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoLanguage` instance.
    @inlinable var language_ptr: UnsafeMutablePointer<PangoLanguage>! { return ptr?.assumingMemoryBound(to: PangoLanguage.self) }

    /// Get a string that is representative of the characters needed to
    /// render a particular language.
    /// 
    /// The sample text may be a pangram, but is not necessarily. It is chosen
    /// to be demonstrative of normal text in the language, as well as exposing
    /// font feature requirements unique to the language. It is suitable for use
    /// as sample text in a font selection dialog.
    /// 
    /// If `language` is `nil`, the default language as found by
    /// [func`Pango.Language.get_default`] is used.
    /// 
    /// If Pango does not have a sample string for `language`, the classic
    /// "The quick brown fox..." is returned.  This can be detected by
    /// comparing the returned pointer value to that returned for (non-existent)
    /// language code "xx".  That is, compare to:
    /// 
    /// ```
    /// pango_language_get_sample_string (pango_language_from_string ("xx"))
    /// ```
    @inlinable func getSampleString() -> String! {
        let rv = pango_language_get_sample_string(language_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Determines the scripts used to to write `language`.
    /// 
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
    /// use three (Japanese for example). Applications should not make
    /// any assumptions on the maximum number of scripts returned
    /// though, except that it is positive if the return value is not
    /// `nil`, and it is a small number.
    /// 
    /// The [method`Pango.Language.includes_script`] function uses this
    /// function internally.
    /// 
    /// Note: while the return value is declared as `PangoScript`, the
    /// returned values are from the `GUnicodeScript` enumeration, which
    /// may have more values. Callers need to handle unknown values.
    @inlinable func getScripts(numScripts: UnsafeMutablePointer<gint>! = nil) -> UnsafePointer<PangoScript>! {
        let rv = pango_language_get_scripts(language_ptr, numScripts)
        return rv
    }

    /// Determines if `script` is one of the scripts used to
    /// write `language`.
    /// 
    /// The returned value is conservative; if nothing is known about
    /// the language tag `language`, `true` will be returned, since, as
    /// far as Pango knows, `script` might be used to write `language`.
    /// 
    /// This routine is used in Pango's itemization process when
    /// determining if a supplied language tag is relevant to
    /// a particular section of text. It probably is not useful
    /// for applications in most circumstances.
    /// 
    /// This function uses [method`Pango.Language.get_scripts`] internally.
    @inlinable func includes(script: PangoScript) -> Bool {
        let rv = ((pango_language_includes_script(language_ptr, script)) != 0)
        return rv
    }

    /// Checks if a language tag matches one of the elements in a list of
    /// language ranges.
    /// 
    /// A language tag is considered to match a range in the list if the
    /// range is '*', the range is exactly the tag, or the range is a prefix
    /// of the tag, and the character after it in the tag is '-'.
    @inlinable func matches(rangeList: UnsafePointer<CChar>!) -> Bool {
        let rv = ((pango_language_matches(language_ptr, rangeList)) != 0)
        return rv
    }

    /// Gets the RFC-3066 format string representing the given language tag.
    /// 
    /// Returns (transfer none): a string representing the language tag
    @inlinable func toString() -> String! {
        let rv = pango_language_to_string(language_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Create a new language tag attribute.
    @inlinable func attrLanguageNew() -> AttributeRef! {
        let rv = AttributeRef(gconstpointer: gconstpointer(pango_attr_language_new(language_ptr)))
        return rv
    }

    /// Computes a `PangoLogAttr` for each character in `text`.
    /// 
    /// The `attrs` array must have one `PangoLogAttr` for
    /// each position in `text`; if `text` contains N characters,
    /// it has N+1 positions, including the last position at the
    /// end of the text. `text` should be an entire paragraph;
    /// logical attributes can't be computed without context
    /// (for example you need to see spaces on either side of
    /// a word to know the word is a word).
    @inlinable func getLogAttrs(text: UnsafePointer<CChar>!, length: Int, level: Int, attrs: UnsafeMutablePointer<PangoLogAttr>!, attrsLen: Int) {
        pango_get_log_attrs(text, gint(length), gint(level), language_ptr, attrs, gint(attrsLen))
    
    }
    /// Get a string that is representative of the characters needed to
    /// render a particular language.
    /// 
    /// The sample text may be a pangram, but is not necessarily. It is chosen
    /// to be demonstrative of normal text in the language, as well as exposing
    /// font feature requirements unique to the language. It is suitable for use
    /// as sample text in a font selection dialog.
    /// 
    /// If `language` is `nil`, the default language as found by
    /// [func`Pango.Language.get_default`] is used.
    /// 
    /// If Pango does not have a sample string for `language`, the classic
    /// "The quick brown fox..." is returned.  This can be detected by
    /// comparing the returned pointer value to that returned for (non-existent)
    /// language code "xx".  That is, compare to:
    /// 
    /// ```
    /// pango_language_get_sample_string (pango_language_from_string ("xx"))
    /// ```
    @inlinable var sampleString: String! {
        /// Get a string that is representative of the characters needed to
        /// render a particular language.
        /// 
        /// The sample text may be a pangram, but is not necessarily. It is chosen
        /// to be demonstrative of normal text in the language, as well as exposing
        /// font feature requirements unique to the language. It is suitable for use
        /// as sample text in a font selection dialog.
        /// 
        /// If `language` is `nil`, the default language as found by
        /// [func`Pango.Language.get_default`] is used.
        /// 
        /// If Pango does not have a sample string for `language`, the classic
        /// "The quick brown fox..." is returned.  This can be detected by
        /// comparing the returned pointer value to that returned for (non-existent)
        /// language code "xx".  That is, compare to:
        /// 
        /// ```
        /// pango_language_get_sample_string (pango_language_from_string ("xx"))
        /// ```
        get {
            let rv = pango_language_get_sample_string(language_ptr).map({ String(cString: $0) })
            return rv
        }
    }


}



