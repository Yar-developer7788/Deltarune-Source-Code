.localvar 2 arguments
.localvar 11518 _id 3118
.localvar 11504 _data 3119

:[0]
b [6]

> gml_Script__pal_swap_layer_start (locals=2, argc=0)
:[1]
pushbltn.v builtin.event_type
pushi.e 8
cmp.i.v EQ
bf [5]

:[2]
pushglb.v global.Pal_Layer_Priority
call.i ds_priority_delete_min(argc=1)
pop.v.v local._id
pushloc.v local._id
pushglb.v global.Pal_Layer_Map
call.i ds_map_find_value(argc=2)
pop.v.v local._data
pushbltn.v builtin.undefined
pushloc.v local._data
call.i ds_list_find_index(argc=2)
pushi.e -1
cmp.i.v NEQ
bf [4]

:[3]
exit.i

:[4]
pushi.e 2
conv.i.v
pushloc.v local._data
call.i ds_list_find_value(argc=2)
pushi.e 1
conv.i.v
pushloc.v local._data
call.i ds_list_find_value(argc=2)
pushi.e 0
conv.i.v
pushloc.v local._data
call.i ds_list_find_value(argc=2)
call.i gml_Script_pal_swap_set(argc=3)
popz.v
pushloc.v local._id
call.i layer_get_depth(argc=1)
pushloc.v local._id
pushglb.v global.Pal_Layer_Temp_Priority
call.i ds_priority_add(argc=3)
popz.v

:[5]
exit.i

:[6]
push.i [function]gml_Script__pal_swap_layer_start
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self._pal_swap_layer_start
popz.v

:[end]