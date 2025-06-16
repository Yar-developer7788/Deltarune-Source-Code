.localvar 2 arguments
.localvar 34699 spamton_marker 17128
.localvar 32196 battle_end 17129
.localvar 34738 dumpster_npc 17130

:[0]
push.v self.con
push.d 1.1
cmp.d.v EQ
bf [2]

:[1]
push.d 1.2
pop.v.d self.con

:[2]
push.v 82.x
pushi.e 450
cmp.i.v GT
bf [4]

:[3]
push.v self.con
pushi.e -1
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
push.d 1.1
pop.v.d self.con
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facing

:[7]
push.v self.con
push.d 1.2
cmp.d.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.i self.con
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 2
pop.v.i self.sp
pushi.e 893
conv.i.v
pushi.e 120
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 1000
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.sp_actor
push.s "spamton"@5523
conv.s.v
push.v self.sp_actor
push.v self.sp
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 123
push.v self.sp_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 3
pop.v.i self.du
pushi.e 114
conv.i.v
pushi.e 106
conv.i.v
pushi.e 560
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.du_actor
push.s "dumpster"@34626
conv.s.v
push.v self.du_actor
push.v self.du
call.i gml_Script_scr_actor_setup_nofacing(argc=3)
popz.v
push.v self.du
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
pushi.e 6000
conv.i.v
call.i gml_Script_c_depth(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 0
push.v self.dumpster
pushi.e -9
pop.v.i [stacktop]self.visible
push.i 232289
setowner.e
push.v self.id
push.v self.cutscene_master
pushi.e -9
pushi.e 0
pop.v.v [array]self.save_object
push.v self.sp
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v

:[9]
push.v self.con
pushi.e 1
cmp.i.v EQ
bt [11]

:[10]
call.i gml_Script_scr_cutscene_loaded(argc=0)
conv.v.b
b [12]

:[11]
push.e 1

:[12]
bf [18]

:[13]
pushi.e 2
pop.v.i self.con
pushi.e 60
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.du
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 3012
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
push.v self.sp_actor
pushi.e -9
push.v [stacktop]self.depth
pushi.e 100
add.i.v
call.i gml_Script_c_depth(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 1
conv.b.v
push.s "open_dumpster"@34631
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.sp
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 165
conv.i.v
pushi.e 615
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 2
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.v self.shortened
conv.v.b
not.b
bf [15]

:[14]
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "play_intro"@34628
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "bottom"@4636
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_64_0"@34635
conv.s.v
push.s "* HEY      EVERY     !^1! IT'S ME!!!/%"@34636
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 120
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_71_0"@34637
conv.s.v
push.s "* EV3RY  BUDDY  'S FAVORITE [[Number 1 Rated Salesman1997]]/%"@34638
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 123
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_77_0"@34639
conv.s.v
push.s "\\s0* SPAMT%%"@34640
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 120
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_85_0"@34641
conv.s.v
push.s "* SPAMTON G. SPAMTON!!/%"@34642
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[15]
pushi.e 0
conv.i.v
push.s "spamton_laugh_noise.ogg"@34643
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 120
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 45
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "stop"@9833
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
push.v self.shortened
conv.v.b
bf [17]

:[16]
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
push.v self.du
call.i gml_Script_c_sel(argc=1)
popz.v
push.i 980000
conv.i.v
call.i gml_Script_c_depth(argc=1)
popz.v
push.v self.sp
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
pushi.e 1834
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 20
conv.i.v
push.v 82.y
push.v 82.x
pushi.e 40
add.i.v
call.i gml_Script_c_jump(argc=4)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 123
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v
b [18]

:[17]
pushi.e 1
conv.b.v
push.s "stop_intro"@34629
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 123
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 24
conv.i.v
pushi.e 20
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=3)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_114_0"@34644
conv.s.v
push.s "* WOAH!^1! IF IT ISN\"T A.../%"@34645
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.du
call.i gml_Script_c_sel(argc=1)
popz.v
push.i 980000
conv.i.v
call.i gml_Script_c_depth(argc=1)
popz.v
push.v self.sp
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
pushi.e 1834
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 20
conv.i.v
pushi.e 203
conv.i.v
push.v 82.x
pushi.e 40
add.i.v
call.i gml_Script_c_jump(argc=4)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 123
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "free_all"@9834
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "spamton_meeting.ogg"@34646
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
push.v self.kr
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
push.d 7.5
conv.d.v
pushi.e 10
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.d 7.5
conv.d.v
pushi.e 200
conv.i.v
push.v 82.y
push.s "y"@52
conv.s.v
call.i gml_Script_c_var_lerp(argc=4)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.sp
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 120
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.1
conv.d.v
push.s "siner_add0"@18089
conv.s.v
call.i gml_Script_c_var(argc=2)
popz.v
pushi.e 20
conv.i.v
pushi.e 10
conv.i.v
pushi.e 0
conv.i.v
push.s "siner_amplitude0"@18090
conv.s.v
call.i gml_Script_c_var_lerp(argc=4)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_149_0"@34647
conv.s.v
push.s "* LIGHT nER^1! HEY-HE Y HEY!!!/%"@34648
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 123
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "siner_add0"@18089
conv.s.v
call.i gml_Script_c_var(argc=2)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_158_0"@34649
conv.s.v
push.s "* LOOKS LIKE YOU'RE [[All Alone On A Late Night?]]/%"@34650
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 133
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.2
conv.d.v
push.s "siner_add0"@18089
conv.s.v
call.i gml_Script_c_var(argc=2)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_165_0"@34651
conv.s.v
push.s "* ALL YOUR FRIENDS^1, [[Abandoned you for the slime]] YOU ARE?/%"@34652
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 130
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.4
conv.d.v
push.s "siner_add0"@18089
conv.s.v
call.i gml_Script_c_var(argc=2)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_172_0"@34653
conv.s.v
push.s "* SALES^1, GONE DOWN THE [[Drain]] [[Drain]]??/%"@34654
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
push.s "siner_amplitude0"@18090
conv.s.v
call.i gml_Script_c_var_lerp(argc=4)
popz.v
pushi.e 2
conv.i.v
push.s "siner_add0"@18089
conv.s.v
call.i gml_Script_c_var(argc=2)
popz.v
pushi.e 132
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_180_0"@34655
conv.s.v
push.s "* LIVING IN A GODDAMN GARBAGE CAN???/%"@34656
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
push.s "siner_add0"@18089
conv.s.v
call.i gml_Script_c_var(argc=2)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 120
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "spamton_laugh_noise.ogg"@34643
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 25
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "stop"@9833
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 3
conv.i.v
push.d 0.75
conv.d.v
pushi.e 180
conv.i.v
pushi.e 203
conv.i.v
call.i lerp(argc=3)
push.d 0.75
conv.d.v
pushi.e 620
conv.i.v
push.v 82.x
pushi.e 40
add.i.v
call.i lerp(argc=3)
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 180
conv.i.v
pushi.e 620
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 127
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 60
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
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 5
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.sp
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 123
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.sp
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 10
conv.i.v
pushi.e 0
conv.i.v
push.s "siner_amplitude0"@18090
conv.s.v
call.i gml_Script_c_var_lerp(argc=4)
popz.v
push.d 0.2
conv.d.v
push.s "siner_add0"@18089
conv.s.v
call.i gml_Script_c_var(argc=2)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_228_0"@34657
conv.s.v
push.s "* WELL HAVE I GOT A [[Specil Deal]] FOR LONELY [[Hearts]] LIKE YOU!!/%"@34658
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "siner_add0"@18089
conv.s.v
call.i gml_Script_c_var(argc=2)
popz.v
pushi.e 10
conv.i.v
pushi.e 203
conv.i.v
push.v 82.x
pushi.e 220
add.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 130
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_237_0"@34659
conv.s.v
push.s "* IF YOU'VE [[Lost Control Of Your Life]]/%"@34660
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 124
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_245_0"@34661
conv.s.v
push.s "* THEN YOU JUST GOTTA GRAB IT BY THE [[Silly Strings]]/%"@34662
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "siner_amplitude0"@18090
conv.s.v
call.i gml_Script_c_var_lerp(argc=4)
popz.v
push.d 1.5
conv.d.v
push.s "siner_add0"@18089
conv.s.v
call.i gml_Script_c_var(argc=2)
popz.v
pushi.e 10
conv.i.v
pushi.e 203
conv.i.v
push.v 82.x
pushi.e 120
add.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_253_0"@34663
conv.s.v
push.s "* WHY BE THE [[Little Sponge]] WHO HATES ITS [[$4.99]] LIFE/%"@34664
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
push.s "siner_add0"@18089
conv.s.v
call.i gml_Script_c_var(argc=2)
popz.v
pushi.e 15
conv.i.v
pushi.e 203
conv.i.v
push.v 82.x
pushi.e 80
add.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 125
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_260_0"@34665
conv.s.v
push.s "* WHEN YOU CAN BE A/%"@34666
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
push.s "siner_add0"@18089
conv.s.v
call.i gml_Script_c_var(argc=2)
popz.v
pushi.e 121
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
push.s "spamton"@5523
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_270_0"@34667
conv.s.v
push.s "* [[BIG SHOT!!!]]/%"@34668
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_276_0"@34669
conv.s.v
push.s "* [[BIG SHOT!!!!]]/%"@34670
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_283_0"@34671
conv.s.v
push.s "* [[BIG SHOT!!!!!]]/%"@34672
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 128
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_288_0"@34673
conv.s.v
push.s "* THAT'S RIGHT!^1! NOW'S YOUR CHANCE TO BE A [[BIG SHOT]]!!/%"@34674
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 128
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 6
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_296_0"@34675
conv.s.v
push.s "* AND I HAVE JUST./%"@34676
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 128
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 6
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_304_0"@34677
conv.s.v
push.s "* THE THING./%"@34678
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 128
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 6
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_312_0"@34679
conv.s.v
push.s "* YOU NEED./%"@34680
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 123
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 6
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_320_0"@34681
conv.s.v
push.s "* THAT'S/%"@34682
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 15
conv.i.v
push.d 1.75
conv.d.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 118
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_328_0"@34683
conv.s.v
push.s "* [[Hyperlink Blocked]]./%"@34684
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.sp
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 119
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 6
conv.i.v
pushi.e 203
conv.i.v
push.v 82.x
pushi.e 80
add.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 298
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_347_0"@34685
conv.s.v
push.s "* YOU WANT IT.&* YOU WANT [[Hyperlink Blocked]]^1, DON'T YOU./%"@34686
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 120
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 10
conv.i.v
pushi.e 0
conv.i.v
push.s "siner_amplitude0"@18090
conv.s.v
call.i gml_Script_c_var_lerp(argc=4)
popz.v
push.d 0.2
conv.d.v
push.s "siner_add0"@18089
conv.s.v
call.i gml_Script_c_var(argc=2)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_359_0"@34687
conv.s.v
push.s "* WELL HAVE I GOT A DEAL FOR YOU!!/%"@34688
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 123
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 0
conv.i.v
push.s "siner_add0"@18089
conv.s.v
call.i gml_Script_c_var(argc=2)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_389_0"@34689
conv.s.v
push.s "* ALL YOU HAVE TO DO IS SHOW ME./%"@34690
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 130
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_397_0"@34691
conv.s.v
push.s "* YOUR [[HeartShapedObject]]./%"@34692
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.kr
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
pushi.e 3
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.sp
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 3
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 123
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_413_0"@34693
conv.s.v
push.s "* YOU'RE  LIGHT neR< AREN'T YOU?/%"@34694
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 132
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_419_0"@34695
conv.s.v
push.s "* YOU'VE GOT THE [[LIGHT.]^1]&* WHY DON'T YO^1U&* [[Show it off?]]/%"@34696
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.sp
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 119
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "stop"@9833
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "spamton_laugh_noise.ogg"@34643
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_443_0"@34697
conv.s.v
push.s "* HAEAHAEAHAEAHAEAH!!/%"@34698
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "free_all"@9834
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[18]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [20]

:[19]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [21]

:[20]
push.e 0

:[21]
bf [27]

:[22]
pushi.e 3
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e -5
pushi.e 29
push.v [array]self.tempflag
pushi.e 0
cmp.i.v EQ
bf [24]

:[23]
push.i 231375
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 29
pop.v.v [array]self.tempflag

:[24]
push.v self.sp_actor
pushi.e -9
push.v [stacktop]self.sprite_index
push.v self.sp_actor
pushi.e -9
push.v [stacktop]self.y
push.v self.sp_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v local.spamton_marker
push.i 231204
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.flag
push.i 232336
setowner.e
push.s "spamton_battle.ogg"@34700
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.batmusic
pushi.e 549
pop.v.i self.encounterflag
push.i 231204
setowner.e
push.v self.encounterflag
pushi.e -5
pushi.e 54
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local.spamton_marker
pushi.e 1
conv.i.v
pushi.e 60
conv.i.v
call.i gml_Script_scr_battle(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.flag
pushi.e 893
pushenv [26]

:[25]
pushi.e 0
pop.v.i self.visible

:[26]
popenv [25]

:[27]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [29]

:[28]
pushi.e 357
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [30]

:[29]
push.e 0

:[30]
bf [36]

:[31]
pushi.e 0
pop.v.b local.battle_end
pushi.e 357
pushenv [34]

:[32]
push.v self.intro
pushi.e 2
cmp.i.v EQ
bf [34]

:[33]
pushi.e 1
pop.v.b local.battle_end

:[34]
popenv [32]
pushloc.v local.battle_end
conv.v.b
bf [36]

:[35]
pushi.e 6
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 25
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.batmusic
call.i gml_Script_snd_volume(argc=3)
popz.v

:[36]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [54]

:[37]
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [39]

:[38]
pushi.e 9
conv.i.v
b [40]

:[39]
pushi.e 19
conv.i.v

:[40]
pop.v.v self.con
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.customcon
push.v 372.x
pop.v.v 82.x
push.v 372.y
pop.v.v 82.y
push.v 372.x
push.v self.kr_actor
pushi.e -9
pop.v.v [stacktop]self.x
push.v 372.y
push.v self.kr_actor
pushi.e -9
pop.v.v [stacktop]self.y
push.v 372.sprite_index
push.v self.kr_actor
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v 584.x
push.v self.sp_actor
pushi.e -9
pop.v.v [stacktop]self.x
push.v 584.y
push.v self.sp_actor
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 123
push.v self.sp_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.sp_actor
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.sp_actor
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 893
pushenv [42]

:[41]
pushi.e 1
pop.v.i self.visible

:[42]
popenv [41]
pushi.e -5
pushi.e 0
push.v [array]self.batmusic
call.i gml_Script_snd_free(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_volume(argc=3)
popz.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_resume(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_volume(argc=3)
popz.v
pushi.e 392
pushenv [44]

:[43]
call.i instance_destroy(argc=0)
popz.v

:[44]
popenv [43]
pushi.e 360
pushenv [46]

:[45]
call.i instance_destroy(argc=0)
popz.v

:[46]
popenv [45]
pushi.e 371
pushenv [48]

:[47]
call.i instance_destroy(argc=0)
popz.v

:[48]
popenv [47]
pushi.e 868
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [52]

:[49]
pushi.e 868
pushenv [51]

:[50]
pushi.e 1
pop.v.i self.destroy

:[51]
popenv [50]

:[52]
pushi.e 357
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [54]

:[53]
pushi.e 357
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[54]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [56]

:[55]
pushi.e 357
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [57]

:[56]
push.e 0

:[57]
bf [59]

:[58]
pushi.e 39
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i global.fighting
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 317
conv.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.x
push.s "x"@50
conv.s.v
call.i gml_Script_c_var_lerp(argc=4)
popz.v
pushi.e 10
conv.i.v
pushi.e 183
conv.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
push.s "y"@52
conv.s.v
call.i gml_Script_c_var_lerp(argc=4)
popz.v
push.v self.sp
call.i gml_Script_c_sel(argc=1)
popz.v
push.d 0.1
conv.d.v
push.s "siner_add0"@18089
conv.s.v
call.i gml_Script_c_var(argc=2)
popz.v
pushi.e 20
conv.i.v
pushi.e 10
conv.i.v
pushi.e 0
conv.i.v
push.s "siner_amplitude0"@18090
conv.s.v
call.i gml_Script_c_var_lerp(argc=4)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_551_0"@34701
conv.s.v
push.s "* NOW ON TO THE NEXT STEP.../"@34702
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_553_0"@34703
conv.s.v
push.s "* I'LL BE WAITING AT MY [[Home-made Storefront Site]]/"@34704
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_554_0"@34705
conv.s.v
push.s "* IN THE [[Trash Area Closed For Repairs.]]/%"@34706
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 118
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "siner_add0"@18089
conv.s.v
call.i gml_Script_c_var(argc=2)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_564_0"@34707
conv.s.v
push.s "* COME..^1. ALONE./%"@34708
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 120
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.d 0.1
conv.d.v
push.s "siner_add0"@18089
conv.s.v
call.i gml_Script_c_var(argc=2)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_574_0"@34709
conv.s.v
push.s "* AND DON'T..^1. FORGET!/%"@34710
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 123
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_582_0"@34711
conv.s.v
push.s "* TO [[Like and Subscribe]] FOR MORE [[Hyperlink Blocked.]]/%"@34712
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 119
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 90
conv.i.v
pushi.e 5
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_591_0"@34713
conv.s.v
push.s "* HAEAHAEAHAEAHAEAH!!/%"@34698
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
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
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v

:[59]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [64]

:[60]
pushi.e 39
pop.v.i self.con
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
pushi.e 10
conv.i.v
pushi.e 317
conv.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.x
push.s "x"@50
conv.s.v
call.i gml_Script_c_var_lerp(argc=4)
popz.v
pushi.e 10
conv.i.v
pushi.e 183
conv.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
push.s "y"@52
conv.s.v
call.i gml_Script_c_var_lerp(argc=4)
popz.v
push.v self.sp
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1840
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.d 0.4
conv.d.v
push.s "siner_add0"@18089
conv.s.v
call.i gml_Script_c_var(argc=2)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_612_0"@34714
conv.s.v
push.s "* HEY!!^1! DIDN'T YOU EVER HEAR THE PHRASE^1, &* [Make Money^1, Not War]!/"@34715
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_614_0"@34716
conv.s.v
push.s "* HOW'S AN INNOCENT [Guy] LIKE ME SUPPOSED TO [Rip People Off]/"@34717
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_615_0"@34718
conv.s.v
push.s "* WHEN KIDS LIKE YOU ARE [Beating People Up]^1,/%"@34719
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 167
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.d 0.6
conv.d.v
push.s "siner_add0"@18089
conv.s.v
call.i gml_Script_c_var(argc=2)
popz.v
call.i gml_Script_c_waittalk(argc=0)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_621_0"@34720
conv.s.v
push.s "* [Spitting] IN THEIR EYES^1, THROWING SAND IN THEIR [Face],/"@34721
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_623_0"@34722
conv.s.v
push.s "* [Stomping] ON THEIR TOES^1, YANKING THEIR [Noses]/"@34723
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_625_0"@34724
conv.s.v
push.s "* AND NOT EVEN GIVING THEM A SINGLE CENT FOR IT!?/"@34725
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 13
conv.i.v
call.i gml_Script_scr_weaponcheck_inventory(argc=1)
conv.v.b
bf [62]

:[61]
push.s "obj_ch2_city05_slash_Step_0_gml_629_0"@34726
conv.s.v
push.s "* IT DOESN'T MEAN YOU CAN BEAT ME UP^1,/"@34727
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_630_0"@34728
conv.s.v
push.s "* JUST BECAUSE YOU BOUGHT MY [Commemorative Ring]!/"@34729
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_631_0"@34730
conv.s.v
push.s "* AT LEAST BUY [2]!/"@34731
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
b [63]

:[62]
push.s "obj_ch2_city05_slash_Step_0_gml_634_0"@34732
conv.s.v
push.s "* YOU SHOULD HAVE DONE ALL THAT EARLIER!/"@34733
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city05_slash_Step_0_gml_635_0"@34734
conv.s.v
push.s "* AND BEEN THE FIRST TO OWN MY [Commemorative Ring]/"@34735
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v

:[63]
push.s "obj_ch2_city05_slash_Step_0_gml_638_0"@34736
conv.s.v
push.s "* TOO BAD^1! SEE YOU KID!/%"@34737
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 167
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.d 0.8
conv.d.v
push.s "siner_add0"@18089
conv.s.v
call.i gml_Script_c_var(argc=2)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 167
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "siner_add0"@18089
conv.s.v
call.i gml_Script_c_var(argc=2)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 167
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.d 1.2
conv.d.v
push.s "siner_add0"@18089
conv.s.v
call.i gml_Script_c_var(argc=2)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 167
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.d 1.5
conv.d.v
push.s "siner_add0"@18089
conv.s.v
call.i gml_Script_c_var(argc=2)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
pushi.e 124
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 173
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "siner_add0"@18089
conv.s.v
call.i gml_Script_c_var(argc=2)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
pushi.e 133
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_waittalk(argc=0)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 90
conv.i.v
pushi.e 5
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
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
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v

:[64]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [66]

:[65]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [67]

:[66]
push.e 0

:[67]
bf [69]

:[68]
pushi.e 50
pop.v.i self.con
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[69]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [71]

:[70]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [72]

:[71]
push.e 0

:[72]
bf [76]

:[73]
pushi.e 0
pop.v.i self.con
pushi.e 85
pop.v.i global.plot
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 105
conv.i.v
pushi.e 106
conv.i.v
pushi.e 560
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.dumpster_npc
pushi.e 134
pushloc.v local.dumpster_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.dumpster_npc
pushi.e -9
pushenv [75]

:[74]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[75]
popenv [74]
push.v self.dumpster
call.i instance_destroy(argc=1)
popz.v
push.v self.dumpster_nakami
call.i instance_destroy(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[76]
push.v self.play_intro
conv.v.b
bf [78]

:[77]
pushi.e 0
pop.v.b self.play_intro
push.i 169697
setowner.e
push.s "spamton_meeting_intro.ogg"@34739
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.intro
pushi.e -1
pushi.e 0
push.v [array]self.intro
call.i gml_Script_mus_loop(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.intro

:[78]
push.v self.stop_intro
conv.v.b
bf [83]

:[79]
push.v self.stop_timer
push.e 1
add.i.v
pop.v.v self.stop_timer
push.v self.stop_timer
pushi.e 1
cmp.i.v EQ
bf [81]

:[80]
pushi.e 1000
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
push.v [array]self.intro
call.i audio_sound_gain(argc=3)
popz.v

:[81]
push.v self.stop_timer
pushi.e 31
cmp.i.v GTE
bf [83]

:[82]
pushi.e 0
pop.v.b self.stop_intro
pushi.e -1
pushi.e 0
push.v [array]self.intro
call.i gml_Script_snd_free(argc=1)
popz.v

:[83]
push.v self.open_dumpster
conv.v.b
bf [end]

:[84]
pushi.e 0
pop.v.b self.open_dumpster
pushi.e 1
push.v self.dumpster_nakami
pushi.e -9
pop.v.i [stacktop]self.visible
push.i 95000
push.v self.dumpster_nakami
pushi.e -9
pop.v.i [stacktop]self.depth
push.v self.dumpster_nakami
pushi.e -9
pushenv [86]

:[85]
call.i gml_Script_scr_shakeobj(argc=0)
popz.v

:[86]
popenv [85]

:[end]