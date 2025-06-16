.localvar 2 arguments
.localvar 25243 shieldindex 12181
.localvar 25244 hptype 12182
.localvar 24647 wineheight 12183

:[0]
push.v self.shieldsiner
push.e 1
add.i.v
pop.v.v self.shieldsiner
push.v self.shieldhurt
pushi.e 2
cmp.i.v NEQ
bf [2]

:[1]
push.d 0.7
push.v self.shieldsiner
pushi.e 7
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.05
mul.d.v
add.v.d
pop.v.v self.shieldalpha

:[2]
push.v self.shieldalpha
push.d 0.8
mul.d.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.image_yscale
push.d 0.1
cmp.d.v GTE
bf [14]

:[3]
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.appearcon
pushi.e 2
cmp.i.v EQ
bf [5]

:[4]
push.v self.sprite_index
pushi.e 1895
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 1
conv.b.v
push.v self.y
pushi.e 3
sub.i.v
push.v self.shieldheight
push.v self.image_yscale
pushi.e 3
conv.i.d
div.d.v
mul.v.v
add.v.v
push.v self.x
pushi.e 45
add.i.v
push.v self.y
pushi.e 3
add.i.v
push.v self.shieldheight
push.v self.image_yscale
pushi.e 4
conv.i.d
div.d.v
mul.v.v
sub.v.v
push.v self.x
pushi.e 46
add.i.v
push.v self.queenhandy
push.v self.queenhandx
call.i draw_triangle(argc=7)
popz.v
pushi.e 0
conv.b.v
push.i 65280
conv.i.v
push.i 65280
conv.i.v
pushi.e 0
conv.i.v
push.v self.y
pushi.e 3
sub.i.v
push.v self.shieldheight
push.v self.image_yscale
pushi.e 3
conv.i.d
div.d.v
mul.v.v
add.v.v
push.v self.x
pushi.e 45
add.i.v
push.v self.y
pushi.e 3
add.i.v
push.v self.shieldheight
push.v self.image_yscale
pushi.e 4
conv.i.d
div.d.v
mul.v.v
sub.v.v
push.v self.x
pushi.e 46
add.i.v
push.v self.queenhandy
push.v self.queenhandx
call.i draw_triangle_colour(argc=10)
popz.v
b [13]

:[8]
push.v self.appearcon
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1
conv.b.v
push.v self.y
pushi.e 14
sub.i.v
pushi.e 3
sub.i.v
push.v self.shieldheight
push.v self.image_yscale
mul.v.v
add.v.v
push.v self.x
pushi.e 81
add.i.v
push.v self.y
pushi.e 63
add.i.v
push.v self.x
pushi.e 81
add.i.v
push.v self.queenhandy
push.v self.queenhandx
call.i draw_triangle(argc=7)
popz.v
pushi.e 0
conv.b.v
push.i 65280
conv.i.v
push.i 65280
conv.i.v
pushi.e 0
conv.i.v
push.v self.y
pushi.e 14
sub.i.v
pushi.e 3
sub.i.v
push.v self.shieldheight
push.v self.image_yscale
mul.v.v
add.v.v
push.v self.x
pushi.e 81
add.i.v
push.v self.y
pushi.e 63
add.i.v
push.v self.x
pushi.e 81
add.i.v
push.v self.queenhandy
push.v self.queenhandx
call.i draw_triangle_colour(argc=10)
popz.v
b [13]

:[10]
push.v self.sprite_index
pushi.e 1893
cmp.i.v NEQ
bf [12]

:[11]
pushi.e 1
conv.b.v
push.v self.y
pushi.e 3
sub.i.v
push.v self.shieldheight
push.v self.image_yscale
pushi.e 2
conv.i.d
div.d.v
mul.v.v
add.v.v
push.v self.x
pushi.e 45
add.i.v
push.v self.y
pushi.e 3
add.i.v
push.v self.shieldheight
push.v self.image_yscale
pushi.e 3
conv.i.d
div.d.v
mul.v.v
sub.v.v
push.v self.x
pushi.e 46
add.i.v
push.v self.queenhandy
push.v self.queenhandx
call.i draw_triangle(argc=7)
popz.v
pushi.e 0
conv.b.v
push.i 65280
conv.i.v
push.i 65280
conv.i.v
pushi.e 0
conv.i.v
push.v self.y
pushi.e 3
sub.i.v
push.v self.shieldheight
push.v self.image_yscale
pushi.e 2
conv.i.d
div.d.v
mul.v.v
add.v.v
push.v self.x
pushi.e 45
add.i.v
push.v self.y
pushi.e 3
add.i.v
push.v self.shieldheight
push.v self.image_yscale
pushi.e 3
conv.i.d
div.d.v
mul.v.v
sub.v.v
push.v self.x
pushi.e 46
add.i.v
push.v self.queenhandy
push.v self.queenhandx
call.i draw_triangle_colour(argc=10)
popz.v
b [13]

