.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.attackcount
pushi.e 0
pop.v.i self.attackcountmax
pushi.e 1
pop.v.i self.useattacklist
push.v self.attackorderlooping
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.pacifist
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.attackorderloopingturn
push.e 1
add.i.v
pop.v.v self.attackorderloopingturn

:[5]
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [14]

:[6]
push.v 789.health_count
push.v self.health_count_max
push.d 0.75
mul.d.v
cmp.v.v GTE
bf [8]

:[7]
pushi.e 50
pop.v.i self.attackpattern

:[8]
push.v 789.health_count
push.v self.health_count_max
push.d 0.75
mul.d.v
cmp.v.v LT
bf [10]

:[9]
pushi.e 51
pop.v.i self.attackpattern

:[10]
push.v 789.health_count
push.v self.health_count_max
push.d 0.5
mul.d.v
cmp.v.v LT
bf [12]

:[11]
pushi.e 52
pop.v.i self.attackpattern

:[12]
push.v 789.health_count
push.v self.health_count_max
push.d 0.25
mul.d.v
cmp.v.v LT
bf [14]

:[13]
pushi.e 53
pop.v.i self.attackpattern

:[14]
push.v 842.sub_healthbar_count
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [23]

:[18]
push.v self.finalbaseballused
pushi.e 0
cmp.i.v GT
bf [20]

:[19]
pushi.e 100
pop.v.i self.attackpattern
b [22]

:[20]
push.v self.health_count
push.v self.health_count_max
push.d 0.27
mul.d.v
cmp.v.v LTE
bf [22]

:[21]
pushi.e 99
pop.v.i self.attackpattern
pushi.e 1
pop.v.i self.finalbaseballused

:[22]
pushi.e 0
pop.v.i 840.breathattack
pushi.e 0
pop.v.i 840.missleattack

:[23]
push.v self.attackpattern
pushi.e 100
cmp.i.v EQ
bf [27]

:[24]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 9
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 777
pushenv [26]

:[25]
pushi.e 1000
pop.v.i self.boxingtimer

:[26]
popenv [25]

:[27]
push.v self.attackpattern
pushi.e 99
cmp.i.v EQ
bf [31]

:[28]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 7
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 9
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 777
pushenv [30]

:[29]
pushi.e 1000
pop.v.i self.boxingtimer

:[30]
popenv [29]

:[31]
push.v self.attackpattern
pushi.e 22
cmp.i.v EQ
bf [35]

:[32]
pushi.e 30
conv.i.v
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 777
pushenv [34]

:[33]
pushi.e 400
pop.v.i self.boxingtimer

:[34]
popenv [33]

:[35]
push.v self.attackpattern
pushi.e 21
cmp.i.v EQ
bf [39]

:[36]
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 777
pushenv [38]

:[37]
pushi.e 500
pop.v.i self.boxingtimer

:[38]
popenv [37]

:[39]
push.v self.attackpattern
pushi.e 20
cmp.i.v EQ
bf [68]

:[40]
pushi.e 30
conv.i.v
call.i irandom(argc=1)
pop.v.v self.rand
push.v self.rand
pushi.e 10
cmp.i.v LT
bf [42]

:[41]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v

:[42]
push.v self.rand
pushi.e 10
cmp.i.v GTE
bf [44]

:[43]
push.v self.rand
pushi.e 20
cmp.i.v LT
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v

:[47]
push.v self.rand
pushi.e 20
cmp.i.v GTE
bf [49]

:[48]
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v

:[49]
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [65]

:[50]
pushi.e 40
conv.i.v
call.i irandom(argc=1)
pop.v.v self.rand
push.v self.rand
pushi.e 10
cmp.i.v LT
bf [52]

:[51]
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v

:[52]
push.v self.rand
pushi.e 10
cmp.i.v GTE
bf [54]

:[53]
push.v self.rand
pushi.e 20
cmp.i.v LT
b [55]

:[54]
push.e 0

:[55]
bf [57]

:[56]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v

:[57]
push.v self.rand
pushi.e 20
cmp.i.v GTE
bf [59]

:[58]
push.v self.rand
pushi.e 30
cmp.i.v LT
b [60]

:[59]
push.e 0

:[60]
bf [62]

:[61]
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v

:[62]
push.v self.rand
pushi.e 30
cmp.i.v GTE
bf [64]

:[63]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v

:[64]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [50]

:[65]
popz.i
pushi.e 777
pushenv [67]

:[66]
pushi.e 400
pop.v.i self.boxingtimer

