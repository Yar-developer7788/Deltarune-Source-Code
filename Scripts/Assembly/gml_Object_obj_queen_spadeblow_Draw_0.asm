.localvar 2 arguments

:[0]
call.i draw_self(argc=0)
popz.v
push.v self.scale
pushi.e 1
cmp.i.v LT
bf [3]

:[1]
push.v self.scale
push.d 0.1
add.d.v
pop.v.v self.scale
push.v self.scale
pop.v.v self.image_xscale
push.v self.scale
pop.v.v self.image_yscale
push.v self.scale
pushi.e 360
mul.i.v
pop.v.v self.image_angle
call.i gml_Script_scr_afterimage(argc=0)
pop.v.v self.af
push.d 0.5
push.v self.af
pushi.e -9
pop.v.d [stacktop]self.image_alpha
push.v self.scale
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.d 0.16666666666666666
pop.v.d self.image_speed

:[3]
push.v self.sprite_index
pushi.e 1927
cmp.i.v EQ
bf [5]

:[4]
push.v self.image_index
pushi.e 2
cmp.i.v GT
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 2
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[8]
push.v self.scale
pushi.e 1
cmp.i.v EQ
bf [12]

:[9]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer2
push.e 1
add.i.v
pop.v.v self.timer2
push.v self.siner
push.d 0.4
add.d.v
pop.v.v self.siner
push.v self.difficulty
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
push.v self.siner
push.d 0.1
add.d.v
pop.v.v self.siner

:[11]
pushi.e 270
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 33.3
mul.d.v
add.v.i
pop.v.v self.place1
pushi.e 270
push.v self.siner
pushi.e 50
add.i.v
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 33.3
mul.d.v
add.v.i
pop.v.v self.place2

:[12]
push.v self.timer
pushi.e 9
cmp.i.v GT
bf [16]

:[13]
push.v self.bulletcount
push.e 1
add.i.v
pop.v.v self.bulletcount
push.v self.bulletcount
pushi.e 4
cmp.i.v EQ
bf [15]

:[14]
pushi.e 3
pop.v.i self.timer
pushi.e 0
pop.v.i self.bulletcount
b [16]

:[15]
pushi.e 554
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v 575.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.type
push.v 553.place1
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_angle
pushi.e 5
pop.v.i self.timer

:[16]
push.v self.timer2
pushi.e 9
cmp.i.v GT
bf [18]

:[17]
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [23]

:[20]
push.v self.bulletcount2
push.e 1
add.i.v
pop.v.v self.bulletcount2
push.v self.bulletcount2
pushi.e 4
cmp.i.v EQ
bf [22]

:[21]
pushi.e 3
pop.v.i self.timer2
pushi.e 0
pop.v.i self.bulletcount2
b [23]

:[22]
pushi.e 554
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v 575.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 2
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.type
push.v 553.place2
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_angle
pushi.e 5
pop.v.i self.timer2

:[23]
pushglb.v global.turntimer
pushi.e 3
cmp.i.v LT
bf [end]

:[24]
call.i instance_destroy(argc=0)
popz.v

:[end]