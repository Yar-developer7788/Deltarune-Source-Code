.localvar 2 arguments
.localvar 21297 xscale_temp 9328

:[0]
push.v self.image_xscale
pop.v.v local.xscale_temp
call.i event_inherited(argc=0)
popz.v
pushloc.v local.xscale_temp
pop.v.v self.image_xscale

:[end]