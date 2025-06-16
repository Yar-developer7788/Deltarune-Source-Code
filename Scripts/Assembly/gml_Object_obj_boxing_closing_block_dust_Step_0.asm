.localvar 2 arguments

:[0]
push.v self.speed
push.d 0.99
mul.d.v
pop.v.v self.speed
push.v self.image_xscale
push.v self.scalerX
add.v.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.v self.scalerY
add.v.v
pop.v.v self.image_yscale

:[end]