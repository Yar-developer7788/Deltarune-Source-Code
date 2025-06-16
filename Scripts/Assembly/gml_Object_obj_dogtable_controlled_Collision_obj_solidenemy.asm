.localvar 2 arguments

:[0]
push.v self.vertState
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i self.vertState
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i 1201.con
push.v self.id
pop.v.v 1201.remdog
pushi.e 0
pop.v.i self.hsp
pushi.e 0
pop.v.i self.vspeed

:[end]