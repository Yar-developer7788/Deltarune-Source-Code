.localvar 2 arguments
.localvar 10809 xscale 12799
.localvar 10810 yscale 12800
.localvar 14365 radial 12801
.localvar 3177 dir 12802

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [10]

:[1]
push.d 0.5
pop.v.d self.image_xscale
push.d 0.5
pop.v.d self.image_yscale
pushi.e 0
pop.v.i self.destroyed
pushi.e 0
pop.v.i self.shotcount
pushi.e 0
pop.v.i self.bouncecount
pushi.e 0
pop.v.i self.shottype
pushi.e 0
pop.v.i self.shottimer
pushi.e 1
pop.v.i self.init
pushi.e 1
pop.v.i self.con
push.v self.boss
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [3]

:[2]
push.v self.boss
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.rembossx
push.v self.boss
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.rembossy
b [4]

:[3]
push.v self.bossx
pop.v.v self.rembossx
push.v self.bossy
pop.v.v self.rembossy

:[4]
pushi.e 1
pop.v.i local.xscale
pushi.e 1
pop.v.i local.yscale
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1
pop.v.i local.xscale
pushi.e 1
pop.v.i local.yscale
pushi.e 3361
pop.v.i self.sprite_index
push.v self.moveframes
push.d 0.8
mul.d.v
pop.v.v self.moveframes
pushi.e 10
pop.v.i self.hp

:[6]
push.s "out"@14331
conv.s.v
pushi.e -1
conv.i.v
pushi.e 20
conv.i.v
pushloc.v local.xscale
push.d 0.5
conv.d.v
push.s "image_xscale"@279
conv.s.v
call.i gml_Script_scr_lerpvar(argc=6)
popz.v
push.s "out"@14331
conv.s.v
pushi.e -1
conv.i.v
pushi.e 20
conv.i.v
pushloc.v local.yscale
push.d 0.5
conv.d.v
push.s "image_yscale"@280
conv.s.v
call.i gml_Script_scr_lerpvar(argc=6)
popz.v
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
pushi.e 2056
pop.v.i self.sprite_index
pushi.e 3
pop.v.i self.hp
pushi.e 12
pop.v.i self.moveframes

:[8]
push.v self.type
pushi.e 4
cmp.i.v EQ
bf [10]

:[9]
pushi.e 2055
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.hp

:[10]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [41]

:[11]
push.v self.bighearttype
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
pushi.e 16
pop.v.i self.moveframes

:[13]
call.i gml_Script_camerax(argc=0)
pushi.e 300
add.i.v
pushi.e 70
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.targetx
call.i gml_Script_cameray(argc=0)
pushi.e 145
add.i.v
pushi.e 70
conv.i.v
pushi.e -70
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.targety
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [27]

:[14]
push.v self.altbiter
pushi.e 0
cmp.i.v GT
bf [16]

:[15]
push.v self.altbiter
pushi.e 3
cmp.i.v LT
b [17]

:[16]
push.e 0

:[17]
bf [22]

:[18]
call.i gml_Script_camerax(argc=0)
pushi.e 150
add.i.v
pop.v.v self.targetx
push.v self.altbiter
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
call.i gml_Script_cameray(argc=0)
pushi.e 240
add.i.v
pop.v.v self.targety
b [21]

:[20]
call.i gml_Script_cameray(argc=0)
pushi.e 75
add.i.v
pop.v.v self.targety

:[21]
b [23]

:[22]
call.i gml_Script_camerax(argc=0)
pushi.e 170
add.i.v
pushi.e 70
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.targetx
call.i gml_Script_cameray(argc=0)
pushi.e 145
add.i.v
pushi.e 60
conv.i.v
pushi.e -60
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.targety

:[23]
push.v self.altbiter
pushi.e 3
cmp.i.v EQ
bf [25]

:[24]
call.i gml_Script_camerax(argc=0)
pushi.e 350
add.i.v
pop.v.v self.targetx
call.i gml_Script_cameray(argc=0)
pushi.e 130
add.i.v
pushi.e 0
conv.i.v
pushi.e -45
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.targety

:[25]
push.v self.altbiter
pushi.e 4
cmp.i.v EQ
bf [27]

:[26]
call.i gml_Script_camerax(argc=0)
pushi.e 350
add.i.v
pop.v.v self.targetx
call.i gml_Script_cameray(argc=0)
pushi.e 160
add.i.v
pushi.e 0
conv.i.v
pushi.e 45
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.targety

:[27]
pushi.e 631
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [30]

:[28]
push.v 698.hearttargettimer
pushi.e 1
cmp.i.v LT
bf [30]

:[29]
push.v self.type
pushi.e 3
cmp.i.v NEQ
b [31]

:[30]
push.e 0

:[31]
bf [34]

:[32]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pushi.e 0
cmp.i.v EQ
bf [34]

:[33]
push.v 631.y
pushi.e 10
add.i.v
pop.v.v self.targety
pushi.e 6
pop.v.i 698.hearttargettimer

:[34]
pushi.e 0
pop.v.i self.movetimer
pushi.e 2
pop.v.i self.con
push.v self.type
pushi.e 0
cmp.i.v EQ
bt [36]

