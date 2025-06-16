.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.bgalpha
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.snowspeed
pushi.e 0
pop.v.i self.stimer
pushi.e 0
pop.v.i self.caster
pushi.e 0
pop.v.i self.damage
pushi.e 0
pop.v.i self.altpath
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.fncon
pushi.e 0
pop.v.i self.con
pushglb.v global.encounterno
pushi.e 82
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i self.altpath

:[end]