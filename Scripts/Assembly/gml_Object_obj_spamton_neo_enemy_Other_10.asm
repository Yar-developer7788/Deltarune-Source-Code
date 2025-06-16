.localvar 2 arguments

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e 25
cmp.i.v GT
bf [2]

:[1]
push.v self.phase
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bt [8]

:[4]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstermaxhp
push.d 0.75
mul.d.v
cmp.v.v LT
bf [6]

:[5]
push.v self.phase
pushi.e 1
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
b [9]

:[8]
push.e 1

:[9]
bf [11]

:[10]
pushi.e 2
pop.v.i self.phase

:[11]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e 50
cmp.i.v GT
bf [13]

:[12]
push.v self.phase
pushi.e 2
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bt [19]

:[15]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstermaxhp
push.d 0.5
mul.d.v
cmp.v.v LT
bf [17]

:[16]
push.v self.phase
pushi.e 2
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
b [20]

:[19]
push.e 1

:[20]
bf [22]

:[21]
pushi.e 3
pop.v.i self.phase

:[22]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e 70
cmp.i.v GT
bf [24]

:[23]
push.v self.phase
pushi.e 3
cmp.i.v EQ
b [25]

:[24]
push.e 0

:[25]
bt [30]

:[26]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstermaxhp
push.d 0.3
mul.d.v
cmp.v.v LT
bf [28]

:[27]
push.v self.phase
pushi.e 3
cmp.i.v EQ
b [29]

:[28]
push.e 0

:[29]
b [31]

:[30]
push.e 1

:[31]
bf [33]

:[32]
pushi.e 0
pop.v.i self.phaseturn
pushi.e 4
pop.v.i self.phase

:[33]
push.v self.turn
push.e 1
add.i.v
pop.v.v self.turn
push.v self.phaseturn
push.e 1
add.i.v
pop.v.v self.phaseturn
push.v self.phaseturn
pushi.e 1
cmp.i.v EQ
bf [35]

:[34]
pushi.e 0
pop.v.i self.rr
pushi.e 1
pop.v.i self.difficulty

:[35]
push.v self.phaseturn
pushi.e 2
cmp.i.v EQ
bf [37]

:[36]
pushi.e 6
pop.v.i self.rr
pushi.e 0
pop.v.i self.difficulty

:[37]
push.v self.phaseturn
pushi.e 3
cmp.i.v EQ
bf [39]

:[38]
pushi.e 2
pop.v.i self.rr
pushi.e 0
pop.v.i self.difficulty

:[39]
push.v self.phaseturn
pushi.e 4
cmp.i.v EQ
bf [41]

:[40]
pushi.e 8
pop.v.i self.rr
pushi.e 0
pop.v.i self.difficulty

:[41]
push.v self.phaseturn
pushi.e 5
cmp.i.v EQ
bf [44]

:[42]
push.d 8.5
pop.v.d self.rr
pushi.e 0
pop.v.i self.difficulty
push.v self.hellmode
pushi.e 1
cmp.i.v EQ
bf [44]

:[43]
pushi.e 2
pop.v.i self.difficulty

:[44]
push.v self.phaseturn
pushi.e 6
cmp.i.v EQ
bf [46]

:[45]
pushi.e 7
pop.v.i self.rr
pushi.e 0
pop.v.i self.difficulty

:[46]
push.v self.phaseturn
pushi.e 7
cmp.i.v EQ
bf [48]

:[47]
pushi.e 2
pop.v.i self.rr
pushi.e 2
pop.v.i self.difficulty

:[48]
push.v self.phaseturn
pushi.e 8
cmp.i.v EQ
bf [50]

:[49]
pushi.e 0
pop.v.i self.rr
pushi.e 3
pop.v.i self.difficulty

:[50]
push.v self.phaseturn
pushi.e 9
cmp.i.v EQ
bf [52]

:[51]
pushi.e 7
pop.v.i self.rr
pushi.e 0
pop.v.i self.difficulty

:[52]
push.v self.phaseturn
pushi.e 10
cmp.i.v EQ
bf [58]

:[53]
push.d 8.5
pop.v.d self.rr
pushi.e 2
pop.v.i self.difficulty
push.v self.nothitduringphonehands
pushi.e 1
cmp.i.v EQ
bt [55]

:[54]
push.v self.hellmode
pushi.e 1
cmp.i.v EQ
b [56]

:[55]
push.e 1

:[56]
bf [58]

:[57]
push.d 8.5
pop.v.d self.rr
pushi.e 1
pop.v.i self.difficulty

:[58]
push.v self.phaseturn
pushi.e 11
cmp.i.v EQ
bf [60]

:[59]
pushi.e 8
pop.v.i self.rr
pushi.e 1
pop.v.i self.difficulty

:[60]
push.v self.phaseturn
pushi.e 12
cmp.i.v EQ
bf [62]

:[61]
pushi.e 6
pop.v.i self.rr
pushi.e 1
pop.v.i self.difficulty
pushi.e 7
pop.v.i self.phaseturn

:[62]
push.v self.phase
pushi.e 4
cmp.i.v EQ
bf [75]

:[63]
push.v self.phaseturn
pushi.e 1
cmp.i.v EQ
bf [65]

:[64]
pushi.e 2
pop.v.i self.rr
pushi.e 1
pop.v.i self.difficulty

:[65]
push.v self.phaseturn
pushi.e 2
cmp.i.v EQ
bf [67]

:[66]
pushi.e 8
pop.v.i self.rr
pushi.e 3
pop.v.i self.difficulty

:[67]
push.v self.phaseturn
pushi.e 3
cmp.i.v EQ
bf [69]

:[68]
pushi.e 9
pop.v.i self.rr
pushi.e 0
pop.v.i self.difficulty
pushi.e 1
pop.v.i self.haveusedfinalattack

:[69]
push.v self.phaseturn
pushi.e 4
cmp.i.v EQ
bf [71]

:[70]
pushi.e 2
pop.v.i self.rr
pushi.e 1
pop.v.i self.difficulty

:[71]
push.v self.phaseturn
pushi.e 5
cmp.i.v EQ
bf [73]

:[72]
pushi.e 7
pop.v.i self.rr
pushi.e 0
pop.v.i self.difficulty

:[73]
push.v self.phaseturn
pushi.e 6
cmp.i.v EQ
bf [75]

:[74]
pushi.e 9
pop.v.i self.rr
pushi.e 0
pop.v.i self.difficulty
pushi.e 3
pop.v.i self.phaseturn

:[75]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstermaxhp
push.d 0.1
mul.d.v
cmp.v.v LT
bf [77]

:[76]
push.v self.haveusedfinalattack
pushi.e 0
cmp.i.v EQ
b [78]

:[77]
push.e 0

:[78]
bt [83]

:[79]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e 90
cmp.i.v GT
bf [81]

:[80]
push.v self.haveusedfinalattack
pushi.e 0
cmp.i.v EQ
b [82]

:[81]
push.e 0

:[82]
b [84]

:[83]
push.e 1

:[84]
bf [86]

:[85]
pushi.e 9
pop.v.i self.rr
pushi.e 0
pop.v.i self.difficulty
pushi.e 1
pop.v.i self.haveusedfinalattack
pushi.e 3
pop.v.i self.phaseturn

:[86]
push.v self.weirdpathendcon
pushi.e 0
cmp.i.v GT
bf [end]

:[87]
pushi.e 5
pop.v.i self.rr

:[end]