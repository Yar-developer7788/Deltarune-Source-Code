.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_maskdraw_start (locals=0, argc=4)
:[1]
pushi.e 0
conv.b.v
call.i gpu_set_blendenable(argc=1)
popz.v
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 0
conv.b.v
pushi.e 0
conv.b.v
call.i gpu_set_colorwriteenable(argc=4)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
exit.i

:[2]
push.i [function]gml_Script_scr_maskdraw_start
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_maskdraw_start
popz.v

:[end]