.localvar 2 arguments

:[0]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.grav
push.d 0.3
add.d.v
pop.v.v self.grav
push.v self.y
push.v self.grav
add.v.v
pop.v.v self.y
push.v self.y
call.i gml_Script_cameray(argc=0)
call.i gml_Script_cameraheight(argc=0)
add.v.v
pushi.e 10
add.i.v
cmp.v.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]