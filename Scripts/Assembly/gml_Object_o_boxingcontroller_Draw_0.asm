.localvar 2 arguments
.localvar 27226 sword_slash 14297

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
push.v self.jumping
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.basey
push.v self.y
sub.v.v
pushi.e 8
conv.i.d
div.d.v
pop.v.v self.ht
pushi.e 0
conv.b.v
push.v self.basey
push.v self.ht
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.basex
pushi.e 38
add.i.v
push.v self.ht
pushi.e 2
mul.i.v
add.v.v
push.v self.basey
pushi.e 40
sub.i.v
push.v self.ht
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.basex
pushi.e 62
sub.i.v
push.v self.ht
pushi.e 2
mul.i.v
sub.v.v
call.i draw_ellipse(argc=5)
popz.v

:[7]
pushi.e 0
pop.v.i local.sword_slash
push.v self.image_index
pushi.e 12
cmp.i.v EQ
bf [9]

:[8]
push.v self.swordactive
pushi.e 1
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bt [19]

:[11]
push.v self.image_index
pushi.e 13
cmp.i.v EQ
bf [13]

:[12]
push.v self.swordactive
pushi.e 1
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bt [19]

:[15]
push.v self.image_index
pushi.e 14
cmp.i.v EQ
bf [17]

:[16]
push.v self.swordactive
pushi.e 1
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
b [20]

:[19]
push.e 1

:[20]
bf [22]

:[21]
pushi.e 1
pop.v.i local.sword_slash

:[22]
push.v self.wireframe_boxing
pushi.e 0
cmp.i.v EQ
bf [24]

:[23]
push.v self.dead
pushi.e 0
cmp.i.v GT
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
pushi.e 0
pop.v.i self.drawflip
pushi.e 7
pop.v.i self.image_index

:[27]
push.v self.drawflip
pushi.e 0
cmp.i.v EQ
bf [78]

:[28]
push.v self.image_alpha
push.v self.image_blend
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
pushloc.v local.sword_slash
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
push.v self.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [31]

:[30]
push.e 0

:[31]
bf [33]

:[32]
pushi.e 0
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
push.i 16777215
conv.i.v
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
push.v self.headsprite
call.i gml_Script_draw_sprite_ext_glow(argc=10)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
push.i 16777215
conv.i.v
push.v self.image_alpha
push.v self.headcolor
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.headsprite
call.i gml_Script_draw_sprite_ext_glow(argc=10)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v

:[33]
push.v self.laserpunchfadetimer
pushi.e 0
cmp.i.v GT
bf [40]

:[34]
push.v self.laserpunchfadetimer
push.e 1
sub.i.v
pop.v.v self.laserpunchfadetimer
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
pushloc.v local.sword_slash
pushi.e 0
cmp.i.v EQ
bf [36]

:[35]
push.v self.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [37]

:[36]
push.e 0

:[37]
bf [39]

:[38]
push.v self.laserpunchfadetimer
pushi.e 10
conv.i.d
div.d.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.headsprite
call.i draw_sprite_ext(argc=9)
popz.v

:[39]
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

:[40]
push.v self.color_fade_alpha
pushi.e 0
cmp.i.v GT
bf [47]

:[41]
pushi.e 195
conv.i.v
pushi.e 90
conv.i.v
pushi.e 255
conv.i.v
call.i make_colour_rgb(argc=3)
pop.v.v self.c_extra
push.v self.color_fade_alpha
push.d 0.1
sub.d.v
pop.v.v self.color_fade_alpha
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.c_extra
pushi.e 1
conv.i.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
push.v self.color_fade_alpha
push.v self.image_blend
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
pushloc.v local.sword_slash
pushi.e 0
cmp.i.v EQ
bf [43]

:[42]
push.v self.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [44]

:[43]
push.e 0

:[44]
bf [46]

:[45]
push.v self.color_fade_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.headsprite
call.i draw_sprite_ext(argc=9)
popz.v

:[46]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.c_extra
pushi.e 0
conv.i.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v

:[47]
push.v self.turboactive
pushi.e 0
cmp.i.v GT
bf [62]

:[48]
push.v self.turbo_fade_state
pushi.e 0
cmp.i.v EQ
bf [50]

:[49]
push.v self.turbo_fade_alpha
push.d 0.04
add.d.v
pop.v.v self.turbo_fade_alpha

:[50]
push.v self.turbo_fade_state
pushi.e 1
cmp.i.v EQ
bf [52]

