.localvar 2 arguments

:[0]
pushi.e 215
conv.i.v
push.v 82.y
pushi.e 30
add.i.v
push.v 82.x
pushi.e 20
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dust
push.v self.dust
pushi.e -9
pushenv [2]

:[1]
pushi.e -6
pop.v.i self.vspeed
pushi.e -1
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.hspeed

:[2]
popenv [1]
push.i 68097
setowner.e
pushi.e 4
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm

:[end]