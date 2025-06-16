.localvar 2 arguments

:[0]
b [2]

> gml_Script_draw_text_shadow_width (locals=0, argc=4)
:[1]
call.i draw_get_color(argc=0)
pop.v.v self.__txtcolor__
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v arg.argument3
push.v arg.argument2
call.i string_hash_to_newline(argc=1)
push.v arg.argument1
pushi.e 1
add.i.v
push.v arg.argument0
pushi.e 1
add.i.v
call.i gml_Script_draw_text_width(argc=4)
popz.v
push.v self.__txtcolor__
call.i draw_set_color(argc=1)
popz.v
push.v arg.argument3
push.v arg.argument2
call.i string_hash_to_newline(argc=1)
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_draw_text_width(argc=4)
popz.v
exit.i

:[2]
push.i [function]gml_Script_draw_text_shadow_width
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.draw_text_shadow_width
popz.v

:[end]