:[51]
push.v self.turbo_fade_alpha
push.d 0.04
sub.d.v
pop.v.v self.turbo_fade_alpha

:[52]
push.v self.turbo_fade_alpha
push.d 0.3
cmp.d.v GT
bf [54]

:[53]
pushi.e 1
pop.v.i self.turbo_fade_state

:[54]
push.v self.turbo_fade_alpha
pushi.e 0
cmp.i.v LT
bf [56]

:[55]
pushi.e 0
pop.v.i self.turbo_fade_state

:[56]
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
push.v self.turbo_fade_alpha
push.v self.image_blend
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
pushloc.v local.sword_slash
pushi.e 0
cmp.i.v EQ
bf [58]

:[57]
push.v self.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [59]

:[58]
push.e 0

:[59]
bf [62]

:[60]
push.v self.turbo_fade_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.headsprite
call.i draw_sprite_ext(argc=9)
conv.v.b
bf [62]

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

:[62]
push.v self.swordactive
pushi.e 0
cmp.i.v GT
bf [77]

:[63]
push.v self.sword_fade_state
pushi.e 0
cmp.i.v EQ
bf [65]

:[64]
push.v self.sword_fade_alpha
push.d 0.08
add.d.v
pop.v.v self.sword_fade_alpha

:[65]
push.v self.sword_fade_state
pushi.e 1
cmp.i.v EQ
bf [67]

:[66]
push.v self.sword_fade_alpha
push.d 0.08
sub.d.v
pop.v.v self.sword_fade_alpha

:[67]
push.v self.sword_fade_alpha
push.d 0.6
cmp.d.v GT
bf [69]

:[68]
pushi.e 1
pop.v.i self.sword_fade_state

:[69]
push.v self.sword_fade_alpha
pushi.e 0
cmp.i.v LT
bf [71]

:[70]
pushi.e 0
pop.v.i self.sword_fade_state

:[71]
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
pushloc.v local.sword_slash
pushi.e 0
cmp.i.v EQ
bf [73]

:[72]
push.v self.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [74]

:[73]
push.e 0

:[74]
bf [76]

:[75]
push.v self.sword_fade_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.headsprite
call.i draw_sprite_ext(argc=9)
popz.v

:[76]
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

:[77]
b [120]

:[78]
push.v self.image_alpha
push.v self.image_blend
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
pushloc.v local.sword_slash
pushi.e 0
cmp.i.v EQ
bf [80]

:[79]
push.v self.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [81]

:[80]
push.e 0

:[81]
bf [83]

:[82]
pushi.e 0
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
push.i 16777215
conv.i.v
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
push.v self.headsprite
call.i gml_Script_draw_sprite_ext_glow(argc=10)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
push.i 16777215
conv.i.v
push.v self.image_alpha
push.v self.headcolor
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
neg.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.headsprite
call.i gml_Script_draw_sprite_ext_glow(argc=10)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v

:[83]
push.v self.color_fade_alpha
pushi.e 0
cmp.i.v GT
bf [90]

:[84]
pushi.e 195
conv.i.v
pushi.e 90
conv.i.v
pushi.e 255
conv.i.v
call.i make_colour_rgb(argc=3)
pop.v.v self.c_extra
push.v self.color_fade_alpha
push.d 0.1
sub.d.v
pop.v.v self.color_fade_alpha
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.c_extra
pushi.e 1
conv.i.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
push.v self.color_fade_alpha
push.v self.image_blend
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
pushloc.v local.sword_slash
pushi.e 0
cmp.i.v EQ
bf [86]

:[85]
push.v self.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [87]

:[86]
push.e 0

:[87]
bf [89]

:[88]
push.v self.color_fade_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
neg.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.headsprite
call.i draw_sprite_ext(argc=9)
popz.v

:[89]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.c_extra
pushi.e 0
conv.i.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v

:[90]
push.v self.turboactive
pushi.e 0
cmp.i.v GT
bf [105]

:[91]
push.v self.turbo_fade_state
pushi.e 0
cmp.i.v EQ
bf [93]

:[92]
push.v self.turbo_fade_alpha
push.d 0.04
add.d.v
pop.v.v self.turbo_fade_alpha

:[93]
push.v self.turbo_fade_state
pushi.e 1
cmp.i.v EQ
bf [95]

:[94]
push.v self.turbo_fade_alpha
push.d 0.04
sub.d.v
pop.v.v self.turbo_fade_alpha

