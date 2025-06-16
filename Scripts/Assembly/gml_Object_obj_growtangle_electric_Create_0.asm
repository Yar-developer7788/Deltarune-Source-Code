.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 0
pop.v.i self.destroyonhit
push.d 0.2
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.image_alpha
pushi.e 0
pop.v.i self.active
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 872.image_xscale
pop.v.v self.image_xscale
push.v 872.image_yscale
pop.v.v self.image_yscale
push.v 872.image_angle
pop.v.v self.image_angle
b [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
pushi.e 530
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.type
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.amplitude
pushi.e 60
pop.v.i self.maxamplitude
pushi.e 0
pop.v.i self.spinamplitude
pushi.e 120
pop.v.i self.plugx
pushi.e 0
pop.v.i self.plugalpha
pushi.e 0
pop.v.i self.shottimer
pushi.e 1
pop.v.i self.speedmode
pushi.e 0
pop.v.i self.xx
pushi.e 0
pop.v.i self.yy
pushi.e 574
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[4]
pushi.e -5
push.v 574.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
pop.v.v self.damage

:[5]
pushi.e 575
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[6]
push.v 575.target
pop.v.v self.target

:[7]
pushi.e 4
pop.v.i self.grazepoints

:[end]