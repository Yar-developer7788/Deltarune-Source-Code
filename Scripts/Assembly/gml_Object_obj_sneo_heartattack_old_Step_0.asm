.localvar 2 arguments
.localvar 25549 destination 12498
.localvar 21140 angle 12499

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
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [17]

:[5]
push.v self.movementstyle
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.speed
push.d 0.1
push.v self.heart_speed_scaling
mul.v.d
add.v.v
pop.v.v self.speed

:[7]
push.v self.movementstyle
pushi.e 0
cmp.i.v NEQ
bf [9]

:[8]
push.v self.speed
push.d 0.4
push.v self.heart_speed_scaling
mul.v.d
add.v.v
pop.v.v self.speed

:[9]
pushi.e 72
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v local.destination
push.v self.movementstyle
pushi.e 2
cmp.i.v NEQ
bf [11]

:[10]
pushi.e 156
pop.v.i local.destination

:[11]
push.v self.ystart
push.v self.xstart
call.i distance_to_point(argc=2)
pushloc.v local.destination
cmp.v.v GT
bf [17]

:[12]
push.v self.movementstyle
pushi.e 2
cmp.i.v EQ
bf [14]

:[13]
pushi.e 2
pop.v.i self.con
b [15]

:[14]
pushi.e 0
pop.v.i self.speed

:[15]
pushi.e 1
pop.v.i self.shootcon
push.v self.movementstyle
pushi.e 2
cmp.i.v EQ
bf [17]

:[16]
pushi.e -10
pop.v.i self.shoottimer

:[17]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [28]

:[18]
push.v self.movementstyle
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
push.v self.speed
push.d 0.1
push.v self.heart_speed_scaling
mul.v.d
sub.v.v
pop.v.v self.speed

:[20]
push.v self.movementstyle
pushi.e 0
cmp.i.v NEQ
bf [22]

:[21]
push.v self.speed
push.d 0.6
push.v self.heart_speed_scaling
mul.v.d
sub.v.v
pop.v.v self.speed

:[22]
push.v self.x
push.v self.xstart
pushi.e 12
sub.i.v
cmp.v.v GT
bf [28]

:[23]
push.v self.attackcount
pushi.e 1
sub.i.v
pop.v.v self.attackcount
push.v self.attackcount
pushi.e 0
cmp.i.v GT
bf [25]

:[24]
push.v self.xstart
pop.v.v self.x
pushi.e 0
pop.v.i self.con
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
pushi.e 162
pushi.e 36
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.direction
b [28]

:[25]
call.i instance_destroy(argc=0)
popz.v
pushi.e 612
pushenv [27]

:[26]
pushi.e 0
pop.v.i self.timer
pushi.e 1
pop.v.i self.con

:[27]
popenv [26]

:[28]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [43]

:[29]
push.v self.defeatedtimer
push.e 1
add.i.v
pop.v.v self.defeatedtimer
pushi.e 0
pop.v.i self.image_index
push.v self.defeatedtimer
pushi.e 1
cmp.i.v EQ
bf [33]

:[30]
pushi.e 0
pop.v.i self.a
pushi.e 12
dup.i 0
push.i 0
cmp.i.i LTE
bt [32]

:[31]
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
bt [31]

:[32]
popz.i

:[33]
push.v self.defeatedtimer
pushi.e 20
cmp.i.v GT
bf [35]

:[34]
push.v self.defeatedtimer
pushi.e 50
cmp.i.v LT
b [36]

:[35]
push.e 0

:[36]
bf [38]

:[37]
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

:[38]
push.v self.defeatedtimer
pushi.e 50
cmp.i.v GT
bf [43]

:[39]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LT
bf [43]

:[40]
call.i instance_destroy(argc=0)
popz.v
pushi.e 612
pushenv [42]

:[41]
pushi.e 0
pop.v.i self.timer
pushi.e 1
pop.v.i self.con

:[42]
popenv [41]

:[43]
push.v self.shootcon
pushi.e 1
cmp.i.v EQ
bf [79]

:[44]
push.v self.shoottimer
pushi.e 0
cmp.i.v EQ
bf [46]

:[45]
pushi.e 1
pop.v.i self.image_index

:[46]
push.v self.shoottimer
pushi.e 2
cmp.i.v EQ
bf [48]

:[47]
pushi.e 0
pop.v.i self.image_index

:[48]
push.v self.shoottimer
pushi.e 4
cmp.i.v EQ
bf [50]

:[49]
pushi.e 1
pop.v.i self.image_index

:[50]
push.v self.shoottimer
pushi.e 6
cmp.i.v EQ
bf [52]

:[51]
pushi.e 0
pop.v.i self.image_index

:[52]
push.v self.shoottimer
push.e 1
add.i.v
pop.v.v self.shoottimer
push.v self.shoottimer
push.v 697.heart_1st_wave_timer
cmp.v.v EQ
bf [54]

:[53]
push.v self.heart_health
pushi.e 0
cmp.i.v GT
b [55]

