.localvar 2 arguments
.localvar 15466 xpos 17088
.localvar 14550 ypos 17089
.localvar 34461 sweet_marker 17093
.localvar 34462 hg_marker 17094
.localvar 34463 kk_marker 17095
.localvar 32196 battle_end 17097

:[0]
pushi.e 80
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [2]

:[1]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.d 15.67
conv.d.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i audio_sound_set_track_position(argc=2)
popz.v

:[5]
push.v 82.x
push.v self.x
pushi.e 80
sub.i.v
cmp.v.v GT
bf [7]

:[6]
push.v self.con
pushi.e -1
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [15]

:[9]
push.v self.nisesweet
pushi.e -9
pushenv [11]

:[10]
push.v self.x
pushi.e 5
sub.i.v
pop.v.v self.x

:[11]
popenv [10]
push.v self.djtable
pushi.e -9
pushenv [13]

:[12]
push.v self.x
pushi.e 5
sub.i.v
pop.v.v self.x

:[13]
popenv [12]
push.v self.nisesweet
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_camerax(argc=0)
pushi.e 520
add.i.v
cmp.v.v LTE
bf [15]

:[14]
pushi.e 10
pop.v.i self.con

:[15]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [35]

:[16]
push.v self.nisesweet
pushi.e -9
pushenv [18]

:[17]
call.i gml_Script_camerax(argc=0)
pushi.e 520
add.i.v
pop.v.v self.x

:[18]
popenv [17]
push.v 1210.state
pushi.e 3
cmp.i.v EQ
bf [24]

:[19]
push.v self.floattimer
push.d 0.35
add.d.v
pop.v.v self.floattimer
pushi.e 30
push.v self.floattimer
call.i sin(argc=1)
add.v.i
pop.v.v self.desy
push.v self.nisesweet
pushi.e -9
pushenv [23]

:[20]
push.v self.y
push.v other.desy
cmp.v.v NEQ
bf [22]

:[21]
push.d 0.25
conv.d.v
push.v other.desy
push.v self.y
call.i lerp(argc=3)
pop.v.v self.y

:[22]
pushi.e 1775
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed

:[23]
popenv [20]
b [29]

:[24]
push.v self.floattimer
push.d 0.35
add.d.v
pop.v.v self.floattimer
push.v self.targy
push.v self.floattimer
call.i sin(argc=1)
add.v.v
pop.v.v self.desy
push.v self.nisesweet
pushi.e -9
pushenv [28]

:[25]
push.v self.y
push.v other.desy
cmp.v.v NEQ
bf [27]

:[26]
push.d 0.25
conv.d.v
push.v other.desy
push.v self.y
call.i lerp(argc=3)
pop.v.v self.y

:[27]
pushi.e 1779
pop.v.i self.sprite_index

:[28]
popenv [25]

:[29]
push.v self.nisesweet
pushi.e -9
push.v [stacktop]self.x
pushi.e 40
sub.i.v
pop.v.v local.xpos
push.v self.nisesweet
pushi.e -9
push.v [stacktop]self.y
pushi.e 64
add.i.v
pop.v.v local.ypos
push.v self.djtable
pushi.e -9
pushenv [31]

:[30]
pushloc.v local.xpos
pop.v.v self.x

:[31]
popenv [30]
push.v self.djtable
pushi.e -9
pushenv [33]

:[32]
pushloc.v local.ypos
pop.v.v self.y

:[33]
popenv [32]
push.v self.djtable
pushi.e -9
push.v [stacktop]self.x
pushi.e 2250
cmp.i.v GTE
bf [35]

:[34]
pushi.e 20
pop.v.i self.con

:[35]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [39]

