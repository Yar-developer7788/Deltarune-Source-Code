.localvar 2 arguments
.localvar 30410 foreground 16917

:[0]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [2]

:[1]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [3]

:[2]
push.e 0

:[3]
bf [15]

:[4]
pushi.e 11
pop.v.i self.con
pushi.e 133
conv.i.v
call.i instance_deactivate_object(argc=1)
popz.v
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i global.facing
pushi.e 1
pop.v.b self.anykey
pushi.e 1000
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i audio_sound_gain(argc=3)
popz.v
pushi.e 412
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v local.foreground
pushloc.v local.foreground
pushi.e -9
pushenv [6]

:[5]
push.i 95000
pop.v.i self.depth

:[6]
popenv [5]
pushi.e 413
conv.i.v
pushi.e 106
conv.i.v
pushi.e 194
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.faucet
push.d 0.25
push.v self.faucet
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e 0
push.v self.faucet
pushi.e -9
pop.v.i [stacktop]self.visible
push.v self.faucet
pushi.e -9
pushenv [8]

:[7]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[8]
popenv [7]
pushi.e 429
conv.i.v
push.v self.faucet
pushi.e -9
push.v [stacktop]self.y
push.v self.faucet
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.cabinet_heartless
pushi.e 0
push.v self.cabinet_heartless
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.cabinet_heartless
pushi.e -9
pop.v.i [stacktop]self.visible
push.v self.cabinet_heartless
pushi.e -9
pushenv [10]

:[9]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[10]
popenv [9]
pushi.e 428
conv.i.v
push.v self.faucet
pushi.e -9
push.v [stacktop]self.y
push.v self.faucet
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.cabinet_heart
pushi.e 0
push.v self.cabinet_heart
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.cabinet_heart
pushi.e -9
pop.v.i [stacktop]self.visible
push.v self.cabinet_heart
pushi.e -9
pushenv [12]

:[11]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[12]
popenv [11]
pushi.e 425
conv.i.v
pushi.e 89
conv.i.v
pushi.e 52
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.window
pushi.e 0
push.v self.window
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.v self.window
pushi.e -9
pushenv [14]

:[13]
push.i 1000000
pop.v.i self.depth

:[14]
popenv [13]
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
push.i 232289
setowner.e
push.v self.faucet
pushi.e 898
pushi.e 0
pop.v.v [array]self.save_object
push.v self.window
pushi.e 898
pushi.e 1
pop.v.v [array]self.save_object
push.v self.cabinet_heart
pushi.e 898
pushi.e 2
pop.v.v [array]self.save_object
push.v self.cabinet_heartless
pushi.e 898
pushi.e 3
pop.v.v [array]self.save_object
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.depth
pushi.e 1000
add.i.v
push.s "depth"@277
conv.s.v
push.v self.faucet
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 10
conv.i.v
pushi.e 0
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 109
conv.i.v
pushi.e 202
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "free_all"@9834
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "sink_noise.ogg"@33808
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 65
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.faucet
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene31_slash_Step_0_gml_60_0"@33809
conv.s.v
push.s "* It started to run./"@33810
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene31_slash_Step_0_gml_61_0"@33811
conv.s.v
push.s "* It's making a lot of noise./%"@33812
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[15]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [18]

:[16]
push.v self.anykey
pushi.e 1
cmp.b.v EQ
bf [18]

:[17]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [33]

:[20]
push.v self.keytimer
push.e 1
add.i.v
pop.v.v self.keytimer
push.v self.keytimer
pushi.e 60
cmp.i.v GTE
bf [22]

:[21]
push.v self.keytimer
push.v self.maxshaketime
cmp.v.v LT
b [23]

:[22]
push.e 0

:[23]
bf [31]

:[24]
pushi.e 1
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [26]

:[25]
call.i gml_Script_scr_gamepad_check_pressed_any(argc=0)
conv.v.b
b [27]

:[26]
push.e 1

:[27]
bf [31]

:[28]
push.v self.maxshaketime
push.e 1
sub.i.v
pop.v.v self.maxshaketime
push.v self.kr_actor
pushi.e -9
pushenv [30]

