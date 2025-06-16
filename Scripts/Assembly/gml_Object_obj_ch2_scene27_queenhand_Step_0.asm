.localvar 2 arguments
.localvar 33532 new_ypos 16869
.localvar 14922 x_offset 16870
.localvar 33533 new_xpos 16871

:[0]
push.v self.release
conv.v.b
bf [21]

:[1]
push.v self.image_alpha
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i self.image_alpha
call.i gml_Script_camerax(argc=0)
pop.v.v self.x
call.i gml_Script_cameray(argc=0)
pop.v.v self.y
call.i gml_Script_camerax(argc=0)
pop.v.v self.ral_x

:[3]
push.v self.y_pos
pushi.e 0
cmp.i.v LT
bf [5]

:[4]
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
pushi.e 100
add.i.v
pop.v.v self.y_pos

:[5]
push.v self.climbtimer
push.e 1
add.i.v
pop.v.v self.climbtimer
push.v self.climbtimer
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.y_pos
pop.v.v self.rem_y_pos

:[7]
push.v self.climbtimer
pushi.e 2
cmp.i.v EQ
bf [17]

:[8]
push.v self.wobble
push.e 1
add.i.v
pop.v.v self.wobble
push.v self.rem_y_pos
pushi.e 120
sub.i.v
pop.v.v local.new_ypos
pushloc.v local.new_ypos
pushi.e 95
cmp.i.v LT
bf [10]

:[9]
pushi.e 95
pop.v.i local.new_ypos

:[10]
push.s "out"@14331
conv.s.v
pushi.e -1
conv.i.v
pushi.e 30
conv.i.v
pushloc.v local.new_ypos
push.v self.rem_y_pos
push.s "y_pos"@9579
conv.s.v
push.v self.id
call.i gml_Script_scr_lerpvar_instance(argc=7)
popz.v
push.v self.wobble
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
pushi.e -20
conv.i.v
b [13]

:[12]
pushi.e 20
conv.i.v

:[13]
pop.v.v local.x_offset
pushloc.v local.new_ypos
pushi.e 95
cmp.i.v EQ
bf [15]

:[14]
call.i gml_Script_camerax(argc=0)
pushi.e 78
add.i.v
b [16]

:[15]
push.v self.rem_x_pos
pushloc.v local.x_offset
add.v.v

:[16]
pop.v.v local.new_xpos
push.s "out"@14331
conv.s.v
pushi.e -1
conv.i.v
pushi.e 20
conv.i.v
pushloc.v local.new_xpos
push.v self.rem_x_pos
push.s "x_pos"@9578
conv.s.v
push.v self.id
call.i gml_Script_scr_lerpvar_instance(argc=7)
popz.v

:[17]
push.v self.climbtimer
pushi.e 40
cmp.i.v EQ
bf [19]

:[18]
pushi.e 0
pop.v.i self.climbtimer
push.v self.y_pos
pop.v.v self.rem_y_pos
push.v self.x_pos
pop.v.v self.rem_x_pos

:[19]
push.v self.y_pos
pushi.e 95
cmp.i.v LTE
bf [21]

:[20]
pushi.e 0
pop.v.b self.release

:[21]
push.v self.release_normal
conv.v.b
bf [28]

:[22]
push.v self.image_alpha
pushi.e 0
cmp.i.v EQ
bf [24]

:[23]
pushi.e 1
pop.v.i self.image_alpha
call.i gml_Script_camerax(argc=0)
pop.v.v self.x
call.i gml_Script_cameray(argc=0)
pop.v.v self.y
call.i gml_Script_camerax(argc=0)
pop.v.v self.ral_x

:[24]
push.v self.y_pos
pushi.e 0
cmp.i.v LT
bf [26]

:[25]
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
pushi.e 100
add.i.v
pop.v.v self.y_pos

:[26]
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
pushi.e 100
add.i.v
pushi.e 95
conv.i.v
push.v self.y_pos
pushi.e 10
sub.i.v
call.i clamp(argc=3)
pop.v.v self.y_pos
push.v self.y_pos
pushi.e 95
cmp.i.v LTE
bf [28]

:[27]
pushi.e 0
pop.v.b self.release_normal

:[28]
push.v self.leave
conv.v.b
bf [33]

:[29]
push.v self.y_pos
pushi.e 95
cmp.i.v EQ
bf [31]

:[30]
pushi.e 267
pop.v.i self.hand_sprite

:[31]
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
pushi.e 100
add.i.v
pushi.e 95
conv.i.v
push.v self.y_pos
pushi.e 10
add.i.v
call.i clamp(argc=3)
pop.v.v self.y_pos
push.v self.y_pos
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
pushi.e 100
add.i.v
cmp.v.v GTE
bf [33]

:[32]
pushi.e 0
pop.v.b self.leave
call.i instance_destroy(argc=0)
popz.v

:[33]
push.v self.su_struggle
conv.v.b
bf [35]

:[34]
pushi.e 0
pop.v.b self.su_struggle
pushi.e 371
pop.v.i self.su_sprite
pushi.e 1
pop.v.b self.su_animate

:[35]
push.v self.su_shocked
conv.v.b
bf [37]

