.localvar 2 arguments
.localvar 20312 bossid 9089
.localvar 21161 caid 9094

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [4]

:[2]
pushi.e 66
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [4]

:[3]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
b [5]

:[4]
push.e 0

:[5]
bf [14]

:[6]
pushi.e -4
pop.v.i self.susid
push.v self.id
pop.v.v local.bossid
pushi.e 276
pushenv [11]

:[7]
push.v self.name
push.s "susie"@70
cmp.s.v EQ
bf [11]

:[8]
pushi.e 0
pop.v.i self.visible
push.v self.id
pushloc.v local.bossid
pushi.e -9
pop.v.v [stacktop]self.caterpillarid
pushi.e 893
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pushloc.v local.bossid
pushi.e -9
pop.v.v [stacktop]self.susid
pushloc.v local.bossid
pushi.e -9
push.v [stacktop]self.susid
pushi.e -9
pushenv [10]

:[9]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_set_facing_sprites(argc=1)
popz.v
push.v self.rsprite
pop.v.v self.sprite_index

:[10]
popenv [9]

:[11]
popenv [7]
push.v self.susid
pushi.e -4
cmp.i.v EQ
bf [13]

:[12]
call.i instance_destroy(argc=0)
popz.v
b [14]

:[13]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.overalltimer

:[14]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [28]

:[15]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [25]

:[16]
push.v self.susid
pushi.e -9
pushenv [18]

:[17]
push.v self.direction
pop.v.v self.fake_direction
push.v self.direction
pushi.e 4
conv.i.v
call.i gml_Script_scr_move_step_solids_direction(argc=2)
pop.v.v self.fake_speed

:[18]
popenv [17]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
cmp.i.v GTE
bf [22]

:[19]
push.v self.susid
pushi.e -9
pushenv [21]

:[20]
push.v self.direction
pushi.e 90
add.i.v
pop.v.v self.direction

:[21]
popenv [20]
pushi.e 0
pop.v.i self.timer

:[22]
push.v self.overalltimer
push.e 1
add.i.v
pop.v.v self.overalltimer
push.v self.overalltimer
pushi.e 120
cmp.i.v GTE
bf [24]

:[23]
pushi.e 2
pop.v.i self.con

:[24]
b [28]

:[25]
push.v self.susid
pushi.e -9
pushenv [27]

:[26]
pushi.e 0
pop.v.i self.fake_speed

:[27]
popenv [26]

:[28]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [end]

:[29]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [37]

:[30]
push.v self.caterpillarid
pop.v.v local.caid
push.v self.susid
pushi.e -9
pushenv [32]

:[31]
pushloc.v local.caid
pushi.e -9
push.v [stacktop]self.y
pushloc.v local.caid
pushi.e -9
push.v [stacktop]self.x
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.direction
push.v self.direction
pop.v.v self.fake_direction
push.v self.direction
pushi.e 8
conv.i.v
call.i gml_Script_scr_move_step_solids_direction(argc=2)
pop.v.v self.fake_speed

:[32]
popenv [31]
push.v self.susid
pushi.e -9
push.v [stacktop]self.x
push.v self.caterpillarid
pushi.e -9
push.v [stacktop]self.x
sub.v.v
call.i abs(argc=1)
push.v self.susid
pushi.e -9
push.v [stacktop]self.y
push.v self.caterpillarid
pushi.e -9
push.v [stacktop]self.y
sub.v.v
call.i abs(argc=1)
add.v.v
pushi.e 12
cmp.i.v LT
bf [36]

:[33]
push.v self.susid
pushi.e -9
pushenv [35]

:[34]
call.i instance_destroy(argc=0)
popz.v

:[35]
popenv [34]
pushi.e 1
push.v self.caterpillarid
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 0
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v

:[36]
b [end]

:[37]
push.v self.susid
pushi.e -9
pushenv [39]

:[38]
pushi.e 0
pop.v.i self.fake_speed

:[39]
popenv [38]

:[end]