.localvar 2 arguments

:[0]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v self.dancing
pushi.e 1
cmp.i.v EQ
bf [12]

:[2]
push.v self.flash
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.fsiner
push.e 1
add.i.v
pop.v.v self.fsiner

:[4]
push.v self.updatetimer
push.e 1
add.i.v
pop.v.v self.updatetimer
push.v self.updatetimer
pushi.e 2
cmp.i.v GTE
bf [6]

:[5]
push.v self.siner
pushi.e 2
add.i.v
pop.v.v self.siner
pushi.e 0
pop.v.i self.updatetimer

:[6]
pushi.e 1
conv.i.v
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
pushi.e 4
conv.i.d
div.d.v
call.i cos(argc=1)
call.i abs(argc=1)
pushi.e 4
mul.i.v
add.v.v
pushi.e 4
sub.i.v
push.v self.x
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 14
mul.i.v
add.v.v
push.v self.dance_index
pushi.e 1774
conv.i.v
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
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
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 8
mul.i.v
sub.v.v
pushi.e 3
conv.i.v
pushi.e 1774
conv.i.v
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
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
pushi.e 2
conv.i.v
pushi.e 1774
conv.i.v
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
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
pushi.e 2
mul.i.v
add.v.v
pushi.e 1
conv.i.v
pushi.e 1774
conv.i.v
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
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
pushi.e 2
mul.i.v
add.v.v
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.v
pushi.e 6
conv.i.v
pushi.e 1774
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
pushi.e 4
pop.v.i self.dance_index
b [9]

:[8]
pushi.e 5
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
pushi.e 20
add.i.v
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
push.v self.flash
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
push.v self.fsiner
push.e 1
add.i.v
pop.v.v self.fsiner

:[14]
push.v self.timer
pushi.e 2
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 8
cmp.i.v GT
bf [16]

:[15]
push.v self.timerB
pushi.e 1
add.i.v
pop.v.v self.timerB
pushi.e 0
pop.v.i self.timer

:[16]
push.v self.timerB
call.i cos(argc=1)
push.d 0.8
cmp.d.v GT
bf [18]

:[17]
pushi.e 1
pop.v.i self.down

:[18]
push.v self.timerB
call.i cos(argc=1)
push.d -0.8
cmp.d.v LT
bf [20]

:[19]
pushi.e 0
pop.v.i self.down

:[20]
pushi.e 1
conv.i.v
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
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.sprite
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.timerB
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
push.v [array]self.sprite
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.timerB
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
push.v [array]self.sprite
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
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
push.v self.down
pushi.e -1
pushi.e 3
push.v [array]self.sprite
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.timerB
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
push.v self.down
pushi.e -1
pushi.e 5
push.v [array]self.sprite
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.timerB
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
push.v self.timerB
call.i sin(argc=1)
neg.v
pushi.e 4
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 6
push.v [array]self.sprite
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.timerB
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
push.v self.timerB
call.i sin(argc=1)
neg.v
pushi.e 4
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 7
push.v [array]self.sprite
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.timerB
call.i cos(argc=1)
add.v.v
push.v self.x
push.v self.timerB
call.i sin(argc=1)
neg.v
pushi.e 2
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 8
push.v [array]self.sprite
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.timerB
pushi.e 2
mul.i.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
push.v self.timerB
push.d 1.2
mul.d.v
call.i sin(argc=1)
neg.v
pushi.e 6
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 9
push.v [array]self.sprite
call.i gml_Script_draw_monster_body_part_ext(argc=9)
popz.v

:[end]