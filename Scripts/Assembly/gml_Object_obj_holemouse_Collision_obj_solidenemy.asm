.localvar 2 arguments

:[0]
pushbltn.v builtin.room
pushi.e 134
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i self.invulnerable

:[end]