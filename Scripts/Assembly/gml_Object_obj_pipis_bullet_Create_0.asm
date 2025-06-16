.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 6
pop.v.i self.element
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.type
pushi.e 0
pop.v.i self.target
pushi.e 1
pop.v.i self.damage
push.d 0.5
pop.v.d self.hp
push.d 0.5
pop.v.d self.image_xscale
push.d 0.5
pop.v.d self.image_yscale
pushi.e 0
pop.v.i self.length
pushi.e 0
pop.v.i self.place
pushi.e -1
pop.v.i self.parent

:[end]