.localvar 2 arguments

:[0]
push.v 777.dead
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
exit.i

:[2]
push.v 777.invincible
pushi.e 0
cmp.i.v EQ
bf [5]

:[3]
push.v self.confirm
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [end]

:[7]
push.v other.grazed
pushi.e 0
cmp.i.v EQ
bf [end]

:[8]
pushi.e 1
pop.v.i other.grazed
pushi.e 1
pop.v.i self.confirm
push.v other.tpgain
pop.v.v self.tpgain
push.i 68097
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 777
pushenv [10]

:[9]
push.v self.boxingtimer
pushi.e 4
sub.i.v
pop.v.v self.boxingtimer

:[10]
popenv [9]

:[end]