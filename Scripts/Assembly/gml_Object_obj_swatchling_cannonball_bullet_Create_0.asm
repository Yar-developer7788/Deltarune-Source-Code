.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
push.i 16711680
pop.v.i self.image_blend
pushi.e 0
pop.v.i self.colortimer
call.i gml_Script_scr_getboxbounds(argc=0)
popz.v
pushi.e 10
conv.i.v
pushi.e -10
conv.i.v
call.i choose(argc=2)
pop.v.v self.spin

:[end]