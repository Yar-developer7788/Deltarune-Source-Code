.localvar 2 arguments

:[0]
push.v self.active
conv.v.b
bf [end]

:[1]
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.spawnVirus
pushi.e 1
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.speed
push.v other.topspeed
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v other.speed
pop.v.v other.topspeed

:[3]
pushi.e 0
pop.v.i other.speed

:[end]