.localvar 2 arguments

:[0]
push.v self.kq
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.vskew
push.v self.hskew
push.v self.image_alpha
push.i 4210752
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 12
push.v self.hskew
mul.v.i
pushi.e 20
conv.i.d
div.d.v
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i gml_Script_draw_sprite_skew_ext_cute(argc=11)
popz.v
push.v self.vskew
push.v self.hskew
push.v self.image_alpha
push.i 8421504
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 6
push.v self.hskew
mul.v.i
pushi.e 20
conv.i.d
div.d.v
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i gml_Script_draw_sprite_skew_ext_cute(argc=11)
popz.v

:[2]
push.v self.vskew
push.v self.hskew
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i gml_Script_draw_sprite_skew_ext_cute(argc=11)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "h: "@21238
push.v self.hskew
call.i string(argc=1)
add.v.s
push.s "#v: "@21239
add.s.v
push.v self.vskew
call.i string(argc=1)
add.v.v
push.s "rot: "@21240
add.s.v
push.v self.image_angle
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.auto
pushi.e 1
cmp.i.v EQ
bt [4]

:[3]
push.v self.auto
pushi.e 2
cmp.i.v EQ
b [5]

:[4]
push.e 1

:[5]
bf [end]

:[6]
push.v self.timer
pushi.e 8
cmp.i.v EQ
bf [12]

:[7]
push.v self.auto
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e 50
conv.i.v
pushi.e -50
conv.i.v
call.i random_range(argc=2)
pop.v.v self.hskew
pushi.e 20
conv.i.v
pushi.e -20
conv.i.v
call.i random_range(argc=2)
pop.v.v self.vskew

:[9]
push.v self.auto
pushi.e 2
cmp.i.v EQ
bf [11]

:[10]
pushi.e 0
pop.v.i self.image_speed
push.v self.image_index
push.e 1
add.i.v
pop.v.v self.image_index
pushi.e 50
conv.i.v
pushi.e -50
conv.i.v
call.i random_range(argc=2)
pop.v.v self.idealhskew
pushi.e 20
conv.i.v
pushi.e -20
conv.i.v
call.i random_range(argc=2)
pop.v.v self.idealvskew

:[11]
pushi.e 0
pop.v.i self.timer

:[12]
push.v self.auto
pushi.e 2
cmp.i.v EQ
bf [end]

:[13]
push.d 0.5
conv.d.v
push.v self.idealhskew
push.v self.hskew
call.i lerp(argc=3)
pop.v.v self.hskew
push.d 0.5
conv.d.v
push.v self.idealvskew
push.v self.vskew
call.i lerp(argc=3)
pop.v.v self.vskew

:[end]