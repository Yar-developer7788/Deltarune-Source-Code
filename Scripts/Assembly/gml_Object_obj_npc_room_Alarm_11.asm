.localvar 2 arguments

:[0]
push.i 68097
setowner.e
pushi.e 6
conv.i.v
pushi.e -1
pushi.e 11
pop.v.v [array]self.alarm
push.v self.obj_cakesmoke
push.v self.y
pushi.e 16
add.i.v
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.x
pushi.e 40
add.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.cs
push.v self.depth
push.v self.cs
pushi.e -9
pop.v.v [stacktop]self.depth

:[end]