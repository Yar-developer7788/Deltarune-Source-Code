.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
pushi.e 82
pushenv [4]

:[2]
pushi.e 1231
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [4]

:[3]
pushi.e 1
pop.v.i other.con

:[4]
popenv [2]

:[5]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pop.v.i global.interact
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[7]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
pushi.e -999
pop.v.i self.con
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_controller_keyboard_puzzle_2_slash_Step_0_gml_18_0"@37726
conv.s.v
push.s "\\E0* Wait, is this another puzzle? You do it./%"@37727
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
pushi.e 8
conv.i.v
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 150
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 6
conv.i.v
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 86
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 12
conv.i.v
pushi.e 348
conv.i.v
pushi.e 150
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 12
conv.i.v
pushi.e 344
conv.i.v
pushi.e 86
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 13
conv.i.v
call.i gml_Script_c_wait(argc=1)
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
pushi.e 4
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
pushi.e 3
conv.i.v
push.s "con"@829
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[9]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [11]

:[10]
push.v self.cutscene_master
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 105
conv.i.v
push.v self.realral
pushi.e -9
push.v [stacktop]self.y
push.v self.realral
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.npcral
pushi.e 799
push.v self.npcral
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.realral
pushi.e -9
pop.v.b [stacktop]self.visible
pushi.e 105
conv.i.v
push.v self.realsus
pushi.e -9
push.v [stacktop]self.y
push.v self.realsus
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.npcsus
pushi.e 826
push.v self.npcsus
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.realsus
pushi.e -9
pop.v.b [stacktop]self.visible
pushi.e 0
pop.v.i global.interact
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[14]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [20]

:[15]
pushi.e -5
pushi.e 333
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [20]

:[16]
pushi.e 82
pushenv [19]

:[17]
pushi.e 1231
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [19]

:[18]
pushi.e 5
pop.v.i other.con

:[19]
popenv [17]

:[20]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [30]

:[21]
call.i gml_Script_scr_tempsave(argc=0)
popz.v
push.v self.npcral
pushi.e -9
push.v [stacktop]self.x
push.v self.realral
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.npcral
pushi.e -9
push.v [stacktop]self.y
push.v self.realral
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.realral
pushi.e -9
pushenv [23]

:[22]
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v

:[23]
popenv [22]
pushi.e 1
push.v self.realral
pushi.e -9
pop.v.b [stacktop]self.visible
push.v self.npcsus
pushi.e -9
push.v [stacktop]self.x
push.v self.realsus
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.npcsus
pushi.e -9
push.v [stacktop]self.y
push.v self.realsus
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.realsus
pushi.e -9
pushenv [25]

:[24]
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v

:[25]
popenv [24]
pushi.e 1
push.v self.realsus
pushi.e -9
pop.v.b [stacktop]self.visible
push.v self.npcral
pushi.e -9
pushenv [27]

:[26]
call.i instance_destroy(argc=0)
popz.v

:[27]
popenv [26]
push.v self.npcsus
pushi.e -9
pushenv [29]

:[28]
call.i instance_destroy(argc=0)
popz.v

:[29]
popenv [28]
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[30]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [end]

:[31]
push.v 1123.failcount
pop.v.v self.failcount
push.v self.hintcon
pushi.e 0
cmp.i.v EQ
bf [33]

:[32]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [34]

:[33]
push.e 0

:[34]
bf [37]

:[35]
push.v self.failcount
pushi.e 8
cmp.i.v EQ
bf [37]

:[36]
pushi.e 1
pop.v.i global.interact
push.v self.hintcon
push.e 1
add.i.v
pop.v.v self.hintcon
pushi.e 0
pop.v.i self.timer

:[37]
push.v self.hintcon
pushi.e 1
cmp.i.v EQ
bf [40]

:[38]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 15
cmp.i.v EQ
bf [40]

:[39]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_keyboard_puzzle_2_slash_Step_0_gml_109_0"@37728
conv.s.v
push.s "\\EQ* Um..^1. Kris?/"@37729
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_controller_keyboard_puzzle_2_slash_Step_0_gml_110_0"@37730
conv.s.v
push.s "\\EJ* Maybe you can press the same key more than once?/%"@37731
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.side
push.v self.hintcon
push.e 1
add.i.v
pop.v.v self.hintcon

:[40]
push.v self.hintcon
pushi.e 2
cmp.i.v EQ
bf [42]

:[41]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [43]

:[42]
push.e 0

:[43]
bf [end]

:[44]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
push.v self.hintcon
push.e 1
add.i.v
pop.v.v self.hintcon

:[end]