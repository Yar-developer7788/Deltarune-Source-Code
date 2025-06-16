.localvar 2 arguments

:[0]
pushbltn.v builtin.room_height
pushbltn.v builtin.room_width
call.i surface_create(argc=2)
pop.v.v self.surf
push.v self.surf
call.i surface_set_target(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_clear(argc=1)
popz.v
call.i surface_reset_target(argc=0)
popz.v
pushi.e 2400
pop.v.i self.zoomtime
pushi.e 0
pop.v.i self.zoomtimer
pushi.e 600
pop.v.i self.startradius
pushi.e 50
pop.v.i self.endradius
pushi.e 200
pop.v.i self.radius
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.type
pushi.e 0
pop.v.i self.finish

:[end]