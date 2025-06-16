.localvar 2 arguments

:[0]
push.v self.actor
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 774
conv.i.v
push.v self.y
pushi.e 3
sub.i.v
pushi.e 6
conv.i.v
call.i irandom(argc=1)
add.v.v
push.v self.x
pushi.e 3
sub.i.v
pushi.e 6
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.zap
push.v self.id
push.v self.zap
pushi.e -9
pop.v.v [stacktop]self.actor
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