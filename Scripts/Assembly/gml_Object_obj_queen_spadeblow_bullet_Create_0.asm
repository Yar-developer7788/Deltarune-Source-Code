.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 1
pop.v.i self.destroyonhit
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
push.v 631.depth
pushi.e 1
sub.i.v
pop.v.v self.depth
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
pushi.e 574
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e -5
push.v 574.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
pop.v.v self.damage

:[2]
pushi.e 575
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[3]
push.v 575.target
pop.v.v self.target

:[4]
pushi.e 3
pop.v.i self.grazepoints

:[end]