.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 255
pop.v.i self.image_blend
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 1
pop.v.i self.wall_destroy
pushi.e 0
pop.v.i self.scale
pushi.e 0
pop.v.i self.image_xscale
pushi.e 0
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.easestyle
pushi.e 30
pop.v.i self.duration
pushi.e 0
pop.v.i self.destroyonhit
pushi.e 1
pop.v.i self.sizemultiplier
pushi.e 255
pop.v.i self.startColor

:[end]