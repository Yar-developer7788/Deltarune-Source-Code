.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.enemy1
pushi.e 0
pop.v.i self.enemy3
pushi.e 240
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.enemy2
push.v self.enemy2
pushi.e -9
pushenv [2]

:[1]
push.d 0.25
pop.v.d self.image_speed
pushi.e 64
pop.v.i self.myencounter
pushi.e 1225
pop.v.i self.sprite_index
pushi.e 1812
pop.v.i self.touchsprite
pushi.e 0
pop.v.i self.radius
pushi.e 11
pop.v.i self.pacetype
pushi.e 0
pop.v.i self.chasetype
pushi.e 0
pop.v.i self.alertskip
pushi.e 0
pop.v.i self.alertcon
pushi.e 0
pop.v.i self.ignoresolid
pushi.e 0
pop.v.i self.moveradius
pushi.e 1
pop.v.i self.eraser
pushi.e 1
pop.v.i self.blind
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
call.i path_start(argc=4)
popz.v

:[2]
popenv [1]
pushi.e 1257
conv.i.v
pushi.e 240
conv.i.v
pushi.e 240
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.topleftvase
pushi.e 2
push.v self.topleftvase
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.topleftvase
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
pop.v.i self.topleftspawned
pushi.e 0
pop.v.i self.count
pushi.e 0
pop.v.i self.botRightspawned
pushi.e 0
pop.v.i self.topRightTriggered
pushi.e 0
pop.v.i self.topRightBroken
pushi.e 0
pop.v.i self.botRightBroken
pushi.e 1
pop.v.i self.monstercount
pushi.e 0
pop.v.i self.susiebreak
pushi.e 0
pop.v.i self.triggered

:[end]