:[36]
pushi.e 21
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facing
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
push.i 232289
setowner.e
push.v self.id
push.v self.cutscene_master
pushi.e -9
pushi.e 0
pop.v.v [array]self.save_object
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 5
pop.v.i self.sw
pushi.e 893
conv.i.v
push.v self.nisesweet
pushi.e -9
push.v [stacktop]self.y
push.v self.nisesweet
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.sw_actor
push.s "sweet"@34402
conv.s.v
push.v self.sw_actor
push.v self.sw
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 1779
push.v self.sw_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.sw
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 0
push.v self.nisesweet
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 6
pop.v.i self.hg
pushi.e 893
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 80
sub.i.v
pushi.e 2200
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.hg_actor
call.i gml_Script_cameray(argc=0)
pushi.e 800
sub.i.v
push.v self.hg_actor
pushi.e -9
pop.v.v [stacktop]self.y
push.s "hatguy"@34405
conv.s.v
push.v self.hg_actor
push.v self.hg
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 1759
push.v self.hg_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.hg
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 2200
push.v self.nisekk
pushi.e -9
pop.v.i [stacktop]self.x
call.i gml_Script_cameray(argc=0)
pushi.e 400
sub.i.v
push.v self.nisekk
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.nisekk
pushi.e -9
pushenv [38]

:[37]
push.i 95000
pop.v.i self.depth

:[38]
popenv [37]
pushi.e 499
conv.i.v
pushi.e 300
conv.i.v
pushbltn.v builtin.room_width
pushi.e 120
add.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.djtableb
push.i 500000
push.v self.djtableb
pushi.e -9
pop.v.i [stacktop]self.depth
push.d 0.25
push.v self.djtableb
pushi.e -9
pop.v.d [stacktop]self.image_speed

:[39]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [43]

:[40]
pushi.e 22
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
call.i gml_Script_c_shake(argc=0)
popz.v
push.v self.sw
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 40
conv.i.v
pushi.e 175
conv.i.v
pushi.e 2156
conv.i.v
call.i gml_Script_c_jump(argc=4)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 65
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 500
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 499
conv.i.v
push.s "sprite_index"@273
conv.s.v
push.v self.djtable
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 100
sub.i.v
push.v self.djtable
pushi.e -9
push.v [stacktop]self.y
push.s "y"@52
conv.s.v
push.v self.djtable
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 40
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1779
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.shortened
conv.v.b
bf [42]

:[41]
call.i gml_Script_cameray(argc=0)
pushi.e 180
sub.i.v
push.s "y"@52
conv.s.v
push.v self.nisekk
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_cameray(argc=0)
pushi.e 80
sub.i.v
push.s "y"@52
conv.s.v
push.v self.hg_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 99
pop.v.i self.con
pushi.e 0
pop.v.i self.tempcon
call.i gml_Script_c_waitcustom(argc=0)
popz.v
b [43]

