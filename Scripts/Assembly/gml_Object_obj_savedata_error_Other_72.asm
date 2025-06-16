.localvar 2 arguments

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
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [3]

:[2]
call.i switch_save_data_commit(argc=0)
popz.v

:[3]
pushglb.v global.savedata_buffer
call.i buffer_delete(argc=1)
popz.v
pushbltn.v builtin.undefined
pop.v.v global.savedata_buffer
call.i gml_Script_game_restart_true(argc=0)
popz.v

:[end]