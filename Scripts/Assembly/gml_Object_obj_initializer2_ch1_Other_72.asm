.localvar 2 arguments
.localvar 11922 json 21963

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
bf [end]

:[2]
pushi.e 0
pop.v.b global.savedata_async_load
push.s "status"@14635
conv.s.v
pushbltn.v builtin.async_load
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.b.v EQ
bf [8]

:[3]
push.v self.old_savedata_check
conv.v.b
not.b
bf [6]

:[4]
pushi.e 1
pop.v.b self.old_savedata_check
call.i gml_Script_ossafe_savedata_load_old_check(argc=0)
popz.v
exit.i

:[5]
b [7]

:[6]
pushi.e 1
pop.v.b global.savedata_error
push.s "load failed: "@14636
push.s "status"@14635
conv.s.v
pushbltn.v builtin.async_load
call.i ds_map_find_value(argc=2)
call.i string(argc=1)
add.v.s
pop.v.v global.savedata_debuginfo
call.i ds_map_create(argc=0)
pop.v.v global.savedata

:[7]
b [9]

:[8]
pushi.e 0
pop.v.b global.savedata_error
push.s "load succeeded"@14637
pop.v.s global.savedata_debuginfo
pushi.e 11
conv.i.v
pushglb.v global.savedata_buffer
call.i buffer_read(argc=2)
pop.v.v local.json
pushloc.v local.json
call.i json_decode(argc=1)
pop.v.v global.savedata

:[9]
pushglb.v global.savedata_buffer
call.i buffer_delete(argc=1)
popz.v
pushbltn.v builtin.undefined
pop.v.v global.savedata_buffer
call.i gml_Script_scr_84_init_localization_ch1(argc=0)
popz.v
call.i gml_Script_scr_84_load_ini_ch1(argc=0)
popz.v
call.i gml_Script_scr_gamestart_ch1(argc=0)
popz.v
pushi.e 0
conv.i.v
pushi.e 20
conv.i.v
push.s "0123456789"@36919
conv.s.v
pushi.e 4049
conv.i.v
call.i font_add_sprite_ext(argc=4)
pop.v.v global.damagefont
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
push.s "obj_initializer2_slash_Create_0_gml_2_0"@41942
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e 4280
conv.i.v
call.i font_add_sprite_ext(argc=4)
pop.v.v global.hpfont
pushi.e 0
pop.v.i self.i

:[10]
push.v self.i
pushi.e 100
cmp.i.v LT
bf [12]

:[11]
push.i 231375
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.tempflag
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [10]

:[12]
pushi.e 300
pop.v.i global.heartx
pushi.e 220
pop.v.i global.hearty
pushi.e 1
conv.i.v
call.i audio_group_load(argc=1)
popz.v
pushi.e 1649
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [end]

:[13]
pushi.e 1649
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[end]