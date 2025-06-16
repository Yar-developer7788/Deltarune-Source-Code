.localvar 2 arguments
.localvar 30769 kris_x 17676
.localvar 30770 kris_y 17677
.localvar 21314 sus_x 17678
.localvar 21315 sus_y 17679
.localvar 21319 ral_x 17680
.localvar 21320 ral_y 17681

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [20]

:[1]
pushi.e 893
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [10]

:[2]
pushi.e 893
pushenv [9]

:[3]
push.v self.name
push.s "kris"@68
cmp.s.v EQ
bf [5]

:[4]
push.v self.x
pop.v.v local.kris_x
push.v self.y
pop.v.v local.kris_y

:[5]
push.v self.name
push.s "susie"@70
cmp.s.v EQ
bf [7]

:[6]
push.v self.x
pop.v.v local.sus_x
push.v self.y
pop.v.v local.sus_y

:[7]
push.v self.name
push.s "ralsei"@72
cmp.s.v EQ
bf [9]

:[8]
push.v self.x
pop.v.v local.ral_x
push.v self.y
pop.v.v local.ral_y

:[9]
popenv [3]

:[10]
pushi.e 0
pop.v.i self.i

:[11]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [13]

:[12]
push.i 174128
setowner.e
pushi.e 536
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 100
sub.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 400
add.i.v
push.v self.i
pushi.e 100
mul.i.v
sub.v.v
call.i gml_Script_scr_dark_marker(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.fallmarker
push.i 133624
setowner.e
pushi.e 2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.fallmarker
pushi.e -9
pop.v.i [stacktop]self.vspeed
push.i 133623
setowner.e
pushi.e -5
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.fallmarker
pushi.e -9
pop.v.i [stacktop]self.hspeed
push.i 133628
setowner.e
push.d 0.2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.fallmarker
pushi.e -9
pop.v.d [stacktop]self.gravity
push.i 133655
setowner.e
push.d 0.25
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.fallmarker
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.i 133637
setowner.e
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.fallmarker
pushi.e -9
pop.v.i [stacktop]self.depth
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [11]

:[13]
push.i 133642
setowner.e
pushi.e 534
pushi.e -1
pushi.e 1
push.v [array]self.fallmarker
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 780
pushi.e -1
pushi.e 2
push.v [array]self.fallmarker
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e -1
pushi.e 0
push.v [array]self.fallmarker
pushi.e -9
pushenv [15]

:[14]
pushloc.v local.kris_x
pop.v.v self.x
pushloc.v local.kris_y
pop.v.v self.y

:[15]
popenv [14]
pushi.e -1
pushi.e 1
push.v [array]self.fallmarker
pushi.e -9
pushenv [17]

:[16]
pushloc.v local.sus_x
pop.v.v self.x
pushloc.v local.sus_y
pop.v.v self.y

:[17]
popenv [16]
pushi.e -1
pushi.e 2
push.v [array]self.fallmarker
pushi.e -9
pushenv [19]

:[18]
pushloc.v local.ral_x
pop.v.v self.x
pushloc.v local.ral_y
pop.v.v self.y

:[19]
popenv [18]
push.d 0.5
pop.v.d self.con

:[20]
push.v self.con
push.d 0.1
cmp.d.v EQ
bf [23]

:[21]
pushi.e -1
pushi.e 0
push.v [array]self.fallmarker
pushi.e -9
push.v [stacktop]self.y
pushi.e 720
cmp.i.v GTE
bf [23]

:[22]
push.d 0.5
pop.v.d self.con

:[23]
push.v self.con
push.d 0.5
cmp.d.v EQ
bf [25]

:[24]
pushi.e 36
pop.v.i self.hspeed
pushi.e 1
pop.v.i self.friction
pushi.e 1
pop.v.i self.con

:[25]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [35]

:[26]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 360
add.i.v
cmp.v.v GTE
bf [35]

:[27]
pushi.e 0
pop.v.i self.i

:[28]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [32]

:[29]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.fallmarker
pushi.e -9
pushenv [31]

:[30]
call.i instance_destroy(argc=0)
popz.v

:[31]
popenv [30]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [28]

:[32]
pushi.e 0
pop.v.i self.timer
pushi.e 2
pop.v.i self.con
push.i 174123
setowner.e
pushi.e 540
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.coasterSprite
pushi.e 548
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.coasterSprite
pushi.e 2562
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.coasterSprite
push.i 174124
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.coasterVisible
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.coasterVisible
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.coasterVisible
pushi.e 1
pop.v.i self.i

:[33]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [35]

:[34]
push.i 170127
setowner.e
pushi.e 65
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.coasterSprite
call.i sprite_get_width(argc=1)
sub.v.i
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.dx
push.i 172618
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.coasterSprite
call.i sprite_get_height(argc=1)
neg.v
pushi.e 2
mul.i.v
pushi.e 44
add.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.dy
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [33]

:[35]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [41]

:[36]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 15
cmp.i.v GTE
bf [41]

:[37]
push.i 174123
setowner.e
pushi.e 653
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.coasterSprite
pushi.e 1005
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.coasterSprite
pushi.e 795
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.coasterSprite
pushi.e 1
pop.v.i self.i

:[38]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [40]

:[39]
push.i 170127
setowner.e
pushi.e 65
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.coasterSprite
call.i sprite_get_width(argc=1)
sub.v.i
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.dx
push.i 172618
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.coasterSprite
call.i sprite_get_height(argc=1)
neg.v
pushi.e 2
mul.i.v
pushi.e 44
add.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.dy
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [38]

:[40]
pushi.e 3
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[41]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [43]

:[42]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer

:[43]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [45]

:[44]
pushi.e 4
pop.v.i self.hspeed
push.d -0.5
pop.v.d self.friction
pushi.e 5
pop.v.i self.con

:[45]
push.v self.con
pushi.e 1
cmp.i.v EQ
bt [47]

:[46]
push.v self.con
pushi.e 2
cmp.i.v EQ
b [48]

:[47]
push.e 1

:[48]
bf [50]

:[49]
push.d 0.09
conv.d.v
call.i gml_Script_cameray(argc=0)
pushi.e 280
add.i.v
push.v self.y
call.i lerp(argc=3)
pop.v.v self.y

:[50]
pushi.e 100
pop.v.i self.spacing
pushi.e 0
pop.v.i self.i

:[51]
push.v self.i
pushi.e 20
cmp.i.v LT
bf [end]

:[52]
push.i 174118
setowner.e
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.coasterSiner
pushi.e 1
add.i.v
pop.i.v [array]self.coasterSiner
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.coasterVisible
conv.v.b
bf [54]

:[53]
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.image_angle
pushi.e 2
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.coasterXscale
push.v self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.coasterSiner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.coasterY
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.dy
add.v.v
pushi.e 4
add.i.v
push.v self.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.coasterX
add.v.v
push.v self.spacing
push.v self.i
mul.v.v
sub.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.dx
add.v.v
pushi.e 30
sub.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.coasterImageIndex
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.coasterSiner
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.coasterImageSpeed
mul.v.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.coasterSprite
call.i draw_sprite_ext(argc=9)
popz.v

:[54]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.coasterCarVisible
conv.v.b
bf [56]

:[55]
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.image_angle
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
push.v self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.coasterSiner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.v
pushi.e 130
push.v self.x
add.v.i
push.v self.spacing
push.v self.i
mul.v.v
sub.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.coasterSiner
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.coasterImageSpeed
mul.v.v
pushi.e 689
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[56]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [51]

:[end]