.localvar 2 arguments
.localvar 36454 _cutOffBonus 17933
.localvar 36457 _cupChar 17936
.localvar 107 i 17938
.localvar 6374 __j 17939
.localvar 19927 _col 17941

:[0]
push.v self.cupDistanceFromCenter
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.master
pushi.e -9
push.v [stacktop]self.cupDistanceFromCenter
pop.v.v self.cupDistanceFromCenter

:[2]
push.v self.spin
push.v self.cupDistanceFromCenter
call.i lengthdir_x(argc=2)
pop.v.v self.circleX
push.v self.spin
push.v self.cupDistanceFromCenter
push.d 0.5
mul.d.v
call.i lengthdir_y(argc=2)
pop.v.v self.circleY
push.v self.circleY
pushi.e 16
conv.i.d
div.d.v
pop.v.v self.fakedepth
push.v self.xstart
push.v self.circleX
add.v.v
pop.v.v self.x
push.v self.bouncing
conv.v.b
bf [4]

:[3]
push.v self.master
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.ystart

:[4]
push.v self.ystart
push.v self.circleY
add.v.v
push.v self.bounceCurrent
sub.v.v
pop.v.v self.y
push.v self.master
pushi.e -9
push.v [stacktop]self.depth
push.v self.master
pushi.e -9
push.v [stacktop]self.depthSeparation
sub.v.v
push.v self.circleY
sub.v.v
pushi.e 5
sub.i.v
pop.v.v self.depth
push.v 1091.state
pushi.e 5
cmp.i.v EQ
bf [6]

:[5]
push.v self.spin
push.v self.spinrate
add.v.v
pop.v.v self.spin

:[6]
pushi.e 0
pop.v.i local._cutOffBonus
push.v self.hitType
pushi.e 5
cmp.i.v EQ
bf [8]

:[7]
push.v self.master
pushi.e -9
push.v [stacktop]self.spin
neg.v
push.v self.offsetAngle
add.v.v
pushi.e 25
add.i.v
pop.v.v self.spin
push.v self.ystart
pushi.e 4
add.i.v
pop.v.v self.ystart
push.v self.master
pushi.e -9
push.v [stacktop]self.depth
pushi.e 400
sub.i.v
pop.v.v self.depth
pushi.e 16
pop.v.i local._cutOffBonus

:[8]
push.v self.fakedepth
pushi.e 8
conv.i.d
div.d.v
pop.v.v self.sizefactor
push.d 0.05
conv.d.v
pushi.e 2
push.v self.sizefactor
add.v.i
push.v self.image_xscale
call.i gml_Script_scr_approach(argc=3)
pop.v.v self.image_xscale
push.v self.image_xscale
pop.v.v self.image_yscale
push.d 0.3
push.v self.sizefactor
pushi.e 2
conv.i.d
div.d.v
sub.v.d
pop.v.v self.blendo
push.v self.blendo
pushi.e 0
cmp.i.v LT
bf [10]

:[9]
pushi.e 0
pop.v.i self.blendo

:[10]
push.v self.blendo
push.v self.colFar
push.v self.colClose
call.i merge_color(argc=3)
pop.v.v self.image_blend
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.sprite_yoffset
sub.v.v
push.v self.master
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._cutOffBonus
sub.v.v
push.v self.circleY
add.v.v
sub.v.v
pop.v.v self.cutOff
pushi.e 0
conv.i.v
push.v self.cutOff
call.i max(argc=2)
pop.v.v self.cutOff
push.v self.cutOff
push.v self.sprite_height
cmp.v.v GT
bf [19]

:[11]
push.v self.hitType
pushi.e 5
cmp.i.v EQ
bf [15]

:[12]
push.v self.master
pushi.e -9
pushenv [14]

:[13]
push.v self.teaFilled
push.d 0.05
add.d.v
pop.v.v self.teaFilled
pushi.e 1
pop.v.i self.swallownoise

:[14]
popenv [13]
b [18]

:[15]
push.v self.master
pushi.e -9
pushenv [17]

:[16]
pushi.e 1
pop.v.i self.wooshnoise

:[17]
popenv [16]

:[18]
call.i instance_destroy(argc=0)
popz.v

:[19]
push.v self.hitType
pushi.e 3
cmp.i.v EQ
bf [34]

:[20]
push.v self.cutOff
pushi.e 0
cmp.i.v GT
bf [23]

:[21]
push.v self.bouncesLeft
pushi.e 0
cmp.i.v GT
bf [23]

:[22]
push.v self.bouncing
conv.v.b
not.b
b [24]

:[23]
push.e 0

