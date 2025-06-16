.localvar 2 arguments
.localvar 107 i 14831
.localvar 12288 inst 14832

:[0]
push.v self.draw_timer
push.e 1
add.i.v
pop.v.v self.draw_timer
push.v self.draw_timer
pushi.e 6
cmp.i.v LT
bf [2]

:[1]
exit.i

:[2]
push.v self.disable_surface
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
exit.i

:[4]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 9999
conv.i.v
pushi.e 9999
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2166
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.cyber_bg_alpha
push.d 0.3
cmp.d.v LT
bf [6]

:[5]
push.v self.cyber_bg_alpha
push.d 0.01
add.d.v
pop.v.v self.cyber_bg_alpha

:[6]
push.v self.hidebg
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
push.v self.cyber_bg_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_cameray(argc=0)
call.i gml_Script_camerax(argc=0)
pushi.e 0
conv.i.v
pushi.e 2210
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[8]
pushi.e 0
pop.v.i self.draw_janky_timer
push.v 789.x
pop.v.v self.o_boxingqueen_janky_x
push.v 789.y
pop.v.v self.o_boxingqueen_janky_y
push.v 789.sprite_index
pop.v.v self.o_boxingqueen_janky_sprite_index
push.v 789.image_index
pop.v.v self.o_boxingqueen_janky_image_index
push.v 777.x
pop.v.v self.o_boxingcontroller_janky_x
push.v 777.y
pop.v.v self.o_boxingcontroller_janky_y
push.v 777.sprite_index
pop.v.v self.o_boxingcontroller_sprite_index
push.v 777.image_index
pop.v.v self.o_boxingcontroller_image_index
push.v 777.disable_queen_blocking
pushi.e 0
cmp.i.v EQ
bf [12]

:[9]
push.v 789.health_count
push.v 789.health_count_max
push.d 0.5
mul.d.v
cmp.v.v LT
bf [12]

:[10]
push.v self.o_boxingqueen_janky_sprite_index
pushi.e 2134
cmp.i.v EQ
bf [12]

:[11]
push.v self.o_boxingqueen_janky_image_index
pushi.e 2
cmp.i.v LT
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 2149
pop.v.i self.o_boxingqueen_janky_sprite_index

:[15]
push.v 777.disable_queen_blocking
pushi.e 0
cmp.i.v EQ
bf [18]

:[16]
push.v 789.health_count
push.v 789.health_count_max
push.d 0.5
mul.d.v
cmp.v.v LT
bf [18]

:[17]
push.v self.o_boxingqueen_janky_sprite_index
pushi.e 2135
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
pushi.e 2149
pop.v.i self.o_boxingqueen_janky_sprite_index

:[21]
push.v self.pacifist_state
pushi.e 0
cmp.i.v LTE
bf [23]

:[22]
push.v self.introcon
pushi.e 1
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
push.v self.pacifist_timer
push.e 1
add.i.v
pop.v.v self.pacifist_timer

:[26]
push.v self.pacifist_timer
pushi.e 2970
cmp.i.v GTE
bf [28]

:[27]
push.v self.pacifist_state
pushi.e 0
cmp.i.v LTE
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
pushi.e 1
pop.v.i self.pacifist_state

:[31]
push.v self.surface
call.i surface_exists(argc=1)
conv.v.b
bf [189]

:[32]
push.v self.surface
call.i surface_set_target(argc=1)
popz.v
push.v self.hidebg
pushi.e 0
cmp.i.v EQ
bf [34]

:[33]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2210
conv.i.v
call.i gml_Script_draw_background(argc=3)
popz.v

:[34]
push.v self.hidebg
pushi.e 1
cmp.i.v EQ
bf [36]

:[35]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 1000
conv.i.v
pushi.e 1000
conv.i.v
pushi.e -1000
conv.i.v
pushi.e -1000
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[36]
push.v 789.sprite_index
pushi.e 2144
cmp.i.v EQ
bf [38]

:[37]
pushi.e 2144
pop.v.i self.o_boxingqueen_janky_sprite_index

:[38]
push.v 789.sprite_index
pushi.e 2150
cmp.i.v EQ
bf [40]

:[39]
pushi.e 2150
pop.v.i self.o_boxingqueen_janky_sprite_index

:[40]
pushi.e 808
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [71]

:[41]
push.v 789.drawflip
pushi.e 0
cmp.i.v EQ
bf [43]

:[42]
push.v 777.dead
pushi.e 2
cmp.i.v LT
b [44]

:[43]
push.e 0

:[44]
bf [46]

:[45]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.o_boxingqueen_janky_y
pushi.e 2
conv.i.d
div.d.v
pushi.e 4
sub.i.v
pushi.e 14
add.i.v
push.v self.o_boxingqueen_janky_x
pushi.e 2
conv.i.d
div.d.v
push.v self.o_boxingqueen_janky_image_index
push.v self.o_boxingqueen_janky_sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[46]
push.v 789.drawflip
pushi.e 1
cmp.i.v EQ
bf [48]

:[47]
push.v 777.dead
pushi.e 2
cmp.i.v LT
b [49]

:[48]
push.e 0

:[49]
bf [51]

:[50]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
push.v self.o_boxingqueen_janky_y
pushi.e 2
conv.i.d
div.d.v
pushi.e 4
sub.i.v
pushi.e 14
add.i.v
push.v self.o_boxingqueen_janky_x
pushi.e 2
conv.i.d
div.d.v
push.v self.o_boxingqueen_janky_image_index
push.v self.o_boxingqueen_janky_sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[51]
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
push.v 789.drawflip
pushi.e 0
cmp.i.v EQ
bf [53]

