.localvar 2 arguments
.localvar 23828 otherHandSprite 10790
.localvar 23794 tailsprite 10791
.localvar 23795 handSprite 10792
.localvar 23814 handdir 10793
.localvar 23815 handlength 10794
.localvar 23812 handx 10795
.localvar 23813 handy 10796
.localvar 23816 rot1 10797
.localvar 23817 rot2 10798
.localvar 23818 whipimage 10799
.localvar 23797 legSprite 10800
.localvar 23798 bodySprite 10801
.localvar 23799 headSprite 10802
.localvar 23821 invlerp 10803
.localvar 23822 xlerp 10804
.localvar 23823 ylerp 10805
.localvar 23824 linkdir 10806

:[0]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [7]

:[1]
push.v self.timer
push.v self.animConst
push.d 2.5
mul.d.v
cmp.v.v GTE
bf [3]

:[2]
push.v self.timer
push.d 0.25
add.d.v
pop.v.v self.timer
b [4]

:[3]
push.v self.timer
push.d 1.5
push.v self.animSpeed
mul.v.d
add.v.v
pop.v.v self.timer

:[4]
push.v self.timer
push.v self.animConst
pushi.e 3
mul.i.v
cmp.v.v GTE
bf [6]

:[5]
push.v self.animConst
pushi.e 3
mul.i.v
pop.v.v self.timer

:[6]
b [25]

:[7]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [11]

:[8]
push.v self.timer
pushi.e 8
push.v self.animSpeed
mul.v.i
add.v.v
pop.v.v self.timer
push.v self.timer
push.v self.animConst
pushi.e 5
mul.i.v
cmp.v.v GTE
bf [10]

:[9]
push.v self.animConst
pushi.e 5
mul.i.v
pop.v.v self.timer

:[10]
b [25]

:[11]
push.v self.state
pushi.e 2
cmp.i.v EQ
bf [19]

:[12]
push.v self.timer
push.v self.animConst
pushi.e 5
mul.i.v
cmp.v.v GTE
bf [14]

:[13]
push.v self.zapping
conv.v.b
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
push.v self.timer
push.d 1.5
sub.d.v
pop.v.v self.timer
b [18]

:[17]
push.v self.animConst
pushi.e 5
mul.i.v
pop.v.v self.timer

:[18]
b [25]

:[19]
push.v self.state
pushi.e 4
cmp.i.v EQ
bf [25]

:[20]
push.v self.timer
push.v self.animConst
push.d 2.5
mul.d.v
cmp.v.v GTE
bf [22]

:[21]
push.v self.timer
push.d 0.25
push.v self.animSpeed
mul.v.d
add.v.v
pop.v.v self.timer
b [23]

:[22]
push.v self.timer
push.d 1.5
push.v self.animSpeed
mul.v.d
add.v.v
pop.v.v self.timer

:[23]
push.v self.timer
push.v self.animConst
pushi.e 3
mul.i.v
cmp.v.v GTE
bf [25]

:[24]
push.v self.animConst
pushi.e 3
mul.i.v
pop.v.v self.timer

:[25]
pushi.e -1
pushi.e 4
push.v [array]self.sprite
pop.v.v local.otherHandSprite
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
push.v self.y
pushi.e -1
pushi.e 4
push.v [array]self.yOffset
add.v.v
push.v self.timer
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e -1
pushi.e 4
push.v [array]self.xOffset
add.v.v
push.v self.timer
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushloc.v local.otherHandSprite
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e -1
pushi.e 2
push.v [array]self.sprite
pop.v.v local.tailsprite
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.timer
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
pushi.e 10
mul.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e -1
pushi.e 2
push.v [array]self.yOffset
add.v.v
push.v self.x
pushi.e -1
pushi.e 2
push.v [array]self.xOffset
add.v.v
pushi.e 0
conv.i.v
pushloc.v local.tailsprite
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.attacktimer
pushi.e 20
cmp.i.v LT
bf [27]

:[26]
pushi.e 1690
conv.i.v
b [28]

:[27]
pushi.e -1
pushi.e 3
push.v [array]self.sprite

