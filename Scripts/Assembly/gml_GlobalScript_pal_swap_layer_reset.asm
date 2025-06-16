.localvar 2 arguments

:[0]
b [2]

> gml_Script_pal_swap_layer_reset (locals=0, argc=0)
:[1]
pushglb.v global.Pal_Layer_Map
call.i ds_map_clear(argc=1)
popz.v
pushglb.v global.Pal_Layer_Priority
call.i ds_priority_clear(argc=1)
popz.v
pushglb.v global.Pal_Layer_Temp_Priority
call.i ds_priority_clear(argc=1)
popz.v
exit.i

:[2]
push.i [function]gml_Script_pal_swap_layer_reset
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.pal_swap_layer_reset
popz.v

:[end]