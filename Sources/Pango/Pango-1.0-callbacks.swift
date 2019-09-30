import CGLib
import CPango
import GLib
import GLibObject

/// Type of a function that can duplicate user data for an attribute.
public typealias AttrDataCopyFunc = PangoAttrDataCopyFunc

/// Type of a function filtering a list of attributes.
public typealias AttrFilterFunc = PangoAttrFilterFunc

/// A callback function used by pango_fontset_foreach() when enumerating
/// the fonts in a fontset.
public typealias FontsetForeachFunc = PangoFontsetForeachFunc
