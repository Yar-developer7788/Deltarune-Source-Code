.localvar 2 arguments

:[0]
b [2]

> gml_Script___init_global (locals=0, argc=0)
:[1]
pushi.e 0
conv.i.v
pushi.e 1
conv.b.v
call.i layer_force_draw_depth(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_colour(argc=1)
popz.v
exit.i

:[2]
push.i [function]gml_Script___init_global
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.__init_global
popz.v

:[end]