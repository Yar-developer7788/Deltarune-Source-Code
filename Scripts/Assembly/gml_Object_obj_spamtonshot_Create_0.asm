.localvar 2 arguments

:[0]
pushi.e 609
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 609.heart_health
pushi.e 1
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[5]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 6
pop.v.i self.element
pushi.e 2
pop.v.i self.f
pushi.e 0
pop.v.i self.con
pushi.e 1
pop.v.i self.mode
pushi.e 0
pop.v.i self.dontexplode
pushi.e 0
pop.v.i self.destroyable
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.fluffyguarddestroysthis
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.targetx
call.i gml_Script_cameray(argc=0)
call.i gml_Script_cameraheight(argc=0)
pushi.e 4
conv.i.d
div.d.v
add.v.v
pop.v.v self.targety
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[6]
push.v 631.x
pop.v.v self.targetx
push.v 631.y
pop.v.v self.targety

:[7]
pushi.e 5
conv.i.v
push.v self.targety
push.v self.targetx
call.i move_towards_point(argc=3)
popz.v
pushi.e 0
pop.v.i self.angle_speed
pushi.e 4
pop.v.i self.grazepoints
pushi.e 698
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[8]
push.v 698.target
pop.v.v self.target

:[end]