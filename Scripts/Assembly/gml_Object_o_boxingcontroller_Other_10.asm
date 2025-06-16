.localvar 2 arguments

:[0]
push.v global.boxingphase
push.e 1
add.i.v
pop.v.v global.boxingphase
pushglb.v global.boxingphase
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.special_punch_turns
pushi.e 1
sub.i.v
pop.v.v self.special_punch_turns

:[end]