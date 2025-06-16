.localvar 2 arguments

:[0]
push.v self.swordmode
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i draw_self(argc=0)
popz.v

:[2]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [4]

:[3]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
b [5]

:[4]
push.e 0

:[5]
bf [24]

:[6]
pushglb.v global.darkzone
pushi.e 0
cmp.i.v EQ
bf [15]

:[7]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
conv.b.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 13
add.i.v
push.v self.y
pushi.e 6
add.i.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i draw_rectangle(argc=5)
popz.v

:[9]
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1
conv.b.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
pushi.e 13
sub.i.v
push.v self.y
pushi.e 6
add.i.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i draw_rectangle(argc=5)
popz.v

:[11]
pushglb.v global.facing
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
pushi.e 1
conv.b.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 15
add.i.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 4
sub.i.v
push.v self.y
pushi.e 28
add.i.v
push.v self.x
pushi.e 4
add.i.v
call.i draw_rectangle(argc=5)
popz.v

:[13]
pushglb.v global.facing
pushi.e 2
cmp.i.v EQ
bf [15]

:[14]
pushi.e 1
conv.b.v
push.v self.y
pushi.e 5
add.i.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 5
sub.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 5
sub.i.v
push.v self.x
pushi.e 3
add.i.v
call.i draw_rectangle(argc=5)
popz.v

:[15]
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [24]

:[16]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
pushi.e 1
conv.b.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 26
add.i.v
push.v self.y
pushi.e 12
add.i.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i draw_rectangle(argc=5)
popz.v

:[18]
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [20]

:[19]
pushi.e 1
conv.b.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
pushi.e 26
sub.i.v
push.v self.y
pushi.e 12
add.i.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i draw_rectangle(argc=5)
popz.v

:[20]
pushglb.v global.facing
pushi.e 0
cmp.i.v EQ
bf [22]

:[21]
pushi.e 1
conv.b.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 30
add.i.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 8
sub.i.v
push.v self.y
pushi.e 56
add.i.v
push.v self.x
pushi.e 4
add.i.v
call.i draw_rectangle(argc=5)
popz.v

:[22]
pushglb.v global.facing
pushi.e 2
cmp.i.v EQ
bf [24]

:[23]
pushi.e 1
conv.b.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 10
sub.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 10
sub.i.v
push.v self.x
pushi.e 3
add.i.v
call.i draw_rectangle(argc=5)
popz.v

:[24]
push.v self.battlemode
pushi.e 1
cmp.i.v EQ
bf [31]

:[25]
pushi.e 1
pop.v.i self.becamebattle
push.v self.battlealpha
push.d 0.8
cmp.d.v LT
bf [27]

:[26]
push.v self.drawbattlemode
conv.v.b
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
push.v self.battlealpha
push.d 0.04
add.d.v
pop.v.v self.battlealpha

:[30]
push.v self.x
pushi.e 12
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
sub.v.v
pop.v.v global.heartx
push.v self.y
pushi.e 40
add.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
sub.v.v
pop.v.v global.hearty
b [33]

:[31]
push.v self.battlealpha
pushi.e 0
cmp.i.v GT
bf [33]

:[32]
push.v self.battlealpha
push.d 0.08
sub.d.v
pop.v.v self.battlealpha

:[33]
push.v self.battlealpha
push.v self.battleheart
pushi.e -9
pop.v.v [stacktop]self.image_alpha
push.v self.swordmode
pushi.e 0
cmp.i.v EQ
bf [46]

:[34]
push.v self.fun
pushi.e 0
cmp.i.v EQ
bf [44]

:[35]
pushglb.v global.facing
pushi.e 0
cmp.i.v EQ
bf [37]

:[36]
push.v self.battlealpha
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
pushi.e 644
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[37]
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
bf [39]

:[38]
push.v self.battlealpha
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
pushi.e 648
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[39]
pushglb.v global.facing
pushi.e 2
cmp.i.v EQ
bf [41]

:[40]
push.v self.battlealpha
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
pushi.e 646
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[41]
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [43]

:[42]
push.v self.battlealpha
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
pushi.e 647
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[43]
b [46]

:[44]
push.v self.sprite_index
pushi.e 656
cmp.i.v EQ
bf [46]

:[45]
push.v self.battlealpha
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
pushi.e 645
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[46]
push.v self.battlealpha
pushi.e 2
mul.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.x
pushi.e 12
add.i.v
pushi.e 0
conv.i.v
pushi.e 2453
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.x
pushi.e 12
add.i.v
push.v self.battleheart
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.y
pushi.e 40
add.i.v
push.v self.battleheart
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.battlemode
pushi.e 4
cmp.i.v EQ
bf [48]

:[47]
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.d 0.5
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.y
pushi.e 49
add.i.v
push.v self.x
pushi.e 27
add.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.x
pushi.e 12
add.i.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.y
pushi.e 57
add.i.v
push.v self.x
pushi.e 19
add.i.v
push.v self.y
pushi.e 49
add.i.v
push.v self.x
pushi.e 12
add.i.v
call.i draw_line(argc=4)
popz.v
push.v self.y
pushi.e 57
add.i.v
push.v self.x
pushi.e 19
add.i.v
push.v self.y
pushi.e 49
add.i.v
push.v self.x
pushi.e 26
add.i.v
call.i draw_line(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[48]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [50]

:[49]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[50]
push.v self.swordmode
pushi.e 1
cmp.i.v EQ
bf [end]

:[51]
push.v self.swordfacing
pushi.e 1
cmp.i.v EQ
bf [53]

:[52]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.swordsprite
call.i draw_sprite_ext(argc=9)
popz.v

:[53]
push.v self.swordfacing
pushi.e -1
cmp.i.v EQ
bf [end]

:[54]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
neg.v
push.v self.y
push.v self.x
push.v self.sprite_width
add.v.v
push.v self.image_index
push.v self.swordsprite
call.i draw_sprite_ext(argc=9)
popz.v

:[end]