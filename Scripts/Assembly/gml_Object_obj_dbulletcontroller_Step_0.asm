.localvar 2 arguments
.localvar 6482 xx 9861
.localvar 6483 yy 9862
.localvar 21767 childgravity 9864
.localvar 21768 launchspeed 9866
.localvar 21775 _birdcount 9873
.localvar 21780 _sbw 9878
.localvar 21783 _bounce 9881
.localvar 21785 _birds 9883
.localvar 107 i 9897
.localvar 21799 startDir 9898
.localvar 21800 spawnDir 9899
.localvar 21801 _spindir 9900
.localvar 21806 _btimeSpeed 9906
.localvar 21811 _btime 9911
.localvar 21812 popup 9912
.localvar 21836 lastTimeSpeed 9934
.localvar 14240 xoffset 9935
.localvar 21838 laneswitchSpeed 9937
.localvar 14250 distance 9943
.localvar 6229 offset 9944
.localvar 21846 _thrash 9947
.localvar 21848 headattack 9949
.localvar 21850 legattack 9952
.localvar 21851 thrashcon 9954
.localvar 9596 leftx 9960
.localvar 20149 attacktimer 9971
.localvar 21866 quizReady 9972
.localvar 21867 _maru 9973
.localvar 21868 _batsu 9974
.localvar 14435 xmod 9977
.localvar 14568 initangle 9980
.localvar 14569 initspeed 9981

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [12]

:[1]
pushi.e -5
push.v self.creator
conv.v.i
push.v [array]self.monsterattackname
call.i gml_Script_scr_monsterattacknamecount(argc=1)
pop.v.v self.sameattack
push.v self.sameattack
pushi.e 1
cmp.i.v GT
bf [9]

:[2]
push.v self.creator
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
push.v self.sameattack
pushi.e 1
sub.i.v
pop.v.v self.sameattacker
b [9]

:[4]
push.v self.creator
pushi.e 1
cmp.i.v EQ
bf [9]

:[5]
push.v self.sameattack
pushi.e 3
cmp.i.v EQ
bf [7]

:[6]
push.v self.creator
b [8]

:[7]
pushi.e -5
pushi.e 0
push.v [array]self.monsterattackname
pushi.e -5
pushi.e 1
push.v [array]self.monsterattackname
cmp.v.v EQ
conv.b.v

:[8]
pop.v.v self.sameattacker

:[9]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [11]

:[10]
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.miny
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.maxy
push.v 872.x
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.minx
push.v 872.x
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.maxx

:[11]
pushi.e 1
pop.v.i self.init

:[12]
push.v self.btimer
pushi.e 1
add.i.v
pop.v.v self.btimer
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [17]

:[13]
push.v self.btimer
push.v self.timermax
push.v self.ratio
mul.v.v
cmp.v.v GTE
bf [17]

:[14]
pushi.e 0
pop.v.i self.btimer
pushi.e 30
pushi.e 120
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.dir
pushi.e 140
pushi.e 80
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.radius
push.v self.dir
push.v self.radius
call.i lengthdir_x(argc=2)
pop.v.v local.xx
push.v self.dir
push.v self.radius
call.i lengthdir_y(argc=2)
pop.v.v local.yy
pushi.e 851
conv.i.v
push.v 631.y
pushi.e 8
add.i.v
pushloc.v local.yy
add.v.v
push.v 631.x
pushi.e 8
add.i.v
pushloc.v local.xx
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bm
push.v self.grazepoints
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.grazepoints
push.v self.bm
pushi.e -9
push.v [stacktop]self.y
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 40
add.i.v
cmp.v.v LT
bf [16]

:[15]
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 40
add.i.v
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.y

:[16]
push.v self.damage
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.target

:[17]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [23]

:[18]
push.v self.btimer
pushi.e 9
push.v self.ratio
mul.v.i
cmp.v.v GTE
bf [22]

:[19]
pushi.e 0
pop.v.i self.btimer
pushi.e 140
pushi.e 40
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.radius
push.v self.radius
push.v self.side
mul.v.v
pop.v.v local.yy
pushi.e -100
pushi.e 200
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v local.xx
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.num
push.v self.num
pushi.e 3
cmp.i.v EQ
bf [21]

:[20]
pushi.e -10
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v local.xx

:[21]
pushi.e 853
conv.i.v
push.v 631.y
pushi.e 8
add.i.v
pushloc.v local.yy
add.v.v
push.v 631.x
pushi.e 8
add.i.v
pushloc.v local.xx
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target

:[22]
b [end]

:[23]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [30]

:[24]
push.v self.btimer
pushi.e 10
push.v self.ratio
mul.v.i
cmp.v.v GTE
bf [29]

:[25]
pushi.e 0
pop.v.i self.btimer
pushi.e 120
pushi.e 80
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.radius
pushi.e 449
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bm
push.v self.bm
call.i gml_Script_scr_bullet_inherit(argc=1)
popz.v
push.d 0.5
pop.v.d local.childgravity
pushi.e 16
conv.i.v
pushi.e 8
conv.i.v
push.v self.y
call.i gml_Script_cameray(argc=0)
sub.v.v
pushi.e 200
conv.i.v
pushi.e 40
conv.i.v
call.i gml_Script_scr_remapvalue(argc=5)
pop.v.v local.launchspeed
push.v self.made
pushi.e 3
mod.i.v
pushi.e 2
cmp.i.v EQ
bf [27]

:[26]
pushi.e 180
pushi.e 1
conv.i.v
pushloc.v local.childgravity
push.v self.x
push.v 631.x
sub.v.v
pushi.e 4
add.i.v
pushloc.v local.launchspeed
call.i gml_Script_scr_getlaunchdirection(argc=4)
sub.v.i
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.direction
b [28]

:[27]
pushi.e 180
pushi.e 1
conv.i.v
pushloc.v local.childgravity
pushi.e 250
conv.i.v
call.i random(argc=1)
push.v self.x
push.v self.maxx
sub.v.v
add.v.v
pushloc.v local.launchspeed
call.i gml_Script_scr_getlaunchdirection(argc=4)
sub.v.i
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.direction

:[28]
push.v self.damage
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.target
push.d 0.6
push.v self.bm
pushi.e -9
pop.v.d [stacktop]self.childgravity
pushloc.v local.launchspeed
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.childspeed
pushi.e 7
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.grazepoints
push.v self.direction
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.made
push.e 1
add.i.v
pop.v.v self.made

:[29]
b [end]

:[30]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [43]

:[31]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [34]

:[32]
pushi.e 2
pop.v.i self.init
pushi.e 451
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.special
pushi.e 0
push.v self.special
pushi.e -9
pop.v.i [stacktop]self.loop
pushi.e 0
push.v self.special
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.v self.creator
push.v self.special
pushi.e -9
pop.v.v [stacktop]self.creator
pushi.e -5
push.v self.creator
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
push.v [stacktop]self.depth
push.v self.special
pushi.e -9
pop.v.v [stacktop]self.depth
push.i 133635
setowner.e
pushi.e 0
pushi.e -5
push.v self.creator
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pop.v.i [stacktop]self.visible
push.v self.sameattacker
pushi.e 1
cmp.i.v GTE
bf [34]

:[33]
pushi.e 18
conv.i.v
pushi.e 6
conv.i.v
call.i random_range(argc=2)
push.v self.ratio
mul.v.v
pushi.e 1
push.v self.difficulty
add.v.i
mul.v.v
pop.v.v self.btimer

:[34]
push.v self.btimer
push.v self.difficulty
pushi.e 2
cmp.i.v GTE
bf [36]

:[35]
pushi.e 40
conv.i.v
b [37]

:[36]
pushi.e 24
conv.i.v

:[37]
push.v self.ratio
mul.v.v
pushi.e 1
push.v self.difficulty
add.v.i
mul.v.v
cmp.v.v GTE
bf [42]

:[38]
pushi.e 0
pop.v.i self.btimer
pushi.e 867
conv.i.v
push.v self.y
pushi.e 34
add.i.v
push.v self.x
pushi.e 28
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 452
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.childBullet
push.d 1.2
conv.d.v
push.d 0.8
conv.d.v
call.i random_range(argc=2)
push.d 0.8
conv.d.v
pushi.e 98
conv.i.v
call.i gml_Script_snd_play_x(argc=3)
popz.v
pushi.e 6
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.element
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.d 1.4
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.grazepoints
push.v 631.y
pushi.e 8
add.i.v
push.v 631.x
pushi.e 8
add.i.v
push.v self.y
pushi.e 34
add.i.v
push.v self.x
pushi.e 28
add.i.v
call.i point_direction(argc=4)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [40]

:[39]
pushi.e 4
conv.i.v
b [41]

:[40]
pushi.e 7
conv.i.v

:[41]
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.childSpeed
pushi.e 2
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.firingSpeed
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 1683
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.5
push.v self.special
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e 0
push.v self.special
pushi.e -9
pop.v.i [stacktop]self.image_index

:[42]
b [end]

:[43]
push.v self.type
pushi.e 4
cmp.i.v EQ
bf [48]

:[44]
push.v self.sameattack
pushi.e 3
cmp.i.v LT
bt [46]

:[45]
push.v self.creator
pushi.e 2
cmp.i.v LT
b [47]

:[46]
push.e 1

:[47]
b [49]

:[48]
push.e 0

:[49]
bf [53]

:[50]
push.v self.btimer
pushi.e 7
cmp.i.v GT
bf [52]

:[51]
pushi.e 0
pop.v.i self.btimer
push.v self.x
push.v self.made
pushi.e 30
mul.i.v
sub.v.v
pop.v.v local.xx
push.v self.maxy
pop.v.v local.yy
pushi.e 867
conv.i.v
pushloc.v local.yy
pushloc.v local.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 4
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints
pushi.e 90
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.direction
pushi.e 7
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.childSpeed
push.d 0.25
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.childgravity
pushi.e 2
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.firingSpeed
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 1571
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.made
push.e 1
add.i.v
pop.v.v self.made

:[52]
b [end]

:[53]
push.v self.type
pushi.e 5
cmp.i.v EQ
bf [70]

:[54]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [61]

:[55]
pushi.e 12
push.v self.ratio
mul.v.i
pop.v.v self.btimer
push.v self.sameattacker
pop.v.v self.made
pushi.e 2
pop.v.i self.init
push.v 443.yellow_count
pushi.e 0
cmp.i.v GT
bf [60]

:[56]
push.v 443.bird_count
pop.v.v local._birdcount
push.i 235419
setowner.e
push.v self.special
pushi.e 1
cmp.i.v EQ
bf [58]

:[57]
push.i 4235519
conv.i.v
b [59]

:[58]
pushi.e 255
conv.i.v

:[59]
pushi.e 443
pushloc.v local._birdcount
conv.v.i
pop.v.v [array]self.bird_color
push.i 235420
setowner.e
push.v self.target
pushi.e 443
pushloc.v local._birdcount
conv.v.i
pop.v.v [array]self.red_target
push.i 235421
setowner.e
push.v self.damage
pushi.e 443
pushloc.v local._birdcount
conv.v.i
pop.v.v [array]self.red_damage
push.v 443.bird_count
push.e 1
add.i.v
pop.v.v 443.bird_count
pushi.e 3
pop.v.i self.init
b [61]

:[60]
push.v self.btimer
push.v self.sameattacker
pushi.e 4
mul.i.v
push.v self.ratio
mul.v.v
sub.v.v
pop.v.v self.btimer

:[61]
push.v self.btimer
pushi.e 12
push.v self.ratio
mul.v.i
cmp.v.v GTE
bf [63]

:[62]
push.v self.init
pushi.e 2
cmp.i.v LTE
b [64]

:[63]
push.e 0

:[64]
bf [69]

