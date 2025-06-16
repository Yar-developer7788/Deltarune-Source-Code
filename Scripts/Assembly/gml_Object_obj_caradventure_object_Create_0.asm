.localvar 2 arguments

:[0]
pushi.e -3
pop.v.i self.hspeed
push.s "banana"@21209
pop.v.s self.type
push.d 0.25
pop.v.d self.image_speed
call.i gml_Script_scr_depth(argc=0)
popz.v

:[end]