.localvar 2 arguments
.localvar 27386 move_flame 14497

:[0]
pushi.e 1081
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bt [2]

:[1]
pushi.e 1080
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
exit.i

:[5]
pushi.e 798
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[6]
exit.i

:[7]
pushi.e 801
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [9]

:[8]
exit.i

:[9]
push.v self.nextdrawflip
pushi.e 0
cmp.i.v GTE
bf [11]

:[10]
push.v self.nextdrawflip
pop.v.v self.drawflip
pushi.e -1
pop.v.i self.nextdrawflip

:[11]
push.v 789.health_count
push.v 789.health_count_max
pushi.e 1
mul.i.v
cmp.v.v LT
bf [13]

:[12]
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [19]

:[15]
push.v self.force_drawflip
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
pushi.e 0
pop.v.i self.drawflip

:[17]
push.v self.force_drawflip
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
pushi.e 1
pop.v.i self.drawflip

:[19]
push.v self.specialcon
pushi.e 1
cmp.i.v EQ
bt [21]

:[20]
push.v self.specialcon
pushi.e 2
cmp.i.v EQ
b [22]

:[21]
push.e 1

:[22]
bf [34]

:[23]
push.v self.specialcontimer
push.e 1
add.i.v
pop.v.v self.specialcontimer
push.v self.specialcontimer
pushi.e 4
conv.i.d
div.d.v
pushi.e 2
mod.i.v
pop.v.v self.flameframe
push.v self.specialcontimer
pushi.e 15
conv.i.d
div.d.v
pop.v.v self.flamealpha
push.v self.flamealpha
push.d 0.5
cmp.d.v GTE
bf [25]

:[24]
push.d 0.5
pop.v.d self.flamealpha

:[25]
push.v self.specialcontimer
pushi.e 15
cmp.i.v GTE
bf [27]

:[26]
pushi.e 1
push.v self.specialcontimer
pushi.e 30
conv.i.d
div.d.v
sub.v.i
pop.v.v self.flamealpha

:[27]
push.v self.specialcontimer
pushi.e 30
cmp.i.v GTE
bf [29]

:[28]
pushi.e 0
pop.v.i self.specialcontimer
pushi.e 0
pop.v.i self.specialcon
pushi.e 0
pop.v.i self.image_index

:[29]
pushi.e 5
pop.v.i local.move_flame
push.v self.drawflip
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
pushi.e -5
pop.v.i local.move_flame

:[31]
push.v self.pirouette_amount
pushi.e 5
cmp.i.v EQ
bf [33]

:[32]
push.v self.flamealpha
pushi.e 255
conv.i.v
pushi.e 0
conv.i.v
push.d 2.4
conv.d.v
push.d 1.7
conv.d.v
push.v self.y
push.v self.x
push.v self.specialcon
pushi.e 1
sub.i.v
pushi.e 10
mul.i.v
add.v.v
pushloc.v local.move_flame
add.v.v
pushi.e 8
sub.i.v
pushi.e 10
push.v self.flameframe
add.v.i
pushi.e 2153
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.flamealpha
pushi.e 2
conv.i.d
div.d.v
push.i 4235519
conv.i.v
pushi.e 0
conv.i.v
push.d 2.4
conv.d.v
push.d 1.7
conv.d.v
push.v self.y
push.v self.x
push.v self.specialcon
pushi.e 1
sub.i.v
pushi.e 10
mul.i.v
add.v.v
pushloc.v local.move_flame
add.v.v
pushi.e 8
sub.i.v
pushi.e 11
push.v self.flameframe
sub.v.i
pushi.e 2153
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [34]

:[33]
push.v self.flamealpha
pushi.e 255
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.specialcon
mul.v.v
push.d 0.8
add.d.v
push.v self.specialcontimer
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
conv.i.d
div.d.v
call.i abs(argc=1)
add.v.v
push.v self.image_xscale
neg.v
push.v self.specialcon
mul.v.v
push.v self.y
push.v self.x
push.v self.specialcon
pushi.e 1
sub.i.v
pushi.e 10
mul.i.v
add.v.v
pushloc.v local.move_flame
add.v.v
pushi.e 10
push.v self.flameframe
add.v.i
pushi.e 2153
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.flamealpha
pushi.e 2
conv.i.d
div.d.v
push.i 4235519
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.specialcon
mul.v.v
push.d 0.8
add.d.v
push.v self.image_xscale
neg.v
push.v self.specialcon
mul.v.v
push.v self.y
push.v self.x
push.v self.specialcon
pushi.e 1
sub.i.v
pushi.e 10
mul.i.v
add.v.v
pushloc.v local.move_flame
add.v.v
pushi.e 11
push.v self.flameframe
sub.v.i
pushi.e 2153
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[34]
push.v self.drawflip
pushi.e 0
cmp.i.v EQ
bf [62]

