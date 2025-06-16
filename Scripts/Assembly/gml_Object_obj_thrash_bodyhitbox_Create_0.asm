.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 0
pop.v.i self.destroyonhit
pushi.e 6
pop.v.i self.image_xscale
pushi.e 5
pop.v.i self.image_yscale
push.v self.depth
pushi.e 10
sub.i.v
pop.v.v self.depth
pushi.e 0
pop.v.i self.deathtimer
pushi.e 0
pop.v.i self.duckmode
push.v 729.thrash
pop.v.v self.thrash

:[end]