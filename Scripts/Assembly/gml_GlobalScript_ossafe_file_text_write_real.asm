.localvar 2 arguments
.localvar 11884 handle 3561

:[0]
b [6]

> gml_Script_ossafe_file_text_write_real (locals=1, argc=2)
:[1]
pushglb.v global.is_console
conv.v.b
not.b
bf [4]

:[2]
push.v arg.argument1
push.v arg.argument0
call.i file_text_write_real(argc=2)
ret.v

:[3]
b [5]

:[4]
push.v arg.argument0
pop.v.v local.handle
push.s "data"@147
conv.s.v
pushloc.v local.handle
call.i ds_map_find_value(argc=2)
push.v arg.argument1
call.i string(argc=1)
add.v.v
push.s "data"@147
conv.s.v
pushloc.v local.handle
call.i ds_map_set(argc=3)
popz.v

:[5]
exit.i

:[6]
push.i [function]gml_Script_ossafe_file_text_write_real
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ossafe_file_text_write_real
popz.v

:[end]