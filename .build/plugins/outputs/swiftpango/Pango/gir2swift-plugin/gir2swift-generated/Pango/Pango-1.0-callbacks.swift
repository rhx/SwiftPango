import CGLib
import CHarfBuzz
import CPango
import GLib
import GLibObject
import HarfBuzz
/// Type of a function that can duplicate user data for an attribute.
public typealias AttrDataCopyFunc = PangoAttrDataCopyFunc


/// Type of a function filtering a list of attributes.
public typealias AttrFilterFunc = PangoAttrFilterFunc


/// Callback used when enumerating fonts in a fontset.
/// 
/// See [method`Pango.Fontset.foreach`].
public typealias FontsetForeachFunc = PangoFontsetForeachFunc