:[36]
pushi.e 0
pop.v.b self.su_shocked
pushi.e 372
pop.v.i self.su_sprite
pushi.e 0
pop.v.b self.su_animate

:[37]
push.v self.su_look_left
conv.v.b
bf [39]

:[38]
pushi.e 0
pop.v.b self.su_look_left
pushi.e 367
pop.v.i self.su_sprite
pushi.e 0
pop.v.b self.su_animate

:[39]
push.v self.su_look_right
conv.v.b
bf [41]

:[40]
pushi.e 0
pop.v.b self.su_look_right
pushi.e 366
pop.v.i self.su_sprite
pushi.e 0
pop.v.b self.su_animate

:[41]
push.v self.su_concerned
conv.v.b
bf [43]

:[42]
pushi.e 0
pop.v.b self.su_concerned
pushi.e 370
pop.v.i self.su_sprite
pushi.e 0
pop.v.b self.su_animate

:[43]
push.v self.su_grin_1
conv.v.b
bt [45]

:[44]
push.v self.su_grin_2
conv.v.b
b [46]

:[45]
push.e 1

:[46]
bf [51]

:[47]
push.v self.su_grin_2
conv.v.b
bf [49]

:[48]
pushi.e 1
conv.i.v
b [50]

:[49]
pushi.e 0
conv.i.v

:[50]
pop.v.v self.su_anim_index
pushi.e 0
pop.v.b self.su_grin_1
pushi.e 0
pop.v.b self.su_grin_2
pushi.e 368
pop.v.i self.su_sprite
pushi.e 0
pop.v.b self.su_animate

:[51]
push.v self.su_squint_1
conv.v.b
bt [53]

:[52]
push.v self.su_squint_2
conv.v.b
b [54]

:[53]
push.e 1

:[54]
bf [59]

:[55]
push.v self.su_squint_2
conv.v.b
bf [57]

:[56]
pushi.e 1
conv.i.v
b [58]

:[57]
pushi.e 0
conv.i.v

:[58]
pop.v.v self.su_anim_index
pushi.e 0
pop.v.b self.su_squint_1
pushi.e 0
pop.v.b self.su_squint_2
pushi.e 369
pop.v.i self.su_sprite
pushi.e 0
pop.v.b self.su_animate

:[59]
push.v self.su_animate
conv.v.b
bf [61]

:[60]
push.v self.su_animsiner
push.e 1
add.i.v
pop.v.v self.su_animsiner
push.v self.su_animsiner
pushi.e 10
conv.i.d
div.d.v
pop.v.v self.su_anim_index
b [63]

:[61]
push.v self.su_animsiner
pushi.e 0
cmp.i.v NEQ
bf [63]

:[62]
pushi.e 0
pop.v.i self.su_animsiner

:[63]
push.v self.ra_struggle
conv.v.b
bf [65]

:[64]
pushi.e 0
pop.v.b self.ra_struggle
pushi.e 361
pop.v.i self.ra_sprite
pushi.e 1
pop.v.b self.ra_animate

:[65]
push.v self.ra_huh
conv.v.b
bf [67]

:[66]
pushi.e 0
pop.v.b self.ra_huh
pushi.e 358
pop.v.i self.ra_sprite
pushi.e 0
pop.v.b self.ra_animate

:[67]
push.v self.ra_look
conv.v.b
bf [69]

:[68]
pushi.e 0
pop.v.b self.ra_look
pushi.e 362
pop.v.i self.ra_sprite
pushi.e 0
pop.v.b self.ra_animate

:[69]
push.v self.ra_smile
conv.v.b
bf [71]

:[70]
pushi.e 0
pop.v.b self.ra_smile
pushi.e 360
pop.v.i self.ra_sprite
pushi.e 0
pop.v.b self.ra_animate

:[71]
push.v self.ra_scared
conv.v.b
bf [73]

:[72]
pushi.e 0
pop.v.b self.ra_scared
pushi.e 359
pop.v.i self.ra_sprite
pushi.e 0
pop.v.b self.ra_animate

:[73]
push.v self.ra_stern
conv.v.b
bf [75]

:[74]
pushi.e 0
pop.v.b self.ra_stern
pushi.e 363
pop.v.i self.ra_sprite
pushi.e 0
pop.v.b self.ra_animate

:[75]
push.v self.ra_mu
conv.v.b
bf [77]

:[76]
pushi.e 0
pop.v.b self.ra_mu
pushi.e 365
pop.v.i self.ra_sprite
pushi.e 0
pop.v.b self.ra_animate

:[77]
push.v self.ra_animate
conv.v.b
bf [79]

:[78]
push.v self.ra_animsiner
push.e 1
add.i.v
pop.v.v self.ra_animsiner
push.v self.ra_animsiner
pushi.e 10
conv.i.d
div.d.v
pop.v.v self.ra_anim_index
b [end]

:[79]
push.v self.ra_animsiner
pushi.e 0
cmp.i.v NEQ
bf [end]

:[80]
pushi.e 0
pop.v.i self.ra_animsiner
pushi.e 0
pop.v.i self.ra_anim_index

:[end]