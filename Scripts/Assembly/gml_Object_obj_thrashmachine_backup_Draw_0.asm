.localvar 2 arguments
.localvar 9170 _xoff 6599
.localvar 9172 _yoff 6600
.localvar 14785 _x2 6601
.localvar 14786 _y2 6602
.localvar 14787 _flash 6603
.localvar 14788 _do_flash 6604
.localvar 14789 _rim_color 6605
.localvar 14790 _flash_color 6606
.localvar 14793 _pieceVector 6609
.localvar 14794 _thrash_image 6610
.localvar 14795 _af 6611
.localvar 14796 _headsprite 6612
.localvar 14797 _laser_color 6613
.localvar 14798 _bottom 6614

:[0]
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
bf [43]

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
bf [42]

:[26]
pushi.e 0
pop.v.i local._thrash_image
push.v self.bad
pushi.e 0
cmp.i.v EQ
bf [36]

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
pushloc.v local._flash
conv.v.b
bf [35]

:[34]
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

:[35]
b [42]

:[36]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 0
cmp.i.v EQ
bf [38]

:[37]
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

:[38]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 1
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

:[40]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 3
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

:[42]
push.v self.loop
pushi.e 1
add.i.v
pop.v.v self.loop
b [11]

:[43]
pushi.e -1
pushi.e 0
push.v [array]self.part
pushi.e 0
cmp.i.v GTE
bf [65]

:[44]
pushi.e 0
pop.v.i self.loop

:[45]
push.v self.loop
pushi.e 2
cmp.i.v LT
bf [65]

:[46]
push.v self.loop
pushi.e 0
cmp.i.v EQ
bf [48]

:[47]
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

:[48]
push.v self.loop
pushi.e 1
cmp.i.v EQ
bf [50]

:[49]
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

:[50]
pushloc.v local._do_flash
conv.v.b
bf [52]

:[51]
push.v self.loop
pushi.e 1
cmp.i.v EQ
b [53]

:[52]
push.e 0

:[53]
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
bf [55]

:[54]
pushloc.v local._do_flash
conv.v.b
b [56]

:[55]
push.e 0

:[56]
bf [58]

:[57]
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

:[58]
push.v self.bad
pushi.e 0
cmp.i.v EQ
bf [60]

:[59]
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
b [62]

:[60]
push.v self.bad
pushi.e 1
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

:[62]
pushloc.v local._flash
conv.v.b
bf [64]

:[63]
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
push.v self.yy
pushloc.v local._pieceVector
pushi.e -9
push.v [stacktop]self.y
add.v.v
push.v self.xx
pushi.e 0
conv.i.v
pushi.e 2332
conv.i.v
pushi.e 205
conv.i.v
call.i gml_Script_scr_custom_afterimage_ext(argc=7)
pop.v.v local._af
pushi.e 1
pushloc.v local._af
pushi.e -9
pop.v.b [stacktop]self.use_pivot
pushloc.v local._pieceVector
pushi.e -9
push.v [stacktop]self.x
pushi.e 3
conv.i.d
div.d.v
pushi.e 3
add.i.v
pushloc.v local._af
pushi.e -9
pop.v.v [stacktop]self.pivotx
pushloc.v local._pieceVector
pushi.e -9
push.v [stacktop]self.y
pushi.e 3
conv.i.d
div.d.v
pushi.e 12
sub.i.v
pushloc.v local._af
pushi.e -9
pop.v.v [stacktop]self.pivoty
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

:[64]
push.v self.loop
pushi.e 1
add.i.v
pop.v.v self.loop
b [45]

:[65]
pushi.e 0
pop.v.i self.loop

:[66]
push.v self.loop
pushi.e 2
cmp.i.v LT
bf [104]

:[67]
push.v self.loop
pushi.e 0
cmp.i.v EQ
bf [69]

:[68]
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

:[69]
push.v self.loop
pushi.e 1
cmp.i.v EQ
bf [71]

:[70]
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

:[71]
pushloc.v local._do_flash
conv.v.b
bf [73]

:[72]
push.v self.loop
pushi.e 1
cmp.i.v EQ
b [74]

:[73]
push.e 0

:[74]
pop.v.b local._flash
push.v self.bad
pushi.e 0
cmp.i.v EQ
bf [95]

:[75]
pushi.e -1
pushi.e 1
push.v [array]self.part
pushi.e 0
cmp.i.v EQ
bf [83]

:[76]
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
pushi.e 2339
pop.v.i local._headsprite
pushloc.v local._flash
conv.v.b
not.b
bf [78]

