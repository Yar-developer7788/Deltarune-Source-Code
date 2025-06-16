.localvar 2 arguments

:[0]
pushi.e -4
conv.i.v
push.d -4.5
conv.d.v
call.i irandom_range(argc=2)
pop.v.v self.hspeed
pushi.e 0
pop.v.b self.cleanup
pushi.e 0
pop.v.b self.crash
pushi.e 30
pop.v.i self.cleanup_timer
pushi.e -1
pop.v.i self.explosion
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.d 0.25
pop.v.d self.image_speed
call.i gml_Script_scr_depth(argc=0)
popz.v

:[end]