:[67]
popenv [66]

:[68]
push.v self.attackpattern
pushi.e 19
cmp.i.v EQ
bf [72]

:[69]
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 777
pushenv [71]

:[70]
pushi.e 400
pop.v.i self.boxingtimer

:[71]
popenv [70]

:[72]
push.v self.attackpattern
pushi.e 18
cmp.i.v EQ
bf [76]

:[73]
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 777
pushenv [75]

:[74]
pushi.e 400
pop.v.i self.boxingtimer

:[75]
popenv [74]

:[76]
push.v self.attackpattern
pushi.e 17
cmp.i.v EQ
bf [80]

:[77]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 777
pushenv [79]

:[78]
pushi.e 300
pop.v.i self.boxingtimer

:[79]
popenv [78]

:[80]
push.v self.attackpattern
pushi.e 16
cmp.i.v EQ
bf [84]

:[81]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 10
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 777
pushenv [83]

:[82]
pushi.e 500
pop.v.i self.boxingtimer

:[83]
popenv [82]

:[84]
push.v self.attackpattern
pushi.e 15
cmp.i.v EQ
bf [88]

:[85]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 10
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 777
pushenv [87]

:[86]
pushi.e 500
pop.v.i self.boxingtimer

:[87]
popenv [86]

:[88]
push.v self.attackpattern
pushi.e 14
cmp.i.v EQ
bf [92]

:[89]
pushi.e 30
conv.i.v
pushi.e 1
conv.i.v
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 777
pushenv [91]

:[90]
pushi.e 400
pop.v.i self.boxingtimer

:[91]
popenv [90]

:[92]
push.v self.attackpattern
pushi.e 13
cmp.i.v EQ
bf [96]

:[93]
pushi.e 20
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 777
pushenv [95]

:[94]
pushi.e 400
pop.v.i self.boxingtimer

:[95]
popenv [94]

:[96]
push.v self.attackpattern
pushi.e 12
cmp.i.v EQ
bf [100]

:[97]
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 777
pushenv [99]

:[98]
pushi.e 400
pop.v.i self.boxingtimer

:[99]
popenv [98]

:[100]
push.v self.attackpattern
pushi.e 11
cmp.i.v EQ
bf [104]

:[101]
pushi.e 30
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 777
pushenv [103]

:[102]
pushi.e 400
pop.v.i self.boxingtimer

:[103]
popenv [102]

:[104]
push.v self.attackpattern
pushi.e 10
cmp.i.v EQ
bf [108]

:[105]
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 777
pushenv [107]

:[106]
pushi.e 400
pop.v.i self.boxingtimer

:[107]
popenv [106]

:[108]
push.v self.attackpattern
pushi.e 8
cmp.i.v EQ
bf [112]

:[109]
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 777
pushenv [111]

:[110]
pushi.e 400
pop.v.i self.boxingtimer

:[111]
popenv [110]

:[112]
push.v self.attackpattern
pushi.e 7
cmp.i.v EQ
bf [116]

:[113]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 777
pushenv [115]

:[114]
pushi.e 400
pop.v.i self.boxingtimer

:[115]
popenv [114]

:[116]
push.v self.attackpattern
pushi.e 6
cmp.i.v EQ
bf [120]

:[117]
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 777
pushenv [119]

:[118]
pushi.e 400
pop.v.i self.boxingtimer

:[119]
popenv [118]

:[120]
push.v self.attackpattern
push.d 5.5
cmp.d.v EQ
bf [124]

:[121]
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 777
pushenv [123]

:[122]
pushi.e 400
pop.v.i self.boxingtimer

:[123]
popenv [122]

:[124]
push.v self.attackpattern
pushi.e 5
cmp.i.v EQ
bf [128]

:[125]
pushi.e 20
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 20
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 777
pushenv [127]

:[126]
pushi.e 400
pop.v.i self.boxingtimer

:[127]
popenv [126]

:[128]
push.v self.attackpattern
pushi.e 4
cmp.i.v EQ
bf [132]

:[129]
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 20
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 777
pushenv [131]

:[130]
pushi.e 400
pop.v.i self.boxingtimer

:[131]
popenv [130]

:[132]
push.v self.attackpattern
push.d 3.5
cmp.d.v EQ
bf [136]

:[133]
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 777
pushenv [135]

:[134]
pushi.e 400
pop.v.i self.boxingtimer

:[135]
popenv [134]

:[136]
push.v self.attackpattern
pushi.e 3
cmp.i.v EQ
bf [140]

