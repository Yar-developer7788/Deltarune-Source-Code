.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [5]

:[2]
pushi.e 369
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.shot
push.v self.shot
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [4]

:[3]
pushi.e 120
push.v self.i
pushi.e 60
mul.i.v
add.v.i
push.v self.shot
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 2
push.v self.shot
pushi.e -9
pop.v.i [stacktop]self.speed
push.d -0.6
push.v self.shot
pushi.e -9
pop.v.d [stacktop]self.friction
pushi.e 2050
push.v self.shot
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.shot
pushi.e -9
push.v [stacktop]self.direction
push.v self.shot
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v 648.depth
pushi.e 1
sub.i.v
push.v self.shot
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 7
push.v self.shot
pushi.e -9
pop.v.i [stacktop]self.grazepoints
pushi.e 6
push.v self.shot
pushi.e -9
pop.v.i [stacktop]self.element

:[4]
push.v self.shot
call.i gml_Script_scr_bullet_inherit(argc=1)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [1]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[end]