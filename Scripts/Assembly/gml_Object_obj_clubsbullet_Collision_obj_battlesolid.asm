.localvar 2 arguments

:[0]
pushi.e 369
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bul
push.v self.bul
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 1567
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.direction
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.direction
push.v self.speed
pushi.e 6
sub.i.v
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.speed
push.v self.image_angle
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.damage
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 3
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.grazepoints
pushi.e 2
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.timepoints

:[2]
pushi.e 369
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bul
push.v self.bul
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [4]

:[3]
pushi.e 1568
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.direction
pushi.e 25
sub.i.v
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.direction
push.v self.speed
pushi.e 8
sub.i.v
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.speed
push.v self.image_angle
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.damage
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 3
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.grazepoints
pushi.e 2
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.timepoints

:[4]
pushi.e 369
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bul
push.v self.bul
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [6]

:[5]
pushi.e 1566
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.direction
pushi.e 25
add.i.v
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.direction
push.v self.speed
pushi.e 8
sub.i.v
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.speed
push.v self.image_angle
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.damage
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 3
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.grazepoints
pushi.e 2
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.timepoints

:[6]
call.i instance_destroy(argc=0)
popz.v

:[end]