:[52]
pushi.e 817
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [54]

:[53]
push.e 0

:[54]
bf [56]

:[55]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.image_xscale
pushi.e 1
mul.i.v
push.v self.o_boxingqueen_janky_y
pushi.e 2
conv.i.d
div.d.v
pushi.e 4
sub.i.v
pushi.e 14
add.i.v
push.v self.o_boxingqueen_janky_x
pushi.e 2
conv.i.d
div.d.v
push.v self.o_boxingqueen_janky_image_index
push.v self.o_boxingqueen_janky_sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[56]
push.v 789.drawflip
pushi.e 1
cmp.i.v EQ
bf [58]

:[57]
pushi.e 817
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [59]

:[58]
push.e 0

:[59]
bf [61]

:[60]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.image_xscale
pushi.e -1
mul.i.v
push.v self.o_boxingqueen_janky_y
pushi.e 2
conv.i.d
div.d.v
pushi.e 4
sub.i.v
pushi.e 14
add.i.v
push.v self.o_boxingqueen_janky_x
pushi.e 2
conv.i.d
div.d.v
push.v self.o_boxingqueen_janky_image_index
push.v self.o_boxingqueen_janky_sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[61]
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
push.v 777.drawflip
pushi.e 0
cmp.i.v EQ
bf [63]

:[62]
push.v 777.dead
pushi.e 0
cmp.i.v EQ
b [64]

:[63]
push.e 0

:[64]
bf [66]

:[65]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.o_boxingcontroller_janky_y
pushi.e 2
conv.i.d
div.d.v
pushi.e 14
add.i.v
push.v self.o_boxingcontroller_janky_x
pushi.e 2
conv.i.d
div.d.v
push.v self.o_boxingcontroller_image_index
push.v self.o_boxingcontroller_sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[66]
push.v 777.drawflip
pushi.e 1
cmp.i.v EQ
bf [68]

:[67]
push.v 777.dead
pushi.e 0
cmp.i.v EQ
b [69]

:[68]
push.e 0

:[69]
bf [71]

:[70]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
push.v self.o_boxingcontroller_janky_y
pushi.e 2
conv.i.d
div.d.v
pushi.e 14
add.i.v
push.v self.o_boxingcontroller_janky_x
pushi.e 2
conv.i.d
div.d.v
push.v self.o_boxingcontroller_image_index
push.v self.o_boxingcontroller_sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[71]
pushi.e 0
pop.v.i local.i

:[72]
pushloc.v local.i
pushi.e 786
conv.i.v
call.i instance_number(argc=1)
cmp.v.v LT
bf [74]

:[73]
pushloc.v local.i
pushi.e 786
conv.i.v
call.i instance_find(argc=2)
pop.v.v local.inst
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushloc.v local.inst
pushi.e -9
push.v [stacktop]self.image_angle
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local.inst
pushi.e -9
push.v [stacktop]self.y
pushi.e 2
conv.i.d
div.d.v
pushloc.v local.inst
pushi.e -9
push.v [stacktop]self.x
pushi.e 2
conv.i.d
div.d.v
pushloc.v local.inst
pushi.e -9
push.v [stacktop]self.image_index
pushloc.v local.inst
pushi.e -9
push.v [stacktop]self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [72]

:[74]
pushi.e 0
pop.v.i local.i

:[75]
pushloc.v local.i
pushi.e 778
conv.i.v
call.i instance_number(argc=1)
cmp.v.v LT
bf [77]

:[76]
pushloc.v local.i
pushi.e 778
conv.i.v
call.i instance_find(argc=2)
pop.v.v local.inst
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushloc.v local.inst
pushi.e -9
push.v [stacktop]self.image_angle
push.d 0.5
conv.d.v
push.d 0.5
conv.d.v
pushloc.v local.inst
pushi.e -9
push.v [stacktop]self.y
pushi.e 2
conv.i.d
div.d.v
pushloc.v local.inst
pushi.e -9
push.v [stacktop]self.x
pushi.e 2
conv.i.d
div.d.v
pushloc.v local.inst
pushi.e -9
push.v [stacktop]self.image_index
pushi.e 2184
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [75]

:[77]
pushi.e 0
pop.v.i local.i

:[78]
pushloc.v local.i
pushi.e 788
conv.i.v
call.i instance_number(argc=1)
cmp.v.v LT
bf [87]

:[79]
pushloc.v local.i
pushi.e 788
conv.i.v
call.i instance_find(argc=2)
pop.v.v local.inst
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushloc.v local.inst
pushi.e -9
push.v [stacktop]self.image_angle
push.d 0.5
conv.d.v
push.d 0.5
conv.d.v
pushloc.v local.inst
pushi.e -9
push.v [stacktop]self.y
pushi.e 2
conv.i.d
div.d.v
pushloc.v local.inst
pushi.e -9
push.v [stacktop]self.x
pushi.e 2
conv.i.d
div.d.v
pushi.e 0
conv.i.v
pushi.e 2184
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushloc.v local.inst
pushi.e -9
push.v [stacktop]self.reticletimer
pushi.e 7
conv.i.d
div.d.v
push.i 16777215
conv.i.v
push.v self.image_angle
pushi.e -1
mul.i.v
push.d 1.5
conv.d.v
push.d 1.5
conv.d.v
pushloc.v local.inst
pushi.e -9
push.v [stacktop]self.y
pushi.e 2
conv.i.d
div.d.v
pushloc.v local.inst
pushi.e -9
push.v [stacktop]self.x
pushi.e 2
conv.i.d
div.d.v
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 2208
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.text_timer
push.e 1
add.i.v
pop.v.v self.text_timer
push.v self.text_timer
pushi.e 0
cmp.i.v GTE
bf [81]

