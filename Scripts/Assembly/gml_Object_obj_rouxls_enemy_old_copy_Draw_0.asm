.localvar 2 arguments
.localvar 15466 xpos 18369
.localvar 26696 turretbody 18370
.localvar 26817 puddx 18371
.localvar 26818 puddy 18372
.localvar 12080 xoff 18373
.localvar 14488 ripple 18374
.localvar 26263 debugstring 18375

:[0]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [2]

:[1]
push.d 0.5
conv.d.v
call.i gml_Script_scr_enemyhurt_tired_after_damage(argc=1)
popz.v
call.i gml_Script_scr_enemy_drawhurt_generic(argc=0)
popz.v

:[2]
pushi.e 0
pop.v.i self.fixy
pushi.e -5
pushi.e 221
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 10
pop.v.i self.fixy

:[4]
pushi.e -5
pushi.e 221
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
bf [6]

:[5]
pushi.e 26
pop.v.i self.fixy

:[6]
push.v self.x
pushi.e 34
add.i.v
push.v self.thrash
pushi.e -9
pop.v.v [stacktop]self.xx
push.v self.y
pushi.e 108
add.i.v
push.v self.thrash
pushi.e -9
pop.v.v [stacktop]self.yy
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [24]

:[7]
push.v self.fsiner
pushi.e 1
add.i.v
pop.v.v self.fsiner
push.v self.saberanim
conv.v.b
bf [13]

:[8]
push.v self.thissprite
push.v self.sabersprite
cmp.v.v NEQ
bf [10]

:[9]
pushi.e 0
pop.v.i self.siner
push.v self.sabersprite
pop.v.v self.thissprite
b [12]

:[10]
push.v self.siner
pushi.e 3
cmp.i.v LT
bf [12]

:[11]
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner

:[12]
b [15]

:[13]
push.v self.siner
push.d 0.16666666666666666
add.d.v
pop.v.v self.siner
push.v self.idlesprite
pop.v.v self.thissprite
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v GTE
bf [15]

:[14]
push.v self.sparedsprite
pop.v.v self.thissprite

:[15]
push.v self.thrashcon
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
push.v self.x
b [18]

:[17]
push.v self.remx

:[18]
pop.v.v local.xpos
push.v self.thrashcon
pushi.e 2
cmp.i.v GT
bf [20]

:[19]
push.v self.thrashcon
pushi.e 6
cmp.i.v NEQ
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
push.v self.y
push.v self.floatheight
add.v.v
pushloc.v local.xpos
push.v self.siner
push.v self.thissprite
call.i gml_Script_draw_monster_body_part(argc=4)
popz.v
b [24]

:[23]
push.v self.y
push.v self.thrash
pushi.e -9
push.v [stacktop]self.s
push.v self.thrash
pushi.e -9
push.v [stacktop]self.walkc
mul.v.v
add.v.v
push.v self.fixy
add.v.v
pushloc.v local.xpos
push.v self.siner
push.v self.thissprite
call.i gml_Script_draw_monster_body_part(argc=4)
popz.v

:[24]
push.v self.becomeflash
pushi.e 0
cmp.i.v EQ
bf [26]

:[25]
pushi.e 0
pop.v.i self.flash

:[26]
pushi.e 0
pop.v.i self.becomeflash
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [28]

:[27]
push.i 231204
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 220
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 221
pop.v.v [array]self.flag
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 222
pop.v.v [array]self.flag

:[28]
push.v self.thrash
pushi.e -9
pushi.e 0
push.v [array]self.part
pushi.e 2
cmp.i.v EQ
pop.v.b local.turretbody
pushi.e 3
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.s
push.v self.remx
pushloc.v local.turretbody
conv.v.b
bf [30]

:[29]
pushi.e 18
conv.i.v
b [31]

:[30]
pushi.e 34
conv.i.v

