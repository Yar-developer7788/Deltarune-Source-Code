.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.timer
pushi.e 15
pop.v.i self.targetTime
push.v self.x
push.v 872.x
cmp.v.v GT
bf [2]

:[1]
pushi.e -1
conv.i.v
b [3]

:[2]
pushi.e 1
conv.i.v

:[3]
pop.v.v self.flip
push.v self.flip
pop.v.v self.image_xscale
pushi.e 0
pop.v.i self.image_speed
pushi.e 3
pop.v.i self.image_index
pushi.e 0
pop.v.i self.targetx
pushi.e 0
pop.v.i self.targety
pushi.e 9
pop.v.i self.loading
pushi.e -4
pop.v.i self.parentwindow
pushi.e 0
pop.v.i self.bufferstate
pushi.e 0
pop.v.i self.smashed
pushi.e 0
pop.v.i self.shootcon
pushi.e 0
pop.v.i self.shootmode
pushi.e 0
pop.v.i self.shoottimer
pushi.e -1
pop.v.i self.damage
pushi.e -1
pop.v.i self.target
push.v self.x
pop.v.v self.xx
push.v self.y
pop.v.v self.yy
pushi.e 2
pop.v.i self.m
pushi.e 0
pop.v.i self.shottype
pushi.e 0
pop.v.i self.firsttime
pushi.e 0
pop.v.i self.init
push.i 9034033
pop.v.i self.image_blend

:[end]