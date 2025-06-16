.localvar 2 arguments
.localvar 15466 xpos 13781
.localvar 26696 turretbody 13782
.localvar 26817 puddx 13783
.localvar 26818 puddy 13784
.localvar 26819 _wheels 13785
.localvar 12080 xoff 13786
.localvar 14488 ripple 13788
.localvar 26263 debugstring 13789

:[0]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [10]

:[1]
pushi.e 0
conv.i.v
call.i gml_Script_scr_enemyhurt_tired_after_damage(argc=1)
popz.v
push.v self.hurttimer
pushi.e 1
sub.i.v
pop.v.v self.hurttimer
push.v self.hurttimer
pushi.e 0
cmp.i.v LT
bf [3]

:[2]
pushi.e 0
pop.v.i self.state
b [10]

:[3]
push.v self.hurtshake
pushi.e 1
add.i.v
pop.v.v self.hurtshake
push.v self.hurtshake
pushi.e 1
cmp.i.v GT
bf [9]

:[4]
push.v self.shakex
pushi.e 0
cmp.i.v GT
bf [6]

:[5]
push.v self.shakex
pushi.e 1
sub.i.v
pop.v.v self.shakex

:[6]
push.v self.shakex
pushi.e 0
cmp.i.v LT
bf [8]

:[7]
push.v self.shakex
pushi.e 1
add.i.v
pop.v.v self.shakex

:[8]
push.v self.shakex
neg.v
pop.v.v self.shakex
pushi.e 0
pop.v.i self.hurtshake

:[9]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.hurtspriteoffy
add.v.v
push.v self.x
push.v self.shakex
add.v.v
push.v self.hurtspriteoffx
add.v.v
pushi.e 0
conv.i.v
push.v self.hurtsprite
call.i draw_sprite_ext(argc=9)
popz.v

:[10]
pushi.e 0
pop.v.i self.fixy
pushi.e -5
pushi.e 221
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [12]

:[11]
pushi.e 10
pop.v.i self.fixy

:[12]
pushi.e -5
pushi.e 221
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
bf [14]

:[13]
pushi.e 26
pop.v.i self.fixy

:[14]
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
bf [32]

:[15]
push.v self.fsiner
pushi.e 1
add.i.v
pop.v.v self.fsiner
push.v self.saberanim
conv.v.b
bf [21]

:[16]
push.v self.thissprite
push.v self.sabersprite
cmp.v.v NEQ
bf [18]

:[17]
pushi.e 0
pop.v.i self.siner
push.v self.sabersprite
pop.v.v self.thissprite
b [20]

:[18]
push.v self.siner
pushi.e 3
cmp.i.v LT
bf [20]

:[19]
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner

:[20]
b [23]

:[21]
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
bf [23]

:[22]
push.v self.sparedsprite
pop.v.v self.thissprite

:[23]
push.v self.thrashcon
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
push.v self.x
b [26]

:[25]
push.v self.remx

:[26]
pop.v.v local.xpos
push.v self.thrashcon
pushi.e 2
cmp.i.v GT
bf [28]

:[27]
push.v self.thrashcon
pushi.e 6
cmp.i.v NEQ
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
push.v self.y
push.v self.floatheight
add.v.v
pushloc.v local.xpos
push.v self.siner
push.v self.thissprite
call.i gml_Script_draw_monster_body_part(argc=4)
popz.v
b [32]

:[31]
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

:[32]
push.v self.becomeflash
pushi.e 0
cmp.i.v EQ
bf [34]

:[33]
pushi.e 0
pop.v.i self.flash

:[34]
pushi.e 0
pop.v.i self.becomeflash
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [35]

:[35]
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
bf [37]

:[36]
pushi.e 18
conv.i.v
b [38]

:[37]
pushi.e 34
conv.i.v

:[38]
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
push.v self.depthChange
conv.v.b
not.b
bf [40]

:[39]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [41]

:[40]
push.e 0

:[41]
bf [43]

:[42]
pushi.e 1
pop.v.i self.depthChange
push.v self.thrash
pushi.e -9
push.v [stacktop]self.depth
pushi.e 1
add.i.v
push.v self.puddle
pushi.e -9
pop.v.v [stacktop]self.depth
b [48]

