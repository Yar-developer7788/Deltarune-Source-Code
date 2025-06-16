.localvar 2 arguments

:[0]
pushi.e 660
conv.i.v
push.v self.y
pushi.e 4
sub.i.v
pushi.e 8
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.x
pushi.e 4
sub.i.v
pushi.e 8
conv.i.v
call.i random(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.part
pushi.e -5
pushi.e 38
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.part
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 7
pushi.e 13
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.part
pushi.e -9
pop.v.v [stacktop]self.speed
push.v self.direction
pushi.e 180
sub.i.v
push.v self.part
pushi.e -9
pop.v.v [stacktop]self.image_angle

:[end]