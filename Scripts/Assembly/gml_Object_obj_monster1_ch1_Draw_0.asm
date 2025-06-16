.localvar 2 arguments

:[0]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [11]

:[1]
push.v self.hurttimer
pushi.e 1
sub.i.v
pop.v.v self.hurttimer
push.v self.hurttimer
pushi.e 0
cmp.i.v LT
bf [3]

:[2]
pushi.e 0
pop.v.i self.state
b [11]

:[3]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 12
pop.v.i self.hspeed
push.v self.turnt
pushi.e 8
sub.i.v
pop.v.v self.turnt
pushi.e -4
pop.v.i self.vspeed

:[5]
push.v self.hurtshake
pushi.e 1
add.i.v
pop.v.v self.hurtshake
push.v self.hurtshake
pushi.e 1
cmp.i.v GT
bf [11]

:[6]
push.v self.shakex
pushi.e 0
cmp.i.v GT
bf [8]

:[7]
push.v self.shakex
pushi.e 1
sub.i.v
pop.v.v self.shakex

:[8]
push.v self.shakex
pushi.e 0
cmp.i.v LT
bf [10]

:[9]
push.v self.shakex
pushi.e 1
add.i.v
pop.v.v self.shakex

:[10]
push.v self.shakex
neg.v
pop.v.v self.shakex
pushi.e 0
pop.v.i self.hurtshake

:[11]
push.v self.becomeflash
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
pushi.e 0
pop.v.i self.flash

:[13]
pushi.e 0
pop.v.i self.becomeflash

:[end]