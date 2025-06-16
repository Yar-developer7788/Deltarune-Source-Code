.localvar 2 arguments

:[0]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v self.dancing
conv.v.b
bf [12]

:[2]
push.v self.updatetimer
push.e 1
add.i.v
pop.v.v self.updatetimer
push.v self.updatetimer
pushi.e 2
cmp.i.v GTE
bf [4]

:[3]
push.v self.siner
pushi.e 2
add.i.v
pop.v.v self.siner
pushi.e 0
pop.v.i self.updatetimer

:[4]
push.v self.flash
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
push.v self.fsiner
push.e 1
add.i.v
pop.v.v self.fsiner

:[6]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
pushi.e 2
add.i.v
pushi.e 8
push.v self.dance_index
sub.v.i
pushi.e 1777
conv.i.v
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 4
mul.i.v
add.v.v
push.v self.x
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
pushi.e 3
push.v self.dance_index
sub.v.i
pushi.e 1777
conv.i.v
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 3
mul.i.v
add.v.v
push.v self.x
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pushi.e 4
conv.i.v
pushi.e 1777
conv.i.v
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 6
mul.i.v
add.v.v
push.v self.x
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 6
mul.i.v
add.v.v
pushi.e 4
sub.i.v
pushi.e 1
conv.i.v
pushi.e 1777
conv.i.v
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 4
mul.i.v
add.v.v
push.v self.x
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
pushi.e 5
push.v self.dance_index
add.v.i
pushi.e 1777
conv.i.v
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v
push.v self.dancetimer
push.e 1
add.i.v
pop.v.v self.dancetimer
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 0
cmp.i.v GT
bf [8]

:[7]
pushi.e 1
pop.v.i self.dance_index
b [9]

:[8]
pushi.e 0
pop.v.i self.dance_index

:[9]
push.v self.musicalnotetimer
push.e 1
add.i.v
pop.v.v self.musicalnotetimer
push.v self.musicalnotetimer
pushi.e 14
cmp.i.v EQ
bf [11]

:[10]
pushi.e 0
pop.v.i self.musicalnotetimer
pushi.e 352
conv.i.v
push.v self.y
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 10
sub.i.v
pushi.e 40
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

:[11]
b [end]

:[12]
push.v self.siner
push.d 0.16666666666666666
add.d.v
pop.v.v self.siner
push.v self.y
push.v self.x
push.v self.siner
push.v self.thissprite
call.i gml_Script_draw_monster_body_part(argc=4)
popz.v

:[end]