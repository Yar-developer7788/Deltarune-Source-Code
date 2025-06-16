.localvar 2 arguments
.localvar 20107 ynext 12551
.localvar 107 i 12552

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [31]

:[1]
push.v self.crushedObj
pushi.e 0
cmp.i.v GT
bf [6]

:[2]
push.v self.crushedObj
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 2
conv.i.v
b [5]

:[4]
pushi.e 3
conv.i.v

:[5]
pop.v.v self.maxspeed

:[6]
pushi.e 1
pop.v.i self.init
push.v self.new_movement
pushi.e 0
cmp.i.v EQ
bf [22]

:[7]
push.v self.difficulty
pushi.e 2
cmp.i.v NEQ
bf [12]

:[8]
push.v self.crushedObj
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
push.d -2.5
conv.d.v
b [11]

:[10]
push.d -0.35
conv.d.v

:[11]
pop.v.v self.friction

:[12]
push.v self.difficulty
pushi.e 2
cmp.i.v EQ
bf [17]

:[13]
push.v self.crushedObj
pushi.e 2
cmp.i.v EQ
bf [15]

:[14]
push.d -2.5
conv.d.v
b [16]

:[15]
push.d -0.1
conv.d.v

:[16]
pop.v.v self.friction

:[17]
push.v self.difficulty
pushi.e 5
cmp.i.v EQ
bf [22]

:[18]
push.v self.crushedObj
pushi.e 2
cmp.i.v EQ
bf [20]

:[19]
push.d -2.5
conv.d.v
b [21]

:[20]
push.d -0.1
conv.d.v

:[21]
pop.v.v self.friction

:[22]
push.v self.crushedObj
pushi.e 1
cmp.i.v NEQ
bf [27]

:[23]
push.v self.crushedObj
pushi.e 2
cmp.i.v EQ
bf [25]

:[24]
pushi.e 15
conv.i.v
b [26]

:[25]
pushi.e 0
conv.i.v

:[26]
pop.v.v self.offsetCap

:[27]
push.v self.crushedObj
pushi.e 2
cmp.i.v EQ
bf [29]

:[28]
pushi.e 1
pop.v.i self.hp

:[29]
push.v self.difficulty
pushi.e 4
cmp.i.v EQ
bf [31]

:[30]
pushi.e 681
conv.i.v
push.v self.y
push.v 697.crusher_turret_distance
sub.v.v
push.v self.x
pushi.e 15
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.gun1
push.v self.depth
pushi.e 1
sub.i.v
push.v self.gun1
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 681
conv.i.v
push.v self.y
push.v 697.crusher_turret_distance
add.v.v
push.v self.x
pushi.e 15
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.gun2
push.v self.depth
pushi.e 1
sub.i.v
push.v self.gun2
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1
pop.v.i self.createdguns

:[31]
push.v self.crushedObj
pushi.e 1
cmp.i.v EQ
bf [33]

:[32]
push.v self.hp
pushi.e 1
sub.i.v
pushi.e 15
mul.i.v
pushi.e 0
conv.i.v
call.i max(argc=2)
pop.v.v self.offsetCap

:[33]
push.v self.new_movement
pushi.e 1
cmp.i.v EQ
bf [39]

:[34]
push.v self.hspeed
push.v self.haccel
sub.v.v
pop.v.v self.hspeed
push.v self.vbounce
pushi.e 1
cmp.i.v EQ
bf [39]

:[35]
push.v self.y
push.v self.bottomy
cmp.v.v GT
bf [37]

:[36]
push.v self.bottomy
pushi.e 1
sub.i.v
pop.v.v self.y
push.v self.vspeed
call.i abs(argc=1)
neg.v
pop.v.v self.vspeed

:[37]
push.v self.y
push.v self.topy
cmp.v.v LT
bf [39]

:[38]
push.v self.topy
pushi.e 1
add.i.v
pop.v.v self.y
push.v self.vspeed
call.i abs(argc=1)
pop.v.v self.vspeed

:[39]
push.v self.x
pushbltn.v builtin.room_width
pushi.e 100
add.i.v
cmp.v.v GTE
bt [43]

:[40]
push.v self.x
pushi.e -100
cmp.i.v LTE
bt [43]

:[41]
push.v self.y
pushbltn.v builtin.room_height
pushi.e 100
add.i.v
cmp.v.v GTE
bt [43]

:[42]
push.v self.y
pushi.e -100
cmp.i.v LTE
b [44]

:[43]
push.e 1

:[44]
bf [47]

:[45]
call.i instance_destroy(argc=0)
popz.v
push.v self.creatednewalls
pushi.e 1
cmp.i.v EQ
bf [47]

:[46]
pushi.e 0
pop.v.i self.creatednewalls

:[47]
push.v self.new_movement
pushi.e 0
cmp.i.v EQ
bf [54]

:[48]
push.v self.x
push.v self.pushback
add.v.v
pop.v.v self.x
push.v self.pushback
pushi.e 0
cmp.i.v GT
bf [50]

:[49]
push.v self.pushback
push.e 1
sub.i.v
pop.v.v self.pushback

:[50]
push.v self.pushback
pushi.e 8
cmp.i.v EQ
bf [52]

:[51]
push.v self.startdepth
pop.v.v self.depth
push.i 16777215
pop.v.i self.image_blend

:[52]
push.v self.speed
push.v self.maxspeed
cmp.v.v GT
bf [54]