:[65]
push.v self.maxx
pushi.e 35
add.i.v
push.v self.minx
pushi.e 35
sub.i.v
call.i choose(argc=2)
pushi.e 15
conv.i.v
pushi.e -15
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v local.xx
push.v self.maxy
pushi.e 20
add.i.v
push.v self.miny
pushi.e 20
sub.i.v
call.i random_range(argc=2)
pop.v.v local.yy
pushi.e 446
conv.i.v
pushloc.v local.yy
pushloc.v local.xx
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d
push.v self.special
pushi.e 1
cmp.i.v EQ
bf [67]

:[66]
push.i 4235519
conv.i.v
b [68]

:[67]
pushi.e 255
conv.i.v

:[68]
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_blend
pushi.e 4
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints
push.v self.d
pushi.e -9
dup.i 4
push.v [stacktop]self.depth
pushi.e 11
sub.i.v
pop.i.v [stacktop]self.depth
pushi.e 0
pop.v.i self.btimer

:[69]
b [end]

:[70]
push.v self.type
pushi.e 6
cmp.i.v EQ
bf [100]

:[71]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [84]

:[72]
pushi.e 1
pop.v.i self.ratio
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 2
cmp.i.v EQ
bf [76]

:[73]
push.v self.sameattack
pushi.e 2
cmp.i.v EQ
bf [75]

:[74]
push.d 1.2
pop.v.d self.ratio
b [76]

:[75]
pushi.e 1
pop.v.i self.ratio

:[76]
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 3
cmp.i.v EQ
bf [82]

:[77]
push.v self.sameattack
pushi.e 3
cmp.i.v EQ
bf [79]

:[78]
push.d 1.5
pop.v.d self.ratio
b [82]

:[79]
push.v self.sameattack
pushi.e 2
cmp.i.v EQ
bf [81]

:[80]
push.d 1.7
pop.v.d self.ratio
b [82]

:[81]
push.d 1.2
pop.v.d self.ratio

:[82]
pushi.e 2
pop.v.i self.init
pushi.e 6
conv.i.v
call.i irandom(argc=1)
pop.v.v self.candyindex
push.v self.sameattacker
pushi.e 0
cmp.i.v GT
bf [84]

:[83]
pushi.e 30
push.v self.ratio
mul.v.i
pushi.e 1
push.v self.sameattacker
push.v self.sameattack
div.v.v
sub.v.i
mul.v.v
pop.v.v self.btimer

:[84]
push.v self.btimer
pushi.e 30
push.v self.ratio
mul.v.i
cmp.v.v GT
bf [99]

:[85]
pushi.e 443
pop.v.i local._sbw
pushloc.v local._sbw
pushi.e -9
push.v [stacktop]self.platter_side
pop.v.v self.side
pushloc.v local._sbw
pushi.e -9
dup.i 4
push.v [stacktop]self.platter_side
pushi.e -1
mul.i.v
pop.i.v [stacktop]self.platter_side
pushi.e 0
pop.v.i self.btimer
pushloc.v local._sbw
pushi.e -9
push.v [stacktop]self.blue_count
pushi.e 0
cmp.i.v GT
pop.v.b local._bounce
pushloc.v local._sbw
pushi.e -9
push.v [stacktop]self.red_count
pop.v.v local._birds
push.v self.miny
pushi.e 30
sub.i.v
pop.v.v local.yy
push.v 872.x
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 10
add.i.v
push.v self.side
mul.v.v
add.v.v
pop.v.v local.xx
pushi.e 439
conv.i.v
pushloc.v local.yy
pushloc.v local.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.sameattack
conv.v.b
bt [87]

:[86]
push.v self._combo
pushi.e 3
cmp.i.v EQ
b [88]

:[87]
push.e 1

:[88]
bf [90]

:[89]
pushi.e 3
conv.i.v
b [91]

:[90]
pushi.e 4
conv.i.v

:[91]
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.speed
pushi.e 270
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.direction
push.v self.side
pushi.e -1
mul.i.v
pop.v.v self.side
pushi.e 4
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints
push.v self.special
conv.v.b
bf [93]

:[92]
pushi.e 6
conv.i.v
call.i irandom(argc=1)
pushi.e 6
cmp.i.v EQ
push.v self.d
pushi.e -9
pop.v.b [stacktop]self.hasCandy
b [95]

:[93]
push.v self.made
push.v self.candyindex
cmp.v.v EQ
bf [95]

:[94]
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.hasCandy

:[95]
pushloc.v local._birds
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.birds
pushi.e -1
pushloc.v local._sbw
pushi.e -9
push.v [stacktop]self.platter_offset
sub.v.i
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.timer
pushloc.v local._sbw
pushi.e -9
push.v [stacktop]self.platter_offset
pushi.e 5
add.i.v
pushi.e 30
mod.i.v
pushloc.v local._sbw
pushi.e -9
pop.v.v [stacktop]self.platter_offset
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.special
conv.v.b
bf [97]

:[96]
push.i 32768
conv.i.v
b [98]

:[97]
push.i 65535
conv.i.v

:[98]
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.startColor
push.v self.image_blend
push.v self.d
pushi.e -9
push.v [stacktop]self.startColor
cmp.v.v EQ
push.v self.d
pushi.e -9
push.v [stacktop]self.platterPlate
pushi.e -9
pop.v.b [stacktop]self.image_blend
push.v self.image_blend
push.v self.d
pushi.e -9
push.v [stacktop]self.startColor
cmp.v.v EQ
push.v self.d
pushi.e -9
push.v [stacktop]self.platterLid
pushi.e -9
pop.v.b [stacktop]self.image_blend
push.v self.made
push.e 1
add.i.v
pop.v.v self.made

:[99]
b [end]

:[100]
push.v self.type
pushi.e 7
cmp.i.v EQ
bf [107]

:[101]
push.v self.special
pushi.e 0
cmp.i.v EQ
bf [106]

:[102]
pushi.e 1
pop.v.i self.special
pushi.e 438
conv.i.v
push.v self.y
pushi.e 68
add.i.v
push.v self.x
pushi.e 82
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.creator
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.creator
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 4
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints
pushi.e 4
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.childgraze
push.i 133635
setowner.e
pushi.e 0
pushi.e -5
push.v self.creator
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pop.v.i [stacktop]self.visible
push.v self.sameattack
pushi.e 1
cmp.i.v GT
bf [104]

:[103]
pushi.e -1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.trackplayer

:[104]
push.v self.sameattack
pushi.e 2
cmp.i.v GT
bf [106]

:[105]
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.spawnbullets

:[106]
b [end]

:[107]
push.v self.type
pushi.e 8
cmp.i.v EQ
bf [161]

:[108]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [110]

:[109]
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
b [111]

:[110]
push.e 0

:[111]
bf [113]

:[112]
pushi.e 1
pop.v.i self.special
pushi.e 2
pop.v.i self.init
pushi.e 200
pop.v.i global.turntimer

:[113]
push.v self.btimer
push.v self.difficulty
pushi.e 0
cmp.i.v EQ
bf [115]

:[114]
pushi.e 45
conv.i.v
b [116]

:[115]
pushi.e 45
conv.i.v

:[116]
push.v self.ratio
mul.v.v
cmp.v.v GT
bf [160]

:[117]
pushi.e 1
conv.i.v
call.i irandom(argc=1)
pop.v.v self.pattern
pushi.e -10
pop.v.i self.startDelay
push.v self.difficulty
pushi.e 0
cmp.i.v EQ
bf [131]

:[118]
push.v self.maxx
pushi.e 30
add.i.v
pop.v.v local.xx
pushi.e 0
pop.v.i local.yy
push.v 872.sprite_height
pushi.e 3
conv.i.d
div.d.v
pushi.e 14
sub.i.v
pop.v.v self.yshift
pushi.e 1
conv.i.v
call.i irandom(argc=1)
pushi.e 0
cmp.i.v EQ
bf [120]

:[119]
push.v self.miny
pushi.e 22
add.i.v
pop.v.v local.yy
b [121]

:[120]
push.v self.maxy
pushi.e 22
sub.i.v
pop.v.v local.yy
push.v self.yshift
neg.v
pop.v.v self.yshift

:[121]
pushi.e 0
pop.v.i local.i

:[122]
pushloc.v local.i
pushi.e 4
cmp.i.v LT
bf [130]

:[123]
pushi.e 44
conv.i.v
pushloc.v local.yy
pushloc.v local.xx
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d
push.v local.yy
push.v self.yshift
add.v.v
pop.v.v local.yy
pushi.e 6
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.maxSpeed
push.v self.startDelay
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.timer
pushi.e 5
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints
pushi.e 180
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.direction
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_alpha
push.v self.pattern
conv.v.b
bf [125]

:[124]
pushloc.v local.i
pushi.e 2
mod.i.v
pushi.e 1
cmp.i.v EQ
b [126]

:[125]
push.e 0

:[126]
bf [128]

:[127]
push.v self.startDelay
pushi.e 10
add.i.v
pop.v.v self.startDelay
b [129]

:[128]
push.v self.startDelay
pushi.e 10
sub.i.v
pop.v.v self.startDelay

:[129]
pushi.e 0
pushloc.v local.i
push.d 0.1
mul.d.v
sub.v.i
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_alpha
pushloc.v local.i
pushi.e 4
sub.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.flipTimer
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [122]

:[130]
b [149]

:[131]
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [149]

:[132]
pushi.e 360
conv.i.v
call.i irandom(argc=1)
pop.v.v local.startDir
pushi.e 45
pop.v.i local.spawnDir
push.v self.maxx
pushi.e 30
add.i.v
pop.v.v local.xx
pushi.e 0
pop.v.i local.yy
push.v 872.sprite_height
pushi.e 3
conv.i.d
div.d.v
pushi.e 14
sub.i.v
pop.v.v self.yshift
pushi.e 1
conv.i.v
call.i irandom(argc=1)
pushi.e 0
cmp.i.v EQ
bf [134]

:[133]
push.v self.miny
pushi.e 22
add.i.v
pop.v.v local.yy
b [135]

:[134]
push.v self.maxy
pushi.e 22
sub.i.v
pop.v.v local.yy
push.v self.yshift
neg.v
pop.v.v self.yshift

:[135]
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
pop.v.v local._spindir
pushi.e 0
pop.v.i local.i

:[136]
pushloc.v local.i
pushi.e 8
cmp.i.v LT
bf [148]

:[137]
pushi.e 1
pop.v.i self.pattern
push.v 872.x
pushloc.v local.startDir
pushi.e 240
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v local.xx
push.v 872.y
pushloc.v local.startDir
pushi.e 240
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v local.yy
pushi.e 44
conv.i.v
pushloc.v local.yy
pushloc.v local.xx
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d
pushloc.v local.startDir
pushi.e 180
add.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 6
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.maxSpeed
pushi.e 5
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints
push.v self.startDelay
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.timer
pushi.e 240
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.maxdistance
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushloc.v local._spindir
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.spindir
push.v self.pattern
conv.v.b
bf [142]

:[138]
pushloc.v local.i
pushi.e 2
mod.i.v
pushi.e 1
cmp.i.v EQ
bf [140]

:[139]
push.v self.startDelay
pushi.e 15
add.i.v
pop.v.v self.startDelay
b [141]

:[140]
push.v self.startDelay
pushi.e 15
sub.i.v
pop.v.v self.startDelay

:[141]
b [143]

:[142]
push.v self.startDelay
pushi.e 5
sub.i.v
pop.v.v self.startDelay

:[143]
push.v self.special
pushi.e 1
cmp.i.v EQ
bf [145]

:[144]
pushi.e 1
push.v self.d
pushi.e -9
pop.v.b [stacktop]self.firstwave
b [147]

:[145]
push.v self.special
pushi.e 2
cmp.i.v EQ
bf [147]

