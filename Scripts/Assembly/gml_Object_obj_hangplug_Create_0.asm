.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.decorative
pushi.e 0
pop.v.i self.active
push.v self.y
pop.v.v self.basey
push.v self.x
pop.v.v self.basex
pushi.e 15
pop.v.i self.timerbtarget
pushi.e 460
conv.i.v
call.i random(argc=1)
pop.v.v self.siner
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_speed
pushi.e 130
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.timer
pushi.e 0
pop.v.i self.timerb
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.sparkid
pushi.e 300
pop.v.i self.radius
pushi.e 150
pop.v.i self.chargetime
pushbltn.v builtin.room
pushi.e 205
cmp.i.v EQ
bf [2]

:[1]
pushi.e 100
pop.v.i self.chargetime
push.v self.timer
pushi.e 50
sub.i.v
pop.v.v self.timer

:[2]
pushi.e 0
pop.v.i self.depth

:[end]