:[43]
push.v self.depthChange
conv.v.b
bf [45]

:[44]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [46]

:[45]
push.e 0

:[46]
bf [48]

:[47]
pushi.e 0
pop.v.i self.depthChange
push.v self.simcity
pushi.e -9
push.v [stacktop]self.depth
pushi.e 1
add.i.v
push.v self.puddle
pushi.e -9
pop.v.v [stacktop]self.depth

:[48]
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
bt [50]

:[49]
push.v self.thrashcon
pushi.e 5
cmp.i.v GT
b [51]

:[50]
push.e 1

:[51]
bf [56]

:[52]
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
pushloc.v local.puddy
pushloc.v local.puddx
pushloc.v local.turretbody
conv.v.b
bf [54]

:[53]
pushi.e 3
conv.i.v
b [55]

:[54]
pushi.e 1
conv.i.v

:[55]
pushi.e 2070
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[56]
pushloc.v local.turretbody
conv.v.b
bf [58]

:[57]
pushi.e 2
conv.i.v
b [59]

:[58]
pushi.e 0
conv.i.v

:[59]
push.v self.puddle
pushi.e -9
pop.v.v [stacktop]self.image_index
pushi.e 730
pushi.e 2
push.v [array]self.part
pushi.e 1
cmp.i.v EQ
pop.v.b local._wheels
push.v self.thrashmode
pushi.e 0
cmp.i.v EQ
bf [60]

:[60]
push.v self.thrashmode
pushi.e 1
cmp.i.v EQ
bf [165]

:[61]
push.v self.thrashcon
pushi.e 0
cmp.i.v EQ
bf [65]

:[62]
pushi.e 0
pop.v.i self.thrashtimer
pushi.e 1
pop.v.i self.thrashcon
pushi.e 0
pop.v.i local.xoff
pushloc.v local.turretbody
conv.v.b
bf [64]

:[63]
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

:[64]
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

:[65]
push.v self.thrashcon
pushi.e 1
cmp.i.v EQ
bf [89]

:[66]
pushi.e 0
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.wsinerrate
push.v self.y
push.v self.remy
pushi.e 10
sub.i.v
cmp.v.v LT
bf [68]

:[67]
pushi.e 1
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.drawfeet

:[68]
push.v self.y
call.i gml_Script_cameray(argc=0)
push.v self.headattack
conv.v.b
not.b
bf [70]

:[69]
pushi.e 45
conv.i.v
b [71]

:[70]
pushi.e 10
conv.i.v

:[71]
add.v.v
cmp.v.v GTE
bf [73]

:[72]
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
b [89]

:[73]
push.v self.headattack
conv.v.b
bf [75]

:[74]
push.d 0.75
conv.d.v
call.i arcsin(argc=1)
pushi.e 10
mul.i.v
pop.v.v self.thrashtimer

:[75]
pushi.e 15
conv.i.v
call.i irandom(argc=1)
pushi.e 15
add.i.v
pop.v.v self.aimtime
push.v self.headattack
conv.v.b
not.b
bf [87]

:[76]
pushi.e 10
pop.v.i self.aimtime
pushi.e 730
pushi.e 2
push.v [array]self.part
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [81]

:[77]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [82]

:[78]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [83]

:[79]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [84]

:[80]
b [86]

:[81]
push.v self.aimtime
push.d 4.71238898038469
div.d.v
pop.v.v self.height_multiplier
b [86]

:[82]
push.v self.aimtime
push.d 4.71238898038469
div.d.v
pop.v.v self.height_multiplier
push.v self.aimtime
pushi.e 10
sub.i.v
pop.v.v self.thrashtimer
b [86]

:[83]
push.v self.aimtime
push.d 4.71238898038469
div.d.v
pop.v.v self.height_multiplier
b [86]

:[84]
pushi.e 5
pop.v.i self.height_multiplier
b [86]

:[85]
push.v self.thrashtimer
call.i sin(argc=1)
neg.v
pop.v.v self.height_multiplier