:[31]
add.v.v
pop.v.v local.puddx
push.v self.remy
pushi.e 173
add.i.v
push.v self.thrash
pushi.e -9
push.v [stacktop]self.s
push.v self.thrash
pushi.e -9
push.v [stacktop]self.walkc
mul.v.v
pushi.e 4
conv.i.d
div.d.v
add.v.v
pop.v.v local.puddy
pushloc.v local.puddx
push.v self.puddle
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.remy
pushi.e 173
add.i.v
push.v self.thrash
pushi.e -9
push.v [stacktop]self.s
push.v self.thrash
pushi.e -9
push.v [stacktop]self.wsiner
push.v self.thrash
pushi.e -9
push.v [stacktop]self.wsinerrate
add.v.v
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
mul.v.v
pushi.e 4
conv.i.d
div.d.v
add.v.v
push.v self.puddle
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.thrashcon
pushi.e 2
cmp.i.v LT
bt [33]

:[32]
push.v self.thrashcon
pushi.e 5
cmp.i.v GT
b [34]

:[33]
push.e 1

:[34]
bf [39]

:[35]
pushi.e 1
conv.i.v
push.i 65280
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushloc.v local.puddy
pushloc.v local.puddx
pushloc.v local.turretbody
conv.v.b
bf [37]

:[36]
pushi.e 3
conv.i.v
b [38]

:[37]
pushi.e 1
conv.i.v

:[38]
pushi.e 2070
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[39]
pushloc.v local.turretbody
conv.v.b
bf [41]

:[40]
pushi.e 2
conv.i.v
b [42]

:[41]
pushi.e 0
conv.i.v

:[42]
push.v self.puddle
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.thrashmode
pushi.e 0
cmp.i.v EQ
bf [43]

:[43]
push.v self.thrashmode
pushi.e 1
cmp.i.v EQ
bf [119]

:[44]
push.v self.thrashcon
pushi.e 0
cmp.i.v EQ
bf [48]

:[45]
pushi.e 0
pop.v.i self.thrashtimer
pushi.e 1
pop.v.i self.thrashcon
pushi.e 0
pop.v.i local.xoff
pushloc.v local.turretbody
conv.v.b
bf [47]

:[46]
pushi.e 10
pop.v.i local.xoff
pushi.e 751
conv.i.v
push.v self.puddle
pushi.e -9
push.v [stacktop]self.y
pushi.e 4
add.i.v
push.v self.puddle
pushi.e -9
push.v [stacktop]self.x
pushi.e 60
sub.i.v
pushloc.v local.xoff
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.depth
pushi.e 1
sub.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth

:[47]
pushi.e 751
conv.i.v
push.v self.puddle
pushi.e -9
push.v [stacktop]self.y
pushi.e 4
add.i.v
push.v self.puddle
pushi.e -9
push.v [stacktop]self.x
pushi.e 30
sub.i.v
pushloc.v local.xoff
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.depth
pushi.e 1
sub.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 751
conv.i.v
push.v self.puddle
pushi.e -9
push.v [stacktop]self.y
pushi.e 4
add.i.v
push.v self.puddle
pushi.e -9
push.v [stacktop]self.x
pushi.e 30
add.i.v
pushloc.v local.xoff
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.depth
pushi.e 1
sub.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 751
conv.i.v
push.v self.puddle
pushi.e -9
push.v [stacktop]self.y
pushi.e 6
add.i.v
push.v self.puddle
pushi.e -9
push.v [stacktop]self.x
pushloc.v local.xoff
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.depth
pushi.e 2
sub.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth

:[48]
push.v self.thrashcon
pushi.e 1
cmp.i.v EQ
bf [56]

:[49]
pushi.e 0
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.wsinerrate
push.v self.y
push.v self.remy
pushi.e 10
sub.i.v
cmp.v.v LT
bf [51]

:[50]
pushi.e 1
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.drawfeet

:[51]
push.v self.y
pushi.e 10
cmp.i.v GTE
bf [53]

