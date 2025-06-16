.localvar 2 arguments

:[0]
push.v self.speed
push.v self.topspeed
cmp.v.v LT
bf [end]

:[1]
push.v self.speed
push.d 0.25
add.d.v
pop.v.v self.speed

:[end]