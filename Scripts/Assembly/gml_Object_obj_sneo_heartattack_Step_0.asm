.localvar 2 arguments
.localvar 25549 destination 12466
.localvar 21140 angle 12470

:[0]
push.v self.shakex
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.shakex
push.e 1
sub.i.v
pop.v.v self.shakex

:[2]
push.v self.shakey
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
push.v self.shakey
push.e 1
sub.i.v
pop.v.v self.shakey

:[4]
pushglb.v global.turntimer
pushi.e 51
cmp.i.v LT
bf [6]

:[5]
pushi.e 50
pop.v.i global.turntimer
pushi.e 0
pop.v.i self.attackcount

:[6]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [27]

:[7]
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.v self.speed
push.d 0.5
push.v self.heart_speed_scaling
mul.v.d
add.v.v
pop.v.v self.speed
b [19]

:[9]
push.v self.difficulty
pushi.e 2
cmp.i.v EQ
bf [15]

:[10]
push.v self.movementstyle
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.v self.speed
push.d 0.1
push.v self.heart_speed_scaling
mul.v.d
add.v.v
pop.v.v self.speed

:[12]
push.v self.movementstyle
pushi.e 0
cmp.i.v NEQ
bf [14]

:[13]
push.v self.speed
push.d 0.4
push.v self.heart_speed_scaling
mul.v.d
add.v.v
pop.v.v self.speed

:[14]
b [19]

:[15]
push.v self.movementstyle
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
push.v self.speed
push.d 0.1
push.v self.heart_speed_scaling
mul.v.d
add.v.v
pop.v.v self.speed

:[17]
push.v self.movementstyle
pushi.e 0
cmp.i.v NEQ
bf [19]

:[18]
push.v self.speed
push.d 0.4
push.v self.heart_speed_scaling
mul.v.d
add.v.v
pop.v.v self.speed

:[19]
pushi.e 70
pushi.e 3
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v local.destination
push.v self.movementstyle
pushi.e 2
cmp.i.v NEQ
bf [21]

:[20]
pushi.e 152
pop.v.i local.destination

:[21]
push.v self.ystart
push.v self.xstart
call.i distance_to_point(argc=2)
pushloc.v local.destination
cmp.v.v GT
bf [27]

:[22]
push.v self.movementstyle
pushi.e 2
cmp.i.v EQ
bf [24]

:[23]
pushi.e 2
pop.v.i self.con
b [25]

:[24]
pushi.e 0
pop.v.i self.speed

:[25]
pushi.e 1
pop.v.i self.shootcon
push.v self.movementstyle
pushi.e 2
cmp.i.v EQ
bf [27]

:[26]
pushi.e -10
pop.v.i self.shoottimer

:[27]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [52]

:[28]
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
push.v self.speed
push.d 0.3
push.v self.heart_speed_scaling
mul.v.d
sub.v.v
pop.v.v self.speed
b [40]

:[30]
push.v self.difficulty
pushi.e 2
cmp.i.v EQ
bf [36]

:[31]
push.v self.movementstyle
pushi.e 1
cmp.i.v EQ
bf [33]

:[32]
push.v self.speed
push.d 0.1
push.v self.heart_speed_scaling
mul.v.d
sub.v.v
pop.v.v self.speed

:[33]
push.v self.movementstyle
pushi.e 0
cmp.i.v NEQ
bf [35]

:[34]
push.v self.speed
push.d 0.6
push.v self.heart_speed_scaling
mul.v.d
sub.v.v
pop.v.v self.speed

:[35]
b [40]

:[36]
push.v self.movementstyle
pushi.e 1
cmp.i.v EQ
bf [38]

:[37]
push.v self.speed
push.d 0.1
push.v self.heart_speed_scaling
mul.v.d
sub.v.v
pop.v.v self.speed

:[38]
push.v self.movementstyle
pushi.e 0
cmp.i.v NEQ
bf [40]