:[95]
push.v self.turbo_fade_alpha
push.d 0.3
cmp.d.v GT
bf [97]

:[96]
pushi.e 1
pop.v.i self.turbo_fade_state

:[97]
push.v self.turbo_fade_alpha
pushi.e 0
cmp.i.v LT
bf [99]

:[98]
pushi.e 0
pop.v.i self.turbo_fade_state

:[99]
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
push.v self.turbo_fade_alpha
push.v self.image_blend
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
pushloc.v local.sword_slash
pushi.e 0
cmp.i.v EQ
bf [101]

:[100]
push.v self.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [102]

:[101]
push.e 0

:[102]
bf [104]

:[103]
push.v self.turbo_fade_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
neg.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.headsprite
call.i draw_sprite_ext(argc=9)
popz.v

:[104]
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

:[105]
push.v self.swordactive
pushi.e 0
cmp.i.v GT
bf [120]

:[106]
push.v self.sword_fade_state
pushi.e 0
cmp.i.v EQ
bf [108]

:[107]
push.v self.sword_fade_alpha
push.d 0.08
add.d.v
pop.v.v self.sword_fade_alpha

:[108]
push.v self.sword_fade_state
pushi.e 1
cmp.i.v EQ
bf [110]

:[109]
push.v self.sword_fade_alpha
push.d 0.08
sub.d.v
pop.v.v self.sword_fade_alpha

:[110]
push.v self.sword_fade_alpha
push.d 0.6
cmp.d.v GT
bf [112]

:[111]
pushi.e 1
pop.v.i self.sword_fade_state

:[112]
push.v self.sword_fade_alpha
pushi.e 0
cmp.i.v LT
bf [114]

:[113]
pushi.e 0
pop.v.i self.sword_fade_state

:[114]
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
pushloc.v local.sword_slash
pushi.e 0
cmp.i.v EQ
bf [116]

:[115]
push.v self.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [117]

:[116]
push.e 0

:[117]
bf [119]

:[118]
push.v self.sword_fade_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
neg.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.headsprite
call.i draw_sprite_ext(argc=9)
popz.v

:[119]
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

:[120]
push.v self.specialcon
pushi.e 1
cmp.i.v EQ
bf [122]

:[121]
push.v self.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [123]

:[122]
push.e 0

:[123]
bf [133]

:[124]
pushi.e 1
pop.v.i self.flameactive
push.d 1.5
pop.v.d self.damage_multiplier
push.v self.specialcontimer
pushi.e 0
cmp.i.v EQ
bf [126]

:[125]
pushi.e 16
pop.v.i self.special_punch_count
pushi.e 3
pop.v.i self.special_punch_turns

:[126]
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
bf [128]

:[127]
push.d 0.5
pop.v.d self.flamealpha

:[128]
push.v self.specialcontimer
pushi.e 15
cmp.i.v GTE
bf [130]

:[129]
pushi.e 1
pop.v.i self.flameactive
pushi.e 1
push.v self.specialcontimer
pushi.e 30
conv.i.d
div.d.v
sub.v.i
pop.v.v self.flamealpha

:[130]
push.v self.specialcontimer
pushi.e 30
cmp.i.v GTE
bf [132]

:[131]
pushi.e 0
pop.v.i self.specialcontimer
pushi.e 0
pop.v.i self.specialcon
pushi.e 0
pop.v.i self.image_index

:[132]
push.v self.flamealpha
pushi.e 255
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
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
push.v self.y
push.v self.x
pushi.e 9
push.v self.flameframe
add.v.i
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.flamealpha
pushi.e 2
conv.i.d
div.d.v
push.i 65535
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
neg.v
push.v self.y
push.v self.x
pushi.e 10
push.v self.flameframe
sub.v.i
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[133]
push.v self.specialcon
pushi.e 2
cmp.i.v EQ
bf [135]

:[134]
push.v self.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [136]

:[135]
push.e 0

:[136]
bf [149]

:[137]
pushi.e 1
pop.v.i self.swordactive
push.d 1.2
pop.v.d self.damage_multiplier
push.v self.specialcontimer
pushi.e 0
cmp.i.v EQ
bf [142]

:[138]
pushi.e 16
pop.v.i self.special_punch_count
pushi.e 3
pop.v.i self.special_punch_turns
pushi.e 811
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [142]

:[139]
pushi.e 811
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 810
pushenv [141]

