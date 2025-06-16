.localvar 2 arguments

:[0]
b [2]

> gml_Script_texture_set_interpolation (locals=0, argc=1)
:[1]
push.v arg.argument0
call.i gpu_set_texfilter(argc=1)
popz.v
exit.i

:[2]
push.i [function]gml_Script_texture_set_interpolation
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.texture_set_interpolation
popz.v

:[end]