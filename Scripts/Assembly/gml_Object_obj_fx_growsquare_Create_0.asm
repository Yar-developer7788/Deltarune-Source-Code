.localvar 2 arguments

:[0]
pushi.e 255
pop.v.i self.color
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.timer
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e -1
pop.v.i self.target
pushi.e 4
pop.v.i self.growspeed
push.d 1.5
pop.v.d self.alpha
push.d 0.1
pop.v.d self.fadespeed
pushi.e 0
pop.v.i self.growth

:[end]