:[140]
pushi.e 2175
pop.v.i self.sprite_index

:[141]
popenv [140]

:[142]
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
bf [144]

:[143]
push.d 0.5
pop.v.d self.flamealpha

:[144]
push.v self.specialcontimer
pushi.e 15
cmp.i.v GTE
bf [146]

:[145]
pushi.e 1
pop.v.i self.swordactive
pushi.e 1
push.v self.specialcontimer
pushi.e 30
conv.i.d
div.d.v
sub.v.i
pop.v.v self.flamealpha

:[146]
push.v self.specialcontimer
pushi.e 30
cmp.i.v GTE
bf [148]

:[147]
pushi.e 0
pop.v.i self.specialcontimer
pushi.e 0
pop.v.i self.specialcon
pushi.e 0
pop.v.i self.image_index

:[148]
push.v self.flamealpha
push.i 16711680
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
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
push.v self.y
push.v self.x
pushi.e 9
push.v self.flameframe
add.v.i
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.flamealpha
pushi.e 2
conv.i.d
div.d.v
push.i 8421376
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
neg.v
push.v self.y
push.v self.x
pushi.e 10
push.v self.flameframe
sub.v.i
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[149]
push.v self.specialcon
pushi.e 3
cmp.i.v EQ
bf [151]

:[150]
push.v self.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [152]

:[151]
push.e 0

:[152]
bf [165]

:[153]
pushi.e 1
pop.v.i self.laseractive
push.d 1.1
pop.v.d self.damage_multiplier
push.d 1.3
pop.v.d self.punch_speed_multiplier
push.v self.specialcontimer
pushi.e 0
cmp.i.v EQ
bf [158]

:[154]
pushi.e 32
pop.v.i self.special_punch_count
pushi.e 3
pop.v.i self.special_punch_turns
pushi.e 811
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [158]

:[155]
pushi.e 811
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 810
pushenv [157]

:[156]
pushi.e 2176
pop.v.i self.sprite_index

:[157]
popenv [156]

:[158]
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
bf [160]

:[159]
push.d 0.5
pop.v.d self.flamealpha

:[160]
push.v self.specialcontimer
pushi.e 15
cmp.i.v GTE
bf [162]

:[161]
pushi.e 1
pop.v.i self.laseractive
pushi.e 1
push.v self.specialcontimer
pushi.e 30
conv.i.d
div.d.v
sub.v.i
pop.v.v self.flamealpha

:[162]
push.v self.specialcontimer
pushi.e 30
cmp.i.v GTE
bf [164]

:[163]
pushi.e 0
pop.v.i self.specialcontimer
pushi.e 0
pop.v.i self.specialcon
pushi.e 0
pop.v.i self.image_index

:[164]
push.v self.flamealpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
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
push.v self.y
push.v self.x
pushi.e 9
push.v self.flameframe
add.v.i
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.flamealpha
pushi.e 2
conv.i.d
div.d.v
push.i 65535
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
neg.v
push.v self.y
push.v self.x
pushi.e 10
push.v self.flameframe
sub.v.i
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[165]
push.v self.specialcon
pushi.e 4
cmp.i.v EQ
bf [167]

:[166]
push.v self.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [168]

:[167]
push.e 0

:[168]
bf [181]

:[169]
pushi.e 1
pop.v.i self.duckactive
push.v self.specialcontimer
pushi.e 0
cmp.i.v EQ
bf [174]

:[170]
pushi.e 16
pop.v.i self.special_punch_count
pushi.e 3
pop.v.i self.special_punch_turns
pushi.e 811
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [174]

:[171]
pushi.e 811
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 810
pushenv [173]

:[172]
pushi.e 2177
pop.v.i self.sprite_index

:[173]
popenv [172]

:[174]
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
bf [176]

:[175]
push.d 0.5
pop.v.d self.flamealpha

:[176]
push.v self.specialcontimer
pushi.e 15
cmp.i.v GTE
bf [178]

:[177]
pushi.e 1
pop.v.i self.duckactive
pushi.e 1
push.v self.specialcontimer
pushi.e 30
conv.i.d
div.d.v
sub.v.i
pop.v.v self.flamealpha

:[178]
push.v self.specialcontimer
pushi.e 30
cmp.i.v GTE
bf [180]

:[179]
pushi.e 0
pop.v.i self.specialcontimer
pushi.e 0
pop.v.i self.specialcon
pushi.e 0
pop.v.i self.image_index

