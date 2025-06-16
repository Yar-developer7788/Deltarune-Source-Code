.localvar 2 arguments

:[0]
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_speed
pushi.e 5
pop.v.i self.speed
pushi.e 40
conv.i.v
call.i random(argc=1)
pop.v.v self.rand_angle
push.v 697.heart_health
pop.v.v self.heart_health
push.v 697.heart_speed_scaling
pop.v.v self.heart_speed_scaling
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.shootcon
pushi.e 0
pop.v.i self.shoottimer
pushi.e 0
pop.v.i self.bustertimer
pushi.e 0
pop.v.i self.defeatedtimer
push.v 697.difficulty
pop.v.v self.difficulty
push.v 697.difficulty
pop.v.v self.movementstyle
push.v self.movementstyle
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.movementstyle

:[2]
push.v 697.heart_attack_count
pop.v.v self.attackcount
pushi.e 163
pushi.e 34
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.direction
pushi.e 0
pop.v.i self.shakex
pushi.e 0
pop.v.i self.shakey
push.i 68097
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm

:[end]