:[80]
push.v self.text_timer
pushi.e 20
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
b [82]

:[81]
push.e 0

:[82]
bf [84]

:[83]
pushi.e 1
conv.i.v
push.i 65280
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
pushloc.v local.inst
pushi.e -9
push.v [stacktop]self.y
pushi.e 2
conv.i.d
div.d.v
pushloc.v local.inst
pushi.e -9
push.v [stacktop]self.x
pushi.e 2
conv.i.d
div.d.v
pushi.e 50
add.i.v
pushi.e 0
conv.i.v
pushi.e 2187
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[84]
push.v self.text_timer
pushi.e 24
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [86]

:[85]
pushi.e 0
pop.v.i self.text_timer

:[86]
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 100
conv.i.v
pushi.e 100
conv.i.v
push.s "o_boxing_wireframe_slash_Draw_0_gml_85_0"@27612
conv.s.v
push.s "HIT IT"@27613
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushloc.v local.inst
pushi.e -9
push.v [stacktop]self.y
pushi.e 2
conv.i.d
div.d.v
pushi.e 8
sub.i.v
pushloc.v local.inst
pushi.e -9
push.v [stacktop]self.x
pushi.e 2
conv.i.d
div.d.v
pushi.e 70
add.i.v
call.i draw_text_ext(argc=5)
popz.v
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 100
conv.i.v
pushi.e 100
conv.i.v
push.s "o_boxing_wireframe_slash_Draw_0_gml_87_0"@27614
conv.s.v
push.s "HIT IT"@27613
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushloc.v local.inst
pushi.e -9
push.v [stacktop]self.y
pushi.e 2
conv.i.d
div.d.v
pushi.e 8
sub.i.v
pushloc.v local.inst
pushi.e -9
push.v [stacktop]self.x
pushi.e 2
conv.i.d
div.d.v
pushi.e 70
add.i.v
call.i draw_text_ext(argc=5)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [78]

:[87]
pushi.e 0
pop.v.i local.i

:[88]
pushloc.v local.i
pushi.e 828
conv.i.v
call.i instance_number(argc=1)
cmp.v.v LT
bf [90]

:[89]
pushloc.v local.i
pushi.e 828
conv.i.v
call.i instance_find(argc=2)
pop.v.v local.inst
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushloc.v local.inst
pushi.e -9
push.v [stacktop]self.image_angle
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local.inst
pushi.e -9
push.v [stacktop]self.y
pushi.e 2
conv.i.d
div.d.v
pushloc.v local.inst
pushi.e -9
push.v [stacktop]self.x
pushi.e 2
conv.i.d
div.d.v
pushi.e 0
conv.i.v
pushi.e 2186
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [88]

:[90]
pushi.e 807
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [92]

:[91]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v 807.image_yscale
push.v 807.image_xscale
push.v 807.y
pushi.e 2
conv.i.d
div.d.v
push.v 807.x
pushi.e 2
conv.i.d
div.d.v
push.v 807.image_index
push.v 807.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[92]
pushi.e 809
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [94]

:[93]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v 809.image_yscale
push.v 809.image_xscale
push.v 809.y
pushi.e 2
conv.i.d
div.d.v
push.v 809.x
pushi.e 2
conv.i.d
div.d.v
push.v 809.image_index
push.v 809.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[94]
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.text
push.v 777.default_string
cmp.v.v NEQ
bf [97]

:[95]
push.v self.text
push.s ""@157
cmp.s.v NEQ
bf [97]

:[96]
push.v self.introcon
pushi.e 1
cmp.i.v EQ
b [98]

:[97]
push.e 0

:[98]
bt [103]

:[99]
push.v self.down_arrow_con
pushi.e 1
cmp.i.v EQ
bf [101]

:[100]
push.v self.introcon
pushi.e 1
cmp.i.v EQ
b [102]

:[101]
push.e 0

:[102]
b [104]

:[103]
push.e 1

:[104]
bf [153]

:[105]
push.v self.text_timer
push.e 1
add.i.v
pop.v.v self.text_timer
push.v self.text_reset_timer
pushi.e 0
cmp.i.v GT
bf [107]

:[106]
push.v self.text_reset_timer
push.e 1
add.i.v
pop.v.v self.text_reset_timer

:[107]
push.v self.text_reset_timer
pushi.e 140
cmp.i.v GT
bf [109]

:[108]
push.s ""@157
pop.v.s self.text
pushi.e 0
pop.v.i self.text_reset_timer

:[109]
push.v 789.health_count
push.v 789.health_count_max
cmp.v.v NEQ
bf [111]

:[110]
push.v 777.dead
pushi.e 0
cmp.i.v EQ
b [112]

:[111]
push.e 0

:[112]
bf [145]

:[113]
push.v self.text
push.v 777.duck_string
cmp.v.v EQ
bt [115]

:[114]
push.v self.down_arrow_con
pushi.e 1
cmp.i.v EQ
b [116]

