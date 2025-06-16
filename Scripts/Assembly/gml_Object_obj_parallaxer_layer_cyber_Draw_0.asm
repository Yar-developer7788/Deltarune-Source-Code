.localvar 2 arguments
.localvar 19809 y_top 7779

:[0]
push.v self.spr_height
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pop.v.v self.spr_height

:[2]
push.v self.shadoweffect
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.spr_height
add.v.v
push.v self.x
pushbltn.v builtin.room_width
add.v.v
push.v self.y
push.v self.x
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v

:[4]
push.v self.shadoweffect
pushi.e 1
cmp.i.v EQ
bf [39]

:[5]
push.v self.sprite_index
pushi.e 3137
cmp.i.v EQ
bf [36]

:[6]
pushbltn.v builtin.room
pushi.e 100
cmp.i.v EQ
bf [8]

:[7]
push.d 0.7
conv.d.v
pushi.e 0
conv.i.v
push.i 8388608
conv.i.v
call.i merge_color(argc=3)
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 7500
conv.i.v
pushbltn.v builtin.room_width
pushi.e 3000
conv.i.v
pushi.e 0
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
push.d 0.6
conv.d.v
pushi.e 0
conv.i.v
push.i 8388608
conv.i.v
call.i merge_color(argc=3)
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 8500
conv.i.v
pushbltn.v builtin.room_width
pushi.e 7500
conv.i.v
pushi.e 0
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
push.i 1901058
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 4000
conv.i.v
pushbltn.v builtin.room_width
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 4000
pushi.e 3150
conv.i.v
call.i sprite_get_height(argc=1)
add.v.i
pushi.e 1
sub.i.v
push.v self.x
pushbltn.v builtin.room_width
add.v.v
pushi.e 4000
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4000
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3150
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
pushi.e 3000
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
push.d 0.0125
mul.d.v
add.v.i
pop.v.v local.y_top
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local.y_top
pushi.e 1000
add.i.v
pushbltn.v builtin.room_width
pushloc.v local.y_top
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
push.d 0.00125
mul.d.v
push.v self.xstart
add.v.v
pushloc.v local.y_top
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
push.d 0.00125
mul.d.v
push.v self.xstart
add.v.v
pushi.e 0
conv.i.v
pushi.e 3153
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2100
pushi.e 3151
conv.i.v
call.i sprite_get_height(argc=1)
add.v.i
pushi.e 1
sub.i.v
push.v self.x
pushbltn.v builtin.room_width
add.v.v
pushi.e 2100
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2100
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3151
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 2100
conv.i.v
pushbltn.v builtin.room_width
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1400
pushi.e 3144
conv.i.v
call.i sprite_get_height(argc=1)
add.v.i
pushbltn.v builtin.room_width
pushi.e 1400
conv.i.v
pushi.e 2720
conv.i.v
pushi.e 1400
conv.i.v
pushi.e 2720
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3154
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1488
pushi.e 3144
conv.i.v
call.i sprite_get_height(argc=1)
add.v.i
pushbltn.v builtin.room_width
pushi.e 1488
conv.i.v
pushi.e 2720
conv.i.v
pushi.e 1488
conv.i.v
pushi.e 2720
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3144
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v

:[8]
call.i gml_Script_camerax(argc=0)
push.d 0.95
mul.d.v
pop.v.v self.xx
pushbltn.v builtin.room
pushi.e 100
cmp.i.v EQ
bf [10]

:[9]
pushi.e 8500
conv.i.v
b [11]

:[10]
call.i gml_Script_cameray(argc=0)

:[11]
pop.v.v self.yy
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [22]

:[12]
pushi.e 0
pop.v.i self.linesiner
pushi.e 0
pop.v.i self.i

:[13]
push.v self.i
pushi.e 20
cmp.i.v LT
bf [15]

:[14]
push.i 168620
setowner.e
pushi.e 200
pushi.e 40
push.v self.i
push.v self.i
mul.v.v
mul.v.i
add.v.i
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.liney
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [13]

:[15]
pushi.e 0
pop.v.i self.i

:[16]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [21]

:[17]
push.i 168621
setowner.e
call.i path_add(argc=0)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.patha
push.i 168622
setowner.e
call.i path_add(argc=0)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.pathb
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.patha
call.i path_set_closed(argc=2)
popz.v
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.pathb
call.i path_set_closed(argc=2)
popz.v
pushi.e 6
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.patha
call.i path_set_precision(argc=2)
popz.v
pushi.e 6
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.pathb
call.i path_set_precision(argc=2)
popz.v
pushi.e 0
pop.v.i self.j

:[18]
push.v self.j
pushi.e 6
cmp.i.v LT
bf [20]