:[24]
bf [28]

:[25]
push.v self.master
pushi.e -9
pushenv [27]

:[26]
pushi.e 1
pop.v.i self.bouncenoise

:[27]
popenv [26]
push.v self.bouncesLeft
push.e 1
sub.i.v
pop.v.v self.bouncesLeft
pushi.e 1
pop.v.b self.bouncing
pushi.e 128
pop.v.i self.bounceHeight
pushi.e 1
pop.v.i self.bounceTime
pushi.e 0
pop.v.i self.bounceCurrent
push.d 0.06666666666666667
push.v self.bounceTime
div.v.d
pop.v.v self.bounceProgress

:[28]
push.v self.bouncing
conv.v.b
bf [34]

:[29]
push.v self.bounceProgress
push.d 0.03333333333333333
push.v self.bounceTime
div.v.d
add.v.v
pop.v.v self.bounceProgress
push.v self.bounceProgress
push.d 3.141592653589793
mul.d.v
call.i sin(argc=1)
push.v self.bounceHeight
mul.v.v
call.i abs(argc=1)
pop.v.v self.bounceCurrent
push.v self.bounceProgress
pushi.e 1
cmp.i.v GTE
bf [34]

:[30]
push.v self.master
pushi.e -9
pushenv [32]

:[31]
pushi.e 1
pop.v.i self.bouncenoise

:[32]
popenv [31]
push.v self.bouncesLeft
push.e 1
sub.i.v
pop.v.v self.bouncesLeft
push.v self.bounceProgress
push.e 1
sub.i.v
pop.v.v self.bounceProgress
push.v self.bouncesLeft
pushi.e 0
cmp.i.v LT
bf [34]

:[33]
pushi.e 0
pop.v.b self.bouncing
pushi.e 0
pop.v.i self.bounceCurrent

:[34]
push.v self.ystart
push.v self.bounceCurrent
sub.v.v
push.v self.master
pushi.e -9
push.v [stacktop]self.y
push.v self.bulletHitHeight
sub.v.v
cmp.v.v GT
bf [36]

:[35]
push.v self.cutOff
push.v self.sprite_height
div.v.v
push.v self.groundForgiveness
cmp.v.v LT
b [37]

:[36]
push.e 0

:[37]
bf [81]

:[38]
push.v self.master
pushi.e -9
push.v [stacktop]self.cup_char
pop.v.v local._cupChar
pushi.e 0
pop.v.i local.i

:[39]
pushloc.v local.i
push.v self.master
pushi.e -9
push.v [stacktop]self.partySize
cmp.v.v LT
bf [81]

:[40]
push.v self.master
pushi.e -9
push.v [stacktop]self.bulletsApplyToAll
conv.v.b
bt [42]

:[41]
pushloc.v local.i
pushi.e 0
cmp.i.v EQ
b [43]

:[42]
push.e 1

:[43]
bf [80]

:[44]
pushi.e -7
pushloc.v local.i
conv.v.i
push.v [array]self._cupChar
pushi.e -9
push.v [stacktop]self.spin
push.v self.spin
call.i angle_difference(argc=2)
call.i abs(argc=1)
push.v self.bulletCollisionAngle
cmp.v.v LT
bf [80]

:[45]
pushi.e 1
pop.v.b self.debugHitThisFrame
push.v self.hitType
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [52]

:[46]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [52]

:[47]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [52]

:[48]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [65]

:[49]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [74]

:[50]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [75]

:[51]
b [76]

:[52]
pushi.e 0
pop.v.i self.target
pushi.e -1
pop.v.i global.inv
push.i 231462
setowner.e
pushi.e 82
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.charinstance
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -5
pushi.e 1
pop.v.v [array]self.charinstance
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -5
pushi.e 2
pop.v.v [array]self.charinstance
pushi.e 0
pop.v.i local.__j

:[53]
pushloc.v local.__j
pushi.e 3
cmp.i.v LT
bf [58]

:[54]
pushi.e -5
pushloc.v local.__j
conv.v.i
push.v [array]self.charinstance
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [57]

:[55]
pushi.e 1091
pushloc.v local.__j
conv.v.i
push.v [array]self.cup_char
call.i instance_exists(argc=1)
conv.v.b
bf [57]

:[56]
push.i 133617
setowner.e
pushi.e 1091
pushloc.v local.__j
conv.v.i
push.v [array]self.cup_char
pushi.e -9
push.v [stacktop]self.x
pushi.e -5
pushloc.v local.__j
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pop.v.v [stacktop]self.x
push.i 133618
setowner.e
pushi.e 1091
pushloc.v local.__j
conv.v.i
push.v [array]self.cup_char
pushi.e -9
push.v [stacktop]self.y
pushi.e -5
pushloc.v local.__j
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pop.v.v [stacktop]self.y