:[28]
pop.v.v local.handSprite
pushi.e -1
pushi.e 3
push.v [array]self.yOffset
pushi.e -1
pushi.e 3
push.v [array]self.xOffset
pushi.e -1
pushi.e 1
push.v [array]self.yOffset
pushi.e -1
pushi.e 1
push.v [array]self.xOffset
call.i point_direction(argc=4)
pop.v.v local.handdir
pushi.e -1
pushi.e 3
push.v [array]self.yOffset
pushi.e -1
pushi.e 3
push.v [array]self.xOffset
pushi.e -1
pushi.e 1
push.v [array]self.yOffset
pushi.e -1
pushi.e 1
push.v [array]self.xOffset
call.i point_distance(argc=4)
pop.v.v local.handlength
pushi.e -1
pushi.e 1
push.v [array]self.xOffset
pushloc.v local.handdir
pushi.e 45
sub.i.v
push.v self.timer
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 50
mul.i.v
add.v.v
pushloc.v local.handlength
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v local.handx
pushi.e -1
pushi.e 1
push.v [array]self.yOffset
pushloc.v local.handdir
pushi.e 45
sub.i.v
push.v self.timer
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 30
mul.i.v
add.v.v
pushloc.v local.handlength
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v local.handy
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
pushi.e -45
conv.i.v
b [31]

:[30]
pushi.e 0
conv.i.v

:[31]
pop.v.v local.rot1
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [33]

:[32]
pushi.e 45
conv.i.v
b [34]

:[33]
pushi.e 90
conv.i.v

:[34]
pop.v.v local.rot2
pushi.e 0
pop.v.i local.whipimage
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [39]

:[35]
pushi.e 1692
pop.v.i local.handSprite
push.v self.timer
push.v self.animConst
push.d 2.5
mul.d.v
cmp.v.v GTE
bf [37]

:[36]
pushi.e 4
pop.v.i local.whipimage
b [39]

:[37]
push.v self.timer
push.v self.animConst
pushi.e 2
mul.i.v
cmp.v.v GTE
bf [39]

:[38]
pushi.e 2
pop.v.i local.whipimage

:[39]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [45]

:[40]
push.v self.timer
push.v self.animConst
pushi.e 5
mul.i.v
cmp.v.v LT
bf [42]

:[41]
pushi.e -1
pushi.e 1
push.v [array]self.xOffset
pushloc.v local.handdir
pushi.e 45
sub.i.v
push.v self.animConst
pushi.e 5
mul.i.v
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 50
mul.i.v
add.v.v
pushloc.v local.handlength
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v local.handx
pushi.e -1
pushi.e 1
push.v [array]self.yOffset
pushloc.v local.handdir
pushi.e 45
sub.i.v
push.v self.animConst
pushi.e 5
mul.i.v
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 30
mul.i.v
add.v.v
pushloc.v local.handlength
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v local.handy

:[42]
push.v self.timer
push.v self.animConst
pushi.e 4
mul.i.v
cmp.v.v LT
bf [44]

:[43]
pushi.e 1691
pop.v.i local.handSprite

:[44]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.targety
push.v self.targetx
push.v self.y
pushloc.v local.handy
add.v.v
push.v self.animConst
pushi.e 5
mul.i.v
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushloc.v local.handx
add.v.v
push.v self.animConst
pushi.e 5
mul.i.v
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
call.i point_direction(argc=4)
pushi.e 90
sub.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushloc.v local.handy
add.v.v
push.v self.animConst
pushi.e 5
mul.i.v
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushloc.v local.handx
add.v.v
push.v self.animConst
pushi.e 5
mul.i.v
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushloc.v local.handSprite
call.i draw_sprite_ext(argc=9)
popz.v
b [53]

:[45]
push.v self.state
pushi.e 2
cmp.i.v NEQ
bf [50]

:[46]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [48]

:[47]
push.v self.attacktimer
pushi.e 55
cmp.i.v GT
b [49]

:[48]
push.e 0

:[49]
not.b
b [51]

:[50]
push.e 0

:[51]
bf [53]

:[52]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushloc.v local.rot1
push.v self.timer
pushi.e 2
sub.i.v
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushloc.v local.rot2
mul.v.v
add.v.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushloc.v local.handy
add.v.v
push.v self.timer
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushloc.v local.handx
add.v.v
push.v self.timer
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
pushloc.v local.whipimage
pushloc.v local.handSprite
call.i draw_sprite_ext(argc=9)
popz.v

