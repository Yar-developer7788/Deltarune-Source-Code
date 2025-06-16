.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.con

:[2]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [8]

:[3]
push.d 1.5
pop.v.d self.con
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
push.i 232289
setowner.e
push.v self.id
push.v self.cutscene_master
pushi.e -9
pushi.e 0
pop.v.v [array]self.save_object
pushi.e 82
pushenv [5]

:[4]
pushi.e 0
pop.v.i self.visible

:[5]
popenv [4]
pushi.e 276
pushenv [7]

:[6]
pushi.e 0
pop.v.i self.visible

:[7]
popenv [6]
pushi.e 0
pop.v.i self.kr
pushi.e 893
conv.i.v
pushi.e 225
conv.i.v
pushi.e 243
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.kr_actor
push.s "kris"@68
conv.s.v
push.v self.kr_actor
push.v self.kr
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 651
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
pop.v.i self.su
pushi.e 893
conv.i.v
pushi.e 266
conv.i.v
pushi.e 440
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.su_actor
push.s "susie"@70
conv.s.v
push.v self.su_actor
push.v self.su
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 822
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 3
pop.v.i self.la
pushi.e 893
conv.i.v
pushi.e 288
conv.i.v
pushi.e 350
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.la_actor
push.s "lancer"@4751
conv.s.v
push.v self.la_actor
push.v self.la
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 1294
push.v self.la_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 1308
push.v self.la_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_palette
pushi.e 4
pop.v.i self.be
pushi.e 893
conv.i.v
pushi.e 200
conv.i.v
pushi.e 804
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.be_actor
push.s "berdly"@4870
conv.s.v
push.v self.be_actor
push.v self.be
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 669
push.v self.be_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 675
push.v self.be_actor
pushi.e -9
pop.v.i [stacktop]self.rsprite
pushi.e 671
push.v self.be_actor
pushi.e -9
pop.v.i [stacktop]self.lsprite
pushi.e 669
push.v self.be_actor
pushi.e -9
pop.v.i [stacktop]self.dsprite

:[8]
push.v self.con
push.d 1.5
cmp.d.v EQ
bf [10]

:[9]
pushi.e 2
pop.v.i self.con
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 35
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 60
conv.i.v
pushi.e 1
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 31
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.s "top"@6226
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene18_slash_Step_0_gml_57_0"@31356
conv.s.v
push.s "\\E7* Kris^1, hey!!!/"@31357
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene18_slash_Step_0_gml_58_0"@31358
conv.s.v
push.s "\\E9* Man..^1. Lancer...^1! You're the best^1, dude!!/%"@31359
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.la
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 178
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 2
conv.i.v
pushi.e -4
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 160
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 16
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 217
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 32
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.la
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_visible(argc=1)
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
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene18_slash_Step_0_gml_83_0"@31360
conv.s.v
push.s "\\E2* C'mon^1, Noelle and Ralsei are waiting!!/%"@31361
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 15
conv.i.v
pushi.e 8
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene18_slash_Step_0_gml_89_0"@31362
conv.s.v
push.s "\\E2* Yes...^1! Let's put the pedal on the medal!!/%"@31363
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.la
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1296
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene18_slash_Step_0_gml_97_0"@31364
conv.s.v
push.s "\\EC* Cough..^1. cough*/%"@31365
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[10]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [12]

:[11]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [19]

:[14]
push.v self.fadetimer
push.e 1
add.i.v
pop.v.v self.fadetimer
push.v self.fadetimer
pushi.e 60
cmp.i.v LT
bf [16]

:[15]
push.v self.lancerfade
push.d 0.1
add.d.v
pop.v.v self.lancerfade
pushi.e 2
push.v self.lancerfade
mul.v.i
pushi.e 3
add.i.v
push.d 3.141592653589793
mul.d.v
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 1
add.i.v
pushi.e 2
conv.i.d
div.d.v
push.v self.la_actor
pushi.e -9
pop.v.v [stacktop]self.current_pal
b [19]

