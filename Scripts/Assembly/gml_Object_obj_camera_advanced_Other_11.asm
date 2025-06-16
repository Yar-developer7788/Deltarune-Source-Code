.localvar 2 arguments

:[0]
push.v self.currentView
pop.v.v self.cV
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.finalX
call.i gml_Script_camerax_set(argc=1)
popz.v
push.v self.finalY
call.i gml_Script_cameray_set(argc=1)
popz.v

:[end]