:[146]
push.v self.startDelay
push.d 12.831853071795862
add.d.v
pop.v.v self.startDelay

:[147]
pushi.e 0
pushloc.v local.i
push.d 0.1
mul.d.v
sub.v.i
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_alpha
pushloc.v local.i
pushi.e 4
sub.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.flipTimer
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.middespawn
push.v local.startDir
pushloc.v local.spawnDir
add.v.v
pop.v.v local.startDir
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [136]

:[148]
pushi.e 1
push.v self.side
sub.v.i
pop.v.v self.side

:[149]
push.v self.special
pushi.e 1
cmp.i.v EQ
bf [151]

:[150]
pushi.e 0
pop.v.i self.special
b [160]

:[151]
push.v self.special
pushi.e 2
cmp.i.v EQ
bf [153]

:[152]
pushi.e 0
pop.v.i self.special
pushi.e 0
pop.v.i self.btimer
b [160]

:[153]
push.v self.pattern
conv.v.b
bf [155]

:[154]
push.v self.difficulty
pushi.e 0
cmp.i.v EQ
b [156]

:[155]
push.e 0

:[156]
bf [158]

:[157]
pushi.e 10
conv.i.v
b [159]

:[158]
pushi.e 0
conv.i.v

:[159]
pop.v.v self.btimer

:[160]
b [end]

:[161]
push.v self.type
pushi.e 9
cmp.i.v EQ
bf [178]

:[162]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [164]

:[163]
pushi.e 487
conv.i.v
push.v self.y
pushi.e 114
sub.i.v
push.v self.x
pushi.e 18
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.berdly
push.i 133635
setowner.e
pushi.e 0
pushi.e -5
push.v self.creator
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pop.v.i [stacktop]self.visible
push.v self.creator
push.v self.berdly
pushi.e -9
pop.v.v [stacktop]self.creator
pushi.e 2
pop.v.i self.init
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.special

:[164]
push.v self.btimer
push.v self.difficulty
pushi.e 1
cmp.i.v GTE
bf [166]

:[165]
pushi.e 50
conv.i.v
b [167]

:[166]
pushi.e 30
conv.i.v

:[167]
push.v self.ratio
mul.v.v
cmp.v.v GT
bf [169]

:[168]
push.v self.made
pushi.e 6
cmp.i.v LT
b [170]

:[169]
push.e 0

:[170]
bf [177]

:[171]
pushi.e 486
conv.i.v
push.v self.y
pushi.e 30
add.i.v
push.v self.x
pushi.e 24
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 2
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.childgraze
pushi.e 10
pop.v.i self.btimer
push.d 0.5
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.timepoints
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 2
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.pathLifetime
push.v self.difficulty
pushi.e 2
cmp.i.v EQ
bt [173]

:[172]
push.v self.made
pushi.e 2
mod.i.v
push.v self.special
cmp.v.v EQ
b [174]

:[173]
push.e 1

:[174]
bf [176]

:[175]
pushi.e 1
push.v self.d
pushi.e -9
pop.v.b [stacktop]self.aim_at_player

:[176]
push.v self.difficulty
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.special
push.v self.made
push.e 1
add.i.v
pop.v.v self.made

:[177]
b [end]

:[178]
push.v self.type
pushi.e 10
cmp.i.v EQ
bf [198]

:[179]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [186]

:[180]
push.v self.difficulty
pushi.e 0
cmp.i.v EQ
bf [182]

:[181]
pushi.e 0
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
pop.v.v self.difficulty

:[182]
pushi.e 2
pop.v.i self.init
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [184]

:[183]
pushi.e 3
conv.i.v
b [185]

:[184]
pushi.e 2
conv.i.v

:[185]
pop.v.v self.maxmake

:[186]
push.v self.btimer
pushi.e 50
push.v self.ratio
mul.v.i
cmp.v.v GTE
bf [188]

:[187]
push.v self.made
push.v self.maxmake
cmp.v.v LT
b [189]

:[188]
push.e 0

:[189]
bf [197]

:[190]
pushi.e 488
conv.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.x
pushi.e 46
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.difficulty
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.difficulty
pushi.e 4
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints
push.v self.made
pushi.e 0
cmp.i.v GT
bf [192]

:[191]
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v EQ
b [193]

:[192]
push.e 0

:[193]
bf [195]

:[194]
pushi.e 0
push.v self.d
pushi.e -9
pop.v.b [stacktop]self.first_set

:[195]
push.v self.made
push.e 1
add.i.v
pop.v.v self.made
pushi.e 0
pop.v.i self.btimer
push.v self.difficulty
pushi.e 1
cmp.i.v LT
bf [197]

:[196]
pushi.e -1
push.v self.difficulty
sub.v.i
pop.v.v self.difficulty

:[197]
b [end]

:[198]
push.v self.type
pushi.e 11
cmp.i.v EQ
bf [221]

:[199]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [203]

:[200]
push.v self.sameattacker
pushi.e 1
cmp.i.v EQ
bf [202]

:[201]
pushi.e 20
push.v self.ratio
mul.v.i
call.i irandom(argc=1)
pop.v.v self.btimer
pushi.e 1
conv.i.v
call.i irandom(argc=1)
pop.v.v self.made

:[202]
pushi.e 2
pop.v.i self.init

:[203]
push.v self.sameattack
pushi.e 1
cmp.i.v EQ
bf [205]

:[204]
pushi.e 12
conv.i.v
b [206]

:[205]
pushi.e 15
conv.i.v

:[206]
pop.v.v local._btimeSpeed
push.v self.special
conv.v.b
bf [208]

:[207]
push.v local._btimeSpeed
pushi.e 5
add.i.v
pop.v.v local._btimeSpeed

:[208]
push.v self.btimer
pushloc.v local._btimeSpeed
push.v self.ratio
mul.v.v
cmp.v.v GTE
bf [220]

:[209]
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.dir
pushi.e 140
pushi.e 40
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.radius
push.v self.dir
push.v self.radius
call.i lengthdir_x(argc=2)
push.v 872.x
add.v.v
pop.v.v local.xx
push.v self.dir
push.v self.radius
call.i lengthdir_y(argc=2)
push.v 872.y
add.v.v
pop.v.v local.yy
pushi.e 431
conv.i.v
pushloc.v local.yy
pushloc.v local.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.special
conv.v.b
bf [211]

:[210]
pushi.e 3
conv.i.v
b [212]

:[211]
pushi.e 5
conv.i.v

:[212]
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.speed
push.v self.special
conv.v.b
bf [214]

:[213]
push.d 0.6
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.slow
push.d 0.6
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.image_speed

:[214]
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 4
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints
pushi.e 0
pop.v.i self.btimer
push.v self.made
pushi.e 1
cmp.i.v EQ
bf [219]

:[215]
push.v self.special
conv.v.b
bf [217]

:[216]
pushi.e 2
conv.i.v
b [218]

:[217]
pushi.e 1
conv.i.v

:[218]
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.targetplayer

:[219]
pushi.e 1
push.v self.made
sub.v.i
pop.v.v self.made

:[220]
b [end]

:[221]
push.v self.type
pushi.e 12
cmp.i.v EQ
bf [223]

:[222]
push.v self.sameattacker
pushi.e 0
cmp.i.v EQ
b [224]

:[223]
push.e 0

:[224]
bf [253]

:[225]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [227]

:[226]
pushi.e 430
conv.i.v
pushbltn.v builtin.mouse_y
pushbltn.v builtin.mouse_x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 429
conv.i.v
push.v 631.y
push.v 631.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.d
pushi.e -9
dup.i 4
push.v [stacktop]self.depth
pushi.e 20
sub.i.v
pop.i.v [stacktop]self.depth
pushi.e 2
pop.v.i self.init

:[227]
push.v self.sameattack
pushi.e 2
cmp.i.v EQ
bf [229]

:[228]
pushi.e 15
conv.i.v
b [230]

:[229]
pushi.e 20
conv.i.v

:[230]
pop.v.v local._btime
push.v self.special
conv.v.b
bf [232]

:[231]
push.v local._btime
pushi.e 5
add.i.v
pop.v.v local._btime

:[232]
push.v self.btimer
push.v self.sameattack
pushi.e 2
cmp.i.v EQ
bf [234]

:[233]
pushi.e 15
conv.i.v
b [235]

:[234]
pushi.e 20
conv.i.v

:[235]
cmp.v.v GTE
bf [252]

:[236]
pushi.e 427
pushenv [238]

:[237]
push.v self.depth
push.e 1
add.i.v
pop.v.v self.depth

:[238]
popenv [237]
push.v self.made
push.v self.sameattack
pushi.e 2
cmp.i.v EQ
bf [240]

:[239]
pushi.e 5
conv.i.v
b [241]

:[240]
pushi.e 3
conv.i.v

:[241]
cmp.v.v GTE
bf [244]

:[242]
pushi.e 0
conv.i.v
pushi.e 427
conv.i.v
call.i instance_find(argc=2)
pop.v.v local.popup
pushloc.v local.popup
pushi.e -4
cmp.i.v NEQ
bf [244]

:[243]
pushi.e 2
pushloc.v local.popup
pushi.e -9
pop.v.i [stacktop]self.state

:[244]
push.v 872.x
pushi.e 60
conv.i.v
call.i irandom(argc=1)
pushi.e 2
mul.i.v
add.v.v
pushi.e 60
sub.i.v
pop.v.v local.xx
push.v 872.y
pushi.e 60
conv.i.v
call.i irandom(argc=1)
pushi.e 2
mul.i.v
add.v.v
pushi.e 60
sub.i.v
pop.v.v local.yy
pushi.e 427
conv.i.v
pushloc.v local.yy
pushloc.v local.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.d
pushi.e -9
dup.i 4
push.v [stacktop]self.depth
pushi.e 15
sub.i.v
pop.i.v [stacktop]self.depth
push.v self.special
conv.v.b
bf [246]

:[245]
pushi.e 1
push.v self.d
pushi.e -9
pop.v.b [stacktop]self.slow
push.d 0.75
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.scalespeed

:[246]
push.v self.made
push.v self.sameattack
pushi.e 2
cmp.i.v EQ
bf [248]

:[247]
pushi.e 5
conv.i.v
b [249]

:[248]
pushi.e 3
conv.i.v

:[249]
cmp.v.v LT
bf [251]

:[250]
push.v self.made
push.e 1
add.i.v
pop.v.v self.made

:[251]
pushi.e 0
pop.v.i self.btimer

:[252]
b [end]

:[253]
push.v self.type
pushi.e 13
cmp.i.v EQ
bf [287]

:[254]
push.v self.made
pushi.e 0
cmp.i.v GT
bf [256]

:[255]
exit.i

:[256]
push.v self.sameattacker
pushi.e 0
cmp.i.v EQ
bf [281]

:[257]
pushi.e 2
conv.i.v
call.i irandom(argc=1)
pop.v.v self.side
call.i gml_Script_scr_monsterpop(argc=0)
pop.v.v self.monstercount
pushi.e 5
pop.v.i self.yoffset
push.v self.monstercount
push.v self.sameattack
cmp.v.v NEQ
bf [259]

:[258]
push.v self.yoffset
pushi.e 20
add.i.v
pop.v.v self.yoffset

:[259]
pushi.e 1
pop.v.i self.made
pushi.e 1
conv.i.v
call.i irandom(argc=1)
pushi.e 2
mul.i.v
pushi.e 1
sub.i.v
pop.v.v self.sidedirection
push.s "CarChase"@21816
conv.s.v
call.i gml_Script_scr_monsterattacknamecount(argc=1)
pushi.e 0
cmp.i.v GT
bt [261]

:[260]
pushi.e 16
conv.i.v
call.i gml_Script_scr_monsterattackidcount(argc=1)
pushi.e 0
cmp.i.v GT
b [262]

