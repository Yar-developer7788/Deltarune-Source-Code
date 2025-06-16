.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.talked
pushi.e 0
pop.v.i self.tempvar
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.depthcancel
pushi.e 1
pop.v.i self.normalanim
pushi.e 0
pop.v.i self.remanimspeed
pushi.e 0
pop.v.i self.image_index_fake
pushi.e 0
pop.v.i self.image_speed_fake
pushi.e 0
pop.v.i self.mode
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e 0
pop.v.i self.fsiner
pushi.e 6
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]