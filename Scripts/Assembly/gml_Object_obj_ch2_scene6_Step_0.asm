.localvar 2 arguments
.localvar 30392 lancer_npc 15914

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v 82.y
push.v self.y
pushi.e 26
sub.i.v
cmp.v.v GTE
bf [3]

:[2]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [9]

:[5]
pushglb.v global.plot
pushi.e 14
cmp.i.v LT
bf [7]

:[6]
pushi.e 20
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
pushi.e 0
pop.v.i global.fe
push.s "obj_ch2_scene6_slash_Step_0_gml_11_0"@30260
conv.s.v
push.s "\\E2* (Kris^1, I have something to show you in the CASTLE!)/%"@30261
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
push.v self.y
pushi.e 27
sub.i.v
pop.v.v 82.y

:[7]
pushglb.v global.plot
pushi.e 15
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.con

:[9]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [17]

:[10]
pushi.e 5
pop.v.i self.con
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
pushi.e 82
pushenv [12]

:[11]
pushi.e 0
pop.v.i self.visible

:[12]
popenv [11]
pushi.e 3
pop.v.i self.la
pushi.e 893
conv.i.v
pushi.e 900
conv.i.v
push.v 82.x
pushi.e 16
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.la_actor
push.s "lancer"@4751
conv.s.v
push.v self.la_actor
push.v self.la
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 1286
push.v self.la_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 4
pop.v.i self.ro
pushi.e 893
conv.i.v
pushi.e 900
conv.i.v
push.v 82.x
pushi.e 28
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ro_actor
push.s "rouxls"@6221
conv.s.v
push.v self.ro_actor
push.v self.ro
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 1161
push.v self.ro_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.ro
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 5
pop.v.i self.sw
pushi.e 893
conv.i.v
pushi.e 900
conv.i.v
push.v 82.x
pushi.e 20
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.sw_actor
push.s "starwalker"@9591
conv.s.v
push.v self.sw_actor
push.v self.sw
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 1209
push.v self.sw_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.sw_actor
pushi.e -9
pushenv [14]

:[13]
push.i 166667
setowner.e
pushi.e 1210
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.specialsprite