:[261]
push.e 1

:[262]
pop.v.b self.cars
pushi.e 0
pop.v.i local.i

:[263]
pushloc.v local.i
push.v self.monstercount
pushi.e 1
cmp.i.v EQ
bf [265]

:[264]
pushi.e 2
conv.i.v
b [266]

:[265]
pushi.e 3
conv.i.v

:[266]
cmp.v.v LT
bf [280]

:[267]
push.v 872.x
pop.v.v local.xx
push.v self.sameattack
pushi.e 1
cmp.i.v EQ
bf [269]

:[268]
pushloc.v local.xx
pushi.e 70
push.v self.sidedirection
neg.v
mul.v.i
add.v.v
pop.v.v local.xx

:[269]
pushi.e 423
conv.i.v
push.v self.miny
push.v self.yoffset
sub.v.v
pushloc.v local.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.minx
pushi.e 10
add.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.lborder
push.v self.maxx
pushi.e 10
sub.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.rborder
push.v self.sameattack
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.fleetsize
push.v self.monstercount
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.fleetspeed
pushi.e 5
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints
push.v self.cars
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.caralert
push.v self.d
pushi.e -9
dup.i 4
push.v [stacktop]self.movedirection
push.v self.sidedirection
mul.v.v
pop.i.v [stacktop]self.movedirection
push.v self.yoffset
push.v self.monstercount
pushi.e 1
cmp.i.v EQ
bf [271]

:[270]
pushi.e 40
conv.i.v
b [272]

:[271]
pushi.e 20
conv.i.v

:[272]
add.v.v
pop.v.v self.yoffset
push.v self.sidedirection
pushi.e -1
mul.i.v
pop.v.v self.sidedirection
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushloc.v local.i
push.v self.side
cmp.v.v EQ
bf [277]

:[273]
push.v self.sameattack
push.v self.monstercount
cmp.v.v EQ
bf [275]

:[274]
pushi.e 15
conv.i.v
b [276]

:[275]
pushi.e 5
conv.i.v

:[276]
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.shottimer

:[277]
push.v self.sameattack
push.v self.monstercount
cmp.v.v EQ
bf [279]

:[278]
pushi.e 1
push.v self.d
pushi.e -9
pop.v.b [stacktop]self.bigshot
pushi.e 4
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints

:[279]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [263]

:[280]
b [286]

:[281]
push.v self.sameattacker
pushi.e 1
cmp.i.v EQ
bf [283]

:[282]
pushi.e 423
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [284]

:[283]
push.e 0

:[284]
bf [286]

:[285]
push.v self.target
pop.v.v 423.targetB
pushi.e 1
pop.v.i self.made

:[286]
b [end]

:[287]
push.v self.type
pushi.e 14
cmp.i.v EQ
bf [306]

:[288]
push.v self.btimer
push.v self.ratio
pushi.e 1
cmp.i.v EQ
bf [290]

:[289]
pushi.e 6
conv.i.v
b [291]

:[290]
pushi.e 10
push.v self.ratio
mul.v.i

:[291]
cmp.v.v GTE
bf [305]

:[292]
push.v self.maxx
pushi.e 40
add.i.v
pushi.e 140
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v local.xx
push.v self.sameattacker
pushi.e 1
cmp.i.v EQ
bf [294]

:[293]
push.v self.minx
pushi.e 40
sub.i.v
pushi.e 140
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v local.xx

:[294]
push.v self.miny
push.v 872.sprite_height
call.i random(argc=1)
add.v.v
pop.v.v local.yy
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v EQ
bf [299]

:[295]
push.v self.special
push.e 1
sub.i.v
pop.v.v self.special
push.v self.special
pushi.e 0
cmp.i.v EQ
bf [297]

:[296]
push.v 631.y
pushi.e 10
add.i.v
pop.v.v local.yy

:[297]
push.v self.special
pushi.e 0
cmp.i.v LTE
bf [299]

:[298]
pushi.e 5
conv.i.v
call.i irandom(argc=1)
pushi.e 5
add.i.v
pop.v.v self.special

:[299]
pushi.e 421
conv.i.v
pushloc.v local.yy
pushloc.v local.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 0
pop.v.i self.btimer
push.v self.sameattacker
pushi.e 0
cmp.i.v EQ
bf [301]

:[300]
pushi.e 180
conv.i.v
b [302]

:[301]
pushi.e 0
conv.i.v

:[302]
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
push.v self.direction
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 5
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.speed
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v EQ
bf [304]

:[303]
push.d -0.2
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.friction
b [305]

:[304]
push.d -0.15
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.friction

:[305]
b [end]

:[306]
push.v self.type
pushi.e 15
cmp.i.v EQ
bf [327]

:[307]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [315]

:[308]
call.i gml_Script_scr_monsterpop(argc=0)
push.v self.sameattack
cmp.v.v EQ
bt [311]

:[309]
push.s "Viruses"@21826
conv.s.v
call.i gml_Script_scr_monsterattacknamecount(argc=1)
pushi.e 1
cmp.i.v EQ
bt [311]

:[310]
pushi.e 14
conv.i.v
call.i gml_Script_scr_monsterattackidcount(argc=1)
pushi.e 1
cmp.i.v EQ
b [312]

:[311]
push.e 1

:[312]
bf [314]

:[313]
push.v self.ratio
push.d 0.75
mul.d.v
pop.v.v self.ratio

:[314]
pushi.e 2
pop.v.i self.init

:[315]
push.v self.btimer
pushi.e 10
push.v self.ratio
mul.v.i
cmp.v.v GTE
bf [326]

:[316]
push.v self.sameattacker
pushi.e 0
cmp.i.v EQ
bf [318]

:[317]
push.v self.minx
pushi.e 40
sub.i.v
pushi.e 140
conv.i.v
call.i random(argc=1)
sub.v.v
b [319]

:[318]
push.v self.maxx
pushi.e 40
add.i.v
pushi.e 140
conv.i.v
call.i random(argc=1)
add.v.v

:[319]
pop.v.v local.xx
push.v self.miny
push.v 872.sprite_height
call.i random(argc=1)
add.v.v
pop.v.v local.yy
pushi.e 414
conv.i.v
pushloc.v local.yy
pushloc.v local.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 4
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints
push.v self.sameattacker
pushi.e 0
cmp.i.v EQ
bf [321]

:[320]
pushi.e 0
conv.i.v
b [322]

:[321]
pushi.e 180
conv.i.v

:[322]
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v EQ
bf [324]

:[323]
pushi.e 7
conv.i.v
b [325]

:[324]
pushi.e 5
conv.i.v

:[325]
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.speed
pushi.e 0
pop.v.i self.btimer

:[326]
b [end]

:[327]
push.v self.type
pushi.e 16
cmp.i.v EQ
bf [401]

:[328]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [342]

:[329]
pushi.e 415
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [333]

:[330]
pushi.e 415
conv.i.v
push.v 872.y
push.v 872.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.street
push.v self.special
pushi.e 0
cmp.i.v NEQ
bf [332]

:[331]
push.v self.special
push.v self.street
pushi.e -9
pop.v.v [stacktop]self.hitcheck

:[332]
push.v self.minx
push.v self.street
pushi.e -9
pop.v.v [stacktop]self.boxLeft
push.v self.miny
push.v self.street
pushi.e -9
pop.v.v [stacktop]self.boxTop
pushi.e 6
push.v self.street
pushi.e -9
pop.v.i [stacktop]self.driveSpeed
push.v self.street
pushi.e -9
dup.i 4
push.v [stacktop]self.depth
pushi.e 2
add.i.v
pop.i.v [stacktop]self.depth
pushi.e 2
push.v self.street
pushi.e -9
pop.v.i [stacktop]self.init
b [336]

:[333]
pushi.e 415
pop.v.i self.street
push.v self.special
pushi.e 0
cmp.i.v NEQ
bf [335]

:[334]
push.v self.special
push.v self.street
pushi.e -9
pop.v.v [stacktop]self.hitcheck

:[335]
pushi.e 0
pop.v.i self.btimer
pushi.e 3
pop.v.i self.init

:[336]
pushi.e 1
conv.i.v
call.i irandom(argc=1)
pushi.e 2
mul.i.v
pushi.e 1
sub.i.v
pop.v.v self.carside
pushi.e 0
pop.v.i self.lastside
push.v self.sameattack
pushi.e 1
cmp.i.v GT
bf [340]

:[337]
push.v self.sameattacker
pushi.e 2
mul.i.v
pushi.e 1
sub.i.v
pop.v.v self.side
push.v self.sameattacker
pushi.e 1
cmp.i.v EQ
bf [339]

:[338]
pushi.e 20
pop.v.i self.btimer

:[339]
b [341]

:[340]
pushi.e 1
conv.i.v
call.i irandom(argc=1)
pushi.e 2
mul.i.v
pushi.e 1
sub.i.v
pop.v.v self.side

:[341]
pushi.e 1
pop.v.i self.made

:[342]
push.v self.btimer
pushi.e 20
push.v self.sameattack
mul.v.i
cmp.v.v GTE
bf [400]

:[343]
pushi.e 416
conv.i.v
push.v self.miny
pushi.e 30
sub.i.v
push.v 872.x
pushi.e 40
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.side
mul.v.v
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.sameattack
pushi.e 1
cmp.i.v EQ
bf [345]

:[344]
push.v self.side
pushi.e -1
mul.i.v
pop.v.v self.side

:[345]
pushi.e 270
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.direction
pushi.e 6
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 4
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.destroyonhit
push.v self.made
push.e 1
add.i.v
pop.v.v self.made
push.v self.made
pushi.e 2
cmp.i.v EQ
bf [399]

:[346]
push.v self.carside
pushi.e 1
cmp.i.v EQ
bf [348]

:[347]
push.v self.street
pushi.e -9
push.v [stacktop]self.lastRightCarSpeed
b [349]

:[348]
push.v self.street
pushi.e -9
push.v [stacktop]self.lastLeftCarSpeed

:[349]
pop.v.v local.lastTimeSpeed
push.v self.init
pushi.e 3
cmp.i.v LT
bf [351]

:[350]
pushi.e 15
conv.i.v
b [352]

:[351]
pushi.e 10
conv.i.v
call.i irandom(argc=1)
pushi.e 10
add.i.v

:[352]
pop.v.v local.xoffset
push.v self.carside
push.v self.street
pushi.e -9
pop.v.v [stacktop]self.lastside
push.v self.street
pushi.e -9
push.v [stacktop]self.anti_cheese
pushi.e 2
cmp.i.v EQ
bf [354]

:[353]
push.v self.street
pushi.e -9
push.v [stacktop]self.lastside
pop.v.v self.carside
b [355]

:[354]
pushi.e 1
conv.i.v
call.i irandom(argc=1)
pushi.e 2
mul.i.v
pushi.e 1
sub.i.v
pop.v.v self.carside

:[355]
push.v self.carside
pushi.e 1
cmp.i.v EQ
bf [357]

:[356]
push.v self.street
pushi.e -9
push.v [stacktop]self.lastRightCarSpeed
b [358]

:[357]
push.v self.street
pushi.e -9
push.v [stacktop]self.lastLeftCarSpeed

:[358]
pop.v.v local.lastTimeSpeed
push.v self.street
pushi.e -9
push.v [stacktop]self.lastside
push.v self.carside
cmp.v.v EQ
bf [361]

:[359]
push.v self.sameattack
pushi.e 2
cmp.i.v EQ
bf [361]

:[360]
pushloc.v local.lastTimeSpeed
pushi.e 2
cmp.i.v EQ
b [362]

:[361]
push.e 0

:[362]
bf [364]

:[363]
push.v self.carside
neg.v
pop.v.v self.carside

:[364]
push.v self.street
pushi.e -9
push.v [stacktop]self.lastside
push.v self.carside
cmp.v.v EQ
bf [368]

