.localvar 2 arguments

:[0]
push.v self.siner
pushi.e 2
add.i.v
pop.v.v self.siner
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [11]

:[1]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v 789.firstwheelattack
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.timer
pushi.e 79
cmp.i.v GT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
push.v 789.firstwheelattack
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.v self.timer
pushi.e 29
cmp.i.v GT
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[11]
push.v self.flashtimer
push.e 1
add.i.v
pop.v.v self.flashtimer
push.v self.flashtimer
pushi.e 5
cmp.i.v EQ
bf [13]

:[12]
pushi.e 0
pop.v.b self.visible

:[13]
push.v self.flashtimer
pushi.e 10
cmp.i.v EQ
bf [end]

:[14]
pushi.e 1
pop.v.b self.visible
push.i 65535
pop.v.i self.image_blend
pushi.e 0
pop.v.i self.flashtimer

:[end]