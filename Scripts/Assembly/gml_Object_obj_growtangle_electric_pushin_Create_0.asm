.localvar 2 arguments

:[0]
pushi.e 1
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
push.v 872.image_xscale
push.d 0.4
sub.d.v
pop.v.v self.image_xscale
push.v 872.image_yscale
push.d 0.4
sub.d.v
pop.v.v self.image_yscale
push.v 872.image_angle
pop.v.v self.image_angle
push.v 872.x
pop.v.v self.x
push.v 872.y
pop.v.v self.y
pushi.e 0
pop.v.b self.visible

:[end]