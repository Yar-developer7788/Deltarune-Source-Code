.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.bouncethisframe
push.v self.initas
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.image_alpha
pushi.e 0
pop.v.i self.turnfreeze
pushi.e 1
pop.v.i self.initas
push.s "right"@4637
pop.v.s self.turndir
push.v self.x
pop.v.v self.drawx
push.v self.y
pop.v.v self.drawy
pushi.e 0
pop.v.i self.moved

:[2]
push.v self.blockedstart
pushi.e 0
cmp.b.v EQ
bf [55]

:[3]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [6]

:[4]
push.v self.image_alpha
push.d 0.25
add.d.v
pop.v.v self.image_alpha
push.v self.y
pushi.e 4
add.i.v
pop.v.v self.y
push.v self.image_alpha
push.d 1.5
cmp.d.v GTE
bf [6]

:[5]
pushi.e 1
pop.v.i self.image_alpha
pushi.e 1
pop.v.i self.con
push.v self.ystart
pushi.e 40
add.i.v
pop.v.v self.y

:[6]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [45]

:[7]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 2
cmp.i.v GTE
bf [45]

:[8]
pushi.e 1
pop.v.i self.moved
pushi.e 0
pop.v.i self.breakcount
push.v self.direction
pop.v.v self.remdir

:[9]
push.v self.breakcount
pushi.e 4
cmp.i.v LT
bf [37]

:[10]
push.v self.direction
pushi.e 40
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.mx
push.v self.direction
pushi.e 40
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.my
pushi.e 1172
conv.i.v
push.v self.y
push.v self.my
add.v.v
push.v self.x
push.v self.mx
add.v.v
call.i instance_place(argc=3)
pop.v.v self.blockcheck
push.v self.blockcheck
pushi.e -4
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1175
conv.i.v
push.v self.y
push.v self.my
add.v.v
push.v self.x
push.v self.mx
add.v.v
call.i instance_place(argc=3)
pop.v.v self.blockcheck

:[12]
push.v self.blockcheck
pushi.e -4
cmp.i.v EQ
bf [14]

:[13]
pushi.e 1173
conv.i.v
push.v self.y
push.v self.my
add.v.v
push.v self.x
push.v self.mx
add.v.v
call.i instance_place(argc=3)
pop.v.v self.blockcheck

:[14]
push.v self.blockcheck
pushi.e -4
cmp.i.v NEQ
bf [35]

:[15]
pushi.e 1
push.v self.blockcheck
pushi.e -9
pop.v.i [stacktop]self.flash
pushi.e 0
push.v self.blockcheck
pushi.e -9
pop.v.i [stacktop]self.flashtimer
push.v self.blockcheck
pushi.e -9
push.v [stacktop]self.orientation
push.s "left"@5994
cmp.s.v EQ
bf [17]

:[16]
push.v self.direction
pushi.e 90
add.i.v
pop.v.v self.direction
push.s "left"@5994
pop.v.s self.turndir

:[17]
push.v self.blockcheck
pushi.e -9
push.v [stacktop]self.orientation
push.s "right"@4637
cmp.s.v EQ
bf [19]

:[18]
push.v self.direction
pushi.e 90
sub.i.v
pop.v.v self.direction
push.s "right"@4637
pop.v.s self.turndir

:[19]
push.v self.direction
pushi.e 360
cmp.i.v GTE
bf [21]

:[20]
push.v self.direction
pushi.e 360
sub.i.v
pop.v.v self.direction

:[21]
push.v self.direction
pushi.e 0
cmp.i.v LT
bf [23]

:[22]
push.v self.direction
pushi.e 360
add.i.v
pop.v.v self.direction

:[23]
push.v self.breakcount
push.e 1
add.i.v
pop.v.v self.breakcount
push.v self.direction
push.v self.remdir
pushi.e 180
sub.i.v
cmp.v.v EQ
bt [25]

:[24]
push.v self.direction
push.v self.remdir
pushi.e 180
add.i.v
cmp.v.v EQ
b [26]

:[25]
push.e 1

:[26]
bf [28]

:[27]
push.v self.direction
pushi.e 90
add.i.v
pop.v.v self.direction

:[28]
push.v self.breakcount
pushi.e 4
cmp.i.v EQ
bf [32]

:[29]
push.v self.remdir
pushi.e 180
add.i.v
pop.v.v self.direction
push.v self.direction
pushi.e 360
cmp.i.v GT
bf [31]

:[30]
push.v self.direction
pushi.e 360
sub.i.v
pop.v.v self.direction

:[31]
push.v self.direction
pushi.e 40
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.mx
push.v self.direction
pushi.e 40
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.my

