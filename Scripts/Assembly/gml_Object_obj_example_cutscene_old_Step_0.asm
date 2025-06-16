.localvar 2 arguments

:[0]
pushi.e 74
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [4]

:[1]
pushi.e 82
pushenv [3]

:[2]
pushi.e 649
conv.i.v
pushi.e 650
conv.i.v
pushi.e 15
conv.i.v
pushi.e 10
conv.i.v
push.v self.y
pushi.e 30
conv.i.v
pushi.e -30
conv.i.v
call.i random_range(argc=2)
add.v.v
push.v self.x
pushi.e 200
conv.i.v
pushi.e -200
conv.i.v
call.i random_range(argc=2)
add.v.v
call.i gml_Script_scr_jump_to_point_sprite(argc=6)
popz.v

:[3]
popenv [2]

:[4]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [7]

:[5]
push.v 82.x
push.v self.x
cmp.v.v GTE
bf [7]

:[6]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact

:[10]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [14]

:[11]
pushi.e 2
pop.v.i self.con
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
pushi.e 0
pop.v.i self.kr
pushi.e 893
conv.i.v
push.v 82.y
push.v 82.x
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
pushi.e 82
pushenv [13]

:[12]
pushi.e 0
pop.v.i self.visible

:[13]
popenv [12]
pushi.e 1
pop.v.i self.su
pushi.e 893
conv.i.v
push.v 82.y
push.v 82.x
pushi.e 300
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.su_actor
push.s "susie"@70
conv.s.v
push.v self.su_actor
push.v self.su
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 983
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 50
conv.i.v
pushi.e 4
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "Susie"@4904
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
pushi.e 48
conv.i.v
pushi.e 193
conv.i.v
pushi.e 757
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_specialsprite(argc=1)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 40
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_waittalk(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 6
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.s "d"@6706
conv.s.v
pushi.e 16
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
pushi.e 15
conv.i.v
pushi.e 3
conv.i.v
push.s "r"@6696
conv.s.v
pushi.e 30
conv.i.v
call.i gml_Script_c_delaywalk(argc=4)
popz.v
push.s "u"@6708
conv.s.v
pushi.e 46
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 60
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 75
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
pushi.e 20
conv.i.v
pushi.e 193
conv.i.v
pushi.e 757
conv.i.v
pushi.e 95
conv.i.v
call.i gml_Script_c_delaywalkdirect(argc=4)
popz.v
pushi.e 996
conv.i.v
push.s "sprite"@9580
conv.s.v
pushi.e 116
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
pushi.e 186
conv.i.v
push.s "soundplay"@4
conv.s.v
pushi.e 116
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 3
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 3
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 15
conv.i.v
pushi.e 3
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 75
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 996
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shake(argc=0)
popz.v
pushi.e 65
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 30
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
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 1449
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 175
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
call.i gml_Script_c_waittalk(argc=0)
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
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 2
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
call.i gml_Script_c_waittalk(argc=0)
popz.v
pushi.e 90
conv.i.v
pushi.e 8
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
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
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
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[14]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [end]

:[15]
pushi.e 898
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [end]

:[16]
pushi.e 3
pop.v.i self.con
pushi.e 0
pop.v.i global.interact

:[end]