:[115]
push.e 1

:[116]
bf [136]

:[117]
push.v self.text_timer
pushi.e 25
cmp.i.v LT
bf [119]

:[118]
pushi.e 1
pop.v.i self.down_arrow_con

:[119]
push.v self.text_timer
pushi.e 25
cmp.i.v GTE
bf [121]

:[120]
push.v self.text_timer
pushi.e 31
cmp.i.v LT
b [122]

:[121]
push.e 0

:[122]
bt [131]

:[123]
push.v self.text_timer
pushi.e 36
cmp.i.v GTE
bf [125]

:[124]
push.v self.text_timer
pushi.e 42
cmp.i.v LT
b [126]

:[125]
push.e 0

:[126]
bt [131]

:[127]
push.v self.text_timer
pushi.e 47
cmp.i.v GTE
bf [129]

:[128]
push.v self.text_timer
pushi.e 53
cmp.i.v LT
b [130]

:[129]
push.e 0

:[130]
b [132]

:[131]
push.e 1

:[132]
bf [134]

:[133]
pushi.e 1
conv.i.v
push.i 65280
conv.i.v
pushi.e 90
conv.i.v
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
push.v 777.basey
pushi.e 2
conv.i.d
div.d.v
pushi.e 32
sub.i.v
push.v 777.basex
pushi.e 2
conv.i.d
div.d.v
pushi.e 64
sub.i.v
pushi.e 0
conv.i.v
pushi.e 2187
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 65280
conv.i.v
pushi.e 90
conv.i.v
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
push.v 777.basey
pushi.e 2
conv.i.d
div.d.v
pushi.e 32
sub.i.v
push.v 777.basex
pushi.e 2
conv.i.d
div.d.v
pushi.e 50
add.i.v
pushi.e 0
conv.i.v
pushi.e 2187
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[134]
push.v self.text_timer
pushi.e 53
cmp.i.v GTE
bf [136]

:[135]
pushi.e 0
pop.v.i self.down_arrow_con

:[136]
push.v self.text
push.v 777.dodge_string
cmp.v.v EQ
bf [144]

:[137]
push.v self.text_timer
pushi.e 0
cmp.i.v GTE
bf [139]

:[138]
push.v self.text_timer
pushi.e 20
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
b [140]

:[139]
push.e 0

:[140]
bf [142]

:[141]
pushi.e 1
conv.i.v
push.i 65280
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
push.v 777.basey
pushi.e 2
conv.i.d
div.d.v
pushi.e 32
sub.i.v
push.v 777.basex
pushi.e 2
conv.i.d
div.d.v
pushi.e 64
sub.i.v
pushi.e 0
conv.i.v
pushi.e 2187
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 65280
conv.i.v
pushi.e 180
conv.i.v
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
push.v 777.basey
pushi.e 2
conv.i.d
div.d.v
pushi.e 32
sub.i.v
push.v 777.basex
pushi.e 2
conv.i.d
div.d.v
pushi.e 50
add.i.v
pushi.e 0
conv.i.v
pushi.e 2187
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[142]
push.v self.text_timer
pushi.e 24
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [144]

:[143]
pushi.e 0
pop.v.i self.text_timer

:[144]
b [153]

:[145]
push.v self.pacifist_state
pushi.e 1
cmp.i.v LT
bf [148]

:[146]
push.v 777.dead
pushi.e 0
cmp.i.v EQ
bf [148]

:[147]
push.v self.introtalk
pushi.e 0
cmp.i.v EQ
b [149]

:[148]
push.e 0

:[149]
bf [153]

:[150]
push.s "o_boxing_wireframe_slash_Draw_0_gml_145_0"@27615
conv.s.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
pushi.e 4
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
push.s "Press ~1&Or ~2 If&You Dare"@27616
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=5)
popz.v
pushi.e 50
pop.v.i global.typer
pushi.e 7
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 388
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 428
add.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
pop.v.v self.queenbubble
pushi.e 0
pop.v.i self.talktimer
pushi.e 1
pop.v.b self.talking
push.v self.queenbubble
pushi.e -9
pushenv [152]

:[151]
push.v 936.qu_actor
pushi.e -9
push.v [stacktop]self.depth
pushi.e 1
sub.i.v
pop.v.v self.depth
pushi.e 1
pop.v.i self.auto_length
pushi.e -1
pop.v.i self.side

:[152]
popenv [151]
pushi.e 1
pop.v.i self.talktype
pushi.e 1
pop.v.i self.introtalk
push.i 68097
setowner.e
pushi.e 240
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm

:[153]
push.v self.o_boxingqueen_janky_sprite_index
pushi.e 2149
cmp.i.v EQ
bf [156]

:[154]
push.v 777.dead
pushi.e 0
cmp.i.v EQ
bf [156]

:[155]
push.v 777.arcade_times_blocked
pushi.e 2
cmp.i.v GT
b [157]

:[156]
push.e 0

:[157]
bt [164]

:[158]
push.v self.o_boxingqueen_janky_sprite_index
pushi.e 2148
cmp.i.v EQ
bf [161]

:[159]
push.v 777.dead
pushi.e 0
cmp.i.v EQ
bf [161]

:[160]
push.v 777.arcade_times_blocked
pushi.e 2
cmp.i.v GT
b [162]

:[161]
push.e 0

:[162]
bt [164]

