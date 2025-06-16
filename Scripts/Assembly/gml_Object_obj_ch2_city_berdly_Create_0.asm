.localvar 2 arguments
.localvar 14972 berdly_npc 17179

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e 0
pop.v.b self.shortened
pushi.e 2736
conv.i.v
pushi.e 75
conv.i.v
pushi.e 487
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.dogcone1
push.v self.dogcone1
pushi.e -9
pushenv [2]

:[1]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 2736
conv.i.v
pushi.e 75
conv.i.v
push.v self.dogcone1
pushi.e -9
push.v [stacktop]self.x
pushi.e 40
sub.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.dogcone2
push.v self.dogcone2
pushi.e -9
pushenv [4]

:[3]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[4]
popenv [3]
pushi.e 1144
conv.i.v
pushi.e 85
conv.i.v
push.v self.dogcone2
pushi.e -9
push.v [stacktop]self.x
pushi.e 15
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.north_collider
push.d 2.5
push.v self.north_collider
pushi.e -9
pop.v.d [stacktop]self.image_xscale
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bt [6]

:[5]
pushglb.v global.plot
pushi.e 79
cmp.i.v GTE
b [7]

:[6]
push.e 1

:[7]
bf [13]

:[8]
pushi.e -5
pushi.e 349
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [12]

:[9]
pushi.e 105
conv.i.v
pushi.e 97
conv.i.v
pushi.e 607
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.berdly_npc
pushi.e 700
pushloc.v local.berdly_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.berdly_npc
pushi.e -9
pushenv [11]

:[10]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[11]
popenv [10]

:[12]
call.i instance_destroy(argc=0)
popz.v
b [16]

:[13]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 0
cmp.i.v EQ
bf [16]

:[14]
pushi.e -5
pushi.e 30
push.v [array]self.tempflag
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
pushi.e 1
pop.v.b self.shortened

:[16]
pushi.e -5
pushi.e 915
push.v [array]self.flag
pushi.e 5
cmp.i.v GT
bf [18]

:[17]
pushi.e -5
pushi.e 916
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [25]

:[20]
pushi.e 127
conv.i.v
pushi.e 97
conv.i.v
pushi.e 386
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.savepoint
push.v self.north_collider
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [24]

:[21]
push.v self.north_collider
pushi.e -9
pushenv [23]

:[22]
call.i instance_destroy(argc=0)
popz.v

:[23]
popenv [22]

:[24]
push.v self.dogcone2
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e 30
sub.i.v
pop.i.v [stacktop]self.x
push.v self.dogcone2
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 35
add.i.v
pop.i.v [stacktop]self.y
push.v self.dogcone1
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e 67
add.i.v
pop.i.v [stacktop]self.x
push.v self.dogcone1
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 47
add.i.v
pop.i.v [stacktop]self.y
push.v self.dogcone1
pushi.e -9
dup.i 4
push.v [stacktop]self.image_angle
pushi.e 90
sub.i.v
pop.i.v [stacktop]self.image_angle
pushi.e 1236
conv.i.v
pushi.e 80
conv.i.v
pushi.e 86
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 1236
conv.i.v
pushi.e 80
conv.i.v
pushi.e 126
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 1236
conv.i.v
pushi.e 104
conv.i.v
pushi.e 880
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 1236
conv.i.v
pushi.e 136
conv.i.v
pushi.e 880
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 1236
conv.i.v
pushi.e 168
conv.i.v
pushi.e 880
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 1236
conv.i.v
pushi.e 200
conv.i.v
pushi.e 880
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
b [end]

:[25]
pushglb.v global.plot
pushi.e 79
cmp.i.v GTE
bf [end]

:[26]
pushi.e 127
conv.i.v
pushi.e 100
conv.i.v
pushi.e 460
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.savepoint

:[end]