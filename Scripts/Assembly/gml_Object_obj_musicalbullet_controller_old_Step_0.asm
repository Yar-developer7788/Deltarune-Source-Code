.localvar 2 arguments
.localvar 7017 a 13456
.localvar 10271 b 13457
.localvar 6801 c 13458
.localvar 26317 chosenlane 13459
.localvar 26318 beat 13460
.localvar 220 j 13461
.localvar 14829 rand 13462
.localvar 26319 lane1 13463
.localvar 26320 lane2 13464
.localvar 26321 lane3 13465
.localvar 26322 lane4 13466

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
pushi.e 1
pop.v.i self.init
push.v self.sfxtimer
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.sfxtimer
push.e 1
sub.i.v
pop.v.v self.sfxtimer

:[2]
pushi.e 1
pop.v.i self.tobymode
pushi.e 1
pop.v.i self.supertobymode
pushi.e 1
pop.v.i self.omegatobymode
pushi.e 1
pop.v.i self.activatedtobymode
pushi.e 1
pop.v.i self.donkeykongshouldberemovedfromthedccinematicuniverse
push.v self.tobymode
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.made
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [52]

:[6]
push.i 170167
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.lane
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.lane
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.lane
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.lane
pushi.e 0
pop.v.i local.a
pushi.e 0
pop.v.i local.b
pushi.e 0
pop.v.i local.c
pushi.e 0
pop.v.i local.chosenlane
pushi.e 1
pop.v.i local.beat
pushi.e 0
pop.v.i local.j

:[7]
pushloc.v local.j
pushi.e 32
cmp.i.v LT
bf [51]

:[8]
push.v self.difficulty
pushi.e 2
cmp.i.v GTE
bf [11]

:[9]
pushloc.v local.beat
pushi.e 3
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1
pop.v.i local.c

:[11]
pushloc.v local.beat
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
pushi.e 1
pop.v.i local.a

:[13]
push.v self.difficulty
pushi.e 1
cmp.i.v GTE
bf [15]

:[14]
pushi.e 1
pop.v.i local.b

:[15]
pushloc.v local.beat
pushi.e 1
cmp.i.v EQ
bt [18]

:[16]
pushloc.v local.beat
pushi.e 2
cmp.i.v EQ
bt [18]

:[17]
pushloc.v local.beat
pushi.e 3
cmp.i.v EQ
b [19]

:[18]
push.e 1

:[19]
bf [38]

:[20]
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
conv.v.i
pop.v.v [array]self.lane
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
pushloc.v local.beat
pushi.e 3
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [34]

:[24]
pushi.e -1
pushi.e 0
push.v [array]self.lane
pushi.e 1
cmp.i.v EQ
bt [26]

:[25]
pushi.e -1
pushi.e 2
push.v [array]self.lane
pushi.e 1
cmp.i.v EQ
b [27]

:[26]
push.e 1

:[27]
bf [29]

:[28]
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.lane
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.lane

:[29]
pushi.e -1
pushi.e 1
push.v [array]self.lane
pushi.e 1
cmp.i.v EQ
bt [31]

:[30]
pushi.e -1
pushi.e 3
push.v [array]self.lane
pushi.e 1
cmp.i.v EQ
b [32]

:[31]
push.e 1

:[32]
bf [34]

:[33]
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.lane
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.lane

:[34]
push.v self.difficulty
pushi.e 2
cmp.i.v GTE
bf [37]

:[35]
pushloc.v local.beat
pushi.e 3
cmp.i.v EQ
bf [37]

:[36]
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.lane
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.lane
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.lane
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.lane
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=3)
conv.v.i
pop.v.v [array]self.lane

:[37]
pushi.e 50
conv.i.v
pushi.e 1
pushloc.v local.j
pushi.e 4
conv.i.d
div.d.v
add.v.i
push.i 65536
setowner.e
pushloc.v local.c
pushloc.v local.a
pushi.e -1
pushi.e 3
push.v [array]self.lane
pushi.e -1
pushi.e 2
push.v [array]self.lane
pushi.e -1
pushi.e 1
push.v [array]self.lane
pushi.e -1
pushi.e 0
push.v [array]self.lane
pushloc.v local.b
pushi.e 0
conv.i.v
call.i @@NewGMLArray@@(argc=8)
call.i gml_Script_scr_musicalbattlebullet(argc=3)
popz.v