:[16]
push.v self.la_actor
pushi.e -9
push.v [stacktop]self.current_pal
pushi.e 1
cmp.i.v NEQ
bf [18]

:[17]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.la_actor
pushi.e -9
push.v [stacktop]self.current_pal
push.d 0.1
add.d.v
call.i clamp(argc=3)
push.v self.la_actor
pushi.e -9
pop.v.v [stacktop]self.current_pal
b [19]

:[18]
pushi.e 4
pop.v.i self.con

:[19]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [21]

:[20]
pushi.e 5
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v

:[21]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [23]

:[22]
push.v self.customcon
pushi.e 0
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
pushi.e 6
pop.v.i self.con
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susieunhappy"@10172
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene18_slash_Step_0_gml_140_0"@31366
conv.s.v
push.s "\\E6* ...?/"@31367
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene18_slash_Step_0_gml_141_0"@31368
conv.s.v
push.s "\\EK* Hey^1, Lancer^1, you ok^1, dude?/"@31369
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "3"@2741
conv.s.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene18_slash_Step_0_gml_143_0"@31370
conv.s.v
push.s "\\E3* I..^1. I'm fine^1! Just..^1. very.../"@31371
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene18_slash_Step_0_gml_144_0"@31372
conv.s.v
push.s "\\E7* Cold.../%"@31373
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.la
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 179
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 34
conv.i.v
pushi.e -5
conv.i.v
push.v self.la_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 65
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 996
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=2)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene18_slash_Step_0_gml_166_0"@31374
conv.s.v
push.s "\\EZ* H..^1. hey^1, what the hell!?/"@31375
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 11
conv.i.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene18_slash_Step_0_gml_168_0"@31376
conv.s.v
push.s "\\EB* .../"@3678
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "Z"@9495
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene18_slash_Step_0_gml_170_0"@31377
conv.s.v
push.s "\\EZ* Hey^1, are you OK^1, dude...? Here^1, lemme heal you...!/%"@31378
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "susieunhappy"@10172
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 181
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 12
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 50
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "susie_heal"@31351
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[26]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [28]

:[27]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
pushi.e 858
conv.i.v
push.v self.la_actor
pushi.e -9
push.v [stacktop]self.y
push.v self.la_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.healanim
push.v self.la_actor
pushi.e -9
push.v [stacktop]self.id
push.v self.healanim
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 7
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v

:[31]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [33]

:[32]
pushi.e 8
pop.v.i self.con
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
pushi.e -12
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
pushi.e 14
conv.i.v
pushi.e 8
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene18_slash_Step_0_gml_213_0"@31379
conv.s.v
push.s "\\E7* ..^1. th-thanks^1, Susie..^1. but.../%"@31380
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene18_slash_Step_0_gml_219_0"@31381
conv.s.v
push.s "\\EC* D..^1. darn^1, it's not strong enough^1, huh.../%"@31382
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
push.s "susieunhappy"@10172
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene18_slash_Step_0_gml_226_0"@31383
conv.s.v
push.s "\\EN* Quick^1, Kris^1, let's find Ralsei^1! Maybe he can heal him!/%"@31384
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 174
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e -10
conv.i.v
pushi.e -5
conv.i.v
push.v self.su_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
push.v self.la
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 70
conv.i.v
pushi.e 8
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 80
conv.i.v
pushi.e 8
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.s "l"@6707
conv.s.v
pushi.e 81
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
pushi.e 80
conv.i.v
pushi.e 0
conv.i.v
pushi.e 8
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
pushi.e 80
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 176
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[33]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [35]

:[34]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [36]

:[35]
push.e 0

:[36]
bf [38]

:[37]
pushi.e 9
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e 1
conv.b.v
push.s "berdly_door_open"@31354
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 64
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v

:[38]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [40]

