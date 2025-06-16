.localvar 2 arguments

:[0]
push.v self.ystart
pushi.e 300
sub.i.v
pop.v.v self.y
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e -2
pop.v.i self.con
push.d 0.2
pop.v.d self.image_speed
pushi.e 30
pop.v.i self.waittime
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.fakealpha
pushi.e 90
pop.v.i self.image_angle
pushi.e 60
pop.v.i self.litwaittime

:[end]