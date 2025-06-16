.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.image_alpha
pushi.e 0
pop.v.b self.active
pushbltn.v builtin.mouse_x
pop.v.v self.x
pushbltn.v builtin.mouse_y
pop.v.v self.y
push.v self.depth
pushi.e 2
sub.i.v
pop.v.v self.depth
pushi.e 0
pop.v.b self.useSprite

:[end]