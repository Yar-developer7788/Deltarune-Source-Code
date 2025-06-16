.localvar 2 arguments
.localvar 14921 y_offset 11520
.localvar 24631 xtangle 11521
.localvar 24632 bottomfill 11522
.localvar 24633 topfill 11523
.localvar 24634 tri_x2 11524
.localvar 24635 tri_x3 11525
.localvar 24636 tri_y2 11526
.localvar 24637 tri_y3 11527
.localvar 24638 fill_a 11528
.localvar 24639 xx_bottom_right 11529
.localvar 24640 xx_top_right 11530
.localvar 24641 xx_top_left 11531
.localvar 24642 xx_bottom_left 11532
.localvar 24643 e 11533
.localvar 24644 yy_bottom_right 11534

:[0]
push.v 514.ystart
pushi.e 52
add.i.v
pop.v.v self.starty
pushi.e 0
pop.v.i local.y_offset
push.v self.acidColor
call.i draw_set_color(argc=1)
popz.v
push.v self.starttimer
push.e 1
add.i.v
pop.v.v self.starttimer
push.v self.starttimer
pushi.e 30
cmp.i.v EQ
bf [2]

:[1]
pushi.e 11
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[2]
push.v self.starttimer
pushi.e 43
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.state
pushi.e 1
pop.v.b 515.visible

:[4]
push.v self.depth
pushi.e 3
add.i.v
push.v self.winewave
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.depth
pushi.e 1
add.i.v
push.v self.winewave2
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 379
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[5]
push.v self.depth
pushi.e 9999
sub.i.v
pop.v.v 379.depth

:[6]
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[7]
push.v self.depth
pushi.e 2
add.i.v
pop.v.v 631.depth

:[8]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [end]

:[9]
push.v 514.xstart
pop.v.v local.xtangle
pushi.e 25
conv.i.v
push.v self.fill
call.i min(argc=2)
pop.v.v local.bottomfill
pushi.e 36
conv.i.v
push.v self.fill
call.i min(argc=2)
pop.v.v local.topfill
pushi.e 0
pop.v.i local.tri_x2
pushi.e 0
pop.v.i local.tri_x3
pushi.e 0
pop.v.i local.tri_y2
pushi.e 0
pop.v.i local.tri_y3
pushloc.v local.bottomfill
pushi.e 18
cmp.i.v LT
bf [15]

:[10]
push.v self.image_angle
pushi.e 5
cmp.i.v GT
bf [12]

:[11]
push.v self.image_angle
call.i abs(argc=1)
pushi.e 3
conv.i.d
div.d.v
pop.v.v local.tri_x2
push.v self.image_angle
call.i abs(argc=1)
pushi.e 2
conv.i.d
div.d.v
pushi.e -1
mul.i.v
pop.v.v local.tri_x3

:[12]
push.v self.image_angle
pushi.e -5
cmp.i.v LT
bf [14]

:[13]
push.v self.image_angle
call.i abs(argc=1)
pushi.e 3
conv.i.d
div.d.v
pop.v.v local.tri_x3
push.v self.image_angle
call.i abs(argc=1)
pushi.e 2
conv.i.d
div.d.v
pushi.e -1
mul.i.v
pop.v.v local.tri_x2

:[14]
b [33]

:[15]
pushloc.v local.bottomfill
pushi.e 24
cmp.i.v LT
bf [21]

:[16]
push.v self.image_angle
pushi.e 5
cmp.i.v GT
bf [18]

:[17]
push.v self.image_angle
call.i abs(argc=1)
pushi.e 6
conv.i.d
div.d.v
pop.v.v local.tri_x2
push.v self.image_angle
call.i abs(argc=1)
pushi.e 6
conv.i.d
div.d.v
pushi.e -1
mul.i.v
pop.v.v local.tri_x3

:[18]
push.v self.image_angle
pushi.e -5
cmp.i.v LT
bf [20]

:[19]
push.v self.image_angle
call.i abs(argc=1)
pushi.e 6
conv.i.d
div.d.v
pop.v.v local.tri_x3
push.v self.image_angle
call.i abs(argc=1)
pushi.e 6
conv.i.d
div.d.v
pushi.e -1
mul.i.v
pop.v.v local.tri_x2

