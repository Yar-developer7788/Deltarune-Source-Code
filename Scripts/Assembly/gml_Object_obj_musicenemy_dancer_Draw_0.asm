.localvar 2 arguments

:[0]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.bodyflip
mul.v.v
push.v self.y
push.v self.x
pushi.e 1
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.headimage
push.v self.headframe
add.v.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
push.v self.x
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
pop.v.v self.x
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 11
cmp.i.v GTE
bf [4]

:[3]
pushi.e 1
pop.v.i self.frame
pushi.e 0
pop.v.i self.timer

:[4]
push.v self.frame
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
push.v self.bodyflip
pushi.e -1
mul.i.v
pop.v.v self.bodyflip
pushi.e 0
pop.v.i self.frame

:[6]
push.v self.shoottimer
pushi.e 22
cmp.i.v GTE
bf [8]

:[7]
pushi.e 1
pop.v.i self.active
push.v self.shoottimer
pushi.e 22
sub.i.v
pop.v.v self.shoottimer

:[8]
push.v self.buffer
push.e 1
sub.i.v
pop.v.v self.buffer
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [23]

:[9]
push.v self.headframe
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
push.v self.buffer
pushi.e 0
cmp.i.v LTE
b [12]

:[11]
push.e 0

:[12]
bf [20]

:[13]
pushi.e 2
pop.v.i self.buffer
pushi.e 723
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bul
push.d 0.5
push.d 0.1
conv.d.v
call.i random(argc=1)
add.v.d
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.gravity
pushi.e 1
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 1
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.image_angle
pushi.e -3
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.vspeed
pushi.e 4
conv.i.v
pushi.e -4
conv.i.v
call.i random_range(argc=2)
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.hspeed
push.v self.bultype
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.bultype
pushi.e 358
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [17]

:[14]
push.v self.x
push.v 358.x
cmp.v.v LT
bf [16]

:[15]
pushi.e 4
conv.i.v
call.i random(argc=1)
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.hspeed
b [17]

:[16]
pushi.e 4
conv.i.v
call.i random(argc=1)
neg.v
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.hspeed

:[17]
push.v self.bultype
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
pushi.e 4
conv.i.v
pushi.e -4
conv.i.v
call.i choose(argc=2)
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.hspeed

:[19]
push.d 0.1
push.v self.bul
pushi.e -9
pop.v.d [stacktop]self.friction
push.v 722.depth
pushi.e 100
sub.i.v
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.active
pushi.e -100
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 90
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.copymake
push.v self.damage
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 1743
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 1
pop.v.i self.headframe

:[20]
push.v self.headframe
push.d 0.25
add.d.v
pop.v.v self.headframe
push.v self.headframe
push.d 2.5
cmp.d.v GTE
bf [22]

:[21]
pushi.e 0
pop.v.i self.active

:[22]
b [end]

:[23]
pushi.e 0
pop.v.i self.headframe

:[end]