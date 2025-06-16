.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 6
pop.v.i self.element
pushi.e 2
pop.v.i self.f
pushi.e 2
pop.v.i self.hp
pushi.e 0
pop.v.i self.destroyable
pushi.e 0
pop.v.i self.angle_speed
pushi.e 1
pop.v.i self.destroyable
call.i @@This@@(argc=0)
pop.v.v self.barrier
pushi.e 0
pop.v.i self.deathtimer
pushi.e 0
pop.v.i self.destroyonhit
pushi.e 0
pop.v.i self.flash
push.i 15245824
pop.v.i self.image_blend

:[end]