:[53]
pushi.e -1
pushi.e 5
push.v [array]self.sprite
pop.v.v local.legSprite
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
push.v self.y
pushi.e -1
pushi.e 5
push.v [array]self.yOffset
add.v.v
push.v self.x
pushi.e -1
pushi.e 5
push.v [array]self.xOffset
add.v.v
push.v self.timer
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 0
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushloc.v local.legSprite
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e -1
pushi.e 1
push.v [array]self.sprite
pop.v.v local.bodySprite
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
push.v self.y
pushi.e -1
pushi.e 1
push.v [array]self.yOffset
add.v.v
push.v self.timer
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e -1
pushi.e 1
push.v [array]self.xOffset
add.v.v
pushi.e 0
conv.i.v
pushloc.v local.bodySprite
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e -1
pushi.e 0
push.v [array]self.sprite
pop.v.v local.headSprite
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.timer
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e -1
pushi.e 0
push.v [array]self.yOffset
add.v.v
push.v self.timer
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.xOffset
add.v.v
pushi.e 0
conv.i.v
pushloc.v local.headSprite
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.quizmode
conv.v.b
not.b
bf [57]

:[54]
push.v self.attacktimer
pushi.e 5
cmp.i.v GTE
bf [57]

:[55]
push.v self.attacktimer
pushi.e 20
cmp.i.v LTE
bf [57]

:[56]
pushglb.v global.turntimer
pushi.e 30
cmp.i.v GT
b [58]

:[57]
push.e 0

:[58]
bf [66]

:[59]
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [61]

:[60]
pushi.e 6
push.v self.whipball
pushi.e -9
pop.v.i [stacktop]self.warnoffset
b [65]

:[61]
push.v self.attackoffset
pushi.e 90
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [63]

:[62]
pushi.e 0
conv.i.v
b [64]

:[63]
pushi.e 3
conv.i.v

:[64]
push.v self.whipball
pushi.e -9
pop.v.v [stacktop]self.warnoffset

:[65]
push.v self.attacktimer
pushi.e 4
sub.i.v
push.v self.whipball
pushi.e -9
pop.v.v [stacktop]self.warning

:[66]
push.v self.attacktimer
pushi.e 20
cmp.i.v GT
bf [68]

:[67]
pushi.e 0
push.v self.whipball
pushi.e -9
pop.v.i [stacktop]self.warning
push.v self.x
pushloc.v local.handx
add.v.v
push.v self.timer
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
pop.v.v local.handx
push.v self.y
pushloc.v local.handy
add.v.v
push.v self.timer
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pop.v.v local.handy

:[68]
push.v self.attacktimer
pushi.e 20
cmp.i.v GT
bf [70]

:[69]
push.v self.attacktimer
pushi.e 30
cmp.i.v LT
b [71]

:[70]
push.e 0

:[71]
bf [76]

:[72]
pushi.e 1
push.v self.whipball
pushi.e -9
pop.v.i [stacktop]self.dodraw
push.v self.attacktimer
pushi.e 30
conv.i.v
pushi.e 15
conv.i.v
call.i gml_Script_scr_inverselerp(argc=3)
pop.v.v local.invlerp
pushloc.v local.invlerp
push.v self.targetx
pushloc.v local.handx
call.i lerp(argc=3)
pop.v.v local.xlerp
pushloc.v local.invlerp
push.v self.targety
pushloc.v local.handy
call.i lerp(argc=3)
pop.v.v local.ylerp
push.v self.targety
push.v self.targetx
pushloc.v local.handy
pushloc.v local.handx
call.i point_direction(argc=4)
pop.v.v local.linkdir
pushloc.v local.handx
push.v self.whipball
pushi.e -9
pop.v.v [stacktop]self.origx
pushloc.v local.handy
push.v self.whipball
pushi.e -9
pop.v.v [stacktop]self.origy
pushi.e 1
pop.v.i self.i

:[73]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [75]

:[74]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushloc.v local.linkdir
pushi.e 2
conv.i.v
pushi.e 12
conv.i.v
push.v self.i
pushi.e 12
conv.i.d
div.d.v
pushloc.v local.ylerp
pushloc.v local.handy
call.i lerp(argc=3)
push.v self.i
pushi.e 12
conv.i.d
div.d.v
pushloc.v local.xlerp
pushloc.v local.handx
call.i lerp(argc=3)
pushi.e 0
conv.i.v
pushi.e 547
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [73]

:[75]
pushloc.v local.xlerp
push.v self.whipball
pushi.e -9
pop.v.v [stacktop]self.x
pushloc.v local.ylerp
push.v self.whipball
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.attackoffset
pushloc.v local.invlerp
pushi.e 720
mul.i.v
add.v.v
push.v self.whipball
pushi.e -9
pop.v.v [stacktop]self.image_angle

:[76]
push.v self.attacktimer
pushi.e 30
cmp.i.v GTE
bf [78]