:[20]
b [33]

:[21]
pushloc.v local.bottomfill
pushi.e 26
cmp.i.v LT
bf [28]

:[22]
push.v self.image_angle
pushi.e 5
cmp.i.v GT
bf [24]

:[23]
push.v self.image_angle
call.i abs(argc=1)
pushi.e 3
conv.i.d
div.d.v
pop.v.v local.tri_x2
push.v self.image_angle
call.i abs(argc=1)
pushi.e 6
conv.i.d
div.d.v
pushi.e -1
mul.i.v
pop.v.v local.tri_x3
b [27]

:[24]
push.v self.image_angle
pushi.e -5
cmp.i.v LT
bf [26]

:[25]
push.v self.image_angle
call.i abs(argc=1)
pushi.e 6
conv.i.d
div.d.v
pop.v.v local.tri_x3
push.v self.image_angle
call.i abs(argc=1)
pushi.e 6
conv.i.d
div.d.v
pushi.e -1
mul.i.v
pop.v.v local.tri_x2
b [27]

:[26]
pushi.e 3
pop.v.i local.tri_x2
pushi.e 3
pop.v.i local.tri_x3
pushi.e 1
pop.v.i local.tri_y2
pushi.e 1
pop.v.i local.tri_y3

:[27]
b [33]

:[28]
push.v self.image_angle
pushi.e 6
cmp.i.v GT
bf [30]

:[29]
push.v self.image_angle
call.i abs(argc=1)
push.d 1.8
mul.d.v
pop.v.v local.tri_x2
pushi.e 8
pop.v.i local.tri_x3
push.v self.image_angle
call.i abs(argc=1)
push.d 2.04
div.d.v
pop.v.v local.tri_y2
push.v self.image_angle
call.i abs(argc=1)
pushi.e 4
conv.i.d
div.d.v
pop.v.v local.tri_y3
b [33]

:[30]
push.v self.image_angle
pushi.e -6
cmp.i.v LT
bf [32]

:[31]
push.v self.image_angle
call.i abs(argc=1)
push.d 0.85
mul.d.v
pop.v.v local.tri_x3
pushi.e 7
pop.v.i local.tri_x2
push.v self.image_angle
call.i abs(argc=1)
pushi.e 4
conv.i.d
div.d.v
pop.v.v local.tri_y3
push.v self.image_angle
call.i abs(argc=1)
pushi.e 4
conv.i.d
div.d.v
pop.v.v local.tri_y2
b [33]

:[32]
pushi.e 14
pop.v.i local.tri_x2
pushi.e 10
pop.v.i local.tri_x3
pushi.e 3
pop.v.i local.tri_y2
pushi.e 2
pop.v.i local.tri_y3

