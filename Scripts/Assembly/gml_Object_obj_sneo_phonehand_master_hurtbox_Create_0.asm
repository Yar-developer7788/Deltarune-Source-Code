.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 1
pop.v.i self.wall_destroy
pushi.e 1
pop.v.i self.image_alpha
pushi.e 2535
pop.v.i self.sprite_index
pushi.e 4
pop.v.i self.image_xscale
pushi.e 20
pop.v.i self.image_yscale
pushi.e 1
pop.v.b self.visible
pushi.e 0
pop.v.i self.destroyonhit
pushi.e 1
pop.v.i self.grazed
pushi.e 6
pop.v.i self.element

:[end]