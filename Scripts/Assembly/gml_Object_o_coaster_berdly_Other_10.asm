.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [end]

:[2]
pushi.e 507
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
pushi.e 25
conv.i.v
pushi.e 20
conv.i.v
call.i random_range(argc=2)
add.v.v
push.v self.x
pushi.e 90
conv.i.v
pushi.e 40
conv.i.v
call.i random_range(argc=2)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.o
pushi.e 360
conv.i.v
call.i random(argc=1)
push.v self.o
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
call.i random_range(argc=2)
push.v self.o
pushi.e -9
pop.v.v [stacktop]self.speed
pushi.e 507
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
pushi.e 25
conv.i.v
pushi.e 20
conv.i.v
call.i random_range(argc=2)
add.v.v
push.v self.x
pushi.e 45
conv.i.v
pushi.e 40
conv.i.v
call.i random_range(argc=2)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.o
pushi.e 360
conv.i.v
call.i random(argc=1)
push.v self.o
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
call.i random_range(argc=2)
push.v self.o
pushi.e -9
pop.v.v [stacktop]self.speed
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]