:[163]
push.v self.zx_timer
pushi.e 0
cmp.i.v GT
b [165]

:[164]
push.e 1

:[165]
bf [188]

:[166]
push.v self.zx_state
pushi.e 0
cmp.i.v EQ
bf [177]

:[167]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v 789.drawflip
pushi.e 0
cmp.i.v EQ
bf [169]

:[168]
pushi.e 100
conv.i.v
pushi.e 100
conv.i.v
push.s "X"@5605
conv.s.v
push.v self.o_boxingqueen_janky_y
pushi.e 2
conv.i.d
div.d.v
pushi.e 100
sub.i.v
push.v self.o_boxingqueen_janky_x
pushi.e 2
conv.i.d
div.d.v
pushi.e 38
add.i.v
call.i draw_text_ext(argc=5)
popz.v

:[169]
push.v 789.drawflip
pushi.e 1
cmp.i.v EQ
bf [171]

:[170]
pushi.e 100
conv.i.v
pushi.e 100
conv.i.v
push.s "Z"@9495
conv.s.v
push.v self.o_boxingqueen_janky_y
pushi.e 2
conv.i.d
div.d.v
pushi.e 100
sub.i.v
push.v self.o_boxingqueen_janky_x
pushi.e 2
conv.i.d
div.d.v
pushi.e 39
sub.i.v
call.i draw_text_ext(argc=5)
popz.v

:[171]
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v 789.drawflip
pushi.e 0
cmp.i.v EQ
bf [173]

:[172]
pushi.e 100
conv.i.v
pushi.e 100
conv.i.v
push.s "X"@5605
conv.s.v
push.v self.o_boxingqueen_janky_y
pushi.e 2
conv.i.d
div.d.v
pushi.e 100
sub.i.v
push.v self.o_boxingqueen_janky_x
pushi.e 2
conv.i.d
div.d.v
pushi.e 38
add.i.v
call.i draw_text_ext(argc=5)
popz.v
pushi.e 1
conv.b.v
push.i 65280
conv.i.v
push.i 65280
conv.i.v
push.i 65280
conv.i.v
push.i 65280
conv.i.v
push.v self.o_boxingqueen_janky_y
pushi.e 2
conv.i.d
div.d.v
pushi.e 100
sub.i.v
pushi.e 16
add.i.v
push.v self.o_boxingqueen_janky_x
pushi.e 2
conv.i.d
div.d.v
pushi.e 42
add.i.v
pushi.e 4
add.i.v
push.v self.o_boxingqueen_janky_y
pushi.e 2
conv.i.d
div.d.v
pushi.e 100
sub.i.v
pushi.e 1
sub.i.v
push.v self.o_boxingqueen_janky_x
pushi.e 2
conv.i.d
div.d.v
pushi.e 42
add.i.v
pushi.e 10
sub.i.v
call.i draw_rectangle_color(argc=9)
popz.v

:[173]
push.v 789.drawflip
pushi.e 1
cmp.i.v EQ
bf [175]

:[174]
pushi.e 100
conv.i.v
pushi.e 100
conv.i.v
push.s "Z"@9495
conv.s.v
push.v self.o_boxingqueen_janky_y
pushi.e 2
conv.i.d
div.d.v
pushi.e 100
sub.i.v
push.v self.o_boxingqueen_janky_x
pushi.e 2
conv.i.d
div.d.v
pushi.e 39
sub.i.v
call.i draw_text_ext(argc=5)
popz.v
pushi.e 1
conv.b.v
push.i 65280
conv.i.v
push.i 65280
conv.i.v
push.i 65280
conv.i.v
push.i 65280
conv.i.v
push.v self.o_boxingqueen_janky_y
pushi.e 2
conv.i.d
div.d.v
pushi.e 100
sub.i.v
pushi.e 16
add.i.v
push.v self.o_boxingqueen_janky_x
pushi.e 2
conv.i.d
div.d.v
pushi.e 42
sub.i.v
pushi.e 10
add.i.v
push.v self.o_boxingqueen_janky_y
pushi.e 2
conv.i.d
div.d.v
pushi.e 100
sub.i.v
pushi.e 1
sub.i.v
push.v self.o_boxingqueen_janky_x
pushi.e 2
conv.i.d
div.d.v
pushi.e 42
sub.i.v
pushi.e 4
sub.i.v
call.i draw_rectangle_color(argc=9)
popz.v

:[175]
push.v self.zx_timer
push.e 1
add.i.v
pop.v.v self.zx_timer
push.v self.zx_timer
pushi.e 12
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [177]

:[176]
pushi.e 0
pop.v.i self.zx_timer
pushi.e 1
pop.v.i self.zx_state

:[177]
push.v self.zx_state
pushi.e 1
cmp.i.v EQ
bf [188]

:[178]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v 789.drawflip
pushi.e 0
cmp.i.v EQ
bf [180]

:[179]
pushi.e 100
conv.i.v
pushi.e 100
conv.i.v
push.s "X"@5605
conv.s.v
push.v self.o_boxingqueen_janky_y
pushi.e 2
conv.i.d
div.d.v
pushi.e 100
sub.i.v
push.v self.o_boxingqueen_janky_x
pushi.e 2
conv.i.d
div.d.v
pushi.e 38
add.i.v
call.i draw_text_ext(argc=5)
popz.v

:[180]
push.v 789.drawflip
pushi.e 1
cmp.i.v EQ
bf [182]