:[54]
push.e 0

:[55]
bt [64]

:[56]
push.v self.shoottimer
push.v 697.heart_2nd_wave_timer
cmp.v.v EQ
bf [58]

:[57]
push.v self.heart_health
pushi.e 0
cmp.i.v GT
b [59]

:[58]
push.e 0

:[59]
bt [64]

:[60]
push.v self.shoottimer
push.v 697.heart_3rd_wave_timer
cmp.v.v EQ
bf [62]

:[61]
push.v self.heart_health
pushi.e 0
cmp.i.v GT
b [63]

:[62]
push.e 0

:[63]
b [65]

:[64]
push.e 1

:[65]
bf [77]

:[66]
pushi.e 0
push.v self.rand_angle
add.v.i
pop.v.v local.angle
push.v self.shoottimer
push.v 697.heart_2nd_wave_timer
cmp.v.v EQ
bf [68]

:[67]
pushi.e 14
push.v self.rand_angle
add.v.i
pop.v.v local.angle

:[68]
pushi.e 10
dup.i 0
push.i 0
cmp.i.i LTE
bt [76]

:[69]
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
bf [71]

:[70]
push.v 697.heart_bullet_speed_1st_wave
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.speed
push.v 697.heart_bullet_friction_1st_wave
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.gravity

:[71]
push.v self.shoottimer
push.v 697.heart_2nd_wave_timer
cmp.v.v EQ
bf [73]

:[72]
push.v 697.heart_bullet_speed_2nd_wave
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.speed
push.v 697.heart_bullet_friction_2nd_wave
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.gravity

:[73]
push.v self.shoottimer
push.v 697.heart_3rd_wave_timer
cmp.v.v EQ
bf [75]

:[74]
push.v 697.heart_bullet_speed_3rd_wave
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.speed
push.v 697.heart_bullet_friction_3rd_wave
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.gravity

:[75]
push.v local.angle
pushi.e 36
add.i.v
pop.v.v local.angle
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [69]

:[76]
popz.i

:[77]
push.v self.shoottimer
pushi.e 23
cmp.i.v GT
bf [79]

:[78]
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

:[79]
push.v self.heart_health
pushi.e 1
cmp.i.v LT
bf [81]

:[80]
exit.i

:[81]
push.v self.difficulty
pushi.e 0
cmp.i.v GT
bf [83]

:[82]
push.v self.bustertimer
push.e 1
add.i.v
pop.v.v self.bustertimer

:[83]
push.v self.bustertimer
push.v 697.heart_variant_arm_shoot_timer
cmp.v.v EQ
bf [87]

:[84]
pushi.e 697
pushenv [86]

:[85]
pushi.e 3
pop.v.i self.partmode
push.v 631.y
push.v 631.x
pushi.e -1
pushi.e 1
push.v [array]self.partyoff
pushi.e -1
pushi.e 1
push.v [array]self.partxoff
call.i point_direction(argc=4)
pop.v.v self.armangle
pushi.e 2
pop.v.i self.aimmode
push.v self.armangle
pop.v.v self.armaim
pushi.e 632
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.armangle
pushi.e 90
sub.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
push.v self.armangle
pushi.e 90
sub.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.d
pushi.e -9
dup.i 4
push.v [stacktop]self.depth
pushi.e 1
add.i.v
pop.i.v [stacktop]self.depth
push.v self.damage
pushi.e 2
mul.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage

:[86]
popenv [85]

:[87]
push.v self.bustertimer
pushi.e 150
cmp.i.v EQ
bf [91]

:[88]
pushi.e 632
pushenv [90]

:[89]
call.i instance_destroy(argc=0)
popz.v

:[90]
popenv [89]
pushi.e 0
pop.v.i self.aimmode
pushi.e 4
pop.v.i 697.partmode

:[91]
push.v self.bustertimer
pushi.e 150
cmp.i.v GT
bf [95]

:[92]
pushi.e 594
pushenv [94]

:[93]
pushi.e 1
pop.v.i self.dontexplode

:[94]
popenv [93]

:[95]
push.v self.bustertimer
pushi.e 180
cmp.i.v EQ
bf [97]

:[96]
pushi.e 1
pop.v.i 697.partmode

:[97]
push.v self.bustertimer
pushi.e 263
cmp.i.v EQ
bf [99]

:[98]
push.v self.difficulty
pushi.e 2
cmp.i.v EQ
b [100]

:[99]
push.e 0

:[100]
bf [102]

:[101]
pushi.e 1
pop.v.i 697.partmode
pushi.e 599
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v

:[102]
push.v self.bustertimer
pushi.e 283
cmp.i.v EQ
bf [104]

:[103]
push.v self.difficulty
pushi.e 2
cmp.i.v EQ
b [105]

:[104]
push.e 0

:[105]
bf [end]

:[106]
pushi.e 599
pushenv [108]

:[107]
call.i instance_destroy(argc=0)
popz.v

:[108]
popenv [107]

:[end]