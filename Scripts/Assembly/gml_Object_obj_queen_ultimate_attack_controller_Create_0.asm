.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.variant
push.v 574.ultimateattackused
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.variant

:[2]
pushi.e 1
pop.v.i 574.ultimateattackused
pushi.e 0
pop.v.i self.dottimer
pushi.e 0
pop.v.i self.poppuptimer
pushi.e 0
pop.v.i self.poppupcount
pushi.e 0
pop.v.i self.barprogress
push.v 872.depth
pushi.e 10
add.i.v
pop.v.v self.depth

:[end]