.localvar 2 arguments
.localvar 173 is_valid 3527
.localvar 11884 handle 3528

:[0]
b [8]

> gml_Script_ossafe_file_text_close (locals=2, argc=1)
:[1]
pushi.e 1
pop.v.b local.is_valid
pushglb.v global.is_console
conv.v.b
not.b
bf [3]

:[2]
push.v arg.argument0
call.i file_text_close(argc=1)
popz.v
b [6]

:[3]
push.v arg.argument0
pop.v.v local.handle
push.s "is_write"@162
conv.s.v
pushloc.v local.handle
call.i ds_map_find_value(argc=2)
conv.v.b
bf [5]

:[4]
push.s "data"@147
conv.s.v
pushloc.v local.handle
call.i ds_map_find_value(argc=2)
push.s "filename"@11885
conv.s.v
pushloc.v local.handle
call.i ds_map_find_value(argc=2)
pushglb.v global.savedata
call.i ds_map_set(argc=3)
popz.v

:[5]
pushloc.v local.handle
call.i ds_map_destroy(argc=1)
popz.v

:[6]
pushloc.v local.is_valid
ret.v

:[7]
exit.i

:[8]
push.i [function]gml_Script_ossafe_file_text_close
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ossafe_file_text_close
popz.v

:[end]