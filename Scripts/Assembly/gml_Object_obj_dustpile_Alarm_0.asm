.localvar 2 arguments

:[0]
push.v self.bust
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v self.obj_dustball
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 60
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]