:[181]
pushi.e 100
conv.i.v
pushi.e 100
conv.i.v
push.s "Z"@9495
conv.s.v
push.v self.o_boxingqueen_janky_y
pushi.e 2
conv.i.d
div.d.v
pushi.e 100
sub.i.v
push.v self.o_boxingqueen_janky_x
pushi.e 2
conv.i.d
div.d.v
pushi.e 39
sub.i.v
call.i draw_text_ext(argc=5)
popz.v

:[182]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v 789.drawflip
pushi.e 0
cmp.i.v EQ
bf [184]

:[183]
pushi.e 100
conv.i.v
pushi.e 100
conv.i.v
push.s "X"@5605
conv.s.v
push.v self.o_boxingqueen_janky_y
pushi.e 2
conv.i.d
div.d.v
pushi.e 100
sub.i.v
push.v self.o_boxingqueen_janky_x
pushi.e 2
conv.i.d
div.d.v
pushi.e 38
add.i.v
call.i draw_text_ext(argc=5)
popz.v
pushi.e 1
conv.b.v
push.i 16777215
conv.i.v
push.i 16777215
conv.i.v
push.i 16777215
conv.i.v
push.i 16777215
conv.i.v
push.v self.o_boxingqueen_janky_y
pushi.e 2
conv.i.d
div.d.v
pushi.e 100
sub.i.v
pushi.e 16
add.i.v
push.v self.o_boxingqueen_janky_x
pushi.e 2
conv.i.d
div.d.v
pushi.e 42
add.i.v
pushi.e 4
add.i.v
push.v self.o_boxingqueen_janky_y
pushi.e 2
conv.i.d
div.d.v
pushi.e 100
sub.i.v
pushi.e 1
sub.i.v
push.v self.o_boxingqueen_janky_x
pushi.e 2
conv.i.d
div.d.v
pushi.e 42
add.i.v
pushi.e 10
sub.i.v
call.i draw_rectangle_color(argc=9)
popz.v

:[184]
push.v 789.drawflip
pushi.e 1
cmp.i.v EQ
bf [186]

:[185]
pushi.e 100
conv.i.v
pushi.e 100
conv.i.v
push.s "Z"@9495
conv.s.v
push.v self.o_boxingqueen_janky_y
pushi.e 2
conv.i.d
div.d.v
pushi.e 100
sub.i.v
push.v self.o_boxingqueen_janky_x
pushi.e 2
conv.i.d
div.d.v
pushi.e 39
sub.i.v
call.i draw_text_ext(argc=5)
popz.v
pushi.e 1
conv.b.v
push.i 16777215
conv.i.v
push.i 16777215
conv.i.v
push.i 16777215
conv.i.v
push.i 16777215
conv.i.v
push.v self.o_boxingqueen_janky_y
pushi.e 2
conv.i.d
div.d.v
pushi.e 100
sub.i.v
pushi.e 16
add.i.v
push.v self.o_boxingqueen_janky_x
pushi.e 2
conv.i.d
div.d.v
pushi.e 42
sub.i.v
pushi.e 10
add.i.v
push.v self.o_boxingqueen_janky_y
pushi.e 2
conv.i.d
div.d.v
pushi.e 100
sub.i.v
pushi.e 1
sub.i.v
push.v self.o_boxingqueen_janky_x
pushi.e 2
conv.i.d
div.d.v
pushi.e 42
sub.i.v
pushi.e 4
sub.i.v
call.i draw_rectangle_color(argc=9)
popz.v

:[186]
push.v self.zx_timer
push.e 1
add.i.v
pop.v.v self.zx_timer
push.v self.zx_timer
pushi.e 12
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [188]

:[187]
pushi.e 0
pop.v.i self.zx_timer
pushi.e 0
pop.v.i self.zx_state

:[188]
call.i surface_reset_target(argc=0)
popz.v
pushi.e 120
conv.i.v
pushi.e 160
conv.i.v
push.v self.surface
call.i draw_surface(argc=3)
popz.v
b [190]

:[189]
pushi.e 240
conv.i.v
pushi.e 320
conv.i.v
call.i surface_create(argc=2)
pop.v.v self.surface
push.v self.surface
call.i surface_set_target(argc=1)
popz.v
call.i surface_reset_target(argc=0)
popz.v

:[190]
push.v 777.dead
pushi.e 0
cmp.i.v EQ
bf [193]

:[191]
push.v 842.sub_healthbar_count
pushi.e -1
cmp.i.v NEQ
bf [193]

:[192]
push.v self.introcon
pushi.e 1
cmp.i.v EQ
b [194]

:[193]
push.e 0

:[194]
bf [204]

:[195]
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 100
conv.i.v
pushi.e 100
conv.i.v
pushi.e 2970
push.v self.pacifist_timer
sub.v.i
pushi.e 30
conv.i.d
div.d.v
call.i ceil(argc=1)
pushi.e 112
conv.i.v
pushi.e 318
conv.i.v
call.i draw_text_ext_transformed(argc=8)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 91
conv.i.v
pushi.e 280
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2190
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v 789.health_count
pushi.e 0
cmp.i.v GT
bf [197]

:[196]
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 140
conv.i.v
pushi.e 460
conv.i.v
pushi.e 130
conv.i.v
pushi.e 460
push.v 789.health_count
pushi.e 10
conv.i.d
div.d.v
sub.v.i
call.i draw_rectangle(argc=5)
popz.v
pushi.e 2
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 147
conv.i.v
pushi.e 377
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2192
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[197]
push.v 777.health_count
pushi.e 0
cmp.i.v GT
bf [199]

