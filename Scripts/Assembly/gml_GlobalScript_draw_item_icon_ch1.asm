.localvar 2 arguments

:[0]
b [2]

> gml_Script_draw_item_icon_ch1 (locals=0, argc=3)
:[1]
pushi.e 1
conv.i.v
call.i draw_get_color(argc=0)
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v arg.argument1
push.v arg.argument0
push.v arg.argument2
pushi.e 4171
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
exit.i

:[2]
push.i [function]gml_Script_draw_item_icon_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.draw_item_icon_ch1
popz.v

:[end]