:[35]
push.v self.sprite_index
pushi.e 2112
cmp.i.v EQ
bf [37]

:[36]
push.v self.image_index
pushi.e 5
cmp.i.v EQ
b [38]

:[37]
push.e 0

:[38]
bf [40]

:[39]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.white_flash
pushi.e 100
conv.i.d
div.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 5
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.white_flash
pushi.e 20
sub.i.v
pop.v.v self.white_flash
b [61]

:[40]
push.v self.sprite_index
pushi.e 2129
cmp.i.v EQ
bf [42]

:[41]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.stomp_speed
pushi.e 75
mul.i.v
pushi.e 100
conv.i.d
div.d.v
pushi.e 255
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
b [61]

:[42]
push.v self.sprite_index
pushi.e 2098
cmp.i.v EQ
bf [45]

:[43]
push.v self.image_index
pushi.e 26
cmp.i.v EQ
bf [45]

:[44]
push.v self.final_sequence_red_state
pushi.e 0
cmp.i.v NEQ
b [46]

:[45]
push.e 0

:[46]
bt [48]

:[47]
push.v self.sprite_index
pushi.e 2132
cmp.i.v EQ
b [49]

:[48]
push.e 1

:[49]
bf [51]

:[50]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.final_sequence_red_alpha
pushi.e 255
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
b [61]

:[51]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.sprite_index
pushi.e 2106
cmp.i.v EQ
bf [53]

:[52]
push.v self.image_index
pushi.e 0
cmp.i.v EQ
b [54]

:[53]
push.e 0

:[54]
bf [56]

:[55]
push.d 0.3
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[56]
push.v self.sprite_index
pushi.e 2105
cmp.i.v EQ
bf [58]

:[57]
push.v self.image_index
pushi.e 0
cmp.i.v EQ
b [59]

:[58]
push.e 0

:[59]
bf [61]

:[60]
push.d 0.15
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[61]
b [77]

:[62]
push.v self.sprite_index
pushi.e 2112
cmp.i.v EQ
bf [64]

:[63]
push.v self.image_index
pushi.e 5
cmp.i.v EQ
b [65]

:[64]
push.e 0

:[65]
bf [67]

:[66]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
neg.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.white_flash
pushi.e 100
conv.i.d
div.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
neg.v
push.v self.y
push.v self.x
pushi.e 5
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.white_flash
pushi.e 20
sub.i.v
pop.v.v self.white_flash
b [77]

:[67]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
neg.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.sprite_index
pushi.e 2106
cmp.i.v EQ
bf [69]

:[68]
push.v self.image_index
pushi.e 0
cmp.i.v EQ
b [70]

:[69]
push.e 0

:[70]
bf [72]

:[71]
push.d 0.3
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
neg.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[72]
push.v self.sprite_index
pushi.e 2105
cmp.i.v EQ
bf [74]

:[73]
push.v self.image_index
pushi.e 0
cmp.i.v EQ
b [75]

:[74]
push.e 0

:[75]
bf [77]

:[76]
push.d 0.15
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
neg.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[77]
pushglb.v global.bmenuno
pushi.e 12
cmp.i.v EQ
bf [79]

:[78]
pushi.e -5
pushi.e 0
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 3
cmp.i.v EQ
b [80]

:[79]
push.e 0

:[80]
bf [86]

:[81]
push.v self.fsiner
push.e 1
add.i.v
pop.v.v self.fsiner
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
push.v self.drawflip
pushi.e 0
cmp.i.v EQ
bf [83]

:[82]
push.v self.fsiner
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
neg.v
push.d 0.4
mul.d.v
push.d 0.6
add.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[83]
push.v self.drawflip
pushi.e 1
cmp.i.v EQ
bf [85]

:[84]
push.v self.fsiner
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
neg.v
push.d 0.4
mul.d.v
push.d 0.6
add.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
pushi.e -2
conv.i.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[85]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v

:[86]
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v

:[end]