.localvar 2 arguments

:[0]
b [7]

> gml_Script_ossafe_file_delete_ch1 (locals=0, argc=1)
:[1]
pushglb.v global.is_console
conv.v.b
not.b
bf [4]

:[2]
push.v arg.argument0
call.i file_delete(argc=1)
ret.v

:[3]
b [6]

:[4]
push.v arg.argument0
pushglb.v global.savedata
call.i ds_map_find_value(argc=2)
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [6]

:[5]
push.v arg.argument0
pushglb.v global.savedata
call.i ds_map_delete(argc=2)
popz.v

:[6]
exit.i

:[7]
push.i [function]gml_Script_ossafe_file_delete_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ossafe_file_delete_ch1
popz.v

:[end]