:[52]
push.v self.thrash
pushi.e -9
dup.i 4
push.v [stacktop]self.wsiner
push.d 1.6
add.d.v
pop.i.v [stacktop]self.wsiner
push.v self.y
pushi.e 4
sub.i.v
pop.v.v self.y
b [56]

:[53]
push.v self.headattack
conv.v.b
bf [55]

:[54]
push.d 0.75
conv.d.v
call.i arcsin(argc=1)
pushi.e 10
mul.i.v
pop.v.v self.thrashtimer

:[55]
pushi.e 15
conv.i.v
call.i irandom(argc=1)
pushi.e 15
add.i.v
pop.v.v self.aimtime
pushi.e 2
pop.v.i self.thrashcon
pushi.e 0
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.wsinerrate

:[56]
push.v self.thrashcon
pushi.e 2
cmp.i.v EQ
bf [89]

:[57]
push.v self.thrashtimer
push.e 1
add.i.v
pop.v.v self.thrashtimer
push.v self.thrashtimer
pushi.e 8
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [62]

:[58]
pushi.e 752
conv.i.v
push.v self.puddle
pushi.e -9
push.v [stacktop]self.y
push.v self.puddle
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v local.ripple
pushi.e 2
conv.i.v
push.d 0.1
conv.d.v
pushi.e 1
push.v self.y
pushi.e 90
sub.i.v
pushi.e 45
conv.i.d
div.d.v
sub.v.i
call.i clamp(argc=3)
pushloc.v local.ripple
pushi.e -9
pop.v.v [stacktop]self.maxsize
pushi.e 0
pushloc.v local.ripple
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushloc.v local.turretbody
conv.v.b
bf [60]

:[59]
pushi.e 1
conv.i.v
b [61]

:[60]
pushi.e 0
conv.i.v

:[61]
pushloc.v local.ripple
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.puddle
pushi.e -9
push.v [stacktop]self.depth
pushi.e 1
sub.i.v
pushloc.v local.ripple
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 0
pop.v.i self.submerged

:[62]
push.v self.thrashtimer
push.v self.aimtime
cmp.v.v LTE
bt [64]

:[63]
push.v self.headattack
conv.v.b
b [65]

:[64]
push.e 1

:[65]
bf [73]

:[66]
push.v self.headattack
conv.v.b
bf [68]

:[67]
pushi.e 40
conv.i.v
b [69]

:[68]
pushi.e 10
conv.i.v

:[69]
push.v self.thrashtimer
push.v self.headattack
conv.v.b
bf [71]

:[70]
pushi.e 10
conv.i.v
b [72]

:[71]
pushi.e 5
conv.i.v

:[72]
div.v.v
call.i sin(argc=1)
pushi.e 40
mul.i.v
sub.v.v
pop.v.v self.y

:[73]
push.v self.headattack
conv.v.b
bf [76]

:[74]
push.v self.y
pushi.e 10
cmp.i.v LTE
bf [76]

:[75]
pushglb.v global.turntimer
pushi.e 40
cmp.i.v LTE
b [77]

:[76]
push.e 0

:[77]
bf [79]

:[78]
pushi.e 0
pop.v.i self.headattack
pushi.e 0
pop.v.i self.thrashtimer
pushi.e 5
pop.v.i self.thrashcon
b [89]

:[79]
push.v self.headattack
conv.v.b
not.b
bf [81]

:[80]
push.v self.thrashtimer
push.v self.aimtime
pushi.e 25
add.i.v
cmp.v.v GTE
b [82]

:[81]
push.e 0

:[82]
bf [84]

:[83]
pushi.e 0
pop.v.i self.thrashtimer
pushi.e 3
pop.v.i self.thrashcon
pushi.e 1
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.moving
push.v self.thrash
pushi.e -9
push.v [stacktop]self.s
push.v self.thrash
pushi.e -9
push.v [stacktop]self.walkc
mul.v.v
push.v self.fixy
add.v.v
pop.v.v self.floatheight
b [89]

