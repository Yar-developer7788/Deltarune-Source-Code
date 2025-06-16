.localvar 2 arguments

:[0]
push.v self.wall_destroy
pushi.e 1
cmp.i.v EQ
bf [9]

:[1]
push.v self.x
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 80
sub.i.v
cmp.v.v LT
bf [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
push.v self.x
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 760
add.i.v
cmp.v.v GT
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
push.v self.y
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 80
sub.i.v
cmp.v.v LT
bf [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
push.v self.y
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 580
add.i.v
cmp.v.v GT
bf [9]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[9]
push.v self.updateimageangle
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.v self.direction
pop.v.v self.image_angle

:[11]
push.v self.countdown
pushi.e 0
cmp.i.v GT
bf [16]

:[12]
push.v self.speed
pushi.e 0
cmp.i.v GT
bf [14]

:[13]
push.v self.speed
push.e 1
sub.i.v
pop.v.v self.speed

:[14]
push.v self.countdown
push.e 1
sub.i.v
pop.v.v self.countdown
push.v self.countdown
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.b self.spawning
push.d 0.3333333333333333
pop.v.d self.image_speed

:[16]
push.v self.spawning
conv.v.b
not.b
bf [18]

:[17]
push.v self.spawnVirus
pushi.e 1
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [22]

:[20]
push.v self.virus_timer
push.v self.image_speed
add.v.v
pop.v.v self.virus_timer
push.v self.virus_timer
pushi.e 3
cmp.i.v GTE
bf [22]

:[21]
pushi.e 0
pop.v.i self.spawnVirus
pushi.e 419
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_childbullet(argc=3)
pop.v.v self.d
push.d 0.1
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.speed
push.d -0.1
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.friction
push.v 631.y
push.v 631.x
push.v self.y
push.v self.x
call.i point_direction(argc=4)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction

:[22]
push.v self.active
conv.v.b
not.b
bt [24]

:[23]
push.v self.image_alpha
push.d 0.8
cmp.d.v LT
b [25]

:[24]
push.e 1

:[25]
bf [27]

:[26]
exit.i

:[27]
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 361
conv.i.v
push.v self.y
pushi.e 5
add.i.v
push.v self.x
pushi.e 14
add.i.v
push.v self.y
pushi.e 5
sub.i.v
push.v self.x
pushi.e 14
sub.i.v
call.i collision_rectangle(argc=7)
pop.v.v self.infecttarget
push.v self.infecttarget
pushi.e -4
cmp.i.v NEQ
bf [end]

:[28]
push.v self.infecttarget
pushi.e -9
push.v [stacktop]self.object_index
pushi.e 414
cmp.i.v EQ
bf [30]

:[29]
push.v self.infecttarget
pushi.e -9
push.v [stacktop]self.image_alpha
push.d 0.5
cmp.d.v GT
b [31]

:[30]
push.e 0

:[31]
bf [35]

:[32]
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.spawnVirus
pushi.e 2658
pop.v.i self.sprite_index
pushi.e 0
pop.v.b self.spawning
push.d 0.6666666666666666
pop.v.d self.image_speed
push.v self.depth
push.e 1
sub.i.v
pop.v.v self.depth
pushi.e 0
pop.v.i self.speed
push.v self.infecttarget
pushi.e -9
push.v [stacktop]self.topspeed
pushi.e 0
cmp.i.v EQ
bf [34]

:[33]
push.v self.infecttarget
pushi.e -9
push.v [stacktop]self.speed
push.v self.infecttarget
pushi.e -9
pop.v.v [stacktop]self.topspeed

:[34]
pushi.e 0
push.v self.infecttarget
pushi.e -9
pop.v.i [stacktop]self.speed
b [end]

:[35]
push.v self.infecttarget
pushi.e -9
push.v [stacktop]self.object_index
pushi.e 419
cmp.i.v EQ
bf [38]

:[36]
exit.i

:[37]
b [end]

:[38]
push.v self.infecttarget
pushi.e -9
push.v [stacktop]self.active
pushi.e 1
cmp.b.v EQ
bf [46]

:[39]
push.v self.infecttarget
pushi.e -9
push.v [stacktop]self.object_index
pushi.e 421
cmp.i.v NEQ
bt [44]

:[40]
push.v self.infecttarget
pushi.e -9
push.v [stacktop]self.direction
pushi.e 0
cmp.i.v EQ
bf [42]

:[41]
push.v self.direction
pushi.e 0
cmp.i.v NEQ
b [43]

:[42]
push.e 0

:[43]
b [45]

:[44]
push.e 1

:[45]
b [47]

:[46]
push.e 0

:[47]
bf [end]

:[48]
pushi.e 0
pop.v.b self.spawning
push.d 0.6666666666666666
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.active
pushi.e 1
pop.v.i self.spawnVirus
push.d 0.6666666666666666
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.speed
pushi.e 1
pop.v.i self.infection
pushi.e 459
conv.i.v
push.v self.infecttarget
pushi.e -9
push.v [stacktop]self.y
push.v self.infecttarget
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 939
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 3
conv.i.v
call.i irandom(argc=1)
pushi.e 90
mul.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.poisoncolor
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_blend
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v self.depth
pushi.e 1
sub.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.infecttarget
pushi.e -9
push.v [stacktop]self.object_index
pushi.e 421
cmp.i.v NEQ
bf [50]

:[49]
push.v self.infecttarget
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.targetx
push.v self.infecttarget
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.targety
push.v self.infecttarget
pushi.e -9
push.v [stacktop]self.sprite_index
pop.v.v self.targetsprite
push.v self.infecttarget
pushi.e -9
push.v [stacktop]self.image_index
pop.v.v self.targetimage
b [51]

:[50]
push.d 0.5
conv.d.v
push.v self.infecttarget
pushi.e -9
push.v [stacktop]self.x
push.v self.x
call.i lerp(argc=3)
pop.v.v self.targetx
push.d 0.5
conv.d.v
push.v self.infecttarget
pushi.e -9
push.v [stacktop]self.y
push.v self.y
call.i lerp(argc=3)
pop.v.v self.targety
push.i 16777215
pop.v.i self.poisoncolor

:[51]
push.v self.infecttarget
call.i instance_destroy(argc=1)
popz.v

:[end]