:[137]
pushi.e 20
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 20
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 777
pushenv [139]

:[138]
pushi.e 400
pop.v.i self.boxingtimer

:[139]
popenv [138]

:[140]
push.v self.attackpattern
pushi.e 2
cmp.i.v EQ
bf [144]

:[141]
pushi.e 20
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 20
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 20
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 777
pushenv [143]

:[142]
pushi.e 400
pop.v.i self.boxingtimer

:[143]
popenv [142]

:[144]
push.v self.attackpattern
push.d 1.8
cmp.d.v EQ
bf [148]

:[145]
pushi.e 30
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 30
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 30
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 777
pushenv [147]

:[146]
pushi.e 400
pop.v.i self.boxingtimer

:[147]
popenv [146]

:[148]
push.v self.attackpattern
push.d 1.4
cmp.d.v EQ
bf [152]

:[149]
pushi.e 30
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 8
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 777
pushenv [151]

:[150]
pushi.e 270
pop.v.i self.boxingtimer

:[151]
popenv [150]

:[152]
push.v self.attackpattern
pushi.e 1
cmp.i.v EQ
bf [156]

:[153]
pushi.e 30
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 30
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 30
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 777
pushenv [155]

:[154]
pushi.e 400
pop.v.i self.boxingtimer

:[155]
popenv [154]

:[156]
push.v self.attackpattern
pushi.e 0
cmp.i.v EQ
bf [160]

:[157]
pushi.e 30
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 30
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 30
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 777
pushenv [159]

:[158]
pushi.e 400
pop.v.i self.boxingtimer

:[159]
popenv [158]

:[160]
push.v self.attackpattern
pushi.e 50
cmp.i.v EQ
bf [164]

:[161]
pushi.e 30
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 30
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 30
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 30
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 777
pushenv [163]

:[162]
pushi.e 400
pop.v.i self.boxingtimer

:[163]
popenv [162]

:[164]
push.v self.attackpattern
pushi.e 51
cmp.i.v EQ
bf [168]

:[165]
pushi.e 30
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 30
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 777
pushenv [167]

:[166]
pushi.e 400
pop.v.i self.boxingtimer

:[167]
popenv [166]

:[168]
push.v self.attackpattern
pushi.e 52
cmp.i.v EQ
bf [172]

:[169]
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 72
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 72
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 777
pushenv [171]

:[170]
pushi.e 400
pop.v.i self.boxingtimer

:[171]
popenv [170]

:[172]
push.v self.attackpattern
pushi.e 53
cmp.i.v EQ
bf [176]

:[173]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 8
conv.i.v
call.i gml_Script_scr_qb(argc=4)
popz.v
pushi.e 777
pushenv [175]

:[174]
pushi.e 400
pop.v.i self.boxingtimer

:[175]
popenv [174]

:[176]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
bf [end]

:[177]
push.v 842.sub_healthbar_count
pushi.e 2
cmp.i.v EQ
bf [186]

:[178]
push.v self.attackpattern
pushi.e 0
cmp.i.v EQ
bf [180]

:[179]
pushi.e 1
pop.v.i self.attackpattern
b [186]

:[180]
push.v self.attackpattern
pushi.e 1
cmp.i.v EQ
bf [182]

:[181]
push.d 1.4
pop.v.d self.attackpattern
b [186]

:[182]
push.v self.attackpattern
push.d 1.4
cmp.d.v EQ
bf [184]

:[183]
push.d 1.8
pop.v.d self.attackpattern
pushi.e 1
pop.v.i self.usedbaseball
b [186]

:[184]
push.v self.attackpattern
push.d 1.8
cmp.d.v EQ
bf [186]

:[185]
push.d 1.4
pop.v.d self.attackpattern
pushi.e 1
pop.v.i self.pattern_state

:[186]
push.v 842.sub_healthbar_count
pushi.e 1
cmp.i.v EQ
bf [231]

:[187]
push.v self.pattern_state
pushi.e 0
cmp.i.v EQ
bf [209]

:[188]
push.v self.attackpattern
pushi.e 2
cmp.i.v LT
bf [190]

:[189]
pushi.e 2
pop.v.i self.attackpattern
b [208]

:[190]
push.v self.attackpattern
pushi.e 2
cmp.i.v EQ
bf [192]

:[191]
pushi.e 3
pop.v.i self.attackpattern
b [208]

:[192]
push.v self.attackpattern
pushi.e 3
cmp.i.v EQ
bf [194]

