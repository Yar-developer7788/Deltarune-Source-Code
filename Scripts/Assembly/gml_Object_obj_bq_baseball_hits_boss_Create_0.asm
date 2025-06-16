.localvar 2 arguments

:[0]
pushi.e 2
pop.v.i self.f
pushi.e 48
conv.i.d
push.v self.f
div.v.d
pop.v.v self.vspeed
pushi.e 359
conv.i.v
call.i irandom(argc=1)
pop.v.v self.image_angle
push.v 789.x
pushi.e 5
sub.i.v
pop.v.v self.x
pushi.e 0
pop.v.i self.state
push.v 789.depth
pushi.e 2
sub.i.v
pop.v.v self.depth
push.d 1.75
pop.v.d self.image_xscale
push.d 1.75
pop.v.d self.image_yscale
pushi.e 1
pop.v.i self.roll
pushi.e -12
pop.v.i self.throw_xspeed
pushi.e -14
pop.v.i self.throw_yspeed
pushi.e 1
pop.v.i self.grav
pushi.e 40
pop.v.i self.max_yspeed
pushi.e 0
pop.v.i self.roll_angle
push.v self.x
pop.v.v self.prevx
pushi.e 0
pop.v.i self.xdiff
pushi.e 0
pop.v.i self.moving_dir
pushi.e 0
pop.v.i self.max_syspeed

:[end]