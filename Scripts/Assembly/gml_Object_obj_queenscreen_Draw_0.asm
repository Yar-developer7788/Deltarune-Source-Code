.localvar 2 arguments
.localvar 107 i 8491

:[0]
push.v self.brokenscreen
pushi.e 0
cmp.b.v EQ
bf [6]

:[1]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
call.i draw_self(argc=0)
popz.v
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
push.v self.y
push.v self.siner
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
conv.i.d
div.d.v
add.v.v
pop.v.v self.y
push.v self.tasquecon
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e -5
pushi.e 8
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 1
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
push.d 0.1
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
add.v.d
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.d 0.01
add.d.v
push.v self.image_xscale
push.d 0.01
add.d.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i gml_Script_draw_sprite_ext_flash(argc=9)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v

:[6]
push.v self.brokenscreen
pushi.e 1
cmp.b.v EQ
bf [end]

:[7]
pushbltn.v builtin.room
pushi.e 167
cmp.i.v EQ
bf [9]

:[8]
pushi.e 43
pop.v.i self.drawindex
pushi.e 171
conv.i.v
pushi.e 255
conv.i.v
pushi.e 223
conv.i.v
call.i make_color_rgb(argc=3)
pop.v.v self.linecolor
b [10]

:[9]
pushi.e 11
pop.v.i self.drawindex
push.i 65280
pop.v.i self.linecolor

:[10]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.drawindex
pushi.e 37
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
pop.v.i local.i

:[11]
pushloc.v local.i
pushi.e 9
cmp.i.v LT
bf [13]

:[12]
push.v self.linecolor
call.i draw_set_color(argc=1)
popz.v
push.v self.brokeAlpha
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e -1
pushloc.v local.i
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.yy
add.v.v
push.v self.x
pushi.e -1
pushloc.v local.i
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.xx
add.v.v
push.v self.y
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.yy
add.v.v
push.v self.x
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.xx
add.v.v
call.i draw_line_width(argc=5)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [11]

:[13]
push.v self.timer2
push.e 1
add.i.v
pop.v.v self.timer2
push.v self.timer2
pushi.e 4
cmp.i.v GTE
bf [15]

:[14]
pushi.e -5
pushi.e 8
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [21]

:[17]
pushi.e 0
pop.v.i local.i

:[18]
pushloc.v local.i
pushi.e 10
cmp.i.v LT
bf [20]

:[19]
push.i 166013
setowner.e
push.v self.r
push.v self.r
neg.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.xx
push.v self.r
pushi.e 6
conv.i.d
div.d.v
push.v self.r
neg.v
pushi.e 6
conv.i.d
div.d.v
call.i random_range(argc=2)
add.v.v
call.i clamp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.xx
push.i 166014
setowner.e
push.v self.r
push.v self.r
neg.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.yy
push.v self.r
pushi.e 6
conv.i.d
div.d.v
push.v self.r
neg.v
pushi.e 6
conv.i.d
div.d.v
call.i random_range(argc=2)
add.v.v
call.i clamp(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.yy
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [18]

:[20]
pushi.e 0
pop.v.i self.timer2

:[21]
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
push.v self.y
push.v self.siner
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
conv.i.d
div.d.v
add.v.v
pop.v.v self.y
push.v self.tasquecon
pushi.e 0
cmp.i.v EQ
bf [end]

:[22]
push.v self.brokeAlpha
pushi.e 0
cmp.i.v EQ
bf [24]

:[23]
push.d 0.05
pop.v.d self.brokeAlpha

:[24]
push.v self.brokeAlpha
push.d 1.5
mul.d.v
pop.v.v self.brokeAlpha
pushi.e -5
pushi.e 8
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [end]

:[25]
pushi.e 1
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
push.d 0.1
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
add.v.d
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.d 0.01
add.d.v
push.v self.image_xscale
push.d 0.01
add.d.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i gml_Script_draw_sprite_ext_flash(argc=9)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v

:[end]