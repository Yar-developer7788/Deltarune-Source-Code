.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
pushi.e 0
pop.v.i self.image_speed
pushi.e 3
conv.i.v
call.i irandom(argc=1)
pop.v.v self.image_index
pushi.e 0
pop.v.i self.flashsiner

:[end]