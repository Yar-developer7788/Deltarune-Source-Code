.localvar 2 arguments

:[0]
push.v self.changedirection
conv.v.b
bf [end]

:[1]
push.v self.altdirection
pop.v.v self.direction
push.v self.altgravity
pop.v.v self.gravity
push.v self.altfriction
pop.v.v self.friction
push.v self.altspeed
pop.v.v self.speed

:[end]