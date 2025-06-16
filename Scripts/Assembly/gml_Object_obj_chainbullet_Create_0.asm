.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 0
pop.v.i self.init
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
pushi.e 5
pop.v.i self.childSpeed
pushi.e 0
pop.v.i self.childgravity
pushi.e 3
pop.v.i self.firingSpeed
push.v self.firingSpeed
pop.v.v self.timer
pushi.e 8
pop.v.i self.totalBullets
pushi.e 0
pop.v.i self.bulletsSpawned
pushi.e 0
pop.v.i self.shotRotation
pushi.e 369
pop.v.i self.childBullet
pushi.e 0
pop.v.i self.visible

:[end]