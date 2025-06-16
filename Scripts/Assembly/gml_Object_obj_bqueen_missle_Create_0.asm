.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.image_speed
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
push.v 631.depth
pushi.e 1
sub.i.v
pop.v.v self.depth
pushi.e 10
pop.v.i self.vspeed
pushi.e 2
pop.v.i self.friction
pushi.e 1
pop.v.i self.destroyonhit
pushi.e 0
pop.v.i self.afterimage
pushi.e 801
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 801.damage
pop.v.v self.damage

:[2]
pushi.e 801
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[3]
push.v 801.target
pop.v.v self.target

:[4]
pushi.e 3
pop.v.i self.grazepoints

:[end]