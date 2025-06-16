.localvar 2 arguments

:[0]
push.i 65535
pop.v.i self.image_blend
pushi.e 3
pop.v.i self.image_xscale
pushi.e 3
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.flashtimer
pushi.e 0
pop.v.i self.timer
push.v 789.firstwheelattack
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e -9
pop.v.i self.timer

:[end]