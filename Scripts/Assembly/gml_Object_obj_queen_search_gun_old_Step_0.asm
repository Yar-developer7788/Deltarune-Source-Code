.localvar 2 arguments
.localvar 9183 _xx 11721
.localvar 9185 _yy 11722

:[0]
push.v self.loading
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
exit.i

:[2]
push.v self.smashed
conv.v.b
bf [12]

:[3]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
cmp.i.v GTE
bf [11]

:[4]
push.v self.x
push.v self.image_angle
pushi.e -20
conv.i.v
pushi.e 64
push.v self.flip
mul.v.i
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_orbitx(argc=5)
add.v.v
pop.v.v local._xx
push.v self.y
push.v self.image_angle
pushi.e -20
conv.i.v
pushi.e 64
push.v self.flip
mul.v.i
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_orbity(argc=5)
add.v.v
pop.v.v local._yy
pushi.e 369
conv.i.v
pushloc.v local._yy
pushloc.v local._xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 2257
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.image_angle
push.v self.flip
conv.v.b
bf [6]

:[5]
pushi.e 0
conv.i.v
b [7]

:[6]
pushi.e 180
conv.i.v

:[7]
add.v.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 12
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 1
pop.v.i 536.broken
push.v self.image_angle
push.v self.flip
conv.v.b
bf [9]

:[8]
pushi.e 0
conv.i.v
b [10]

:[9]
pushi.e 180
conv.i.v

:[10]
add.v.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
call.i instance_destroy(argc=0)
popz.v

:[11]
exit.i

:[12]
push.v self.bufferstate
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
call.i gml_Script_scr_queen_buffercheck(argc=0)
conv.v.b
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
push.i 8421504
pop.v.i self.image_blend
pushi.e 1
pop.v.i self.bufferstate
b [22]

:[17]
push.v self.bufferstate
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
call.i gml_Script_scr_queen_buffercheck(argc=0)
conv.v.b
not.b
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
push.i 16777215
pop.v.i self.image_blend
pushi.e 2
pop.v.i self.bufferstate

:[22]
push.v self.bufferstate
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
exit.i

:[24]
push.v self.timer
push.v self.targetTime
cmp.v.v LT
bf [end]

:[25]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 0
cmp.i.v LT
bf [27]

:[26]
exit.i

:[27]
pushi.e -1
conv.i.v
push.v self.timer
push.v self.targetTime
div.v.v
call.i gml_Script_scr_ease_inout(argc=2)
push.v self.targetAngle
pushi.e 0
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_angle
push.v self.timer
push.v self.targetTime
cmp.v.v GTE
bf [end]

:[28]
push.v self.x
push.v self.image_angle
pushi.e -20
conv.i.v
pushi.e 64
push.v self.flip
mul.v.i
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_orbitx(argc=5)
add.v.v
pop.v.v local._xx
push.v self.y
push.v self.image_angle
pushi.e -20
conv.i.v
pushi.e 64
push.v self.flip
mul.v.i
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_orbity(argc=5)
add.v.v
pop.v.v local._yy
pushi.e 543
conv.i.v
pushloc.v local._yy
pushloc.v local._xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.image_angle
push.v self.flip
conv.v.b
bf [30]

:[29]
pushi.e 0
conv.i.v
b [31]

:[30]
pushi.e 180
conv.i.v

:[31]
add.v.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 3
pop.v.i self.state
pushi.e -15
pop.v.i self.timer
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]