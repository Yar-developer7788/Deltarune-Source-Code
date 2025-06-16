.localvar 2 arguments
.localvar 23594 targetdir 10641
.localvar 23595 centerdir 10642
.localvar 23596 centerdir2 10643

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [12]

:[1]
push.v self.image_blend
pop.v.v self.startcolor
pushi.e 1
pop.v.i self.init
push.v self.startcolor
push.i 4235519
cmp.i.v EQ
bf [3]

:[2]
pushi.e 15
conv.i.v
pushi.e -15
conv.i.v
call.i random_range(argc=2)
b [4]

:[3]
pushi.e 10
conv.i.v
pushi.e -10
conv.i.v
call.i random_range(argc=2)

:[4]
pop.v.v self.angle_offset
push.v self.platter_spawn
conv.v.b
bf [11]

:[5]
pushi.e 1
pop.v.i self.type
pushi.e 270
pop.v.i self.direction
pushi.e 1
pop.v.i self.image_alpha
push.v self.speed
pop.v.v self.target_speed
pushi.e 1
pop.v.i self.speed
pushi.e 0
pop.v.b self.platterspawn
push.v self.fixed_angle
conv.v.b
bf [10]

:[6]
push.v 631.y
pushi.e 10
add.i.v
push.v 631.x
pushi.e 10
add.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v local.targetdir
push.v 872.y
push.v 872.x
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v local.centerdir
pushi.e 30
conv.i.v
pushi.e 15
conv.i.v
call.i random_range(argc=2)
pushloc.v local.centerdir
pushloc.v local.targetdir
call.i gml_Script_scr_rotatetowards_unclamped(argc=3)
pop.v.v local.centerdir2
pushi.e 30
conv.i.v
pushi.e 15
conv.i.v
call.i random_range(argc=2)
neg.v
pushloc.v local.centerdir
pushloc.v local.targetdir
call.i gml_Script_scr_rotatetowards_unclamped(argc=3)
pop.v.v local.targetdir
push.v self.image_xscale
pushi.e 0
cmp.i.v GT
bf [8]

:[7]
pushi.e 280
conv.i.v
pushloc.v local.targetdir
call.i max(argc=2)
pop.v.v local.targetdir
b [9]

:[8]
pushi.e 260
conv.i.v
pushloc.v local.targetdir
call.i min(argc=2)
pop.v.v local.targetdir

:[9]
pushi.e 30
conv.i.v
pushi.e 15
conv.i.v
call.i random_range(argc=2)
pushloc.v local.centerdir
pushloc.v local.targetdir
call.i gml_Script_scr_rotatetowards_unclamped(argc=3)
pop.v.v self.target_angle

:[10]
b [12]

:[11]
pushi.e 2
pop.v.i self.type
push.v 631.y
pushi.e 10
add.i.v
push.v 631.x
pushi.e 10
add.i.v
push.v self.ystart
push.v self.xstart
call.i point_direction(argc=4)
pushi.e 5
conv.i.v
pushi.e -5
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.direction
push.v self.direction
call.i string(argc=1)
call.i gml_Script_debug_message(argc=1)
popz.v

:[12]
push.v self.speed
push.v self.target_speed
cmp.v.v LT
bf [21]

:[13]
push.v self.spawntimer
push.e 1
add.i.v
pop.v.v self.spawntimer
push.v self.startcolor
push.i 4235519
cmp.i.v EQ
bf [15]

:[14]
push.d 0.2
conv.d.v
push.v self.target_speed
push.v self.speed
call.i gml_Script_scr_movetowards(argc=3)
pop.v.v self.speed
b [16]

:[15]
push.d 0.25
conv.d.v
push.v self.target_speed
push.v self.speed
call.i gml_Script_scr_movetowards(argc=3)
pop.v.v self.speed

:[16]
push.v self.fixed_angle
conv.v.b
bf [18]

:[17]
push.v self.speed
pushi.e 1
sub.i.v
push.v self.target_speed
pushi.e 1
sub.i.v
div.v.v
push.v self.target_angle
pushi.e 270
conv.i.v
call.i lerp(argc=3)
pop.v.v self.direction
b [19]

:[18]
push.v 631.y
pushi.e 10
add.i.v
push.v 631.x
pushi.e 10
add.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
push.v self.angle_offset
add.v.v
pop.v.v self.target_angle
pushi.e 15
conv.i.v
push.v self.target_angle
push.v self.direction
call.i gml_Script_scr_rotatetowards(argc=3)
pop.v.v self.direction

:[19]
push.v self.spawntimer
pushi.e 6
cmp.i.v EQ
bf [21]

:[20]
push.v self.depth
pushi.e 11
sub.i.v
pop.v.v self.depth

:[21]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [end]

:[22]
push.v self.x
push.v self.xstart
cmp.v.v GT
bf [24]

:[23]
pushi.e 1
pop.v.i self.image_xscale
b [end]

:[24]
pushi.e -1
pop.v.i self.image_xscale

:[end]