:[365]
push.v self.carside
pushi.e 1
cmp.i.v EQ
bf [367]

:[366]
pushi.e 99
push.v self.street
pushi.e -9
pop.v.i [stacktop]self.lastLeftCarSpeed
b [368]

:[367]
pushi.e 99
push.v self.street
pushi.e -9
pop.v.i [stacktop]self.lastRightCarSpeed

:[368]
pushi.e 412
conv.i.v
push.v self.maxy
pushi.e 26
add.i.v
push.v 872.x
pushloc.v local.xoffset
push.v self.carside
mul.v.v
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 90
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.direction
pushi.e 2
conv.i.v
call.i irandom(argc=1)
pushi.e 2
add.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.speed
push.v self.street
pushi.e -9
push.v [stacktop]self.anti_cheese
pushi.e 1
cmp.i.v EQ
bf [373]

:[369]
push.v self.sameattack
pushi.e 2
cmp.i.v EQ
bf [371]

:[370]
pushi.e 3
conv.i.v
b [372]

:[371]
pushi.e 2
conv.i.v

:[372]
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.speed
b [391]

:[373]
push.v self.sameattack
pushi.e 2
cmp.i.v EQ
bt [375]

:[374]
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v EQ
b [376]

:[375]
push.e 1

:[376]
bf [391]

:[377]
push.v self.sameattack
pushi.e 2
cmp.i.v EQ
bf [379]

:[378]
push.v self.carside
push.v self.street
pushi.e -9
push.v [stacktop]self.lastside
cmp.v.v EQ
b [380]

:[379]
push.e 0

:[380]
bf [382]

:[381]
pushi.e 3
conv.i.v
b [383]

:[382]
pushi.e 2
conv.i.v

:[383]
pop.v.v local.laneswitchSpeed
pushloc.v local.lastTimeSpeed
pushloc.v local.laneswitchSpeed
cmp.v.v EQ
bf [385]

:[384]
push.v self.carside
push.v self.street
pushi.e -9
push.v [stacktop]self.lastside
cmp.v.v EQ
b [386]

:[385]
push.e 0

:[386]
bt [388]

:[387]
push.v self.street
pushi.e -9
push.v [stacktop]self.anti_cheese
pushi.e 2
cmp.i.v EQ
b [389]

:[388]
push.e 1

:[389]
bf [391]

:[390]
pushi.e 4
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.speed

:[391]
push.v self.street
pushi.e -9
push.v [stacktop]self.anti_cheese
pushi.e 1
cmp.i.v EQ
bf [393]

:[392]
pushi.e 2
push.v self.street
pushi.e -9
pop.v.i [stacktop]self.anti_cheese
b [395]

:[393]
push.v self.street
pushi.e -9
push.v [stacktop]self.anti_cheese
pushi.e 2
cmp.i.v EQ
bf [395]

:[394]
pushi.e -2
push.v self.street
pushi.e -9
pop.v.i [stacktop]self.anti_cheese

:[395]
push.v self.carside
pushi.e 1
cmp.i.v EQ
bf [397]

:[396]
push.v self.d
pushi.e -9
push.v [stacktop]self.speed
push.v self.street
pushi.e -9
pop.v.v [stacktop]self.lastRightCarSpeed
b [398]

:[397]
push.v self.d
pushi.e -9
push.v [stacktop]self.speed
push.v self.street
pushi.e -9
pop.v.v [stacktop]self.lastLeftCarSpeed

:[398]
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.destroyonhit
pushi.e 4
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints
pushi.e 0
pop.v.i self.made
pushi.e 3
pop.v.i self.init

:[399]
pushi.e 0
pop.v.i self.btimer

:[400]
b [end]

:[401]
push.v self.type
pushi.e 17
cmp.i.v EQ
bf [415]

:[402]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [410]

:[403]
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v EQ
bf [405]

:[404]
push.d 0.5
pop.v.d self.ratio
b [407]

:[405]
push.v self.sameattack
pushi.e 1
cmp.i.v EQ
bf [407]

:[406]
push.d 0.75
pop.v.d self.ratio

:[407]
push.v self.sameattacker
pushi.e 1
cmp.i.v LTE
bf [409]

:[408]
pushi.e 471
conv.i.v
push.v 872.y
pushi.e 1
add.i.v
push.v 872.x
pushi.e 1
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 4
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target

:[409]
pushi.e 2
pop.v.i self.init
b [414]

:[410]
push.v self.btimer
pushi.e 20
push.v self.ratio
mul.v.i
cmp.v.v GTE
bf [414]

:[411]
push.v 471.mausqueue
push.e 1
add.i.v
pop.v.v 471.mausqueue
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v EQ
bf [413]

:[412]
push.v 471.bigmaus
push.e 1
add.i.v
pop.v.v 471.bigmaus
push.i 133633
setowner.e
pushi.e 21
conv.i.v
pushi.e 471
pushi.e 0
pop.v.v [array]self.alarm

:[413]
pushi.e 0
pop.v.i self.btimer

:[414]
b [end]

:[415]
push.v self.type
pushi.e 18
cmp.i.v EQ
bf [417]

:[416]
b [end]

:[417]
push.v self.type
pushi.e 19
cmp.i.v EQ
bf [444]

:[418]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [425]

:[419]
pushi.e 761
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [424]

:[420]
push.v 761.firstturn
pushi.e 1
cmp.i.v EQ
bf [422]

:[421]
pushi.e 120
pop.v.i global.turntimer
b [423]

:[422]
pushi.e 250
pop.v.i global.turntimer

:[423]
pushi.e 0
pop.v.i 761.firstturn

:[424]
pushi.e 469
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 4
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints
pushi.e 473
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v 631.depth
pushi.e 1
add.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 2
pop.v.i self.init
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target

:[425]
push.v self.btimer
pushi.e 140
cmp.i.v EQ
bf [428]

:[426]
pushi.e 761
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [428]

:[427]
push.v 761.cursor_count
pushi.e 1
cmp.i.v GT
b [429]

:[428]
push.e 0

:[429]
bf [431]

:[430]
pushi.e 772
conv.i.v
push.v 761.y
pushi.e 70
add.i.v
push.v 761.x
pushi.e 62
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 4
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints

:[431]
push.v self.btimer
pushi.e 200
cmp.i.v EQ
bf [434]

:[432]
pushi.e 761
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [434]

:[433]
push.v 761.cursor_count
pushi.e 1
cmp.i.v GT
b [435]

:[434]
push.e 0

:[435]
bf [437]

:[436]
pushi.e 772
conv.i.v
push.v 761.y
pushi.e 70
add.i.v
push.v 761.x
pushi.e 62
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 4
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints

:[437]
push.v self.btimer
pushi.e 270
cmp.i.v EQ
bf [440]

:[438]
pushi.e 761
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [440]

:[439]
push.v 761.cursor_count
pushi.e 1
cmp.i.v GT
b [441]

:[440]
push.e 0

:[441]
bf [443]

:[442]
pushi.e 772
conv.i.v
push.v 761.y
pushi.e 70
add.i.v
push.v 761.x
pushi.e 62
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 4
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints

:[443]
b [end]

:[444]
push.v self.type
pushi.e 20
cmp.i.v EQ
bf [448]

:[445]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [447]

:[446]
pushi.e 454
conv.i.v
push.v self.y
pushi.e 6
sub.i.v
push.v self.x
pushi.e 22
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e -5
push.v self.creator
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
push.v [stacktop]self.depth
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
push.i 133635
setowner.e
pushi.e 0
pushi.e -5
push.v self.creator
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pop.v.i [stacktop]self.visible
push.v self.creator
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.creator
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 6
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.element
pushi.e 4
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v EQ
push.v self.d
pushi.e -9
pop.v.b [stacktop]self.difficulty
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.animSpeed
pushi.e 2
pop.v.i self.init

:[447]
b [end]

:[448]
push.v self.type
pushi.e 21
cmp.i.v EQ
bf [452]

:[449]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [451]

:[450]
pushi.e 2
pop.v.i self.init

:[451]
b [end]

:[452]
push.v self.type
pushi.e 22
cmp.i.v EQ
bf [475]

:[453]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [455]

:[454]
pushi.e 115
pop.v.i self.btimer
pushi.e 2
pop.v.i self.init
pushi.e 3
conv.i.v
call.i irandom(argc=1)
pop.v.v self.side

:[455]
push.v self.btimer
pushi.e 120
cmp.i.v GTE
bf [474]

:[456]
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
pushi.e 30
add.i.v
pop.v.v local.distance
pushi.e -40
pop.v.i local.offset
push.v 872.x
pop.v.v local.xx
push.v 872.y
pop.v.v local.yy
push.v self.side
pushi.e 2
cmp.i.v GTE
bf [458]

:[457]
push.v local.distance
pushi.e -1
mul.i.v
pop.v.v local.distance

:[458]
push.v self.side
pushi.e 0
cmp.i.v EQ
bt [460]

:[459]
push.v self.side
pushi.e 2
cmp.i.v EQ
b [461]

:[460]
push.e 1

:[461]
bf [463]

:[462]
push.v local.xx
pushloc.v local.distance
sub.v.v
pop.v.v local.xx
push.v local.yy
pushloc.v local.offset
add.v.v
pop.v.v local.yy
b [464]

:[463]
push.v local.yy
pushloc.v local.distance
add.v.v
pop.v.v local.yy
push.v local.xx
pushloc.v local.offset
add.v.v
pop.v.v local.xx

:[464]
pushi.e 0
pop.v.i local.i

:[465]
pushloc.v local.i
pushi.e 2
cmp.i.v LT
bf [473]

:[466]
pushi.e 716
conv.i.v
pushloc.v local.yy
pushloc.v local.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.side
pushi.e 90
mul.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 4
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints
push.v self.side
pushi.e 0
cmp.i.v EQ
bt [468]

:[467]
push.v self.side
pushi.e 2
cmp.i.v EQ
b [469]

:[468]
push.e 1

:[469]
bf [471]

:[470]
push.v local.yy
pushi.e 80
add.i.v
pop.v.v local.yy
b [472]

:[471]
push.v local.xx
pushi.e 80
add.i.v
pop.v.v local.xx

:[472]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [465]

:[473]
pushi.e 0
pop.v.i self.btimer
push.v self.side
pushi.e 1
add.i.v
pushi.e 4
mod.i.v
pop.v.v self.side

:[474]
b [end]

:[475]
push.v self.type
pushi.e 23
cmp.i.v GTE
bf [477]

:[476]
push.v self.type
pushi.e 25
cmp.i.v LTE
b [478]

:[477]
push.e 0

:[478]
bf [494]

:[479]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [487]

:[480]
push.i 133635
setowner.e
pushi.e 0
pushi.e -5
push.v self.creator
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 585
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.creator
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.creator
push.v self.type
pushi.e 23
sub.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.attack
push.v self.d
pushi.e -9
dup.i 4
push.v [stacktop]self.depth
push.e 1
add.i.v
pop.i.v [stacktop]self.depth
pushi.e 2
pop.v.i self.init
pushi.e -10
pop.v.i self.btimer
push.v self.type
pushi.e 25
cmp.i.v EQ
bf [482]

:[481]
pushi.e 589
conv.i.v
push.v 872.y
push.v 872.x
call.i gml_Script_instance_create(argc=3)
popz.v

:[482]
push.v self.type
pushi.e 23
cmp.i.v EQ
bf [484]

:[483]
pushi.e 586
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.bullettype
pushi.e 10
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.firingspeed
b [486]

:[484]
push.v self.type
pushi.e 24
cmp.i.v EQ
bf [486]

:[485]
pushi.e 587
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.bullettype
pushi.e 28
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.firingspeed
pushi.e 10
pop.v.i self.btimer

