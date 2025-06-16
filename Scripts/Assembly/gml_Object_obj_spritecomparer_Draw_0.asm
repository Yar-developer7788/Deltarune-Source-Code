.localvar 2 arguments
.localvar 29922 bboxl 15739
.localvar 29924 bboxu 15740
.localvar 29926 bboxr 15741
.localvar 29928 bboxd 15742
.localvar 10816 height 15743
.localvar 6665 width 15744
.localvar 24447 ix 15745
.localvar 24446 iy 15746
.localvar 14915 m 15747

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [3]

:[2]
push.i 166013
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mysprite
call.i sprite_get_xoffset(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.xx
push.i 166014
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mysprite
call.i sprite_get_yoffset(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.yy
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 52
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [9]

:[4]
push.s ""@157
conv.s.v
push.s "Enter sprite_index of first sprite, OR enemy name from the object"@29913
conv.s.v
call.i get_string(argc=2)
pop.v.v self.checkstring
push.s "spr_"@29915
push.v self.checkstring
add.v.s
push.s "_idle"@29916
add.s.v
call.i asset_get_index(argc=1)
call.i sprite_exists(argc=1)
conv.v.b
bf [6]

:[5]
push.i 166548
setowner.e
push.s "spr_"@29915
push.v self.checkstring
add.v.s
push.s "_idle"@29916
add.s.v
call.i asset_get_index(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.sprite
push.s "spr_"@29915
push.v self.checkstring
add.v.s
push.s "_hurt"@29917
add.s.v
call.i asset_get_index(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.sprite
push.s "spr_"@29915
push.v self.checkstring
add.v.s
push.s "_spared"@7056
add.s.v
call.i asset_get_index(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.sprite
b [8]

:[6]
push.v self.checkstring
call.i asset_get_index(argc=1)
call.i sprite_exists(argc=1)
conv.v.b
bf [8]

:[7]
push.i 166548
setowner.e
push.v self.checkstring
call.i asset_get_index(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.sprite

:[8]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[9]
pushi.e 53
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [13]

:[10]
push.s ""@157
conv.s.v
push.s "Enter sprite_index of second sprite."@29918
conv.s.v
call.i get_string(argc=2)
call.i asset_get_index(argc=1)
pop.v.v self.checksprite
push.v self.checksprite
pushi.e -1
cmp.i.v NEQ
bf [12]

:[11]
push.v self.checksprite
pushi.e -1
pushi.e 1
pop.v.v [array]self.sprite

:[12]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[13]
pushi.e 54
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [17]

:[14]
push.s ""@157
conv.s.v
push.s "Enter sprite_index of third sprite."@29920
conv.s.v
call.i get_string(argc=2)
call.i asset_get_index(argc=1)
pop.v.v self.checksprite
push.v self.checksprite
pushi.e -1
cmp.i.v NEQ
bf [16]

:[15]
push.v self.checksprite
pushi.e -1
pushi.e 2
pop.v.v [array]self.sprite

:[16]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[17]
pushi.e 1
conv.i.v
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 120
sub.i.v
push.v self.image_index
pushi.e -1
pushi.e 0
push.v [array]self.mysprite
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 120
add.i.v
push.v self.image_index
pushi.e -1
pushi.e 1
push.v [array]self.mysprite
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushi.e 120
add.i.v
push.v self.x
pushi.e 120
add.i.v
push.v self.image_index
pushi.e -1
pushi.e 2
push.v [array]self.mysprite
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 55
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
not.b
bf [19]

:[18]
pushi.e 1
conv.i.v
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
pushi.e -1
pushi.e 0
push.v [array]self.mysprite
call.i draw_sprite_ext(argc=9)
popz.v

:[19]
pushi.e 56
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
not.b
bf [21]

:[20]
push.v self.hitbox_mode
conv.v.b
not.b
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
pushi.e 1
conv.i.v
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
pushi.e -1
pushi.e 1
push.v [array]self.mysprite
call.i draw_sprite_ext(argc=9)
popz.v

:[24]
pushi.e 57
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
not.b
bf [26]

:[25]
push.v self.hitbox_mode
conv.v.b
not.b
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
pushi.e 1
conv.i.v
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
pushi.e -1
pushi.e 2
push.v [array]self.mysprite
call.i draw_sprite_ext(argc=9)
popz.v

:[29]
pushi.e 72
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [33]

:[30]
push.v self.hitbox_mode
pushi.e 0
cmp.i.v EQ
bf [32]

:[31]
pushi.e 1
pop.v.i self.hitbox_mode
b [33]

:[32]
pushi.e 0
pop.v.i self.hitbox_mode

:[33]
pushi.e 3
pop.v.i self.ii
push.v self.hitbox_mode
conv.v.b
bf [35]

:[34]
pushi.e 1
pop.v.i self.ii

:[35]
pushi.e -1
pushi.e 0
push.v [array]self.mysprite
call.i sprite_get_bbox_left(argc=1)
pop.v.v local.bboxl
pushi.e -1
pushi.e 0
push.v [array]self.mysprite
call.i sprite_get_bbox_top(argc=1)
pop.v.v local.bboxu
pushi.e -1
pushi.e 0
push.v [array]self.mysprite
call.i sprite_get_bbox_right(argc=1)
pop.v.v local.bboxr
pushi.e -1
pushi.e 0
push.v [array]self.mysprite
call.i sprite_get_bbox_bottom(argc=1)
pop.v.v local.bboxd
pushi.e 2
conv.i.v
call.i draw_set_font(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[36]
push.v self.i
push.v self.ii
cmp.v.v LT
bf [48]

:[37]
push.v self.i
pushi.e 0
cmp.i.v EQ
bf [39]

:[38]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[39]
push.v self.i
pushi.e 1
cmp.i.v EQ
bf [41]

:[40]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[41]
pushi.e 0
conv.b.v
push.v self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.yy
pushi.e 2
mul.i.v
add.v.v
pushi.e 1
add.i.v
push.v self.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.xx
pushi.e 2
mul.i.v
add.v.v
pushi.e 1
add.i.v
push.v self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.yy
pushi.e 2
mul.i.v
add.v.v
pushi.e 1
sub.i.v
push.v self.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.xx
pushi.e 2
mul.i.v
add.v.v
pushi.e 1
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.i
pushi.e 0
cmp.i.v EQ
bf [43]

:[42]
pushi.e 0
conv.b.v
push.v self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.yy
pushi.e 2
mul.i.v
add.v.v
pushi.e 1
add.i.v
push.v self.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.xx
pushi.e 2
mul.i.v
add.v.v
pushi.e 119
sub.i.v
push.v self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.yy
pushi.e 2
mul.i.v
add.v.v
pushi.e 1
sub.i.v
push.v self.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.xx
pushi.e 2
mul.i.v
add.v.v
pushi.e 121
sub.i.v
call.i draw_rectangle(argc=5)
popz.v

:[43]
push.v self.i
pushi.e 1
cmp.i.v EQ
bf [45]

:[44]
pushi.e 0
conv.b.v
push.v self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.yy
pushi.e 2
mul.i.v
add.v.v
pushi.e 1
add.i.v
push.v self.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.xx
pushi.e 2
mul.i.v
add.v.v
pushi.e 121
add.i.v
push.v self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.yy
pushi.e 2
mul.i.v
add.v.v
pushi.e 1
sub.i.v
push.v self.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.xx
pushi.e 2
mul.i.v
add.v.v
pushi.e 119
add.i.v
call.i draw_rectangle(argc=5)
popz.v

:[45]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.xx
call.i string(argc=1)
push.s ", "@29929
add.s.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.yy
call.i string(argc=1)
add.v.v
push.v self.i
pushi.e 20
mul.i.v
pushi.e 0
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mysprite
call.i sprite_get_height(argc=1)
pop.v.v local.height
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mysprite
call.i sprite_get_height(argc=1)
pop.v.v local.width
push.i 16711680
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.b.v
push.v self.y
pushloc.v local.height
push.v self.image_xscale
mul.v.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.yy
pushi.e 2
mul.i.v
sub.v.v
push.v self.x
pushloc.v local.width
push.v self.image_xscale
mul.v.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.xx
pushi.e 2
mul.i.v
sub.v.v
push.v self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.yy
pushi.e 2
mul.i.v
sub.v.v
push.v self.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.xx
pushi.e 2
mul.i.v
sub.v.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.hitbox_mode
conv.v.b
bf [47]

:[46]
push.v self.image_xscale
pop.v.v local.ix
push.v self.image_yscale
pop.v.v local.iy
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.d 0.5
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.y
pushloc.v local.bboxd
pushloc.v local.iy
mul.v.v
add.v.v
push.v self.x
pushloc.v local.bboxr
pushloc.v local.ix
mul.v.v
add.v.v
push.v self.y
pushloc.v local.bboxu
pushloc.v local.iy
mul.v.v
add.v.v
push.v self.x
pushloc.v local.bboxl
pushloc.v local.ix
mul.v.v
add.v.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[47]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [36]

:[48]
pushi.e 49
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [50]

:[49]
pushi.e 0
pop.v.i self.s

:[50]
pushi.e 50
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [52]

:[51]
pushi.e 1
pop.v.i self.s

:[52]
pushi.e 51
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [54]

:[53]
pushi.e 2
pop.v.i self.s

:[54]
pushi.e 5
pop.v.i local.m
pushi.e 40
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [62]

:[55]
push.v self.movetimer
push.e 1
add.i.v
pop.v.v self.movetimer
pushi.e 0
pop.v.i self.go
push.v self.movetimer
pushloc.v local.m
cmp.v.v GTE
bf [57]

:[56]
pushi.e 1
pop.v.i self.go

:[57]
push.v self.go
conv.v.b
bf [59]

:[58]
push.v self.hitbox_mode
conv.v.b
not.b
b [60]

:[59]
push.e 0

:[60]
bf [62]

:[61]
pushi.e -1
push.v self.s
conv.v.i
push.v [array]self.yy
pushi.e 1
sub.i.v
pushi.e -1
push.v self.s
conv.v.i
push.v [array]self.xx
pushi.e -1
push.v self.s
conv.v.i
push.v [array]self.mysprite
call.i sprite_set_offset(argc=3)
popz.v

:[62]
pushi.e 38
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [70]

:[63]
push.v self.movetimer
push.e 1
add.i.v
pop.v.v self.movetimer
pushi.e 0
pop.v.i self.go
push.v self.movetimer
pushloc.v local.m
cmp.v.v GTE
bf [65]

:[64]
pushi.e 1
pop.v.i self.go

:[65]
push.v self.go
conv.v.b
bf [67]

:[66]
push.v self.hitbox_mode
conv.v.b
not.b
b [68]

:[67]
push.e 0

:[68]
bf [70]

:[69]
pushi.e -1
push.v self.s
conv.v.i
push.v [array]self.yy
pushi.e 1
add.i.v
pushi.e -1
push.v self.s
conv.v.i
push.v [array]self.xx
pushi.e -1
push.v self.s
conv.v.i
push.v [array]self.mysprite
call.i sprite_set_offset(argc=3)
popz.v

:[70]
pushi.e 37
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [78]

:[71]
push.v self.movetimer
push.e 1
add.i.v
pop.v.v self.movetimer
pushi.e 0
pop.v.i self.go
push.v self.movetimer
pushloc.v local.m
cmp.v.v GTE
bf [73]

:[72]
pushi.e 1
pop.v.i self.go

:[73]
push.v self.go
conv.v.b
bf [75]

:[74]
push.v self.hitbox_mode
conv.v.b
not.b
b [76]

:[75]
push.e 0

:[76]
bf [78]

:[77]
pushi.e -1
push.v self.s
conv.v.i
push.v [array]self.yy
pushi.e -1
push.v self.s
conv.v.i
push.v [array]self.xx
pushi.e 1
add.i.v
pushi.e -1
push.v self.s
conv.v.i
push.v [array]self.mysprite
call.i sprite_set_offset(argc=3)
popz.v

:[78]
pushi.e 39
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [86]

:[79]
push.v self.movetimer
push.e 1
add.i.v
pop.v.v self.movetimer
pushi.e 0
pop.v.i self.go
push.v self.movetimer
pushloc.v local.m
cmp.v.v GTE
bf [81]

:[80]
pushi.e 1
pop.v.i self.go

:[81]
push.v self.go
conv.v.b
bf [83]

:[82]
push.v self.hitbox_mode
conv.v.b
not.b
b [84]

:[83]
push.e 0

:[84]
bf [86]

:[85]
pushi.e -1
push.v self.s
conv.v.i
push.v [array]self.yy
pushi.e -1
push.v self.s
conv.v.i
push.v [array]self.xx
pushi.e 1
sub.i.v
pushi.e -1
push.v self.s
conv.v.i
push.v [array]self.mysprite
call.i sprite_set_offset(argc=3)
popz.v

:[86]
push.v self.hitbox_mode
conv.v.b
bf [92]

:[87]
pushi.e 39
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [89]

:[88]
push.v local.bboxr
push.e 1
add.i.v
pop.v.v local.bboxr

:[89]
pushi.e 37
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [91]

:[90]
push.v local.bboxr
push.e 1
sub.i.v
pop.v.v local.bboxr

:[91]
pushloc.v local.bboxd
pushloc.v local.bboxr
pushloc.v local.bboxu
pushloc.v local.bboxl
pushi.e -1
pushi.e 0
push.v [array]self.mysprite
call.i sprite_set_bbox(argc=5)
popz.v

:[92]
pushi.e 83
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [96]

:[93]
pushi.e 258
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushloc.v local.bboxd
pushloc.v local.bboxr
pushloc.v local.bboxu
pushloc.v local.bboxl
pushi.e -1
pushi.e 0
push.v [array]self.sprite
call.i sprite_set_bbox(argc=5)
popz.v
pushi.e 0
pop.v.i self.i

:[94]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [96]

:[95]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.yy
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.xx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.sprite
call.i sprite_set_offset(argc=3)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [94]

:[96]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "1 or 2 or 3:select sprite to move\nPress 4 or 5 or 6:Change sprite\nPress 7 or 8 or 9: Visibility toggle\nArrows: Adjust.\nH: Edit hitbox of Sprite1\nS: Save changes (this play session only)"@29932
conv.s.v
pushi.e 280
conv.i.v
pushi.e 20
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 82
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [98]

:[97]
call.i room_restart(argc=0)
popz.v

:[98]
pushi.e 13
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [100]

:[99]
pushi.e 866
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v

:[100]
pushi.e 45
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [end]

:[101]
call.i room_goto_next(argc=0)
popz.v

:[end]