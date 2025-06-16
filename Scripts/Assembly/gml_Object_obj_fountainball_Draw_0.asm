.localvar 2 arguments

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.back
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1005
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.backball
push.d 0.1
push.v self.backball
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.d 0.1
push.v self.backball
pushi.e -9
pop.v.d [stacktop]self.image_yscale
push.i 16777215
push.v self.backball
pushi.e -9
pop.v.i [stacktop]self.image_blend
push.v self.depth
pushi.e 1
add.i.v
push.v self.backball
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.vspeed
push.v self.backball
pushi.e -9
pop.v.v [stacktop]self.vspeed
push.v self.hspeed
push.v self.backball
pushi.e -9
pop.v.v [stacktop]self.hspeed
push.v self.friction
push.v self.backball
pushi.e -9
pop.v.v [stacktop]self.friction
push.v self.gravity
push.v self.backball
pushi.e -9
pop.v.v [stacktop]self.gravity
push.v self.gravity_direction
push.v self.backball
pushi.e -9
pop.v.v [stacktop]self.gravity_direction
pushi.e 1
push.v self.backball
pushi.e -9
pop.v.i [stacktop]self.back
pushi.e 1
pop.v.i self.init

:[5]
push.v self.size
push.d 0.5
add.d.v
pop.v.v self.size
push.v self.image_xscale
push.d 0.01
add.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.01
add.d.v
pop.v.v self.image_yscale
call.i draw_self(argc=0)
popz.v
push.v self.y
pushi.e -20
push.v self.size
sub.v.i
cmp.v.v LTE
bf [end]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[end]