:[84]
push.v self.headattack
conv.v.b
not.b
bf [86]

:[85]
push.v self.thrashtimer
push.v self.aimtime
pushi.e 10
add.i.v
cmp.v.v GTE
b [87]

:[86]
push.e 0

:[87]
bf [89]

:[88]
push.v self.thrash
pushi.e -9
dup.i 4
push.v [stacktop]self.wsiner
push.d 1.6
push.v self.advancespeed
pushi.e 4
conv.i.d
div.d.v
mul.v.d
add.v.v
pop.i.v [stacktop]self.wsiner

:[89]
push.v self.thrashcon
pushi.e 3
cmp.i.v EQ
bf [93]

:[90]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 200
add.i.v
cmp.v.v GTE
bf [92]

:[91]
push.v self.thrash
pushi.e -9
dup.i 4
push.v [stacktop]self.wsiner
push.d 1.6
push.v self.advancespeed
pushi.e 8
conv.i.d
div.d.v
mul.v.d
add.v.v
pop.i.v [stacktop]self.wsiner
push.v self.x
push.v self.advancespeed
sub.v.v
pop.v.v self.x
b [93]

:[92]
pushi.e 4
pop.v.i self.thrashcon

:[93]
push.v self.thrashcon
pushi.e 4
cmp.i.v EQ
bf [96]

:[94]
push.v self.thrashtimer
push.e 1
add.i.v
pop.v.v self.thrashtimer
push.v self.thrashtimer
pushi.e 15
cmp.i.v GTE
bf [96]

:[95]
pushi.e 5
pop.v.i self.thrashcon
pushi.e 0
pop.v.i self.thrashtimer

:[96]
push.v self.thrashcon
pushi.e 5
cmp.i.v EQ
bf [100]

:[97]
push.v self.x
push.v self.remx
pushi.e 6
sub.i.v
cmp.v.v LT
bf [99]

:[98]
push.v self.x
push.v self.returnspeed
add.v.v
pop.v.v self.x
push.v self.thrash
pushi.e -9
dup.i 4
push.v [stacktop]self.wsiner
push.d 1.6
push.v self.returnspeed
pushi.e 6
conv.i.d
div.d.v
mul.v.d
sub.v.v
pop.i.v [stacktop]self.wsiner
b [100]

:[99]
push.v self.remx
pop.v.v self.x
pushi.e 6
pop.v.i self.thrashcon
pushi.e 0
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.moving

:[100]
push.v self.thrashcon
pushi.e 6
cmp.i.v EQ
bf [113]

:[101]
push.v self.submerged
conv.v.b
not.b
bf [103]

:[102]
push.v self.y
push.v self.remy
pushi.e 18
sub.i.v
cmp.v.v GT
b [104]

:[103]
push.e 0

:[104]
bf [108]

:[105]
pushi.e 0
pop.v.i local.xoff
pushloc.v local.turretbody
conv.v.b
bf [107]

:[106]
pushi.e 10
pop.v.i local.xoff
pushi.e 751
conv.i.v
push.v self.puddle
pushi.e -9
push.v [stacktop]self.y
pushi.e 4
add.i.v
push.v self.puddle
pushi.e -9
push.v [stacktop]self.x
pushi.e 60
sub.i.v
pushloc.v local.xoff
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.depth
pushi.e 1
sub.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth

