.localvar 2 arguments

:[0]
b [4]

> gml_Script_pal_swap_reset (locals=0, argc=0)
:[1]
pushglb.v global.Pal_Shader_Is_Set
conv.v.b
bf [3]

:[2]
call.i shader_reset(argc=0)
popz.v

:[3]
pushi.e 0
pop.v.b global.Pal_Shader_Is_Set
exit.i

:[4]
push.i [function]gml_Script_pal_swap_reset
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.pal_swap_reset
popz.v

:[end]