.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_84_set_draw_font (locals=0, argc=1)
:[1]
push.v arg.argument0
pop.v.v global.chemg_font
push.v arg.argument0
call.i gml_Script_scr_84_get_font(argc=1)
call.i draw_set_font(argc=1)
popz.v
exit.i

:[2]
push.i [function]gml_Script_scr_84_set_draw_font
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_84_set_draw_font
popz.v

:[end]