:[33]
pushi.e 0
conv.i.v
push.v 514.ystart
pushi.e 52
add.i.v
pushloc.v local.tri_y3
add.v.v
push.v self.image_angle
pushi.e 30
add.i.v
pushloc.v local.bottomfill
pushi.e 3
mul.i.v
call.i lengthdir_y(argc=2)
add.v.v
push.v 514.xstart
pushloc.v local.tri_x3
sub.v.v
push.v self.image_angle
pushi.e 0
add.i.v
pushloc.v local.bottomfill
pushi.e 3
mul.i.v
call.i lengthdir_x(argc=2)
add.v.v
push.v 514.ystart
pushi.e 50
add.i.v
pushloc.v local.tri_y2
add.v.v
push.v self.image_angle
pushi.e 150
add.i.v
pushloc.v local.bottomfill
pushi.e 3
mul.i.v
call.i lengthdir_y(argc=2)
add.v.v
push.v 514.xstart
pushi.e 3
sub.i.v
pushloc.v local.tri_x2
add.v.v
push.v self.image_angle
pushi.e 180
add.i.v
pushloc.v local.bottomfill
pushi.e 3
mul.i.v
call.i lengthdir_x(argc=2)
add.v.v
push.v 514.ystart
push.v self.image_angle
pushi.e 270
add.i.v
pushi.e 52
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
push.v 514.xstart
push.v self.image_angle
pushi.e 270
add.i.v
pushi.e 52
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
call.i draw_triangle(argc=7)
popz.v
pushi.e 0
conv.i.v
push.v 514.ystart
pushi.e 52
add.i.v
pushloc.v local.tri_y3
add.v.v
push.v self.image_angle
pushi.e 30
add.i.v
pushloc.v local.bottomfill
pushi.e 3
mul.i.v
call.i lengthdir_y(argc=2)
add.v.v
push.v 514.xstart
pushloc.v local.tri_x3
sub.v.v
push.v self.image_angle
pushi.e 0
add.i.v
pushloc.v local.bottomfill
pushi.e 3
mul.i.v
call.i lengthdir_x(argc=2)
add.v.v
push.v 514.ystart
pushi.e 50
add.i.v
pushloc.v local.tri_y2
add.v.v
push.v self.image_angle
pushi.e 150
add.i.v
pushloc.v local.bottomfill
pushi.e 3
mul.i.v
call.i lengthdir_y(argc=2)
add.v.v
push.v 514.xstart
pushi.e 3
sub.i.v
pushloc.v local.tri_x2
add.v.v
push.v self.image_angle
pushi.e 180
add.i.v
pushloc.v local.bottomfill
pushi.e 3
mul.i.v
call.i lengthdir_x(argc=2)
add.v.v
push.v 514.ystart
pushi.e 2
add.i.v
push.v self.image_angle
pushi.e 270
add.i.v
pushi.e 52
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
push.v 514.xstart
push.v self.image_angle
pushi.e 270
add.i.v
pushi.e 52
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
call.i draw_triangle(argc=7)
popz.v
push.v self.fill
pushi.e 36
cmp.i.v GTE
bf [152]

:[34]
push.v self.image_angle
pushi.e -2
cmp.i.v GTE
bf [36]

:[35]
push.v self.image_angle
pushi.e 2
cmp.i.v LTE
b [37]

:[36]
push.e 0

:[37]
bf [39]

:[38]
pushi.e 0
conv.i.v
push.v self.starty
push.v self.fill
sub.v.v
pushloc.v local.xtangle
pushloc.v local.topfill
pushi.e 2
mul.i.v
add.v.v
push.v self.starty
pushi.e 35
sub.i.v
pushloc.v local.xtangle
pushloc.v local.topfill
pushi.e 2
mul.i.v
sub.v.v
call.i draw_rectangle(argc=5)
popz.v

:[39]
push.v self.image_angle
pushi.e -2
cmp.i.v LTE
bf [87]

:[40]
push.v self.image_angle
pushi.e -1
mul.i.v
pushi.e 33
conv.i.d
div.d.v
push.v self.fill
pushi.e 36
conv.i.v
call.i lerp(argc=3)
pop.v.v local.fill_a
push.v self.image_angle
pushi.e 5
conv.i.d
div.d.v
call.i abs(argc=1)
pop.v.v local.xx_bottom_right
pushi.e -5
pop.v.i local.xx_top_right
push.v self.fill
pushi.e 40
cmp.i.v GT
bf [42]

:[41]
push.v self.image_angle
call.i abs(argc=1)
pushi.e 5
conv.i.d
div.d.v
pop.v.v local.xx_top_right

:[42]
push.v self.fill
pushi.e 50
cmp.i.v GT
bf [44]

:[43]
push.v self.image_angle
call.i abs(argc=1)
pushi.e 3
conv.i.d
div.d.v
pop.v.v local.xx_top_right

:[44]
push.v self.fill
pushi.e 57
cmp.i.v GT
bf [46]

:[45]
push.v self.image_angle
call.i abs(argc=1)
push.d 2.1
div.d.v
pop.v.v local.xx_top_right

:[46]
push.v 575.type
push.d 2.1
cmp.d.v EQ
bf [54]

:[47]
push.v self.fill
pushi.e 62
cmp.i.v GT
bf [49]

:[48]
push.v self.image_angle
call.i abs(argc=1)
pushi.e 1
mul.i.v
pop.v.v local.xx_top_right

:[49]
push.v self.fill
pushi.e 65
cmp.i.v GT
bf [51]

:[50]
push.v self.image_angle
call.i abs(argc=1)
push.d 1.2
mul.d.v
pop.v.v local.xx_top_right

