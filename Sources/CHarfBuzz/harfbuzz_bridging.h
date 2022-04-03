struct hb_blob_t {};
struct hb_buffer_t {};
struct hb_draw_funcs_t {};
struct hb_face_t {};
struct hb_font_t {};
struct hb_font_funcs_t {};
struct hb_language_impl_t {};
struct hb_link_t {};
struct hb_map_t {};
struct hb_object_t {};
struct hb_set_t {};
struct hb_shape_plan_t {};
struct hb_subset_input_t {};
struct hb_subset_plan_t {};
struct hb_unicode_funcs_t {};

#define GLIB_DISABLE_DEPRECATION_WARNINGS
#include <sys/types.h>
#include <harfbuzz/hb-glib.h>
#include <harfbuzz/hb-gobject.h>
#include <harfbuzz/hb-aat.h>
#include <harfbuzz/hb-graphite2.h>
#include <harfbuzz/hb-ft.h>
#ifdef __APPLE__
#include <harfbuzz/hb-coretext.h>
#endif
