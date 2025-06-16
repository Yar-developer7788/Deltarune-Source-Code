.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [11]

:[1]
pushi.e 1198
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[2]
push.v 1198.vspeed
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [4]

:[3]
push.v 1198.vspeed
pop.v.v self.verticalDirection
push.v 1198.vspeed
call.i abs(argc=1)
pop.v.v self.spd

:[4]
push.v 1198.hspeed
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [6]

:[5]
push.v 1198.hspeed
pop.v.v self.horizontalDirection
push.v 1198.hspeed
pop.v.v self.hsp

:[6]
push.v self.verticalDirection
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
pop.v.v self.verticalDirection

:[8]
push.v self.horizontalDirection
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
pop.v.v self.horizontalDirection

:[10]
pushi.e 0
pop.v.i self.timer
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[11]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [18]

:[12]
push.v self.spd
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
pushi.e 16
conv.i.v
pushi.e 8
conv.i.v
call.i random_range(argc=2)
pop.v.v self.spd

:[14]
push.v self.x
push.v self.spd
push.v self.horizontalDirection
call.i sign(argc=1)
mul.v.v
push.v self.hsp
add.v.v
add.v.v
pop.v.v self.x
push.v self.y
push.v self.spd
push.v self.verticalDirection
call.i sign(argc=1)
mul.v.v
add.v.v
pop.v.v self.y
push.v self.image_angle
push.v self.spd
push.v self.verticalDirection
call.i sign(argc=1)
mul.v.v
pushi.e -1
mul.i.v
add.v.v
pop.v.v self.image_angle
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 15
cmp.i.v GT
bf [16]

:[15]
push.v self.image_alpha
push.d 0.7
mul.d.v
pop.v.v self.image_alpha

:[16]
push.v self.image_alpha
push.d 0.01
cmp.d.v LT
bf [18]

:[17]
call.i instance_destroy(argc=0)
popz.v

:[18]
call.i gml_Script_scr_depth_alt(argc=0)
popz.v

:[end]