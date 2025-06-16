.localvar 2 arguments

:[0]
push.v 82.x
push.v self.x
cmp.v.v GT
bf [2]

:[1]
push.v self.con
pushi.e -1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facing
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 4
pop.v.i self.be
pushi.e 893
conv.i.v
push.v self.berdlynpc
pushi.e -9
push.v [stacktop]self.y
push.v self.berdlynpc
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.be_actor
push.s "berdly"@4870
conv.s.v
push.v self.be_actor
push.v self.be
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 668
push.v self.be_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.berdlynpc
pushi.e -9
pop.v.i [stacktop]self.visible

:[5]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 10
pop.v.i self.con
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 4
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_c_panspeed_wait(argc=3)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=2)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city04_slash_Step_0_gml_38_0"@34595
conv.s.v
push.s "\\E3* Kris^1! Where were you!/"@34596
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city04_slash_Step_0_gml_39_0"@34597
conv.s.v
push.s "\\E1* Tut tut..^1. even late for your own truce./"@34598
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city04_slash_Step_0_gml_40_0"@34599
conv.s.v
push.s "\\E6* Well^1, not as if your presence even matters./"@34600
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city04_slash_Step_0_gml_41_0"@34601
conv.s.v
push.s "\\E7* Ahead of us is a mind meltingly difficult puzzle./"@34602
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city04_slash_Step_0_gml_42_0"@34603
conv.s.v
push.s "\\EJ* So just take your nap time^1, Kris.  I'll handle it./%"@34604
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city04_slash_Step_0_gml_48_0"@34605
conv.s.v
push.s "\\ED* (I..^1. only have to figure out how it works...)/%"@34606
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
pushi.e 15
conv.i.v
push.v self.kr_actor
call.i gml_Script_c_panobj(argc=2)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v

:[7]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [9]

:[8]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 11
pop.v.i self.con
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[12]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [14]

:[13]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
pushi.e 20
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 1
push.v self.berdlynpc
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 82
pop.v.i global.plot

:[17]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [19]

:[18]
push.v 82.x
pushi.e 1440
cmp.i.v GT
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
pushi.e 50
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 3
pop.v.i global.facing
pushi.e 83
pop.v.i global.plot
pushi.e 0
push.v self.berdlynpc
pushi.e -9
pop.v.i [stacktop]self.visible
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 3
pop.v.i self.qu
pushi.e 893
conv.i.v
pushi.e 250
conv.i.v
pushi.e 950
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.qu_actor
push.s "queen"@3525
conv.s.v
push.v self.qu_actor
push.v self.qu
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 768
push.v self.qu_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 4
pop.v.i self.be
pushi.e 893
conv.i.v
push.v self.berdlynpc
pushi.e -9
push.v [stacktop]self.y
push.v self.berdlynpc
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.be_actor
push.s "berdly"@4870
conv.s.v
push.v self.be_actor
push.v self.be
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 670
push.v self.be_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 266
conv.i.v
pushi.e 1477
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 50
conv.i.v
pushi.e 0
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_c_panspeed_wait(argc=3)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city04_slash_Step_0_gml_112_0"@34607
conv.s.v
push.s "\\E7* Just a moment^1, Kris^1, I.../%"@34608
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 694
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city04_slash_Step_0_gml_124_0"@34609
conv.s.v
push.s "\\E3* You..^1. How'd you do that!? I..^1. I.../%"@34610
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 674
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 60
conv.i.v
pushi.e 261
conv.i.v
pushi.e 1427
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
pushi.e 8
conv.i.v
call.i gml_Script_c_panspeed_wait(argc=3)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city04_slash_Step_0_gml_134_0"@34611
conv.s.v
push.s "\\EC* .../"@3407
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city04_slash_Step_0_gml_135_0"@34612
conv.s.v
push.s "\\EB* ..^1. Kris. You c-can't tell anyone about this^1, okay!?/"@34613
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city04_slash_Step_0_gml_136_0"@34614
conv.s.v
push.s "\\ED* If anyone asks^1, I solved the puzzle!!/%"@34615
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 162
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city04_slash_Step_0_gml_144_0"@34616
conv.s.v
push.s "\\EB* Got it? Not a word to ANYONE!!/"@34617
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city04_slash_Step_0_gml_145_0"@34618
conv.s.v
push.s "\\EC* ESPECIALLY!!^1! SUSIE!!!/"@34619
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city04_slash_Step_0_gml_146_0"@34620
conv.s.v
push.s "\\EA* You KNOW she'd just..^1. lord it over me!!!/%"@34621
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city04_slash_Step_0_gml_154_0"@34622
conv.s.v
push.s "\\EC* Ugh!!/%"@34623
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 100
conv.i.v
pushi.e 6
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 5
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.s "d"@6706
conv.s.v
pushi.e 6
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 12
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city04_slash_Step_0_gml_174_0"@34624
conv.s.v
push.s "\\EN* I'm Going To Tell Susie/%"@34625
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 20
conv.i.v
pushi.e 12
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 30
conv.i.v
push.v self.kr_actor
call.i gml_Script_c_panobj(argc=2)
popz.v
pushi.e 31
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

:[22]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [24]

:[23]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [25]

:[24]
push.e 0

:[25]
bf [end]

:[26]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing

:[end]