:[38]
pushloc.v local.beat
pushi.e 2
cmp.i.v EQ
bt [40]

:[39]
pushloc.v local.beat
pushi.e 4
cmp.i.v EQ
b [41]

:[40]
push.e 1

:[41]
bf [48]

:[42]
push.v self.difficulty
pushi.e 0
cmp.i.v EQ
bf [45]

:[43]
pushloc.v local.beat
pushi.e 4
cmp.i.v EQ
bf [45]

:[44]
push.i 170167
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
conv.v.i
pop.v.v [array]self.lane
pushi.e 50
conv.i.v
pushi.e 1
pushloc.v local.j
pushi.e 4
conv.i.d
div.d.v
add.v.i
push.i 65536
setowner.e
pushloc.v local.c
pushloc.v local.a
pushi.e -1
pushi.e 3
push.v [array]self.lane
pushi.e -1
pushi.e 2
push.v [array]self.lane
pushi.e -1
pushi.e 1
push.v [array]self.lane
pushi.e -1
pushi.e 0
push.v [array]self.lane
pushloc.v local.b
pushi.e 0
conv.i.v
call.i @@NewGMLArray@@(argc=8)
call.i gml_Script_scr_musicalbattlebullet(argc=3)
popz.v

:[45]
push.v self.difficulty
pushi.e 1
cmp.i.v GTE
bf [48]

:[46]
pushloc.v local.beat
pushi.e 4
cmp.i.v EQ
bf [48]

:[47]
push.i 170167
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
conv.v.i
pop.v.v [array]self.lane
pushi.e 50
conv.i.v
pushi.e 1
pushloc.v local.j
pushi.e 4
conv.i.d
div.d.v
add.v.i
push.i 65536
setowner.e
pushloc.v local.c
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 3
push.v [array]self.lane
pushi.e -1
pushi.e 2
push.v [array]self.lane
pushi.e -1
pushi.e 1
push.v [array]self.lane
pushi.e -1
pushi.e 0
push.v [array]self.lane
pushloc.v local.b
pushi.e 0
conv.i.v
call.i @@NewGMLArray@@(argc=8)
call.i gml_Script_scr_musicalbattlebullet(argc=3)
popz.v

:[48]
push.v local.beat
push.e 1
add.i.v
pop.v.v local.beat
pushloc.v local.beat
pushi.e 4
cmp.i.v GT
bf [50]

:[49]
pushi.e 1
pop.v.i local.beat

:[50]
pushi.e 0
pop.v.i local.a
pushi.e 0
pop.v.i local.b
pushi.e 0
pop.v.i local.c
push.i 170167
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.lane
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.lane
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.lane
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.lane
push.v local.j
push.e 1
add.i.v
pop.v.v local.j
b [7]

:[51]
pushi.e 1
pop.v.i self.made

:[52]
push.v self.tobymode
pushi.e 1
cmp.i.v EQ
bf [54]

:[53]
push.v self.made
pushi.e 1
cmp.i.v EQ
b [55]

:[54]
push.e 0

:[55]
bf [64]

:[56]
pushglb.v global.turntimer
pushi.e 10
cmp.i.v LT
bf [58]

:[57]
pushglb.v global.turntimer
pushi.e 4
cmp.i.v GT
b [59]

:[58]
push.e 0

:[59]
bt [61]

:[60]
pushi.e 1107
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [62]

:[61]
push.e 1

:[62]
bf [64]

:[63]
pushi.e 0
pop.v.i self.con
pushi.e 3
pop.v.i global.turntimer
call.i instance_destroy(argc=0)
popz.v

:[64]
push.v self.timer
push.v self.bullettimermax
cmp.v.v EQ
bf [end]

:[65]
push.v self.tobymode
pushi.e 0
cmp.i.v EQ
bf [end]

:[66]
pushi.e 1
pop.v.i local.a
pushi.e 0
pop.v.i local.b
push.v self.difficulty
pushi.e 1
cmp.i.v GTE
bf [68]

