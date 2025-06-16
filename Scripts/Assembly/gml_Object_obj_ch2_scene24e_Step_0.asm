.localvar 2 arguments
.localvar 32533 savepoint 16495

:[0]
push.v self.con
pushi.e -1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 966
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [3]

:[2]
push.e 0

:[3]
bf [6]

:[4]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e -5
pushi.e 331
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
pushi.e 2533
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.blackall
pushi.e 999
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 999
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 100
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_blend

:[6]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [17]

:[7]
pushi.e 2
pop.v.i self.con
pushi.e -5
pushi.e 331
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [15]

:[8]
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_is_playing(argc=1)
conv.v.b
not.b
bf [10]

:[9]
push.i 231459
setowner.e
push.s "wind_highplace.ogg"@19759
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong

:[10]
pushi.e 82
pushenv [12]

:[11]
pushi.e 245
pop.v.i self.x
pushi.e 750
pop.v.i self.y
pushi.e 0
pop.v.i self.visible

:[12]
popenv [11]
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.v 82.y
pushi.e 6
sub.i.v
push.v 82.x
pushi.e 50
add.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
push.v 82.y
pushi.e 6
sub.i.v
push.v 82.x
pushi.e 120
add.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
pushi.e 276
pushenv [14]

:[13]
pushi.e 0
pop.v.i self.visible

:[14]
popenv [13]
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 743
conv.i.v
pushi.e 315
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
b [16]

:[15]
pushi.e 2
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
push.v 82.y
pushi.e 6
sub.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 100
sub.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v

:[16]
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 534
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
call.i gml_Script_cameray(argc=0)
pushi.e 100
sub.i.v
pushi.e 290
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v

:[17]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [30]

:[18]
pushi.e 0
pop.v.i global.facing
push.s "top"@6226
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
pushi.e 10
pop.v.i self.con
pushi.e -5
pushi.e 331
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.blackall
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene24e_slash_Step_0_gml_75_0"@32534
conv.s.v
push.s "\\EI* So that's why.../"@32535
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "H"@5303
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene24e_slash_Step_0_gml_77_0"@32536
conv.s.v
push.s "\\EH* Geronimo!!/%"@32537
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
b [21]

:[20]
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene24e_slash_Step_0_gml_82_0"@32538
conv.s.v
push.s "\\EH* Geronimo!!/%"@32537
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[21]
pushi.e 159
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_depth(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 15
conv.i.v
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 2
sub.i.v
pushi.e 290
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 548
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
pushi.e 52
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 52
add.i.v
pushi.e 282
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 41
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 30
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
pushi.e 5
conv.i.v
pushi.e 3
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 819
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
push.s "top"@6226
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene24e_slash_Step_0_gml_127_0"@32539
conv.s.v
push.s "\\E2* Heh^1, miss me?/%"@32540
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 228
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene24e_slash_Step_0_gml_135_0"@32541
conv.s.v
push.s "\\EN* Of course not!!/%"@32542
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 229
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene24e_slash_Step_0_gml_142_0"@32543
conv.s.v
push.s "\\EH* (Just kidding^1! That was sarcasm^1! I missed you!!)/%"@32544
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene24e_slash_Step_0_gml_152_0"@32545
conv.s.v
push.s "\\EK* Man^1, we gotta work on your delivery./%"@32546
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 160
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 770
cmp.i.v GT
bf [23]

:[22]
pushi.e 548
conv.i.v
pushi.e 534
conv.i.v
pushi.e 17
conv.i.v
pushi.e 12
conv.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 55
sub.i.v
pushi.e 325
conv.i.v
call.i gml_Script_c_jump_sprite(argc=6)
popz.v
b [24]

:[23]
pushi.e 548
conv.i.v
pushi.e 534
conv.i.v
pushi.e 17
conv.i.v
pushi.e 12
conv.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 25
add.i.v
pushi.e 235
conv.i.v
call.i gml_Script_c_jump_sprite(argc=6)
popz.v

:[24]
pushi.e 1
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
pushi.e 25
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 770
cmp.i.v GT
bf [26]

:[25]
pushi.e 30
conv.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 55
sub.i.v
pushi.e 176
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v

:[26]
pushi.e 17
conv.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 15
sub.i.v
pushi.e 176
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 18
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 5
add.i.v
pushi.e 314
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 770
cmp.i.v GT
bf [28]

:[27]
pushi.e 6
conv.i.v
pushi.e 6
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 33
conv.i.v
pushi.e 6
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 8
conv.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 7
sub.i.v
pushi.e 120
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
b [29]

:[28]
pushi.e 4
conv.i.v
pushi.e 6
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 33
conv.i.v
pushi.e 6
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 8
conv.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 7
sub.i.v
pushi.e 120
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v

:[29]
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene24e_slash_Step_0_gml_185_0"@32547
conv.s.v
push.s "\\E2* Anyway^1, let's go!/%"@32548
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v

:[30]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [32]

:[31]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [33]

:[32]
push.e 0

:[33]
bf [47]

:[34]
pushi.e 11
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 276
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [38]

:[35]
pushi.e 276
pushenv [37]

:[36]
call.i instance_destroy(argc=0)
popz.v

:[37]
popenv [36]

:[38]
pushi.e 2
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
push.v self.su_actor
pushi.e -4
cmp.i.v NEQ
bf [40]

:[39]
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 6
sub.i.v
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v

:[40]
push.v self.ra_actor
pushi.e -4
cmp.i.v NEQ
bf [42]

:[41]
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 6
sub.i.v
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v

:[42]
pushi.e 276
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [46]

:[43]
pushi.e 276
pushenv [45]

:[44]
pushi.e 0
pop.v.i self.visible

:[45]
popenv [44]

:[46]
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[47]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [49]

:[48]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [50]

:[49]
push.e 0

:[50]
bf [end]

:[51]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 160
pop.v.i global.plot
pushi.e 99
pop.v.i self.con
call.i gml_Script_scr_tempsave(argc=0)
popz.v
pushi.e 127
conv.i.v
pushi.e 720
conv.i.v
pushi.e 460
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.savepoint
pushloc.v local.savepoint
pushi.e -9
pushenv [53]

:[52]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[53]
popenv [52]
call.i instance_destroy(argc=0)
popz.v

:[end]