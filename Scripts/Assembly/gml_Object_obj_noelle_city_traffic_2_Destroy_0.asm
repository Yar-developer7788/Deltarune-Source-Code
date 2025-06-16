.localvar 2 arguments

:[0]
pushi.e 1279
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 0
pop.v.b 1279.fakeNoelleActive

:[2]
pushi.e 276
pushenv [4]

:[3]
pushi.e 1
pop.v.b self.visible

:[4]
popenv [3]

:[end]