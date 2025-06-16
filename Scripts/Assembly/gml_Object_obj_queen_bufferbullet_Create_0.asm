.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 1
pop.v.i self.destroyonhit
pushi.e 0
pop.v.i self.bufferstate
push.v self.speed
pop.v.v self.originalspeed
push.d 0.5
pop.v.d self.image_xscale
push.d 0.5
pop.v.d self.image_yscale
pushi.e 0
pop.v.i self.afterimage
pushi.e 0
pop.v.i self.fadeaway
pushi.e 0
pop.v.i self.slowdown
pushi.e 0
pop.v.i self.timer
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
pushi.e 0
pop.v.i self.rotate

:[end]