.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.spelltimer
pushi.e 40
pop.v.i self.spellmax
pushi.e 0
pop.v.i self.spelltotal
pushi.e 0
pop.v.i self.char
pushi.e 0
pop.v.i self.castyet
pushi.e 0
pop.v.i self.re_castyet
pushi.e 0
pop.v.i self.active
push.i 68097
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]