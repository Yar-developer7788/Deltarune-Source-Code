.localvar 2 arguments

:[0]
push.v self.con
pushi.e -1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing

:[2]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [8]

:[3]
pushi.e 2
pop.v.i self.con
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
call.i gml_Script_scr_losechar(argc=0)
popz.v
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
pushi.e 0
pop.v.i self.kr
pushi.e 893
conv.i.v
pushi.e 628
conv.i.v
pushi.e -20
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.kr_actor
push.s "kris"@68
conv.s.v
push.v self.kr_actor
push.v self.kr
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 653
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 1
pop.v.i self.su
pushi.e 893
conv.i.v
pushi.e 612
conv.i.v
pushi.e -100
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.su_actor
push.s "susie"@70
conv.s.v
push.v self.su_actor
push.v self.su
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 824
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
pop.v.i self.ra
pushi.e 893
conv.i.v
pushi.e 600
conv.i.v
pushi.e -200
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ra_actor
push.s "ralsei"@72
conv.s.v
push.v self.ra_actor
push.v self.ra
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 795
push.v self.ra_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[8]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
pushi.e 3
pop.v.i self.con
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 45
conv.i.v
pushi.e 628
conv.i.v
pushi.e 242
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "u"@6708
conv.s.v
pushi.e 97
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 75
conv.i.v
pushi.e 600
conv.i.v
pushi.e 321
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 20
conv.i.v
pushi.e 549
conv.i.v
pushi.e 321
conv.i.v
pushi.e 76
conv.i.v
call.i gml_Script_c_delaywalkdirect(argc=4)
popz.v
push.s "u"@6708
conv.s.v
pushi.e 97
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 90
conv.i.v
pushi.e 612
conv.i.v
pushi.e 411
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "u"@6708
conv.s.v
pushi.e 7
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
pushi.e 45
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 1057
conv.i.v
call.i gml_Script_c_msc(argc=1)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[10]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [12]

:[11]
pushi.e 12
pop.v.i self.con
pushi.e 1
conv.i.v
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 541
conv.i.v
pushi.e 346
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "l"@6707
conv.s.v
pushi.e 6
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
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
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 795
conv.i.v
call.i gml_Script_c_sprite(argc=1)
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
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
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
push.s "obj_ch2_scene12_slash_Step_0_gml_85_0"@31062
conv.s.v
push.s "\\EH* Hey^1, why does Kris get to choose all the time!?/%"@31063
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
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 61
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
pushi.e 83
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene12_slash_Step_0_gml_100_0"@31064
conv.s.v
push.s "\\E2* Ralsei^1, you're going with me!/%"@31065
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene12_slash_Step_0_gml_104_0"@31066
conv.s.v
push.s "\\EU* H-huh!? K-Kris^1, I...!!/%"@31067
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 90
conv.i.v
pushi.e 8
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 25
conv.i.v
pushi.e -4
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_c_panspeed_wait(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 20
conv.i.v
push.v self.dogcone1
pushi.e -9
push.v [stacktop]self.x
pushi.e 40
sub.i.v
push.v self.dogcone1
pushi.e -9
push.v [stacktop]self.x
push.s "x"@50
conv.s.v
push.v self.dogcone1
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 20
conv.i.v
push.v self.dogcone1
pushi.e -9
push.v [stacktop]self.x
pushi.e 80
sub.i.v
push.v self.dogcone2
pushi.e -9
push.v [stacktop]self.x
push.s "x"@50
conv.s.v
push.v self.dogcone2
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 20
conv.i.v
push.v self.dogcone1
pushi.e -9
push.v [stacktop]self.x
pushi.e 120
sub.i.v
push.v self.dogcone3
pushi.e -9
push.v [stacktop]self.x
push.s "x"@50
conv.s.v
push.v self.dogcone3
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 30
conv.i.v
push.v self.kr_actor
call.i gml_Script_c_panobj(argc=2)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v

:[12]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [14]

:[13]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
pushi.e 50
pop.v.i self.con
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[17]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [19]

:[18]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [20]

:[19]
push.e 0

:[20]
bf [end]

:[21]
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 276
pushenv [23]

:[22]
call.i instance_destroy(argc=0)
popz.v

:[23]
popenv [22]
pushi.e 66
pop.v.i global.plot
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i self.con
call.i gml_Script_scr_tempsave(argc=0)
popz.v

:[end]