.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.offset_x
pushi.e 0
pop.v.i self.offset_y
pushi.e -4
pop.v.i self.goggles_surface
pushi.e -4
pop.v.i self.static_surface
pushi.e 0
pop.v.i self.image_alpha
call.i gml_Script_scr_depth(argc=0)
popz.v

:[end]