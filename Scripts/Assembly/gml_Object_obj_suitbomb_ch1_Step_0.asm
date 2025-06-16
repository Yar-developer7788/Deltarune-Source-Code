.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [10]

:[1]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 3938
pop.v.i self.sprite_index

:[3]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 3936
pop.v.i self.sprite_index

:[5]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushi.e 3937
pop.v.i self.sprite_index

:[7]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
pushi.e 3935
pop.v.i self.sprite_index

:[9]
pushi.e 1
pop.v.i self.visible
pushi.e 1
pop.v.i self.con

:[10]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [17]

:[11]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 10
cmp.i.v GTE
bf [15]

:[12]
pushi.e 1613
pushenv [14]

:[13]
pushi.e 1
pop.v.i self.beepnoise

:[14]
popenv [13]
push.v self.timer
push.v self.maxtimer
div.v.v
pop.v.v self.image_speed

:[15]
push.v self.timer
push.v self.maxtimer
cmp.v.v GTE
bf [17]

:[16]
pushi.e 2
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.speed

:[17]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [39]

:[18]
pushi.e 1613
pushenv [20]

:[19]
pushi.e 1
pop.v.i self.burstnoise

:[20]
popenv [19]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [25]

:[21]
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.dir
pushi.e 12
pop.v.i self.maxe
pushi.e 0
pop.v.i self.i

:[22]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [24]

:[23]
push.i 175474
setowner.e
pushi.e 1524
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.spade
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spade
call.i gml_Script_scr_bullet_inherit_ch1(argc=1)
popz.v
push.i 232295
setowner.e
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spade
pushi.e -9
pop.v.i [stacktop]self.active
push.i 133625
setowner.e
push.v self.dir
push.v self.i
pushi.e 360
conv.i.d
push.v self.maxe
div.v.d
mul.v.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spade
pushi.e -9
pop.v.v [stacktop]self.direction
push.i 133626
setowner.e
pushi.e 8
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spade
pushi.e -9
pop.v.i [stacktop]self.speed
push.i 133652
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spade
pushi.e -9
push.v [stacktop]self.direction
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spade
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.i 133642
setowner.e
pushi.e 4051
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spade
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [22]

:[24]
pushi.e 3
pop.v.i self.con

:[25]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [32]

:[26]
pushi.e 0
pop.v.i self.i

:[27]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [31]

:[28]
push.i 175244
setowner.e
pushi.e 1524
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.diamond
push.i 231467
setowner.e
pushi.e 100
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.diamond
pushi.e -9
pop.v.i [stacktop]self.damage
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.diamond
call.i gml_Script_scr_bullet_inherit_ch1(argc=1)
popz.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.diamond
pushi.e -9
pushenv [30]

:[29]
pushi.e 11
conv.i.v
push.v 1634.y
pushi.e 8
add.i.v
push.v 1634.x
pushi.e 8
add.i.v
call.i move_towards_point(argc=3)
popz.v

:[30]
popenv [29]
push.i 133626
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.diamond
pushi.e -9
dup.i 4
push.v [stacktop]self.speed
push.v self.i
sub.v.v
pop.i.v [stacktop]self.speed
push.i 133652
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.diamond
pushi.e -9
push.v [stacktop]self.direction
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.diamond
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.i 133642
setowner.e
pushi.e 3786
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.diamond
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [27]

:[31]
pushi.e 3
pop.v.i self.con

:[32]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [34]

:[33]
pushi.e 1590
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.h
push.v self.h
call.i gml_Script_scr_bullet_inherit_ch1(argc=1)
popz.v
pushi.e 3
pop.v.i self.con

:[34]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [39]

:[35]
push.v 1634.y
pushi.e 8
add.i.v
push.v 1634.x
pushi.e 8
add.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.dir
pushi.e 0
pop.v.i self.i

:[36]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [38]

:[37]
push.i 175640
setowner.e
pushi.e 1524
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.club
push.i 133642
setowner.e
pushi.e 3880
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.club
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 231467
setowner.e
pushi.e 100
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.club
pushi.e -9
pop.v.i [stacktop]self.damage
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.club
call.i gml_Script_scr_bullet_inherit_ch1(argc=1)
popz.v
push.i 232295
setowner.e
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.club
pushi.e -9
pop.v.i [stacktop]self.active
push.i 133625
setowner.e
push.v self.dir
pushi.e 20
sub.i.v
push.v self.i
pushi.e 20
mul.i.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.club
pushi.e -9
pop.v.v [stacktop]self.direction
push.i 133652
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.club
pushi.e -9
push.v [stacktop]self.direction
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.club
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.i 133626
setowner.e
pushi.e 8
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.club
pushi.e -9
pop.v.i [stacktop]self.speed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [36]

:[38]
pushi.e 3
pop.v.i self.con

:[39]
push.v self.explodedraw
pushi.e 40
cmp.i.v GTE
bf [end]

:[40]
call.i instance_destroy(argc=0)
popz.v

:[end]