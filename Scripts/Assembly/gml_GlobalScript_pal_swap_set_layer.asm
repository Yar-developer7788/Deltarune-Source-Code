.localvar 2 arguments
.localvar 11458 _pal_sprite 3128
.localvar 11459 _pal_index 3129
.localvar 11501 _layer_index 3130
.localvar 11530 _pal_is_surface 3131
.localvar 11504 _data 3132

:[0]
b [4]

> gml_Script_pal_swap_set_layer (locals=5, argc=4)
:[1]
push.v arg.argument0
pop.v.v local._pal_sprite
push.v arg.argument1
pop.v.v local._pal_index
push.v arg.argument2
pop.v.v local._layer_index
push.v arg.argument3
pop.v.v local._pal_is_surface
pushloc.v local._layer_index
pushglb.v global.Pal_Layer_Map
call.i ds_map_find_value(argc=2)
pop.v.v local._data
pushloc.v local._data
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
exit.i

:[3]
pushloc.v local._data
call.i ds_list_clear(argc=1)
popz.v
pushloc.v local._pal_is_surface
pushloc.v local._pal_index
pushloc.v local._pal_sprite
pushloc.v local._data
call.i ds_list_add(argc=4)
popz.v
exit.i

:[4]
push.i [function]gml_Script_pal_swap_set_layer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.pal_swap_set_layer
popz.v

:[end]