:[35]
push.v self.type
pushi.e 1
cmp.i.v EQ
b [37]

:[36]
push.e 1

:[37]
bf [41]

:[38]
push.v self.boss
pushi.e -9
pushenv [40]

:[39]
pushi.e 1
pop.v.i self.heart_release_con

:[40]
popenv [39]

:[41]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [44]

:[42]
push.v self.movetimer
pushi.e 1
conv.i.d
push.v self.moveframes
div.v.d
add.v.v
pop.v.v self.movetimer
pushi.e 2
conv.i.v
push.v self.movetimer
push.v self.targetx
push.v self.bossx
call.i gml_Script_lerp_ease_out(argc=4)
pop.v.v self.x
pushi.e 2
conv.i.v
push.v self.movetimer
push.v self.targety
push.v self.bossy
call.i gml_Script_lerp_ease_out(argc=4)
pop.v.v self.y
push.v self.movetimer
pushi.e 1
cmp.i.v GTE
bf [44]

:[43]
pushi.e 0
pop.v.i self.movetimer
pushi.e 3
pop.v.i self.con

:[44]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [66]

:[45]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [48]

:[46]
push.v self.altbiter
pushi.e 0
cmp.i.v GT
bf [48]

:[47]
push.v self.altbiter
pushi.e 3
cmp.i.v LT
b [49]

:[48]
push.e 0

:[49]
bf [56]

:[50]
push.v self.movetimer
push.e 1
add.i.v
pop.v.v self.movetimer
push.v self.altbiter
pushi.e 1
cmp.i.v EQ
bf [52]

:[51]
push.v self.movetimer
pushi.e 21
conv.i.d
div.d.v
call.i gml_Script_cameray(argc=0)
pushi.e 75
add.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 240
add.i.v
call.i lerp(argc=3)
pop.v.v self.y

:[52]
push.v self.altbiter
pushi.e 2
cmp.i.v EQ
bf [54]

:[53]
push.v self.movetimer
pushi.e 21
conv.i.d
div.d.v
call.i gml_Script_cameray(argc=0)
pushi.e 240
add.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 75
add.i.v
call.i lerp(argc=3)
pop.v.v self.y

:[54]
push.v self.movetimer
pushi.e 20
cmp.i.v GTE
bf [56]

:[55]
pushi.e 0
pop.v.i self.movetimer
pushi.e 10
pop.v.i self.con
push.v self.y
pop.v.v self.targety

:[56]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [58]

:[57]
push.v self.altbiter
pushi.e 2
cmp.i.v GT
b [59]

:[58]
push.e 0

:[59]
bf [65]

:[60]
push.v self.movetimer
push.e 1
add.i.v
pop.v.v self.movetimer
push.v self.movetimer
pushi.e 1
cmp.i.v EQ
bf [62]

:[61]
pushi.e 242
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v

:[62]
push.v self.movetimer
pushi.e 16
cmp.i.v GTE
bf [64]

:[63]
pushi.e 0
pop.v.i self.movetimer
pushi.e 10
pop.v.i self.con

:[64]
b [66]

:[65]
pushi.e 10
pop.v.i self.con
pushi.e 0
pop.v.i self.movetimer

:[66]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [83]

:[67]
push.v self.movetimer
pushi.e 1
conv.i.d
push.v self.moveframes
div.v.d
add.v.v
pop.v.v self.movetimer
pushi.e 2
conv.i.v
push.v self.movetimer
push.v self.bossx
push.v self.targetx
call.i gml_Script_lerp_ease_in(argc=4)
pop.v.v self.x
pushi.e 2
conv.i.v
push.v self.movetimer
push.v self.bossy
push.v self.targety
call.i gml_Script_lerp_ease_in(argc=4)
pop.v.v self.y
push.v self.movetimer
push.d 0.5
cmp.d.v GT
bf [69]

:[68]
push.v self.type
pushi.e 0
cmp.i.v EQ
b [70]

:[69]
push.e 0

:[70]
bt [76]

:[71]
push.v self.movetimer
push.d 0.5
cmp.d.v GT
bf [74]

:[72]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [74]

:[73]
push.v 697.difficulty
pushi.e 2
cmp.i.v GT
b [75]

:[74]
push.e 0

:[75]
b [77]

:[76]
push.e 1

:[77]
bf [81]

:[78]
push.v self.boss
pushi.e -9
pushenv [80]

:[79]
pushi.e 0
pop.v.i self.heart_release_con

:[80]
popenv [79]

:[81]
push.v self.movetimer
pushi.e 1
cmp.i.v GTE
bf [83]

:[82]
pushi.e 0
pop.v.i self.movetimer
pushi.e 0
pop.v.i self.shottimer
pushi.e 1
pop.v.i self.con

:[83]
push.v self.con
pushi.e 2
cmp.i.v EQ
bt [86]

:[84]
push.v self.con
pushi.e 3
cmp.i.v EQ
bt [86]

:[85]
push.v self.con
pushi.e 10
cmp.i.v EQ
b [87]

:[86]
push.e 1

:[87]
bf [end]

