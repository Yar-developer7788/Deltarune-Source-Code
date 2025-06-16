.localvar 2 arguments

:[0]
push.v 872.depth
pop.v.v self.depth
pushi.e 0
pop.v.i 872.image_alpha
push.v 872.x
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.minx
push.v 872.x
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.maxx
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.miny
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.maxy
push.v 872.x
pushi.e 100
add.i.v
pop.v.v self.suckx
push.v 872.y
pushi.e 40
sub.i.v
pop.v.v self.upper_sucky
push.v 872.y
pushi.e 40
add.i.v
pop.v.v self.lower_sucky
pushi.e 0
pop.v.i self.suckpower
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.snapback
pushi.e 0
pop.v.i self.target
pushi.e 0
pop.v.i self.state
pushi.e 0
pop.v.i self.inhale
pushi.e 0
pop.v.i self.inhalespeed
pushi.e 3
pop.v.i 358.image_xscale
pushi.e 3
pop.v.i 358.image_yscale
pushi.e 0
pop.v.i self.intro
pushi.e 0
pop.v.i self.stopthesucc

:[end]