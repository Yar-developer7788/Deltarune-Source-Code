.localvar 2 arguments

:[0]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.d 0.25
pop.v.d self.image_speed
push.i 231462
setowner.e
pushi.e 82
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.charinstance
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -5
pushi.e 1
pop.v.v [array]self.charinstance
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -5
pushi.e 2
pop.v.v [array]self.charinstance
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.shottimer
pushi.e 0
pop.v.i self.con
pushi.e 2
pop.v.i self.multiplier
pushi.e 0
pop.v.i self.timermax
pushi.e 0
pop.v.i self.shotcount
pushi.e 0
pop.v.i self.gentimer
pushi.e 0
pop.v.i self.hspeeddes
pushi.e 2300
push.v self.sprite_width
sub.v.i
pop.v.v self.viroBeltXPos
pushi.e 2360
pop.v.i self.battleEndPos
pushi.e 180
pop.v.i self.nottooclose

:[end]