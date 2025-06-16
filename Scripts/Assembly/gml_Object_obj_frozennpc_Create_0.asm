.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
pushi.e 0
pop.v.i self.image_alpha
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.mysolid
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.h
pushi.e 0
pop.v.i self.w
pushi.e 0
pop.v.i self.returntoxy
pushi.e 0
pop.v.i self.movetimer
pushi.e 0
pop.v.i self.kiratimer
pushi.e 0
pop.v.i self.skipsound
pushi.e 0
pop.v.i self.skipsolid
pushi.e 0
pop.v.i self.depth
pushi.e 0
pop.v.i self.specialinit
push.d 0.8
conv.d.v
push.i 16777215
conv.i.v
push.i 8388608
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.specialcolor
pushi.e 0
pop.v.i self.fresh
pushi.e 0
pop.v.i self.inbattle

:[end]