:[53]
push.v self.maxspeed
pop.v.v self.speed
pushi.e 0
pop.v.i self.friction

:[54]
push.v self.destroying
conv.v.b
bf [75]

:[55]
push.v self.difficulty
pushi.e 3
cmp.i.v NEQ
bf [57]

:[56]
push.v self.difficulty
pushi.e 5
cmp.i.v NEQ
b [58]

:[57]
push.e 0

:[58]
bf [60]

:[59]
push.v self.destroying
pushi.e 15
add.i.v
pop.v.v self.destroying
pushi.e 0
pop.v.i self.speed

:[60]
push.v self.difficulty
pushi.e 3
cmp.i.v EQ
bf [62]

:[61]
push.v self.destroying
pushi.e 45
cmp.i.v LT
b [63]

:[62]
push.e 0

:[63]
bf [65]

:[64]
push.v self.destroying
pushi.e 15
add.i.v
pop.v.v self.destroying

:[65]
push.v self.difficulty
pushi.e 5
cmp.i.v EQ
bf [67]

:[66]
push.v self.destroying
pushi.e 45
cmp.i.v LT
b [68]

:[67]
push.e 0

:[68]
bf [70]

:[69]
push.v self.destroying
pushi.e 15
add.i.v
pop.v.v self.destroying

:[70]
push.v self.destroying
pushi.e 200
cmp.i.v GTE
bf [74]

:[71]
push.v self.creatednewalls
pushi.e 1
cmp.i.v EQ
bf [73]

:[72]
pushi.e 0
pop.v.i self.creatednewalls

:[73]
call.i instance_destroy(argc=0)
popz.v

:[74]
exit.i

:[75]
push.v self.crushedObj
pushi.e 2
cmp.i.v EQ
bf [77]

:[76]
push.v self.offset
push.v self.offsetCap
cmp.v.v LTE
b [78]

:[77]
push.e 0

:[78]
bf [83]

:[79]
push.v self.crushtimer
push.e 1
add.i.v
pop.v.v self.crushtimer
push.v self.crushtimer
pushi.e 20
cmp.i.v EQ
bf [81]

:[80]
push.v self.offsetCap
pushi.e 7
sub.i.v
pop.v.v self.offsetCap

:[81]
push.v self.crushtimer
pushi.e 20
cmp.i.v GT
bf [83]

:[82]
pushi.e 0
pop.v.i self.active
pushi.e 15
pop.v.i self.destroying
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[83]
push.v self.offset
push.v self.offsetCap
cmp.v.v LTE
bf [85]

:[84]
push.v self.new_movement
pushi.e 0
cmp.i.v EQ
b [86]

:[85]
push.e 0

:[86]
bf [106]

:[87]
push.v self.speed
pushi.e 0
cmp.i.v EQ
bf [89]

:[88]
push.d 0.1
pop.v.d self.speed

:[89]
push.v self.difficulty
pushi.e 2
cmp.i.v NEQ
bf [92]

:[90]
push.v self.difficulty
pushi.e 5
cmp.i.v NEQ
bf [92]

:[91]
push.v self.difficulty
pushi.e 6
cmp.i.v NEQ
b [93]

:[92]
push.e 0

:[93]
bf [101]

:[94]
push.v self.updown
conv.v.b
bf [101]

:[95]
push.v self.y
push.v self.slidedir
add.v.v
pop.v.v local.ynext
pushloc.v local.ynext
push.v 872.y
pushi.e 60
add.i.v
cmp.v.v GT
bt [97]

:[96]
pushloc.v local.ynext
push.v 872.y
pushi.e 60
sub.i.v
cmp.v.v LT
b [98]

:[97]
push.e 1

:[98]
bf [100]

:[99]
push.v self.slidedir
pushi.e -1
mul.i.v
pop.v.v self.slidedir

:[100]
push.v self.y
push.v self.slidedir
add.v.v
pop.v.v self.y

:[101]
push.v self.difficulty
pushi.e 2
cmp.i.v EQ
bt [103]

:[102]
push.v self.difficulty
pushi.e 5
cmp.i.v EQ
b [104]

:[103]
push.e 1

:[104]
bf [106]

:[105]
push.v self.siner
push.d 0.5
add.d.v
pop.v.v self.siner
push.v 872.y
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 50
mul.i.v
add.v.v
pop.v.v self.y

:[106]
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [108]

:[107]
push.v self.x
pushi.e 30
sub.i.v
push.v 631.x
cmp.v.v LT
b [109]

:[108]
push.e 0

:[109]
bf [111]

:[110]
exit.i

:[111]
push.v self.destroying
pushi.e 1
cmp.i.v LT
bf [end]

:[112]
pushi.e 0
pop.v.i local.i

:[113]
pushloc.v local.i
pushi.e 592
conv.i.v
call.i instance_number(argc=1)
cmp.v.v LT
bf [end]

:[114]
push.i 170297
setowner.e
pushloc.v local.i
pushi.e 592
conv.i.v
call.i instance_find(argc=2)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.enemy
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.enemy
pushi.e -9
push.v [stacktop]self.x
push.v self.x
pushi.e 22
sub.i.v
cmp.v.v GT
bf [118]

:[115]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.enemy
pushi.e -9
pushenv [117]

:[116]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[117]
popenv [116]

:[118]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [113]

:[end]