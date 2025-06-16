.localvar 2 arguments

:[0]
pushi.e 1
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 20
conv.i.v
call.i random(argc=1)
pop.v.v self.siner
pushi.e 0
pop.v.i self.timer
pushi.e 270
pop.v.i self.image_angle
pushi.e 2
pop.v.i self.image_xscale
push.d 2.3
pop.v.d self.image_yscale
pushi.e -6
pop.v.i self.hspeed
pushi.e -1
pop.v.i self.lastType
pushi.e 10
pop.v.i self.damage
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.movetimer
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
add.v.v
pushi.e 100
add.i.v
pop.v.v self.x

:[end]