.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [3]

:[2]
pushi.e 498
conv.i.v
push.v self.y
pushi.e 8
sub.i.v
pushi.e 50
conv.i.v
call.i random(argc=1)
sub.v.v
push.v self.x
pushi.e 40
conv.i.v
call.i random(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.particle
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
push.v self.bigcar
pushi.e 1
cmp.i.v EQ
bf [6]

:[4]
pushi.e 1
pop.v.i self.image_index
push.v self.bigcarhp
pushi.e 1
sub.i.v
pop.v.v self.bigcarhp
pushi.e 6
pop.v.i self.hspeed
push.v self.x
pushi.e 8
add.i.v
pop.v.v self.x
push.v self.bigcarhp
pushi.e 0
cmp.i.v LTE
bf [6]

:[5]
pushi.e 501
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.x
pushi.e 20
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 501
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.x
pushi.e 20
sub.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 501
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.x
pushi.e 60
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[6]
push.v self.bigcar
pushi.e 0
cmp.i.v EQ
bf [end]

:[7]
pushi.e 501
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.x
pushi.e 20
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]