.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.state
pushi.e 0
pop.v.i self.flash
push.v 777.depth
pushi.e 3
sub.i.v
pop.v.v self.depth
push.v 789.x
pushi.e 320
cmp.i.v GT
bf [2]

:[1]
pushi.e 1
pop.v.i self.dir
pushi.e 30
pop.v.i self.x
pushi.e 215
pop.v.i self.y
pushi.e 785
conv.i.v
push.v self.y
pushi.e 33
add.i.v
push.v self.x
pushi.e 430
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 785
conv.i.v
push.v self.y
pushi.e 33
add.i.v
push.v self.x
pushi.e 350
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 785
conv.i.v
push.v self.y
pushi.e 33
add.i.v
push.v self.x
pushi.e 270
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 785
conv.i.v
push.v self.y
pushi.e 33
add.i.v
push.v self.x
pushi.e 190
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 785
conv.i.v
push.v self.y
pushi.e 33
add.i.v
push.v self.x
pushi.e 110
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 785
conv.i.v
push.v self.y
pushi.e 33
add.i.v
push.v self.x
pushi.e 30
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
b [end]

:[2]
pushi.e -1
pop.v.i self.dir
pushi.e 610
pop.v.i self.x
pushi.e 215
pop.v.i self.y
pushi.e 785
conv.i.v
push.v self.y
pushi.e 33
add.i.v
push.v self.x
pushi.e 430
sub.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 785
conv.i.v
push.v self.y
pushi.e 33
add.i.v
push.v self.x
pushi.e 350
sub.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 785
conv.i.v
push.v self.y
pushi.e 33
add.i.v
push.v self.x
pushi.e 270
sub.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 785
conv.i.v
push.v self.y
pushi.e 33
add.i.v
push.v self.x
pushi.e 190
sub.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 785
conv.i.v
push.v self.y
pushi.e 33
add.i.v
push.v self.x
pushi.e 110
sub.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 785
conv.i.v
push.v self.y
pushi.e 33
add.i.v
push.v self.x
pushi.e 30
sub.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[end]