:[198]
push.i 16776960
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 140
conv.i.v
pushi.e 180
push.v 777.health_count
pushi.e 5
conv.i.d
div.d.v
add.v.i
pushi.e 130
conv.i.v
pushi.e 180
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 147
conv.i.v
pushi.e 180
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2191
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[199]
push.v self.pacifist_state
pushi.e 1
cmp.i.v EQ
bf [204]

:[200]
push.v self.draw_draw_timer
pushi.e 20
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
bf [202]

:[201]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 230
conv.i.v
pushi.e 294
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2196
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[202]
push.v self.draw_draw_timer
push.e 1
add.i.v
pop.v.v self.draw_draw_timer
push.v self.draw_draw_timer
pushi.e 40
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [204]

:[203]
pushi.e 0
pop.v.i self.draw_draw_timer

:[204]
push.v 777.dead
pushi.e 3
cmp.i.v EQ
bf [207]

:[205]
pushi.e 240
conv.i.v
pushi.e 320
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2189
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.lose_timer
push.e 1
add.i.v
pop.v.v self.lose_timer
push.v self.lose_timer
pushi.e 120
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [207]

:[206]
pushi.e 4
pop.v.i 777.dead

:[207]
push.v 777.dead
pushi.e 4
cmp.i.v EQ
bt [209]

:[208]
push.v 777.dead
pushi.e 5
cmp.i.v EQ
b [210]

:[209]
push.e 1

:[210]
bf [257]

:[211]
push.v self.draw_selection_buffer_timer
push.e 1
add.i.v
pop.v.v self.draw_selection_buffer_timer
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 220
conv.i.v
pushi.e 279
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2195
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_valign(argc=1)
popz.v
push.v 777.dead
pushi.e 4
cmp.i.v EQ
bf [213]

:[212]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 260
conv.i.v
pushi.e 190
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2194
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [214]

:[213]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 260
conv.i.v
pushi.e 190
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2194
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[214]
push.v 777.dead
pushi.e 5
cmp.i.v EQ
bf [216]

