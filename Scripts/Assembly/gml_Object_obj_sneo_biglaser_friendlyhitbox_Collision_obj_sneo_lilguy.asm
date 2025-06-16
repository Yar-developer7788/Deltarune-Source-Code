.localvar 2 arguments

:[0]
exit.i

:[1]
push.v self.image_yscale
pushi.e 0
cmp.i.v LTE
bf [3]

:[2]
exit.i

:[3]
pushi.e 0
conv.b.v
pushi.e 1
conv.b.v
pushi.e 603
conv.i.v
push.v 632.y
push.v self.image_angle
pushi.e 600
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
push.v self.x
push.v self.image_angle
pushi.e 600
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
push.v self.y
push.v self.x
call.i collision_line(argc=7)
conv.v.b
bf [end]

:[4]
pushi.e 604
conv.i.v
push.v other.y
push.v other.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.direction
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
push.v self.depth
pushi.e 2
sub.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
call.i @@Other@@(argc=0)
call.i instance_destroy(argc=1)
popz.v

:[end]