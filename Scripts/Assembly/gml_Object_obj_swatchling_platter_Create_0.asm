.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
push.v self.x
push.v 872.x
cmp.v.v LT
bf [2]

:[1]
pushi.e -1
pop.v.i self.side
pushi.e -90
pop.v.i self.image_angle
b [3]

:[2]
pushi.e 1
pop.v.i self.side
pushi.e 90
pop.v.i self.image_angle

:[3]
pushi.e 369
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.platterLid
pushi.e 1821
push.v self.platterLid
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.image_angle
push.v self.platterLid
pushi.e -9
pop.v.v [stacktop]self.image_angle
pushi.e 369
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.platterPlate
pushi.e 1822
push.v self.platterPlate
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.image_angle
push.v self.platterPlate
pushi.e -9
pop.v.v [stacktop]self.image_angle
pushi.e -10
pop.v.i self.timer
pushi.e 40
pop.v.i self.loopTimer
pushi.e 0
pop.v.i self.lidOffset
pushi.e 25
pop.v.i self.colorTimer
pushi.e 1
pop.v.b self.firstOpen
push.i 65535
pop.v.i self.targetColor
push.v self.targetColor
push.v self.platterPlate
pushi.e -9
pop.v.v [stacktop]self.image_blend
push.v self.targetColor
push.v self.platterLid
pushi.e -9
pop.v.v [stacktop]self.image_blend
pushi.e 5
push.v self.platterPlate
pushi.e -9
pop.v.i [stacktop]self.damage
pushi.e 5
push.v self.platterLid
pushi.e -9
pop.v.i [stacktop]self.damage
pushi.e 0
push.v self.platterPlate
pushi.e -9
pop.v.i [stacktop]self.destroyonhit
pushi.e 0
push.v self.platterLid
pushi.e -9
pop.v.i [stacktop]self.destroyonhit
pushi.e 0
push.v self.platterPlate
pushi.e -9
pop.v.i [stacktop]self.wall_destroy
pushi.e 0
push.v self.platterLid
pushi.e -9
pop.v.i [stacktop]self.wall_destroy
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.destroyonhit
pushi.e 0
pop.v.b self.opened
pushi.e 0
pop.v.i self.hasCandy
push.i 65535
pop.v.i self.startColor
pushi.e 0
pop.v.i self.init
pushi.e 443
pop.v.i self.swatchbc
pushi.e 0
pop.v.i self.ychange
pushi.e 0
pop.v.b self.lidOff
pushi.e 0
pop.v.i self.lidSpeed
pushi.e 0
pop.v.i self.birds
pushi.e 0
pop.v.i self.plateSpeed
push.v self.y
pop.v.v self.yy
pushi.e 0
pop.v.i self.image_alpha

:[end]