:[32]
call.i gml_Script_scr_afterimage(argc=0)
pop.v.v self.turnfx
push.v self.direction
push.v self.turnfx
pushi.e -9
pop.v.v [stacktop]self.image_angle
pushi.e 2695
push.v self.turnfx
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.turnfx
pushi.e -9
pop.v.i [stacktop]self.image_index
push.v self.turnfx
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e 20
add.i.v
pop.i.v [stacktop]self.x
push.v self.turnfx
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 20
add.i.v
pop.i.v [stacktop]self.y
push.v self.turndir
push.s "right"@4637
cmp.s.v EQ
bf [34]

:[33]
pushi.e 1
push.v self.turnfx
pushi.e -9
pop.v.i [stacktop]self.image_index

:[34]
b [36]

:[35]
pushi.e 4
pop.v.i self.breakcount

:[36]
b [9]

:[37]
push.v self.remdir
push.v self.direction
cmp.v.v NEQ
bf [39]

:[38]
push.v self.turnfreeze
pushi.e 0
cmp.i.v LTE
b [40]

:[39]
push.e 0

:[40]
bf [42]

:[41]
pushi.e 2
pop.v.i self.turnfreeze

:[42]
push.v self.turnfreeze
push.e 1
sub.i.v
pop.v.v self.turnfreeze
push.v self.turnfreeze
pushi.e 0
cmp.i.v LTE
bf [44]

:[43]
push.v self.x
push.v self.mx
add.v.v
pop.v.v self.x
push.v self.y
push.v self.my
add.v.v
pop.v.v self.y

:[44]
pushi.e 0
pop.v.i self.timer

:[45]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [48]

:[46]
push.v self.depth
pushi.e 1
add.i.v
pop.v.v self.depth
push.v self.y
pushi.e 4
sub.i.v
pop.v.v self.y
push.v self.image_alpha
push.d 0.25
sub.d.v
pop.v.v self.image_alpha
push.v self.deathtimer
push.e 1
add.i.v
pop.v.v self.deathtimer
push.v self.deathtimer
pushi.e 3
cmp.i.v GTE
bf [48]

:[47]
call.i instance_destroy(argc=0)
popz.v

:[48]
push.v self.x
pushbltn.v builtin.room_width
pushi.e 40
add.i.v
cmp.v.v GT
bt [52]

:[49]
push.v self.x
pushi.e -40
cmp.i.v LT
bt [52]

:[50]
push.v self.y
pushbltn.v builtin.room_height
pushi.e 40
add.i.v
cmp.v.v GT
bt [52]

:[51]
push.v self.y
pushi.e -40
cmp.i.v LT
b [53]

:[52]
push.e 1

:[53]
bf [55]

:[54]
call.i instance_destroy(argc=0)
popz.v

:[55]
push.v self.blockedstart
pushi.e 1
cmp.b.v EQ
bf [58]

:[56]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 10
cmp.i.v EQ
bf [58]

:[57]
call.i instance_destroy(argc=0)
popz.v

:[58]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [62]

:[59]
push.v self.lifespan
push.e 1
sub.i.v
pop.v.v self.lifespan
push.v self.lifespan
pushi.e 1
cmp.i.v LT
bf [62]

:[60]
push.v self.image_alpha
push.d 0.9
mul.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.05
cmp.d.v LT
bf [62]

:[61]
call.i instance_destroy(argc=0)
popz.v

:[62]
push.v self.x
call.i gml_Script_camerax(argc=0)
cmp.v.v LT
bt [70]

:[63]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 640
add.i.v
cmp.v.v GT
bt [70]

:[64]
push.v self.y
call.i gml_Script_cameray(argc=0)
cmp.v.v LT
bt [70]

:[65]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 480
add.i.v
cmp.v.v GT
bt [70]

:[66]
push.v self.x
pushi.e 0
push.v self.sprite_width
pushi.e 2
mul.i.v
sub.v.i
cmp.v.v LT
bt [70]

:[67]
push.v self.x
pushbltn.v builtin.room_width
push.v self.sprite_width
pushi.e 2
mul.i.v
add.v.v
cmp.v.v GT
bt [70]

:[68]
push.v self.y
pushbltn.v builtin.room_height
push.v self.sprite_height
pushi.e 2
mul.i.v
add.v.v
cmp.v.v GT
bt [70]

:[69]
push.v self.y
pushi.e 0
push.v self.sprite_height
pushi.e 2
mul.i.v
sub.v.i
cmp.v.v LT
b [71]

:[70]
push.e 1

:[71]
bf [73]

:[72]
call.i instance_destroy(argc=0)
popz.v

:[73]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [end]

:[74]
push.v self.bouncecon
pushi.e 0
cmp.i.v EQ
bf [82]

