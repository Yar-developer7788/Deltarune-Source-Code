.localvar 2 arguments

:[0]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.init
conv.v.b
not.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.b self.init
pushi.e 653
pop.v.i self.character_sprite
pushi.e 653
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.actor
pushi.e 0
push.v self.actor
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.actor
pushi.e -9
pop.v.i [stacktop]self.visible

:[5]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.init
conv.v.b
not.b
b [8]

:[7]
push.e 0

:[8]
bf [16]

:[9]
pushi.e 1
pop.v.b self.init
push.v self.spam_car
conv.v.b
bf [11]

:[10]
pushi.e 2059
conv.i.v
b [12]

:[11]
pushi.e 841
conv.i.v

:[12]
pop.v.v self.default_sprite_front
push.v self.spam_car
conv.v.b
bf [14]

:[13]
pushi.e 2058
conv.i.v
b [15]

:[14]
pushi.e 843
conv.i.v

:[15]
pop.v.v self.default_sprite_back
pushi.e 839
pop.v.i self.hurt_sprite_front
pushi.e 840
pop.v.i self.hurt_sprite_back
pushi.e 1467
pop.v.i self.hurt_character_sprite
pushi.e 824
pop.v.i self.character_sprite
pushi.e 824
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.actor
pushi.e 0
push.v self.actor
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.actor
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e -20
pop.v.i self.coaster_offset_x
pushi.e 55
pop.v.i self.coaster_offset_y

:[16]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [18]

:[17]
push.v self.init
conv.v.b
not.b
b [19]

:[18]
push.e 0

:[19]
bf [27]

:[20]
pushi.e 1
pop.v.b self.init
push.v self.spam_car
conv.v.b
bf [22]

:[21]
pushi.e 2059
conv.i.v
b [23]

:[22]
pushi.e 806
conv.i.v

:[23]
pop.v.v self.default_sprite_front
push.v self.spam_car
conv.v.b
bf [25]

:[24]
pushi.e 2058
conv.i.v
b [26]

:[25]
pushi.e 808
conv.i.v

:[26]
pop.v.v self.default_sprite_back
pushi.e 804
pop.v.i self.hurt_sprite_front
pushi.e 805
pop.v.i self.hurt_sprite_back
pushi.e 1510
pop.v.i self.hurt_character_sprite
pushi.e 795
pop.v.i self.character_sprite
pushi.e 795
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.actor
pushi.e 0
push.v self.actor
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.actor
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e -30
pop.v.i self.coaster_offset_x
pushi.e 45
pop.v.i self.coaster_offset_y

:[27]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [29]

:[28]
push.v self.init
conv.v.b
not.b
b [30]

:[29]
push.e 0

:[30]
bf [32]

:[31]
pushi.e 1
pop.v.b self.init
pushi.e 689
pop.v.i self.default_sprite_front
pushi.e 690
pop.v.i self.default_sprite_back
pushi.e 687
pop.v.i self.hurt_sprite_front
pushi.e 688
pop.v.i self.hurt_sprite_back
pushi.e 1854
pop.v.i self.hurt_character_sprite
pushi.e 670
pop.v.i self.character_sprite
pushi.e 670
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.actor
pushi.e 0
push.v self.actor
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.actor
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e -65
pop.v.i self.coaster_offset_x
pushi.e 30
pop.v.i self.coaster_offset_y

:[32]
push.v self.type
pushi.e 4
cmp.i.v EQ
bf [34]

:[33]
push.v self.init
conv.v.b
not.b
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
pushi.e 1
pop.v.b self.init
pushi.e 735
pop.v.i self.default_sprite_front
pushi.e -1
pop.v.i self.default_sprite_back
pushi.e 719
pop.v.i self.character_sprite
pushi.e 719
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.actor
pushi.e 0
push.v self.actor
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.actor
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e -65
pop.v.i self.coaster_offset_x
pushi.e 45
pop.v.i self.coaster_offset_y

:[37]
push.v self.character_sprite
push.v self.actor
pushi.e -9
push.v [stacktop]self.sprite_index
cmp.v.v NEQ
bf [39]

