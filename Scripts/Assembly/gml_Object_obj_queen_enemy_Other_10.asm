.localvar 2 arguments
.localvar 14829 rand 12066

:[0]
push.v self.turn
push.e 1
add.i.v
pop.v.v self.turn
push.v self.phaseturn
push.e 1
add.i.v
pop.v.v self.phaseturn
pushi.e 0
pop.v.i self.rr
push.v self.usewineattack
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.phase
pushi.e 2
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 2
pop.v.i self.rr
pushi.e 0
pop.v.i self.difficulty
pushi.e 0
pop.v.i self.usewineattack
push.v self.phaseturn
pushi.e 1
sub.i.v
pop.v.v self.phaseturn

:[5]
push.v self.usewineattack
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.phase
pushi.e 3
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 2
pop.v.i self.rr
pushi.e 1
pop.v.i self.difficulty
pushi.e 0
pop.v.i self.usewineattack
push.v self.phaseturn
pushi.e 1
sub.i.v
pop.v.v self.phaseturn

:[10]
push.v self.usewineattack
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.v self.phase
pushi.e 4
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [18]

:[14]
push.v self.beatwine2nodamage
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
pushi.e 2
pop.v.i self.rr
pushi.e 2
pop.v.i self.difficulty
pushi.e 0
pop.v.i self.usewineattack
b [17]

:[16]
pushi.e 2
pop.v.i self.rr
pushi.e 1
pop.v.i self.difficulty
pushi.e 0
pop.v.i self.usewineattack

:[17]
push.v self.phaseturn
pushi.e 1
sub.i.v
pop.v.v self.phaseturn

:[18]
push.v self.usefinalattack
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
pushi.e 1
pop.v.i self.rr
pushi.e 0
pop.v.i self.difficulty
pushi.e 2
pop.v.i self.usefinalattack
push.v self.phaseturn
pushi.e 1
sub.i.v
pop.v.v self.phaseturn

:[20]
push.v self.phase
pushi.e 1
cmp.i.v EQ
bf [23]

:[21]
push.v self.rr
pushi.e 2
cmp.i.v NEQ
bf [23]

:[22]
push.v self.rr
pushi.e 1
cmp.i.v NEQ
b [24]

:[23]
push.e 0

:[24]
bt [30]

:[25]
push.v self.phase
pushi.e 2
cmp.i.v EQ
bf [28]

:[26]
push.v self.rr
pushi.e 2
cmp.i.v NEQ
bf [28]

:[27]
push.v self.rr
pushi.e 1
cmp.i.v NEQ
b [29]

:[28]
push.e 0

:[29]
b [31]

:[30]
push.e 1

:[31]
bf [59]

:[32]
push.v self.phaseturn
pushi.e 1
cmp.i.v EQ
bf [34]

:[33]
pushi.e 7
pop.v.i self.rr
pushi.e 0
pop.v.i self.difficulty

:[34]
push.v self.phaseturn
pushi.e 2
cmp.i.v EQ
bf [36]

:[35]
pushi.e 3
pop.v.i self.rr
pushi.e 0
pop.v.i self.difficulty

:[36]
push.v self.phaseturn
pushi.e 3
cmp.i.v EQ
bf [38]

:[37]
pushi.e 6
pop.v.i self.rr
pushi.e 0
pop.v.i self.difficulty

:[38]
push.v self.phaseturn
pushi.e 4
cmp.i.v EQ
bf [40]

:[39]
pushi.e 8
pop.v.i self.rr
pushi.e 0
pop.v.i self.difficulty

:[40]
push.v self.phaseturn
pushi.e 5
cmp.i.v EQ
bf [42]

:[41]
pushi.e 4
pop.v.i self.rr
pushi.e 0
pop.v.i self.difficulty

:[42]
push.v self.phaseturn
pushi.e 6
cmp.i.v EQ
bf [44]

:[43]
pushi.e 9
pop.v.i self.rr
pushi.e 0
pop.v.i self.difficulty

:[44]
push.v self.phaseturn
pushi.e 7
cmp.i.v EQ
bf [46]

:[45]
pushi.e 8
pop.v.i self.rr
pushi.e 4
pop.v.i self.difficulty

:[46]
push.v self.phaseturn
pushi.e 7
cmp.i.v GT
bf [59]

:[47]
pushi.e 7
pop.v.i self.phaseturn
pushi.e 120
conv.i.v
call.i irandom(argc=1)
pop.v.v local.rand
pushloc.v local.rand
pushi.e 0
cmp.i.v GTE
bf [49]

:[48]
pushi.e 7
pop.v.i self.rr
pushi.e 0
pop.v.i self.difficulty

:[49]
pushloc.v local.rand
pushi.e 20
cmp.i.v GTE
bf [51]

:[50]
pushi.e 3
pop.v.i self.rr
pushi.e 0
pop.v.i self.difficulty

:[51]
pushloc.v local.rand
pushi.e 40
cmp.i.v GTE
bf [53]

:[52]
pushi.e 6
pop.v.i self.rr
pushi.e 0
pop.v.i self.difficulty

:[53]
pushloc.v local.rand
pushi.e 60
cmp.i.v GTE
bf [55]

:[54]
pushi.e 8
pop.v.i self.rr
pushi.e 0
pop.v.i self.difficulty

