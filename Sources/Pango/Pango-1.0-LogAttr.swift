import CGLib
import CPango
import GLib
import GLibObject

// MARK: - LogAttr Record

/// The `LogAttrProtocol` protocol exposes the methods and properties of an underlying `PangoLogAttr` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LogAttr`.
/// Alternatively, use `LogAttrRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `PangoLogAttr` structure stores information about the attributes of a
/// single character.
public protocol LogAttrProtocol {
        /// Untyped pointer to the underlying `PangoLogAttr` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `PangoLogAttr` instance.
    var _ptr: UnsafeMutablePointer<PangoLogAttr>! { get }

    /// Required Initialiser for types conforming to `LogAttrProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `LogAttrRef` type acts as a lightweight Swift reference to an underlying `PangoLogAttr` instance.
/// It exposes methods that can operate on this data type through `LogAttrProtocol` conformance.
/// Use `LogAttrRef` only as an `unowned` reference to an existing `PangoLogAttr` instance.
///
/// The `PangoLogAttr` structure stores information about the attributes of a
/// single character.
public struct LogAttrRef: LogAttrProtocol {
        /// Untyped pointer to the underlying `PangoLogAttr` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LogAttrRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<PangoLogAttr>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<PangoLogAttr>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<PangoLogAttr>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<PangoLogAttr>?) {
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

