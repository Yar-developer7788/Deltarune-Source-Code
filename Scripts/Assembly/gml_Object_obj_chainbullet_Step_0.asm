.localvar 2 arguments

:[0]
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
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [8]

:[3]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
push.v self.firingSpeed
cmp.v.v GTE
bf [8]

:[4]
pushi.e 0
pop.v.i self.timer
push.v self.bulletsSpawned
push.e 1
add.i.v
pop.v.v self.bulletsSpawned
push.v self.childBullet
push.v self.y
push.v self.x
call.i gml_Script_scr_childbullet(argc=3)
pop.v.v self.d
push.v self.d
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [6]

:[5]
push.v self.sprite_index
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.direction
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
push.v self.childSpeed
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.speed
push.v self.childgravity
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.gravity
push.v self.direction
push.v self.shotRotation
add.v.v
pop.v.v self.direction
push.v self.direction
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_angle

:[6]
push.v self.bulletsSpawned
push.v self.totalBullets
cmp.v.v GTE
bf [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
pushi.e 1
pop.v.i self.init

:[end]