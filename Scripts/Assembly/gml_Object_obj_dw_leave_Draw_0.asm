.localvar 2 arguments

:[0]
push.v self.pillarsiner
push.e 1
add.i.v
pop.v.v self.pillarsiner
pushi.e 0
pop.v.i self.dist
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 82.y
pushi.e 30
add.i.v
push.v 82.x
pushi.e 20
add.i.v
push.v self.y
push.v self.x
call.i point_distance(argc=4)
pushi.e 30
sub.i.v
pop.v.v self.dist

:[2]
push.v self.dist
pushi.e 0
cmp.i.v LT
bf [4]

:[3]
pushi.e 0
pop.v.i self.dist

:[4]
push.v self.dist
pushi.e 1500
conv.i.d
div.d.v
pop.v.v self.alphadist
push.v self.alphadist
push.d 0.3
cmp.d.v GTE
bf [6]

:[5]
push.d 0.3
pop.v.d self.alphadist

:[6]
pushi.e 0
pop.v.i self.i

:[7]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [13]

:[8]
push.v self.i
pushi.e 4
conv.i.d
div.d.v
push.v self.pillarsiner
pushi.e 10
conv.i.d
div.d.v
add.v.v
call.i sin(argc=1)
pop.v.v self.sinoff
push.v self.bottom
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.d 0.7
push.v self.alphadist
sub.v.d
push.v self.sinoff
call.i sin(argc=1)
push.d 0.01
mul.d.v
add.v.v
push.v self.pillaralpha
add.v.v
pushi.e 2
conv.i.d
div.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.d 0.3
push.v self.i
mul.v.d
sub.v.v
push.v self.sinoff
call.i sin(argc=1)
push.d 0.1
mul.d.v
add.v.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[10]
push.v self.top
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.d 0.4
push.v self.alphadist
sub.v.d
push.v self.sinoff
call.i sin(argc=1)
push.d 0.01
mul.d.v
add.v.v
push.v self.pillaralpha
add.v.v
pushi.e 3
conv.i.d
div.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.pillarscale
push.d 0.3
push.v self.i
mul.v.d
sub.v.v
push.v self.sinoff
call.i sin(argc=1)
push.d 0.1
mul.d.v
add.v.v
push.v self.y
push.v self.x
pushi.e 1
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[12]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [7]

:[13]
pushi.e 0
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
push.v self.top
pushi.e 1
cmp.i.v EQ
bf [29]

:[14]
push.v self.particletimer
push.e 1
add.i.v
pop.v.v self.particletimer
push.v self.particletimer
pushi.e 2
cmp.i.v GTE
bf [16]

:[15]
pushi.e 942
conv.i.v
push.v self.y
push.v self.sprite_height
call.i random(argc=1)
sub.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
call.i random_range(argc=2)
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.particletimer

:[16]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [21]

:[17]
pushi.e 246
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 943
pushenv [20]

:[18]
push.v self.bottom
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
pushi.e 1
pop.v.i self.draw_kris
pushi.e 1
pop.v.i self.fake_v

:[20]
popenv [18]
pushi.e 2
pop.v.i self.con
pushi.e 0
pop.v.i self.alphab
pushi.e -10
pop.v.i self.fake_v

:[21]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [29]

:[22]
push.v self.alphab
push.d 0.001
add.d.v
pop.v.v self.alphab
push.v self.fake_v
push.d 0.5
push.v self.alphab
pushi.e 20
mul.i.v
add.v.d
add.v.v
pop.v.v self.fake_v
pushi.e 1
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
push.v self.fake_v
pushi.e 80
conv.i.d
div.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 99
conv.i.v
pushi.e 99
conv.i.v
push.v self.y
push.v self.x
pushi.e 1
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
push.v self.fake_v
pushi.e 80
conv.i.d
div.d.v
push.d 1.2
cmp.d.v GTE
bf [29]

:[23]
pushi.e 192
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.pers
push.i 16777215
push.v self.pers
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e 3
pop.v.i global.interact
pushi.e 24
pop.v.i global.entrance
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_snd_free(argc=1)
popz.v
call.i gml_Script_scr_become_light(argc=0)
popz.v
pushglb.v global.plot
pushi.e 16
cmp.i.v EQ
bf [25]

:[24]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
call.i gml_Script_scr_losechar(argc=0)
popz.v

:[28]
push.v self.nextroom
call.i room_goto(argc=1)
popz.v

:[29]
push.v self.bottom
pushi.e 1
cmp.i.v EQ
bf [end]

:[30]
push.v self.draw_kris
pushi.e 1
cmp.i.v EQ
bf [end]

:[31]
push.v self.fake_v
push.d 0.2
sub.d.v
pop.v.v self.fake_v
push.v self.kris_y
push.v self.fake_v
add.v.v
pop.v.v self.kris_y
push.v self.sus_y
push.v self.fake_v
add.v.v
pop.v.v self.sus_y
push.v self.siner
pushi.e 1
push.v self.siner
pushi.e 60
conv.i.d
div.d.v
add.v.i
add.v.v
pop.v.v self.siner
push.v self.kris_only
pushi.e 0
cmp.i.v EQ
bf [33]

:[32]
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
push.v self.sus_y
push.v self.sus_x
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
pushi.e 534
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[33]
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
push.v self.kris_y
push.v self.kris_x
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
pushi.e 536
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]