.localvar 2 arguments

:[0]
pushbltn.v builtin.room
pushi.e 105
cmp.i.v EQ
bf [2]

:[1]
pushi.e 7
conv.i.v
b [3]

:[2]
pushi.e 3
conv.i.v

:[3]
pop.v.v self.extflag
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 4
pop.v.i self.image_xscale
pushi.e 0
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.dismiss
push.i 100000
pop.v.i self.depth
pushi.e 1
pop.v.i self.activecon
pushi.e 0
pop.v.i self.extspawnflag
pushi.e 0
pop.v.i self.init
pushi.e 30
pop.v.i self.count
pushi.e 0
pop.v.i self.dance_con
pushi.e 1
pop.v.b self.dance_active

:[end]