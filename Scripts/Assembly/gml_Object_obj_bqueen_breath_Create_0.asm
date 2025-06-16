.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 1
pop.v.i self.destroyonhit
push.d 0.25
pop.v.d self.image_xscale
push.d 0.5
pop.v.d self.image_yscale
pushi.e 2064
pop.v.i self.sprite_index
push.v 631.depth
pushi.e 1
sub.i.v
pop.v.v self.depth
push.v 801.place1
pop.v.v self.image_angle
pushi.e 0
pop.v.i self.afterimage
pushi.e 0
pop.v.i self.fadeaway
pushi.e 0
pop.v.i self.slowdown
pushi.e 0
pop.v.i self.timer
pushi.e -1
pop.v.i self.rotator_target
pushi.e 2
pop.v.i self.length
pushi.e 1
pop.v.i self.type
pushi.e 6
pop.v.i self.myspeed
pushi.e 0
pop.v.i self.afterimagetimer
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
pushi.e 0
pop.v.i self.siner

:[end]