:[486]
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 4
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints
b [493]

:[487]
push.v self.type
pushi.e 25
cmp.i.v EQ
bf [490]

:[488]
push.v self.btimer
pushi.e 8
cmp.i.v GTE
bf [490]

:[489]
pushglb.v global.turntimer
pushi.e 50
cmp.i.v GT
b [491]

:[490]
push.e 0

:[491]
bf [493]

:[492]
push.v self.minx
pushi.e 30
conv.i.v
call.i random(argc=1)
sub.v.v
pushi.e 20
sub.i.v
pop.v.v local.xx
push.v 872.y
pushi.e 200
conv.i.v
call.i random(argc=1)
sub.v.v
pushi.e 100
add.i.v
pop.v.v local.yy
pushi.e 588
conv.i.v
pushloc.v local.yy
pushloc.v local.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 4
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints
push.d 0.1
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.speed
pushi.e 0
pop.v.i self.btimer

:[493]
b [end]

:[494]
push.v self.type
pushi.e 26
cmp.i.v EQ
bf [496]

:[495]
push.v self.init
pushi.e 1
cmp.i.v EQ
b [497]

:[496]
push.e 0

:[497]
bf [510]

:[498]
push.v 729.thrash
pop.v.v local._thrash
pushi.e 1
pop.v.i 729.head_difficulty
pushloc.v local._thrash
pushi.e -9
pushi.e 1
push.v [array]self.part
pop.v.v local.headattack
pushi.e 1
pop.v.i 729.headattack
pushloc.v local.headattack
pushi.e 3
cmp.i.v NEQ
bf [500]

:[499]
pushi.e 1
pop.v.i 729.thrashmode

:[500]
pushloc.v local.headattack
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [505]

:[501]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [506]

:[502]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [507]

:[503]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [508]

:[504]
b [509]

:[505]
pushi.e 735
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 8
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints
pushloc.v local._thrash
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.thrash
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
b [509]

:[506]
pushi.e 741
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 8
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints
pushloc.v local._thrash
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.thrash
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
b [509]

:[507]
pushi.e 732
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 8
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints
pushloc.v local._thrash
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.thrash
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
b [509]

:[508]
pushi.e 744
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 24
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints
pushloc.v local._thrash
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.thrash
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.damage
b [509]

:[509]
popz.v
push.v self.difficulty
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.difficulty
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 2
pop.v.i self.init
b [end]

:[510]
push.v self.type
pushi.e 27
cmp.i.v EQ
bf [551]

:[511]
push.v 729.x
pop.v.v self.x
push.v 729.y
pop.v.v self.y
push.v 729.thrash
pop.v.v local._thrash
pushloc.v local._thrash
pushi.e -9
pushi.e 2
push.v [array]self.part
pop.v.v local.legattack
push.v 729.thrashcon
pop.v.v local.thrashcon
pushi.e 0
pop.v.i 729.headattack
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [515]

:[512]
pushi.e 1
pop.v.i 729.wheel_difficulty
pushi.e 1
pop.v.i 729.thrashmode
pushi.e 2
pop.v.i self.init
pushi.e 748
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushloc.v local._thrash
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.thrash
pushi.e 15
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushloc.v local._thrash
pushi.e -9
pushi.e 0
push.v [array]self.part
pushi.e 3
cmp.i.v EQ
bf [515]

:[513]
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.damage
pushloc.v local._thrash
pushi.e -9
pushi.e 1
push.v [array]self.part
pushi.e 3
cmp.i.v EQ
bf [515]

:[514]
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.duckmode

:[515]
pushloc.v local.thrashcon
pushi.e 2
cmp.i.v LTE
bf [517]

:[516]
pushi.e 10
pop.v.i self.btimer

:[517]
pushloc.v local.legattack
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [522]

:[518]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [536]

:[519]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [543]

:[520]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [549]

:[521]
b [550]

:[522]
pushi.e 7
pop.v.i 729.advancespeed
pushi.e 7
pop.v.i 729.returnspeed
pushloc.v local.thrashcon
pushi.e 3
cmp.i.v EQ
bt [524]

:[523]
pushloc.v local.thrashcon
pushi.e 5
cmp.i.v EQ
b [525]

:[524]
push.e 1

:[525]
bf [527]

:[526]
pushloc.v local._thrash
pushi.e -9
push.v [stacktop]self.stomp
pushi.e 0
cmp.i.v NEQ
b [528]

:[527]
push.e 0

:[528]
bf [535]

:[529]
pushi.e 0
pop.v.i local.i

:[530]
pushloc.v local.i
pushi.e 1
cmp.i.v LT
bf [534]

:[531]
pushloc.v local.i
pushi.e 0
cmp.i.v EQ
bf [533]

:[532]
pushi.e 128
conv.i.v
call.i gml_Script_gt_maxy(argc=0)
pushi.e 36
sub.i.v
push.v self.x
pushi.e 30
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 138
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e -3
conv.i.v
pushi.e 3
conv.i.v
call.i choose(argc=2)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_xscale
pushi.e 3
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_yscale

:[533]
pushi.e 760
conv.i.v
push.v self.y
pushi.e 190
add.i.v
push.v self.x
pushi.e 30
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v 872.y
pushi.e 600
sub.i.v
push.v 872.x
push.v self.d
pushi.e -9
push.v [stacktop]self.y
push.v self.d
pushi.e -9
push.v [stacktop]self.x
call.i point_direction(argc=4)
pushi.e 30
conv.i.v
pushi.e -30
conv.i.v
call.i random_range(argc=2)
add.v.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
push.v self.d
pushi.e -9
push.v [stacktop]self.direction
pushi.e 90
sub.i.v
call.i sign(argc=1)
pushi.e 10
conv.i.v
pushi.e 1
conv.i.v
call.i random_range(argc=2)
mul.v.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.spin
pushi.e 10
conv.i.v
pushi.e 8
conv.i.v
call.i random_range(argc=2)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.speed
pushi.e 2075
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.25
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.gravity
push.v 729.depth
pushi.e 1
sub.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 8
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.imageonly
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [530]

:[534]
pushi.e 0
pushloc.v local._thrash
pushi.e -9
pop.v.i [stacktop]self.stomp

:[535]
b [550]

:[536]
pushi.e 12
pop.v.i 729.advancespeed
pushi.e 5
pop.v.i 729.returnspeed
pushloc.v local.thrashcon
pushi.e 4
cmp.i.v EQ
bf [539]

:[537]
push.v self.btimer
pushi.e 12
cmp.i.v GTE
bf [539]

:[538]
push.v 729.thrashtimer
pushi.e 90
cmp.i.v LTE
b [540]

:[539]
push.e 0

:[540]
bf [542]

:[541]
pushi.e 758
conv.i.v
push.v self.y
pushi.e 190
add.i.v
push.v self.x
pushi.e 30
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 88
conv.i.v
pushi.e 40
conv.i.v
call.i random_range(argc=2)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 8
conv.i.v
pushi.e 4
conv.i.v
push.v self.d
pushi.e -9
push.v [stacktop]self.direction
pushi.e 85
conv.i.v
pushi.e 40
conv.i.v
call.i gml_Script_scr_remapvalue(argc=5)
pushi.e 3
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.speed
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.bounce
pushi.e 2074
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 1.5
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.image_yscale
push.d 1.5
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.d 0.25
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.gravity
push.v 729.depth
pushi.e 1
sub.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 10
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 0
pop.v.i self.btimer

:[542]
b [550]

:[543]
pushi.e 4
pop.v.i 729.advancespeed
pushi.e 8
pop.v.i 729.returnspeed
pushloc.v local.thrashcon
pushi.e 3
cmp.i.v EQ
bf [545]

:[544]
push.v self.btimer
pushi.e 11
cmp.i.v GTE
b [546]

:[545]
push.e 0

:[546]
bf [548]

:[547]
pushi.e 747
conv.i.v
push.v self.y
pushi.e 197
add.i.v
push.v self.x
pushi.e 13
add.i.v
pushi.e 8
push.v self.made
mul.v.i
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 90
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.direction
pushi.e 2
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.speed
push.d -0.2
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.gravity
pushloc.v local._thrash
pushi.e -9
push.v [stacktop]self.depth
pushi.e 1
sub.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 8
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 0
pop.v.i self.btimer
push.v self.made
push.e 1
add.i.v
pop.v.v self.made

:[548]
b [550]

:[549]
pushi.e 7
pop.v.i 729.advancespeed
pushi.e 7
pop.v.i 729.returnspeed
b [550]

:[550]
popz.v
b [end]

:[551]
push.v self.type
pushi.e 28
cmp.i.v EQ
bf [561]

:[552]
push.v self.btimer
pushi.e 15
push.v self.made
pushi.e 2
conv.i.d
div.d.v
sub.v.i
pushi.e 10
conv.i.v
call.i max(argc=2)
cmp.v.v GTE
bf [560]

:[553]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [556]

:[554]
pushi.e 1
pop.v.i 729.saberanim
pushi.e 3
conv.i.v
call.i irandom(argc=1)
pop.v.v local.xoffset
pushi.e 10
pop.v.i self.btimer
pushi.e -1
pop.v.i self.special
pushi.e 2
pop.v.i self.init
exit.i

:[555]
b [557]

:[556]
pushi.e 2
conv.i.v
call.i irandom(argc=1)
pop.v.v local.xoffset

:[557]
pushloc.v local.xoffset
push.v self.special
cmp.v.v EQ
bf [559]

:[558]
pushi.e 3
pop.v.i local.xoffset

:[559]
push.v 872.x
pushi.e 53
sub.i.v
pop.v.v local.leftx
pushi.e 746
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 20
sub.i.v
pushloc.v local.leftx
pushloc.v local.xoffset
pushi.e 36
mul.i.v
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.d 0.25
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.gravity
push.d 3.5
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.vspeed
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 8
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushloc.v local.xoffset
pop.v.v self.special
pushi.e 0
pop.v.i self.btimer
push.v self.made
push.e 1
add.i.v
pop.v.v self.made

:[560]
b [end]

:[561]
push.v self.type
pushi.e 29
cmp.i.v EQ
bf [565]

:[562]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [564]

:[563]
pushi.e 2
conv.i.v
call.i irandom(argc=1)
pop.v.v self.special
pushi.e 2
pop.v.i self.init

:[564]
push.v self.x
pop.v.v local.xx
push.v self.y
pop.v.v local.yy
pushi.e 737
conv.i.v
pushloc.v local.yy
pushloc.v local.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.direction
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 4
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints
push.v self.special
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.attackdirection
push.v self.special
pushi.e 1
conv.i.v
call.i irandom(argc=1)
add.v.v
pushi.e 3
mod.i.v
pop.v.v self.special
b [end]

:[565]
push.v self.type
pushi.e 30
cmp.i.v EQ
bf [573]

:[566]
push.v self.btimer
pushi.e 20
push.v self.ratio
mul.v.i
cmp.v.v GTE
bf [572]

:[567]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 20
sub.i.v
pop.v.v local.xx
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [569]

:[568]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 660
add.i.v
pop.v.v local.xx

:[569]
push.v self.miny
push.v self.maxy
push.v self.miny
sub.v.v
call.i random(argc=1)
add.v.v
pop.v.v local.yy
pushi.e 408
conv.i.v
pushloc.v local.yy
pushloc.v local.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bul
pushi.e 12
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.speed
push.v self.damage
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 4
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.grazepoints
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [571]

:[570]
pushi.e 180
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.direction
pushi.e 180
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.image_angle

:[571]
pushi.e 0
pop.v.i self.btimer

:[572]
b [end]

:[573]
push.v self.type
pushi.e 31
cmp.i.v EQ
bf [585]

