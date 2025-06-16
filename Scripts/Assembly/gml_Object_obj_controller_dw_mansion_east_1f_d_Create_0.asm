.localvar 2 arguments

:[0]
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[1]
push.v 82.x
pushi.e 200
cmp.i.v LT
bf [3]

:[2]
push.s "Left"@9464
pop.v.s self.startside
b [4]

:[3]
push.s "Right"@9468
pop.v.s self.startside

:[4]
pushi.e 0
pop.v.i self.spawnedGates
pushi.e 0
pop.v.i self.spawnedViro
pushi.e 0
pop.v.i self.viro
pushi.e 268
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[5]
pushi.e 268
pushenv [7]

:[6]
pushi.e 0
pop.v.b self.visible

:[7]
popenv [6]

:[end]