:[180]
push.v self.flamealpha
push.i 65535
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
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
push.v self.y
push.v self.x
pushi.e 9
push.v self.flameframe
add.v.i
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.flamealpha
pushi.e 2
conv.i.d
div.d.v
push.i 65535
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
neg.v
push.v self.y
push.v self.x
pushi.e 10
push.v self.flameframe
sub.v.i
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[181]
push.v self.specialcon
pushi.e 5
cmp.i.v EQ
bf [183]

:[182]
push.v self.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [184]

:[183]
push.e 0

:[184]
bf [194]

:[185]
pushi.e 1
pop.v.i self.turboactive
push.v self.specialcontimer
pushi.e 0
cmp.i.v EQ
bf [187]

:[186]
pushi.e 999
pop.v.i self.special_punch_count
pushi.e 3
pop.v.i self.special_punch_turns

:[187]
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
bf [189]

:[188]
push.d 0.5
pop.v.d self.flamealpha

:[189]
push.v self.specialcontimer
pushi.e 15
cmp.i.v GTE
bf [191]

:[190]
pushi.e 1
pop.v.i self.turboactive
pushi.e 1
push.v self.specialcontimer
pushi.e 30
conv.i.d
div.d.v
sub.v.i
pop.v.v self.flamealpha

:[191]
push.v self.specialcontimer
pushi.e 30
cmp.i.v GTE
bf [193]

:[192]
pushi.e 0
pop.v.i self.specialcontimer
pushi.e 0
pop.v.i self.specialcon
pushi.e 0
pop.v.i self.image_index

:[193]
push.v self.flamealpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
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
push.v self.y
push.v self.x
pushi.e 9
push.v self.flameframe
add.v.i
push.v self.sprite_index
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
push.v self.image_xscale
neg.v
push.v self.y
push.v self.x
pushi.e 10
push.v self.flameframe
sub.v.i
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[194]
push.v self.specialcon
pushi.e 6
cmp.i.v EQ
bf [196]

:[195]
push.v self.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [197]

:[196]
push.e 0

:[197]
bf [214]

:[198]
push.v self.specialcontimer
push.e 1
add.i.v
pop.v.v self.specialcontimer
push.v self.specialcontimer
pushi.e 1
cmp.i.v EQ
bf [207]

:[199]
pushi.e 873
conv.i.v
push.v self.y
pushi.e 75
sub.i.v
push.v self.x
pushi.e 30
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dmgwr
push.v self.dmgwr
pushi.e -9
pushenv [202]

:[200]
pushi.e 8
pop.v.i self.delay
pushi.e 3
pop.v.i self.type
pushi.e 100
pop.v.i self.damage
pushi.e -5
pushi.e 1
push.v [array]self.hp
pushi.e 100
add.i.v
pushi.e -5
pushi.e 1
push.v [array]self.maxhp
cmp.v.v GT
bf [202]

:[201]
pushi.e -5
pushi.e 1
push.v [array]self.maxhp
pushi.e -5
pushi.e 1
push.v [array]self.hp
sub.v.v
pop.v.v self.damage

:[202]
popenv [200]
push.v self.health_count
pushi.e 100
add.i.v
pop.v.v self.health_count
push.v self.health_count
push.v self.health_count_max
cmp.v.v GT
bf [204]

:[203]
push.v self.health_count_max
pop.v.v self.health_count

:[204]
push.i 231131
setowner.e
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]self.hp
pushi.e 100
add.i.v
pop.i.v [array]self.hp
pushi.e -5
pushi.e 1
push.v [array]self.hp
pushi.e -5
pushi.e 1
push.v [array]self.maxhp
cmp.v.v GT
bf [206]

:[205]
pushi.e -5
pushi.e 1
push.v [array]self.maxhp
pushi.e -5
pushi.e 1
pop.v.v [array]self.hp

:[206]
pushi.e 163
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[207]
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
bf [209]

:[208]
push.d 0.5
pop.v.d self.flamealpha

:[209]
push.v self.specialcontimer
pushi.e 15
cmp.i.v GTE
bf [211]

:[210]
pushi.e 1
push.v self.specialcontimer
pushi.e 30
conv.i.d
div.d.v
sub.v.i
pop.v.v self.flamealpha

:[211]
push.v self.specialcontimer
pushi.e 30
cmp.i.v GTE
bf [213]

