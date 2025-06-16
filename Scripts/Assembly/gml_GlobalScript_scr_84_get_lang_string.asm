.localvar 2 arguments
.localvar 11993 lang_string_id 3674
.localvar 723 str 3676

:[0]
b [7]

> gml_Script_scr_84_get_lang_string (locals=2, argc=1)
:[1]
push.v arg.argument0
pop.v.v local.lang_string_id
pushloc.v local.lang_string_id
pushglb.v global.lang_map
call.i ds_map_find_value(argc=2)
pop.v.v local.str
pushloc.v local.str
call.i is_undefined(argc=1)
conv.v.b
bf [5]

:[2]
pushloc.v local.lang_string_id
pushglb.v global.lang_missing_map
call.i ds_map_find_value(argc=2)
conv.v.b
not.b
bf [4]

:[3]
pushi.e 1
conv.b.v
pushloc.v local.lang_string_id
pushglb.v global.lang_missing_map
call.i ds_map_add(argc=3)
popz.v
push.s "ERROR: string id "@11997
pushloc.v local.lang_string_id
add.v.s
push.s " for language "@11998
add.s.v
pushglb.v global.lang
add.v.v
push.s " is missing"@11999
add.s.v
call.i show_debug_message(argc=1)
popz.v

:[4]
push.s "--missing-string--"@12000
pop.v.s local.str

:[5]
pushloc.v local.str
ret.v

:[6]
exit.i

:[7]
push.i [function]gml_Script_scr_84_get_lang_string
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_84_get_lang_string
popz.v

:[end]