:[14]
popenv [13]
push.v self.sw
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 129
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.la_card
pushi.e 26
push.v self.la_card
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 129
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ro_card
pushi.e 27
push.v self.ro_card
pushi.e -9
pop.v.i [stacktop]self.sprite_index
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
push.s "bottom"@4636
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e -80
conv.i.v
pushi.e 42
conv.i.v
push.v self.kr_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
pushi.e 15
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e -75
conv.i.v
pushi.e -50
conv.i.v
push.v self.kr_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
pushi.e 15
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su
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
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_84_0"@30267
conv.s.v
push.s "\\E6* Wait^1, Kris^1, we're leaving!? But we just got here!/"@30268
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_85_0"@30269
conv.s.v
push.s "\\EK* Man^1, I don't wanna go do our group project.../%"@30270
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "5"@5306
conv.s.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "5"@5306
conv.s.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_93_0"@30271
conv.s.v
push.s "\\EK* Oh^1... You two have homework?/%"@30272
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "5"@5306
conv.s.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_101_0"@30273
conv.s.v
push.s "\\EK* Uhh^1, well^1,/%"@30274
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_106_0"@30275
conv.s.v
push.s "\\EN* Susie^1, Kris^1, you ought to do it right away^1! School's important!/"@30276
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_107_0"@30277
conv.s.v
push.s "\\EN* I banish you from this kingdom until you start your project!/%"@30278
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_116_0"@30279
conv.s.v
push.s "\\EH* Ugh^1, fine!!^1! I'll do it!!^1! Jeez!!!/%"@30280
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
pushi.e 15
conv.i.v
pushi.e 15
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "susieunhappy"@10172
conv.s.v
call.i gml_Script_c_facing(argc=1)
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
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_128_0"@30281
conv.s.v
push.s "\\E1* Susie!^1! Don't worry!^1! I'll go and help you^1, too!!!/"@30282
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "C"@9479
conv.s.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_130_0"@30283
conv.s.v
push.s "* Er^1, wait^1, Lancer^1! Perhaps you shouldn't -/"@30284
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 3
conv.i.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_132_0"@30285
conv.s.v
push.s "* Too late^1, kindboy!^1! Friendship Forme!!/%"@30286
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
pushi.e 90
conv.i.v
call.i gml_Script_c_depth(argc=1)
popz.v
push.v self.la
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_spin(argc=1)
popz.v
pushi.e 35
conv.i.v
pushi.e 4
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
pushi.e 15
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.s "d"@6706
conv.s.v
pushi.e 30
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 15
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.s "d"@6706
conv.s.v
pushi.e 30
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
pushi.e 35
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.la
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 105
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 195
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_161_0"@30287
conv.s.v
push.s "* (LANCER was added to your Key Items.)/"@30288
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 6
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_163_0"@30289
conv.s.v
push.s "* ..^1. What? Where'd you go...?/"@30290
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_165_0"@30291
conv.s.v
push.s "* Don't worry!^1! I just entered your INVENTORY!!/"@30292
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_166_0"@30293
conv.s.v
push.s "\\E3* I'll just be hanging out in Kris's pocket!!!/"@30294
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "K"@4777
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_168_0"@30295
conv.s.v
push.s "\\EK* Dunno what that means^1, but OK!/%"@30296
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.ro
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 12
conv.i.v
pushi.e 15
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
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
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "rouxls"@6221
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_180_0"@30297
conv.s.v
push.s "* Feare not^1! I too^1, shall Assisteth!/"@30298
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "4"@608
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_182_0"@30299
conv.s.v
push.s "\\E4* Uh^1, we're good./"@30300
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "3"@2741
conv.s.v
push.s "rouxls"@6221
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_184_0"@30301
conv.s.v
push.s "\\E3* Ahah^1, quite!^1! We^1, as a Teame ^1- art Good!!!/%"@30302
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.ro
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e -40
conv.i.v
pushi.e -28
conv.i.v
push.v self.kr_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
pushi.e 10
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.ra
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
push.v self.ro
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 173
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_201_0"@30303
conv.s.v
push.s "* (ROUXLS became a Key Item even though no one wanted that.)/%"@30304
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e -5
pushi.e 254
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
pushi.e 14
conv.i.v
call.i gml_Script_scr_keyitemget(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.sw
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 15
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
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
push.v self.sw
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_214_0"@30305
conv.s.v
push.s "* \\cYI\\cW will also \\cYjoin\\cW/%"@30306
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1210
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e -20
conv.i.v
pushi.e -20
conv.i.v
push.v self.kr_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
pushi.e 60
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 20
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
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.sw
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 153
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 173
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_238_0"@30307
conv.s.v
push.s "* (THE ORIGINAL   \\cYSTARWALKER\\cW became a Key Item.)/%"@30308
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[16]
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_243_0"@30309
conv.s.v
push.s "\\EK* .../%"@30310
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
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_250_0"@30311
conv.s.v
push.s "\\E0* Alright^1, enough already. Let's get going./%"@30312
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 8
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
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
pushi.e 6
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 95
conv.i.v
pushi.e 8
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 3
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 13
conv.i.v
pushi.e 4
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 10
conv.i.v
pushi.e 4
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_276_0"@30313
conv.s.v
push.s "\\E2* Good luck today^1, Kris. See you soon!/%"@30314
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 85
conv.i.v
pushi.e 6
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 35
conv.i.v
call.i gml_Script_c_fadeout(argc=1)
popz.v
pushi.e 40
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[17]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
push.v self.con
pushi.e 2
cmp.i.v EQ
b [20]

:[19]
push.e 0

:[20]
bf [29]

:[21]
pushi.e 63
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [23]

:[22]
pushi.e 0
pop.v.i self.customcon
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
pushi.e 3
pop.v.i self.con

:[23]
push.v self.ralTimer
push.e 1
add.i.v
pop.v.v self.ralTimer
push.v self.ralTimer
pushi.e 1
cmp.i.v EQ
bf [27]

:[24]
push.v self.ra_actor
pushi.e -9
pushenv [26]

:[25]
pushi.e 10
conv.i.v
pushi.e 10
conv.i.v
call.i gml_Script_scr_jump_in_place(argc=2)
popz.v

:[26]
popenv [25]

:[27]
push.v self.ralTimer
pushi.e 11
cmp.i.v GT
bf [29]

:[28]
pushi.e 0
pop.v.i self.ralTimer

:[29]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
push.v self.con
pushi.e 3
cmp.i.v EQ
b [32]

:[31]
push.e 0

:[32]
bf [72]

:[33]
push.v self.la_actor
pushi.e -9
push.v [stacktop]self.visible
pushi.e 0
cmp.i.v EQ
bf [35]

:[34]
pushi.e 4
pop.v.i self.con
pushi.e 3
pop.v.i self.lancerGlow
pushi.e 0
pop.v.i self.customcon
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v

:[35]
push.i -99999999
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.depth
push.v self.lancerSpin
push.v self.addAmount
add.v.v
pop.v.v self.lancerSpin
pushi.e 1
pop.v.i self.moveAmount
push.v self.lancerCard
pushi.e 0
cmp.i.v EQ
bf [47]

:[36]
push.v self.lancerSpin
pushi.e 12
cmp.i.v GTE
bf [39]

:[37]
push.v self.totalSpins
push.e 1
add.i.v
pop.v.v self.totalSpins
pushi.e 0
pop.v.i self.lancerSpin
push.v self.addAmount
push.d 2.5
cmp.d.v LT
bf [39]

:[38]
push.v self.addAmount
push.d 0.5
add.d.v
pop.v.v self.addAmount

:[39]
push.v self.lancerSpin
pushi.e 12
cmp.i.v LT
bf [41]

:[40]
push.s "r"@6696
conv.s.v
push.v self.la_actor
call.i gml_Script_scr_actor_facing(argc=2)
popz.v

:[41]
push.v self.lancerSpin
pushi.e 9
cmp.i.v LT
bf [43]

:[42]
push.s "u"@6708
conv.s.v
push.v self.la_actor
call.i gml_Script_scr_actor_facing(argc=2)
popz.v

:[43]
push.v self.lancerSpin
pushi.e 6
cmp.i.v LT
bf [45]

:[44]
push.s "l"@6707
conv.s.v
push.v self.la_actor
call.i gml_Script_scr_actor_facing(argc=2)
popz.v

:[45]
push.v self.lancerSpin
pushi.e 3
cmp.i.v LT
bf [47]

:[46]
push.s "d"@6706
conv.s.v
push.v self.la_actor
call.i gml_Script_scr_actor_facing(argc=2)
popz.v

:[47]
push.v self.lancerCard
pushi.e 1
cmp.i.v EQ
bf [49]

:[48]
push.v self.la_card
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 4
add.i.v
pop.i.v [stacktop]self.y

:[49]
push.v self.la_card
pushi.e -9
push.v [stacktop]self.y
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 30
add.i.v
cmp.v.v GT
bf [51]

:[50]
push.v self.stepAway
pushi.e 0
cmp.i.v EQ
b [52]

:[51]
push.e 0

:[52]
bf [54]

:[53]
push.s "l"@6707
conv.s.v
push.v self.su_actor
call.i gml_Script_scr_actor_facing(argc=2)
popz.v
push.s "r"@6696
conv.s.v
push.v self.ra_actor
call.i gml_Script_scr_actor_facing(argc=2)
popz.v

:[54]
push.v self.la_card
pushi.e -9
push.v [stacktop]self.y
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 60
add.i.v
cmp.v.v GT
bf [56]

:[55]
push.s "d"@6706
conv.s.v
push.v self.su_actor
call.i gml_Script_scr_actor_facing(argc=2)
popz.v
push.s "d"@6706
conv.s.v
push.v self.ra_actor
call.i gml_Script_scr_actor_facing(argc=2)
popz.v

:[56]
push.v self.la_card
pushi.e -9
push.v [stacktop]self.y
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 10
add.i.v
cmp.v.v GTE
bf [62]

:[57]
pushi.e 0
pop.v.i self.moveAmount
pushi.e 0
pop.v.i self.addAmount
push.v self.la_card
pushi.e -9
pushenv [59]

:[58]
pushi.e 0
pop.v.i self.visible

:[59]
popenv [58]
push.v self.la_actor
pushi.e -9
pushenv [61]

:[60]
pushi.e 0
pop.v.i self.visible

:[61]
popenv [60]

:[62]
push.v self.totalSpins
pushi.e 3
cmp.i.v GT
bf [64]

:[63]
push.v self.lancerGlow
pushi.e 0
cmp.i.v EQ
b [65]

:[64]
push.e 0

:[65]
bf [67]

:[66]
pushi.e 1
pop.v.i self.shrinkValue
pushi.e 0
pop.v.i self.morphTime
pushi.e 0
pop.v.i self.growValue
pushi.e 0
pop.v.i self.cardMade
push.v self.la_actor
pushi.e -9
push.v [stacktop]self.sprite_width
push.d 0.5
mul.d.v
pop.v.v self.halfWidth
push.v self.la_actor
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.origX
push.v self.la_actor
pushi.e -9
push.v [stacktop]self.sprite_height
push.d 0.5
mul.d.v
pop.v.v self.halfHeight
push.v self.la_actor
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.origY
pushi.e 1
pop.v.i self.lancerGlow

:[67]
push.v self.totalSpins
pushi.e 18
cmp.i.v GT
bf [69]

:[68]
push.v self.lancerGlow
pushi.e 1
cmp.i.v EQ
b [70]

:[69]
push.e 0

:[70]
bf [72]

:[71]
pushi.e 2
pop.v.i self.lancerGlow
pushi.e 0
pop.v.i self.morphTime

:[72]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
bf [74]

:[73]
push.v self.con
pushi.e 4
cmp.i.v EQ
b [75]

:[74]
push.e 0

:[75]
bf [103]

:[76]
push.v self.conTimer
push.e 1
add.i.v
pop.v.v self.conTimer
push.v self.ro_actor
pushi.e -9
push.v [stacktop]self.visible
pushi.e 0
cmp.i.v EQ
bf [78]

:[77]
pushi.e 5
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e 6
pop.v.i self.lancerGlow
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v

:[78]
push.i -99999999
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.depth
push.v self.rouxlsCard
pushi.e 1
cmp.i.v EQ
bf [80]

:[79]
push.v self.ro_card
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 6
add.i.v
pop.i.v [stacktop]self.y

:[80]
push.v self.ro_card
pushi.e -9
push.v [stacktop]self.y
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 30
add.i.v
cmp.v.v GT
bf [82]

:[81]
push.v self.stepAway
pushi.e 0
cmp.i.v EQ
b [83]

:[82]
push.e 0

:[83]
bf [85]

:[84]
push.s "l"@6707
conv.s.v
push.v self.su_actor
call.i gml_Script_scr_actor_facing(argc=2)
popz.v
push.s "r"@6696
conv.s.v
push.v self.ra_actor
call.i gml_Script_scr_actor_facing(argc=2)
popz.v

:[85]
push.v self.ro_card
pushi.e -9
push.v [stacktop]self.y
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 60
add.i.v
cmp.v.v GT
bf [87]

:[86]
push.s "d"@6706
conv.s.v
push.v self.su_actor
call.i gml_Script_scr_actor_facing(argc=2)
popz.v
push.s "d"@6706
conv.s.v
push.v self.ra_actor
call.i gml_Script_scr_actor_facing(argc=2)
popz.v

:[87]
push.v self.ro_card
pushi.e -9
push.v [stacktop]self.y
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 10
add.i.v
cmp.v.v GTE
bf [93]

:[88]
pushi.e 0
pop.v.i self.moveAmount
pushi.e 0
pop.v.i self.addAmount
push.v self.ro_card
pushi.e -9
pushenv [90]

:[89]
pushi.e 0
pop.v.i self.visible

:[90]
popenv [89]
push.v self.ro_actor
pushi.e -9
pushenv [92]

:[91]
pushi.e 0
pop.v.i self.visible

:[92]
popenv [91]

:[93]
push.v self.conTimer
pushi.e 5
cmp.i.v GTE
bf [95]

:[94]
push.v self.lancerGlow
pushi.e 3
cmp.i.v EQ
b [96]

:[95]
push.e 0

:[96]
bf [98]

:[97]
pushi.e 1
pop.v.i self.shrinkValue
pushi.e 0
pop.v.i self.morphTime
pushi.e 0
pop.v.i self.growValue
pushi.e 0
pop.v.i self.cardMade
push.v self.ro_actor
pushi.e -9
push.v [stacktop]self.sprite_width
push.d 0.5
mul.d.v
pop.v.v self.halfWidth
push.v self.ro_actor
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.origX
push.v self.ro_actor
pushi.e -9
push.v [stacktop]self.sprite_height
push.d 0.5
mul.d.v
pop.v.v self.halfHeight
push.v self.ro_actor
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.origY
pushi.e 4
pop.v.i self.lancerGlow

:[98]
push.v self.conTimer
pushi.e 60
cmp.i.v GTE
bf [100]

:[99]
push.v self.lancerGlow
pushi.e 4
cmp.i.v EQ
b [101]

:[100]
push.e 0

:[101]
bf [103]

:[102]
pushi.e 5
pop.v.i self.lancerGlow
pushi.e 0
pop.v.i self.morphTime

:[103]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [108]

:[104]
pushi.e 898
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [108]

:[105]
pushi.e 6
pop.v.i self.con
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_scr_keyitemget(argc=1)
popz.v
pushi.e 9
conv.i.v
call.i gml_Script_scr_keyitemget(argc=1)
popz.v
pushi.e 9
conv.i.v
call.i gml_Script_scr_litemget(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 0
pop.v.i global.interact
pushglb.v global.plot
pushi.e 16
cmp.i.v LT
bf [107]

:[106]
pushi.e 16
pop.v.i global.plot

:[107]
pushi.e 0
pop.v.i global.facing
pushi.e 192
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 70
conv.i.v
call.i room_goto(argc=1)
popz.v

:[108]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [110]

:[109]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [111]

:[110]
push.e 0

:[111]
bf [113]

:[112]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i global.interact

:[113]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [115]

:[114]
pushi.e 1
pop.v.i global.interact
pushi.e 51
pop.v.i self.con
pushi.e 740
pop.v.i 82.x
pushi.e 720
pop.v.i 82.y

:[115]
push.v self.con
pushi.e 51
cmp.i.v EQ
bf [128]

:[116]
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [118]

:[117]
pushi.e 276
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[118]
pushi.e 2
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
pushi.e 1
pop.v.i global.interact
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 0
pop.v.i global.facing
pushi.e 654
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v 82.x
push.v self.kr_actor
pushi.e -9
pop.v.v [stacktop]self.x
push.v 82.y
push.v self.kr_actor
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 996
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 232203
setowner.e
pushi.e 25
conv.i.v
push.v self.su_actor
pushi.e -9
pushi.e 6
pop.v.v [array]self.specialsprite
push.v 82.x
pushi.e 80
add.i.v
push.v self.su_actor
pushi.e -9
pop.v.v [stacktop]self.x
push.v 82.y
push.v self.su_actor
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 799
push.v self.ra_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v 82.x
pushi.e 80
sub.i.v
push.v self.ra_actor
pushi.e -9
pop.v.v [stacktop]self.x
push.v 82.y
push.v self.ra_actor
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 3
pop.v.i self.la
pushi.e 893
conv.i.v
pushi.e 440
conv.i.v
pushi.e 724
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.la_actor
push.s "lancer"@4751
conv.s.v
push.v self.la_actor
push.v self.la
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 1286
push.v self.la_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 1576
conv.i.v
pushi.e 605
conv.i.v
pushi.e 883
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.hathy
push.v self.hathy
pushi.e -9
pushenv [120]

:[119]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[120]
popenv [119]
pushi.e 1264
conv.i.v
pushi.e 570
conv.i.v
pushi.e 835
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.rabbick
push.v self.rabbick
pushi.e -9
pushenv [122]

:[121]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[122]
popenv [121]
pushi.e 1194
conv.i.v
pushi.e 565
conv.i.v
pushi.e 600
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.blockler
push.v self.blockler
pushi.e -9
pushenv [124]

:[123]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[124]
popenv [123]
pushi.e 25
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.la
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 20
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 187
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_spin(argc=1)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_spin(argc=1)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "lancer.ogg"@20915
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_543_0"@30326
conv.s.v
push.s "\\E1* Guess who's back^1, Clowns!?/"@30327
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 7
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_545_0"@30328
conv.s.v
push.s "\\E7* Lancer!!!/%"@30329
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
pushi.e 600
conv.i.v
pushi.e 802
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
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
pushi.e 6
conv.i.v
call.i gml_Script_c_specialsprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_c_animate(argc=3)
popz.v
pushi.e 160
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 14
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 217
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 188
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 50
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
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 24
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_566_0"@30330
conv.s.v
push.s "\\E2* Hey^1, Kris^1, dunno what you did^1, but hell yeah!/%"@30331
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_570_0"@30332
conv.s.v
push.s "\\E9* Everyone's here!/%"@30333
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e -5
pushi.e 248
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [126]

:[125]
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_591_0"@30334
conv.s.v
push.s "\\EK* Uh^1, hey. Wait. I think we beat up some of these guys./"@30335
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_592_0"@30336
conv.s.v
push.s "\\EC* Are they not gonna like..^1. gang up on us now?/"@30337
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 3
conv.i.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_594_0"@30338
conv.s.v
push.s "\\E3* Don't worry^1, Susie!/%"@30339
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.la
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
call.i gml_Script_c_wait_talk(argc=0)
popz.v
push.v self.la
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 187
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_spin(argc=1)
popz.v
pushi.e 12
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_spin(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_600_0_b"@30340
conv.s.v
push.s "\\E1* Pop-pop got trapped in a hamster cage^1, making me Prince King./"@30341
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_601_0"@30342
conv.s.v
push.s "\\E2* And with my new dad-like powers^1, I declared you forgiven!/"@30343
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 3
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_603_0"@30344
conv.s.v
push.s "\\E3* Cool^1, well^1, guess I won't beat anyone up here^1, either./"@30345
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 3
conv.i.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_605_0_b"@30346
conv.s.v
push.s "\\E3* Yep^1! Now all that's left is for everyone to enjoy the new home!/%"@30347
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
call.i gml_Script_c_wait_talk(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
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
push.s "obj_ch2_scene6_slash_Step_0_gml_614_0"@30348
conv.s.v
push.s "\\EC* Wait^1, new home? Where's your..^1. OLD home?/%"@30349
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
b [127]

:[126]
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susieunhappy"@10172
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_576_0"@30350
conv.s.v
push.s "\\E0* .. but^1, uh^1, what happened to^1, uh^1, Lancer's castle?/%"@30351
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[127]
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.la
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 187
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_spin(argc=1)
popz.v
pushi.e 12
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_spin(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_587_0"@30352
conv.s.v
push.s "\\E3* Alllll gone!/"@30353
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 6
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_589_0"@30354
conv.s.v
push.s "\\E6* Gone?/%"@30355
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 23
conv.i.v
pushi.e 5
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 24
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.la
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_598_0"@30356
conv.s.v
push.s "\\EA* Right..^1. When Kris sealed the fountain^1,/"@30357
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_599_0"@30358
conv.s.v
push.s "\\EA* That \"Dark World\" disappeared.../"@30359
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_600_0"@30360
conv.s.v
push.s "\\EI* ..^1. And turned back into a normal classroom./"@30361
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_602_0"@30362
conv.s.v
push.s "\\E0* ..^1. So where's Lancer gonna live now?/"@30363
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 2
conv.i.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_604_0"@30364
conv.s.v
push.s "\\E2* Don't worry^1, Susie!!/"@30365
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_605_0"@30366
conv.s.v
push.s "\\E1* We'll conquer Ralsei's castle as our own!!/%"@30367
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 188
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 66
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
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 1002
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.la
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
pushi.e 1304
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 27
conv.i.v
pushi.e 708
conv.i.v
pushi.e 694
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_specialsprite(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_622_0"@30368
conv.s.v
push.s "\\E3* (Kris^1, as you bring Dark World Denizens back here...)/"@30369
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_623_0"@30370
conv.s.v
push.s "\\EI* (The power of our Fountain...)/"@30371
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_624_0"@30372
conv.s.v
push.s "\\E2* (Will transform this town more and more.)/"@30373
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_625_0"@30374
conv.s.v
push.s "\\E3* (From now on^1, the enemies we SPARE...)/"@30375
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_626_0"@30376
conv.s.v
push.s "\\E0* (Will be RECRUITED to our town.)/"@30377
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_627_0"@30378
conv.s.v
push.s "\\E2* (So let's keep SPARING enemies^1, okay?)/%"@30379
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.la
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_637_0"@30380
conv.s.v
push.s "\\E3* Anyhow^1, why don't we all have a look around?/"@30381
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_638_0"@30382
conv.s.v
push.s "\\E2* We can head NORTH towards the CASTLE./"@30383
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_639_0"@30384
conv.s.v
push.s "\\E2* I have a special surprise to show you there!/%"@30385
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_644_0"@30386
conv.s.v
push.s "\\E3* Ahaha!^1! Not if I surprise myself first!!/"@30387
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_645_0"@30388
conv.s.v
push.s "\\E2* Last one there is a fresh and fragrant egg!!/%"@30389
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
push.v self.la
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 900
conv.i.v
pushi.e 20
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 16
conv.i.v
pushi.e 702
conv.i.v
pushi.e 780
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "l"@6707
conv.s.v
pushi.e 17
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "free"@9835
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene6_slash_Step_0_gml_662_0"@30390
conv.s.v
push.s "\\E2* C'mon^1, Kris! You gonna let him beat us!?/%"@30391
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
pushi.e 30
conv.i.v
pushi.e 1150
conv.i.v
push.v self.hathy
pushi.e -9
push.v [stacktop]self.x
push.s "x"@50
conv.s.v
push.v self.hathy
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 30
conv.i.v
pushi.e 1150
conv.i.v
push.v self.rabbick
pushi.e -9
push.v [stacktop]self.x
push.s "x"@50
conv.s.v
push.v self.rabbick
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 30
conv.i.v
pushi.e 350
conv.i.v
push.v self.blockler
pushi.e -9
push.v [stacktop]self.x
push.s "x"@50
conv.s.v
push.v self.blockler
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 0
conv.i.v
push.s "castletown.ogg"@19752
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 31
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v
pushi.e 1
pop.v.i global.interact
pushi.e 52
pop.v.i self.con

:[128]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [130]

:[129]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [131]

:[130]
push.e 0

:[131]
bf [end]

:[132]
push.v self.hathy
pushi.e -9
pushenv [134]

:[133]
call.i instance_destroy(argc=0)
popz.v

:[134]
popenv [133]
push.v self.rabbick
pushi.e -9
pushenv [136]

:[135]
call.i instance_destroy(argc=0)
popz.v

:[136]
popenv [135]
push.v self.blockler
pushi.e -9
pushenv [138]

:[137]
call.i instance_destroy(argc=0)
popz.v

:[138]
popenv [137]
pushi.e 103
conv.i.v
pushi.e 355
conv.i.v
pushi.e 675
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.lancer_npc
pushi.e 1294
pushloc.v local.lancer_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.lancer_npc
pushi.e -9
pushenv [140]

:[139]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[140]
popenv [139]
pushi.e 0
pop.v.i global.interact
pushglb.v global.plot
pushi.e 12
cmp.i.v LT
bf [142]

:[141]
pushi.e 12
pop.v.i global.plot

:[142]
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i self.con
call.i gml_Script_scr_tempsave(argc=0)
popz.v

:[end]