:[88]
pushi.e 5
pop.v.i local.radial
push.v self.x
push.v self.targetx
sub.v.v
push.v self.targetx
push.v self.bossx
sub.v.v
div.v.v
call.i abs(argc=1)
push.d 0.2
cmp.d.v LT
bf [end]

:[89]
push.v self.shottimer
push.e 1
sub.i.v
pop.v.v self.shottimer
push.v self.shottimer
pushi.e 0
cmp.i.v LTE
bf [end]

:[90]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [117]

:[91]
pushi.e 4
pop.v.i self.firedtimer
pushi.e 0
pop.v.i local.dir
push.v self.bighearttype
pushi.e 1
cmp.i.v EQ
bf [93]

:[92]
push.v self.y
push.v 872.y
cmp.v.v LT
b [94]

:[93]
push.e 0

:[94]
bf [96]

:[95]
pushi.e 25
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v local.dir

:[96]
push.v self.bighearttype
pushi.e 1
cmp.i.v EQ
bf [98]

:[97]
push.v self.y
push.v 872.y
cmp.v.v GT
b [99]

:[98]
push.e 0

:[99]
bf [101]

:[100]
pushi.e 10
conv.i.v
call.i random(argc=1)
pushi.e -1
mul.i.v
pushi.e 25
sub.i.v
pop.v.v local.dir

:[101]
pushi.e 0
pop.v.i self.i

:[102]
push.v self.i
pushloc.v local.radial
cmp.v.v LT
bf [114]

:[103]
pushi.e 361
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.radialshot
push.v self.radialshot
pushi.e -9
pushenv [105]

:[104]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v

:[105]
popenv [104]
pushi.e 1377
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.i
pushloc.v local.radial
div.v.v
pushi.e 180
mul.i.v
pushi.e 110
add.i.v
pushloc.v local.dir
add.v.v
push.v self.radialshot
pushi.e -9
pop.v.v [stacktop]self.direction
push.v self.special
pushi.e 1
cmp.i.v EQ
bf [107]

:[106]
push.v self.radialshot
pushi.e -9
dup.i 4
push.v [stacktop]self.direction
pushi.e 10
conv.i.v
pushi.e -10
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.i.v [stacktop]self.direction

:[107]
push.v self.radialshot
pushi.e -9
push.v [stacktop]self.direction
push.v self.radialshot
pushi.e -9
pop.v.v [stacktop]self.image_angle
pushi.e 1
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.active
pushi.e 1
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.speed
push.d -0.3
push.v self.radialshot
pushi.e -9
pop.v.d [stacktop]self.friction
push.v self.bighearttype
pushi.e 1
cmp.i.v EQ
bf [109]

:[108]
pushi.e 1
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.speed
push.d -0.23
push.v self.radialshot
pushi.e -9
pop.v.d [stacktop]self.friction

:[109]
push.v self.depth
pushi.e 1
sub.i.v
push.v self.radialshot
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.target
push.v self.radialshot
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.radialshot
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 0
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.grazed
pushi.e 6
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.element
push.v 697.difficulty
pushi.e 0
cmp.i.v EQ
bf [111]

:[110]
pushi.e 3
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.grazepoints

:[111]
push.v 697.difficulty
pushi.e 2
cmp.i.v EQ
bf [113]

:[112]
pushi.e 2
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.grazepoints

:[113]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [102]

:[114]
pushi.e 10
pop.v.i self.shottimer
push.v self.bighearttype
pushi.e 1
cmp.i.v EQ
bf [116]

:[115]
pushi.e 6
pop.v.i self.shottimer

:[116]
b [end]

:[117]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [end]

:[118]
pushi.e 4
pop.v.i self.firedtimer
pushi.e 0
pop.v.i self.i

:[119]
push.v self.i
pushloc.v local.radial
cmp.v.v LT
bf [123]

:[120]
pushi.e 361
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.radialshot
push.v self.radialshot
pushi.e -9
pushenv [122]

:[121]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v

:[122]
popenv [121]
pushi.e 1377
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v 631.y
pushi.e 10
add.i.v
push.v 631.x
pushi.e 10
add.i.v
push.v self.radialshot
pushi.e -9
push.v [stacktop]self.y
push.v self.radialshot
pushi.e -9
push.v [stacktop]self.x
call.i point_direction(argc=4)
push.v self.radialshot
pushi.e -9
pop.v.v [stacktop]self.direction
push.v self.radialshot
pushi.e -9
push.v [stacktop]self.direction
push.v self.radialshot
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.d 0.5
push.v self.radialshot
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.d 0.5
push.v self.radialshot
pushi.e -9
pop.v.d [stacktop]self.image_yscale
pushi.e 1
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.active
pushi.e 3
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.speed
push.d -0.2
push.v self.radialshot
pushi.e -9
pop.v.d [stacktop]self.friction
push.v self.depth
pushi.e 1
sub.i.v
push.v self.radialshot
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.target
push.v self.radialshot
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.radialshot
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 0
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.grazed
pushi.e 6
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.element
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [119]

:[123]
pushi.e 6
pop.v.i self.shottimer

:[end]