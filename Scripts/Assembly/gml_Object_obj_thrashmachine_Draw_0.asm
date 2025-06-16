.localvar 2 arguments
.localvar 9170 _xoff 13797
.localvar 9172 _yoff 13798
.localvar 14785 _x2 13799
.localvar 14786 _y2 13800
.localvar 14787 _flash 13801
.localvar 14788 _do_flash 13802
.localvar 14789 _rim_color 13803
.localvar 14790 _flash_color 13804
.localvar 14793 _pieceVector 13805
.localvar 14794 _thrash_image 13806
.localvar 14796 _headsprite 13807
.localvar 14798 _bottom 13808

:[0]
push.i 166604
setowner.e
pushi.e 255
push.v self.value
mul.v.i
pushi.e 255
conv.i.v
pushi.e -5
pushi.e 223
push.v [array]self.flag
pushi.e 8
mul.i.v
call.i make_color_hsv(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.dcolor
pushi.e 255
push.v self.value
mul.v.i
pushi.e 255
conv.i.v
pushi.e -5
pushi.e 224
push.v [array]self.flag
pushi.e 8
mul.i.v
call.i make_color_hsv(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.dcolor
pushi.e 255
push.v self.value
mul.v.i
pushi.e 255
conv.i.v
pushi.e -5
pushi.e 225
push.v [array]self.flag
pushi.e 8
mul.i.v
call.i make_color_hsv(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.dcolor
push.v self.value
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.basecolor
push.d 0.8
pop.v.d self.wsinerrate
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 0
cmp.i.v GTE
bf [2]

:[1]
push.v self.wsiner
push.v self.wsinerrate
add.v.v
pop.v.v self.wsiner

:[2]
push.v self.animate
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.wsiner

:[4]
push.v self.wsiner
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
pop.v.v self.walkc
push.v self.launch
conv.v.b
bf [7]

:[5]
push.v self.image_angle
pushi.e 35
sub.i.v
pop.v.v self.image_angle
push.v self.y
pop.v.v self.yy
push.v self.image_angle
pushi.e 360
mod.i.v
pushi.e 0
cmp.i.v NEQ
bf [7]

:[6]
pushi.e -3
push.v self.s
mul.v.i
pop.v.v local._xoff
pushi.e 12
push.v self.s
mul.v.i
pop.v.v local._yoff
push.v self.xx
pop.v.v local._x2
push.v self.yy
pop.v.v local._y2
push.v self.image_angle
pushloc.v local._y2
pushloc.v local._yoff
sub.v.v
pushloc.v local._x2
pushloc.v local._xoff
sub.v.v
pushloc.v local._y2
pushloc.v local._x2
call.i gml_Script_scr_orbitx(argc=5)
pushloc.v local._xoff
add.v.v
pop.v.v self.xx
push.v self.image_angle
pushloc.v local._y2
pushloc.v local._yoff
sub.v.v
pushloc.v local._x2
pushloc.v local._xoff
sub.v.v
pushloc.v local._y2
pushloc.v local._x2
call.i gml_Script_scr_orbity(argc=5)
pushloc.v local._yoff
add.v.v
pop.v.v self.yy

:[7]
pushi.e 0
pop.v.b local._flash
push.v self.rim_flash
pushi.e 0
cmp.i.v GT
bt [9]

:[8]
push.v self.body_flash
pushi.e 0
cmp.i.v GT
b [10]

:[9]
push.e 1

:[10]
pop.v.b local._do_flash
push.v self.rim_flash
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
call.i merge_color(argc=3)
pop.v.v local._rim_color
push.v self.body_flash
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
call.i merge_color(argc=3)
pop.v.v local._flash_color
pushi.e 0
pop.v.i self.loop

:[11]
push.v self.loop
pushi.e 2
cmp.i.v LT
bf [45]

:[12]
push.v self.loop
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
pushi.e 0
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
push.i 166515
setowner.e
push.v self.basecolor
pushi.e -1
pushi.e 0
pop.v.v [array]self.color
push.v self.basecolor
pushi.e -1
pushi.e 1
pop.v.v [array]self.color
push.v self.basecolor
pushi.e -1
pushi.e 2
pop.v.v [array]self.color
b [16]

:[14]
push.v self.loop
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
pushi.e 1
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
push.i 166515
setowner.e
pushi.e -1
pushi.e 0
push.v [array]self.dcolor
pushi.e -1
pushi.e 0
pop.v.v [array]self.color
pushi.e -1
pushi.e 1
push.v [array]self.dcolor
pushi.e -1
pushi.e 1
pop.v.v [array]self.color
pushi.e -1
pushi.e 2
push.v [array]self.dcolor
pushi.e -1
pushi.e 2
pop.v.v [array]self.color

:[16]
push.v self.loop
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
pushloc.v local._do_flash
conv.v.b
b [19]

:[18]
push.e 0

:[19]
pop.v.b local._flash
push.v self.wsiner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
pop.v.v self.walka
push.v self.wsiner
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
neg.v
pop.v.v self.walkb
push.v self.moving
pushi.e 1
cmp.i.v EQ
bf [22]

:[20]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 0
cmp.i.v EQ
bf [22]

:[21]
push.v self.walkb
pushi.e 0
cmp.i.v LTE
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
push.v self.walkb
pushi.e 3
mul.i.v
pop.v.v self.walkb

:[25]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_Vector2(argc=2)
pop.v.v local._pieceVector
push.v self.drawfeet
conv.v.b
bf [44]

:[26]
pushi.e 0
pop.v.i local._thrash_image
push.v self.bad
pushi.e 0
cmp.i.v EQ
bf [38]

:[27]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 0
cmp.i.v EQ
bf [29]

:[28]
push.v self.image_angle
pushi.e 19
push.v self.s
mul.v.i
push.v self.s
push.v self.walkb
mul.v.v
pushi.e 1
mul.i.v
add.v.v
pushi.e -11
push.v self.s
mul.v.i
push.v self.s
push.v self.walka
mul.v.v
pushi.e 2
mul.i.v
add.v.v
call.i gml_Script_scr_rotatevector(argc=3)
pop.v.v local._pieceVector
pushi.e 0
pop.v.i local._thrash_image

:[29]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
push.v self.image_angle
pushi.e 17
push.v self.s
mul.v.i
push.v self.s
push.v self.walkb
mul.v.v
pushi.e 1
mul.i.v
add.v.v
pushi.e -6
push.v self.s
mul.v.i
push.v self.s
push.v self.walka
mul.v.v
pushi.e 2
mul.i.v
add.v.v
call.i gml_Script_scr_rotatevector(argc=3)
pop.v.v local._pieceVector
pushi.e 1
pop.v.i local._thrash_image

:[31]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 3
cmp.i.v EQ
bf [33]

:[32]
pushi.e 4
pop.v.i local._thrash_image
push.v self.image_angle
pushi.e 21
push.v self.s
mul.v.i
push.v self.s
push.v self.walkb
mul.v.v
pushi.e 1
mul.i.v
add.v.v
pushi.e -8
push.v self.s
mul.v.i
push.v self.s
push.v self.walka
mul.v.v
pushi.e 2
mul.i.v
add.v.v
call.i gml_Script_scr_rotatevector(argc=3)
pop.v.v local._pieceVector

:[33]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 2
cmp.i.v NEQ
bf [35]

:[34]
push.v self.override_color
push.v self.a
pushi.e -1
pushi.e 2
push.v [array]self.color
push.v self.image_angle
push.v self.s
push.v self.s
push.v self.yy
pushloc.v local._pieceVector
pushi.e -9
push.v [stacktop]self.y
add.v.v
push.v self.xx
pushloc.v local._pieceVector
pushi.e -9
push.v [stacktop]self.x
add.v.v
pushloc.v local._thrash_image
pushi.e 2333
conv.i.v
call.i gml_Script_draw_sprite_ext_glow(argc=10)
popz.v

:[35]
pushloc.v local._flash
conv.v.b
bf [37]

:[36]
pushloc.v local._flash_color
push.v self.a
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.s
push.v self.s
push.v self.yy
pushloc.v local._pieceVector
pushi.e -9
push.v [stacktop]self.y
add.v.v
push.v self.xx
pushloc.v local._pieceVector
pushi.e -9
push.v [stacktop]self.x
add.v.v
pushloc.v local._thrash_image
pushi.e 2333
conv.i.v
call.i gml_Script_draw_sprite_ext_glow(argc=10)
popz.v
push.v self.a
pushloc.v local._rim_color
push.v self.image_angle
push.v self.s
push.v self.s
push.v self.yy
pushloc.v local._pieceVector
pushi.e -9
push.v [stacktop]self.y
add.v.v
push.v self.xx
pushloc.v local._pieceVector
pushi.e -9
push.v [stacktop]self.x
add.v.v
pushloc.v local._thrash_image
pushi.e 3287
conv.i.v
call.i gml_Script_draw_sprite_ext_glow(argc=9)
popz.v

:[37]
b [44]

:[38]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 0
cmp.i.v EQ
bf [40]

:[39]
push.v self.override_color
push.v self.a
pushi.e -1
pushi.e 2
push.v [array]self.color
pushi.e 0
conv.i.v
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.yy
pushi.e 19
push.v self.s
mul.v.i
add.v.v
push.v self.s
push.v self.walkb
mul.v.v
pushi.e 1
mul.i.v
add.v.v
push.v self.xx
pushi.e 11
push.v self.s
mul.v.i
sub.v.v
push.v self.s
push.v self.walka
mul.v.v
pushi.e 2
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 2329
conv.i.v
call.i gml_Script_draw_sprite_ext_glow(argc=10)
popz.v

:[40]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
push.v self.override_color
push.v self.a
pushi.e -1
pushi.e 2
push.v [array]self.color
pushi.e 0
conv.i.v
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.yy
pushi.e 17
push.v self.s
mul.v.i
add.v.v
push.v self.s
push.v self.walkb
mul.v.v
pushi.e 1
mul.i.v
add.v.v
push.v self.xx
pushi.e 6
push.v self.s
mul.v.i
sub.v.v
push.v self.s
push.v self.walka
mul.v.v
pushi.e 2
mul.i.v
add.v.v
pushi.e 1
conv.i.v
pushi.e 2329
conv.i.v
call.i gml_Script_draw_sprite_ext_glow(argc=10)
popz.v

:[42]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 3
cmp.i.v EQ
bf [44]

:[43]
push.v self.override_color
push.v self.a
pushi.e -1
pushi.e 2
push.v [array]self.color
pushi.e 0
conv.i.v
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.yy
pushi.e 21
push.v self.s
mul.v.i
add.v.v
push.v self.s
push.v self.walkb
mul.v.v
pushi.e 1
mul.i.v
add.v.v
push.v self.xx
pushi.e 8
push.v self.s
mul.v.i
sub.v.v
push.v self.s
push.v self.walka
mul.v.v
pushi.e 2
mul.i.v
add.v.v
pushi.e 4
conv.i.v
pushi.e 2329
conv.i.v
call.i gml_Script_draw_sprite_ext_glow(argc=10)
popz.v

:[44]
push.v self.loop
pushi.e 1
add.i.v
pop.v.v self.loop
b [11]

:[45]
pushi.e -1
pushi.e 0
push.v [array]self.part
pushi.e 0
cmp.i.v GTE
bf [67]

:[46]
pushi.e 0
pop.v.i self.loop

:[47]
push.v self.loop
pushi.e 2
cmp.i.v LT
bf [67]

:[48]
push.v self.loop
pushi.e 0
cmp.i.v EQ
bf [50]

:[49]
pushi.e 0
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
push.i 166515
setowner.e
push.v self.basecolor
pushi.e -1
pushi.e 0
pop.v.v [array]self.color
push.v self.basecolor
pushi.e -1
pushi.e 1
pop.v.v [array]self.color
push.v self.basecolor
pushi.e -1
pushi.e 2
pop.v.v [array]self.color

:[50]
push.v self.loop
pushi.e 1
cmp.i.v EQ
bf [52]

:[51]
pushi.e 1
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
pushi.e -1
pushi.e 0
push.v [array]self.dcolor
pushi.e -1
pushi.e 0
pop.v.v [array]self.color
pushi.e -1
pushi.e 1
push.v [array]self.dcolor
pushi.e -1
pushi.e 1
pop.v.v [array]self.color
pushi.e -1
pushi.e 2
push.v [array]self.dcolor
pushi.e -1
pushi.e 2
pop.v.v [array]self.color

:[52]
pushloc.v local._do_flash
conv.v.b
bf [54]

:[53]
push.v self.loop
pushi.e 1
cmp.i.v EQ
b [55]

:[54]
push.e 0

:[55]
pop.v.b local._flash
push.v self.image_angle
push.v self.s
push.v self.walkc
mul.v.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_rotatevector(argc=3)
pop.v.v local._pieceVector
pushloc.v local._flash
conv.v.b
not.b
bf [57]

:[56]
pushloc.v local._do_flash
conv.v.b
b [58]

:[57]
push.e 0

:[58]
bf [60]

:[59]
pushi.e 2
conv.i.v
push.v self.rim_flash
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.s
push.v self.s
push.v self.yy
pushloc.v local._pieceVector
pushi.e -9
push.v [stacktop]self.y
add.v.v
push.v self.xx
pushi.e -1
pushi.e 0
push.v [array]self.part
pushi.e 2332
conv.i.v
call.i gml_Script_scr_draw_outline_ext(argc=10)
popz.v

:[60]
push.v self.bad
pushi.e 0
cmp.i.v EQ
bf [62]

:[61]
push.v self.override_color
push.v self.a
pushi.e -1
pushi.e 0
push.v [array]self.color
push.v self.image_angle
push.v self.s
push.v self.s
push.v self.yy
pushloc.v local._pieceVector
pushi.e -9
push.v [stacktop]self.y
add.v.v
push.v self.xx
pushi.e -1
pushi.e 0
push.v [array]self.part
pushi.e 2332
conv.i.v
call.i gml_Script_draw_sprite_ext_glow(argc=10)
popz.v
b [64]

:[62]
push.v self.bad
pushi.e 1
cmp.i.v EQ
bf [64]

:[63]
push.v self.override_color
push.v self.a
pushi.e -1
pushi.e 0
push.v [array]self.color
push.v self.image_angle
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.yy
pushloc.v local._pieceVector
pushi.e -9
push.v [stacktop]self.y
add.v.v
push.v self.xx
pushi.e -1
pushi.e 0
push.v [array]self.part
pushi.e 2331
conv.i.v
call.i gml_Script_draw_sprite_ext_glow(argc=10)
popz.v

:[64]
pushloc.v local._flash
conv.v.b
bf [66]

:[65]
pushi.e 1
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
push.v self.rim_flash
push.d 0.5
conv.d.v
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.color
call.i merge_color(argc=3)
push.v self.image_angle
push.v self.s
push.v self.s
push.v self.yy
pushloc.v local._pieceVector
pushi.e -9
push.v [stacktop]self.y
add.v.v
push.v self.xx
pushi.e -1
pushi.e 0
push.v [array]self.part
pushi.e 3309
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[66]
push.v self.loop
pushi.e 1
add.i.v
pop.v.v self.loop
b [47]

:[67]
pushi.e 0
pop.v.i self.loop

:[68]
push.v self.loop
pushi.e 2
cmp.i.v LT
bf [117]

:[69]
push.v self.loop
pushi.e 0
cmp.i.v EQ
bf [71]

:[70]
pushi.e 0
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
push.i 166515
setowner.e
push.v self.basecolor
pushi.e -1
pushi.e 0
pop.v.v [array]self.color
push.v self.basecolor
pushi.e -1
pushi.e 1
pop.v.v [array]self.color
push.v self.basecolor
pushi.e -1
pushi.e 2
pop.v.v [array]self.color

:[71]
push.v self.loop
pushi.e 1
cmp.i.v EQ
bf [73]

:[72]
pushi.e 1
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
pushi.e -1
pushi.e 0
push.v [array]self.dcolor
pushi.e -1
pushi.e 0
pop.v.v [array]self.color
pushi.e -1
pushi.e 1
push.v [array]self.dcolor
pushi.e -1
pushi.e 1
pop.v.v [array]self.color
pushi.e -1
pushi.e 2
push.v [array]self.dcolor
pushi.e -1
pushi.e 2
pop.v.v [array]self.color

:[73]
pushloc.v local._do_flash
conv.v.b
bf [75]

:[74]
push.v self.loop
pushi.e 1
cmp.i.v EQ
b [76]

:[75]
push.e 0

:[76]
pop.v.b local._flash
push.v self.bad
pushi.e 0
cmp.i.v EQ
bf [108]

:[77]
pushi.e -1
pushi.e 1
push.v [array]self.part
pushi.e 0
cmp.i.v EQ
bf [84]

:[78]
push.v self.image_angle
pushi.e 6
push.v self.s
mul.v.i
push.v self.s
push.v self.walkc
mul.v.v
pushi.e 2
mul.i.v
add.v.v
pushi.e -8
push.v self.s
mul.v.i
call.i gml_Script_scr_rotatevector(argc=3)
pop.v.v local._pieceVector
push.v self.xx
pushloc.v local._pieceVector
pushi.e -9
push.v [stacktop]self.x
add.v.v
pop.v.v self.headx
push.v self.yy
pushloc.v local._pieceVector
pushi.e -9
push.v [stacktop]self.y
add.v.v
pop.v.v self.heady
pushi.e 1084
pop.v.i local._headsprite
pushloc.v local._flash
conv.v.b
not.b
bf [80]

:[79]
pushloc.v local._do_flash
conv.v.b
b [81]

:[80]
push.e 0

:[81]
bf [83]

:[82]
pushi.e 2
conv.i.v
push.v self.rim_flash
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.s
push.v self.s
push.v self.heady
push.v self.headx
pushi.e 0
conv.i.v
pushi.e 2339
conv.i.v
call.i gml_Script_scr_draw_outline_ext(argc=10)
popz.v

:[83]
push.v self.override_color
push.v self.a
pushi.e -1
pushi.e 1
push.v [array]self.color
push.v self.image_angle
push.v self.s
push.v self.s
push.v self.heady
push.v self.headx
pushi.e 0
conv.i.v
pushi.e 2339
conv.i.v
call.i gml_Script_draw_sprite_ext_glow(argc=10)
popz.v

:[84]
pushi.e -1
pushi.e 1
push.v [array]self.part
pushi.e 1
cmp.i.v EQ
bf [91]

:[85]
push.v self.image_angle
pushi.e 6
push.v self.s
mul.v.i
push.v self.s
push.v self.walkc
mul.v.v
pushi.e 2
mul.i.v
add.v.v
pushi.e -10
push.v self.s
mul.v.i
call.i gml_Script_scr_rotatevector(argc=3)
pop.v.v local._pieceVector
push.v self.xx
pushloc.v local._pieceVector
pushi.e -9
push.v [stacktop]self.x
add.v.v
pop.v.v self.headx
push.v self.yy
pushloc.v local._pieceVector
pushi.e -9
push.v [stacktop]self.y
add.v.v
pop.v.v self.heady
pushi.e 2792
pop.v.i local._headsprite
pushloc.v local._flash
conv.v.b
not.b
bf [87]

:[86]
pushloc.v local._do_flash
conv.v.b
b [88]

:[87]
push.e 0

:[88]
bf [90]

:[89]
pushi.e 2
conv.i.v
push.v self.rim_flash
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.s
push.v self.s
push.v self.heady
push.v self.headx
pushi.e 0
conv.i.v
pushi.e 2340
conv.i.v
call.i gml_Script_scr_draw_outline_ext(argc=10)
popz.v

:[90]
push.v self.override_color
push.v self.a
pushi.e -1
pushi.e 1
push.v [array]self.color
push.v self.headangle
push.v self.image_angle
add.v.v
push.v self.s
push.v self.s
push.v self.heady
push.v self.headx
pushi.e 0
conv.i.v
pushi.e 2340
conv.i.v
call.i gml_Script_draw_sprite_ext_glow(argc=10)
popz.v

:[91]
pushi.e -1
pushi.e 1
push.v [array]self.part
pushi.e 2
cmp.i.v EQ
bf [98]

:[92]
push.v self.image_angle
pushi.e 5
push.v self.s
mul.v.i
push.v self.s
push.v self.walkc
mul.v.v
pushi.e 2
mul.i.v
add.v.v
push.v self.s
neg.v
pushi.e 4
mul.i.v
call.i gml_Script_scr_rotatevector(argc=3)
pop.v.v local._pieceVector
push.v self.xx
pushloc.v local._pieceVector
pushi.e -9
push.v [stacktop]self.x
add.v.v
pop.v.v self.headx
push.v self.yy
pushloc.v local._pieceVector
pushi.e -9
push.v [stacktop]self.y
add.v.v
pop.v.v self.heady
pushi.e 3288
pop.v.i local._headsprite
pushloc.v local._flash
conv.v.b
not.b
bf [94]

:[93]
pushloc.v local._do_flash
conv.v.b
b [95]

:[94]
push.e 0

:[95]
bf [97]

:[96]
pushi.e 2
conv.i.v
push.v self.rim_flash
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.s
push.v self.s
push.v self.heady
push.v self.headx
pushi.e 0
conv.i.v
pushi.e 2338
conv.i.v
call.i gml_Script_scr_draw_outline_ext(argc=10)
popz.v

:[97]
push.v self.override_color
push.v self.a
pushi.e -1
pushi.e 1
push.v [array]self.color
push.v self.headangle
push.v self.image_angle
add.v.v
push.v self.s
push.v self.s
push.v self.heady
push.v self.headx
pushi.e 0
conv.i.v
pushi.e 2338
conv.i.v
call.i gml_Script_draw_sprite_ext_glow(argc=10)
popz.v

:[98]
pushi.e -1
pushi.e 1
push.v [array]self.part
pushi.e 3
cmp.i.v EQ
bf [105]

:[99]
push.v self.image_angle
pushi.e 3
push.v self.s
mul.v.i
push.v self.s
push.v self.walkc
mul.v.v
pushi.e 2
mul.i.v
add.v.v
pushi.e -8
push.v self.s
mul.v.i
call.i gml_Script_scr_rotatevector(argc=3)
pop.v.v local._pieceVector
push.v self.xx
pushloc.v local._pieceVector
pushi.e -9
push.v [stacktop]self.x
add.v.v
pop.v.v self.headx
push.v self.yy
pushloc.v local._pieceVector
pushi.e -9
push.v [stacktop]self.y
add.v.v
pop.v.v self.heady
pushi.e 3333
pop.v.i local._headsprite
pushloc.v local._flash
conv.v.b
not.b
bf [101]

:[100]
pushloc.v local._do_flash
conv.v.b
b [102]

:[101]
push.e 0

:[102]
bf [104]

:[103]
pushi.e 2
conv.i.v
push.v self.rim_flash
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.s
push.v self.s
push.v self.heady
push.v self.headx
pushi.e 0
conv.i.v
pushi.e 2337
conv.i.v
call.i gml_Script_scr_draw_outline_ext(argc=10)
popz.v

:[104]
push.v self.override_color
push.v self.a
pushi.e -1
pushi.e 1
push.v [array]self.color
push.v self.headangle
push.v self.image_angle
add.v.v
push.v self.s
push.v self.s
push.v self.heady
push.v self.headx
pushi.e 0
conv.i.v
pushi.e 2337
conv.i.v
call.i gml_Script_draw_sprite_ext_glow(argc=10)
popz.v

:[105]
pushloc.v local._flash
conv.v.b
bf [107]

:[106]
pushi.e 1
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
push.v self.rim_flash
push.d 0.5
conv.d.v
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 1
push.v [array]self.color
call.i merge_color(argc=3)
push.v self.image_angle
push.v self.s
push.v self.s
push.v self.heady
push.v self.headx
pushi.e 0
conv.i.v
pushloc.v local._headsprite
call.i gml_Script_draw_sprite_ext_glow(argc=9)
popz.v

:[107]
b [116]

:[108]
pushi.e -1
pushi.e 1
push.v [array]self.part
pushi.e 0
cmp.i.v EQ
bf [110]

:[109]
push.v self.xx
pushi.e 8
push.v self.s
mul.v.i
sub.v.v
pop.v.v self.headx
push.v self.yy
pushi.e 6
push.v self.s
mul.v.i
add.v.v
push.v self.s
push.v self.walkc
mul.v.v
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.heady
push.v self.override_color
push.v self.a
pushi.e -1
pushi.e 1
push.v [array]self.color
push.v self.headangle
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.yy
pushi.e 6
push.v self.s
mul.v.i
add.v.v
push.v self.s
push.v self.walkc
mul.v.v
pushi.e 2
mul.i.v
add.v.v
push.v self.xx
pushi.e 8
push.v self.s
mul.v.i
sub.v.v
pushi.e 0
conv.i.v
pushi.e 2336
conv.i.v
call.i gml_Script_draw_sprite_ext_glow(argc=10)
popz.v

:[110]
pushi.e -1
pushi.e 1
push.v [array]self.part
pushi.e 1
cmp.i.v EQ
bf [112]

:[111]
push.v self.xx
pushi.e 10
push.v self.s
mul.v.i
sub.v.v
pop.v.v self.headx
push.v self.yy
pushi.e 6
push.v self.s
mul.v.i
add.v.v
push.v self.s
push.v self.walkc
mul.v.v
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.heady
push.v self.override_color
push.v self.a
pushi.e -1
pushi.e 1
push.v [array]self.color
push.v self.headangle
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.yy
pushi.e 6
push.v self.s
mul.v.i
add.v.v
push.v self.s
push.v self.walkc
mul.v.v
pushi.e 2
mul.i.v
add.v.v
push.v self.xx
pushi.e 10
push.v self.s
mul.v.i
sub.v.v
pushi.e 0
conv.i.v
pushi.e 2335
conv.i.v
call.i gml_Script_draw_sprite_ext_glow(argc=10)
popz.v

:[112]
pushi.e -1
pushi.e 1
push.v [array]self.part
pushi.e 2
cmp.i.v EQ
bf [114]

:[113]
push.v self.xx
push.v self.s
pushi.e 4
mul.i.v
sub.v.v
pop.v.v self.headx
push.v self.yy
pushi.e 5
push.v self.s
mul.v.i
add.v.v
push.v self.s
push.v self.walkc
mul.v.v
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.heady
push.v self.override_color
push.v self.a
pushi.e -1
pushi.e 1
push.v [array]self.color
push.v self.headangle
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.yy
pushi.e 5
push.v self.s
mul.v.i
add.v.v
push.v self.s
push.v self.walkc
mul.v.v
pushi.e 2
mul.i.v
add.v.v
push.v self.xx
push.v self.s
pushi.e 4
mul.i.v
sub.v.v
pushi.e 0
conv.i.v
pushi.e 2334
conv.i.v
call.i gml_Script_draw_sprite_ext_glow(argc=10)
popz.v

:[114]
pushi.e -1
pushi.e 1
push.v [array]self.part
pushi.e 3
cmp.i.v EQ
bf [116]

:[115]
push.v self.xx
pushi.e 8
push.v self.s
mul.v.i
sub.v.v
pop.v.v self.headx
push.v self.yy
pushi.e 3
push.v self.s
mul.v.i
add.v.v
push.v self.s
push.v self.walkc
mul.v.v
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.heady
push.v self.override_color
push.v self.a
pushi.e -1
pushi.e 1
push.v [array]self.color
push.v self.headangle
push.v self.s
push.v self.s
push.v self.yy
pushi.e 3
push.v self.s
mul.v.i
add.v.v
push.v self.s
push.v self.walkc
mul.v.v
pushi.e 2
mul.i.v
add.v.v
push.v self.xx
pushi.e 8
push.v self.s
mul.v.i
sub.v.v
pushi.e 0
conv.i.v
pushi.e 2337
conv.i.v
call.i gml_Script_draw_sprite_ext_glow(argc=10)
popz.v

:[116]
push.v self.loop
pushi.e 1
add.i.v
pop.v.v self.loop
b [68]

:[117]
pushi.e 0
pop.v.i self.loop

:[118]
push.v self.loop
pushi.e 2
cmp.i.v LT
bf [173]

:[119]
push.v self.loop
pushi.e 0
cmp.i.v EQ
bf [121]

:[120]
pushi.e 0
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
push.i 166515
setowner.e
push.v self.basecolor
pushi.e -1
pushi.e 0
pop.v.v [array]self.color
push.v self.basecolor
pushi.e -1
pushi.e 1
pop.v.v [array]self.color
push.v self.basecolor
pushi.e -1
pushi.e 2
pop.v.v [array]self.color

:[121]
push.v self.loop
pushi.e 1
cmp.i.v EQ
bf [123]

:[122]
pushi.e 1
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
pushi.e -1
pushi.e 0
push.v [array]self.dcolor
pushi.e -1
pushi.e 0
pop.v.v [array]self.color
pushi.e -1
pushi.e 1
push.v [array]self.dcolor
pushi.e -1
pushi.e 1
pop.v.v [array]self.color
pushi.e -1
pushi.e 2
push.v [array]self.dcolor
pushi.e -1
pushi.e 2
pop.v.v [array]self.color

:[123]
push.v self.rim_flash
pushi.e 0
cmp.i.v GT
bf [125]

:[124]
push.v self.loop
pushi.e 1
cmp.i.v EQ
b [126]

:[125]
push.e 0

:[126]
pop.v.b local._flash
push.v self.wsiner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pop.v.v self.walka
push.v self.wsiner
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
pop.v.v self.walkb
push.v self.walkb
pushi.e 0
cmp.i.v GTE
bf [128]

:[127]
push.v self.laststep
pushi.e 0
cmp.i.v LT
b [129]

:[128]
push.e 0

:[129]
bf [131]

:[130]
pushi.e 1
pop.v.i self.stomp
b [136]

:[131]
push.v self.walkb
pushi.e 0
cmp.i.v LTE
bf [133]

:[132]
push.v self.laststep
pushi.e 0
cmp.i.v GT
b [134]

:[133]
push.e 0

:[134]
bf [136]

:[135]
pushi.e -1
pop.v.i self.stomp

:[136]
push.v self.walkb
pop.v.v self.laststep
push.v self.moving
pushi.e 1
cmp.i.v EQ
bf [139]

:[137]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 0
cmp.i.v EQ
bf [139]

:[138]
push.v self.walkb
pushi.e 0
cmp.i.v LTE
b [140]

:[139]
push.e 0

:[140]
bf [142]

:[141]
push.v self.walkb
pushi.e 3
mul.i.v
pop.v.v self.walkb

:[142]
push.v self.bad
pushi.e 0
cmp.i.v EQ
bf [164]

:[143]
pushi.e 6
pop.v.i local._bottom
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 0
cmp.i.v EQ
bf [147]

:[144]
push.v self.image_angle
pushi.e 20
push.v self.s
mul.v.i
push.v self.s
push.v self.walkb
mul.v.v
pushi.e 1
mul.i.v
add.v.v
pushi.e -5
push.v self.s
mul.v.i
push.v self.s
push.v self.walka
mul.v.v
pushi.e 2
mul.i.v
add.v.v
call.i gml_Script_scr_rotatevector(argc=3)
pop.v.v local._pieceVector
pushi.e 0
pop.v.i local._thrash_image
pushi.e 4
pop.v.i local._bottom
push.v self.drawfeet
conv.v.b
not.b
bf [146]

:[145]
push.v self.override_color
push.v self.a
pushi.e -1
pushi.e 2
push.v [array]self.color
push.v self.s
push.v self.s
push.v self.yy
pushi.e 20
push.v self.s
mul.v.i
add.v.v
push.v self.s
push.v self.walkb
mul.v.v
pushi.e 1
mul.i.v
add.v.v
push.v self.xx
pushi.e 5
push.v self.s
mul.v.i
sub.v.v
push.v self.s
push.v self.walka
mul.v.v
pushi.e 2
mul.i.v
add.v.v
pushi.e 4
conv.i.v
pushi.e 34
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2333
conv.i.v
call.i gml_Script_draw_sprite_part_ext_glow(argc=13)
popz.v
b [147]

:[146]
push.v self.override_color
push.v self.a
pushi.e -1
pushi.e 2
push.v [array]self.color
push.v self.image_angle
push.v self.s
push.v self.s
push.v self.yy
pushloc.v local._pieceVector
pushi.e -9
push.v [stacktop]self.y
add.v.v
push.v self.xx
pushloc.v local._pieceVector
pushi.e -9
push.v [stacktop]self.x
add.v.v
pushi.e 0
conv.i.v
pushi.e 2333
conv.i.v
call.i gml_Script_draw_sprite_ext_glow(argc=10)
popz.v

:[147]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 1
cmp.i.v EQ
bf [151]

:[148]
push.v self.image_angle
pushi.e 18
push.v self.s
mul.v.i
push.v self.s
push.v self.walkb
mul.v.v
pushi.e 1
mul.i.v
add.v.v
push.v self.s
push.v self.walka
mul.v.v
pushi.e 2
mul.i.v
call.i gml_Script_scr_rotatevector(argc=3)
pop.v.v local._pieceVector
pushi.e 1
pop.v.i local._thrash_image
push.v self.drawfeet
conv.v.b
not.b
bf [150]

:[149]
push.v self.override_color
push.v self.a
pushi.e -1
pushi.e 2
push.v [array]self.color
push.v self.s
push.v self.s
push.v self.yy
pushi.e 18
push.v self.s
mul.v.i
add.v.v
push.v self.s
push.v self.walkb
mul.v.v
pushi.e 1
mul.i.v
add.v.v
push.v self.xx
push.v self.s
push.v self.walka
mul.v.v
pushi.e 2
mul.i.v
add.v.v
pushi.e 6
conv.i.v
pushi.e 34
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2333
conv.i.v
call.i gml_Script_draw_sprite_part_ext_glow(argc=13)
popz.v
b [151]

:[150]
push.v self.override_color
push.v self.a
pushi.e -1
pushi.e 2
push.v [array]self.color
push.v self.image_angle
push.v self.s
push.v self.s
push.v self.yy
pushloc.v local._pieceVector
pushi.e -9
push.v [stacktop]self.y
add.v.v
push.v self.xx
pushloc.v local._pieceVector
pushi.e -9
push.v [stacktop]self.x
add.v.v
pushi.e 1
conv.i.v
pushi.e 2333
conv.i.v
call.i gml_Script_draw_sprite_ext_glow(argc=10)
popz.v

:[151]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 2
cmp.i.v EQ
bf [155]

:[152]
push.v self.image_angle
pushi.e 18
push.v self.s
mul.v.i
pushi.e -15
push.v self.s
mul.v.i
call.i gml_Script_scr_rotatevector(argc=3)
pop.v.v local._pieceVector
pushi.e 2
pop.v.i local._thrash_image
push.v self.drawfeet
conv.v.b
not.b
bf [154]

:[153]
push.v self.override_color
push.v self.a
pushi.e -1
pushi.e 2
push.v [array]self.color
push.v self.s
push.v self.s
push.v self.yy
pushi.e 18
push.v self.s
mul.v.i
add.v.v
push.v self.xx
pushi.e 15
push.v self.s
mul.v.i
sub.v.v
pushi.e 6
conv.i.v
pushi.e 34
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2333
conv.i.v
call.i gml_Script_draw_sprite_part_ext_glow(argc=13)
popz.v
b [155]

:[154]
push.v self.override_color
push.v self.a
pushi.e -1
pushi.e 2
push.v [array]self.color
push.v self.image_angle
push.v self.s
push.v self.s
push.v self.yy
pushloc.v local._pieceVector
pushi.e -9
push.v [stacktop]self.y
add.v.v
push.v self.xx
pushloc.v local._pieceVector
pushi.e -9
push.v [stacktop]self.x
add.v.v
pushi.e 2
conv.i.v
pushi.e 2333
conv.i.v
call.i gml_Script_draw_sprite_ext_glow(argc=10)
popz.v

:[155]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 3
cmp.i.v EQ
bf [159]

:[156]
push.v self.wsiner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pop.v.v self.walka
push.v self.wsiner
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
pop.v.v self.walkb
push.v self.image_angle
pushi.e 22
push.v self.s
mul.v.i
push.v self.s
push.v self.walkb
mul.v.v
pushi.e 1
mul.i.v
add.v.v
push.v self.s
push.v self.walka
mul.v.v
pushi.e 2
mul.i.v
call.i gml_Script_scr_rotatevector(argc=3)
pop.v.v local._pieceVector
pushi.e 3
pop.v.i local._thrash_image
pushi.e 2
pop.v.i local._bottom
push.v self.drawfeet
conv.v.b
not.b
bf [158]

:[157]
push.v self.override_color
push.v self.a
pushi.e -1
pushi.e 2
push.v [array]self.color
push.v self.s
push.v self.s
push.v self.yy
pushi.e 22
push.v self.s
mul.v.i
add.v.v
push.v self.s
push.v self.walkb
mul.v.v
pushi.e 1
mul.i.v
add.v.v
push.v self.xx
push.v self.s
push.v self.walka
mul.v.v
pushi.e 2
mul.i.v
add.v.v
pushi.e 2
conv.i.v
pushi.e 34
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2333
conv.i.v
call.i gml_Script_draw_sprite_part_ext_glow(argc=13)
popz.v
b [159]

:[158]
push.v self.override_color
push.v self.a
pushi.e -1
pushi.e 2
push.v [array]self.color
push.v self.image_angle
push.v self.s
push.v self.s
push.v self.yy
pushloc.v local._pieceVector
pushi.e -9
push.v [stacktop]self.y
add.v.v
push.v self.xx
pushloc.v local._pieceVector
pushi.e -9
push.v [stacktop]self.x
add.v.v
pushi.e 3
conv.i.v
pushi.e 2333
conv.i.v
call.i gml_Script_draw_sprite_ext_glow(argc=10)
popz.v

:[159]
pushloc.v local._flash
conv.v.b
bf [163]

:[160]
pushi.e 1
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
push.v self.drawfeet
conv.v.b
not.b
bf [162]

:[161]
push.v self.rim_flash
push.d 0.5
conv.d.v
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 2
push.v [array]self.color
call.i merge_color(argc=3)
push.v self.s
push.v self.s
push.v self.yy
pushloc.v local._pieceVector
pushi.e -9
push.v [stacktop]self.y
add.v.v
push.v self.xx
pushloc.v local._pieceVector
pushi.e -9
push.v [stacktop]self.x
add.v.v
pushloc.v local._bottom
pushi.e 34
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._thrash_image
pushi.e 3287
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v
b [163]

:[162]
push.v self.rim_flash
push.d 0.5
conv.d.v
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 2
push.v [array]self.color
call.i merge_color(argc=3)
push.v self.image_angle
push.v self.s
push.v self.s
push.v self.yy
pushloc.v local._pieceVector
pushi.e -9
push.v [stacktop]self.y
add.v.v
push.v self.xx
pushloc.v local._pieceVector
pushi.e -9
push.v [stacktop]self.x
add.v.v
pushloc.v local._thrash_image
pushi.e 3287
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[163]
b [172]

:[164]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 0
cmp.i.v EQ
bf [166]

:[165]
push.v self.override_color
push.v self.a
pushi.e -1
pushi.e 2
push.v [array]self.color
pushi.e 0
conv.i.v
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.yy
pushi.e 20
push.v self.s
mul.v.i
add.v.v
push.v self.s
push.v self.walkb
mul.v.v
pushi.e 1
mul.i.v
add.v.v
push.v self.xx
pushi.e 5
push.v self.s
mul.v.i
sub.v.v
push.v self.s
push.v self.walka
mul.v.v
pushi.e 2
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 2329
conv.i.v
call.i gml_Script_draw_sprite_ext_glow(argc=10)
popz.v

:[166]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 1
cmp.i.v EQ
bf [168]

:[167]
push.v self.override_color
push.v self.a
pushi.e -1
pushi.e 2
push.v [array]self.color
pushi.e 0
conv.i.v
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.yy
pushi.e 18
push.v self.s
mul.v.i
add.v.v
push.v self.s
push.v self.walkb
mul.v.v
pushi.e 1
mul.i.v
add.v.v
push.v self.xx
push.v self.s
push.v self.walka
mul.v.v
pushi.e 2
mul.i.v
add.v.v
pushi.e 1
conv.i.v
pushi.e 2329
conv.i.v
call.i gml_Script_draw_sprite_ext_glow(argc=10)
popz.v

:[168]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 2
cmp.i.v EQ
bf [170]

:[169]
push.v self.override_color
push.v self.a
pushi.e -1
pushi.e 2
push.v [array]self.color
pushi.e 0
conv.i.v
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.s
pushi.e 2
conv.i.d
div.d.v
push.v self.yy
pushi.e 18
push.v self.s
mul.v.i
add.v.v
push.v self.xx
pushi.e 15
push.v self.s
mul.v.i
sub.v.v
pushi.e 2
conv.i.v
pushi.e 2329
conv.i.v
call.i gml_Script_draw_sprite_ext_glow(argc=10)
popz.v

:[170]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 3
cmp.i.v EQ
bf [172]

:[171]
push.v self.wsiner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pop.v.v self.walka
push.v self.wsiner
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
pop.v.v self.walkb
push.v self.override_color
push.v self.a
pushi.e -1
pushi.e 2
push.v [array]self.color
pushi.e 0
conv.i.v
push.v self.s
push.v self.s
push.v self.yy
pushi.e 22
push.v self.s
mul.v.i
add.v.v
push.v self.s
push.v self.walkb
mul.v.v
pushi.e 1
mul.i.v
add.v.v
push.v self.xx
push.v self.s
push.v self.walka
mul.v.v
pushi.e 2
mul.i.v
add.v.v
pushi.e 3
conv.i.v
pushi.e 2333
conv.i.v
call.i gml_Script_draw_sprite_ext_glow(argc=10)
popz.v

:[172]
push.v self.loop
pushi.e 1
add.i.v
pop.v.v self.loop
b [118]

:[173]
pushi.e 0
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
push.v self.image_angle
pushi.e 360
mod.i.v
pushi.e 0
cmp.i.v NEQ
bf [175]

:[174]
pushloc.v local._x2
pop.v.v self.xx
pushloc.v local._y2
pop.v.v self.yy

:[175]
push.v self.dbselect
pushi.e 1
cmp.i.v EQ
bf [end]

:[176]
pushi.e 39
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [179]

:[177]
push.i 167832
setowner.e
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.part
pushi.e 1
add.i.v
pop.i.v [array]self.part
pushi.e -1
pushi.e 0
push.v [array]self.part
pushi.e 4
cmp.i.v GTE
bf [179]

:[178]
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.part

:[179]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [182]

:[180]
pushi.e -1
pushi.e 1
dup.i 1
push.v [array]self.part
pushi.e 1
add.i.v
pop.i.v [array]self.part
pushi.e -1
pushi.e 1
push.v [array]self.part
pushi.e 4
cmp.i.v GTE
bf [182]

:[181]
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.part

:[182]
pushi.e 16
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [185]

:[183]
pushi.e -1
pushi.e 2
dup.i 1
push.v [array]self.part
pushi.e 1
add.i.v
pop.i.v [array]self.part
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 4
cmp.i.v GTE
bf [185]

:[184]
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.part

:[185]
pushi.e 32
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [187]

:[186]
push.i 166604
setowner.e
pushi.e 255
conv.i.v
pushi.e 255
conv.i.v
push.v self.wsiner
pushi.e 2
mul.i.v
call.i make_color_hsv(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.dcolor
pushi.e 255
conv.i.v
pushi.e 255
conv.i.v
push.v self.wsiner
call.i make_color_hsv(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.dcolor
pushi.e 255
conv.i.v
pushi.e 255
conv.i.v
push.v self.wsiner
pushi.e 2
conv.i.d
div.d.v
call.i make_color_hsv(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.dcolor

:[187]
pushi.e 13
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [end]

:[188]
push.v self.s
pushi.e 1
add.i.v
pop.v.v self.s
push.v self.s
pushi.e 5
cmp.i.v GTE
bf [end]

:[189]
pushi.e 1
pop.v.i self.s

:[end]