:[42]
pushi.e 0
conv.i.v
push.s "music_guys_intro.ogg"@34407
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
push.s "bottom"@4636
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
call.i gml_Script_scr_miniface_init_sweet(argc=0)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_83_0"@34408
conv.s.v
push.s "\\m1		*D-dead end...!/%"@34409
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
call.i gml_Script_cameray(argc=0)
pushi.e 180
sub.i.v
push.s "y"@52
conv.s.v
push.v self.nisekk
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_cameray(argc=0)
pushi.e 80
sub.i.v
push.s "y"@52
conv.s.v
push.v self.hg_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 182
conv.i.v
pushi.e 2080
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 16
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 220
conv.i.v
pushi.e 2105
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 16
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 130
conv.i.v
pushi.e 2039
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 16
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.sw
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 4
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_104_0"@34410
conv.s.v
push.s "Oh, like \"suite?\""@34411
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "bottom"@4636
conv.s.v
push.s "left"@5994
conv.s.v
pushi.e 19
conv.i.v
push.s "ralsei"@72
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_105_0"@34412
conv.s.v
push.s "Oh, like... sweets?"@34413
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "bottom"@4636
conv.s.v
push.s "right"@4637
conv.s.v
pushi.e 11
conv.i.v
push.s "susie"@70
conv.s.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_108_0"@34414
conv.s.v
push.s "\\E5* Alright^1, what's the deal^1, twerp!/"@34415
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_110_0"@34416
conv.s.v
push.s "\\m1		*Who's a twerp!? The name's&	Sweet!\\f0\\f1/%"@34417
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.sw
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1775
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_118_0"@34418
conv.s.v
push.s "\\m1		*Don't tell me you haven't&	heard of the Sweet Cap'n&	Cakes?!?/"@34419
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "J"@9484
conv.s.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_120_0"@34420
conv.s.v
push.s "\\EJ* Um^1, doesn't ring a bell.../%"@34421
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.sw
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1778
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 52
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_129_0"@34422
conv.s.v
push.s "\\m1		*G-Guess our act's still a bit&	underground.../%"@34423
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.sw
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1775
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_137_0"@34424
conv.s.v
push.s "\\m1		*Sweet Cap'n Cakes^1! Not only&	are we Cyber Field's BEST&	musical trio.../"@34425
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_138_0"@34426
conv.s.v
push.s "\\m1		*We're also the last resistance&	against the big bad Queen and&	all her crew!/"@34427
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_139_0"@34428
conv.s.v
push.s "\\m1		*And that starts with resisting&	YOU!/%"@34429
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1779
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 45
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_151_0"@34430
conv.s.v
push.s "\\EH* What!? We're fighting Queen^1, too!/"@34431
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_153_0"@34432
conv.s.v
push.s "\\m1		*Nuh-uh-uh^1! Cap'n saw you help&	her kidnap some girl!/"@34433
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_154_0"@34434
conv.s.v
push.s "\\m1		*Hey^1! Hey^1, Cap!/%"@34435
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.sw
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 10
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.hg
call.i gml_Script_c_sel(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 187
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 110
conv.i.v
pushi.e 2200
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
call.i gml_Script_c_shake(argc=0)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autofacing(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 6
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autofacing(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 6
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autofacing(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 6
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_170_0"@34436
conv.s.v
push.s "\\m3		*We won't let anyone lay a&	finger on madamoizels.../%"@34437
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.sw
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 500
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 52
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_179_0"@34438
conv.s.v
push.s "\\m3		*Except us^2!&\\m1	That's not the point^1, Cap'n!!/%"@34439
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.hg
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_186_0"@34440
conv.s.v
push.s "\\m3		*It's like half the point. 60`%?&	55..^2.&\\m1	We're rebels^1, not players!/%"@34441
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.hg
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_193_0"@34442
conv.s.v
push.s "\\m3		*We're rebels that play^2.&\\m1	We don't play!^1! We don't&	play!!/"@34443
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_194_0"@34444
conv.s.v
push.s "\\m3		*That's it!^1! K_K!!^1! Get over&	here!!/%"@34445
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.sw
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1779
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 4
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.hg
call.i gml_Script_c_sel(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 4
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.v self.sw
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.hg
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 175
conv.i.v
push.v self.nisekk
pushi.e -9
push.v [stacktop]self.y
push.s "y"@52
conv.s.v
push.v self.nisekk
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
call.i gml_Script_c_shake(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_223_0"@34446
conv.s.v
push.s "\\m3		*K_K^1, are we players!^2?&\\m2	.../"@34447
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_224_0"@34448
conv.s.v
push.s "\\m2		*I'm a CD player./%"@34449
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "pause"@9836
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "music_guys.ogg"@34450
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
push.v self.sw
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1775
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.hg
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1757
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "dancing"@26359
conv.s.v
push.v self.nisekk
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
push.s "..."@2873
conv.s.v
call.i gml_Script_c_emote(argc=2)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
push.s "..."@2873
conv.s.v
call.i gml_Script_c_emote(argc=2)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 80
conv.i.v
pushi.e 1
conv.i.v
push.s "l"@6707
conv.s.v
pushi.e 16
conv.i.v
call.i gml_Script_c_delaywalk(argc=4)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 80
conv.i.v
pushi.e 1
conv.i.v
push.s "l"@6707
conv.s.v
pushi.e 16
conv.i.v
call.i gml_Script_c_delaywalk(argc=4)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 80
conv.i.v
pushi.e 1
conv.i.v
push.s "l"@6707
conv.s.v
pushi.e 16
conv.i.v
call.i gml_Script_c_delaywalk(argc=4)
popz.v
pushi.e 80
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.sw
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 1778
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_279_0"@34451
conv.s.v
push.s "\\m1		*Wait^1! They're getting away!/%"@34452
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.sw
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1779
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.hg
call.i gml_Script_c_sel(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 1759
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_301_0"@34453
conv.s.v
push.s "\\m3		*Sweet^1, chill. There'll be&	other bad guys^2!&\\m1	No^1, this is our chance!/"@34454
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_302_0"@34455
conv.s.v
push.s "\\m1		*Are you ready!? Let's fight!!/%"@34456
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 90
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.sw
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
push.v self.hg
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_336_0"@34457
conv.s.v
push.s "\\m3		*..^1. K_K.&\\m2	Yeah?/"@34458
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_337_0"@34459
conv.s.v
push.s "\\m1		*Play some battle music^2!&\\m2	OK^2!/%"@34460
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.sw
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
push.v self.hg
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
push.s "stop"@9833
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
push.s "free_all"@9834
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "dancing"@26359
conv.s.v
push.v self.nisekk
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[43]
push.v self.tempcon
pushi.e 0
cmp.i.v EQ
bf [45]

:[44]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [46]

:[45]
push.e 0

:[46]
bf [48]

:[47]
pushi.e 1
pop.v.i self.tempcon
pushi.e 23
pop.v.i self.con

:[48]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [50]

:[49]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [51]

:[50]
push.e 0

:[51]
bf [59]

:[52]
pushi.e 893
pushenv [54]

:[53]
pushi.e 0
pop.v.i self.visible

:[54]
popenv [53]
pushi.e 29
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e -5
pushi.e 27
push.v [array]self.tempflag
pushi.e 0
cmp.i.v EQ
bf [56]

:[55]
push.i 231375
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 27
pop.v.v [array]self.tempflag

:[56]
push.v self.sw_actor
pushi.e -9
push.v [stacktop]self.sprite_index
push.v self.sw_actor
pushi.e -9
push.v [stacktop]self.y
push.v self.sw_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v local.sweet_marker
push.v self.hg_actor
pushi.e -9
push.v [stacktop]self.sprite_index
push.v self.hg_actor
pushi.e -9
push.v [stacktop]self.y
push.v self.hg_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v local.hg_marker
pushi.e 129
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v local.kk_marker
push.v self.nisekk
pushi.e -9
push.v [stacktop]self.sprite_index
pushbltn.v builtin.room_height
pushi.e 176
sub.i.v
pushi.e 109
sub.i.v
pushbltn.v builtin.room_width
pushi.e 442
sub.i.v
pushi.e 92
add.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.kk_marker_fake
pushi.e 0
push.v self.nisekk
pushi.e -9
pop.v.b [stacktop]self.visible
pushi.e 552
pop.v.i self.encounterflag
push.i 231204
setowner.e
push.v self.encounterflag
pushi.e -5
pushi.e 54
pop.v.v [array]self.flag
pushi.e 1
pop.v.i 82.cutscene
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.x
pop.v.v 82.x
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
pop.v.v 82.y
push.i 133617
setowner.e
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
pop.v.v [stacktop]self.x
push.i 133618
setowner.e
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
pop.v.v [stacktop]self.y
push.i 133617
setowner.e
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -9
pop.v.v [stacktop]self.x
push.i 133618
setowner.e
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -9
pop.v.v [stacktop]self.y
push.i 231204
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.flag
push.i 232336
setowner.e
pushi.e -1
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.batmusic
push.s "spamton_neo_mix_ex_wip.ogg"@14431
conv.s.v
call.i gml_Script_snd_init(argc=1)
popz.v
pushloc.v local.hg_marker
pushloc.v local.kk_marker
pushloc.v local.sweet_marker
pushi.e 1
conv.i.v
pushi.e 62
conv.i.v
call.i gml_Script_scr_battle(argc=5)
popz.v
push.v self.kk_marker_fake
pushi.e -9
pushenv [58]

:[57]
pushi.e 20
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 110
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 520
add.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v
pushi.e 1096
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.__doom
push.v self.id
push.v self.__doom
pushi.e -9
pop.v.v [stacktop]self.target
push.i 133633
setowner.e
pushi.e 25
conv.i.v
push.v self.__doom
pushi.e -9
pushi.e 0
pop.v.v [array]self.alarm

:[58]
popenv [57]

:[59]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [61]

:[60]
pushi.e 357
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [62]

:[61]
push.e 0

:[62]
bf [68]

:[63]
pushi.e 0
pop.v.b local.battle_end
pushi.e 357
pushenv [66]

:[64]
push.v self.intro
pushi.e 2
cmp.i.v EQ
bf [66]

:[65]
pushi.e 1
pop.v.b local.battle_end

:[66]
popenv [64]
pushloc.v local.battle_end
conv.v.b
bf [68]

:[67]
pushi.e 32
pop.v.i self.con
pushi.e 1
push.v self.nisekk
pushi.e -9
pop.v.b [stacktop]self.visible
pushi.e 25
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.batmusic
call.i gml_Script_snd_volume(argc=3)
popz.v

:[68]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [91]

:[69]
pushi.e 34
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
push.v 372.x
push.v self.kr_actor
pushi.e -9
pop.v.v [stacktop]self.x
push.v 372.y
push.v self.kr_actor
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 653
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v 373.x
push.v self.su_actor
pushi.e -9
pop.v.v [stacktop]self.x
push.v 373.y
push.v self.su_actor
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 824
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v 374.x
push.v self.ra_actor
pushi.e -9
pop.v.v [stacktop]self.x
push.v 374.y
push.v self.ra_actor
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 795
push.v self.ra_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v 710.x
push.v self.sw_actor
pushi.e -9
pop.v.v [stacktop]self.x
push.v 710.y
push.v self.sw_actor
pushi.e -9
pop.v.v [stacktop]self.y
push.v 710.sprite_index
push.v self.sw_actor
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v 712.x
push.v self.hg_actor
pushi.e -9
pop.v.v [stacktop]self.x
push.v 712.y
push.v self.hg_actor
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 1759
push.v self.hg_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v 714.x
push.v self.nisekk
pushi.e -9
pop.v.v [stacktop]self.x
push.v 714.y
push.v self.nisekk
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 1
push.v self.nisekk
pushi.e -9
pop.v.i [stacktop]self.dancing
push.v self.nisekk
pushi.e -9
pushenv [71]

:[70]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[71]
popenv [70]
pushi.e 893
pushenv [73]

:[72]
pushi.e 1
pop.v.i self.visible

:[73]
popenv [72]
pushi.e 82
pushenv [75]

:[74]
pushi.e 0
pop.v.i self.visible

:[75]
popenv [74]
pushi.e 276
pushenv [77]

:[76]
pushi.e 0
pop.v.i self.visible

:[77]
popenv [76]
pushi.e -5
pushi.e 0
push.v [array]self.batmusic
call.i gml_Script_snd_free(argc=1)
popz.v
pushi.e 392
pushenv [79]

:[78]
call.i instance_destroy(argc=0)
popz.v

:[79]
popenv [78]
pushi.e 360
pushenv [81]

:[80]
call.i instance_destroy(argc=0)
popz.v

:[81]
popenv [80]
pushi.e 371
pushenv [83]

:[82]
call.i instance_destroy(argc=0)
popz.v

:[83]
popenv [82]
pushi.e 129
pushenv [85]

:[84]
call.i instance_destroy(argc=0)
popz.v

:[85]
popenv [84]
pushi.e 868
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [89]

:[86]
pushi.e 868
pushenv [88]

:[87]
pushi.e 1
pop.v.i self.destroy

:[88]
popenv [87]

:[89]
pushi.e 357
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [91]

:[90]
pushi.e 357
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[91]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [93]

:[92]
pushi.e 357
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [94]

:[93]
push.e 0

:[94]
bf [102]

:[95]
pushi.e 35
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 893
pushenv [97]

:[96]
pushi.e 1
pop.v.i self.visible

:[97]
popenv [96]
pushi.e 82
pushenv [99]

:[98]
pushi.e 0
pop.v.i self.visible

:[99]
popenv [98]
pushi.e 276
pushenv [101]

:[100]
pushi.e 0
pop.v.i self.visible

:[101]
popenv [100]
pushi.e 0
conv.i.v
push.s "music_guys_intro.ogg"@34407
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v

:[102]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [108]

:[103]
pushi.e 49
pop.v.i self.con
pushi.e 357
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [105]

:[104]
pushi.e 0
pop.v.i global.fighting

:[105]
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v self.djtableb
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [107]

:[106]
pushi.e 499
conv.i.v
pushi.e 300
conv.i.v
pushbltn.v builtin.room_width
pushi.e 120
add.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.djtableb
push.i 500000
push.v self.djtableb
pushi.e -9
pop.v.i [stacktop]self.depth
push.d 0.25
push.v self.djtableb
pushi.e -9
pop.v.d [stacktop]self.image_speed

:[107]
push.i 232289
setowner.e
push.v self.nisekk
push.v self.cutscene_master
pushi.e -9
pushi.e 1
pop.v.v [array]self.save_object
push.v self.djtableb
push.v self.cutscene_master
pushi.e -9
pushi.e 2
pop.v.v [array]self.save_object
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 116
conv.i.v
pushi.e 1960
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 16
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 145
conv.i.v
pushi.e 2003
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 16
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 210
conv.i.v
pushi.e 1961
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 16
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.sw
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 85
conv.i.v
pushi.e 2145
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.hg
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 221
conv.i.v
pushi.e 2262
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 15
conv.i.v
pushi.e 167
conv.i.v
push.v self.nisekk
pushi.e -9
push.v [stacktop]self.y
push.s "y"@52
conv.s.v
push.v self.nisekk
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 15
conv.i.v
pushi.e 2120
conv.i.v
push.v self.nisekk
pushi.e -9
push.v [stacktop]self.x
push.s "x"@50
conv.s.v
push.v self.nisekk
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
call.i gml_Script_scr_miniface_init_sweet(argc=0)
popz.v
push.s "bottom"@4636
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "sweet"@34402
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_538_0"@34465
conv.s.v
push.s "\\m1		*Feel the beat^2!&\\m3	Watch my moves^2!&\\m2	Dance^1, dance!!/"@34466
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "2"@4175
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_540_0"@34467
conv.s.v
push.s "\\E2* Hey^1, losers!^1! Wrap it up!^1! Battle's over!!/%"@34468
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 230
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 58
conv.i.v
pushi.e 8
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
call.i gml_Script_c_wait_talk(argc=0)
popz.v
pushi.e -58
conv.i.v
pushi.e -8
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "dancing"@26359
conv.s.v
push.v self.nisekk
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.sw
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.hg
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.sw
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1779
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.hg
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1759
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_566_0"@34469
conv.s.v
push.s "WE ARE the good side!!!"@34470
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "bottom"@4636
conv.s.v
push.s "left"@5994
conv.s.v
pushi.e 17
conv.i.v
push.s "susie"@70
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_567_0"@34471
conv.s.v
push.s "Just go with it, Susie..."@34472
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "bottom"@4636
conv.s.v
pushi.e 300
conv.i.v
pushi.e 26
conv.i.v
push.s "ralsei"@72
conv.s.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.s "k_k"@5236
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_570_0"@34473
conv.s.v
push.s "\\m2		*Over^2?&\\m3	In other-type words...&\\m1	We lost!?/"@34474
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_571_0"@34475
conv.s.v
push.s "\\m1		*..^2.&\\m3	..^2.&\\m2	.../"@34476
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_572_0"@34477
conv.s.v
push.s "\\m2		*Does that mean we can be&	friends^2?&\\m1	K_K!^1! No!!/"@34478
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_573_0"@34479
conv.s.v
push.s "\\m3		*Fighting's not really my style&	anyways..^2.&\\m1	Yeah^1! Because you're a coward!/"@34480
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_574_0"@34481
conv.s.v
push.s "\\m1		*..^1. I mean^1, it was fun&	dancing^1, but..^2.&\\m2	Sweet. Don't worry./"@34482
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_575_0"@34483
conv.s.v
push.s "\\m2		*I think our dancing beat them^2.&\\m1	Beat them...^2?&\\m3	Yeah^1, all mercy-like./"@34484
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_576_0"@34485
conv.s.v
push.s "\\m3		*See^1, when we danced with them^1,&	it convinced them we're cool^2.&\\m1	Now they're on our side?/"@34486
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_577_0"@34487
conv.s.v
push.s "\\m2		*Yes./"@34488
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_578_0"@34489
conv.s.v
push.s "\\m1		*Hey!^1! You three!^1! Welcome to&	the good side!!\\f0\\f1/"@34490
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_579_0"@34491
conv.s.v
push.s "\\m3		*Let's ronday-voo at our Junk&	Shop..^2./"@34492
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_580_0"@34493
conv.s.v
push.s "\\m1		*We jammed the door shut^1, but&	we'll kick it open!/"@34494
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_cyber01_slash_Step_0_gml_581_0"@34495
conv.s.v
push.s "\\m3		*Alright everyone^1, let's go!/%"@34496
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.v self.sw
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 500
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 52
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
push.v self.sw
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1779
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
push.v self.hg
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
push.v self.sw
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 1775
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.hg
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
call.i gml_Script_c_wait_talk(argc=0)
popz.v
pushi.e 15
conv.i.v
pushi.e 2216
conv.i.v
push.v self.djtableb
pushi.e -9
push.v [stacktop]self.x
push.s "x"@50
conv.s.v
push.v self.djtableb
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 15
conv.i.v
pushi.e 260
conv.i.v
push.v self.djtableb
pushi.e -9
push.v [stacktop]self.y
push.s "y"@52
conv.s.v
push.v self.djtableb
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.sw
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 188
conv.i.v
pushi.e 2235
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.hg
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 197
conv.i.v
pushi.e 2274
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 10000
conv.i.v
push.s "depth"@277
conv.s.v
push.v self.nisekk
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 15
conv.i.v
pushi.e 2226
conv.i.v
pushi.e 2120
conv.i.v
push.s "x"@50
conv.s.v
push.v self.nisekk
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 15
conv.i.v
pushi.e 71
conv.i.v
pushi.e 167
conv.i.v
push.s "y"@52
conv.s.v
push.v self.nisekk
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 45
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "stop"@9833
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "music_guys.ogg"@34450
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 60
conv.i.v
pushi.e -10
conv.i.v
pushi.e 0
conv.i.v
push.s "vspeed"@14406
conv.s.v
push.v self.sw_actor
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 60
conv.i.v
pushi.e -10
conv.i.v
pushi.e 0
conv.i.v
push.s "vspeed"@14406
conv.s.v
push.v self.hg_actor
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 60
conv.i.v
pushi.e -10
conv.i.v
pushi.e 0
conv.i.v
push.s "vspeed"@14406
conv.s.v
push.v self.nisekk
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 60
conv.i.v
pushi.e -10
conv.i.v
pushi.e 0
conv.i.v
push.s "vspeed"@14406
conv.s.v
push.v self.djtableb
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 90
conv.i.v
pushi.e 0
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 102
conv.i.v
pushi.e 2005
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "l"@6707
conv.s.v
pushi.e 31
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 107
conv.i.v
pushi.e 2057
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "l"@6707
conv.s.v
pushi.e 31
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 30
conv.i.v
push.v self.kr_actor
call.i gml_Script_c_panobj(argc=2)
popz.v
pushi.e 35
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
push.s "free_all"@9834
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[108]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [110]

:[109]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [111]

:[110]
push.e 0

:[111]
bf [end]

:[112]
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 52
pop.v.i global.encounterno
pushi.e 0
pop.v.i global.facing
pushi.e 60
pop.v.i global.plot
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 34
pop.v.v [array]self.flag

:[end]