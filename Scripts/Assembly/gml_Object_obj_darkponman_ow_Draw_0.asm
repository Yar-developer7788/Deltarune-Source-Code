.localvar 2 arguments
.localvar 107 i 8374

:[0]
push.v self.boss
pushi.e 1
cmp.i.v EQ
bf [15]

:[1]
push.v self.battlealpha
pop.v.v self.cur_alpha
push.v 82.battlemode
pushi.e 1
cmp.i.v EQ
bf [5]

:[2]
push.v self.battlealpha
push.d 0.5
cmp.d.v LT
bf [4]

:[3]
push.v self.battlealpha
push.d 0.04
add.d.v
pop.v.v self.battlealpha

:[4]
b [7]

:[5]
push.v self.battlealpha
pushi.e 0
cmp.i.v GT
bf [7]

:[6]
push.v self.battlealpha
push.d 0.04
sub.d.v
pop.v.v self.battlealpha

:[7]
push.v self.tile_fade
pushi.e 1
cmp.i.v EQ
bf [12]

:[8]
push.v self.cur_alpha
push.v self.battlealpha
cmp.v.v NEQ
bf [12]

:[9]
pushi.e 0
pop.v.i local.i

:[10]
pushloc.v local.i
push.v self.tilearray
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [12]

:[11]
push.v self.battlealpha
pushi.e 2
mul.i.v
push.v self.max_battlealpha
mul.v.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.tilearray
call.i gml_Script_tile_set_alpha(argc=2)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [10]

:[12]
push.v self.battlealpha
push.v self.max_battlealpha
mul.v.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 540
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 740
add.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 100
sub.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 100
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [15]

:[13]
push.v self.battlealpha
push.v self.max_battlealpha
mul.v.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v 276.image_blend
push.v self.battlealpha
pushi.e 0
cmp.i.v LTE
bf [15]

:[14]
push.i 16777215
pop.v.i 276.image_blend

:[15]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
pushi.e 255
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.yy
add.v.v
push.v self.x
push.v self.xx
add.v.v
push.v self.image_index
push.v self.spr_ponman_eye_white
call.i draw_sprite_ext(argc=9)
popz.v

:[end]