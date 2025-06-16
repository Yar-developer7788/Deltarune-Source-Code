.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.length
pushi.e 90
cmp.i.v LT
bf [2]

:[1]
push.v self.length
pushi.e 5
add.i.v
pop.v.v self.length

:[2]
push.v self.target_x
push.v self.place
push.v self.length
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.x
push.v self.target_y
push.v self.place
push.v self.length
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.y
push.v self.place
push.v self.myspeed
add.v.v
pop.v.v self.place
push.v self.place
pushi.e -90
cmp.i.v LT
bf [4]

:[3]
push.v self.myspeed
push.d 0.1
add.d.v
pop.v.v self.myspeed
pushi.e 1
pop.v.i self.swing
b [9]

:[4]
push.v self.place
pushi.e -90
cmp.i.v GT
bf [6]

:[5]
push.v self.swing
pushi.e 1
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
push.v self.myspeed
push.d 0.1
sub.d.v
pop.v.v self.myspeed

:[9]
push.v self.place
pushi.e 90
add.i.v
pop.v.v self.image_angle
push.v self.sprite_index
pushi.e 1977
cmp.i.v EQ
bf [11]

:[10]
push.v self.image_index
pushi.e 1
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [end]

:[13]
push.v self.sneoarmtimer
push.e 1
add.i.v
pop.v.v self.sneoarmtimer
push.v self.sneoarmtimer
pushi.e 90
cmp.i.v EQ
bf [end]

:[14]
pushi.e 0
pop.v.i self.sneoarmtimer
pushi.e 611
conv.i.v
push.v self.y
pushi.e 70
add.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bullet
pushi.e 90
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.image_angle
pushi.e 90
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.direction
pushi.e 90
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.gravity_direction
pushi.e 2
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v self.depth
pushi.e 1
sub.i.v
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e -4
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.speed

:[end]