.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.bulletcount
pushi.e 12
pop.v.i self.bulletcountmax
push.v self.depth
pop.v.v self.bulletdepth
pushi.e 1
pop.v.i self.difficulty
pushi.e 0
pop.v.i self.destroyonhit
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.siner
pushi.e 2
pop.v.i self.image_yscale
pushi.e 2
pop.v.i self.image_xscale
pushi.e 0
pop.v.i self.image_speed
push.v 872.depth
pushi.e 1
add.i.v
pop.v.v self.depth
pushi.e 0
pop.v.i self.oldmode
pushi.e 0
pop.v.i self.introtimer
pushi.e 0
pop.v.i self.openmisslechambertimer
pushi.e 0
pop.v.i self.misslewaittimer
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.volleytimer
pushi.e -1
pop.v.i self.volleycount
pushi.e 6
pop.v.i self.volleytotal
push.i 172301
setowner.e
pushi.e -30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.missilex
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.missilex
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.missilex
pushi.e -30
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.missilex
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.missilex
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.missilex
pushi.e 1
pop.v.i self.side
pushi.e 0
pop.v.i self.shotcount

:[end]