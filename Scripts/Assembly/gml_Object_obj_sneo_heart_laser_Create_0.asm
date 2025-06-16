.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.con2
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
push.d 0.25
pop.v.d self.image_speed
push.d 0.1
pop.v.d self.image_xscale
push.d 0.1
pop.v.d self.image_yscale
pushi.e 0
pop.v.i self.destroyonhit
push.v 631.y
pushi.e 10
add.i.v
push.v 631.x
pushi.e 10
add.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pushi.e 20
conv.i.v
pushi.e -20
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.image_angle

:[end]