.localvar 2 arguments

:[0]
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[1]
pushi.e 618
conv.i.v
push.v self.y
pushi.e 12
add.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bullet
push.v self.bulletspeed
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.bulletspeed
push.v self.depth
pushi.e 1
sub.i.v
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.bullet
pushi.e -9
pushenv [3]

:[2]
push.v self.bulletspeed
push.v 631.y
pushi.e 8
add.i.v
push.v 631.x
pushi.e 8
add.i.v
call.i move_towards_point(argc=3)
popz.v

:[3]
popenv [2]

:[4]
pushi.e 2
pop.v.i self.image_index
pushi.e 1
pop.v.i self.image_speed

:[end]