:[51]
push.v self.fill
pushi.e 69
cmp.i.v GT
bf [53]

:[52]
push.v self.image_angle
call.i abs(argc=1)
pushi.e 1
mul.i.v
pop.v.v local.xx_top_right

:[53]
b [60]

:[54]
push.v self.fill
pushi.e 62
cmp.i.v GT
bf [56]

:[55]
push.v self.image_angle
call.i abs(argc=1)
push.d 0.8
mul.d.v
pop.v.v local.xx_top_right

:[56]
push.v self.fill
pushi.e 65
cmp.i.v GT
bf [58]

:[57]
push.v self.image_angle
call.i abs(argc=1)
push.d 0.8
mul.d.v
pop.v.v local.xx_top_right

:[58]
push.v self.fill
pushi.e 69
cmp.i.v GT
bf [60]

:[59]
push.v self.image_angle
call.i abs(argc=1)
push.d 0.8
mul.d.v
pop.v.v local.xx_top_right

:[60]
push.v self.fill
pushi.e 71
cmp.i.v GT
bf [62]

:[61]
push.v self.image_angle
call.i abs(argc=1)
push.d 1.1
mul.d.v
pop.v.v local.xx_top_right

:[62]
push.v self.fill
pushi.e 75
cmp.i.v GT
bf [64]

:[63]
push.v self.image_angle
call.i abs(argc=1)
push.d 1.2
mul.d.v
pop.v.v local.xx_top_right

:[64]
push.v self.fill
pushi.e 78
cmp.i.v GT
bf [66]

:[65]
push.v self.image_angle
call.i abs(argc=1)
push.d 1.3
mul.d.v
pop.v.v local.xx_top_right

:[66]
push.v self.fill
pushi.e 81
cmp.i.v GT
bf [68]

:[67]
push.v self.image_angle
call.i abs(argc=1)
push.d 1.5
mul.d.v
pop.v.v local.xx_top_right

:[68]
push.v self.fill
pushi.e 84
cmp.i.v GT
bf [70]

:[69]
push.v self.image_angle
call.i abs(argc=1)
push.d 1.6
mul.d.v
pop.v.v local.xx_top_right

:[70]
pushi.e 0
pop.v.i local.xx_top_left
push.v self.fill
pushi.e 36
cmp.i.v GT
bf [72]

:[71]
push.v self.image_angle
call.i abs(argc=1)
push.d 2.3
div.d.v
pop.v.v local.xx_top_left

:[72]
push.v self.fill
pushi.e 55
cmp.i.v GT
bf [74]

:[73]
push.v self.image_angle
call.i abs(argc=1)
push.d 8.3
div.d.v
pop.v.v local.xx_top_left

:[74]
push.v self.fill
pushi.e 58
cmp.i.v GT
bf [76]

:[75]
push.v self.image_angle
call.i abs(argc=1)
push.d -0.24
mul.d.v
pop.v.v local.xx_top_left

:[76]
push.v self.fill
pushi.e 69
cmp.i.v GT
bf [78]

:[77]
push.v self.image_angle
call.i abs(argc=1)
push.d -0.2
mul.d.v
pop.v.v local.xx_top_left

:[78]
push.v self.fill
pushi.e 71
cmp.i.v GT
bf [80]

:[79]
push.v self.image_angle
call.i abs(argc=1)
push.d -0.1
mul.d.v
pop.v.v local.xx_top_left

:[80]
push.v self.fill
pushi.e 82
cmp.i.v GT
bf [82]

:[81]
push.v self.image_angle
call.i abs(argc=1)
push.d 0.1
mul.d.v
pop.v.v local.xx_top_left

:[82]
pushi.e 0
pop.v.i local.xx_bottom_left
push.v self.fill
pushi.e 36
cmp.i.v GT
bf [84]

:[83]
push.v self.image_angle
call.i abs(argc=1)
pushi.e 8
conv.i.d
div.d.v
pop.v.v local.xx_bottom_left

:[84]
push.v self.fill
pushi.e 81
cmp.i.v GT
bf [86]

:[85]
push.v self.image_angle
call.i abs(argc=1)
pushi.e 8
conv.i.d
div.d.v
pop.v.v local.xx_bottom_left