:[38]
push.v self.character_sprite
push.v self.actor
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.actor
pushi.e -9
pop.v.i [stacktop]self.image_index

:[39]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [44]

:[40]
push.v self.animate
conv.v.b
bf [42]

:[41]
push.d 0.25
conv.d.v
b [43]

:[42]
pushi.e 0
conv.i.v

:[43]
push.v self.actor
pushi.e -9
pop.v.v [stacktop]self.image_speed
b [59]

:[44]
pushi.e 0
pop.v.i self.image_speed
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [46]

:[45]
push.v self.actor
pushi.e -9
push.v [stacktop]self.image_index
pushi.e 6
cmp.i.v LT
b [47]

:[46]
push.e 0

:[47]
bf [49]

:[48]
push.v self.actor
pushi.e -9
dup.i 4
push.v [stacktop]self.image_index
push.d 0.25
add.d.v
pop.i.v [stacktop]self.image_index

:[49]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [51]

:[50]
push.v self.actor
pushi.e -9
push.v [stacktop]self.image_index
pushi.e 5
cmp.i.v LT
b [52]

:[51]
push.e 0

:[52]
bf [54]

:[53]
push.v self.actor
pushi.e -9
dup.i 4
push.v [stacktop]self.image_index
push.d 0.25
add.d.v
pop.i.v [stacktop]self.image_index

:[54]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [56]

:[55]
push.v self.actor
pushi.e -9
push.v [stacktop]self.image_index
pushi.e 10
cmp.i.v LT
b [57]

:[56]
push.e 0

:[57]
bf [59]

:[58]
push.v self.actor
pushi.e -9
dup.i 4
push.v [stacktop]self.image_index
push.d 0.5
add.d.v
pop.i.v [stacktop]self.image_index

:[59]
push.v self.stop_siner
pushi.e 1
cmp.i.v EQ
bf [71]

:[60]
pushi.e 0
pop.v.i self.sinerx
call.i gml_Script_camerax(argc=0)
pushi.e 122
add.i.v
push.v self.type
pushi.e 20
mul.i.v
sub.v.v
pop.v.v self.battlecoasterx
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [62]

:[61]
call.i gml_Script_camerax(argc=0)
pushi.e 515
add.i.v
pop.v.v self.battlecoasterx

:[62]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [64]

:[63]
push.v self.battlecoasterx
pushi.e 4
add.i.v
pop.v.v self.battlecoasterx

:[64]
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [70]

:[65]
push.v self.x
push.v self.battlecoasterx
cmp.v.v LT
bf [67]

:[66]
push.v self.x
pushi.e 1
add.i.v
pop.v.v self.x

:[67]
push.v self.x
push.v self.battlecoasterx
cmp.v.v GT
bf [69]

:[68]
push.v self.x
pushi.e 1
sub.i.v
pop.v.v self.x

:[69]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [65]

:[70]
popz.i
b [end]

:[71]
pushi.e 0
pop.v.i self.sinerx
pushi.e 0
pop.v.i self.sinery
push.v self.siner_add0
pushi.e 0
cmp.i.v NEQ
bf [end]

:[72]
push.v self.siner0
push.v self.siner_add0
add.v.v
pop.v.v self.siner0
push.v self.siner_type0
push.s "sin"@6634
cmp.s.v EQ
bf [74]

:[73]
push.v self.siner0
call.i sin(argc=1)
push.v self.siner_amplitude0
mul.v.v
pop.v.v self.sinmove
b [75]

:[74]
push.v self.siner0
call.i cos(argc=1)
push.v self.siner_amplitude0
mul.v.v
pop.v.v self.sinmove

:[75]
push.v self.siner_visual0
pushi.e 1
cmp.i.v EQ
bf [77]

:[76]
push.v self.sinerx
push.v self.siner_direction0
push.v self.sinmove
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.sinerx
push.v self.sinery
push.v self.siner_direction0
push.v self.sinmove
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.sinery
b [end]

:[77]
push.v self.x
push.v self.siner_direction0
push.v self.sinmove
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.x
push.v self.y
push.v self.siner_direction0
push.v self.sinmove
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.y

:[end]