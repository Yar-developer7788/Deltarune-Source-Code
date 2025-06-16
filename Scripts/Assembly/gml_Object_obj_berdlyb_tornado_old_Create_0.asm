.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 0
pop.v.i self.image_alpha
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
pushi.e 8
pop.v.i self.maxSpeed
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.destroyonhit
pushi.e 4
pop.v.i self.flipSpeed
pushi.e 0
pop.v.i self.flipTimer
pushi.e -10
pop.v.i self.timer
pushi.e 0
pop.v.i self.middespawn
pushi.e 0
pop.v.i self.traveldistance
pushi.e 200
pop.v.i self.maxdistance
pushi.e 0
pop.v.i self.firstwave
pushi.e 0
pop.v.i self.spindir
pushi.e 0
pop.v.i self.start_angle
pushi.e 0
pop.v.b self.init
pushi.e 1
pop.v.i self.fader
pushi.e 0
pop.v.i self.psuedo_speed
pushi.e 0
pop.v.i self.ytarget

:[end]