:[39]
push.v self.speed
push.d 0.6
push.v self.heart_speed_scaling
mul.v.d
sub.v.v
pop.v.v self.speed

:[40]
push.v self.x
push.v self.xstart
pushi.e 12
sub.i.v
cmp.v.v GT
bf [52]

:[41]
push.v self.attackcount
pushi.e 1
sub.i.v
pop.v.v self.attackcount
push.v self.attackcount
pushi.e 0
cmp.i.v GT
bf [45]

:[42]
push.v self.xstart
pop.v.v self.x
push.d 2.1
pop.v.d self.con
pushi.e 0
pop.v.i self.shootcon
pushi.e 0
pop.v.i self.shoottimer
push.v self.speed
push.d -0.4
mul.d.v
pop.v.v self.speed
pushi.e 0
pop.v.b self.visible
push.i 68097
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v self.difficulty
pushi.e 2
cmp.i.v EQ
bf [44]

:[43]
pushi.e 58
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[44]
pushi.e 162
pushi.e 36
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.direction
b [52]

:[45]
call.i instance_destroy(argc=0)
popz.v
pushi.e 612
pushenv [47]

:[46]
pushi.e 0
pop.v.i self.timer
pushi.e 1
pop.v.i self.con

:[47]
popenv [46]
pushi.e 632
pushenv [49]

:[48]
call.i instance_destroy(argc=0)
popz.v

:[49]
popenv [48]
pushi.e 753
pushenv [51]

:[50]
call.i instance_destroy(argc=0)
popz.v

:[51]
popenv [50]

:[52]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [75]

:[53]
pushi.e 599
pushenv [55]

:[54]
call.i instance_destroy(argc=0)
popz.v

:[55]
popenv [54]
pushi.e 603
pushenv [57]

:[56]
call.i instance_destroy(argc=0)
popz.v

:[57]
popenv [56]
pushi.e 611
pushenv [59]

:[58]
call.i instance_destroy(argc=0)
popz.v

:[59]
popenv [58]
pushi.e 594
pushenv [61]

:[60]
call.i instance_destroy(argc=0)
popz.v

:[61]
popenv [60]
push.v self.defeatedtimer
push.e 1
add.i.v
pop.v.v self.defeatedtimer
pushi.e 0
pop.v.i self.image_index
push.v self.defeatedtimer
pushi.e 1
cmp.i.v EQ
bf [65]

:[62]
pushi.e 0
pop.v.i self.a
pushi.e 12
dup.i 0
push.i 0
cmp.i.i LTE
bt [64]

:[63]
pushi.e 616
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fx
push.v self.a
pushi.e 30
mul.i.v
push.v self.fx
pushi.e -9
pop.v.v [stacktop]self.direction
push.v self.a
push.e 1
add.i.v
pop.v.v self.a
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [63]

:[64]
popz.i

:[65]
push.v self.defeatedtimer
pushi.e 20
cmp.i.v GT
bf [67]

:[66]
push.v self.defeatedtimer
pushi.e 50
cmp.i.v LT
b [68]

:[67]
push.e 0

:[68]
bf [70]

:[69]
push.v self.x
push.v self.xstart
push.v self.x
sub.v.v
push.d 0.1
mul.d.v
add.v.v
pop.v.v self.x
push.v self.y
push.v self.ystart
push.v self.y
sub.v.v
push.d 0.1
mul.d.v
add.v.v
pop.v.v self.y

:[70]
push.v self.defeatedtimer
pushi.e 50
cmp.i.v GT
bf [75]

:[71]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LT
bf [75]

:[72]
call.i instance_destroy(argc=0)
popz.v
pushi.e 612
pushenv [74]

:[73]
pushi.e 0
pop.v.i self.timer
pushi.e 1
pop.v.i self.con

:[74]
popenv [73]

:[75]
push.v self.shootcon
pushi.e 1
cmp.i.v EQ
bf [111]

