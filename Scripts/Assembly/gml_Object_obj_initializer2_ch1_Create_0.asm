.localvar 2 arguments

:[0]
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bt [2]

:[1]
pushbltn.v builtin.os_type
pushi.e 14
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
pop.v.b global.is_console
push.s "Dynamic"@14040
pop.v.s global.screen_border_id
pushi.e 1
pop.v.b global.screen_border_active
pushi.e 1
pop.v.i global.screen_border_alpha
pushi.e 0
pop.v.i global.screen_border_state
pushi.e 0
pop.v.i global.screen_border_dynamic_fade_id
pushi.e 0
pop.v.i global.screen_border_dynamic_fade_level
pushi.e -1
pop.v.i global.savedata_async_id
pushi.e 0
pop.v.b global.savedata_async_load
pushi.e 0
pop.v.b global.savedata_error
push.s ""@157
pop.v.s global.savedata_debuginfo
pushi.e 0
pop.v.b self.old_savedata_check
pushglb.v global.is_console
conv.v.b
bf [5]

:[4]
call.i gml_Script_ossafe_savedata_load_ch1(argc=0)
popz.v
b [end]

:[5]
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

:[6]
push.v self.i
pushi.e 100
cmp.i.v LT
bf [8]

:[7]
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
b [6]

:[8]
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

:[9]
pushi.e 1649
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[end]