.localvar 2 arguments

:[0]
b [7]

> gml_Script_scr_84_get_font (locals=0, argc=1)
:[1]
push.s "chemg_last_get_font"@11990
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
not.b
bf [3]

:[2]
push.s ""@157
pop.v.s global.chemg_last_get_font

:[3]
push.v arg.argument0
pushglb.v global.chemg_last_get_font
cmp.v.v NEQ
bf [5]

:[4]
push.v arg.argument0
pop.v.v global.chemg_last_get_font

:[5]
push.v arg.argument0
pushglb.v global.font_map
call.i ds_map_find_value(argc=2)
ret.v

:[6]
exit.i

:[7]
push.i [function]gml_Script_scr_84_get_font
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_84_get_font
popz.v

:[end]