:[212]
pushi.e 0
pop.v.i self.specialcontimer
pushi.e 0
pop.v.i self.specialcon
pushi.e 0
pop.v.i self.image_index

:[213]
push.v self.flamealpha
push.i 32768
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
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
push.v self.y
push.v self.x
pushi.e 9
push.v self.flameframe
add.v.i
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.flamealpha
pushi.e 2
conv.i.d
div.d.v
push.i 65280
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
neg.v
push.v self.y
push.v self.x
pushi.e 10
push.v self.flameframe
sub.v.i
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[214]
push.v self.specialcon
pushi.e 7
cmp.i.v EQ
bf [216]

:[215]
push.v self.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [217]

:[216]
push.e 0

:[217]
bf [231]

:[218]
push.v self.specialcontimer
push.e 1
add.i.v
pop.v.v self.specialcontimer
push.v self.specialcontimer
pushi.e 0
cmp.i.v GT
bf [220]

:[219]
push.v self.specialcontimer
pushi.e 5
cmp.i.v LT
b [221]

:[220]
push.e 0

:[221]
bf [223]

:[222]
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
push.v self.y
pushi.e 161
sub.i.v
push.v self.x
pushi.e 12
sub.i.v
push.v self.specialcontimer
pushi.e 2
mul.i.v
pushi.e 2207
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [225]

:[223]
push.v self.specialcontimer
pushi.e 0
cmp.i.v GT
bf [225]

:[224]
pushi.e 1
push.v self.specialcontimer
pushi.e 10
sub.i.v
pushi.e 20
conv.i.d
div.d.v
sub.v.i
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 161
sub.i.v
push.v self.x
pushi.e 12
sub.i.v
pushi.e 9
conv.i.v
pushi.e 2207
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[225]
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
bf [227]

:[226]
push.d 0.5
pop.v.d self.flamealpha

:[227]
push.v self.specialcontimer
pushi.e 15
cmp.i.v GTE
bf [229]

:[228]
pushi.e 1
push.v self.specialcontimer
pushi.e 30
conv.i.d
div.d.v
sub.v.i
pop.v.v self.flamealpha

:[229]
push.v self.specialcontimer
pushi.e 30
cmp.i.v GTE
bf [231]

:[230]
pushi.e 0
pop.v.i self.specialcontimer
pushi.e 0
pop.v.i self.specialcon
pushi.e 0
pop.v.i self.image_index

:[231]
push.v self.specialcon
pushi.e 8
cmp.i.v EQ
bf [233]

:[232]
push.v self.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [234]

:[233]
push.e 0

:[234]
bf [251]

:[235]
push.v self.specialcontimer
push.e 1
add.i.v
pop.v.v self.specialcontimer
push.v self.specialcontimer
pushi.e 0
cmp.i.v GT
bf [237]

:[236]
push.v self.specialcontimer
pushi.e 5
cmp.i.v LT
b [238]

:[237]
push.e 0

:[238]
bf [240]

:[239]
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
push.v self.y
pushi.e 161
sub.i.v
push.v self.x
pushi.e 12
sub.i.v
push.v self.specialcontimer
pushi.e 2
mul.i.v
pushi.e 2206
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [242]

:[240]
push.v self.specialcontimer
pushi.e 0
cmp.i.v GT
bf [242]

:[241]
pushi.e 1
push.v self.specialcontimer
pushi.e 10
sub.i.v
pushi.e 20
conv.i.d
div.d.v
sub.v.i
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 161
sub.i.v
push.v self.x
pushi.e 12
sub.i.v
pushi.e 9
conv.i.v
pushi.e 2206
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[242]
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
bf [244]

:[243]
push.d 0.5
pop.v.d self.flamealpha

:[244]
push.v self.specialcontimer
pushi.e 15
cmp.i.v GTE
bf [246]

:[245]
pushi.e 1
push.v self.specialcontimer
pushi.e 30
conv.i.d
div.d.v
sub.v.i
pop.v.v self.flamealpha

:[246]
push.v self.specialcontimer
pushi.e 30
cmp.i.v GTE
bt [248]

:[247]
pushglb.v global.boxingphase
pushi.e 2
cmp.i.v EQ
b [249]

:[248]
push.e 1

:[249]
bf [251]

:[250]
pushi.e 0
pop.v.i self.specialcontimer
pushi.e 0
pop.v.i self.specialcon
pushi.e 0
pop.v.i self.image_index

:[251]
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

:[end]