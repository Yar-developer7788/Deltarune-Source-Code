.localvar 2 arguments
.localvar 20312 bossid 9101
.localvar 21161 caid 9102

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.susiestart
pushi.e 1
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [13]

:[5]
pushi.e -4
pop.v.i self.susid
push.v self.id
pop.v.v local.bossid
pushi.e 276
pushenv [10]

:[6]
push.v self.name
push.s "susie"@70
cmp.s.v EQ
bf [10]

:[7]
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
pushenv [9]

:[8]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_set_facing_sprites(argc=1)
popz.v
push.v self.rsprite
pop.v.v self.sprite_index

:[9]
popenv [8]

:[10]
popenv [6]
push.v self.susid
pushi.e -4
cmp.i.v EQ
bf [12]

:[11]
call.i instance_destroy(argc=0)
popz.v
b [13]

:[12]
pushi.e 1
pop.v.i self.con

:[13]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [24]

:[14]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [24]

:[15]
pushi.e 1257
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [23]

:[16]
push.v self.susid
pushi.e -9
pushenv [22]

:[17]
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e 1257
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 2
sub.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i instance_nearest(argc=3)
pop.v.v self.nearestpot
pushi.e 0
conv.b.v
pushi.e 1
conv.b.v
pushi.e 68
conv.i.v
push.v self.nearestpot
pushi.e -9
push.v [stacktop]self.y
pushi.e 52
add.i.v
push.v self.nearestpot
pushi.e -9
push.v [stacktop]self.x
pushi.e 20
add.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 2
sub.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i collision_line(argc=7)
pushi.e -4
cmp.i.v EQ
bf [19]

:[18]
push.v self.nearestpot
pushi.e -9
push.v [stacktop]self.y
pushi.e 52
add.i.v
pushi.e 10
sub.i.v
push.v self.nearestpot
pushi.e -9
push.v [stacktop]self.x
pushi.e 20
add.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 2
sub.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i point_direction(argc=4)
pop.v.v self.direction
push.v self.direction
pushi.e 8
conv.i.v
call.i gml_Script_scr_move_step_solids_direction(argc=2)
pop.v.v self.fake_speed
push.v self.direction
pop.v.v self.fake_direction
b [20]

:[19]
pushi.e 2
pop.v.i other.con

:[20]
pushi.e 1257
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [22]

:[21]
pushi.e 0
pop.v.i other.timer
push.d 1.1
pop.v.d other.con
pushi.e 0
pop.v.i self.image_index
pushi.e 836
pop.v.i self.sprite_index

:[22]
popenv [17]
b [24]

:[23]
pushi.e 2
pop.v.i self.con

:[24]
push.v self.con
push.d 1.1
cmp.d.v EQ
bf [37]

:[25]
push.v self.kick
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [31]

:[26]
pushi.e 129
conv.i.v
push.v self.susid
pushi.e -9
push.v [stacktop]self.y
push.v self.susid
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.kick
pushi.e 836
push.v self.kick
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 1
push.v self.kick
pushi.e -9
pop.v.b [stacktop]self.visible
push.v self.susid
pushi.e -9
push.v [stacktop]self.x
push.v self.susid
pushi.e -9
push.v [stacktop]self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.susid
pushi.e -9
push.v [stacktop]self.nearestpot
pushi.e -9
push.v [stacktop]self.x
cmp.v.v GT
bf [28]

:[27]
pushi.e 837
push.v self.kick
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[28]
pushi.e 2
push.v self.kick
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.kick
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.d 0.25
push.v self.kick
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.v self.kick
pushi.e -9
pushenv [30]

:[29]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[30]
popenv [29]
pushi.e 0
push.v self.susid
pushi.e -9
pop.v.b [stacktop]self.visible

:[31]
push.v self.kick
pushi.e -9
push.v [stacktop]self.image_index
pushi.e 2
cmp.i.v EQ
bf [33]

:[32]
pushi.e 1
push.v self.susid
pushi.e -9
pop.v.i [stacktop]self.active

:[33]
push.v self.kick
pushi.e -9
push.v [stacktop]self.image_index
pushi.e 4
cmp.i.v EQ
bf [37]

:[34]
pushi.e 0
push.v self.susid
pushi.e -9
pop.v.i [stacktop]self.active
pushi.e 1
push.v self.susid
pushi.e -9
pop.v.b [stacktop]self.visible
push.v self.kick
pushi.e -9
pushenv [36]

:[35]
call.i instance_destroy(argc=0)
popz.v

:[36]
popenv [35]
pushi.e 1
pop.v.i self.con

:[37]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [end]

:[38]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [46]

:[39]
push.v self.caterpillarid
pop.v.v local.caid
push.v self.susid
pushi.e -9
pushenv [41]

:[40]
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

:[41]
popenv [40]
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
bf [45]

:[42]
push.v self.susid
pushi.e -9
pushenv [44]

:[43]
call.i instance_destroy(argc=0)
popz.v

:[44]
popenv [43]
pushi.e 1
push.v self.caterpillarid
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 0
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v

:[45]
b [end]

:[46]
push.v self.susid
pushi.e -9
pushenv [48]

:[47]
pushi.e 0
pop.v.i self.fake_speed

:[48]
popenv [47]

:[end]