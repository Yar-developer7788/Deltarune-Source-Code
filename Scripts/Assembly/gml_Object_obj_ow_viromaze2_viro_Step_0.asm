.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [6]

:[1]
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
pushi.e 440
conv.i.v
pushi.e 780
conv.i.v
pushi.e 280
conv.i.v
pushi.e 740
conv.i.v
push.v 82.y
push.v 82.x
call.i point_in_rectangle(argc=6)
conv.v.b
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 1
pop.v.i self.con
push.v self.x
push.v self.sprite_width
add.v.v
pop.v.v self.x
pushi.e 2
pop.v.i self.image_xscale
push.v self.shotSpeed
pushi.e 2
sub.i.v
pop.v.v self.timer
pushi.e 1
pop.v.i self.speed

:[6]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [9]

:[7]
push.v 82.y
pushi.e 20
add.i.v
push.v 82.x
pushi.e 10
add.i.v
push.v self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i point_direction(argc=4)
pop.v.v self.direction
pushi.e 4
pop.v.i self.speed
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
push.v self.shotSpeed
cmp.v.v GTE
bf [9]

:[8]
pushi.e 265
conv.i.v
push.v self.y
pushi.e 65
add.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.spear
push.v 82.y
pushi.e 20
add.i.v
push.v 82.x
pushi.e 10
add.i.v
push.v self.spear
pushi.e -9
push.v [stacktop]self.y
push.v self.spear
pushi.e -9
push.v [stacktop]self.x
call.i point_direction(argc=4)
push.v self.spear
pushi.e -9
pop.v.v [stacktop]self.direction
push.v self.spear
pushi.e -9
push.v [stacktop]self.direction
push.v self.spear
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.depth
pushi.e 20
sub.i.v
push.v self.spear
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 20
conv.i.v
call.i random(argc=1)
pushi.e 50
add.i.v
pop.v.v self.shotSpeed
pushi.e 0
pop.v.i self.timer

:[9]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [end]

:[10]
push.v 82.y
push.v 82.x
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.direction
push.v self.direction
pushi.e 180
mul.i.v
pop.v.v self.direction
pushi.e 8
pop.v.i self.speed
pushi.e 4
pop.v.i self.con

:[end]