:[76]
push.v self.shoottimer
pushi.e 0
cmp.i.v EQ
bf [78]

:[77]
pushi.e 1
pop.v.i self.image_index

:[78]
push.v self.shoottimer
pushi.e 2
cmp.i.v EQ
bf [80]

:[79]
pushi.e 0
pop.v.i self.image_index

:[80]
push.v self.shoottimer
pushi.e 4
cmp.i.v EQ
bf [82]

:[81]
pushi.e 1
pop.v.i self.image_index

:[82]
push.v self.shoottimer
pushi.e 6
cmp.i.v EQ
bf [84]

:[83]
pushi.e 0
pop.v.i self.image_index

:[84]
push.v self.shoottimer
push.e 1
add.i.v
pop.v.v self.shoottimer
push.v self.shoottimer
push.v 697.heart_1st_wave_timer
cmp.v.v EQ
bf [86]

:[85]
push.v self.heart_health
pushi.e 0
cmp.i.v GT
b [87]

:[86]
push.e 0

:[87]
bt [96]

:[88]
push.v self.shoottimer
push.v 697.heart_2nd_wave_timer
cmp.v.v EQ
bf [90]

:[89]
push.v self.heart_health
pushi.e 0
cmp.i.v GT
b [91]

:[90]
push.e 0

:[91]
bt [96]

:[92]
push.v self.shoottimer
push.v 697.heart_3rd_wave_timer
cmp.v.v EQ
bf [94]

:[93]
push.v self.heart_health
pushi.e 0
cmp.i.v GT
b [95]

:[94]
push.e 0

:[95]
b [97]

:[96]
push.e 1

:[97]
bf [109]

:[98]
pushi.e 0
push.v self.rand_angle
add.v.i
pop.v.v local.angle
push.v self.shoottimer
push.v 697.heart_2nd_wave_timer
cmp.v.v EQ
bf [100]

:[99]
pushi.e 14
push.v self.rand_angle
add.v.i
pop.v.v local.angle

:[100]
pushi.e 10
dup.i 0
push.i 0
cmp.i.i LTE
bt [108]

:[101]
pushi.e 611
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bullet
pushi.e 0
pushloc.v local.angle
add.v.i
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.image_angle
pushi.e 0
pushloc.v local.angle
add.v.i
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 0
pushloc.v local.angle
add.v.i
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.gravity_direction
push.v 697.heart_bullet_image_scale
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v 697.heart_bullet_image_scale
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v self.depth
pushi.e 1
sub.i.v
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.shoottimer
push.v 697.heart_1st_wave_timer
cmp.v.v EQ
bf [103]

:[102]
push.v 697.heart_bullet_speed_1st_wave
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.speed
push.v 697.heart_bullet_friction_1st_wave
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.gravity

:[103]
push.v self.shoottimer
push.v 697.heart_2nd_wave_timer
cmp.v.v EQ
bf [105]

:[104]
push.v 697.heart_bullet_speed_2nd_wave
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.speed
push.v 697.heart_bullet_friction_2nd_wave
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.gravity

:[105]
push.v self.shoottimer
push.v 697.heart_3rd_wave_timer
cmp.v.v EQ
bf [107]

:[106]
push.v 697.heart_bullet_speed_3rd_wave
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.speed
push.v 697.heart_bullet_friction_3rd_wave
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.gravity

:[107]
push.v local.angle
pushi.e 36
add.i.v
pop.v.v local.angle
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [101]

:[108]
popz.i

:[109]
push.v self.shoottimer
pushi.e 23
cmp.i.v GT
bf [111]

:[110]
pushi.e 0
pop.v.i self.shootcon
pushi.e 2
pop.v.i self.con
pushi.e 0
pop.v.i self.shoottimer
pushi.e 40
conv.i.v
call.i random(argc=1)
pop.v.v self.rand_angle

:[111]
push.v self.heart_health
pushi.e 1
cmp.i.v LT
bf [end]

:[112]
exit.i

:[end]