:[67]
push.v self.con
pushi.e 1
add.i.v
pushi.e 2
mod.i.v
pop.v.v local.b

:[68]
pushi.e 0
pop.v.i local.c
push.v self.difficulty
pushi.e 2
cmp.i.v GTE
bf [70]

:[69]
push.v self.con
pushi.e 2
mod.i.v
pop.v.v local.c

:[70]
pushi.e 3
conv.i.v
call.i irandom(argc=1)
pop.v.v local.rand
pushloc.v local.rand
pushi.e 0
cmp.i.v EQ
bf [72]

:[71]
pushi.e 1
pop.v.i local.lane1
b [73]

:[72]
pushi.e 0
pop.v.i local.lane1

:[73]
pushloc.v local.rand
pushi.e 1
cmp.i.v EQ
bf [75]

:[74]
pushi.e 1
pop.v.i local.lane2
b [76]

:[75]
pushi.e 0
pop.v.i local.lane2

:[76]
pushloc.v local.rand
pushi.e 2
cmp.i.v EQ
bf [78]

:[77]
pushi.e 1
pop.v.i local.lane3
b [79]

:[78]
pushi.e 0
pop.v.i local.lane3

:[79]
pushloc.v local.rand
pushi.e 3
cmp.i.v EQ
bf [81]

:[80]
pushi.e 1
pop.v.i local.lane4
b [82]

:[81]
pushi.e 0
pop.v.i local.lane4

:[82]
push.v self.difficulty
pushi.e 0
cmp.i.v GT
bf [91]

:[83]
pushi.e 5
conv.i.v
call.i irandom(argc=1)
pop.v.v local.rand
pushloc.v local.rand
pushi.e 0
cmp.i.v EQ
bf [85]

:[84]
pushi.e 1
pop.v.i local.lane1

:[85]
pushloc.v local.rand
pushi.e 1
cmp.i.v EQ
bf [87]

:[86]
pushi.e 1
pop.v.i local.lane2

:[87]
pushloc.v local.rand
pushi.e 2
cmp.i.v EQ
bf [89]

:[88]
pushi.e 1
pop.v.i local.lane3

:[89]
pushloc.v local.rand
pushi.e 3
cmp.i.v EQ
bf [91]

:[90]
pushi.e 1
pop.v.i local.lane4

:[91]
push.v self.difficulty
pushi.e 1
cmp.i.v GT
bf [100]

:[92]
pushi.e 5
conv.i.v
call.i irandom(argc=1)
pop.v.v local.rand
pushloc.v local.rand
pushi.e 0
cmp.i.v EQ
bf [94]

:[93]
pushi.e 2
pop.v.i local.lane1

:[94]
pushloc.v local.rand
pushi.e 1
cmp.i.v EQ
bf [96]

:[95]
pushi.e 2
pop.v.i local.lane2

:[96]
pushloc.v local.rand
pushi.e 2
cmp.i.v EQ
bf [98]

:[97]
pushi.e 2
pop.v.i local.lane3

:[98]
pushloc.v local.rand
pushi.e 3
cmp.i.v EQ
bf [100]

:[99]
pushi.e 2
pop.v.i local.lane4

:[100]
push.v self.con
pushi.e 12
cmp.i.v LT
bf [102]

:[101]
pushi.e 60
conv.i.v
pushi.e 3
conv.i.v
push.i 65536
setowner.e
pushi.e 0
conv.i.v
pushloc.v local.a
pushloc.v local.lane4
pushloc.v local.lane3
pushloc.v local.lane2
pushloc.v local.lane1
pushloc.v local.b
pushi.e 0
conv.i.v
call.i @@NewGMLArray@@(argc=8)
call.i gml_Script_scr_musicalbattlebullet(argc=3)
popz.v

:[102]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [104]

:[103]
pushi.e 0
pop.v.i self.con
pushi.e 3
pop.v.i global.turntimer
call.i instance_destroy(argc=0)
popz.v

:[104]
push.v self.con
push.e 1
add.i.v
pop.v.v self.con
pushi.e 0
pop.v.i self.timer

:[end]