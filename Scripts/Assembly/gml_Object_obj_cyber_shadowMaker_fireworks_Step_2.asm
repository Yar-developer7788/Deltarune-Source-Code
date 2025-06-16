.localvar 2 arguments
.localvar 21314 sus_x 9367
.localvar 21315 sus_y 9368
.localvar 21316 sus_sprite 9369
.localvar 21317 sus_index 9370
.localvar 21318 sus_depth 9371
.localvar 21319 ral_x 9372
.localvar 21320 ral_y 9373
.localvar 15467 ral_sprite 9374
.localvar 21321 ral_index 9375
.localvar 21322 ral_depth 9376
.localvar 21311 hacker_depth 9377

:[0]
push.v self.is_active
conv.v.b
bt [2]

:[1]
push.v self.inactive_cleanup
conv.v.b
b [3]

:[2]
push.e 1

:[3]
bf [end]

:[4]
push.v self.inactive_cleanup
conv.v.b
bf [10]

:[5]
push.v self.cleanup_timer
push.e 1
add.i.v
pop.v.v self.cleanup_timer
push.v self.cleanup_timer
pushi.e 60
cmp.i.v GTE
bf [7]

:[6]
push.v self.frontshadOpacity
pushi.e 0
cmp.i.v LTE
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 0
pop.v.b self.inactive_cleanup

:[10]
push.v self.fade_in
conv.v.b
bf [12]

:[11]
push.v self.fade_cleanup
conv.v.b
not.b
b [13]

:[12]
push.e 0

:[13]
bf [18]

:[14]
push.v self.fade_timer
push.e 1
add.i.v
pop.v.v self.fade_timer
push.v self.fade_timer
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
pushi.e 5
conv.i.v
push.d 0.6
conv.d.v
pushi.e 0
conv.i.v
push.s "frontshadOpacity"@21301
conv.s.v
push.v self.id
call.i gml_Script_scr_lerpvar_instance(argc=5)
popz.v

:[16]
push.v self.fade_timer
pushi.e 25
cmp.i.v EQ
bf [18]

:[17]
pushi.e 0
pop.v.b self.fade_in
pushi.e 0
pop.v.i self.fade_timer
pushi.e 15
conv.i.v
pushi.e 0
conv.i.v
push.d 0.6
conv.d.v
push.s "frontshadOpacity"@21301
conv.s.v
push.v self.id
call.i gml_Script_scr_lerpvar_instance(argc=5)
popz.v

:[18]
push.i 133642
setowner.e
push.v 82.sprite_index
pushi.e -1
pushi.e 0
push.v [array]self.shadow_char
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.i 133650
setowner.e
push.v 82.image_xscale
pushi.e -1
pushi.e 0
push.v [array]self.shadow_char
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.i 133651
setowner.e
push.v 82.image_yscale
pushi.e -1
pushi.e 0
push.v [array]self.shadow_char
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.i 133617
setowner.e
push.v 82.x
pushi.e -1
pushi.e 0
push.v [array]self.shadow_char
pushi.e -9
pop.v.v [stacktop]self.x
push.i 133618
setowner.e
push.v 82.y
pushi.e 4
add.i.v
pushi.e -1
pushi.e 0
push.v [array]self.shadow_char
pushi.e -9
pop.v.v [stacktop]self.y
push.i 133654
setowner.e
push.v self.frontShadowColor
pushi.e -1
pushi.e 0
push.v [array]self.shadow_char
pushi.e -9
pop.v.v [stacktop]self.image_blend
push.i 133653
setowner.e
push.v self.frontshadOpacity
pushi.e -1
pushi.e 0
push.v [array]self.shadow_char
pushi.e -9
pop.v.v [stacktop]self.image_alpha
push.i 133643
setowner.e
push.v 82.image_index
pushi.e -1
pushi.e 0
push.v [array]self.shadow_char
pushi.e -9
pop.v.v [stacktop]self.image_index
push.i 133637
setowner.e
push.v 82.depth
pushi.e 1
sub.i.v
pushi.e -1
pushi.e 0
push.v [array]self.shadow_char
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 276
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [28]

:[19]
pushi.e 276
pushenv [24]

:[20]
push.v self.name
push.s "susie"@70
cmp.s.v EQ
bf [22]

:[21]
push.v self.x
pop.v.v local.sus_x
push.v self.y
pop.v.v local.sus_y
push.v self.sprite_index
pop.v.v local.sus_sprite
push.v self.image_index
pop.v.v local.sus_index
push.v self.depth
pop.v.v local.sus_depth

:[22]
push.v self.name
push.s "ralsei"@72
cmp.s.v EQ
bf [24]

