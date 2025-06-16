.localvar 2 arguments

:[0]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_speed
push.i 16777215
pop.v.i self.image_blend
pushi.e -50
pop.v.i self.depth
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.winetimer
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.introtimer
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.angle_speed
pushi.e 1890
pop.v.i 574.sprite_index
push.v 574.x
pushi.e 29
add.i.v
pop.v.v self._remx
push.v 574.y
pushi.e 50
add.i.v
pop.v.v self._remy
push.v self.x
pop.v.v self._idealx
push.v self.y
pop.v.v self._idealy
pushi.e 1
pop.v.i self.fill_yscale
pushi.e 1
pop.v.i self.fill_yscale_gradual

:[end]