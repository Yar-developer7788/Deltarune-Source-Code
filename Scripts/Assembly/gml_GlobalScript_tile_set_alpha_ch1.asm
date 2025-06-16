.localvar 2 arguments
.localvar 11101 __index 4536
.localvar 11064 __alpha 4537

:[0]
b [3]

> gml_Script_tile_set_alpha_ch1 (locals=2, argc=2)
:[1]
push.v arg.argument0
pop.v.v local.__index
push.v arg.argument1
pop.v.v local.__alpha
pushloc.v local.__alpha
pushloc.v local.__index
call.i layer_tile_alpha(argc=2)
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_tile_set_alpha_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.tile_set_alpha_ch1
popz.v

:[end]