.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
pushi.e -5
pushi.e 379
push.v [array]self.flag
pop.v.v self.image_index
call.i gml_Script_scr_depth(argc=0)
popz.v

:[end]