:[75]
pushi.e 5000
pop.v.i self.depth
pushbltn.v builtin.room
pushi.e 126
cmp.i.v EQ
bf [79]

:[76]
push.v 1162.noelleScared
pushi.e 0
cmp.i.v LTE
bf [78]

:[77]
pushi.e 320
pop.v.i self.bounceTargetX
pushi.e 320
pop.v.i self.bounceTargetY
pushi.e 180
pop.v.i self.bounceTargetDir
b [79]

:[78]
pushi.e 485
pop.v.i self.bounceTargetX
pushi.e 320
pop.v.i self.bounceTargetY
pushi.e 90
pop.v.i self.bounceTargetDir

:[79]
pushbltn.v builtin.room
pushi.e 134
cmp.i.v EQ
bf [81]

:[80]
pushi.e 400
pop.v.i self.bounceTargetX
pushi.e 222
pop.v.i self.bounceTargetY
pushi.e 180
pop.v.i self.bounceTargetDir

:[81]
pushi.e 2694
pop.v.i self.customSprite
pushi.e 15
pop.v.i self.bouncelength
pushi.e 160
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.bouncelength
neg.v
pop.v.v self.fakeYSpeed
push.v self.bouncelength
push.v self.bounceTargetY
push.v self.bounceTargetX
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v
pushi.e 0
pop.v.i self.bouncetimer
pushi.e 1
pop.v.i self.bouncecon

:[82]
push.v self.bouncecon
pushi.e 1
cmp.i.v EQ
bf [87]

:[83]
push.v self.fakeY
push.v self.fakeYSpeed
add.v.v
pop.v.v self.fakeY
push.v self.fakeYSpeed
pushi.e 2
add.i.v
pop.v.v self.fakeYSpeed
push.v self.bouncetimer
push.e 1
add.i.v
pop.v.v self.bouncetimer
push.v self.bouncetimer
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [85]

:[84]
call.i gml_Script_scr_afterimage(argc=0)
pop.v.v self.hafterimage
pushi.e 2537
push.v self.hafterimage
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e -4
pushi.e 2
conv.i.v
call.i random(argc=1)
sub.v.i
push.v self.hafterimage
pushi.e -9
pop.v.v [stacktop]self.vspeed
pushi.e 4
pushi.e 8
conv.i.v
call.i random(argc=1)
sub.v.i
push.v self.hafterimage
pushi.e -9
pop.v.v [stacktop]self.hspeed
pushi.e 1
push.v self.hafterimage
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 1
push.v self.hafterimage
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.d 0.5
push.v self.hafterimage
pushi.e -9
pop.v.d [stacktop]self.friction
push.v self.hafterimage
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e 10
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.i
add.v.v
pop.i.v [stacktop]self.x
push.v self.hafterimage
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 10
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.fakeY
add.v.v
add.v.v
pop.i.v [stacktop]self.y

:[85]
push.v self.bouncetimer
push.v self.bouncelength
pushi.e 1
add.i.v
cmp.v.v GTE
bf [87]

:[86]
push.v self.bounceTargetX
pop.v.v self.x
push.v self.bounceTargetY
pop.v.v self.y
pushi.e 1
pop.v.i self.fakeY
pushi.e 0
pop.v.i self.fakeYSpeed
pushi.e 2
pop.v.i self.bouncecon
pushi.e 0
pop.v.i self.bouncetimer
push.i 900000
pop.v.i self.depth

:[87]
push.v self.bouncecon
pushi.e 2
cmp.i.v EQ
bf [end]

:[88]
push.v self.bouncetimer
push.e 1
add.i.v
pop.v.v self.bouncetimer
push.v self.depth
push.e 1
add.i.v
pop.v.v self.depth
push.v self.bounceTargetDir
pop.v.v self.direction
push.v self.direction
pushi.e 90
cmp.i.v NEQ
bf [90]

:[89]
pushi.e 2688
pop.v.i self.customSprite

:[90]
push.v self.bouncetimer
pushi.e 2
cmp.i.v GTE
bf [92]

:[91]
push.v self.x
push.v self.direction
pushi.e 4
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.x
push.v self.y
push.v self.direction
pushi.e 4
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.y

:[92]
push.v self.bouncetimer
pushi.e 6
cmp.i.v GTE
bf [end]

:[93]
push.v self.bounceTargetY
pop.v.v self.y
push.v self.bounceTargetX
pop.v.v self.x
pushi.e 1
pop.v.i self.con
pushbltn.v builtin.room
pushi.e 126
cmp.i.v EQ
bf [95]

:[94]
pushi.e 0
pop.v.b self.nointeract

:[95]
push.v self.bounceTargetDir
pop.v.v self.direction

:[end]