:[86]
pushi.e 4
conv.i.v
call.i draw_primitive_begin(argc=1)
popz.v
push.v 514.ystart
pushi.e 53
add.i.v
pushi.e 2
add.i.v
push.v self.image_angle
pushi.e 150
add.i.v
pushloc.v local.topfill
pushi.e 2
mul.i.v
call.i lengthdir_y(argc=2)
add.v.v
push.v 514.xstart
pushloc.v local.xx_bottom_left
sub.v.v
push.v self.image_angle
pushi.e 180
add.i.v
pushloc.v local.topfill
pushi.e 2
mul.i.v
call.i lengthdir_x(argc=2)
add.v.v
call.i draw_vertex(argc=2)
popz.v
push.v 514.ystart
pushi.e 53
add.i.v
pushi.e 2
add.i.v
push.v self.image_angle
pushi.e 30
add.i.v
pushloc.v local.topfill
pushi.e 2
mul.i.v
call.i lengthdir_y(argc=2)
add.v.v
push.v 514.xstart
pushloc.v local.xx_bottom_right
sub.v.v
push.v self.image_angle
pushi.e 0
add.i.v
pushloc.v local.topfill
pushi.e 2
mul.i.v
call.i lengthdir_x(argc=2)
add.v.v
call.i draw_vertex(argc=2)
popz.v
push.v 514.ystart
pushi.e 52
add.i.v
push.v self.fill
sub.v.v
push.v 514.xstart
pushloc.v local.xx_top_right
sub.v.v
push.v self.image_angle
pushi.e 0
add.i.v
pushloc.v local.fill_a
push.d 1.97
mul.d.v
call.i lengthdir_x(argc=2)
add.v.v
call.i draw_vertex(argc=2)
popz.v
call.i draw_primitive_end(argc=0)
popz.v
pushi.e 4
conv.i.v
call.i draw_primitive_begin(argc=1)
popz.v
push.v 514.ystart
pushi.e 53
add.i.v
pushi.e 2
add.i.v
push.v self.image_angle
pushi.e 150
add.i.v
pushloc.v local.topfill
pushi.e 2
mul.i.v
call.i lengthdir_y(argc=2)
add.v.v
push.v 514.xstart
pushloc.v local.xx_bottom_left
sub.v.v
push.v self.image_angle
pushi.e 180
add.i.v
pushloc.v local.topfill
pushi.e 2
mul.i.v
call.i lengthdir_x(argc=2)
add.v.v
call.i draw_vertex(argc=2)
popz.v
push.v 514.ystart
pushi.e 52
add.i.v
push.v self.fill
sub.v.v
push.v 514.xstart
pushloc.v local.xx_top_left
add.v.v
push.v self.image_angle
pushi.e 180
add.i.v
pushloc.v local.topfill
pushi.e 2
mul.i.v
call.i lengthdir_x(argc=2)
add.v.v
call.i draw_vertex(argc=2)
popz.v
push.v 514.ystart
pushi.e 52
add.i.v
push.v self.fill
sub.v.v
push.v 514.xstart
pushloc.v local.xx_top_right
sub.v.v
push.v self.image_angle
pushi.e 0
add.i.v
pushloc.v local.fill_a
push.d 1.97
mul.d.v
call.i lengthdir_x(argc=2)
add.v.v
call.i draw_vertex(argc=2)
popz.v
call.i draw_primitive_end(argc=0)
popz.v

:[87]
push.v self.image_angle
pushi.e 2
cmp.i.v GTE
bf [152]

:[88]
push.v self.image_angle
pushi.e 33
conv.i.d
div.d.v
push.v self.fill
pushloc.v local.topfill
call.i lerp(argc=3)
pop.v.v local.fill_a
push.v self.image_angle
push.d 2.3
div.d.v
call.i abs(argc=1)
pop.v.v local.xx_bottom_left
pushi.e 0
pop.v.i local.xx_top_left
push.v self.fill
pushi.e 40
cmp.i.v GT
bf [90]

:[89]
push.v self.image_angle
call.i abs(argc=1)
push.d 5.6
div.d.v
pop.v.v local.xx_top_left

