.localvar 2 arguments

:[0]
pushi.e 1087
conv.i.v
push.v self.y
pushi.e 10
sub.i.v
pushi.e 25
conv.i.v
call.i irandom(argc=1)
add.v.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
push.i 68097
setowner.e
pushi.e 2
push.v self.refresh
call.i irandom(argc=1)
add.v.i
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm

:[end]