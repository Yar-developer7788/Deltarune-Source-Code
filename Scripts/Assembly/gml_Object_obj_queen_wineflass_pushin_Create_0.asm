.localvar 2 arguments

:[0]
pushi.e 1
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
push.v 514.image_angle
pop.v.v self.image_angle
push.v 514.image_xscale
pop.v.v self.image_xscale
push.v 514.image_yscale
pop.v.v self.image_yscale
push.v 514.x
pop.v.v self.x
push.v 514.y
pop.v.v self.y
pushi.e 0
pop.v.b self.visible
push.v 872.depth
pushi.e 2
add.i.v
pop.v.v self.depth

:[end]