:[77]
push.v self.attacktimer
pushi.e 55
cmp.i.v LTE
b [79]

:[78]
push.e 0

:[79]
bf [86]

:[80]
pushi.e 1
push.v self.whipball
pushi.e -9
pop.v.i [stacktop]self.dodraw
push.v self.targety
push.v self.targetx
pushloc.v local.handy
pushloc.v local.handx
call.i point_direction(argc=4)
pop.v.v local.linkdir
pushloc.v local.handx
push.v self.whipball
pushi.e -9
pop.v.v [stacktop]self.origx
pushloc.v local.handy
push.v self.whipball
pushi.e -9
pop.v.v [stacktop]self.origy
pushi.e 1
pop.v.i self.i

:[81]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [83]

:[82]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushloc.v local.linkdir
pushi.e 2
conv.i.v
pushi.e 12
conv.i.v
push.v self.i
pushi.e 12
conv.i.d
div.d.v
push.v self.targety
pushloc.v local.handy
call.i lerp(argc=3)
push.v self.i
pushi.e 12
conv.i.d
div.d.v
push.v self.targetx
pushloc.v local.handx
call.i lerp(argc=3)
pushi.e 0
conv.i.v
pushi.e 547
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [81]

:[83]
push.v self.state
pushi.e 2
cmp.i.v EQ
bf [85]

:[84]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.targety
push.v self.targetx
pushloc.v local.handy
pushloc.v local.handx
call.i point_direction(argc=4)
pushi.e 90
sub.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushloc.v local.handy
pushloc.v local.handx
pushi.e 0
conv.i.v
pushloc.v local.handSprite
call.i draw_sprite_ext(argc=9)
popz.v

:[85]
push.v self.targetx
push.v self.whipball
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.targety
push.v self.whipball
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.attackoffset
pushi.e 45
sub.i.v
push.v self.whipball
pushi.e -9
pop.v.v [stacktop]self.image_angle

:[86]
push.v self.attacktimer
pushi.e 55
cmp.i.v GT
bf [end]

:[87]
push.v self.attacktimer
pushi.e 55
conv.i.v
pushi.e 65
conv.i.v
call.i gml_Script_scr_inverselerp(argc=3)
pop.v.v local.invlerp
pushloc.v local.invlerp
push.v self.targetx
pushloc.v local.handx
call.i lerp(argc=3)
pop.v.v local.xlerp
pushloc.v local.invlerp
push.v self.targety
pushloc.v local.handy
call.i lerp(argc=3)
pop.v.v local.ylerp
pushloc.v local.handx
push.v self.whipball
pushi.e -9
pop.v.v [stacktop]self.origx
pushloc.v local.handy
push.v self.whipball
pushi.e -9
pop.v.v [stacktop]self.origy
push.v self.targety
push.v self.targetx
pushloc.v local.handy
pushloc.v local.handx
call.i point_direction(argc=4)
pop.v.v local.linkdir
pushi.e 1
pop.v.i self.i

:[88]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [90]

:[89]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushloc.v local.linkdir
pushi.e 2
conv.i.v
pushi.e 12
conv.i.v
push.v self.i
pushi.e 12
conv.i.d
div.d.v
pushloc.v local.ylerp
pushloc.v local.handy
call.i lerp(argc=3)
push.v self.i
pushi.e 12
conv.i.d
div.d.v
pushloc.v local.xlerp
pushloc.v local.handx
call.i lerp(argc=3)
pushi.e 0
conv.i.v
pushi.e 547
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [88]

:[90]
push.v self.state
pushi.e 2
cmp.i.v EQ
bt [92]

:[91]
push.v self.state
pushi.e 3
cmp.i.v EQ
b [93]

:[92]
push.e 1

:[93]
bf [95]

:[94]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.targety
push.v self.targetx
pushloc.v local.handy
pushloc.v local.handx
call.i point_direction(argc=4)
pushi.e 90
sub.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushloc.v local.handy
pushloc.v local.handx
pushi.e 0
conv.i.v
pushloc.v local.handSprite
call.i draw_sprite_ext(argc=9)
popz.v

:[95]
pushloc.v local.xlerp
push.v self.whipball
pushi.e -9
pop.v.v [stacktop]self.x
pushloc.v local.ylerp
push.v self.whipball
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.attackoffset
pushloc.v local.invlerp
pushi.e 720
mul.i.v
add.v.v
push.v self.whipball
pushi.e -9
pop.v.v [stacktop]self.image_angle

:[end]