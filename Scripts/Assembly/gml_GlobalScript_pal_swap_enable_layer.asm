.localvar 2 arguments
.localvar 11501 _layer_index 3111
.localvar 11504 _data 3112

:[0]
b [4]

> gml_Script_pal_swap_enable_layer (locals=2, argc=1)
:[1]
push.v arg.argument0
pop.v.v local._layer_index
pushloc.v local._layer_index
call.i layer_exists(argc=1)
conv.v.b
not.b
bf [3]

:[2]
exit.i

:[3]
call.i ds_list_create(argc=0)
pop.v.v local._data
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushloc.v local._data
call.i ds_list_add(argc=4)
popz.v
push.i [function]gml_Script__pal_swap_layer_start
conv.i.v
pushloc.v local._layer_index
call.i layer_script_begin(argc=2)
popz.v
push.i [function]gml_Script__pal_swap_layer_end
conv.i.v
pushloc.v local._layer_index
call.i layer_script_end(argc=2)
popz.v
pushloc.v local._data
pushloc.v local._layer_index
pushglb.v global.Pal_Layer_Map
call.i ds_map_add_list(argc=3)
popz.v
pushloc.v local._layer_index
call.i layer_get_depth(argc=1)
pushloc.v local._layer_index
pushglb.v global.Pal_Layer_Priority
call.i ds_priority_add(argc=3)
popz.v
exit.i

:[4]
push.i [function]gml_Script_pal_swap_enable_layer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.pal_swap_enable_layer
popz.v

:[end]