:[57]
push.v local.__j
push.e 1
add.i.v
pop.v.v local.__j
b [53]

:[58]
pushi.e 277
pushenv [60]

:[59]
pushi.e 1
pop.v.i self.charcon

:[60]
popenv [59]
pushi.e -5
pushi.e 0
push.v [array]self.charinstance
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_camerax(argc=0)
sub.v.v
pop.v.v global.heartx
pushi.e -5
pushi.e 0
push.v [array]self.charinstance
pushi.e -9
push.v [stacktop]self.y
call.i gml_Script_cameray(argc=0)
sub.v.v
pop.v.v global.hearty
call.i gml_Script_scr_damage_all_overworld(argc=0)
popz.v
pushi.e 193
pushenv [62]

:[61]
call.i instance_destroy(argc=0)
popz.v

:[62]
popenv [61]
pushi.e 1091
pushenv [64]

:[63]
pushi.e 5
pop.v.i self.shaketimer

:[64]
popenv [63]
b [76]

:[65]
push.i 16777215
pop.v.i self.image_blend
push.v self.master
pushi.e -9
pushenv [69]

:[66]
push.v self.theScore
pushi.e 0
cmp.i.v EQ
bf [68]

:[67]
pushi.e 1
pop.v.i self.myPitch

:[68]
push.v self.myPitch
pushi.e 294
conv.i.v
call.i gml_Script_snd_play(argc=1)
call.i gml_Script_snd_pitch(argc=2)
popz.v
push.v self.riseSpeedBoost
push.v other.boostAmount
add.v.v
pop.v.v self.riseSpeedBoost
push.v self.theScore
push.e 1
add.i.v
pop.v.v self.theScore
pushi.e 0
pop.v.b self.tutorialRide
push.v self.myPitch
push.d 1.05946
mul.d.v
pop.v.v self.myPitch

:[69]
popenv [66]
pushbltn.v builtin.room
pushi.e 100
cmp.i.v EQ
bf [73]

:[70]
pushi.e 1093
pushenv [72]

:[71]
push.v self.theScore
push.e 1
add.i.v
pop.v.v self.theScore

:[72]
popenv [71]

:[73]
b [76]

:[74]
b [76]

:[75]
b [76]

:[76]
popz.v
push.v self.hitType
pushi.e 5
cmp.i.v NEQ
bf [80]

:[77]
pushi.e 1094
conv.i.v
push.v self.depth
push.v self.y
push.v self.x
call.i instance_create_depth(argc=4)
pushi.e -9
pushenv [79]

:[78]
push.v other.sprite_index
pop.v.v self.sprite_index
push.v other.image_index
pop.v.v self.image_index
push.v other.image_speed
pop.v.v self.image_speed
push.v other.image_xscale
push.d 0.2
add.d.v
pop.v.v self.image_xscale
push.v other.image_yscale
push.d 0.2
add.d.v
pop.v.v self.image_yscale
push.v other.image_alpha
pop.v.v self.image_alpha
push.v other.image_blend
pop.v.v self.image_blend
push.v other.spriteWidthRoot
pop.v.v self.spriteWidthRoot
push.v other.spriteHeightRoot
pop.v.v self.spriteHeightRoot
push.v other.cutOff
pop.v.v self.cutOff
push.v other.master
pop.v.v self.master
push.v self.y
push.v self.master
pushi.e -9
push.v [stacktop]self.y
sub.v.v
pop.v.v self.posY

:[79]
popenv [78]
call.i instance_destroy(argc=0)
popz.v

:[80]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [39]

:[81]
push.v self.eatMe
conv.v.b
bf [83]

:[82]
push.v self.hitType
pushi.e 5
cmp.i.v EQ
b [84]

:[83]
push.e 0

:[84]
bf [end]

:[85]
pushi.e 0
conv.b.v
pushi.e 0
conv.b.v
pushi.e 1098
conv.i.v
push.v self.y
push.v self.x
call.i collision_point(argc=5)
pop.v.v local._col
pushloc.v local._col
pushi.e -4
cmp.i.v NEQ
bf [87]

:[86]
pushloc.v local._col
pushi.e -9
push.v [stacktop]self.sprite_index
pushi.e 2564
cmp.i.v EQ
b [88]

:[87]
push.e 0

:[88]
bf [end]

:[89]
call.i instance_destroy(argc=0)
popz.v

:[end]