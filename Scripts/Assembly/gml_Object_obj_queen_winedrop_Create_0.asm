.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 0
pop.v.i self.destroyonhit
pushi.e 90
pop.v.i self.image_angle
push.d 0.3
pop.v.d self.gravity
pushi.e 2
pop.v.i self.image_yscale
pushi.e 4
pop.v.i self.image_xscale
pushi.e 0
pop.v.i self.fillamount
push.i 16777215
pop.v.i self.acidColor
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [2]

:[1]
push.v 574.whiteAcid
conv.v.b
not.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.i 1959605
pop.v.i self.acidColor

:[5]
pushi.e 0
pop.v.i self.createdroplets
pushi.e 574
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[6]
pushi.e -5
push.v 574.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
pop.v.v self.damage

:[7]
pushi.e 575
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [9]

:[8]
push.v 575.target
pop.v.v self.target

:[9]
pushi.e 4
pop.v.i self.grazepoints

:[end]