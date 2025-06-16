.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.plot
pushi.e 7
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [7]

:[4]
pushi.e 276
pushenv [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
popenv [5]
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact

:[7]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [15]

:[8]
pushi.e 2
pop.v.i self.con
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
pushi.e 82
pushenv [10]

:[9]
pushi.e 0
pop.v.i self.visible

:[10]
popenv [9]
pushi.e 82
pushenv [12]

:[11]
pushi.e 780
pop.v.i self.y

:[12]
popenv [11]
pushi.e 0
pop.v.i self.kr
pushi.e 893
conv.i.v
pushi.e 1203
conv.i.v
pushi.e 281
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.kr_actor
push.s "kris"@68
conv.s.v
push.v self.kr_actor
push.v self.kr
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 654
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 1
pop.v.i self.su
pushi.e 893
conv.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 10
sub.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e 40
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.su_actor
push.s "susie"@70
conv.s.v
push.v self.su_actor
push.v self.su
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 993
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.su_actor
pushi.e -9
pushenv [14]

:[13]
push.i 166667
setowner.e
pushi.e 1000
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.specialsprite

:[14]
popenv [13]
pushi.e 2
pop.v.i self.ra
pushi.e 893
conv.i.v
pushi.e 330
conv.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e 20
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ra_actor
push.s "ralseinohat"@10167
conv.s.v
push.v self.ra_actor
push.v self.ra
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 785
push.v self.ra_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.s "bottom"@4636
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 50
conv.i.v
pushi.e -2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
pushi.e 40
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1080
conv.i.v
pushi.e 281
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 75
conv.i.v
pushi.e 5
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "susieunhappy"@10172
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 1064
conv.i.v
pushi.e 321
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 75
conv.i.v
pushi.e 5
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 80
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene4_slash_Step_0_gml_58_0"@30199
conv.s.v
push.s "* Here we are.../%"@30200
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
pushi.e 35
conv.i.v
push.d 7.5
conv.d.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene4_slash_Step_0_gml_64_0"@30201
conv.s.v
push.s "\\E2* Kris^1!!! Susie!!!/"@30202
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene4_slash_Step_0_gml_65_0"@30203
conv.s.v
push.s "\\EH* It's been ever-so-long...!/"@30204
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 2
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene4_slash_Step_0_gml_67_0"@30205
conv.s.v
push.s "\\E2* Yeah, yeah^1... It's been what^1, a day?/"@30206
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "H"@5303
conv.s.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene4_slash_Step_0_gml_69_0"@30207
conv.s.v
push.s "\\EH* Oh! That is^1... short^1, isn't it...?/"@30208
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene4_slash_Step_0_gml_70_0"@30209
conv.s.v
push.s "\\E1* It's just that^1, I've never had friends before.../"@30210
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene4_slash_Step_0_gml_71_0"@30211
conv.s.v
push.s "\\E2* So I've never waited so long to see them again, either!/"@30212
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "A"@1192
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene4_slash_Step_0_gml_73_0"@30213
conv.s.v
push.s "\\EA* Fine^1, guess we'll TRY not to let you die of loneliness./"@30214
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene4_slash_Step_0_gml_74_0"@30215
conv.s.v
push.s "\\E2* I bet Lancer wants to see us too^1, right?/%"@30216
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene4_slash_Step_0_gml_90_0"@30217
conv.s.v
push.s "\\E0* Hey^1... wait a sec./"@30218
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene4_slash_Step_0_gml_91_0"@30219
conv.s.v
push.s "\\EZ* Where IS Lancer?/%"@30220
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 12
conv.i.v
pushi.e 14
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e -22
conv.i.v
push.v self.ra_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
pushi.e 5
conv.i.v
pushi.e 10
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_c_jump(argc=4)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 6
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.su_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene4_slash_Step_0_gml_119_0"@30221
conv.s.v
push.s "\\EZ* Where's^1... EVERYBODY?/%"@30222
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
pushi.e 10
conv.i.v
pushi.e 546
conv.i.v
pushi.e 279
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene4_slash_Step_0_gml_134_0"@30223
conv.s.v
push.s "\\E2* Worry not^1, Susie^1. You'll see them in a moment./"@30224
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene4_slash_Step_0_gml_135_0"@30225
conv.s.v
push.s "\\E3* Just wait here^1, alright?/"@30226
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 1
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene4_slash_Step_0_gml_137_0"@30227
conv.s.v
push.s "\\E1* ... OK./"@30228
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene4_slash_Step_0_gml_138_0"@30229
conv.s.v
push.s "\\EK* (Hey^1, this better not be some kind of prank or something!)/%"@30230
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
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
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 4
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_specialsprite(argc=1)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene4_slash_Step_0_gml_153_0"@30231
conv.s.v
push.s "\\EA* (Kris^1, I have something to ask you.)/"@30232
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene4_slash_Step_0_gml_154_0"@30233
conv.s.v
push.s "\\E3* (I need you to return to the Light World...)/"@30234
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene4_slash_Step_0_gml_155_0"@30235
conv.s.v
push.s "\\EI* (And go to the old classroom^1, to the EAST of the closet doors.)/"@30236
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene4_slash_Step_0_gml_156_0"@30237
conv.s.v
push.s "\\E3* (Inside^1, gather everything on the ground...)/"@30238
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene4_slash_Step_0_gml_157_0"@30239
conv.s.v
push.s "\\E2* (And bring it back here^1. Could you?)/%"@30240
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 8
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 15
conv.i.v
push.v self.kr_actor
call.i gml_Script_c_panobj(argc=2)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[15]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
push.v self.con
pushi.e 50
cmp.i.v LT
b [18]

:[17]
push.e 0

:[18]
bf [28]

:[19]
pushi.e 103
conv.i.v
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.y
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.su_npc
pushi.e 1000
push.v self.su_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.su_npc
pushi.e -9
pushenv [21]

:[20]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[21]
popenv [20]
push.v self.su_actor
pushi.e -9
pushenv [23]

:[22]
call.i instance_destroy(argc=0)
popz.v

:[23]
popenv [22]
pushi.e 135
conv.i.v
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.y
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ra_npc
pushi.e 785
push.v self.ra_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.ra_npc
pushi.e -9
dup.i 4
push.v [stacktop]self.y
push.v self.ra_npc
pushi.e -9
push.v [stacktop]self.sprite_height
add.v.v
pop.i.v [stacktop]self.y
push.v self.ra_npc
pushi.e -9
pushenv [25]

:[24]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[25]
popenv [24]
push.v self.ra_actor
pushi.e -9
pushenv [27]

:[26]
call.i instance_destroy(argc=0)
popz.v

:[27]
popenv [26]
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 0
pop.v.i self.customcon
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v

:[28]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [31]

:[29]
pushi.e 898
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [31]

:[30]
push.s "castletown_empty.ogg"@19751
conv.s.v
call.i gml_Script_mus_initloop(argc=1)
popz.v
pushi.e 0
pop.v.i global.interact
pushi.e 8
pop.v.i global.plot
pushi.e 10
pop.v.i self.con

:[31]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [37]

:[32]
push.v 82.y
pushi.e 200
cmp.i.v LTE
bf [34]

:[33]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
pushi.e 204
pop.v.i 82.y
pushi.e 0
pop.v.i global.facing
pushi.e 1
pop.v.i global.interact
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
pushi.e 0
pop.v.i global.fe
push.s "obj_ch2_scene4_slash_Step_0_gml_216_0"@30241
conv.s.v
push.s "\\EP* Hell are you going^1? Trying to have cake without me?/%"@30242
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 2
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_scene4_slash_Step_0_gml_218_0"@30243
conv.s.v
push.s "* (Kris^1! I'll show you my castle later^1, ok?)/%"@30244
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
push.v self.talked
push.e 1
add.i.v
pop.v.v self.talked
pushi.e 11
pop.v.i self.con

:[37]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [40]

:[38]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [40]

:[39]
pushi.e 0
pop.v.i global.interact
pushi.e 10
pop.v.i self.con

:[40]
push.v self.con
pushi.e 50
cmp.i.v GTE
bf [42]

:[41]
pushi.e 1
pop.v.i global.interact

:[42]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [44]

:[43]
pushi.e 51
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[44]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [52]

:[45]
pushi.e 2
pop.v.i global.facing
push.v self.susie
pushi.e -9
pushenv [47]

:[46]
pushi.e 0
pop.v.i self.visible

:[47]
popenv [46]
push.v self.ralsei
pushi.e -9
pushenv [49]

:[48]
pushi.e 0
pop.v.i self.visible

:[49]
popenv [48]
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
pushi.e 0
pop.v.i self.su
pushi.e 893
conv.i.v
push.v self.susie
pushi.e -9
push.v [stacktop]self.y
push.v self.susie
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.su_actor
push.s "susie"@70
conv.s.v
push.v self.su_actor
push.v self.su
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 828
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 1
pop.v.i self.ra
pushi.e 893
conv.i.v
push.v self.ralsei
pushi.e -9
push.v [stacktop]self.y
push.v self.ralsei
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ra_actor
push.v self.ra_actor
pushi.e -9
pushenv [51]

:[50]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_set_facing_sprites(argc=1)
popz.v

:[51]
popenv [50]
push.s "ralsei"@72
conv.s.v
push.v self.ra_actor
push.v self.ra
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 788
push.v self.ra_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 1
conv.i.v
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 24
conv.i.v
pushi.e 4
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 6
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 10
conv.i.v
pushi.e 6
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene4_slash_Step_0_gml_272_0"@30245
conv.s.v
push.s "\\E1* Hey^1, Kris^1, so where is every.../%"@30246
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "bottom"@4636
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "obj_ch2_scene4_slash_Step_0_gml_280_0"@30247
conv.s.v
push.s "\\E6* ... one...?/%"@30248
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.i 16777215
conv.i.v
pushi.e 30
conv.i.v
call.i gml_Script_c_fadeout_color(argc=2)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_waittalk(argc=0)
popz.v
pushi.e 55
pop.v.i self.con

:[52]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
bf [54]

:[53]
push.v self.con
pushi.e 50
cmp.i.v GTE
b [55]

:[54]
push.e 0

:[55]
bf [60]

:[56]
pushi.e 2
pop.v.i global.facing
pushi.e 232
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.image_alpha
pushi.e 3
pop.v.i self.breakcon
pushi.e 0
pop.v.i self.i

:[57]
push.v self.i
pushi.e 60
cmp.i.v LT
bf [59]

:[58]
push.i 168175
setowner.e
pushi.e 2475
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 400
conv.i.v
call.i random(argc=1)
sub.v.v
pushi.e 15
add.i.v
pushbltn.v builtin.room_width
pushi.e 4
conv.i.d
div.d.v
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
call.i random(argc=1)
add.v.v
call.i gml_Script_scr_marker(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.sparkle
push.i 133655
setowner.e
push.d 0.5
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.sparkle
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.i 133623
setowner.e
pushi.e 4
conv.i.v
pushi.e -4
conv.i.v
call.i random_range(argc=2)
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.sparkle
pushi.e -9
pop.v.v [stacktop]self.hspeed
push.i 133627
setowner.e
push.d 0.05
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.sparkle
pushi.e -9
pop.v.d [stacktop]self.friction
push.i 133628
setowner.e
push.d 0.1
push.d 0.03
conv.d.v
call.i random(argc=1)
add.v.d
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.sparkle
pushi.e -9
pop.v.v [stacktop]self.gravity
push.i 133650
setowner.e
pushi.e 2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.sparkle
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.i 133651
setowner.e
pushi.e 2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.sparkle
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [57]

:[59]
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
pushi.e 2
pop.v.i self.customcon

:[60]
push.v self.con
pushi.e 55
cmp.i.v EQ
bf [62]

:[61]
pushi.e 898
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [63]

:[62]
push.e 0

:[63]
bf [end]

:[64]
pushi.e 24
pop.v.i global.entrance
pushi.e 3
pop.v.i global.interact
pushi.e 10
pop.v.i global.plot
pushi.e 192
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.wh
push.i 16777215
push.v self.wh
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e 72
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]