    /// Reference intialiser for a related type that implements `LogAttrProtocol`
    @inlinable init<T: LogAttrProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogAttrProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogAttrProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogAttrProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogAttrProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogAttrProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LogAttr` type acts as an owner of an underlying `PangoLogAttr` instance.
/// It provides the methods that can operate on this data type through `LogAttrProtocol` conformance.
/// Use `LogAttr` as a strong reference or owner of a `PangoLogAttr` instance.
///
/// The `PangoLogAttr` structure stores information about the attributes of a
/// single character.
open class LogAttr: LogAttrProtocol {
        /// Untyped pointer to the underlying `PangoLogAttr` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LogAttr` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<PangoLogAttr>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LogAttr` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<PangoLogAttr>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LogAttr` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LogAttr` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LogAttr` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<PangoLogAttr>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LogAttr` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<PangoLogAttr>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `PangoLogAttr` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `LogAttr` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<PangoLogAttr>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for PangoLogAttr, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `LogAttrProtocol`
    /// `PangoLogAttr` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `LogAttrProtocol`
    @inlinable public init<T: LogAttrProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for PangoLogAttr, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `PangoLogAttr`.
    deinit {
        // no reference counting for PangoLogAttr, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogAttrProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogAttrProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for PangoLogAttr, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogAttrProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogAttrProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for PangoLogAttr, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogAttrProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogAttrProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for PangoLogAttr, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogAttrProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogAttrProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for PangoLogAttr, cannot ref(_ptr)
    }



}

// MARK: no LogAttr properties

// MARK: no LogAttr signals

// MARK: LogAttr has no signals
// MARK: LogAttr Record: LogAttrProtocol extension (methods and fields)
public extension LogAttrProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `PangoLogAttr` instance.
    @inlinable var _ptr: UnsafeMutablePointer<PangoLogAttr>! { return ptr?.assumingMemoryBound(to: PangoLogAttr.self) }

    /// This is the default break algorithm.
    /// 
    /// It applies Unicode rules without language-specific tailoring, therefore
    /// the `analyis` argument is unused and can be `nil`.
    /// 
    /// See `pango_tailor_break()` for language-specific breaks.
    @inlinable func defaultBreak(text: UnsafePointer<gchar>!, length: Int, analysis: AnalysisRef? = nil, attrsLen: Int) {
        pango_default_break(text, gint(length), analysis?._ptr, _ptr, gint(attrsLen))
    
    }
    /// This is the default break algorithm.
    /// 
    /// It applies Unicode rules without language-specific tailoring, therefore
    /// the `analyis` argument is unused and can be `nil`.
    /// 
    /// See `pango_tailor_break()` for language-specific breaks.
    @inlinable func defaultBreak<AnalysisT: AnalysisProtocol>(text: UnsafePointer<gchar>!, length: Int, analysis: AnalysisT?, attrsLen: Int) {
        pango_default_break(text, gint(length), analysis?._ptr, _ptr, gint(attrsLen))
    
    }

    /// if set, can break line in front of character
    @inlinable var isLineBreak: guint {
        /// if set, can break line in front of character
        get {
            let rv = _ptr.pointee.is_line_break
            return rv
        }
        /// if set, can break line in front of character
         set {
            _ptr.pointee.is_line_break = newValue
        }
    }

    /// if set, must break line in front of character
    @inlinable var isMandatoryBreak: guint {
        /// if set, must break line in front of character
        get {
            let rv = _ptr.pointee.is_mandatory_break
            return rv
        }
        /// if set, must break line in front of character
         set {
            _ptr.pointee.is_mandatory_break = newValue
        }
    }

    /// if set, can break here when doing character wrapping
    @inlinable var isCharBreak: guint {
        /// if set, can break here when doing character wrapping
        get {
            let rv = _ptr.pointee.is_char_break
            return rv
        }
        /// if set, can break here when doing character wrapping
         set {
            _ptr.pointee.is_char_break = newValue
        }
    }

    /// is whitespace character
    @inlinable var isWhite: guint {
        /// is whitespace character
        get {
            let rv = _ptr.pointee.is_white
            return rv
        }
        /// is whitespace character
         set {
            _ptr.pointee.is_white = newValue
        }
    }

    /// if set, cursor can appear in front of character.
    ///   i.e. this is a grapheme boundary, or the first character in the text.
    ///   This flag implements Unicode's
    ///   [Grapheme Cluster Boundaries](http://www.unicode.org/reports/tr29/)
    ///   semantics.
    @inlinable var isCursorPosition: guint {
        /// if set, cursor can appear in front of character.
        ///   i.e. this is a grapheme boundary, or the first character in the text.
        ///   This flag implements Unicode's
        ///   [Grapheme Cluster Boundaries](http://www.unicode.org/reports/tr29/)
        ///   semantics.
        get {
            let rv = _ptr.pointee.is_cursor_position
            return rv
        }
        /// if set, cursor can appear in front of character.
        ///   i.e. this is a grapheme boundary, or the first character in the text.
        ///   This flag implements Unicode's
        ///   [Grapheme Cluster Boundaries](http://www.unicode.org/reports/tr29/)
        ///   semantics.
         set {
            _ptr.pointee.is_cursor_position = newValue
        }
    }

    /// is first character in a word
    @inlinable var isWordStart: guint {
        /// is first character in a word
        get {
            let rv = _ptr.pointee.is_word_start
            return rv
        }
        /// is first character in a word
         set {
            _ptr.pointee.is_word_start = newValue
        }
    }

    /// is first non-word char after a word
    ///   Note that in degenerate cases, you could have both `is_word_start`
    ///   and `is_word_end` set for some character.
    @inlinable var isWordEnd: guint {
        /// is first non-word char after a word
        ///   Note that in degenerate cases, you could have both `is_word_start`
        ///   and `is_word_end` set for some character.
        get {
            let rv = _ptr.pointee.is_word_end
            return rv
        }
        /// is first non-word char after a word
        ///   Note that in degenerate cases, you could have both `is_word_start`
        ///   and `is_word_end` set for some character.
         set {
            _ptr.pointee.is_word_end = newValue
        }
    }

    /// is a sentence boundary.
    ///   There are two ways to divide sentences. The first assigns all
    ///   inter-sentence whitespace/control/format chars to some sentence,
    ///   so all chars are in some sentence; `is_sentence_boundary` denotes
    ///   the boundaries there. The second way doesn't assign
    ///   between-sentence spaces, etc. to any sentence, so
    /// `is_sentence_start`/`is_sentence_end` mark the boundaries of those sentences.
    @inlinable var isSentenceBoundary: guint {
        /// is a sentence boundary.
        ///   There are two ways to divide sentences. The first assigns all
        ///   inter-sentence whitespace/control/format chars to some sentence,
        ///   so all chars are in some sentence; `is_sentence_boundary` denotes
        ///   the boundaries there. The second way doesn't assign
        ///   between-sentence spaces, etc. to any sentence, so
        /// `is_sentence_start`/`is_sentence_end` mark the boundaries of those sentences.
        get {
            let rv = _ptr.pointee.is_sentence_boundary
            return rv
        }
        /// is a sentence boundary.
        ///   There are two ways to divide sentences. The first assigns all
        ///   inter-sentence whitespace/control/format chars to some sentence,
        ///   so all chars are in some sentence; `is_sentence_boundary` denotes
        ///   the boundaries there. The second way doesn't assign
        ///   between-sentence spaces, etc. to any sentence, so
        /// `is_sentence_start`/`is_sentence_end` mark the boundaries of those sentences.
         set {
            _ptr.pointee.is_sentence_boundary = newValue
        }
    }

    /// is first character in a sentence
    @inlinable var isSentenceStart: guint {
        /// is first character in a sentence
        get {
            let rv = _ptr.pointee.is_sentence_start
            return rv
        }
        /// is first character in a sentence
         set {
            _ptr.pointee.is_sentence_start = newValue
        }
    }

    /// is first char after a sentence.
    ///   Note that in degenerate cases, you could have both `is_sentence_start`
    ///   and `is_sentence_end` set for some character. (e.g. no space after a
    ///   period, so the next sentence starts right away)
    @inlinable var isSentenceEnd: guint {
        /// is first char after a sentence.
        ///   Note that in degenerate cases, you could have both `is_sentence_start`
        ///   and `is_sentence_end` set for some character. (e.g. no space after a
        ///   period, so the next sentence starts right away)
        get {
            let rv = _ptr.pointee.is_sentence_end
            return rv
        }
        /// is first char after a sentence.
        ///   Note that in degenerate cases, you could have both `is_sentence_start`
        ///   and `is_sentence_end` set for some character. (e.g. no space after a
        ///   period, so the next sentence starts right away)
         set {
            _ptr.pointee.is_sentence_end = newValue
        }
    }

    /// if set, backspace deletes one character
    ///   rather than the entire grapheme cluster. This field is only meaningful
    ///   on grapheme boundaries (where `is_cursor_position` is set). In some languages,
    ///   the full grapheme (e.g. letter + diacritics) is considered a unit, while in
    ///   others, each decomposed character in the grapheme is a unit. In the default
    ///   implementation of [func`break`], this bit is set on all grapheme boundaries
    ///   except those following Latin, Cyrillic or Greek base characters.
    @inlinable var backspaceDeletesCharacter: guint {
        /// if set, backspace deletes one character
        ///   rather than the entire grapheme cluster. This field is only meaningful
        ///   on grapheme boundaries (where `is_cursor_position` is set). In some languages,
        ///   the full grapheme (e.g. letter + diacritics) is considered a unit, while in
        ///   others, each decomposed character in the grapheme is a unit. In the default
        ///   implementation of [func`break`], this bit is set on all grapheme boundaries
        ///   except those following Latin, Cyrillic or Greek base characters.
        get {
            let rv = _ptr.pointee.backspace_deletes_character
            return rv
        }
        /// if set, backspace deletes one character
        ///   rather than the entire grapheme cluster. This field is only meaningful
        ///   on grapheme boundaries (where `is_cursor_position` is set). In some languages,
        ///   the full grapheme (e.g. letter + diacritics) is considered a unit, while in
        ///   others, each decomposed character in the grapheme is a unit. In the default
        ///   implementation of [func`break`], this bit is set on all grapheme boundaries
        ///   except those following Latin, Cyrillic or Greek base characters.
         set {
            _ptr.pointee.backspace_deletes_character = newValue
        }
    }

    /// is a whitespace character that can possibly be
    ///   expanded for justification purposes. (Since: 1.18)
    @inlinable var isExpandableSpace: guint {
        /// is a whitespace character that can possibly be
        ///   expanded for justification purposes. (Since: 1.18)
        get {
            let rv = _ptr.pointee.is_expandable_space
            return rv
        }
        /// is a whitespace character that can possibly be
        ///   expanded for justification purposes. (Since: 1.18)
         set {
            _ptr.pointee.is_expandable_space = newValue
        }
    }

    /// is a word boundary, as defined by UAX`29`.
    ///   More specifically, means that this is not a position in the middle of a word.
    ///   For example, both sides of a punctuation mark are considered word boundaries.
    ///   This flag is particularly useful when selecting text word-by-word. This flag
    ///   implements Unicode's [Word Boundaries](http://www.unicode.org/reports/tr29/)
    ///   semantics. (Since: 1.22)
    @inlinable var isWordBoundary: guint {
        /// is a word boundary, as defined by UAX`29`.
        ///   More specifically, means that this is not a position in the middle of a word.
        ///   For example, both sides of a punctuation mark are considered word boundaries.
        ///   This flag is particularly useful when selecting text word-by-word. This flag
        ///   implements Unicode's [Word Boundaries](http://www.unicode.org/reports/tr29/)
        ///   semantics. (Since: 1.22)
        get {
            let rv = _ptr.pointee.is_word_boundary
            return rv
        }
        /// is a word boundary, as defined by UAX`29`.
        ///   More specifically, means that this is not a position in the middle of a word.
        ///   For example, both sides of a punctuation mark are considered word boundaries.
        ///   This flag is particularly useful when selecting text word-by-word. This flag
        ///   implements Unicode's [Word Boundaries](http://www.unicode.org/reports/tr29/)
        ///   semantics. (Since: 1.22)
         set {
            _ptr.pointee.is_word_boundary = newValue
        }
    }

}