:[107]
pushi.e 751
conv.i.v
push.v self.puddle
pushi.e -9
push.v [stacktop]self.y
pushi.e 4
add.i.v
push.v self.puddle
pushi.e -9
push.v [stacktop]self.x
pushi.e 30
sub.i.v
pushloc.v local.xoff
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.depth
pushi.e 1
sub.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 751
conv.i.v
push.v self.puddle
pushi.e -9
push.v [stacktop]self.y
pushi.e 4
add.i.v
push.v self.puddle
pushi.e -9
push.v [stacktop]self.x
pushi.e 30
add.i.v
pushloc.v local.xoff
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.depth
pushi.e 1
sub.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 751
conv.i.v
push.v self.puddle
pushi.e -9
push.v [stacktop]self.y
pushi.e 6
add.i.v
push.v self.puddle
pushi.e -9
push.v [stacktop]self.x
pushloc.v local.xoff
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.depth
pushi.e 2
sub.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1
pop.v.i self.submerged

:[108]
push.v self.y
push.v self.remy
pushi.e 10
sub.i.v
cmp.v.v GT
bf [110]

:[109]
pushi.e 0
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.drawfeet

:[110]
push.v self.y
push.v self.remy
pushi.e 4
sub.i.v
cmp.v.v LTE
bf [112]

:[111]
push.v self.y
pushi.e 4
add.i.v
pop.v.v self.y
push.v self.thrash
pushi.e -9
dup.i 4
push.v [stacktop]self.wsiner
push.d 0.8
sub.d.v
pop.i.v [stacktop]self.wsiner
b [113]

:[112]
push.v self.remy
pop.v.v self.y
push.v self.remx
pop.v.v self.x
pushi.e 0
pop.v.i self.thrashcon
pushi.e 0
pop.v.i self.thrashmode
push.d 0.8
push.v self.thrash
pushi.e -9
pop.v.d [stacktop]self.wsinerrate
pushi.e 8
pop.v.i self.advancespeed
pushi.e 6
pop.v.i self.returnspeed

:[113]
push.v self.thrashcon
pushi.e 7
cmp.i.v EQ
bf [119]

:[114]
push.v self.thrashtimer
pushi.e 50
cmp.i.v EQ
bf [116]

:[115]
pushi.e 178
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.a

:[116]
push.v self.thrashtimer
pushi.e 75
cmp.i.v LT
bf [118]

:[117]
push.v self.thrashtimer
push.e 1
add.i.v
pop.v.v self.thrashtimer
push.v self.thrash
pushi.e -9
dup.i 4
push.v [stacktop]self.wsiner
push.d 0.8
sub.d.v
pop.i.v [stacktop]self.wsiner
b [119]

:[118]
push.v self.remx
pop.v.v self.x
pushi.e 6
pop.v.i self.thrashcon
pushi.e 0
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.moving
pushi.e 0
pop.v.i self.returnease
pushi.e 0
pop.v.i self.thrashtimer

:[119]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [end]

:[120]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.mnfight
pushi.e 7
cmp.i.v EQ
bf [122]

:[121]
push.s ""@157
conv.s.v
push.v self.y
push.v self.x
pushi.e 200
sub.i.v
call.i draw_text(argc=3)
popz.v

:[122]
pushi.e 905
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [126]

:[123]
push.s ""@157
pop.v.s local.debugstring
push.v self.thrash
pushi.e -9
push.v [stacktop]self.dbselect
pushi.e 1
cmp.i.v EQ
bf [125]

:[124]
push.v local.debugstring
push.s ""@157
add.s.v
pop.v.v local.debugstring

:[125]
pushloc.v local.debugstring
call.i gml_Script_scr_debug_print_persistent(argc=1)
popz.v

:[126]
pushi.e 66
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [128]

:[127]
push.v self.thrashmode
push.e 1
add.i.v
pop.v.v self.thrashmode

:[128]
push.v self.thrashmode
pushi.e 2
cmp.i.v GTE
bf [130]

:[129]
pushi.e 0
pop.v.i self.thrashmode

:[130]
push.v self.thrashmode
pushi.e 0
cmp.i.v EQ
bf [end]

:[131]
push.v self.thrash
pushi.e -9
push.v [stacktop]self.dbselect
push.v self.thrash
pushi.e -9
pop.v.v [stacktop]self.drawfeet

:[end]