:[55]
pushloc.v local.rand
pushi.e 80
cmp.i.v GTE
bf [57]

:[56]
pushi.e 4
pop.v.i self.rr
pushi.e 0
pop.v.i self.difficulty

:[57]
pushloc.v local.rand
pushi.e 100
cmp.i.v GTE
bf [59]

:[58]
pushi.e 8
pop.v.i self.rr
pushi.e 4
pop.v.i self.difficulty

:[59]
push.v self.phase
pushi.e 3
cmp.i.v EQ
bf [62]

:[60]
push.v self.rr
pushi.e 2
cmp.i.v NEQ
bf [62]

:[61]
push.v self.rr
pushi.e 1
cmp.i.v NEQ
b [63]

:[62]
push.e 0

:[63]
bt [69]

:[64]
push.v self.phase
pushi.e 4
cmp.i.v EQ
bf [67]

:[65]
push.v self.rr
pushi.e 2
cmp.i.v NEQ
bf [67]

:[66]
push.v self.rr
pushi.e 1
cmp.i.v NEQ
b [68]

:[67]
push.e 0

:[68]
b [70]

:[69]
push.e 1

:[70]
bf [106]

:[71]
push.v self.phaseturn
pushi.e 1
cmp.i.v EQ
bf [73]

:[72]
pushi.e 7
pop.v.i self.rr
pushi.e 0
pop.v.i self.difficulty

:[73]
push.v self.phaseturn
pushi.e 2
cmp.i.v EQ
bf [75]

:[74]
pushi.e 3
pop.v.i self.rr
pushi.e 0
pop.v.i self.difficulty

:[75]
push.v self.phaseturn
pushi.e 3
cmp.i.v EQ
bf [77]

:[76]
pushi.e 6
pop.v.i self.rr
pushi.e 0
pop.v.i self.difficulty

:[77]
push.v self.phaseturn
pushi.e 4
cmp.i.v EQ
bf [79]

:[78]
pushi.e 8
pop.v.i self.rr
pushi.e 0
pop.v.i self.difficulty

:[79]
push.v self.phaseturn
pushi.e 5
cmp.i.v EQ
bf [81]

:[80]
pushi.e 4
pop.v.i self.rr
pushi.e 0
pop.v.i self.difficulty

:[81]
push.v self.phaseturn
pushi.e 6
cmp.i.v EQ
bf [83]

:[82]
pushi.e 9
pop.v.i self.rr
pushi.e 0
pop.v.i self.difficulty

:[83]
push.v self.phaseturn
pushi.e 7
cmp.i.v EQ
bf [85]

:[84]
pushi.e 8
pop.v.i self.rr
pushi.e 4
pop.v.i self.difficulty

:[85]
push.v self.phaseturn
pushi.e 8
cmp.i.v EQ
bf [87]

:[86]
pushi.e 4
pop.v.i self.rr
pushi.e 1
pop.v.i self.difficulty

:[87]
push.v self.phaseturn
pushi.e 9
cmp.i.v EQ
bf [89]

:[88]
pushi.e 7
pop.v.i self.rr
pushi.e 1
pop.v.i self.difficulty

:[89]
push.v self.phaseturn
pushi.e 10
cmp.i.v EQ
bf [91]

:[90]
pushi.e 6
pop.v.i self.rr
pushi.e 1
pop.v.i self.difficulty

:[91]
push.v self.phaseturn
pushi.e 11
cmp.i.v EQ
bf [93]

:[92]
pushi.e 9
pop.v.i self.rr
pushi.e 1
pop.v.i self.difficulty

:[93]
push.v self.phaseturn
pushi.e 12
cmp.i.v EQ
bf [95]

:[94]
pushi.e 8
pop.v.i self.rr
pushi.e 5
pop.v.i self.difficulty

:[95]
push.v self.phaseturn
pushi.e 12
cmp.i.v GT
bf [106]

:[96]
pushi.e 100
conv.i.v
call.i irandom(argc=1)
pop.v.v local.rand
pushloc.v local.rand
pushi.e 0
cmp.i.v GTE
bf [98]

:[97]
pushi.e 4
pop.v.i self.rr
pushi.e 1
pop.v.i self.difficulty

:[98]
pushloc.v local.rand
pushi.e 20
cmp.i.v GTE
bf [100]

:[99]
pushi.e 7
pop.v.i self.rr
pushi.e 1
pop.v.i self.difficulty

:[100]
pushloc.v local.rand
pushi.e 40
cmp.i.v GTE
bf [102]

:[101]
pushi.e 6
pop.v.i self.rr
pushi.e 1
pop.v.i self.difficulty

:[102]
pushloc.v local.rand
pushi.e 60
cmp.i.v GTE
bf [104]

:[103]
pushi.e 9
pop.v.i self.rr
pushi.e 1
pop.v.i self.difficulty

:[104]
pushloc.v local.rand
pushi.e 80
cmp.i.v GTE
bf [106]

:[105]
pushi.e 8
pop.v.i self.rr
pushi.e 5
pop.v.i self.difficulty

:[106]
pushi.e 576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [end]

:[107]
push.v self.rr
pushi.e 7
cmp.i.v EQ
bf [end]

:[108]
pushi.e 5
pop.v.i self.rr

:[end]