:[90]
push.v self.fill
pushi.e 47
cmp.i.v GT
bf [92]

:[91]
push.v self.image_angle
call.i abs(argc=1)
push.d 2.6
div.d.v
pop.v.v local.xx_top_left

:[92]
push.v self.fill
pushi.e 50
cmp.i.v GT
bf [94]

:[93]
push.v self.image_angle
call.i abs(argc=1)
push.d 1.8
div.d.v
pop.v.v local.xx_top_left

:[94]
push.v self.fill
pushi.e 52
cmp.i.v GT
bf [96]

:[95]
push.v self.image_angle
call.i abs(argc=1)
push.d 1.3
div.d.v
pop.v.v local.xx_top_left

:[96]
push.v self.fill
pushi.e 57
cmp.i.v GT
bf [98]

:[97]
push.v self.image_angle
call.i abs(argc=1)
push.d 1.3
div.d.v
pop.v.v local.xx_top_left

:[98]
push.v self.fill
pushi.e 63
cmp.i.v GT
bf [100]

:[99]
push.v self.image_angle
call.i abs(argc=1)
push.d 0.99
mul.d.v
pop.v.v local.xx_top_left

:[100]
push.v self.fill
pushi.e 66
cmp.i.v GT
bf [102]

:[101]
push.v self.image_angle
call.i abs(argc=1)
push.d 1.09
mul.d.v
pop.v.v local.xx_top_left

:[102]
push.v self.fill
pushi.e 69
cmp.i.v GT
bf [104]

:[103]
push.v self.image_angle
call.i abs(argc=1)
push.d 1.2
mul.d.v
pop.v.v local.xx_top_left

:[104]
push.v self.fill
pushi.e 71
cmp.i.v GT
bf [106]

:[105]
push.v self.image_angle
call.i abs(argc=1)
push.d 1.35
mul.d.v
pop.v.v local.xx_top_left

:[106]
push.v self.fill
pushi.e 74
cmp.i.v GT
bf [108]

:[107]
push.v self.image_angle
call.i abs(argc=1)
push.d 1.49
mul.d.v
pop.v.v local.xx_top_left

:[108]
push.v self.fill
pushi.e 78
cmp.i.v GT
bf [110]

:[109]
push.v self.image_angle
call.i abs(argc=1)
push.d 1.65
mul.d.v
pop.v.v local.xx_top_left

:[110]
push.v self.fill
pushi.e 81
cmp.i.v GT
bf [112]

:[111]
push.v self.image_angle
call.i abs(argc=1)
push.d 1.76
mul.d.v
pop.v.v local.xx_top_left

:[112]
push.v self.fill
pushi.e 84
cmp.i.v GT
bf [114]

:[113]
push.v self.image_angle
call.i abs(argc=1)
push.d 1.83
mul.d.v
pop.v.v local.xx_top_left

:[114]
push.v self.fill
push.d 86.5
cmp.d.v GT
bf [116]

:[115]
push.v self.image_angle
call.i abs(argc=1)
push.d 1.96
mul.d.v
pop.v.v local.xx_top_left

:[116]
pushi.e 0
pop.v.i local.xx_top_right
push.v self.fill
pushi.e 36
cmp.i.v GT
bf [118]

:[117]
push.v self.image_angle
call.i abs(argc=1)
push.d 0.3
div.d.v
pop.v.v local.xx_top_right

:[118]
push.v self.fill
pushi.e 40
cmp.i.v GT
bf [120]

:[119]
push.v self.image_angle
call.i abs(argc=1)
push.d 2.3
div.d.v
pop.v.v local.xx_top_right

:[120]
push.v self.fill
pushi.e 50
cmp.i.v GT
bf [122]

:[121]
pushi.e 0
pop.v.i local.xx_top_right

:[122]
push.v self.fill
pushi.e 54
cmp.i.v GT
bf [124]

:[123]
push.v self.image_angle
call.i abs(argc=1)
pushi.e 40
conv.i.d
div.d.v
pop.v.v local.xx_top_right

:[124]
push.v self.fill
pushi.e 60
cmp.i.v GT
bf [126]

:[125]
push.v self.image_angle
call.i abs(argc=1)
push.d -0.4
mul.d.v
pop.v.v local.xx_top_right