:[12]
pushi.e 1
conv.b.v
push.v self.y
pushi.e 3
sub.i.v
push.v self.shieldheight
push.v self.image_yscale
mul.v.v
add.v.v
push.v self.x
pushi.e 79
add.i.v
push.v self.y
pushi.e 49
add.i.v
push.v self.x
pushi.e 79
add.i.v
push.v self.queenhandy
push.v self.queenhandx
call.i draw_triangle(argc=7)
popz.v
pushi.e 0
conv.b.v
push.i 65280
conv.i.v
push.i 65280
conv.i.v
pushi.e 0
conv.i.v
push.v self.y
pushi.e 3
sub.i.v
push.v self.shieldheight
push.v self.image_yscale
mul.v.v
add.v.v
push.v self.x
pushi.e 79
add.i.v
push.v self.y
pushi.e 49
add.i.v
push.v self.x
pushi.e 79
add.i.v
push.v self.queenhandy
push.v self.queenhandx
call.i draw_triangle_colour(argc=10)
popz.v

:[13]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[14]
push.v self.y
push.v self.shieldsiner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.5
mul.d.v
add.v.v
pop.v.v self.y
pushi.e 0
pop.v.i local.shieldindex
pushi.e 0
pop.v.i local.hptype
push.v 574.shieldhp
push.v 574.shieldmaxhp
div.v.v
push.v 574.shieldacthp
push.v 574.shieldactmaxhp
div.v.v
cmp.v.v LTE
bf [26]

:[15]
pushi.e 0
pop.v.i local.hptype
pushi.e 10
dup.i 0
push.i 0
cmp.i.i LTE
bt [19]

:[16]
push.v 574.shieldhp
push.v self.shieldhpgradual
cmp.v.v LT
bf [18]

:[17]
push.v self.shieldhpgradual
pushi.e 1
sub.i.v
pop.v.v self.shieldhpgradual

:[18]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [16]

:[19]
popz.i
push.v 574.phase
pushi.e 1
sub.i.v
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [25]

:[20]
pushi.e 10
dup.i 0
push.i 0
cmp.i.i LTE
bt [24]

:[21]
push.v 574.shieldhp
push.v self.shieldhpgradual
cmp.v.v GT
bf [23]

:[22]
push.v self.shieldhpgradual
pushi.e 1
add.i.v
pop.v.v self.shieldhpgradual

:[23]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [21]

:[24]
popz.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [20]

:[25]
popz.i
push.v self.shieldhpgradual
push.v 574.shieldmaxhp
div.v.v
pushi.e 0
conv.i.v
push.v self.shieldheight
call.i lerp(argc=3)
pop.v.v local.wineheight
b [39]

:[26]
pushi.e 1
pop.v.i local.hptype
push.v self.shieldhpgradual
push.v 574.shieldactmaxhp
cmp.v.v GT
bf [28]

:[27]
push.v 574.shieldactmaxhp
pop.v.v self.shieldhpgradual

:[28]
pushi.e 10
dup.i 0
push.i 0
cmp.i.i LTE
bt [32]

:[29]
push.v 574.shieldacthp
push.v self.shieldhpgradual
cmp.v.v LT
bf [31]

:[30]
push.v self.shieldhpgradual
push.d 0.01
sub.d.v
pop.v.v self.shieldhpgradual

:[31]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [29]

:[32]
popz.i
push.v 574.phase
pushi.e 1
sub.i.v
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [38]

:[33]
pushi.e 10
dup.i 0
push.i 0
cmp.i.i LTE
bt [37]

:[34]
push.v 574.shieldacthp
push.v self.shieldhpgradual
cmp.v.v GT
bf [36]

:[35]
push.v self.shieldhpgradual
push.d 0.01
add.d.v
pop.v.v self.shieldhpgradual

:[36]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [34]

:[37]
popz.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [33]

:[38]
popz.i
push.v self.shieldhpgradual
push.v 574.shieldactmaxhp
div.v.v
pushi.e 0
conv.i.v
push.v self.shieldheight
call.i lerp(argc=3)
pop.v.v local.wineheight

:[39]
push.v self.appearcon
pushi.e 1
cmp.i.v EQ
bf [42]

:[40]
pushi.e 4
pop.v.i self.image_xscale
pushi.e 0
pop.v.i self.image_yscale
push.d 1.1
pop.v.d self.appearcon
push.v 574.shieldhp
pop.v.v self.shieldhpgradual
push.v self.sprite_index
pushi.e 1895
cmp.i.v NEQ
bf [42]

:[41]
push.v self.x
pushi.e 34
add.i.v
pop.v.v self.x
push.v self.y
pushi.e 140
add.i.v
pop.v.v self.y
pushi.e 1895
pop.v.i self.sprite_index

:[42]
push.v self.appearcon
push.d 1.1
cmp.d.v EQ
bf [47]

:[43]
push.v self.image_yscale
pushi.e 2
cmp.i.v LT
bf [45]

:[44]
push.v self.appeartimer
push.e 1
add.i.v
pop.v.v self.appeartimer
push.v self.appeartimer
pushi.e 10
conv.i.d
div.d.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_yscale
push.v self.appeartimer
pushi.e 10
conv.i.d
div.d.v
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_xscale
b [47]

