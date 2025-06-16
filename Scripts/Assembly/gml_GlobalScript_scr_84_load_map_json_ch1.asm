.localvar 2 arguments
.localvar 11885 filename 4589
.localvar 12038 file_buffer 4590
.localvar 11922 json 4591

:[0]
b [6]

> gml_Script_scr_84_load_map_json_ch1 (locals=3, argc=1)
:[1]
push.v arg.argument0
pop.v.v local.filename
pushloc.v local.filename
call.i file_exists(argc=1)
conv.v.b
bf [4]

:[2]
pushloc.v local.filename
call.i buffer_load(argc=1)
pop.v.v local.file_buffer
pushi.e 11
conv.i.v
pushloc.v local.file_buffer
call.i buffer_read(argc=2)
pop.v.v local.json
pushloc.v local.file_buffer
call.i buffer_delete(argc=1)
popz.v
pushloc.v local.json
call.i json_decode(argc=1)
ret.v

:[3]
b [5]

:[4]
push.s "file: "@12042
pushloc.v local.filename
add.v.s
push.s "does not exist"@12043
add.s.v
call.i show_debug_message(argc=1)
popz.v

:[5]
exit.i

:[6]
push.i [function]gml_Script_scr_84_load_map_json_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_84_load_map_json_ch1
popz.v

:[end]