:[193]
push.d 3.5
pop.v.d self.attackpattern
b [208]

:[194]
push.v self.attackpattern
push.d 3.5
cmp.d.v EQ
bf [196]

:[195]
pushi.e 4
pop.v.i self.attackpattern
pushi.e 1
pop.v.i 840.missleattack
b [208]

:[196]
push.v self.attackpattern
pushi.e 4
cmp.i.v EQ
bf [198]

:[197]
pushi.e 5
pop.v.i self.attackpattern
b [208]

:[198]
push.v self.attackpattern
pushi.e 5
cmp.i.v EQ
bf [200]

:[199]
push.v self.health_count
push.v self.health_count_max
push.d 0.5
mul.d.v
cmp.v.v GTE
b [201]

:[200]
push.e 0

:[201]
bf [203]

:[202]
pushi.e 6
pop.v.i self.attackpattern
pushi.e 1
pop.v.i self.pattern_state
b [208]

:[203]
push.v self.attackpattern
pushi.e 5
cmp.i.v EQ
bf [205]

:[204]
push.v self.health_count
push.v self.health_count_max
push.d 0.5
mul.d.v
cmp.v.v LT
b [206]

:[205]
push.e 0

:[206]
bf [208]

:[207]
pushi.e 7
pop.v.i self.attackpattern
pushi.e 1
pop.v.i self.pattern_state
pushi.e 1
pop.v.i self.has_boss_done_pattern7

:[208]
b [231]

:[209]
push.v self.attackpattern
pushi.e 6
cmp.i.v EQ
bf [211]

:[210]
push.v self.pattern_state
pushi.e 1
cmp.i.v EQ
b [212]

:[211]
push.e 0

:[212]
bt [217]

:[213]
push.v self.attackpattern
pushi.e 7
cmp.i.v EQ
bf [215]

:[214]
push.v self.pattern_state
pushi.e 1
cmp.i.v EQ
b [216]

:[215]
push.e 0

:[216]
b [218]

:[217]
push.e 1

:[218]
bf [220]

:[219]
pushi.e 4
pop.v.i self.attackpattern
b [230]

:[220]
push.v self.attackpattern
pushi.e 4
cmp.i.v EQ
bf [222]

:[221]
pushi.e 5
pop.v.i self.attackpattern
b [230]

:[222]
push.v self.attackpattern
pushi.e 5
cmp.i.v EQ
bf [224]

:[223]
push.d 3.5
pop.v.d self.attackpattern
b [230]

:[224]
push.v self.attackpattern
push.d 3.5
cmp.d.v EQ
bf [226]

:[225]
pushi.e 6
pop.v.i self.attackpattern
b [230]

:[226]
push.v self.attackpattern
pushi.e 6
cmp.i.v EQ
bf [228]

:[227]
pushi.e 7
pop.v.i self.attackpattern
b [230]

:[228]
push.v self.attackpattern
pushi.e 7
cmp.i.v EQ
bf [230]

:[229]
pushi.e 4
pop.v.i self.attackpattern
pushi.e 1
pop.v.i 840.missleattack

:[230]
pushi.e 2
pop.v.i self.pattern_state

:[231]
push.v 842.sub_healthbar_count
pushi.e 0
cmp.i.v EQ
bf [233]

:[232]
push.v 777.beat_phase2_no_damage_taken
pushi.e 0
cmp.i.v EQ
b [234]

:[233]
push.e 0

:[234]
bf [257]

:[235]
push.v self.attackpattern
pushi.e 15
cmp.i.v EQ
bf [237]

:[236]
pushi.e 10
pop.v.i self.attackpattern
b [257]

:[237]
push.v self.attackpattern
pushi.e 10
cmp.i.v EQ
bf [239]

:[238]
push.v self.has_boss_done_pattern7
pushi.e 0
cmp.i.v EQ
b [240]

:[239]
push.e 0

:[240]
bf [242]

:[241]
pushi.e 7
pop.v.i self.attackpattern
pushi.e 1
pop.v.i self.has_boss_done_pattern7
pushi.e 1
pop.v.i 840.breathattack
b [257]

:[242]
push.v self.attackpattern
pushi.e 10
cmp.i.v EQ
bf [244]

:[243]
pushi.e 12
pop.v.i self.attackpattern
pushi.e 1
pop.v.i 840.breathattack
b [257]

:[244]
push.v self.attackpattern
pushi.e 7
cmp.i.v EQ
bt [246]

:[245]
push.v self.attackpattern
pushi.e 12
cmp.i.v EQ
b [247]

