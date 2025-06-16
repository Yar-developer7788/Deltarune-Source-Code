.localvar 2 arguments

:[0]
pushi.e 3
pop.v.i self.image_xscale
pushi.e 3
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.con
pushi.e -2
pop.v.i self.vspeed
pushi.e -2
pop.v.i self.friction
push.v 777.depth
pop.v.v self.depth
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.drawwhite
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.split
push.d 0.01
pop.v.d self.splitfriction
pushi.e 0
pop.v.i self.splittimer
pushi.e 0
pop.v.i self.splity
push.v 777.headsprite
pop.v.v self.headsprite
pushi.e 255
conv.i.v
pushi.e 255
conv.i.v
pushi.e -5
pushi.e 223
push.v [array]self.flag
pushi.e 8
mul.i.v
call.i make_color_hsv(argc=3)
pop.v.v self.headcolor
pushi.e 0
pop.v.i self.glow

:[end]