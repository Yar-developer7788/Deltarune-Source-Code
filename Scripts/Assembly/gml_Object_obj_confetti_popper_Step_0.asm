.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 15
cmp.i.v LT
bf [3]

:[2]
pushi.e 551
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.direction
pushi.e 20
add.i.v
push.v self.direction
pushi.e 20
sub.i.v
call.i random_range(argc=2)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
push.v self.height
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.height
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]