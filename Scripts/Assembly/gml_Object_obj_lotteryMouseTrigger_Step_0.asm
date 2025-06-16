.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.freezeplayer
pushi.e 1
cmp.b.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i global.interact
pushi.e 1171
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [3]

:[2]
push.v self.timer
pushi.e 5
cmp.i.v GT
b [4]

:[3]
push.e 0

:[4]
bf [end]

:[5]
pushi.e 0
pop.v.b self.freezeplayer
pushi.e 0
pop.v.i global.interact

:[end]