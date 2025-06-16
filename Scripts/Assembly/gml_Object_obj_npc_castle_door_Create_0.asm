.localvar 2 arguments
.localvar 18101 yPos 7433
.localvar 18102 bloxer 7434
.localvar 18103 lost_animals 7435
.localvar 18104 tasque 7436
.localvar 18106 maus 7437
.localvar 18108 poppup 7439
.localvar 10175 car 7440

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.howl_con
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [32]

:[1]
pushi.e -5
pushi.e 302
push.v [array]self.flag
pushi.e 1
cmp.i.v GTE
bf [9]

:[2]
pushi.e -5
pushi.e 642
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 185
conv.i.v
b [5]

:[4]
pushi.e 205
conv.i.v

:[5]
pop.v.v local.yPos
pushi.e 103
conv.i.v
pushloc.v local.yPos
pushi.e 115
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.bloxer
pushi.e -5
pushi.e 642
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1627
conv.i.v
b [8]

:[7]
pushi.e 1626
conv.i.v

:[8]
pushloc.v local.bloxer
pushi.e -9
pop.v.v [stacktop]self.sprite_index

:[9]
pushglb.v global.plot
pushi.e 200
cmp.i.v GTE
bf [31]

:[10]
pushi.e 0
pop.v.i local.lost_animals
pushi.e -5
pushi.e 642
push.v [array]self.flag
pushi.e 1
cmp.i.v NEQ
bf [23]

:[11]
pushi.e -5
pushi.e 632
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [15]

:[12]
pushi.e 133
conv.i.v
pushi.e 370
conv.i.v
pushi.e 280
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.tasque
pushi.e 1672
pushloc.v local.tasque
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 1
pushloc.v local.tasque
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 2
pushloc.v local.tasque
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
pushloc.v local.tasque
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushloc.v local.tasque
pushi.e -9
pushenv [14]

:[13]
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 7
conv.i.v
call.i path_start(argc=4)
popz.v

:[14]
popenv [13]
push.v local.lost_animals
push.e 1
add.i.v
pop.v.v local.lost_animals

:[15]
pushi.e -5
pushi.e 634
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [19]

:[16]
pushi.e 133
conv.i.v
pushi.e 320
conv.i.v
pushi.e 290
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.maus
pushi.e 1746
pushloc.v local.maus
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 1
pushloc.v local.maus
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 2
pushloc.v local.maus
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
pushloc.v local.maus
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushloc.v local.maus
pushi.e -9
pushenv [18]

:[17]
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 7
conv.i.v
call.i path_start(argc=4)
popz.v
push.d 0.2
pop.v.d self.path_position

:[18]
popenv [17]
push.v local.lost_animals
push.e 1
add.i.v
pop.v.v local.lost_animals

:[19]
pushi.e -5
pushi.e 631
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [23]

:[20]
pushi.e 133
conv.i.v
pushi.e 260
conv.i.v
pushi.e 300
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.poppup
pushi.e 1163
pushloc.v local.poppup
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 1
pushloc.v local.poppup
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 2
pushloc.v local.poppup
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
pushloc.v local.poppup
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushloc.v local.poppup
pushi.e -9
pushenv [22]

:[21]
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 7
conv.i.v
call.i path_start(argc=4)
popz.v
push.d 0.4
pop.v.d self.path_position

:[22]
popenv [21]
push.v local.lost_animals
push.e 1
add.i.v
pop.v.v local.lost_animals

:[23]
pushloc.v local.lost_animals
pushi.e 0
cmp.i.v EQ
bf [26]

:[24]
pushi.e -5
pushi.e 462
push.v [array]self.flag
pushi.e 3
cmp.i.v LT
bf [26]

:[25]
pushi.e -5
pushi.e 465
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [27]

:[26]
push.e 0

:[27]
bf [31]

:[28]
pushi.e 133
conv.i.v
pushi.e 330
conv.i.v
pushi.e 280
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.car
pushi.e 2141
pushloc.v local.car
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 1
pushloc.v local.car
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 2
pushloc.v local.car
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
pushloc.v local.car
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushloc.v local.car
pushi.e -9
pushenv [30]

:[29]
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 7
conv.i.v
call.i path_start(argc=4)
popz.v

:[30]
popenv [29]

:[31]
b [end]

:[32]
call.i instance_destroy(argc=0)
popz.v

:[end]