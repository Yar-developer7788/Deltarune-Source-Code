.localvar 2 arguments

:[0]
push.v self.x
push.v 631.x
pushi.e 20
add.i.v
cmp.v.v LT
bf [2]

:[1]
exit.i

:[2]
push.i 68097
setowner.e
push.v 697.crusher_turret_speed
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 369
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.shot
push.v 697.crusher_turret_bullet_speed
push.v self.shot
pushi.e -9
pop.v.v [stacktop]self.hspeed
pushi.e 180
push.v self.shot
pushi.e -9
pop.v.i [stacktop]self.gravity_direction
push.v 697.crusher_turret_bullet_gravity
push.v self.shot
pushi.e -9
pop.v.v [stacktop]self.gravity
pushi.e 3
push.v self.shot
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 1993
push.v self.shot
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[end]