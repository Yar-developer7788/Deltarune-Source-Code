.localvar 2 arguments
.localvar 24528 xx1 11414
.localvar 24529 yy1 11415
.localvar 21634 xx2 11416
.localvar 24493 yy2 11417
.localvar 7017 a 11418
.localvar 6409 hurt 11419

:[0]
push.v self.draw_button_press
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v 484.bumpactstarted
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [20]

:[4]
push.v self.draw_button_press_timer
push.e 1
add.i.v
pop.v.v self.draw_button_press_timer
push.v self.draw_button_press_timer
pushi.e 12
cmp.i.v GT
bf [6]

:[5]
pushi.e 0
pop.v.i self.draw_button_press_timer

:[6]
push.v self.x
pushi.e 129
add.i.v
pop.v.v local.xx1
push.v self.y
pushi.e 24
sub.i.v
pop.v.v local.yy1
push.v self.x
pushi.e 163
add.i.v
pop.v.v local.xx2
push.v self.y
pushi.e 8
add.i.v
pop.v.v local.yy2
push.v self.draw_button_press_timer
pushi.e 7
cmp.i.v GT
bf [8]

:[7]
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
push.i 16777215
conv.i.v
push.i 16777215
conv.i.v
push.i 16777215
conv.i.v
pushloc.v local.yy2
pushloc.v local.xx2
pushloc.v local.yy1
pushloc.v local.xx1
call.i draw_rectangle_color(argc=9)
popz.v
b [14]

:[8]
push.v self.HeroID
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
pushi.e 0
conv.i.v
push.i 16776960
conv.i.v
push.i 16776960
conv.i.v
push.i 16776960
conv.i.v
push.i 16776960
conv.i.v
pushloc.v local.yy2
pushloc.v local.xx2
pushloc.v local.yy1
pushloc.v local.xx1
call.i draw_rectangle_color(argc=9)
popz.v
b [14]

:[10]
push.v self.HeroID
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
pushi.e 0
conv.i.v
push.i 16711935
conv.i.v
push.i 16711935
conv.i.v
push.i 16711935
conv.i.v
push.i 16711935
conv.i.v
pushloc.v local.yy2
pushloc.v local.xx2
pushloc.v local.yy1
pushloc.v local.xx1
call.i draw_rectangle_color(argc=9)
popz.v
b [14]

:[12]
push.v self.HeroID
pushi.e 2
cmp.i.v EQ
bf [14]

:[13]
pushi.e 0
conv.i.v
push.i 65280
conv.i.v
push.i 65280
conv.i.v
push.i 65280
conv.i.v
push.i 65280
conv.i.v
pushloc.v local.yy2
pushloc.v local.xx2
pushloc.v local.yy1
pushloc.v local.xx1
call.i draw_rectangle_color(argc=9)
popz.v

:[14]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local.yy2
pushi.e 2
sub.i.v
pushloc.v local.xx2
pushi.e 2
sub.i.v
pushloc.v local.yy1
pushi.e 2
add.i.v
pushloc.v local.xx1
pushi.e 2
add.i.v
call.i draw_rectangle_color(argc=9)
popz.v
push.v self.x
pushi.e 135
add.i.v
pop.v.v local.xx1
push.v self.y
pushi.e 25
sub.i.v
pop.v.v local.yy1
push.v self.HeroID
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 9999
conv.i.v
pushi.e 9999
conv.i.v
push.s "Z!"@24530
conv.s.v
pushloc.v local.yy1
pushloc.v local.xx1
call.i draw_text_ext_transformed(argc=8)
popz.v

:[16]
push.v self.HeroID
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 9999
conv.i.v
pushi.e 9999
conv.i.v
push.s "X!"@24531
conv.s.v
pushloc.v local.yy1
pushloc.v local.xx1
call.i draw_text_ext_transformed(argc=8)
popz.v

:[18]
push.v self.HeroID
pushi.e 2
cmp.i.v EQ
bf [20]

:[19]
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 9999
conv.i.v
pushi.e 9999
conv.i.v
push.s "C!"@24532
conv.s.v
pushloc.v local.yy1
pushloc.v local.xx1
call.i draw_text_ext_transformed(argc=8)
popz.v

:[20]
push.v self.nitro
pushi.e 1
cmp.i.v EQ
bf [28]

:[21]
push.v self.flametimer
push.e 1
add.i.v
pop.v.v self.flametimer
push.v self.flametimer
pushi.e 3
cmp.i.v GTE
bf [23]

:[22]
pushi.e 0
pop.v.i self.flametimer
pushi.e 816
conv.i.v
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 0
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.flame
pushi.e 180
push.v self.flame
pushi.e -9
pop.v.i [stacktop]self.direction
pushi.e 6
push.v self.flame
pushi.e -9
pop.v.i [stacktop]self.speed
push.d 0.2
push.v self.flame
pushi.e -9
pop.v.d [stacktop]self.friction
push.v self.depth
pushi.e 10
add.i.v
push.v self.flame
pushi.e -9
pop.v.v [stacktop]self.depth

:[23]
push.v self.flameindextimer
push.e 1
add.i.v
pop.v.v self.flameindextimer
push.v self.flameindextimer
pushi.e 4
cmp.i.v EQ
bf [27]

:[24]
pushi.e 0
pop.v.i self.flameindextimer
push.v self.flameindex
pushi.e 0
cmp.i.v EQ
bf [26]

:[25]
pushi.e 1
pop.v.i self.flameindex
b [27]

:[26]
pushi.e 0
pop.v.i self.flameindex

