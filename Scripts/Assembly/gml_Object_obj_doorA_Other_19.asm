.localvar 2 arguments

:[0]
pushi.e 255
pushenv [2]

:[1]
pushi.e 0
pop.v.i self.active

:[2]
popenv [1]
pushi.e 3
pop.v.i global.interact
pushi.e 190
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
push.v self.touched
pushi.e 0
cmp.i.v EQ
bf [end]

:[3]
push.i 68097
setowner.e
pushi.e 8
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm
pushi.e 8
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 1
pop.v.i self.touched

:[end]