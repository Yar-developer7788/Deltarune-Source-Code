.localvar 2 arguments

:[0]
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
bf [2]

:[1]
pushi.e 1
pop.v.i self.frame
pushi.e 0
pop.v.i self.timer

:[2]
push.v self.frame
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.bodyflip
pushi.e -1
mul.i.v
pop.v.v self.bodyflip
pushi.e 0
pop.v.i self.frame

:[4]
push.v self.shoottimer
pushi.e 22
cmp.i.v GTE
bf [6]

:[5]
pushi.e 1
pop.v.i self.active
push.v self.shoottimer
pushi.e 22
sub.i.v
pop.v.v self.shoottimer

:[6]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [12]

:[7]
push.v self.headframe
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
pushi.e 352
conv.i.v
push.v self.y
pushi.e 106
sub.i.v
push.v self.x
pushi.e 40
sub.i.v
pushi.e 80
conv.i.v
call.i random(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.anim
pushi.e 2625
push.v self.anim
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.depth
pushi.e 5
sub.i.v
push.v self.anim
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 2
push.v self.anim
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.anim
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 270
push.v self.anim
pushi.e -9
pop.v.i [stacktop]self.direction
push.d -0.2
push.v self.anim
pushi.e -9
pop.v.d [stacktop]self.gravity
push.d 0.8
conv.d.v
push.d 0.1
conv.d.v
call.i random_range(argc=2)
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
mul.v.v
push.v self.anim
pushi.e -9
pop.v.v [stacktop]self.hspeed
pushi.e 1
pop.v.i self.headframe

:[9]
push.v self.headframe
push.d 0.5
add.d.v
pop.v.v self.headframe
push.v self.headframe
push.d 2.5
cmp.d.v GTE
bf [11]

:[10]
pushi.e 0
pop.v.i self.active

:[11]
b [end]

:[12]
pushi.e 0
pop.v.i self.headframe

:[end]