.localvar 2 arguments
.localvar 4672 type 21925
.localvar 11922 json 21926

:[0]
push.s "id"@6351
conv.s.v
pushbltn.v builtin.async_load
call.i ds_map_find_value(argc=2)
pushglb.v global.savedata_async_id
cmp.v.v EQ
bf [end]

:[1]
pushi.e -1
pop.v.i global.savedata_async_id
pushglb.v global.savedata_async_load
conv.v.b
bf [3]

:[2]
push.s "load"@9889
pop.v.s local.type
b [4]

:[3]
push.s "save"@9887
pop.v.s local.type

:[4]
push.s "status"@14635
conv.s.v
pushbltn.v builtin.async_load
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.b.v EQ
bf [8]

:[5]
pushi.e 1
pop.v.b global.savedata_error
pushloc.v local.type
push.s " failed: "@36742
add.s.v
push.s "status"@14635
conv.s.v
pushbltn.v builtin.async_load
call.i ds_map_find_value(argc=2)
call.i string(argc=1)
add.v.v
pop.v.v global.savedata_debuginfo
pushglb.v global.savedata_async_load
conv.v.b
bf [7]

:[6]
call.i ds_map_create(argc=0)
pop.v.v global.savedata
pushi.e 0
pop.v.b global.savedata_async_load

:[7]
b [12]

:[8]
pushi.e 0
pop.v.b global.savedata_error
pushloc.v local.type
push.s " succeeded"@36743
add.s.v
pop.v.v global.savedata_debuginfo
pushglb.v global.savedata_async_load
conv.v.b
bf [10]

:[9]
pushi.e 11
conv.i.v
pushglb.v global.savedata_buffer
call.i buffer_read(argc=2)
pop.v.v local.json
pushloc.v local.json
call.i json_decode(argc=1)
pop.v.v global.savedata
pushi.e 0
pop.v.b global.savedata_async_load
b [12]

:[10]
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [12]

:[11]
call.i switch_save_data_commit(argc=0)
popz.v

:[12]
pushglb.v global.savedata_buffer
call.i buffer_delete(argc=1)
popz.v
pushbltn.v builtin.undefined
pop.v.v global.savedata_buffer

:[end]