:[574]
push.v self.btimer
pushi.e 30
push.v self.ratio
mul.v.i
cmp.v.v GTE
bf [584]

:[575]
pushi.e 0
pop.v.i self.btimer
push.v self.side
pushi.e -1
cmp.i.v EQ
bf [577]

:[576]
pushi.e 225
pop.v.i self.dir

:[577]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [579]

:[578]
pushi.e 315
pop.v.i self.dir

:[579]
pushi.e 400
pop.v.i self.radius
push.v self.dir
push.v self.radius
call.i lengthdir_x(argc=2)
pop.v.v local.xx
push.v self.dir
push.v self.radius
call.i lengthdir_y(argc=2)
pop.v.v local.yy
pushi.e 407
conv.i.v
push.v 631.y
pushi.e 8
add.i.v
pushloc.v local.yy
add.v.v
push.v 631.x
pushi.e 8
add.i.v
pushloc.v local.xx
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 4
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints
push.v self.dir
pushi.e 180
add.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 20
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.friction
push.v self.d
pushi.e -9
pushenv [581]

:[580]
push.v self.direction
pop.v.v self.image_angle

:[581]
popenv [580]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [583]

:[582]
pushi.e -1
pop.v.i self.side
b [584]

:[583]
pushi.e 1
pop.v.i self.side

:[584]
b [end]

:[585]
push.v self.type
pushi.e 32
cmp.i.v EQ
bf [659]

:[586]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [605]

:[587]
pushi.e 0
pop.v.i self.dd
pushi.e 0
pop.v.i self.dd2
pushi.e 0
pop.v.i self.phase
pushi.e 0
pop.v.i self.strikes
push.v self.special
pushi.e 1
cmp.i.v EQ
bf [589]

:[588]
pushi.e 5400
pop.v.i global.turntimer

:[589]
push.v 872.x
pop.v.v local.xx
push.v 872.y
pop.v.v local.yy
pushi.e 360
conv.i.v
pushloc.v local.yy
pushloc.v local.xx
pushi.e 1
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 1705
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 45
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_angle
push.i 8421504
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e 6
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.element
push.v 872.depth
pushi.e 1
sub.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 0
pop.v.i local.i

:[590]
pushloc.v local.i
pushi.e 4
cmp.i.v LT
bf [604]

:[591]
push.v 872.x
pop.v.v local.xx
push.v 872.y
pop.v.v local.yy
pushloc.v local.i
pushi.e 0
cmp.i.v EQ
bt [593]

:[592]
pushloc.v local.i
pushi.e 3
cmp.i.v EQ
b [594]

:[593]
push.e 1

:[594]
bf [599]

:[595]
push.v local.yy
pushloc.v local.i
pushi.e 0
cmp.i.v EQ
bf [597]

:[596]
pushi.e -50
conv.i.v
b [598]

:[597]
pushi.e 50
conv.i.v

:[598]
add.v.v
pop.v.v local.yy
b [603]

:[599]
push.v local.xx
pushloc.v local.i
pushi.e 1
cmp.i.v EQ
bf [601]

:[600]
pushi.e -50
conv.i.v
b [602]

:[601]
pushi.e 50
conv.i.v

:[602]
add.v.v
pop.v.v local.xx

:[603]
pushi.e 360
conv.i.v
pushloc.v local.yy
pushloc.v local.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 1704
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushloc.v local.i
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_index
pushi.e 6
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.element
push.i 8421504
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_blend
push.v 872.depth
pushi.e 1
sub.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [590]

:[604]
pushi.e 45
pop.v.i 872.target_angle
pushi.e 45
pop.v.i 872.image_angle
pushi.e 461
conv.i.v
push.v self.y
pushi.e 6
sub.i.v
push.v self.x
pushi.e 22
sub.i.v
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d
push.v self.made
push.e 1
add.i.v
pop.v.v self.made
pushi.e -5
push.v self.creator
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
push.v [stacktop]self.depth
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
call.i @@This@@(argc=0)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.controller
pushi.e 6
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.element
push.v self.special
pushi.e -2
cmp.i.v LT
push.v self.d
pushi.e -9
pop.v.b [stacktop]self.dojo
push.v self.creator
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.creator
push.i 235505
setowner.e
pushi.e -1
pushi.e -5
push.v self.creator
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pop.v.i [stacktop]self.lastQuizLetter
push.v self.difficulty
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.difficulty
pushi.e 2
pop.v.i self.init
push.v global.turntimer
pushi.e 120
add.i.v
pop.v.v global.turntimer
pushi.e 0
pop.v.i self.btimer

:[605]
pushi.e 90
pop.v.i local.attacktimer
push.v self.difficulty
pushi.e 0
cmp.i.v GT
bf [610]

:[606]
push.v self.difficulty
pushi.e 3
cmp.i.v EQ
bf [608]

:[607]
pushi.e 40
conv.i.v
b [609]

:[608]
pushi.e 60
conv.i.v

:[609]
pop.v.v local.attacktimer

:[610]
pushi.e 461
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
pop.v.b local.quizReady
push.v self.made
pushi.e 4
cmp.i.v EQ
bt [612]

:[611]
push.v self.special
pushi.e -2
cmp.i.v LT
b [613]

:[612]
push.e 1

:[613]
bf [616]

:[614]
pushloc.v local.quizReady
conv.v.b
bf [616]

:[615]
push.v self.btimer
pushi.e 0
cmp.i.v GTE
b [617]

:[616]
push.e 0

:[617]
bf [648]

:[618]
push.v self.special
pushi.e 1
cmp.i.v EQ
bf [620]

:[619]
pushi.e -2
pop.v.i self.special
pushi.e -20
pop.v.i self.btimer
b [647]

:[620]
push.v self.special
pushi.e -2
cmp.i.v EQ
bf [624]

:[621]
pushi.e -1
pop.v.i self.special
push.v self.difficulty
push.e 1
add.i.v
pop.v.v self.difficulty
pushi.e 1
conv.i.v
pushi.e 1707
conv.i.v
push.v self.y
pushi.e 4
add.i.v
push.v self.x
pushi.e 80
add.i.v
call.i gml_Script_scr_dark_marker_animated(argc=4)
pop.v.v self.dd
pushi.e 292
conv.i.v
push.v self.y
pushi.e 66
add.i.v
push.v self.x
pushi.e 74
add.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.dd2
pushi.e 360
conv.i.v
push.v self.y
pushi.e 175
add.i.v
push.v self.x
push.v self.phase
pushi.e 40
mul.i.v
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local._maru
pushi.e 1709
pushloc.v local._maru
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
pushloc.v local._maru
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
pushloc.v local._maru
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 25
conv.i.v
push.v 872.y
push.v 872.x
call.i gml_Script_instance_create(argc=3)
pop.v.v local._maru
pushi.e 1825
pushloc.v local._maru
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 3
pushloc.v local._maru
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 3
pushloc.v local._maru
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v 631.depth
pushi.e 15
sub.i.v
pushloc.v local._maru
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 45
pushloc.v local._maru
pushi.e -9
pop.v.i [stacktop]self.max_time
push.v self.dd2
pushi.e -9
push.v [stacktop]self.depth
pushi.e 1
sub.i.v
push.v self.dd
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 453
pushenv [623]

:[622]
pushi.e 0
pop.v.i self.visible

:[623]
popenv [622]
pushi.e 149
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e -45
pop.v.i self.btimer
push.v self.phase
push.e 1
add.i.v
pop.v.v self.phase
b [647]

:[624]
push.v self.special
pushi.e -1
cmp.i.v EQ
bf [637]

:[625]
push.v self.dd
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [627]

:[626]
push.v self.dd
call.i instance_destroy(argc=1)
popz.v

:[627]
push.v self.dd2
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [629]

:[628]
push.v self.dd2
call.i instance_destroy(argc=1)
popz.v

:[629]
pushi.e 0
pop.v.i self.made
pushi.e 453
pushenv [631]

:[630]
pushi.e 1
pop.v.i self.visible

:[631]
popenv [630]
push.v self.strikes
pushi.e 3
cmp.i.v EQ
bf [633]

:[632]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 36
pop.v.v [array]self.flag
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 39
pop.v.v [array]self.flag
pushi.e 10
pop.v.i global.turntimer
pushi.e -40
pop.v.i self.btimer
pushi.e 10
pop.v.i 453.hspeed
exit.i

:[633]
push.v self.phase
pushi.e 3
cmp.i.v EQ
bf [635]

:[634]
pushi.e -5
pop.v.i self.special
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 39
pop.v.v [array]self.flag
pushi.e 10
pop.v.i global.turntimer
pushi.e -40
pop.v.i self.btimer
pushi.e 10
pop.v.i 453.hspeed
b [636]

:[635]
pushi.e 1
pop.v.i self.special
pushloc.v local.attacktimer
pushi.e 10
sub.i.v
pop.v.v self.btimer

:[636]
b [647]

:[637]
push.v self.special
pushi.e -4
cmp.i.v EQ
bf [639]

:[638]
pushglb.v global.encounterno
pushi.e 89
cmp.i.v EQ
b [640]

:[639]
push.e 0

:[640]
bf [642]

:[641]
pushi.e -3
pop.v.i self.special
pushi.e -20
pop.v.i self.btimer
b [647]

:[642]
push.v self.special
pushi.e -3
cmp.i.v EQ
bf [647]

:[643]
pushi.e -1
pop.v.i self.special
pushi.e 4
pop.v.i self.made
pushi.e 1700
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.dd2
pushi.e 453
pushenv [645]

:[644]
pushi.e 0
pop.v.i self.visible

:[645]
popenv [644]
pushi.e 144
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushglb.v global.encounterno
pushi.e 89
cmp.i.v EQ
bf [647]

:[646]
pushi.e 360
conv.i.v
push.v self.y
pushi.e 215
add.i.v
push.v self.x
push.v self.strikes
pushi.e 40
mul.i.v
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local._batsu
pushi.e 1708
pushloc.v local._batsu
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
pushloc.v local._batsu
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
pushloc.v local._batsu
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 6
pushloc.v local._batsu
pushi.e -9
pop.v.i [stacktop]self.element
push.v self.strikes
push.e 1
add.i.v
pop.v.v self.strikes
pushi.e -45
pop.v.i self.btimer
pushi.e 25
conv.i.v
push.v 872.y
push.v 872.x
call.i gml_Script_instance_create(argc=3)
pop.v.v local._batsu
pushi.e 3318
pushloc.v local._batsu
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 3
pushloc.v local._batsu
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 3
pushloc.v local._batsu
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v 631.depth
pushi.e 15
sub.i.v
pushloc.v local._batsu
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 45
pushloc.v local._batsu
pushi.e -9
pop.v.i [stacktop]self.max_time

:[647]
b [658]

:[648]
pushloc.v local.quizReady
conv.v.b
bf [652]

:[649]
push.v self.btimer
pushloc.v local.attacktimer
cmp.v.v GT
bf [652]

:[650]
push.v self.special
pushi.e 0
cmp.i.v GTE
bf [652]

:[651]
push.v self.made
pushi.e 4
cmp.i.v LT
b [653]

:[652]
push.e 0

:[653]
bf [658]

:[654]
push.v self.special
pushi.e 1
cmp.i.v EQ
bf [656]

:[655]
push.v self.made
push.e 1
add.i.v
pop.v.v self.made

:[656]
pushi.e 461
conv.i.v
push.v self.y
pushi.e 6
sub.i.v
push.v self.x
pushi.e 22
sub.i.v
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d
pushi.e 6
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.element
push.v self.creator
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.creator
call.i @@This@@(argc=0)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.controller
push.v self.difficulty
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.difficulty
pushi.e 90
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.turnlength
pushi.e 0
pop.v.i self.btimer
push.v self.special
pushi.e 1
cmp.i.v EQ
bf [658]