:[86]
popz.v
b [88]

:[87]
pushi.e 5
pop.v.i self.height_multiplier

:[88]
pushi.e 2
pop.v.i self.thrashcon
pushi.e 0
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.wsinerrate

:[89]
push.v self.thrashcon
pushi.e 2
cmp.i.v EQ
bf [122]

:[90]
push.v self.thrashtimer
push.e 1
add.i.v
pop.v.v self.thrashtimer
push.v self.thrashtimer
pushi.e 8
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [95]

:[91]
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
bf [93]

:[92]
pushi.e 1
conv.i.v
b [94]

:[93]
pushi.e 0
conv.i.v

:[94]
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

:[95]
push.v self.headattack
conv.v.b
bf [103]

:[96]
call.i gml_Script_cameray(argc=0)
push.v self.headattack
conv.v.b
bf [98]

:[97]
pushi.e 40
conv.i.v
b [99]

:[98]
pushi.e 10
conv.i.v

:[99]
add.v.v
push.v self.thrashtimer
push.v self.headattack
conv.v.b
bf [101]

:[100]
pushi.e 10
conv.i.v
b [102]

:[101]
push.v self.height_multiplier

:[102]
div.v.v
call.i sin(argc=1)
pushi.e 40
mul.i.v
sub.v.v
pop.v.v self.y
b [105]

:[103]
push.v self.thrashtimer
push.v self.aimtime
cmp.v.v LTE
bf [105]

:[104]
call.i gml_Script_cameray(argc=0)
pushi.e 45
add.i.v
push.v self.thrashtimer
push.v self.aimtime
div.v.v
push.d 3.141592653589793
mul.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
sub.v.v
pop.v.v self.y

:[105]
push.v self.headattack
conv.v.b
bf [108]

:[106]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 10
add.i.v
cmp.v.v LTE
bf [108]

:[107]
pushglb.v global.turntimer
pushi.e 40
cmp.i.v LTE
b [109]

:[108]
push.e 0

:[109]
bf [111]

:[110]
pushi.e 0
pop.v.i self.headattack
pushi.e 0
pop.v.i self.thrashtimer
pushi.e 5
pop.v.i self.thrashcon
b [122]

:[111]
push.v self.headattack
conv.v.b
not.b
bf [113]

:[112]
push.v self.thrashtimer
push.v self.aimtime
pushi.e 10
add.i.v
cmp.v.v GTE
b [114]

:[113]
push.e 0

:[114]
bf [116]

:[115]
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
pushi.e 751
conv.i.v
push.v self.puddle
pushi.e -9
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.puddle
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.depth
pushi.e 1
sub.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.advancespeed
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.speed
pushi.e 4
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.yscale
pushi.e 3
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.xscale
b [122]

:[116]
push.v self.headattack
conv.v.b
not.b
bf [122]

:[117]
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
push.v self.headattack
conv.v.b
not.b
bf [119]

:[118]
push.v self.thrashtimer
push.v self.aimtime
sub.v.v
pushi.e 3
mod.i.v
pushi.e 0
cmp.i.v EQ
b [120]

:[119]
push.e 0

:[120]
bf [122]

:[121]
pushi.e 751
conv.i.v
push.v self.puddle
pushi.e -9
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.puddle
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.depth
pushi.e 1
sub.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.advancespeed
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.speed
pushi.e 3
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.yscale
pushi.e 2
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.xscale

:[122]
push.v self.thrashcon
pushi.e 3
cmp.i.v EQ
bf [126]

:[123]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 200
add.i.v
cmp.v.v GTE
bf [125]

:[124]
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
b [126]

:[125]
pushi.e 4
pop.v.i self.thrashcon

:[126]
push.v self.thrashcon
pushi.e 4
cmp.i.v EQ
bf [136]

:[127]
push.v self.thrashtimer
push.e 1
add.i.v
pop.v.v self.thrashtimer
pushloc.v local._wheels
conv.v.b
bf [131]

:[128]
push.v self.thrashtimer
pushi.e 90
cmp.i.v LTE
bf [130]

:[129]
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
b [131]