:[19]
pushi.e 1
conv.i.v
pushi.e -70
push.v self.j
mul.v.i
push.v self.i
pushi.e 20
mul.i.v
push.v self.i
push.v self.j
mul.v.v
push.v self.j
mul.v.v
pushi.e 8
mul.i.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.patha
call.i path_add_point(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e -70
push.v self.j
mul.v.i
push.v self.i
pushi.e 20
mul.i.v
push.v self.i
push.v self.j
mul.v.v
push.v self.j
mul.v.v
pushi.e 8
mul.i.v
add.v.v
neg.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.pathb
call.i path_add_point(argc=4)
popz.v
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [18]

:[20]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [16]

:[21]
pushi.e 1
pop.v.i self.init

:[22]
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.linesiner
push.e 1
add.i.v
pop.v.v self.linesiner
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [35]

:[23]
push.d 0.1
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[24]
push.v self.i
pushi.e 19
cmp.i.v LT
bf [26]

:[25]
push.v self.i
push.d 0.05
mul.d.v
pushi.e 0
conv.i.v
push.i 8388608
conv.i.v
call.i merge_color(argc=3)
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.yy
push.v self.i
pushi.e 15
mul.i.v
add.v.v
pushbltn.v builtin.room_width
pushi.e 100
add.i.v
push.v self.yy
pushi.e -100
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [24]

:[26]
push.d 0.5
push.v self.linesiner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
add.v.d
call.i draw_set_alpha(argc=1)
popz.v
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[27]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [29]

:[28]
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 320
add.i.v
push.v self.xx
pushi.e 320
add.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.patha
call.i draw_path(argc=4)
popz.v
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 320
add.i.v
push.v self.xx
pushi.e 319
add.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.patha
call.i draw_path(argc=4)
popz.v
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 320
add.i.v
push.v self.xx
pushi.e 320
add.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.pathb
call.i draw_path(argc=4)
popz.v
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 320
add.i.v
push.v self.xx
pushi.e 321
add.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.pathb
call.i draw_path(argc=4)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [27]

:[29]
pushi.e 0
pop.v.i self.i

:[30]
push.v self.i
pushi.e 19
cmp.i.v LT
bf [34]

:[31]
push.i 168620
setowner.e
push.d 0.005
conv.d.v
pushi.e -400
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.liney
call.i lerp(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.liney
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.liney
pushi.e -100
cmp.i.v LTE
bf [33]

:[32]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.liney
pushi.e -1
pushi.e 19
push.v [array]self.liney
add.v.v
pop.i.v [array]self.liney

:[33]
pushi.e 1
conv.b.v
push.v self.yy
pushi.e 600
add.i.v
push.v self.xx
pushi.e 640
add.i.v
pushi.e 100
add.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.liney
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.yy
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.liney
add.v.v
push.v self.xx
pushi.e 100
sub.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.liney
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i draw_ellipse(argc=5)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [30]

:[34]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushbltn.v builtin.room_height
pushi.e 2
add.i.v
pushbltn.v builtin.room_width
pushi.e 100
add.i.v
pushbltn.v builtin.room_height
pushi.e 240
sub.i.v
pushi.e -100
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[35]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.spr_height
add.v.v
push.v self.x
pushbltn.v builtin.room_width
add.v.v
push.v self.y
push.v self.x
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
pushi.e 1
conv.i.v
push.i 8421504
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
pushi.e 8
add.i.v
push.v self.spr_height
add.v.v
push.v self.x
pushbltn.v builtin.room_width
add.v.v
push.v self.y
pushi.e 8
add.i.v
push.v self.x
push.v self.y
pushi.e 8
add.i.v
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
push.d 0.5
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
add.v.d
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
pushi.e 8
add.i.v
push.v self.spr_height
add.v.v
pushbltn.v builtin.room_width
push.v self.y
pushi.e 8
add.i.v
push.v self.x
push.v self.y
pushi.e 8
add.i.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 3138
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
b [37]

:[36]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.spr_height
add.v.v
push.v self.x
pushbltn.v builtin.room_width
add.v.v
push.v self.y
push.v self.x
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
pushi.e 1
conv.i.v
push.i 8421504
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
pushi.e 8
add.i.v
push.v self.spr_height
add.v.v
push.v self.x
pushbltn.v builtin.room_width
add.v.v
push.v self.y
pushi.e 8
add.i.v
push.v self.x
push.v self.y
pushi.e 8
add.i.v
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v

:[37]
push.v self.sprite_index
pushi.e 3140
cmp.i.v EQ
bf [39]

:[38]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.y
pushi.e 500
add.i.v
pushbltn.v builtin.room_height
add.v.v
pushi.e 2
add.i.v
push.v self.x
pushbltn.v builtin.room_width
add.v.v
pushi.e 100
add.i.v
push.v self.y
pushi.e 440
add.i.v
push.v self.x
call.i draw_rectangle(argc=5)
popz.v

:[39]
push.v self.shadoweffect
pushi.e 2
cmp.i.v EQ
bf [end]

:[40]
push.i 16777215
pop.v.i self.image_blend
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_tiled(argc=4)
popz.v
push.i 8421504
pop.v.i self.image_blend
pushi.e 1
conv.i.v
push.i 4210752
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
pushi.e 8
add.i.v
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_tiled_ext(argc=8)
popz.v

:[end]