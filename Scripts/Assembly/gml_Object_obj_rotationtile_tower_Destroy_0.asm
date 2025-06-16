.localvar 2 arguments

:[0]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [6]

:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
push.v self.tilemax
cmp.v.v LT
bf [6]

:[3]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.tile
pushi.e -9
pushenv [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
popenv [4]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [2]

:[6]
push.v self.mouseKiller
pushi.e -9
pushenv [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
popenv [7]

:[end]