:[130]
push.v self.thrash
pushi.e -9
dup.i 4
push.v [stacktop]self.wsiner
push.d 0.5
sub.d.v
pop.i.v [stacktop]self.wsiner

:[131]
push.v self.thrashtimer
pushloc.v local._wheels
conv.v.b
bf [133]

:[132]
pushi.e 105
conv.i.v
b [134]

:[133]
pushi.e 15
conv.i.v

:[134]
cmp.v.v GTE
bf [136]

:[135]
pushi.e 5
pop.v.i self.thrashcon
pushi.e 0
pop.v.i self.thrashtimer

:[136]
push.v self.thrashcon
pushi.e 5
cmp.i.v EQ
bf [140]

:[137]
push.v self.x
push.v self.remx
pushi.e 6
sub.i.v
cmp.v.v LT
bf [139]

:[138]
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
b [140]

:[139]
push.v self.remx
pop.v.v self.x
pushi.e 6
pop.v.i self.thrashcon
pushi.e 0
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.moving

:[140]
push.v self.thrashcon
pushi.e 6
cmp.i.v EQ
bf [159]

:[141]
push.v self.submerged
conv.v.b
not.b
bf [143]

:[142]
push.v self.y
push.v self.remy
pushi.e 18
sub.i.v
cmp.v.v GT
b [144]

:[143]
push.e 0

:[144]
bf [154]

:[145]
pushi.e 0
pop.v.i local.xoff
pushloc.v local.turretbody
conv.v.b
bf [147]

:[146]
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
pushi.e -2
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.speed

:[147]
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
pushloc.v local.turretbody
conv.v.b
bf [149]

:[148]
push.d -1.33
conv.d.v
b [150]

:[149]
pushi.e -1
conv.i.v

:[150]
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.speed
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
pushloc.v local.turretbody
conv.v.b
bf [152]

:[151]
push.d 1.33
conv.d.v
b [153]

:[152]
pushi.e 0
conv.i.v

:[153]
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.speed
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
pushi.e 2
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 1
pop.v.i self.submerged

:[154]
push.v self.y
push.v self.remy
pushi.e 10
sub.i.v
cmp.v.v GT
bf [156]

:[155]
pushi.e 0
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.drawfeet

:[156]
push.v self.y
push.v self.remy
pushi.e 4
sub.i.v
cmp.v.v LTE
bf [158]

:[157]
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
b [159]

:[158]
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

:[159]
push.v self.thrashcon
pushi.e 7
cmp.i.v EQ
bf [165]

:[160]
push.v self.thrashtimer
pushi.e 50
cmp.i.v EQ
bf [162]

:[161]
pushi.e 178
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.a

:[162]
push.v self.thrashtimer
pushi.e 75
cmp.i.v LT
bf [164]

:[163]
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
b [165]

:[164]
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

:[165]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [end]

:[166]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 905
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [170]

:[167]
push.s "[B] turn thrash debug on/off"@26821
pop.v.s local.debugstring
push.v self.thrash
pushi.e -9
push.v [stacktop]self.dbselect
pushi.e 1
cmp.i.v EQ
bf [169]

:[168]
push.v local.debugstring
push.s "#up/down/shift: change thrash parts#1-3/Numpad7-9 for specific attacks#4/Numpad 5 for random attack#0/Numpad 0 for random machine"@26822
add.s.v
pop.v.v local.debugstring

:[169]
pushloc.v local.debugstring
call.i gml_Script_scr_debug_print_persistent(argc=1)
popz.v

:[170]
pushi.e 78
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [172]

:[171]
push.v self.thrashmode
push.e 1
add.i.v
pop.v.v self.thrashmode

:[172]
push.v self.thrashmode
pushi.e 2
cmp.i.v GTE
bf [174]

:[173]
pushi.e 0
pop.v.i self.thrashmode

:[174]
push.v self.thrashmode
pushi.e 0
cmp.i.v EQ
bf [end]

:[175]
push.v self.thrash
pushi.e -9
push.v [stacktop]self.dbselect
push.v self.thrash
pushi.e -9
pop.v.v [stacktop]self.drawfeet

:[end]