:[126]
push.v self.fill
pushi.e 69
cmp.i.v GT
bf [128]

:[127]
push.v self.image_angle
call.i abs(argc=1)
push.d -0.4
mul.d.v
pop.v.v local.xx_top_right

:[128]
push.v self.fill
pushi.e 71
cmp.i.v GT
bf [130]

:[129]
push.v self.image_angle
call.i abs(argc=1)
push.d -0.2
mul.d.v
pop.v.v local.xx_top_right

:[130]
push.v self.fill
pushi.e 80
cmp.i.v GT
bf [132]

:[131]
push.v self.image_angle
call.i abs(argc=1)
push.d 0.15
mul.d.v
pop.v.v local.xx_top_right

:[132]
push.v self.fill
pushi.e 84
cmp.i.v GT
bf [134]

:[133]
push.v self.image_angle
call.i abs(argc=1)
push.d 0.15
mul.d.v
pop.v.v local.xx_top_right

:[134]
pushi.e 0
pop.v.i local.e
push.v self.image_angle
pushi.e 2
cmp.i.v GTE
bf [136]

:[135]
push.v self.image_angle
pushi.e 7
cmp.i.v LT
b [137]

:[136]
push.e 0

:[137]
bf [139]

:[138]
pushi.e 4
pop.v.i local.e

:[139]
pushi.e 0
pop.v.i local.xx_bottom_right
push.v self.fill
pushi.e 36
cmp.i.v GT
bf [141]

:[140]
push.v self.image_angle
call.i abs(argc=1)
pushi.e 2
conv.i.d
div.d.v
pop.v.v local.xx_bottom_right

:[141]
push.v self.fill
pushi.e 54
cmp.i.v GT
bf [143]

:[142]
push.v self.image_angle
call.i abs(argc=1)
pushi.e 4
conv.i.d
div.d.v
pop.v.v local.xx_bottom_right

:[143]
push.v self.fill
pushi.e 60
cmp.i.v GT
bf [145]

:[144]
push.v self.image_angle
call.i abs(argc=1)
pushi.e 4
conv.i.d
div.d.v
pushloc.v local.e
add.v.v
pop.v.v local.xx_bottom_right

:[145]
push.v self.fill
pushi.e 71
cmp.i.v GT
bf [147]

:[146]
push.v self.image_angle
call.i abs(argc=1)
pushi.e 8
conv.i.d
div.d.v
pushloc.v local.e
add.v.v
pop.v.v local.xx_bottom_right

:[147]
push.v self.fill
pushi.e 80
cmp.i.v GT
bf [149]

:[148]
pushi.e 0
pop.v.i local.xx_bottom_right

:[149]
pushi.e 0
pop.v.i local.yy_bottom_right
push.v self.fill
pushi.e 80
cmp.i.v GT
bf [151]

:[150]
pushi.e -3
pop.v.i local.yy_bottom_right

