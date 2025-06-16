.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_darkbox_black_ch1 (locals=0, argc=4)
:[1]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v arg.argument3
pushi.e 20
sub.i.v
push.v arg.argument2
pushi.e 20
sub.i.v
push.v arg.argument1
pushi.e 20
add.i.v
push.v arg.argument0
pushi.e 20
add.i.v
call.i draw_rectangle(argc=5)
popz.v
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_scr_darkbox_ch1(argc=4)
popz.v
exit.i

:[2]
push.i [function]gml_Script_scr_darkbox_black_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_darkbox_black_ch1
popz.v

:[end]