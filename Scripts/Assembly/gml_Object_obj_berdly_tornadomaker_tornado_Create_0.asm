.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
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
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.siner
pushi.e 8
pop.v.i self.maxhspeed
pushi.e 1
pop.v.i self.accel
push.d 1.15
pop.v.d self.image_xscale
push.d 1.15
pop.v.d self.image_yscale
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.init
pushi.e 1
pop.v.i self.active
pushi.e 1
pop.v.i self.damage
pushi.e 20
pop.v.i self.howlong
pushi.e 0
pop.v.i self.howfar
pushi.e 4
pop.v.i self.flipSpeed
pushi.e 0
pop.v.i self.flipTimer
pushi.e 574
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[3]
pushi.e -5
push.v 574.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
pop.v.v self.damage

:[4]
pushi.e 575
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[5]
push.v 575.target
pop.v.v self.target

:[6]
pushi.e 3
pop.v.i self.grazepoints

:[end]