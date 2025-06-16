.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.prefill
pushi.e 0
pop.v.i self.fill
pushi.e 0
pop.v.i self.state
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.xx
pushi.e -10
pop.v.i self.yy
pushi.e 0
pop.v.i self.starttimer
push.v 872.x
pop.v.v self.x
push.v 872.y
pushi.e 58
add.i.v
pop.v.v self.y
push.v self.x
pop.v.v self.xstart
push.v self.y
pop.v.v self.ystart
push.v 872.image_blend
pop.v.v self.image_blend
pushi.e 0
pop.v.i self.image_speed
push.v 872.depth
pushi.e 1
sub.i.v
pop.v.v self.depth
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
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
pushi.e 522
conv.i.v
pushi.e 400
conv.i.v
push.v self.x
pushi.e 100
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.hurtbox
pushi.e 515
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
push.v 514.y
pushi.e 53
add.i.v
pop.v.v self.starty
pushi.e 517
conv.i.v
push.v self.starty
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.winewave
push.v 514.depth
pushi.e 3
add.i.v
push.v self.winewave
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e -3
push.v self.winewave
pushi.e -9
pop.v.i [stacktop]self.xspeed
push.v self.acidColor
push.v self.winewave
pushi.e -9
pop.v.v [stacktop]self.image_blend
push.d 0.5
push.v self.winewave
pushi.e -9
pop.v.d [stacktop]self.image_alpha
pushi.e 517
conv.i.v
push.v self.starty
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.winewave2
push.v 514.depth
pushi.e 1
add.i.v
push.v self.winewave2
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.acidColor
push.v self.winewave2
pushi.e -9
pop.v.v [stacktop]self.image_blend
pushi.e 4
push.v self.winewave2
pushi.e -9
pop.v.i [stacktop]self.xspeed

:[end]