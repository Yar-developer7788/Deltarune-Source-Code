.localvar 2 arguments
.localvar 23794 tailsprite 10757
.localvar 23795 handSprite 10758
.localvar 23814 handdir 10759
.localvar 23815 handlength 10760
.localvar 23812 handx 10761
.localvar 23813 handy 10762
.localvar 23816 rot1 10763
.localvar 23817 rot2 10764
.localvar 23818 whipimage 10765
.localvar 23796 whipSprite 10766
.localvar 23797 legSprite 10767
.localvar 23798 bodySprite 10768
.localvar 23799 headSprite 10769
.localvar 23821 invlerp 10772
.localvar 23822 xlerp 10773
.localvar 23823 ylerp 10774
.localvar 23824 linkdir 10775

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
add.d.v
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
b [22]

:[7]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [11]

:[8]
push.v self.timer
pushi.e 8
add.i.v
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
b [22]

:[11]
push.v self.state
pushi.e 2
cmp.i.v EQ
bf [16]

:[12]
push.v self.timer
push.v self.animConst
pushi.e 5
mul.i.v
cmp.v.v GTE
bf [14]

:[13]
push.v self.timer
push.d 1.5
sub.d.v
pop.v.v self.timer
b [15]

:[14]
push.v self.animConst
pushi.e 5
mul.i.v
pop.v.v self.timer

:[15]
b [22]

:[16]
push.v self.state
pushi.e 4
cmp.i.v EQ
bf [22]

:[17]
push.v self.timer
push.v self.animConst
push.d 2.5
mul.d.v
cmp.v.v GTE
bf [19]

:[18]
push.v self.timer
push.d 0.25
add.d.v
pop.v.v self.timer
b [20]

:[19]
push.v self.timer
push.d 1.5
add.d.v
pop.v.v self.timer

:[20]
push.v self.timer
push.v self.animConst
pushi.e 3
mul.i.v
cmp.v.v GTE
bf [22]

:[21]
push.v self.animConst
pushi.e 3
mul.i.v
pop.v.v self.timer

:[22]
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
bf [24]

:[23]
pushi.e 1690
conv.i.v
b [25]

:[24]
pushi.e -1
pushi.e 3
push.v [array]self.sprite

:[25]
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
bf [27]

:[26]
pushi.e -45
conv.i.v
b [28]

:[27]
pushi.e 0
conv.i.v

:[28]
pop.v.v local.rot1
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
pushi.e 45
conv.i.v
b [31]

:[30]
pushi.e 90
conv.i.v

:[31]
pop.v.v local.rot2
pushi.e 0
pop.v.i local.whipimage
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [36]

:[32]
pushi.e 1692
pop.v.i local.handSprite
push.v self.timer
push.v self.animConst
push.d 2.5
mul.d.v
cmp.v.v GTE
bf [34]

:[33]
pushi.e 4
pop.v.i local.whipimage
b [36]

:[34]
push.v self.timer
push.v self.animConst
pushi.e 2
mul.i.v
cmp.v.v GTE
bf [36]

:[35]
pushi.e 2
pop.v.i local.whipimage

:[36]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [42]

:[37]
push.v self.timer
push.v self.animConst
pushi.e 5
mul.i.v
cmp.v.v LT
bf [39]

:[38]
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

:[39]
push.v self.timer
push.v self.animConst
pushi.e 4
mul.i.v
cmp.v.v LT
bf [41]

:[40]
pushi.e 1691
pop.v.i local.handSprite

:[41]
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
b [50]

:[42]
push.v self.state
pushi.e 2
cmp.i.v NEQ
bf [47]

:[43]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [45]

:[44]
push.v self.attacktimer
pushi.e 55
cmp.i.v GT
b [46]

:[45]
push.e 0

:[46]
not.b
b [48]

:[47]
push.e 0

:[48]
bf [50]

:[49]
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

:[50]
pushi.e -1
pushi.e 4
push.v [array]self.sprite
pop.v.v local.whipSprite
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
pushloc.v local.whipSprite
call.i draw_sprite_ext(argc=9)
popz.v
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
bf [54]

:[51]
push.v self.attacktimer
pushi.e 5
cmp.i.v GTE
bf [54]

:[52]
push.v self.attacktimer
pushi.e 20
cmp.i.v LTE
bf [54]

:[53]
pushglb.v global.turntimer
pushi.e 30
cmp.i.v GT
b [55]

:[54]
push.e 0

:[55]
bf [60]

:[56]
push.v self.attackoffset
pushi.e 90
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [58]

:[57]
pushi.e 0
conv.i.v
b [59]

:[58]
pushi.e 3
conv.i.v

:[59]
push.v self.whipball
pushi.e -9
pop.v.v [stacktop]self.warnoffset
push.v self.attacktimer
pushi.e 4
sub.i.v
push.v self.whipball
pushi.e -9
pop.v.v [stacktop]self.warning

:[60]
push.v self.attacktimer
pushi.e 20
cmp.i.v GT
bf [62]

:[61]
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

:[62]
push.v self.attacktimer
pushi.e 20
cmp.i.v GT
bf [64]

:[63]
push.v self.attacktimer
pushi.e 30
cmp.i.v LT
b [65]

:[64]
push.e 0

:[65]
bf [70]

:[66]
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

:[67]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [69]

:[68]
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
b [67]

:[69]
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

:[70]
push.v self.attacktimer
pushi.e 30
cmp.i.v GTE
bf [72]

:[71]
push.v self.attacktimer
pushi.e 55
cmp.i.v LTE
b [73]

:[72]
push.e 0

:[73]
bf [80]

:[74]
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

:[75]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [77]

:[76]
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
b [75]

:[77]
push.v self.state
pushi.e 2
cmp.i.v EQ
bf [79]

:[78]
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

:[79]
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

:[80]
push.v self.attacktimer
pushi.e 55
cmp.i.v GT
bf [end]

:[81]
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

:[82]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [84]

:[83]
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
b [82]

:[84]
push.v self.state
pushi.e 2
cmp.i.v EQ
bt [86]

:[85]
push.v self.state
pushi.e 3
cmp.i.v EQ
b [87]

:[86]
push.e 1

:[87]
bf [89]

:[88]
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

:[89]
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