:[39]
pushi.e 50
pop.v.i self.con
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 8
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "berdly_door_close"@31355
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 63
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene18_slash_Step_0_gml_289_0"@31385
conv.s.v
push.s "\\E3* Wait!!^1! WAIT!!!/"@31386
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene18_slash_Step_0_gml_290_0"@31387
conv.s.v
push.s "\\E5* Y-you two aren't going to leave without ME^1, are you!?/"@31388
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 1
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene18_slash_Step_0_gml_292_0"@31389
conv.s.v
push.s "\\E1* Uhhh..^1. yeah we are./"@31390
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 3
conv.i.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene18_slash_Step_0_gml_294_0"@31391
conv.s.v
push.s "\\E3* But Noelle - my damsel in distress - she must be.../%"@31392
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 682
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "obj_ch2_scene18_slash_Step_0_gml_295_0"@31393
conv.s.v
push.s "\\EH* ..^1. in distress^1! And if I cannot help her^1, then...!/"@31394
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 17
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene18_slash_Step_0_gml_297_0"@31395
conv.s.v
push.s "\\EH* Okay FINE you can come if you shut up./%"@31396
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 174
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 70
conv.i.v
pushi.e 8
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 70
conv.i.v
pushi.e 8
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 30
conv.i.v
push.v self.kr_actor
call.i gml_Script_c_panobj(argc=2)
popz.v
pushi.e 70
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[40]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [43]

:[41]
pushi.e 898
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [43]

:[42]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 101
pop.v.i global.plot
push.v self.berdlydoor
call.i instance_destroy(argc=1)
popz.v
pushi.e -1
pop.v.i self.con

:[43]
push.v self.susie_heal
conv.v.b
bf [49]

:[44]
push.v self.heal_timer
push.e 1
add.i.v
pop.v.v self.heal_timer
push.v self.heal_beam
pushi.e -1
cmp.i.v EQ
bf [46]

:[45]
pushi.e 182
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 180
conv.i.v
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 30
add.i.v
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e 20
sub.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.heal_beam
push.d 0.25
push.v self.heal_beam
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e -2
push.v self.heal_beam
pushi.e -9
pop.v.i [stacktop]self.image_xscale

:[46]
push.v self.heal_beam
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e 8
sub.i.v
pop.i.v [stacktop]self.x
push.v self.heal_beam
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 1
add.i.v
pop.i.v [stacktop]self.y
push.v self.heal_beam
pushi.e -9
push.v [stacktop]self.x
push.v self.la_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e 80
add.i.v
cmp.v.v LTE
bf [49]

:[47]
push.v self.heal_beam
pushi.e -9
dup.i 4
push.v [stacktop]self.image_alpha
push.d 0.25
sub.d.v
pop.i.v [stacktop]self.image_alpha
push.v self.heal_beam
pushi.e -9
push.v [stacktop]self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [49]

:[48]
pushi.e 0
pop.v.b self.susie_heal
push.v self.heal_beam
call.i instance_destroy(argc=1)
popz.v

:[49]
push.v self.berdly_door_open
conv.v.b
bf [58]

:[50]
pushi.e 0
pop.v.b self.berdly_door_open
pushi.e 336
pushenv [57]

:[51]
push.v self.x
pushi.e 770
cmp.i.v GT
bf [54]

:[52]
push.v self.x
pushi.e 800
cmp.i.v LT
bf [54]

:[53]
push.v self.y
pushi.e 150
cmp.i.v GT
b [55]

:[54]
push.e 0

:[55]
bf [57]

:[56]
pushi.e 1
pop.v.i self.door_type

:[57]
popenv [51]

:[58]
push.v self.berdly_door_close
conv.v.b
bf [end]

:[59]
pushi.e 0
pop.v.b self.berdly_door_close
pushi.e 336
pushenv [66]

:[60]
push.v self.x
pushi.e 770
cmp.i.v GT
bf [63]

:[61]
push.v self.x
pushi.e 800
cmp.i.v LT
bf [63]

:[62]
push.v self.y
pushi.e 150
cmp.i.v GT
b [64]

:[63]
push.e 0

:[64]
bf [66]

:[65]
pushi.e 0
pop.v.i self.door_type

:[66]
popenv [60]

:[end]