:[77]
pushloc.v local._do_flash
conv.v.b
b [79]

:[78]
push.e 0

:[79]
bf [81]

:[80]
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
pushi.e -1
pushi.e 0
push.v [array]self.part
pushi.e 2339
conv.i.v
call.i gml_Script_scr_draw_outline_ext(argc=10)
popz.v

:[81]
pushloc.v local._flash
conv.v.b
bf [83]

:[82]
pushi.e 0
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
push.v self.rim_flash
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 1
push.v [array]self.color
call.i merge_color(argc=3)
pop.v.v local._laser_color
push.v self.rim_flash
pushloc.v local._laser_color
push.v self.image_angle
push.v self.s
push.v self.s
push.v self.heady
push.v self.headx
pushi.e 0
conv.i.v
pushi.e 1084
conv.i.v
call.i gml_Script_draw_sprite_ext_glow(argc=9)
popz.v

:[83]
pushi.e -1
pushi.e 1
push.v [array]self.part
pushi.e 1
cmp.i.v EQ
bf [86]

:[84]
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
pushi.e 2340
pop.v.i local._headsprite
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
pushloc.v local._flash
conv.v.b
bf [86]

:[85]
pushi.e 1
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
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
pushi.e 2792
conv.i.v
call.i gml_Script_draw_sprite_ext_glow(argc=9)
popz.v

:[86]
pushi.e -1
pushi.e 1
push.v [array]self.part
pushi.e 2
cmp.i.v EQ
bf [89]

:[87]
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
pushi.e 2338
pop.v.i local._headsprite
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
pushloc.v local._flash
conv.v.b
bf [89]

:[88]
pushloc.v local._flash_color
push.v self.a
pushi.e 0
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
call.i gml_Script_draw_sprite_ext_glow(argc=10)
popz.v
push.v self.a
pushloc.v local._rim_color
push.v self.image_angle
push.v self.s
push.v self.s
push.v self.heady
push.v self.headx
pushi.e 0
conv.i.v
pushi.e 3288
conv.i.v
call.i gml_Script_draw_sprite_ext_glow(argc=9)
popz.v

:[89]
pushi.e -1
pushi.e 1
push.v [array]self.part
pushi.e 3
cmp.i.v EQ
bf [94]

:[90]
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
pushi.e 2337
pop.v.i local._headsprite
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
pushloc.v local._flash
conv.v.b
bf [92]

:[91]
push.v self.a
pushloc.v local._rim_color
push.v self.image_angle
push.v self.s
push.v self.s
push.v self.heady
push.v self.headx
pushi.e 0
conv.i.v
pushi.e 3333
conv.i.v
call.i gml_Script_draw_sprite_ext_glow(argc=9)
popz.v
push.i 16777215
conv.i.v
push.v self.body_flash
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
call.i gml_Script_draw_sprite_ext_glow(argc=10)
popz.v

:[92]
pushloc.v local._flash
conv.v.b
bf [94]

:[93]
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
push.v self.heady
push.v self.headx
pushi.e 0
conv.i.v
pushloc.v local._headsprite
pushi.e 205
conv.i.v
call.i gml_Script_scr_custom_afterimage_ext(argc=7)
pop.v.v local._af
pushi.e 1
pushloc.v local._af
pushi.e -9
pop.v.b [stacktop]self.use_pivot
pushloc.v local._pieceVector
pushi.e -9
push.v [stacktop]self.x
pushi.e 3
conv.i.d
div.d.v
pushi.e 3
add.i.v
pushloc.v local._af
pushi.e -9
pop.v.v [stacktop]self.pivotx
pushloc.v local._pieceVector
pushi.e -9
push.v [stacktop]self.y
pushi.e 3
conv.i.d
div.d.v
pushi.e 12
sub.i.v
pushloc.v local._af
pushi.e -9
pop.v.v [stacktop]self.pivoty

:[94]
b [103]

:[95]
pushi.e -1
pushi.e 1
push.v [array]self.part
pushi.e 0
cmp.i.v EQ
bf [97]

:[96]
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

:[97]
pushi.e -1
pushi.e 1
push.v [array]self.part
pushi.e 1
cmp.i.v EQ
bf [99]

:[98]
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

:[99]
pushi.e -1
pushi.e 1
push.v [array]self.part
pushi.e 2
cmp.i.v EQ
bf [101]

:[100]
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

