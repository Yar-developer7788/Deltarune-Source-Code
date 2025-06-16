.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 40
add.i.v
cmp.v.v LT
bf [3]

:[2]
push.d 0.2
conv.d.v
call.i gml_Script_cameray(argc=0)
pushi.e 60
add.i.v
push.v self.y
call.i lerp(argc=3)
pop.v.v self.y
b [4]

:[3]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[4]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [9]

:[5]
push.v self.siner
push.v self.sineradd
add.v.v
pop.v.v self.siner
push.v self.xstart
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 70
mul.i.v
add.v.v
pop.v.v self.x
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 20
mul.i.v
pop.v.v self.image_angle
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 8
mul.i.v
pop.v.v self.vspeed
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 8
cmp.i.v GTE
bf [9]

:[6]
pushi.e 0
pop.v.i self.timer
pushi.e 369
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.shot
push.v self.shot
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [8]

:[7]
pushi.e 1570
push.v self.shot
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e -90
push.v self.shot
pushi.e -9
pop.v.i [stacktop]self.image_angle
pushi.e 6
push.v self.vspeed
pushi.e 4
conv.i.d
div.d.v
add.v.i
push.v self.shot
pushi.e -9
pop.v.v [stacktop]self.speed
pushi.e 1
push.v self.shot
pushi.e -9
pop.v.i [stacktop]self.active
push.v self.image_angle
pushi.e 90
sub.i.v
push.v self.shot
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.image_angle
pushi.e 90
sub.i.v
push.v self.shot
pushi.e -9
pop.v.v [stacktop]self.direction
push.v self.target
push.v self.shot
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.shot
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 6
push.v self.shot
pushi.e -9
pop.v.i [stacktop]self.grazepoints

:[8]
push.v self.shot
call.i gml_Script_scr_bullet_inherit(argc=1)
popz.v

:[9]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [end]

:[10]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 30
sub.i.v
cmp.v.v GT
bf [12]

:[11]
push.d 0.3
conv.d.v
call.i gml_Script_cameray(argc=0)
pushi.e 30
sub.i.v
push.v self.y
call.i lerp(argc=3)
pop.v.v self.y

:[12]
push.v self.destroytimer
push.e 1
add.i.v
pop.v.v self.destroytimer
push.v self.destroytimer
pushi.e 30
cmp.i.v EQ
bf [end]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[end]