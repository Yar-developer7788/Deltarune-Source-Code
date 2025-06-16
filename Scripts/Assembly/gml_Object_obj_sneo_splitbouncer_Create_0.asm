.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
pushi.e 1
pop.v.i self.destroyable
pushi.e 3
pop.v.i self.size
pushi.e 0
pop.v.i self.breaking
pushi.e 3
pop.v.i self.hp
pushi.e 0
pop.v.i self.init
pushi.e 1
pop.v.i self.flash
pushi.e 1
pop.v.i self.shrinksize
pushi.e 4
pop.v.i self.speed
pushi.e 10
conv.i.v
pushi.e -10
conv.i.v
call.i random_range(argc=2)
pop.v.v self.angle_speed
pushi.e 0
pop.v.i self.destroyonhit
push.i 15245824
pop.v.i self.image_blend
pushi.e 4
pop.v.i self.grazepoints

:[end]