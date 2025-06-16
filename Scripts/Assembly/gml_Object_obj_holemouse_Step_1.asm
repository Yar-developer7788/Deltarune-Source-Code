.localvar 2 arguments

:[0]
pushi.e 1188
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [end]

:[1]
pushi.e 0
pop.v.b self.visible
pushi.e 1
pop.v.i self.con
push.v self.x
pushi.e 260
cmp.i.v LT
bf [3]

:[2]
pushi.e 1194
conv.i.v
push.v self.y
pushi.e 8
add.i.v
push.v self.x
pushi.e 38
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fall
b [4]

:[3]
pushi.e 1194
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 2
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fall

:[4]
push.v self.target
push.v self.fall
pushi.e -9
pop.v.v [stacktop]self.target
call.i instance_destroy(argc=0)
popz.v

:[end]