:[246]
push.e 1

:[247]
bf [249]

:[248]
pushi.e 11
pop.v.i self.attackpattern
b [257]

:[249]
push.v self.attackpattern
pushi.e 11
cmp.i.v EQ
bf [251]

:[250]
pushi.e 8
pop.v.i self.attackpattern
b [257]

:[251]
push.v self.attackpattern
pushi.e 8
cmp.i.v EQ
bf [253]

:[252]
pushi.e 13
pop.v.i self.attackpattern
b [257]

:[253]
push.v self.attackpattern
pushi.e 13
cmp.i.v EQ
bf [255]

:[254]
pushi.e 16
pop.v.i self.attackpattern
b [257]

:[255]
push.v self.attackpattern
pushi.e 16
cmp.i.v EQ
bf [257]

:[256]
pushi.e 10
pop.v.i self.attackpattern
pushi.e 1
pop.v.i self.pattern_state

:[257]
push.v 842.sub_healthbar_count
pushi.e 0
cmp.i.v EQ
bf [259]

:[258]
push.v 777.beat_phase2_no_damage_taken
pushi.e 1
cmp.i.v EQ
b [260]

:[259]
push.e 0

:[260]
bf [end]

:[261]
push.v self.pattern_state
pushi.e 0
cmp.i.v EQ
bf [273]

:[262]
push.v self.attackpattern
pushi.e 21
cmp.i.v EQ
bf [266]

:[263]
pushi.e 18
pop.v.i self.attackpattern
pushi.e 829
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [265]

:[264]
pushi.e 829
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v

:[265]
b [272]

:[266]
push.v self.attackpattern
pushi.e 18
cmp.i.v EQ
bf [268]

:[267]
pushi.e 22
pop.v.i self.attackpattern
pushi.e 1
pop.v.i 777.phase3_hit_check
b [272]

:[268]
push.v self.attackpattern
pushi.e 22
cmp.i.v EQ
bf [270]

:[269]
pushi.e 19
pop.v.i self.attackpattern
b [272]

:[270]
push.v self.attackpattern
pushi.e 19
cmp.i.v EQ
bf [272]

:[271]
pushi.e 14
pop.v.i self.attackpattern
pushi.e 1
pop.v.i self.pattern_state
pushi.e 1
pop.v.i 777.phase3_hit_check

:[272]
b [end]

:[273]
push.v self.attackpattern
pushi.e 14
cmp.i.v EQ
bf [275]

:[274]
push.v self.pattern_state
pushi.e 1
cmp.i.v EQ
b [276]

:[275]
push.e 0

:[276]
bf [278]

:[277]
pushi.e 20
pop.v.i self.attackpattern
pushi.e 2
pop.v.i self.pattern_state
b [end]

:[278]
push.v self.attackpattern
pushi.e 20
cmp.i.v EQ
bf [280]

:[279]
push.v self.pattern_state
pushi.e 2
cmp.i.v EQ
b [281]

:[280]
push.e 0

:[281]
bf [283]

:[282]
pushi.e 21
pop.v.i self.attackpattern
pushi.e 1
pop.v.i 777.phase3_hit_check
b [end]

:[283]
push.v self.attackpattern
pushi.e 21
cmp.i.v EQ
bf [285]

:[284]
pushi.e 20
pop.v.i self.attackpattern
pushi.e 3
pop.v.i self.pattern_state
b [end]

:[285]
push.v self.attackpattern
pushi.e 20
cmp.i.v EQ
bf [287]

:[286]
push.v self.pattern_state
pushi.e 3
cmp.i.v EQ
b [288]

:[287]
push.e 0

:[288]
bf [290]

:[289]
pushi.e 22
pop.v.i self.attackpattern
pushi.e 1
pop.v.i 777.phase3_hit_check
b [end]

:[290]
push.v self.attackpattern
pushi.e 22
cmp.i.v EQ
bf [292]

:[291]
pushi.e 20
pop.v.i self.attackpattern
pushi.e 4
pop.v.i self.pattern_state
b [end]

:[292]
push.v self.attackpattern
pushi.e 20
cmp.i.v EQ
bf [294]

:[293]
push.v self.pattern_state
pushi.e 4
cmp.i.v EQ
b [295]

:[294]
push.e 0

:[295]
bf [end]

:[296]
pushi.e 14
pop.v.i self.attackpattern
pushi.e 1
pop.v.i self.pattern_state
pushi.e 1
pop.v.i 777.phase3_hit_check

:[end]