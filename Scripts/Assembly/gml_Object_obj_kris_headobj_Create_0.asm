.localvar 2 arguments

:[0]
pushi.e 1
pop.v.i self.follow
pushi.e 0
pop.v.i self.breakcon
pushi.e 0
pop.v.i self.breaktimer
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 82.depth
pushi.e 4
sub.i.v
pop.v.v self.depth

:[2]
pushi.e 0
pop.v.i self.miceheld
pushi.e 0
pop.v.i self.type
pushi.e 0
pop.v.i self.yoffset
pushi.e 0
pop.v.i self.mousefailcon
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [end]

:[3]
pushbltn.v builtin.room
pushi.e 145
cmp.i.v EQ
bf [end]

:[4]
pushi.e 1
pop.v.i self.type

:[end]