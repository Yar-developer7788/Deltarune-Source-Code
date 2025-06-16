.localvar 2 arguments

:[0]
push.v self.nointeract
pushi.e 0
cmp.b.v EQ
bf [2]

:[1]
pushbltn.v builtin.room
pushi.e 134
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [6]

:[5]
pushi.e 1169
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.scaredNoelle
pushi.e 0
push.v self.scaredNoelle
pushi.e -9
pop.v.i [stacktop]self.con
push.i 133633
setowner.e
pushi.e 1
conv.i.v
push.v self.scaredNoelle
pushi.e -9
pushi.e 0
pop.v.v [array]self.alarm
call.i instance_destroy(argc=0)
popz.v

:[6]
popenv [5]
pushi.e 1164
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[7]
pushi.e 0
pop.v.i 1164.scared

:[end]