:[45]
pushi.e 0
pop.v.i self.appearcon
pushi.e 0
pop.v.i self.appeartimer
push.v 574.shieldmaxhp
pop.v.v self.shieldhpgradual
push.v self.sprite_index
pushi.e 1893
cmp.i.v NEQ
bf [47]

:[46]
push.v self.x
pushi.e 34
sub.i.v
pop.v.v self.x
push.v self.y
pushi.e 140
sub.i.v
pop.v.v self.y
pushi.e 1893
pop.v.i self.sprite_index

:[47]
push.v self.appearcon
pushi.e 2
cmp.i.v EQ
bf [53]

:[48]
push.v self.image_yscale
pushi.e 0
cmp.i.v GT
bf [52]

:[49]
push.v self.appeartimer
push.e 1
add.i.v
pop.v.v self.appeartimer
push.v self.appeartimer
pushi.e 10
conv.i.d
div.d.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_yscale
push.v self.appeartimer
pushi.e 10
conv.i.d
div.d.v
pushi.e 4
conv.i.v
pushi.e 2
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_xscale
push.v self.sprite_index
pushi.e 1895
cmp.i.v NEQ
bf [51]

:[50]
push.v self.x
pushi.e 34
add.i.v
pop.v.v self.x
push.v self.y
pushi.e 140
add.i.v
pop.v.v self.y
pushi.e 1895
pop.v.i self.sprite_index

:[51]
b [53]

:[52]
pushi.e 0
pop.v.i self.image_xscale
pushi.e 0
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.appearcon
pushi.e 0
pop.v.i self.appeartimer

:[53]
push.v self.shaketimer
pushi.e 0
cmp.i.v GT
bf [55]

:[54]
push.v self.xstart
push.v self.shaketimer
sub.v.v
push.v self.shaketimer
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.x
push.v self.ystart
push.v self.shaketimer
sub.v.v
push.v self.shaketimer
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.y
push.v self.shaketimer
push.e 1
sub.i.v
pop.v.v self.shaketimer

:[55]
push.v self.shieldhurt
pushi.e 1
cmp.i.v EQ
bf [58]

:[56]
pushi.e 2
pop.v.i local.shieldindex
push.v self.shieldhurttimer
call.i random(argc=1)
push.v self.shieldhurttimer
call.i random(argc=1)
sub.v.v
pushi.e 2
mul.i.v
pop.v.v self.shieldx
push.v self.shieldhurttimer
push.e 1
sub.i.v
pop.v.v self.shieldhurttimer
push.v self.shieldhurttimer
pushi.e 0
cmp.i.v LTE
bf [58]

:[57]
pushi.e 0
pop.v.i self.shieldhurt

:[58]
push.v self.shieldhurt
pushi.e 2
cmp.i.v EQ
bf [60]

:[59]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[60]
push.v self.appearcon
pushi.e 0
cmp.i.v NEQ
bf [62]

:[61]
push.v self.shieldalpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushi.e 3
add.i.v
push.v self.x
pushi.e 7
add.i.v
pushi.e 1
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
b [end]

:[62]
push.v self.shieldalpha
push.i 16777215
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushloc.v local.wineheight
push.v self.image_yscale
mul.v.v
add.v.v
push.v self.x
push.v self.shieldx
add.v.v
push.v self.shieldheight
pushloc.v local.wineheight
sub.v.v
push.v self.sprite_width
pushloc.v local.wineheight
pushi.e 0
conv.i.v
pushloc.v local.shieldindex
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v self.shieldalpha
push.i 16777215
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.shieldx
add.v.v
pushloc.v local.wineheight
push.v self.sprite_width
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local.shieldindex
pushi.e 1
add.i.v
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v self.shieldhpgradual
pushi.e 5
cmp.i.v LTE
bf [64]

:[63]
pushloc.v local.hptype
pushi.e 0
cmp.i.v EQ
b [65]

:[64]
push.e 0

:[65]
bt [70]

:[66]
push.v self.shieldhpgradual
pushi.e 1
cmp.i.v LT
bf [68]

:[67]
pushloc.v local.hptype
pushi.e 1
cmp.i.v EQ
b [69]

:[68]
push.e 0

:[69]
b [71]

:[70]
push.e 1

:[71]
bf [end]

:[72]
push.v self.imabouttobreak_siner
push.d 0.5
add.d.v
pop.v.v self.imabouttobreak_siner
push.d 0.1
push.v self.imabouttobreak_siner
call.i sin(argc=1)
pushi.e 6
conv.i.d
div.d.v
add.v.d
pop.v.v self.imabouttobreak_alpha
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
push.v self.imabouttobreak_alpha
push.i 16777215
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushloc.v local.wineheight
push.v self.image_yscale
mul.v.v
add.v.v
push.v self.x
push.v self.shieldx
add.v.v
push.v self.shieldheight
pushloc.v local.wineheight
sub.v.v
push.v self.sprite_width
pushloc.v local.wineheight
pushi.e 0
conv.i.v
pushloc.v local.shieldindex
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v self.imabouttobreak_alpha
push.i 16777215
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.shieldx
add.v.v
pushloc.v local.wineheight
push.v self.sprite_width
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local.shieldindex
pushi.e 1
add.i.v
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v

:[end]