.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
push.v self.x
pop.v.v self.tailx
push.v self.y
pop.v.v self.taily
push.v self.x
pop.v.v self.targetx
push.v self.y
pop.v.v self.targety
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.attackdirection
pushi.e 10
pop.v.i self.laserwidth
pushi.e 3
pop.v.i self.finalpoint
pushi.e 1
pop.v.i self.nextpoint
pushi.e 0
pop.v.i self.lasertimer
pushi.e 0
pop.v.i self.active
pushi.e 5
pop.v.i self.image_xscale
push.d 0.8
pop.v.d self.image_yscale
pushi.e 0
pop.v.i self.destroyonhit
pushi.e 20
pop.v.i self.laserspeed
pushi.e 4
pop.v.i self.grazepoints

:[end]