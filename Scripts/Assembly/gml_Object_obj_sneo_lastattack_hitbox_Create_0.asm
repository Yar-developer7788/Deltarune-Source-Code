.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
pushi.e 0
pop.v.b self.destroyonhit
pushi.e 643
pop.v.i self.parent
push.v self.parent
pushi.e -9
push.v [stacktop]self.x
push.v self.parent
pushi.e -9
push.v [stacktop]self.x_offset
add.v.v
pushi.e 30
add.i.v
pop.v.v self.x
push.v self.parent
pushi.e -9
push.v [stacktop]self.y
push.v self.parent
pushi.e -9
push.v [stacktop]self.y_offset
add.v.v
pushi.e 40
sub.i.v
pop.v.v self.y
pushi.e 4
pop.v.i self.image_xscale
pushi.e 6
pop.v.i self.image_yscale

:[end]