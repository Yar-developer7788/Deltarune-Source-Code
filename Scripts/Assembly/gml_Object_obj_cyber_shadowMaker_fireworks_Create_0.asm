.localvar 2 arguments
.localvar 14404 shadow_amount 9357
.localvar 107 i 9358
.localvar 21309 hacker_x 9361
.localvar 21310 hacker_y 9362
.localvar 21311 hacker_depth 9363
.localvar 21312 hacker_sprite 9364
.localvar 21313 hacker_index 9365

:[0]
pushi.e 0
pop.v.i self.timer
pushi.e 1
pop.v.i self.spawned
pushi.e 1
pop.v.i self.shadLength
pushi.e 0
pop.v.i self.floorshadOpacity
pushi.e 0
pop.v.i self.frontshadOpacity
pushi.e 0
pop.v.i self.floorShadowColor
pushi.e 0
pop.v.i self.frontShadowColor
pushi.e 0
pop.v.b self.fade_in
pushi.e 0
pop.v.b self.fade_out
pushi.e 0
pop.v.i self.fade_timer
pushi.e 0
pop.v.b self.fade_cleanup
pushi.e 0
pop.v.b self.fade_reset
pushi.e 0
pop.v.b self.is_active
pushbltn.v builtin.room
pushi.e 102
cmp.i.v EQ
bf [2]

:[1]
pushi.e -5
pushi.e 357
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
pop.v.b self.is_active

:[2]
pushi.e 0
pop.v.b self.inactive_cleanup
pushi.e 0
pop.v.i self.cleanup_timer
pushbltn.v builtin.room
pushi.e 106
cmp.i.v EQ
bf [4]

:[3]
push.i 80000
conv.i.v
b [5]

:[4]
push.i 900000
conv.i.v

:[5]
pop.v.v self.depth
pushi.e 1
pop.v.i local.shadow_amount
pushi.e 276
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [9]

:[6]
pushi.e 276
pushenv [8]

:[7]
push.v local.shadow_amount
push.e 1
add.i.v
pop.v.v local.shadow_amount
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v

:[8]
popenv [7]

:[9]
pushi.e 69
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [13]

:[10]
pushi.e 69
pushenv [12]

:[11]
push.v local.shadow_amount
push.e 1
add.i.v
pop.v.v local.shadow_amount

:[12]
popenv [11]

:[13]
pushi.e 0
pop.v.i local.i

:[14]
pushloc.v local.i
pushloc.v local.shadow_amount
cmp.v.v LT
bf [16]

:[15]
push.i 169546
setowner.e
pushi.e 129
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.shadow_char
push.i 133655
setowner.e
pushi.e 0
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.shadow_char
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [14]

:[16]
pushloc.v local.shadow_amount
pop.v.v self.shadow_total
pushi.e 69
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[17]
pushi.e 69
pushenv [19]

:[18]
push.v self.x
pop.v.v local.hacker_x
push.v self.y
pop.v.v local.hacker_y
push.v self.depth
pop.v.v local.hacker_depth
push.v self.sprite_index
pop.v.v local.hacker_sprite
push.v self.image_index
pop.v.v local.hacker_index

:[19]
popenv [18]
push.i 133642
setowner.e
pushloc.v local.hacker_sprite
pushi.e -1
push.v self.shadow_total
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.shadow_char
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.i 133655
setowner.e
pushi.e 0
pushi.e -1
push.v self.shadow_total
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.shadow_char
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.i 133650
setowner.e
pushi.e 2
pushi.e -1
push.v self.shadow_total
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.shadow_char
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.i 133651
setowner.e
pushi.e 2
pushi.e -1
push.v self.shadow_total
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.shadow_char
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.i 133617
setowner.e
pushloc.v local.hacker_x
pushi.e -1
push.v self.shadow_total
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.shadow_char
pushi.e -9
pop.v.v [stacktop]self.x
push.i 133618
setowner.e
pushloc.v local.hacker_y
pushi.e 4
add.i.v
pushi.e -1
push.v self.shadow_total
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.shadow_char
pushi.e -9
pop.v.v [stacktop]self.y
push.i 133654
setowner.e
push.v self.frontShadowColor
pushi.e -1
push.v self.shadow_total
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.shadow_char
pushi.e -9
pop.v.v [stacktop]self.image_blend
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
push.i 133643
setowner.e
pushloc.v local.hacker_index
pushi.e -1
push.v self.shadow_total
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.shadow_char
pushi.e -9
pop.v.v [stacktop]self.image_index

:[end]