:[657]
pushi.e 1
push.v self.d
pushi.e -9
pop.v.b [stacktop]self.dojo

:[658]
b [end]

:[659]
push.v self.type
pushi.e 33
cmp.i.v EQ
bf [663]

:[660]
push.v self.made
pushi.e 0
cmp.i.v EQ
bf [662]

:[661]
pushi.e 1
pop.v.i self.made
pushi.e 409
conv.i.v
push.v 406.y
pushi.e 125
add.i.v
push.v 406.x
pushi.e 144
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tail
push.v self.damage
push.v self.tail
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.tail
pushi.e -9
pop.v.v [stacktop]self.target

:[662]
b [end]

:[663]
push.v self.type
pushi.e 34
cmp.i.v EQ
bf [673]

:[664]
push.v self.btimer
pushi.e 14
push.v self.difficulty
pushi.e 1
add.i.v
mul.v.i
cmp.v.v GTE
bf [672]

:[665]
push.v self.init
pushi.e 1
cmp.i.v EQ
bt [667]

:[666]
push.v self.side
pushi.e 1
cmp.i.v EQ
b [668]

:[667]
push.e 1

:[668]
bf [670]

:[669]
pushi.e 2
conv.i.v
call.i irandom(argc=1)
pop.v.v self.side
pushi.e 2
pop.v.i self.init
b [671]

:[670]
push.v self.side
pushi.e 1
conv.i.v
call.i irandom(argc=1)
add.v.v
pushi.e 3
mod.i.v
pop.v.v self.side

:[671]
push.d 1.2
conv.d.v
pushi.e 1
conv.i.v
pushi.e 47
conv.i.v
call.i gml_Script_snd_play_x(argc=3)
popz.v
pushi.e 738
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 4
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.side
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.attackdirection
pushi.e 0
pop.v.i self.btimer

:[672]
b [end]

:[673]
push.v self.type
pushi.e 35
cmp.i.v EQ
bf [692]

:[674]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [691]

:[675]
pushi.e 3600
pop.v.i global.turntimer
pushi.e 0
pop.v.i self.difficulty
push.v 872.x
pop.v.v local.xx
push.v 872.y
pop.v.v local.yy
pushi.e 360
conv.i.v
pushloc.v local.yy
pushloc.v local.xx
pushi.e 1
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 1705
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 45
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_angle
push.i 8421504
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_blend
push.v 872.depth
pushi.e 1
sub.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 0
pop.v.i local.i

:[676]
pushloc.v local.i
pushi.e 4
cmp.i.v LT
bf [690]

:[677]
push.v 872.x
pop.v.v local.xx
push.v 872.y
pop.v.v local.yy
pushloc.v local.i
pushi.e 0
cmp.i.v EQ
bt [679]

:[678]
pushloc.v local.i
pushi.e 3
cmp.i.v EQ
b [680]

:[679]
push.e 1

:[680]
bf [685]

:[681]
push.v local.yy
pushloc.v local.i
pushi.e 0
cmp.i.v EQ
bf [683]

:[682]
pushi.e -50
conv.i.v
b [684]

:[683]
pushi.e 50
conv.i.v

:[684]
add.v.v
pop.v.v local.yy
b [689]

:[685]
push.v local.xx
pushloc.v local.i
pushi.e 1
cmp.i.v EQ
bf [687]

:[686]
pushi.e -50
conv.i.v
b [688]

:[687]
pushi.e 50
conv.i.v

:[688]
add.v.v
pop.v.v local.xx

:[689]
pushi.e 360
conv.i.v
pushloc.v local.yy
pushloc.v local.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 1704
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushloc.v local.i
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_index
push.i 8421504
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_blend
push.v 872.depth
pushi.e 1
sub.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [676]

:[690]
pushi.e 45
pop.v.i 872.target_angle
pushi.e 45
pop.v.i 872.image_angle
pushi.e 461
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d
pushi.e -5
push.v self.creator
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
push.v [stacktop]self.depth
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.creator
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.creator
push.v self.difficulty
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.difficulty
pushi.e 1
push.v self.d
pushi.e -9
pop.v.b [stacktop]self.dojo
pushi.e 2
pop.v.i self.init
push.v global.turntimer
pushi.e 120
add.i.v
pop.v.v global.turntimer
pushi.e 0
pop.v.i self.btimer

:[691]
b [end]

:[692]
push.v self.type
pushi.e 46
cmp.i.v EQ
bf [696]

:[693]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [695]

:[694]
pushi.e 2
pop.v.i self.init
pushi.e 798
conv.i.v
push.v self.miny
pushi.e 130
sub.i.v
push.v 872.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target

:[695]
b [end]

:[696]
push.v self.type
pushi.e 47
cmp.i.v EQ
bf [700]

:[697]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [699]

:[698]
pushi.e 2
pop.v.i self.init
pushi.e 801
conv.i.v
push.v self.miny
pushi.e 130
sub.i.v
push.v 872.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target

:[699]
b [end]

:[700]
push.v self.type
pushi.e 48
cmp.i.v EQ
bf [728]

:[701]
push.v self.btimer
pushi.e 135
cmp.i.v GTE
bf [703]

:[702]
pushi.e 852
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [704]

:[703]
push.e 0

:[704]
bf [727]

:[705]
pushi.e 0
pop.v.i local.xmod
push.v self.roundcount
pushi.e 1
cmp.i.v EQ
bf [707]

:[706]
pushi.e 20
conv.i.v
call.i irandom(argc=1)
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
mul.v.v
pop.v.v local.xmod

:[707]
push.v self.roundcount
pushi.e 2
cmp.i.v EQ
bf [709]

:[708]
pushi.e 30
conv.i.v
call.i irandom(argc=1)
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
mul.v.v
pop.v.v local.xmod

:[709]
push.v self.roundcount
pushi.e 3
cmp.i.v EQ
bf [711]

:[710]
pushi.e 40
conv.i.v
call.i irandom(argc=1)
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
mul.v.v
pop.v.v local.xmod

:[711]
push.v self.roundcount
pushi.e 4
cmp.i.v EQ
bf [713]

:[712]
pushi.e 60
conv.i.v
call.i irandom(argc=1)
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
mul.v.v
pop.v.v local.xmod

:[713]
push.v self.roundcount
pushi.e 4
cmp.i.v GT
bf [715]

:[714]
pushi.e 80
conv.i.v
call.i irandom(argc=1)
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
mul.v.v
pop.v.v local.xmod

:[715]
pushi.e 852
conv.i.v
pushi.e 40
conv.i.v
pushi.e 320
pushloc.v local.xmod
add.v.i
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bm
push.v self.grazepoints
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.grazepoints
pushi.e 1
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.damage
push.v self.target
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.roundcount
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [721]

:[716]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [722]

:[717]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [723]

:[718]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [724]

:[719]
b [725]

:[720]
b [726]

:[721]
pushi.e 7
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.times
pushi.e 18
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.timetarg
pushi.e 6
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.bulletspeed
b [726]

:[722]
pushi.e 7
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.times
pushi.e 15
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.timetarg
pushi.e 6
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.bulletspeed
b [726]

:[723]
pushi.e 7
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.times
pushi.e 13
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.timetarg
pushi.e 6
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.bulletspeed
b [726]

:[724]
pushi.e 7
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.times
pushi.e 11
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.timetarg
pushi.e 6
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.bulletspeed
b [726]

:[725]
pushi.e 7
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.times
pushi.e 10
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.timetarg
pushi.e 6
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.bulletspeed
b [726]

:[726]
popz.v
pushi.e 0
pop.v.i self.btimer
push.v self.roundcount
push.e 1
add.i.v
pop.v.v self.roundcount

:[727]
b [end]

:[728]
push.v self.type
pushi.e 49
cmp.i.v EQ
bf [736]

:[729]
push.v self.made
pushi.e 0
cmp.i.v EQ
bf [735]

:[730]
pushi.e 1
pop.v.i self.made
pushi.e 631
pushenv [732]

:[731]
pushi.e 1
pop.v.i self.color

:[732]
popenv [731]
pushi.e 629
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 100
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 424
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 358
pushenv [734]

:[733]
call.i gml_Script_camerax(argc=0)
pushi.e 260
add.i.v
pop.v.v self.x

:[734]
popenv [733]

:[735]
b [end]

:[736]
push.v self.type
pushi.e 50
cmp.i.v EQ
bf [750]

:[737]
push.v self.btimer
pushi.e 45
cmp.i.v GTE
bf [739]

:[738]
push.v self.made
pushi.e 0
cmp.i.v EQ
b [740]

:[739]
push.e 0

:[740]
bf [749]

:[741]
pushi.e 1
pop.v.i self.made
pushi.e 97
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 80
conv.i.v
call.i random(argc=1)
pop.v.v local.initangle
pushi.e 4
pop.v.i local.initspeed
pushi.e 9
pop.v.i self.bulcount
pushi.e 2
dup.i 0
push.i 0
cmp.i.i LTE
bt [746]

:[742]
pushi.e 0
pop.v.i local.i

:[743]
pushloc.v local.i
push.v self.bulcount
cmp.v.v LT
bf [745]

:[744]
pushi.e 369
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bullet
pushi.e 3327
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.image_index
push.d 0.25
push.v self.bullet
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushloc.v local.initangle
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 2
pushloc.v local.initspeed
add.v.i
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.speed
push.v self.bullet
pushi.e -9
dup.i 4
push.v [stacktop]self.depth
push.v self.made
sub.v.v
pop.i.v [stacktop]self.depth
push.v local.initangle
pushi.e 360
conv.i.d
push.v self.bulcount
div.v.d
add.v.v
pop.v.v local.initangle
push.v self.bullet
call.i gml_Script_scr_bullet_inherit(argc=1)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [743]

:[745]
push.v local.initspeed
pushi.e 4
add.i.v
pop.v.v local.initspeed
pushi.e 50
conv.i.v
call.i random(argc=1)
pop.v.v local.initangle
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [742]

:[746]
popz.i
push.v self.creatorid
pushi.e -9
pushenv [748]

:[747]
push.i 231474
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monster
pushi.e 0
pop.v.i self.visible

:[748]
popenv [747]

:[749]
b [end]

:[750]
push.v self.type
pushi.e 51
cmp.i.v EQ
bf [end]

:[751]
push.v self.btimer
pushi.e 1
cmp.i.v GTE
bf [753]

:[752]
push.v self.made
pushi.e 0
cmp.i.v EQ
b [754]

:[753]
push.e 0

:[754]
bf [756]

:[755]
pushi.e 1
pop.v.i self.made
pushi.e 33
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 100
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 530
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.pip
push.v self.damage
push.v self.pip
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.pip
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 33
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 168
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 448
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.pip
push.v self.damage
push.v self.pip
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.pip
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 33
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 250
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 510
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.pip
push.v self.damage
push.v self.pip
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.pip
pushi.e -9
pop.v.v [stacktop]self.target

:[756]
push.v self.btimer
pushi.e 45
cmp.i.v GTE
bf [758]

:[757]
push.v self.btimer
pushi.e 46
cmp.i.v LT
b [759]

:[758]
push.e 0

:[759]
bf [763]

:[760]
pushi.e 97
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 33
pushenv [762]

:[761]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[762]
popenv [761]

:[763]
push.v self.btimer
pushi.e 100
cmp.i.v GTE
bf [765]

:[764]
push.v self.btimer
pushi.e 110
cmp.i.v LT
b [766]

:[765]
push.e 0

:[766]
bf [end]

:[767]
pushi.e 120
pop.v.i self.btimer
pushi.e 697
pushenv [769]

:[768]
pushi.e 4
conv.i.v
call.i gml_Script_scr_move_to_rememberxy(argc=1)
popz.v

:[769]
popenv [768]
pushi.e 1
pop.v.i global.turntimer

:[end]