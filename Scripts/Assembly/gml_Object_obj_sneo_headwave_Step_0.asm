.localvar 2 arguments

:[0]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 900
add.i.v
cmp.v.v GTE
bt [4]

:[1]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 200
sub.i.v
cmp.v.v LTE
bt [4]

:[2]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 600
add.i.v
cmp.v.v GTE
bt [4]

:[3]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 200
sub.i.v
cmp.v.v LTE
b [5]

:[4]
push.e 1

:[5]
bf [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.v self.image_alpha
push.d 0.5
cmp.d.v GTE
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 1
pop.v.i self.destroyable
pushi.e 1
pop.v.i self.init

:[12]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [16]

:[13]
push.v self.speed
pushi.e 0
cmp.i.v LTE
bf [15]

:[14]
pushi.e 1
pop.v.i self.state

:[15]
b [end]

:[16]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [20]

:[17]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 5
cmp.i.v GTE
bf [19]

:[18]
pushi.e 0
pop.v.i self.timer
pushi.e 2
pop.v.i self.state
pushi.e 369
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v 631.y
pushi.e 4
add.i.v
push.v 631.x
pushi.e 4
add.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 1993
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 4
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.speed

:[19]
b [end]

:[20]
push.v self.state
pushi.e 2
cmp.i.v EQ
bf [24]

:[21]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 15
cmp.i.v GTE
bf [23]

:[22]
pushi.e 0
pop.v.i self.timer
pushi.e 3
pop.v.i self.state

:[23]
b [end]

:[24]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [32]

:[25]
push.v self.timer
pushi.e 0
cmp.i.v EQ
bf [29]

:[26]
push.v self.spin
pushi.e 24
add.i.v
pop.v.v self.spin
push.v self.spin
pushi.e 360
conv.i.d
div.d.v
push.v self.flydirection
pushi.e 180
conv.i.v
call.i lerp(argc=3)
pop.v.v self.direction
push.v self.direction
push.v self.spin
add.v.v
pushi.e 180
add.i.v
pop.v.v self.image_angle
push.v self.spin
pushi.e 360
cmp.i.v GTE
bf [28]

:[27]
push.v self.flydirection
pop.v.v self.direction
push.v self.direction
pushi.e 180
add.i.v
pop.v.v self.image_angle
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer

:[28]
b [31]

:[29]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 10
cmp.i.v GTE
bf [31]

:[30]
push.d -0.2
pop.v.d self.friction
push.d 0.1
pop.v.d self.speed
pushi.e 4
pop.v.i self.state

:[31]
b [end]

:[32]
push.v self.state
pushi.e 4
cmp.i.v EQ
bf [end]

:[33]
push.v self.speed
pushi.e 8
cmp.i.v GTE
bf [end]

:[34]
pushi.e 0
pop.v.i self.friction
pushi.e 8
pop.v.i self.speed

:[end]