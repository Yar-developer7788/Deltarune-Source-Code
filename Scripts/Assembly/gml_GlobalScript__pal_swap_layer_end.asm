.localvar 2 arguments

:[0]
b [5]

> gml_Script__pal_swap_layer_end (locals=0, argc=0)
:[1]
pushbltn.v builtin.event_type
pushi.e 8
cmp.i.v EQ
bf [4]

:[2]
call.i gml_Script_pal_swap_reset(argc=0)
popz.v
pushglb.v global.Pal_Layer_Priority
call.i ds_priority_empty(argc=1)
conv.v.b
bf [4]

:[3]
pushglb.v global.Pal_Layer_Temp_Priority
pushglb.v global.Pal_Layer_Priority
call.i ds_priority_copy(argc=2)
popz.v
pushglb.v global.Pal_Layer_Temp_Priority
call.i ds_priority_clear(argc=1)
popz.v

:[4]
exit.i

:[5]
push.i [function]gml_Script__pal_swap_layer_end
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self._pal_swap_layer_end
popz.v

:[end]