:[27]
push.d 0.6
conv.d.v
push.i 4235519
conv.i.v
pushi.e 90
conv.i.v
push.d 0.5
conv.d.v
push.d 0.25
conv.d.v
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 12
add.i.v
pushi.e 9
push.v self.flameindex
add.v.i
pushi.e 2153
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[28]
pushi.e 2
pop.v.i local.a
push.v self.sprite_index
pushi.e 1440
cmp.i.v EQ
bf [30]

:[29]
push.d 1.5
pop.v.d local.a

:[30]
push.v self.sprite_index
pushi.e 1441
cmp.i.v EQ
bf [32]

:[31]
push.d 1.5
pop.v.d local.a

:[32]
push.v self.sprite_index
pushi.e 1452
cmp.i.v EQ
bf [34]

:[33]
push.d 1.5
pop.v.d local.a

:[34]
push.v self.sprite_index
pushi.e 1449
cmp.i.v EQ
bf [36]

:[35]
push.d 1.5
pop.v.d local.a

:[36]
push.v self.sprite_index
pushi.e 1445
cmp.i.v EQ
bf [38]

:[37]
push.d 1.5
pop.v.d local.a

:[38]
push.v self.sprite_index
pushi.e 1435
cmp.i.v EQ
bf [40]

:[39]
push.d 1.5
pop.v.d local.a

:[40]
push.v self.sprite_index
pushi.e 1464
cmp.i.v EQ
bf [42]

:[41]
push.d 1.5
pop.v.d local.a

:[42]
push.v self.sprite_index
pushi.e 1465
cmp.i.v EQ
bf [44]

:[43]
push.d 1.5
pop.v.d local.a

:[44]
push.v self.sprite_index
pushi.e 1476
cmp.i.v EQ
bf [46]

:[45]
push.d 1.5
pop.v.d local.a

:[46]
push.v self.sprite_index
pushi.e 1475
cmp.i.v EQ
bf [48]

:[47]
push.d 1.5
pop.v.d local.a

:[48]
push.v self.sprite_index
pushi.e 1461
cmp.i.v EQ
bf [50]

:[49]
push.d 1.5
pop.v.d local.a

:[50]
push.v self.sprite_index
pushi.e 1477
cmp.i.v EQ
bf [52]

:[51]
push.d 1.5
pop.v.d local.a

:[52]
push.v self.sprite_index
pushi.e 1466
cmp.i.v EQ
bf [54]

:[53]
push.d 1.5
pop.v.d local.a

:[54]
pushi.e 0
pop.v.i local.hurt
push.v self.sprite_index
pushi.e 1420
cmp.i.v EQ
bf [56]

:[55]
pushi.e 1
pop.v.i local.hurt

:[56]
push.v self.sprite_index
pushi.e 1467
cmp.i.v EQ
bf [58]

:[57]
pushi.e 1
pop.v.i local.hurt

:[58]
push.v self.sprite_index
pushi.e 1444
cmp.i.v EQ
bf [60]

:[59]
pushi.e 1
pop.v.i local.hurt

:[60]
push.v self.sprite_index
pushi.e 1511
cmp.i.v EQ
bf [62]

:[61]
pushi.e 1
pop.v.i local.hurt

:[62]
push.v self.HeroID
pushi.e 0
cmp.i.v EQ
bf [64]

:[63]
push.v 372.hurt
pushi.e 0
cmp.i.v GT
b [65]

:[64]
push.e 0

:[65]
bf [67]

:[66]
pushi.e 1
pop.v.i local.hurt

:[67]
push.v self.HeroID
pushi.e 1
cmp.i.v EQ
bf [70]

:[68]
pushi.e 373
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [70]

:[69]
push.v 373.hurt
pushi.e 0
cmp.i.v GT
b [71]

:[70]
push.e 0

:[71]
bf [73]

:[72]
pushi.e 1
pop.v.i local.hurt

:[73]
push.v self.HeroID
pushi.e 2
cmp.i.v EQ
bf [76]

:[74]
pushi.e 374
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [76]

:[75]
push.v 374.hurt
pushi.e 0
cmp.i.v GT
b [77]

:[76]
push.e 0

:[77]
bf [79]

:[78]
pushi.e 1
pop.v.i local.hurt

:[79]
push.v self.x
push.v self.back
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.y
pushi.e 8
add.i.v
push.v self.back
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.userealsprite
pushi.e 0
cmp.i.v EQ
bf [81]

:[80]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pushloc.v local.a
mul.v.v
sub.v.v
push.v self.yy
add.v.v
pushi.e 8
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.v self.xx
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[81]
pushloc.v local.hurt
pushi.e 0
cmp.i.v EQ
bf [83]

:[82]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushi.e 8
add.i.v
push.v self.x
push.v self.HeroID
pushi.e 1859
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[83]
pushloc.v local.hurt
pushi.e 1
cmp.i.v EQ
bf [85]

:[84]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushi.e 8
add.i.v
push.v self.x
push.v self.HeroID
pushi.e 1860
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[85]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bt [87]

:[86]
push.v self.disabled
pushi.e 1
cmp.i.v EQ
b [88]

:[87]
push.e 1

:[88]
bf [end]

:[89]
push.v self.userealsprite
pushi.e 0
cmp.i.v EQ
bf [91]

:[90]
push.d 0.4
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pushloc.v local.a
mul.v.v
sub.v.v
push.v self.yy
add.v.v
pushi.e 8
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.v self.xx
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[91]
pushloc.v local.hurt
pushi.e 0
cmp.i.v EQ
bf [93]

:[92]
push.d 0.4
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushi.e 8
add.i.v
push.v self.x
push.v self.HeroID
pushi.e 1859
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[93]
pushloc.v local.hurt
pushi.e 1
cmp.i.v EQ
bf [end]

:[94]
push.d 0.4
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushi.e 8
add.i.v
push.v self.x
push.v self.HeroID
pushi.e 1860
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]