:[215]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 260
conv.i.v
pushi.e 370
conv.i.v
pushi.e 1
conv.i.v
push.s "spr_acrade_retire"@12032
conv.s.v
call.i gml_Script_scr_84_get_sprite(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v
b [217]

:[216]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 260
conv.i.v
pushi.e 370
conv.i.v
pushi.e 0
conv.i.v
push.s "spr_acrade_retire"@12032
conv.s.v
call.i gml_Script_scr_84_get_sprite(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v

:[217]
call.i gml_Script_right_p(argc=0)
conv.v.b
bf [219]

:[218]
push.v self.draw_selection_buffer_timer
pushi.e 24
cmp.i.v GT
b [220]

:[219]
push.e 0

:[220]
bf [222]

:[221]
pushi.e 5
pop.v.i 777.dead

:[222]
call.i gml_Script_left_p(argc=0)
conv.v.b
bf [224]

:[223]
push.v self.draw_selection_buffer_timer
pushi.e 24
cmp.i.v GT
b [225]

:[224]
push.e 0

:[225]
bf [227]

:[226]
pushi.e 4
pop.v.i 777.dead

:[227]
push.v 777.dead
pushi.e 4
cmp.i.v EQ
bf [229]

:[228]
push.v self.draw_selection_buffer_timer
pushi.e 24
cmp.i.v GT
b [230]

:[229]
push.e 0

:[230]
bf [245]

:[231]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bt [233]

:[232]
call.i gml_Script_button2_p(argc=0)
conv.v.b
b [234]

:[233]
push.e 1

:[234]
bf [245]

:[235]
pushi.e 500
pop.v.i 777.health_count
pushi.e 0
pop.v.i 777.dead
pushi.e 1
pop.v.i 777.cancontrol
pushi.e 5
pop.v.i 777.arcaderesettimer
pushi.e 1
pop.v.i 777.failed_kick_tutorial_counter
pushi.e 0
pop.v.i self.draw_selection_buffer_timer
pushi.e 0
pop.v.i self.pacifist_state
pushi.e 0
pop.v.i self.pacifist_timer
pushi.e 0
pop.v.i self.lose_timer
pushi.e 789
pushenv [239]

:[236]
pushi.e 50
pop.v.i self.attackpattern
pushi.e 0
pop.v.i self.arcadebaseballused
pushi.e 1000
pop.v.i self.health_count
pushi.e 0
pop.v.i self.phase_transition
pushi.e 0
pop.v.i self.attackcount
pushi.e 0
pop.v.i self.attackcountmax
pushi.e 1
pop.v.i self.useattacklist
pushi.e 3
pop.v.i self.dodgehintcount
pushi.e 3
pop.v.i self.duckhintcount
pushi.e 30
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 30
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 30
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 30
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 777
pushenv [238]

:[237]
pushi.e 270
pop.v.i self.boxingtimer

:[238]
popenv [237]

:[239]
popenv [236]
push.v self.losscount
push.e 1
add.i.v
pop.v.v self.losscount
push.v self.losscount
pushi.e 1
cmp.i.v GT
bf [245]

:[240]
pushi.e 64
pushenv [242]

:[241]
call.i instance_destroy(argc=0)
popz.v

:[242]
popenv [241]
pushi.e 0
pop.v.i 938.punch_r_timer
pushi.e 5
pop.v.i 938.dodge_l_timer
push.s "o_boxing_wireframe_slash_Draw_0_gml_316_0"@27617
conv.s.v
push.s "Shut up, that was&just a warm up!"@27618
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 50
pop.v.i global.typer
pushi.e 10
conv.i.v
push.v 936.su_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 20
add.i.v
push.v 936.su_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e 0
add.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
pop.v.v self.susieballoon1
pushi.e 0
pop.v.i self.talktimer
pushi.e 1
pop.v.b self.talking
push.v self.susieballoon1
pushi.e -9
pushenv [244]

:[243]
push.v 936.su_actor
pushi.e -9
push.v [stacktop]self.depth
pushi.e 1
sub.i.v
pop.v.v self.depth

:[244]
popenv [243]
pushi.e 0
pop.v.i self.talktype

:[245]
push.v 777.dead
pushi.e 5
cmp.i.v EQ
bf [248]

:[246]
pushi.e 870
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [248]

:[247]
push.v self.draw_selection_buffer_timer
pushi.e 24
cmp.i.v GT
b [249]

:[248]
push.e 0

:[249]
bf [257]

:[250]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bt [252]

:[251]
call.i gml_Script_button2_p(argc=0)
conv.v.b
b [253]

:[252]
push.e 1

:[253]
bf [257]

:[254]
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i 938.punch_r_timer
pushi.e 5
pop.v.i 938.dodge_l_timer
push.s "o_boxing_wireframe_slash_Draw_0_gml_334_0"@27620
conv.s.v
push.s "Shut up! That was&just practice!"@27621
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 50
pop.v.i global.typer
pushi.e 10
conv.i.v
push.v 936.su_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 20
add.i.v
push.v 936.su_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e 0
add.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
pop.v.v self.susieballoon2
pushi.e 0
pop.v.i self.talktimer
pushi.e 1
pop.v.b self.talking
push.v self.susieballoon2
pushi.e -9
pushenv [256]

:[255]
push.v 936.su_actor
pushi.e -9
push.v [stacktop]self.depth
pushi.e 1
sub.i.v
pop.v.v self.depth

:[256]
popenv [255]
pushi.e 0
pop.v.i self.talktype

:[257]
push.v self.pacifist_state
pushi.e 0
cmp.i.v GT
bf [273]

:[258]
push.v self.draw_selection_buffer_timer
push.e 1
add.i.v
pop.v.v self.draw_selection_buffer_timer
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [260]

:[259]
push.v self.draw_selection_buffer_timer
pushi.e 24
cmp.i.v GT
b [261]

:[260]
push.e 0

:[261]
bt [266]

:[262]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [264]

:[263]
push.v self.draw_selection_buffer_timer
pushi.e 24
cmp.i.v GT
b [265]

:[264]
push.e 0

:[265]
b [267]

:[266]
push.e 1

:[267]
bf [273]

:[268]
pushi.e 500
pop.v.i 777.health_count
pushi.e 0
pop.v.i 777.dead
pushi.e 1
pop.v.i 777.cancontrol
pushi.e 1
pop.v.i 777.failed_kick_tutorial_counter
pushi.e 0
pop.v.i self.draw_selection_buffer_timer
pushi.e 0
pop.v.i self.pacifist_state
pushi.e 0
pop.v.i self.pacifist_timer
pushi.e 0
pop.v.i self.lose_timer
pushi.e 789
pushenv [272]

:[269]
pushi.e 50
pop.v.i self.attackpattern
pushi.e 0
pop.v.i self.arcadebaseballused
pushi.e 1000
pop.v.i self.health_count
pushi.e 0
pop.v.i self.phase_transition
pushi.e 0
pop.v.i self.attackcount
pushi.e 0
pop.v.i self.attackcountmax
pushi.e 1
pop.v.i self.useattacklist
pushi.e 3
pop.v.i self.dodgehintcount
pushi.e 3
pop.v.i self.duckhintcount
pushi.e 30
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 30
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 30
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 30
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 777
pushenv [271]

:[270]
pushi.e 270
pop.v.i self.boxingtimer

:[271]
popenv [270]

:[272]
popenv [269]

:[273]
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.introcon
pushi.e 0
cmp.i.v EQ
bf [end]

:[274]
push.v self.introtimer
push.e 1
add.i.v
pop.v.v self.introtimer
push.v self.introtimer
pushi.e 20
cmp.i.v GTE
bf [276]

:[275]
push.v self.introtimer
pushi.e 50
cmp.i.v LT
b [277]

:[276]
push.e 0

:[277]
bf [279]

:[278]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 114
conv.i.v
pushi.e 256
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3296
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[279]
push.v self.introtimer
pushi.e 72
cmp.i.v GTE
bf [281]

:[280]
push.v self.introtimer
pushi.e 102
cmp.i.v LT
b [282]

:[281]
push.e 0

:[282]
bf [284]

:[283]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 114
conv.i.v
pushi.e 266
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3348
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[284]
push.v self.introtimer
pushi.e 20
cmp.i.v EQ
bf [286]

:[285]
pushi.e 17
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[286]
push.v self.introtimer
pushi.e 72
cmp.i.v EQ
bf [288]

:[287]
pushi.e 12
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[288]
push.v self.introtimer
pushi.e 112
cmp.i.v EQ
bf [end]

:[289]
pushi.e 1
pop.v.i self.introcon

:[end]