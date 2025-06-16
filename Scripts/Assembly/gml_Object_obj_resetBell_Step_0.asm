.localvar 2 arguments

:[0]
push.v self.play
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i global.interact
push.v self.timer
push.e 1
sub.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 0
cmp.i.v EQ
bf [end]

:[2]
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.play

:[end]