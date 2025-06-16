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
push.s ""@157
pop.v.s global.screen_border_id
pushi.e 1
pop.v.b global.screen_border_active
pushi.e 0
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
pop.v.b global.game_won
pushi.e 2
pop.v.i global.chapter
pushi.e 0
pop.v.b self.old_savedata_check
pushi.e 1649
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[4]
pushi.e 1649
pushenv [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
popenv [5]

:[7]
pushi.e 1669
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [11]

:[8]
pushi.e 1669
pushenv [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
popenv [9]

:[11]
pushglb.v global.is_console
conv.v.b
bf [13]

:[12]
call.i gml_Script_ossafe_savedata_load(argc=0)
popz.v
b [end]

:[13]
call.i gml_Script_scr_84_init_localization(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_pal_swap_init_system(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 20
conv.i.v
push.s "0123456789"@36919
conv.s.v
pushi.e 2528
conv.i.v
call.i font_add_sprite_ext(argc=4)
pop.v.v global.damagefont
pushi.e 0
conv.i.v
pushi.e 20
conv.i.v
push.s "0123456789+-%"@21696
conv.s.v
pushi.e 2529
conv.i.v
call.i font_add_sprite_ext(argc=4)
pop.v.v global.damagefontgold
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
push.s "0123456789-+"@36920
conv.s.v
pushi.e 2530
conv.i.v
call.i font_add_sprite_ext(argc=4)
pop.v.v global.hpfont
call.i gml_Script_scr_gamestart(argc=0)
popz.v
pushi.e 0
pop.v.i self.i

:[14]
push.v self.i
pushi.e 100
cmp.i.v LT
bf [16]

:[15]
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
b [14]

:[16]
pushi.e 300
pop.v.i global.heartx
pushi.e 220
pop.v.i global.hearty
pushi.e 1
conv.i.v
call.i audio_group_is_loaded(argc=1)
conv.v.b
not.b
bf [18]

:[17]
pushi.e 1
conv.i.v
call.i audio_group_load(argc=1)
popz.v

:[18]
pushi.e 1134
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [end]

:[19]
pushi.e 1134
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[end]