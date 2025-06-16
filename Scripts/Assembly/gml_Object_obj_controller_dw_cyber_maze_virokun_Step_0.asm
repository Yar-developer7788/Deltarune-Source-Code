.localvar 2 arguments

:[0]
push.v self.viro
pushi.e 1
cmp.b.v EQ
bf [end]

:[1]
pushi.e 240
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [end]

:[2]
pushi.e 0
pop.v.b self.viro
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 391
pop.v.v [array]self.flag

:[end]