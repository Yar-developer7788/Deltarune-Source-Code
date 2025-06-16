.localvar 2 arguments

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [7]

:[1]
push.v self.dir
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.s "right"@4637
conv.s.v
push.s "left"@5994
conv.s.v
call.i choose(argc=2)
pop.v.v self.dir

:[3]
push.v self.image_xscale
pushi.e 0
cmp.i.v GT
bf [5]

:[4]
push.s "left"@5994
pop.v.s self.dir
b [6]

:[5]
push.s "right"@4637
pop.v.s self.dir

:[6]
pushi.e 1
pop.v.i self.init

:[7]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [12]

:[8]
pushi.e 1198
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [10]

:[9]
push.v 1198.y
push.v 1198.x
call.i distance_to_point(argc=2)
pop.v.v self.distance

:[10]
push.v self.distance
push.v self.distancechecker
cmp.v.v LTE
bf [12]

:[11]
pushi.e 1
pop.v.i self.con

:[12]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [17]

:[13]
pushi.e 1281
pop.v.i self.sprite_index
push.v self.dir
push.s "left"@5994
cmp.s.v EQ
bf [15]

:[14]
pushi.e -10
pop.v.i self.hspeed
pushi.e -4
pop.v.i self.vspeed
push.d 0.25
pop.v.d self.image_speed
b [16]

:[15]
pushi.e 10
pop.v.i self.hspeed
pushi.e -4
pop.v.i self.vspeed
push.d 0.25
pop.v.d self.image_speed

:[16]
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[17]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [30]

:[18]
push.v self.dir
push.s "left"@5994
cmp.s.v EQ
bf [20]

:[19]
push.v self.x
pushi.e 20
cmp.i.v LTE
b [21]

:[20]
push.e 0

:[21]
bf [24]

:[22]
pushi.e 20
pop.v.i self.x
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.image_speed
push.v self.image_alpha
push.d 0.6
mul.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.01
cmp.d.v LT
bf [24]

:[23]
call.i instance_destroy(argc=0)
popz.v

:[24]
push.v self.dir
push.s "right"@4637
cmp.s.v EQ
bf [26]

:[25]
push.v self.x
pushi.e 640
cmp.i.v GTE
b [27]

:[26]
push.e 0

:[27]
bf [30]

:[28]
pushi.e 640
pop.v.i self.x
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.image_speed
push.v self.image_alpha
push.d 0.6
mul.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.01
cmp.d.v LT
bf [30]

:[29]
call.i instance_destroy(argc=0)
popz.v

:[30]
push.v self.con
pushi.e 69
cmp.i.v EQ
bf [36]

:[31]
push.v self.dir
push.s "left"@5994
cmp.s.v EQ
bf [33]

:[32]
pushi.e -1
pop.v.i self.horizontalDirection

:[33]
push.v self.dir
push.s "right"@4637
cmp.s.v EQ
bf [35]

:[34]
pushi.e 1
pop.v.i self.horizontalDirection

:[35]
pushi.e -1
pop.v.i self.verticalDirection
pushi.e 0
pop.v.i self.hspeed
pushi.e 1815
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.timer
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[36]
push.v self.con
pushi.e 70
cmp.i.v EQ
bf [41]

:[37]
push.v self.x
pushi.e 16
push.v self.horizontalDirection
call.i sign(argc=1)
mul.v.i
add.v.v
pop.v.v self.x
push.v self.y
pushi.e 32
push.v self.verticalDirection
call.i sign(argc=1)
mul.v.i
add.v.v
pop.v.v self.y
push.v self.image_angle
pushi.e 16
push.v self.verticalDirection
call.i sign(argc=1)
mul.v.i
pushi.e -1
mul.i.v
add.v.v
pop.v.v self.image_angle
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
cmp.i.v GT
bf [39]

:[38]
push.v self.image_alpha
push.d 0.9
mul.d.v
pop.v.v self.image_alpha

:[39]
push.v self.image_alpha
push.d 0.1
cmp.d.v LT
bf [41]

:[40]
call.i instance_destroy(argc=0)
popz.v

:[41]
call.i gml_Script_scr_depth_alt(argc=0)
popz.v

:[end]