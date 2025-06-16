.localvar 2 arguments
.localvar 24726 chaindirection 11791

:[0]
push.v self.broken
pushi.e 0
cmp.i.v GT
bf [7]

:[1]
push.v self.broken
pushi.e 1
cmp.i.v EQ
bf [6]

:[2]
pushi.e 1
conv.i.v
push.d 0.75
conv.d.v
pushi.e 631
push.v self.x
sub.v.i
pushi.e 18
conv.i.v
call.i gml_Script_scr_getlaunchdirection(argc=4)
pop.v.v self.direction
pushi.e 18
pop.v.i self.speed
push.d 0.75
pop.v.d self.gravity
push.v self.y
push.v self.x
push.v self.ystart
push.v self.xstart
call.i point_direction(argc=4)
pop.v.v local.chaindirection
pushi.e 0
pop.v.i self.i

:[3]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [5]

:[4]
push.v self.i
pushi.e 4
conv.i.d
div.d.v
push.v self.x
push.v self.xstart
call.i lerp(argc=3)
pop.v.v self.xx
push.v self.i
pushi.e 4
conv.i.d
div.d.v
push.v self.y
push.v self.ystart
call.i lerp(argc=3)
pop.v.v self.yy
pushi.e 352
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushloc.v local.chaindirection
push.v self.flip
pushi.e -90
mul.i.v
add.v.v
pushi.e 15
conv.i.v
pushi.e -15
conv.i.v
call.i random_range(argc=2)
add.v.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
push.d 0.75
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.gravity
pushi.e 15
conv.i.v
pushi.e 2
conv.i.v
call.i random_range(argc=2)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.speed
push.v self.sprite_index
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_index
push.v self.depth
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [3]

:[5]
pushi.e 2
pop.v.i self.broken

:[6]
exit.i

:[7]
push.v self.hitstun
pushi.e 0
cmp.i.v GT
bf [9]

:[8]
push.v self.hitstun
push.e 1
sub.i.v
pop.v.v self.hitstun
exit.i

:[9]
push.v self.bufferstate
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
call.i gml_Script_scr_queen_buffercheck(argc=0)
conv.v.b
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
push.i 8421504
pop.v.i self.image_blend
pushi.e 1
pop.v.i self.bufferstate
b [19]

:[14]
push.v self.bufferstate
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
call.i gml_Script_scr_queen_buffercheck(argc=0)
conv.v.b
not.b
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
push.i 16777215
pop.v.i self.image_blend
pushi.e 2
pop.v.i self.bufferstate

:[19]
push.v self.bufferstate
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
exit.i

:[21]
push.v self.loading
pushi.e 0
cmp.i.v GT
bf [23]

:[22]
exit.i

:[23]
push.v self.timer
pushi.e 165
cmp.i.v LT
bf [25]

:[24]
push.v self.timer
pushi.e 10
mul.i.v
push.v self.flip
mul.v.v
push.v self.direction
add.v.v
pushi.e 340
conv.i.v
push.v self.timer
pushi.e 2
mul.i.v
call.i min(argc=2)
push.v self.ystart
push.v self.xstart
call.i gml_Script_scr_orbitaroundpoint_dx(argc=4)
popz.v
b [36]

:[25]
push.v self.timer
pushi.e 165
cmp.i.v GTE
bf [27]

:[26]
push.v self.impact
pushi.e 0
cmp.i.v EQ
b [28]

:[27]
push.e 0

:[28]
bf [36]

:[29]
push.d 164.6
pop.v.d self.timer
push.v self.timer
pushi.e 10
mul.i.v
push.v self.flip
mul.v.v
push.v self.direction
add.v.v
pushi.e 340
conv.i.v
push.v self.timer
pushi.e 2
mul.i.v
call.i min(argc=2)
push.v self.ystart
push.v self.xstart
call.i gml_Script_scr_orbitaroundpoint_dx(argc=4)
popz.v
pushi.e 193
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [31]

:[30]
pushi.e 193
conv.i.v
b [32]

:[31]
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)

:[32]
pop.v.v self.d
pushi.e 2
conv.i.v
call.i ceil(argc=1)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.shakex
pushi.e 2
conv.i.v
call.i ceil(argc=1)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.shakey
pushi.e 179
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[33]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [35]

:[34]
pushi.e 369
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 2257
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.updateimageangle
push.d 0.75
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.gravity
pushi.e 90
push.v self.flip
pushi.e -25
push.v self.i
pushi.e 10
mul.i.v
add.v.i
pushi.e 10
conv.i.v
call.i irandom(argc=1)
add.v.v
mul.v.v
add.v.i
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 20
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.speed
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [33]

:[35]
pushi.e 1
pop.v.i self.impact

:[36]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
pushi.e 0
pop.v.i self.bufferstate

:[end]