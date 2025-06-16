.localvar 2 arguments
.localvar 36255 dojo_npc 17596
.localvar 36256 puzzle_master_npc 17597
.localvar 33537 desk_marker 17598
.localvar 36257 desk_collider 17599
.localvar 36258 help_marker 17600
.localvar 36259 clover_npc 17601
.localvar 36260 blockguy_npc 17602
.localvar 36261 pippins_npc 17603
.localvar 36262 were_npc 17604

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 283
conv.i.v
pushi.e 220
conv.i.v
pushi.e 290
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.dojo_npc
pushloc.v local.dojo_npc
pushi.e -9
pushenv [2]

:[1]
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[2]
popenv [1]
pushi.e 89
conv.i.v
pushi.e 80
conv.i.v
pushi.e 130
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.puzzle_master_npc
pushloc.v local.puzzle_master_npc
pushi.e -9
pushenv [4]

:[3]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[4]
popenv [3]
pushi.e 3218
conv.i.v
pushi.e 112
conv.i.v
pushi.e 84
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v local.desk_marker
pushloc.v local.puzzle_master_npc
pushi.e -9
push.v [stacktop]self.depth
pushi.e 10
sub.i.v
pushloc.v local.desk_marker
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1144
conv.i.v
pushi.e 115
conv.i.v
pushi.e 84
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.desk_collider
pushi.e 4
pushloc.v local.desk_collider
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.d 1.5
pushloc.v local.desk_collider
pushi.e -9
pop.v.d [stacktop]self.image_yscale
pushi.e 3217
conv.i.v
pushi.e 30
conv.i.v
pushi.e 115
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v local.help_marker
pushloc.v local.help_marker
pushi.e -9
pushenv [6]

:[5]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[6]
popenv [5]
pushi.e 103
conv.i.v
pushi.e 248
conv.i.v
pushi.e 370
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.clover_npc
pushi.e 1584
pushloc.v local.clover_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.clover_npc
pushi.e -9
pushenv [8]

:[7]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[8]
popenv [7]
pushi.e 103
conv.i.v
pushi.e 78
conv.i.v
pushi.e 480
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.blockguy_npc
pushi.e 1623
pushloc.v local.blockguy_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.blockguy_npc
pushi.e -9
pushenv [10]

:[9]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[10]
popenv [9]
pushi.e -5
pushi.e 640
push.v [array]self.flag
pushi.e 1
cmp.i.v NEQ
bt [12]

:[11]
pushglb.v global.plot
pushi.e 200
cmp.i.v LT
b [13]

:[12]
push.e 1

:[13]
bf [17]

:[14]
pushi.e 103
conv.i.v
pushi.e 200
conv.i.v
pushi.e 472
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.pippins_npc
pushi.e 1274
pushloc.v local.pippins_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.pippins_npc
pushi.e -9
pushenv [16]

:[15]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[16]
popenv [15]
b [end]

:[17]
pushi.e 103
conv.i.v
pushi.e 220
conv.i.v
pushi.e 452
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.were_npc
pushi.e 2082
pushloc.v local.were_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.were_npc
pushi.e -9
pushenv [19]

:[18]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[19]
popenv [18]

:[end]