:[101]
pushi.e -1
pushi.e 1
push.v [array]self.part
pushi.e 3
cmp.i.v EQ
bf [103]

:[102]
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

:[103]
push.v self.loop
pushi.e 1
add.i.v
pop.v.v self.loop
b [66]

:[104]
pushi.e 0
pop.v.i self.loop

:[105]
push.v self.loop
pushi.e 2
cmp.i.v LT
bf [160]

:[106]
push.v self.loop
pushi.e 0
cmp.i.v EQ
bf [108]

:[107]
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

:[108]
push.v self.loop
pushi.e 1
cmp.i.v EQ
bf [110]

:[109]
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

:[110]
push.v self.rim_flash
pushi.e 0
cmp.i.v GT
bf [112]

:[111]
push.v self.loop
pushi.e 1
cmp.i.v EQ
b [113]

:[112]
push.e 0

:[113]
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
bf [115]

:[114]
push.v self.laststep
pushi.e 0
cmp.i.v LT
b [116]

:[115]
push.e 0

:[116]
bf [118]

:[117]
pushi.e 1
pop.v.i self.stomp
b [123]

:[118]
push.v self.walkb
pushi.e 0
cmp.i.v LTE
bf [120]

:[119]
push.v self.laststep
pushi.e 0
cmp.i.v GT
b [121]

:[120]
push.e 0

:[121]
bf [123]

:[122]
pushi.e -1
pop.v.i self.stomp

:[123]
push.v self.walkb
pop.v.v self.laststep
push.v self.moving
pushi.e 1
cmp.i.v EQ
bf [126]

:[124]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 0
cmp.i.v EQ
bf [126]

:[125]
push.v self.walkb
pushi.e 0
cmp.i.v LTE
b [127]

:[126]
push.e 0

:[127]
bf [129]

:[128]
push.v self.walkb
pushi.e 3
mul.i.v
pop.v.v self.walkb

:[129]
push.v self.bad
pushi.e 0
cmp.i.v EQ
bf [151]

:[130]
pushi.e 6
pop.v.i local._bottom
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 0
cmp.i.v EQ
bf [134]

:[131]
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
bf [133]

:[132]
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
b [134]

:[133]
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

:[134]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 1
cmp.i.v EQ
bf [138]

:[135]
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
bf [137]

:[136]
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
b [138]

:[137]
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

:[138]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 2
cmp.i.v EQ
bf [142]

:[139]
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
bf [141]

:[140]
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
b [142]

:[141]
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

:[142]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 3
cmp.i.v EQ
bf [146]

:[143]
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
bf [145]

:[144]
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
b [146]

:[145]
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

:[146]
pushloc.v local._flash
conv.v.b
bf [150]

:[147]
pushi.e 1
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
push.v self.drawfeet
conv.v.b
not.b
bf [149]

:[148]
push.v self.rim_flash
push.i 16777215
conv.i.v
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
b [150]

:[149]
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
pushloc.v local._pieceVector
pushi.e -9
push.v [stacktop]self.x
add.v.v
pushloc.v local._thrash_image
pushi.e 3287
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[150]
b [159]

:[151]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 0
cmp.i.v EQ
bf [153]

:[152]
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

:[153]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 1
cmp.i.v EQ
bf [155]

:[154]
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

:[155]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 2
cmp.i.v EQ
bf [157]

:[156]
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

:[157]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 3
cmp.i.v EQ
bf [159]

:[158]
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

:[159]
push.v self.loop
pushi.e 1
add.i.v
pop.v.v self.loop
b [105]

:[160]
pushi.e 0
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
push.v self.image_angle
pushi.e 360
mod.i.v
pushi.e 0
cmp.i.v NEQ
bf [162]

:[161]
pushloc.v local._x2
pop.v.v self.xx
pushloc.v local._y2
pop.v.v self.yy

:[162]
push.v self.dbselect
pushi.e 1
cmp.i.v EQ
bf [end]

:[163]
pushi.e 39
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [166]

:[164]
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
bf [166]

:[165]
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.part

:[166]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [169]

:[167]
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
bf [169]

:[168]
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.part

:[169]
pushi.e 16
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [172]

:[170]
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
bf [172]

:[171]
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.part

:[172]
pushi.e 32
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [174]

:[173]
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

:[174]
pushi.e 13
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [end]

:[175]
push.v self.s
pushi.e 1
add.i.v
pop.v.v self.s
push.v self.s
pushi.e 5
cmp.i.v GTE
bf [end]

:[176]
pushi.e 1
pop.v.i self.s

:[end]