:[151]
pushi.e 4
conv.i.v
call.i draw_primitive_begin(argc=1)
popz.v
push.v 514.ystart
pushi.e 53
add.i.v
pushi.e 3
add.i.v
push.v self.image_angle
pushi.e 150
add.i.v
pushloc.v local.topfill
pushi.e 2
mul.i.v
call.i lengthdir_y(argc=2)
add.v.v
push.v 514.xstart
pushi.e 1
sub.i.v
pushloc.v local.xx_bottom_left
add.v.v
push.v self.image_angle
pushi.e 180
add.i.v
pushloc.v local.topfill
pushi.e 2
mul.i.v
call.i lengthdir_x(argc=2)
add.v.v
call.i draw_vertex(argc=2)
popz.v
push.v 514.ystart
pushi.e 54
add.i.v
pushloc.v local.yy_bottom_right
add.v.v
pushi.e 1
add.i.v
push.v self.image_angle
pushi.e 30
add.i.v
pushloc.v local.topfill
pushi.e 2
mul.i.v
call.i lengthdir_y(argc=2)
add.v.v
push.v 514.xstart
pushloc.v local.xx_bottom_right
sub.v.v
push.v self.image_angle
pushi.e 0
add.i.v
pushloc.v local.topfill
push.d 2.2
mul.d.v
call.i lengthdir_x(argc=2)
add.v.v
call.i draw_vertex(argc=2)
popz.v
push.v 514.ystart
pushi.e 52
add.i.v
push.v self.fill
sub.v.v
push.v 514.xstart
pushloc.v local.xx_top_right
sub.v.v
push.v self.image_angle
pushi.e 0
add.i.v
pushloc.v local.topfill
pushi.e 2
mul.i.v
call.i lengthdir_x(argc=2)
add.v.v
call.i draw_vertex(argc=2)
popz.v
call.i draw_primitive_end(argc=0)
popz.v
pushi.e 4
conv.i.v
call.i draw_primitive_begin(argc=1)
popz.v
push.v 514.ystart
pushi.e 53
add.i.v
pushi.e 3
add.i.v
push.v self.image_angle
pushi.e 150
add.i.v
pushloc.v local.topfill
pushi.e 2
mul.i.v
call.i lengthdir_y(argc=2)
add.v.v
push.v 514.xstart
pushi.e 1
sub.i.v
pushloc.v local.xx_bottom_left
add.v.v
push.v self.image_angle
pushi.e 180
add.i.v
pushloc.v local.topfill
pushi.e 2
mul.i.v
call.i lengthdir_x(argc=2)
add.v.v
call.i draw_vertex(argc=2)
popz.v
push.v 514.ystart
pushi.e 52
add.i.v
push.v self.fill
sub.v.v
push.v 514.xstart
pushloc.v local.xx_top_left
add.v.v
push.v self.image_angle
pushi.e 180
add.i.v
pushloc.v local.fill_a
pushi.e 2
mul.i.v
call.i lengthdir_x(argc=2)
add.v.v
call.i draw_vertex(argc=2)
popz.v
push.v 514.ystart
pushi.e 52
add.i.v
push.v self.fill
sub.v.v
push.v 514.xstart
pushloc.v local.xx_top_right
sub.v.v
push.v self.image_angle
pushi.e 0
add.i.v
pushloc.v local.topfill
pushi.e 2
mul.i.v
call.i lengthdir_x(argc=2)
add.v.v
call.i draw_vertex(argc=2)
popz.v
call.i draw_primitive_end(argc=0)
popz.v

:[152]
push.v self.fill
pushi.e 88
cmp.i.v GT
bf [154]

:[153]
pushglb.v global.turntimer
pushi.e 2
cmp.i.v GT
b [155]

:[154]
push.e 0

:[155]
bf [157]

:[156]
pushi.e 2
pop.v.i global.turntimer

:[157]
push.v self.fill
pushi.e 90
cmp.i.v LT
bf [159]

:[158]
push.v self.prefill
pushi.e 0
cmp.i.v GT
b [160]

:[159]
push.e 0

:[160]
bf [165]

:[161]
push.v self.prefill
push.e 1
sub.i.v
pop.v.v self.prefill
push.v self.fill
push.e 1
add.i.v
pop.v.v self.fill
push.v self.fill
pushi.e 1
cmp.i.v EQ
bf [163]

:[162]
push.v self.damage
push.v self.hurtbox
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.hurtbox
pushi.e -9
pop.v.v [stacktop]self.target

:[163]
push.v self.fill
pushi.e 36
cmp.i.v LT
bf [165]

:[164]
push.v self.fill
pushi.e 1
pushloc.v local.bottomfill
pushi.e 36
conv.i.d
div.d.v
sub.v.i
add.v.v
pop.v.v self.fill

:[165]
push.v 574.difficulty
pushi.e 1
cmp.i.v EQ
bf [168]

:[166]
push.v self.fill
pushi.e 48
cmp.i.v GT
bf [168]

:[167]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 3351
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[168]
push.v 574.difficulty
pushi.e 2
cmp.i.v EQ
bf [173]

:[169]
push.v self.fill
pushi.e 52
cmp.i.v GT
bf [171]

:[170]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 3351
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[171]
push.v self.fill
pushi.e 76
cmp.i.v GT
bf [173]

:[172]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 1
conv.i.v
pushi.e 3351
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[173]
call.i draw_self(argc=0)
popz.v

:[end]