:[29]
call.i gml_Script_scr_shakeobj(argc=0)
popz.v

:[30]
popenv [29]

:[31]
push.v self.keytimer
push.v self.maxshaketime
cmp.v.v GTE
bf [33]

:[32]
pushi.e 12
pop.v.i self.con
pushi.e 0
pop.v.b self.anykey

:[33]
push.v self.con
pushi.e 12
cmp.i.v EQ
bt [35]

:[34]
call.i gml_Script_scr_cutscene_loaded(argc=0)
conv.v.b
b [36]

:[35]
push.e 1

:[36]
bf [48]

:[37]
pushi.e 49
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 423
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 109
conv.i.v
pushi.e 190
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 90
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 4
conv.i.v
pushi.e 109
conv.i.v
pushi.e 209
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.d 0.5
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 65
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 120
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.d 0.1
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 70
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.d 0.5
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 4
conv.i.v
pushi.e 109
conv.i.v
pushi.e 196
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 13
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
call.i gml_Script_c_shake(argc=0)
popz.v
pushi.e 167
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 171
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 31
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [39]

:[38]
push.d 0.5
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 171
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 16
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [38]

:[39]
popz.i
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 4
conv.i.v
pushi.e 109
conv.i.v
pushi.e 204
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 367
conv.i.v
pushi.e 130
conv.i.v
pushi.e 206
conv.i.v
call.i gml_Script_c_instance(argc=3)
popz.v
pushi.e 165
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 61
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 38
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 37
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 35
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 70
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 37
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 13
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.cabinet_heart
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 3
conv.i.v
push.s "image_index"@274
conv.s.v
push.v self.cabinet_heart
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_shake(argc=0)
popz.v
pushi.e 171
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 167
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 26
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 45
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 63
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 4
conv.i.v
push.s "image_index"@274
conv.s.v
push.v self.cabinet_heart
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 5
conv.i.v
push.s "image_index"@274
conv.s.v
push.v self.cabinet_heart
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 48
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 42
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 43
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 44
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.cabinet_heart
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 109
conv.i.v
pushi.e 210
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_depth(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 416
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_c_shakestep(argc=2)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 2
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_c_shakestep(argc=2)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e -15
conv.i.v
call.i gml_Script_c_shakestep(argc=2)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_c_shakestep(argc=2)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_c_shakestep(argc=2)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e -15
conv.i.v
call.i gml_Script_c_shakestep(argc=2)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_c_shakestep(argc=2)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e -15
conv.i.v
call.i gml_Script_c_shakestep(argc=2)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_c_shakestep(argc=2)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e -15
conv.i.v
call.i gml_Script_c_shakestep(argc=2)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_c_shakestep(argc=2)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e -15
conv.i.v
call.i gml_Script_c_shakestep(argc=2)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e -7
conv.i.v
call.i gml_Script_c_shakestep(argc=2)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 426
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 89
conv.i.v
pushi.e 52
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.d 0.25
conv.d.v
push.s "image_speed"@276
conv.s.v
push.v self.window
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 65
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.d 0.5
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "image_speed"@276
conv.s.v
push.v self.window
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 52
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 52
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 7
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 52
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 52
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 9
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 157
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 12
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 14
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 16
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 24
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_shake(argc=0)
popz.v
pushi.e 111
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 52
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 120
conv.i.v
pushi.e 0
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 180
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "free"@9835
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "home.ogg"@33722
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 60
conv.i.v
push.d 0.5
conv.d.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene31_slash_Step_0_gml_385_0"@33813
conv.s.v
push.s "* Well^1, let us get the flour./"@33814
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "C"@9479
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene31_slash_Step_0_gml_387_0"@33815
conv.s.v
push.s "\\EC* So^1, that's..^1. this bag? And you just.../"@33816
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene31_slash_Step_0_gml_388_0"@33817
conv.s.v
push.s "\\EE* ..^1. oops./"@33818
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 4
conv.i.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene31_slash_Step_0_gml_390_0"@33819
conv.s.v
push.s "\\E4* Hee hee hee^1! Susie^1, you have flour on your nose!/"@33820
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "3"@2741
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene31_slash_Step_0_gml_392_0"@33821
conv.s.v
push.s "\\E3* Uh^1, I meant to do that./"@33822
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 4
conv.i.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene31_slash_Step_0_gml_394_0"@33823
conv.s.v
push.s "\\E4* Thought you would stop to \"smell the flour^1,\" eh?/"@33824
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 9
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene31_slash_Step_0_gml_396_0"@33825
conv.s.v
push.s "\\E9* Hahaha^1, ughhh - ACHOO^1! C'mon!!!/"@33826
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene31_slash_Step_0_gml_398_0"@33827
conv.s.v
push.s "\\E0* Now^1, onto the next part.../%"@33828
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 90
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene31_slash_Step_0_gml_405_0"@33829
conv.s.v
push.s "\\EK* ..^1. so^1, where the he--^1 uh^1, HECK^1, is Kris?/"@33830
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene31_slash_Step_0_gml_407_0"@33831
conv.s.v
push.s "\\E0* Oh^1, Kris^1, er..^1. does this sometimes./"@33832
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene31_slash_Step_0_gml_409_0"@33833
conv.s.v
push.s "\\E0* Well they should hurry. I'm getting sleepy./"@33834
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 4
conv.i.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene31_slash_Step_0_gml_411_0"@33835
conv.s.v
push.s "\\E4* Do you know what they call a sleeping Susie?/"@33836
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "K"@4777
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene31_slash_Step_0_gml_413_0"@33837
conv.s.v
push.s "\\EK* Huh...? What?/"@33838
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 4
conv.i.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene31_slash_Step_0_gml_415_0"@33839
conv.s.v
push.s "\\E4* They would call her..^1. A \"Snoozie!\"/"@33840
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "A"@1192
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene31_slash_Step_0_gml_417_0"@33841
conv.s.v
push.s "\\EA* Uhh..^1. haha. Then.../"@33842
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene31_slash_Step_0_gml_418_0"@33843
conv.s.v
push.s "\\E2* Then I guess you'd be^1, uh..^1. \"Snoriel?\"/"@33844
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 4
conv.i.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene31_slash_Step_0_gml_420_0"@33845
conv.s.v
push.s "\\E4* HAHAHA!^1! Hahaha!^1! Snoriel!!!/"@33846
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene31_slash_Step_0_gml_421_0"@33847
conv.s.v
push.s "* Snoozy and Snoriel!!!/"@33848
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "K"@4777
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene31_slash_Step_0_gml_423_0"@33849
conv.s.v
push.s "\\EK* Uhh^1, heheh^1, you..^1. really liked that one^1, huh?/"@33850
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene31_slash_Step_0_gml_425_0"@33851
conv.s.v
push.s "\\E4* Wasn't it funny?/%"@33852
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 90
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "obj_ch2_scene31_slash_Step_0_gml_431_0"@33853
conv.s.v
push.s "Toriel???"@33854
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.torielstring
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [44]

:[40]
pushglb.v global.is_console
pushi.e 1
cmp.b.v EQ
bf [42]

:[41]
push.v self.torielstring
pushi.e 219
conv.i.v
pushi.e 372
conv.i.v
pushi.e 7
conv.i.v
push.s "susie"@70
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
b [43]

:[42]
push.v self.torielstring
pushi.e 244
conv.i.v
pushi.e 372
conv.i.v
pushi.e 7
conv.i.v
push.s "susie"@70
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v

:[43]
b [47]

:[44]
pushglb.v global.is_console
pushi.e 1
cmp.b.v EQ
bf [46]

:[45]
push.v self.torielstring
pushi.e 208
conv.i.v
pushi.e 442
conv.i.v
pushi.e 7
conv.i.v
push.s "susie"@70
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
b [47]

:[46]
push.v self.torielstring
pushi.e 230
conv.i.v
pushi.e 442
conv.i.v
pushi.e 7
conv.i.v
push.s "susie"@70
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v

:[47]
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene31_slash_Step_0_gml_434_0"@33856
conv.s.v
push.s "\\E5* ..^1. Alright^1, where the HELL is Kris?\\f0/%"@33857
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene31_slash_Step_0_gml_438_0"@33858
conv.s.v
push.s "\\E1* The pie is nearly done.../"@33859
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene31_slash_Step_0_gml_439_0"@33860
conv.s.v
push.s "\\E8* Oh^1, the sugar^1! Wait here a moment^1, I left it in the car!/"@33861
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "A"@1192
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene31_slash_Step_0_gml_441_0"@33862
conv.s.v
push.s "\\EA* OK!/%"@33863
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "free"@9835
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 12
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 90
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 12
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 90
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 52
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 26
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 90
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 157
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 430
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 110
conv.i.v
pushi.e 50
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 8
conv.i.v
push.s "hspeed"@10270
conv.s.v
push.v self.kr_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.d 0.5
conv.d.v
push.s "gravity"@10771
conv.s.v
push.v self.kr_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.d 0.3
conv.d.v
push.s "friction"@10775
conv.s.v
push.v self.kr_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 424
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e -8
conv.i.v
pushi.e -20
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
push.d 0.5
conv.d.v
push.s "friction"@10775
conv.s.v
push.v self.kr_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "vspeed"@14406
conv.s.v
push.v self.kr_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "gravity"@10771
conv.s.v
push.v self.kr_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 52
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "sink_noise.ogg"@33808
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 90
conv.i.v
pushi.e 1
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 90
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 2
conv.i.v
pushi.e -6
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
pushi.e 416
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 15
conv.i.v
call.i gml_Script_c_shakestep(argc=2)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 10
conv.i.v
call.i gml_Script_c_shakestep(argc=2)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 15
conv.i.v
call.i gml_Script_c_shakestep(argc=2)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 10
conv.i.v
call.i gml_Script_c_shakestep(argc=2)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e -1
conv.i.v
pushi.e 15
conv.i.v
call.i gml_Script_c_shakestep(argc=2)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "speed"@9625
conv.s.v
push.v self.kr_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "friction"@10775
conv.s.v
push.v self.kr_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 60
conv.i.v
push.d 0.4
conv.d.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 418
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 103
conv.i.v
pushi.e 189
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 6
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 419
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.faucet
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 65
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.s "free"@9835
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 431
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 108
conv.i.v
pushi.e 195
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 61
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 40
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 423
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 4
conv.i.v
pushi.e 109
conv.i.v
pushi.e 200
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 39
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 64
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.cabinet_heart
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 5
conv.i.v
push.s "image_index"@274
conv.s.v
push.v self.cabinet_heart
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 4
conv.i.v
push.s "image_index"@274
conv.s.v
push.v self.cabinet_heart
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 3
conv.i.v
push.s "image_index"@274
conv.s.v
push.v self.cabinet_heart
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 38
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.cabinet_heart
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.cabinet_heartless
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 3
conv.i.v
push.s "image_index"@274
conv.s.v
push.v self.cabinet_heartless
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 37
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 65
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 37
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 6
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 63
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 2
conv.i.v
push.s "image_index"@274
conv.s.v
push.v self.cabinet_heartless
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "image_index"@274
conv.s.v
push.v self.cabinet_heartless
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.cabinet_heartless
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_shake(argc=0)
popz.v
pushi.e 2
conv.i.v
pushi.e 109
conv.i.v
pushi.e 192
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 13
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.d 0.5
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 367
conv.i.v
pushi.e 127
conv.i.v
pushi.e 200
conv.i.v
call.i gml_Script_c_instance(argc=3)
popz.v
pushi.e 61
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 171
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 14
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 111
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 80
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 109
conv.i.v
pushi.e 200
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "home.ogg"@33722
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v

:[48]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [50]

:[49]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [51]

:[50]
push.e 0

:[51]
bf [53]

:[52]
pushi.e 60
pop.v.i self.con
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[53]
push.v self.con
pushi.e 60
cmp.i.v EQ
bf [55]

:[54]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [56]

:[55]
push.e 0

:[56]
bf [end]

:[57]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 211
pop.v.i global.plot
push.v self.faucet
call.i instance_destroy(argc=1)
popz.v
pushi.e 133
conv.i.v
call.i instance_activate_object(argc=1)
popz.v
pushi.e 144
conv.i.v
call.i instance_activate_object(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]