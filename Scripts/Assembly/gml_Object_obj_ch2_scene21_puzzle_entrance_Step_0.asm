.localvar 2 arguments
.localvar 31973 swan_interact 16427

:[0]
pushglb.v global.plot
pushi.e 140
cmp.i.v LT
bf [23]

:[1]
push.v self.con
pushi.e -1
cmp.i.v EQ
bf [3]

:[2]
push.v self.swanboat
pushi.e -9
push.v [stacktop]self.x
pushi.e 40
cmp.i.v GTE
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 1
pop.v.i global.facing

:[6]
push.v self.con
pushi.e -1
cmp.i.v EQ
bf [8]

:[7]
push.v self.swanboat
pushi.e -9
push.v [stacktop]self.x
pushi.e 136
cmp.i.v GTE
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 1
push.v self.swanboat
pushi.e -9
pop.v.b [stacktop]self.pause_x_move
pushi.e 3294
push.v self.swanboat
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 57
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 99
push.v self.swanboat
pushi.e -9
pop.v.i [stacktop]self.con
pushi.e 0
push.v self.swanboat
pushi.e -9
pop.v.i [stacktop]self.active
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v

:[11]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
pushi.e 2
pop.v.i self.con
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
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_puzzle_entrance_slash_Step_0_gml_33_0"@32003
conv.s.v
push.s "\\EL* H-huh? There's something blocking the way.../%"@32004
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
pushi.e 16
conv.i.v
pushi.e 4
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 17
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 8
conv.i.v
pushi.e 4
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 6
conv.i.v
pushi.e 4
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_puzzle_entrance_slash_Step_0_gml_50_0"@32005
conv.s.v
push.s "\\EJ* Maybe we can find some way to get rid of this...?/%"@32006
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[13]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [15]

:[14]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [16]

:[15]
push.e 0

:[16]
bf [22]

:[17]
pushi.e 99
pop.v.i self.con
pushi.e 82
pushenv [19]

:[18]
pushi.e 0
pop.v.i self.fun

:[19]
popenv [18]
pushi.e 276
pushenv [21]

:[20]
pushi.e 1
pop.v.i self.follow
pushi.e 0
pop.v.i self.fun

:[21]
popenv [20]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 1144
conv.i.v
pushi.e 320
conv.i.v
pushi.e 200
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bottom_collider
pushi.e 0
push.v self.bottom_collider
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 6
push.v self.bottom_collider
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 105
conv.i.v
push.v self.swanboat
pushi.e -9
push.v [stacktop]self.y
pushi.e 80
add.i.v
push.v self.swanboat
pushi.e -9
push.v [stacktop]self.x
pushi.e 50
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.swan_interact
pushi.e 0
pushloc.v local.swan_interact
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 4
pushloc.v local.swan_interact
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 140
pop.v.i global.plot

:[22]
b [end]

:[23]
push.v self.remove_collider
conv.v.b
bf [end]

:[24]
pushi.e 1
pop.v.i global.facing
pushi.e 0
pop.v.b self.remove_collider
push.v self.left_collider
pushi.e -9
pushenv [26]

:[25]
call.i instance_destroy(argc=0)
popz.v

:[26]
popenv [25]
push.v self.right_collider
pushi.e -9
pushenv [28]

:[27]
call.i instance_destroy(argc=0)
popz.v

:[28]
popenv [27]

:[end]