:[23]
push.v self.x
pop.v.v local.ral_x
push.v self.y
pop.v.v local.ral_y
push.v self.sprite_index
pop.v.v local.ral_sprite
push.v self.image_index
pop.v.v local.ral_index
push.v self.depth
pop.v.v local.ral_depth

:[24]
popenv [20]
pushloc.v local.sus_x
pushi.e 0
cmp.i.v NEQ
bf [26]

:[25]
push.i 133642
setowner.e
pushloc.v local.sus_sprite
pushi.e -1
pushi.e 1
push.v [array]self.shadow_char
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.i 133650
setowner.e
pushi.e 2
pushi.e -1
pushi.e 1
push.v [array]self.shadow_char
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.i 133651
setowner.e
pushi.e 2
pushi.e -1
pushi.e 1
push.v [array]self.shadow_char
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.i 133617
setowner.e
pushloc.v local.sus_x
pushi.e -1
pushi.e 1
push.v [array]self.shadow_char
pushi.e -9
pop.v.v [stacktop]self.x
push.i 133618
setowner.e
pushloc.v local.sus_y
pushi.e 4
add.i.v
pushi.e -1
pushi.e 1
push.v [array]self.shadow_char
pushi.e -9
pop.v.v [stacktop]self.y
push.i 133654
setowner.e
push.v self.frontShadowColor
pushi.e -1
pushi.e 1
push.v [array]self.shadow_char
pushi.e -9
pop.v.v [stacktop]self.image_blend
push.i 133653
setowner.e
push.v self.frontshadOpacity
pushi.e -1
pushi.e 1
push.v [array]self.shadow_char
pushi.e -9
pop.v.v [stacktop]self.image_alpha
push.i 133643
setowner.e
pushloc.v local.sus_index
pushi.e -1
pushi.e 1
push.v [array]self.shadow_char
pushi.e -9
pop.v.v [stacktop]self.image_index
push.i 133637
setowner.e
pushloc.v local.sus_depth
pushi.e 1
sub.i.v
pushi.e -1
pushi.e 1
push.v [array]self.shadow_char
pushi.e -9
pop.v.v [stacktop]self.depth

:[26]
pushloc.v local.ral_x
pushi.e 0
cmp.i.v NEQ
bf [28]

:[27]
push.i 133642
setowner.e
pushloc.v local.ral_sprite
pushi.e -1
pushi.e 2
push.v [array]self.shadow_char
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.i 133650
setowner.e
pushi.e 2
pushi.e -1
pushi.e 2
push.v [array]self.shadow_char
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.i 133651
setowner.e
pushi.e 2
pushi.e -1
pushi.e 2
push.v [array]self.shadow_char
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.i 133617
setowner.e
pushloc.v local.ral_x
pushi.e -1
pushi.e 2
push.v [array]self.shadow_char
pushi.e -9
pop.v.v [stacktop]self.x
push.i 133618
setowner.e
pushloc.v local.ral_y
pushi.e 4
add.i.v
pushi.e -1
pushi.e 2
push.v [array]self.shadow_char
pushi.e -9
pop.v.v [stacktop]self.y
push.i 133654
setowner.e
push.v self.frontShadowColor
pushi.e -1
pushi.e 2
push.v [array]self.shadow_char
pushi.e -9
pop.v.v [stacktop]self.image_blend
push.i 133653
setowner.e
push.v self.frontshadOpacity
pushi.e -1
pushi.e 2
push.v [array]self.shadow_char
pushi.e -9
pop.v.v [stacktop]self.image_alpha
push.i 133643
setowner.e
pushloc.v local.ral_index
pushi.e -1
pushi.e 2
push.v [array]self.shadow_char
pushi.e -9
pop.v.v [stacktop]self.image_index
push.i 133637
setowner.e
pushloc.v local.ral_depth
pushi.e 1
sub.i.v
pushi.e -1
pushi.e 2
push.v [array]self.shadow_char
pushi.e -9
pop.v.v [stacktop]self.depth

:[28]
pushi.e 69
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[29]
pushi.e 69
pushenv [31]

:[30]
push.v self.depth
pop.v.v local.hacker_depth

:[31]
popenv [30]
push.i 133653
setowner.e
push.v self.frontshadOpacity
pushi.e -1
push.v self.shadow_total
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.shadow_char
pushi.e -9
pop.v.v [stacktop]self.image_alpha
push.i 133637
setowner.e
pushloc.v local.hacker_depth
pushi.e 1
sub.i.v
pushi.e -1
push.v self.shadow_total
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.shadow_char
pushi.e -9
pop.v.v [stacktop]self.depth

:[end]