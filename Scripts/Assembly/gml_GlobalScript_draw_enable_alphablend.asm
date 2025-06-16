.localvar 2 arguments

:[0]
b [2]

> gml_Script_draw_enable_alphablend (locals=0, argc=1)
:[1]
push.v arg.argument0
call.i gpu_set_blendenable(argc=1)
popz.v
exit.i

:[2]
push.i [function]gml_Script_draw_enable_alphablend
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.draw_enable_alphablend
popz.v

:[end]