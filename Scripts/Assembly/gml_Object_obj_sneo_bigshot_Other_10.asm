.localvar 2 arguments

:[0]
push.v self.playerhit
conv.v.b
bf [end]

:[1]
push.v self.timer
pushi.e 0
cmp.i.v GT
bf [3]

:[2]
exit.i

:[3]
pushi.e 1
pop.v.i self.timer
pushi.e 0
pop.v.i self.destroyable
pushi.e 1
pop.v.i self.attackisdone
push.v self.depth
pushi.e 40
sub.i.v
pop.v.v self.depth
pushi.e 0
pop.v.i self.hspeed
push.v 643.skip_2nd_part_hp
pushi.e 0
cmp.i.v GT
bf [4]

:[4]
pushi.e 3
pop.v.i 643.endattack
push.v self.x
pop.v.v self.xx
push.v self.y
pop.v.v self.yy
b [end]

:[end]