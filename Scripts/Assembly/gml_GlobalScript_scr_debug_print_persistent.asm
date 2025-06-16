.localvar 2 arguments
.localvar 9719 dcolor 3491

:[0]
b [2]

> gml_Script_scr_debug_print_persistent (locals=1, argc=1)
:[1]
pushi.e 2
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
call.i draw_get_color(argc=0)
pop.v.v local.dcolor
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.d 0.5
conv.d.v
push.d 0.5
conv.d.v
push.v arg.argument0
call.i string_hash_to_newline(argc=1)
pushi.e 11
conv.i.v
pushi.e 621
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v
pushloc.v local.dcolor
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.d 0.5
conv.d.v
push.d 0.5
conv.d.v
push.v arg.argument0
call.i string_hash_to_newline(argc=1)
pushi.e 10
conv.i.v
pushi.e 620
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
exit.i

:[2]
push.i [function]gml_Script_scr_debug_print_persistent
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_debug_print_persistent
popz.v

:[end]