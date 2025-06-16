.localvar 2 arguments

:[0]
pushi.e 23
pop.v.i global.entrance
pushi.e 192
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 7
conv.i.v
call.i event_user(argc=1)
popz.v
pushbltn.v builtin.room
pushi.e 44
cmp.i.v EQ
bf [2]

:[1]
pushi.e 39
conv.i.v
call.i room_goto(argc=1)
popz.v

:[2]
pushbltn.v builtin.room
pushi.e 53
cmp.i.v EQ
bf [4]

:[3]
pushi.e 37
conv.i.v
call.i room_goto(argc=1)
popz.v

:[4]
pushbltn.v builtin.room
pushi.e 35
cmp.i.v EQ
bf [6]

:[5]
pushi.e 36
conv.i.v
call.i room_goto(argc=1)
popz.v

:[6]
pushbltn.v builtin.room
pushi.e 36
cmp.i.v EQ
bf [8]

:[7]
pushi.e 35
conv.i.v
call.i room_goto(argc=1)
popz.v

:[8]
pushbltn.v builtin.room
pushi.e 37
cmp.i.v EQ
bf [19]

:[9]
push.v self.x
pushi.e 290
cmp.i.v GT
bf [11]

:[10]
push.v self.x
pushi.e 370
cmp.i.v LT
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 20
pop.v.i global.entrance
pushi.e 58
conv.i.v
call.i room_goto(argc=1)
popz.v

:[14]
push.v self.x
pushi.e 1730
cmp.i.v GT
bf [16]

:[15]
push.v self.x
pushi.e 1840
cmp.i.v LT
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
pushi.e 23
pop.v.i global.entrance
pushi.e 53
conv.i.v
call.i room_goto(argc=1)
popz.v

:[19]
pushbltn.v builtin.room
pushi.e 58
cmp.i.v EQ
bf [21]

:[20]
pushi.e 20
pop.v.i global.entrance
pushi.e 37
conv.i.v
call.i room_goto(argc=1)
popz.v

:[21]
pushbltn.v builtin.room
pushi.e 39
cmp.i.v EQ
bf [32]

:[22]
push.v self.x
pushi.e 230
cmp.i.v GT
bf [24]

:[23]
push.v self.x
pushi.e 280
cmp.i.v LT
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
pushi.e 22
pop.v.i global.entrance
pushi.e 56
conv.i.v
call.i room_goto(argc=1)
popz.v

:[27]
push.v self.x
pushi.e 580
cmp.i.v GT
bf [29]

:[28]
push.v self.x
pushi.e 660
cmp.i.v LT
b [30]

:[29]
push.e 0

:[30]
bf [32]

:[31]
pushi.e 23
pop.v.i global.entrance
pushi.e 44
conv.i.v
call.i room_goto(argc=1)
popz.v

:[32]
pushbltn.v builtin.room
pushi.e 56
cmp.i.v EQ
bf [34]

:[33]
pushi.e 22
pop.v.i global.entrance
pushi.e 39
conv.i.v
call.i room_goto(argc=1)
popz.v

:[34]
pushbltn.v builtin.room
pushi.e 68
cmp.i.v EQ
bf [36]

:[35]
pushi.e 66
conv.i.v
call.i room_goto(argc=1)
popz.v

:[36]
pushbltn.v builtin.room
pushi.e 66
cmp.i.v EQ
bf [38]

:[37]
pushi.e 68
conv.i.v
call.i room_goto(argc=1)
popz.v

:[38]
pushbltn.v builtin.room
pushi.e 73
cmp.i.v EQ
bf [40]

:[39]
pushi.e 24
pop.v.i global.entrance
pushi.e 77
conv.i.v
call.i room_goto(argc=1)
popz.v

:[40]
pushbltn.v builtin.room
pushi.e 77
cmp.i.v EQ
bf [51]

:[41]
push.v self.x
pushi.e 840
cmp.i.v GT
bf [43]

:[42]
push.v self.x
pushi.e 1000
cmp.i.v LT
b [44]

:[43]
push.e 0

:[44]
bf [46]

:[45]
pushi.e 23
pop.v.i global.entrance
pushi.e 79
conv.i.v
call.i room_goto(argc=1)
popz.v

:[46]
push.v self.x
pushi.e 550
cmp.i.v GT
bf [48]

:[47]
push.v self.x
pushi.e 700
cmp.i.v LT
b [49]

:[48]
push.e 0

:[49]
bf [51]

:[50]
pushi.e 24
pop.v.i global.entrance
pushi.e 73
conv.i.v
call.i room_goto(argc=1)
popz.v

:[51]
pushbltn.v builtin.room
pushi.e 78
cmp.i.v EQ
bf [67]

:[52]
push.v self.x
pushi.e 240
cmp.i.v GT
bf [54]

:[53]
push.v self.x
pushi.e 340
cmp.i.v LT
b [55]

:[54]
push.e 0

:[55]
bf [57]

:[56]
pushi.e 22
pop.v.i global.entrance
pushi.e 81
conv.i.v
call.i room_goto(argc=1)
popz.v

:[57]
push.v self.x
pushi.e 520
cmp.i.v GT
bf [59]

:[58]
push.v self.x
pushi.e 610
cmp.i.v LT
b [60]

:[59]
push.e 0

:[60]
bf [62]

:[61]
pushi.e 23
pop.v.i global.entrance
pushi.e 82
conv.i.v
call.i room_goto(argc=1)
popz.v

:[62]
push.v self.x
pushi.e 780
cmp.i.v GT
bf [64]

:[63]
push.v self.x
pushi.e 860
cmp.i.v LT
b [65]

:[64]
push.e 0

:[65]
bf [67]

:[66]
pushi.e 24
pop.v.i global.entrance
pushi.e 269
conv.i.v
call.i room_goto(argc=1)
popz.v

:[67]
pushbltn.v builtin.room
pushi.e 262
cmp.i.v EQ
bf [70]

:[68]
push.v self.x
pushi.e 10
cmp.i.v LT
bf [70]

:[69]
pushi.e 21
pop.v.i global.entrance
pushi.e 89
conv.i.v
call.i room_goto(argc=1)
popz.v

:[70]
pushbltn.v builtin.room
pushi.e 89
cmp.i.v EQ
bf [73]

:[71]
push.v self.x
pushi.e 1200
cmp.i.v LT
bf [73]

:[72]
pushi.e 21
pop.v.i global.entrance
pushi.e 262
conv.i.v
call.i room_goto(argc=1)
popz.v

:[73]
pushbltn.v builtin.room
pushi.e 94
cmp.i.v EQ
bf [78]

:[74]
push.v self.y
pushi.e 60
cmp.i.v LT
bf [76]

:[75]
pushi.e 21
pop.v.i global.entrance
pushi.e 99
conv.i.v
call.i room_goto(argc=1)
popz.v

:[76]
push.v self.y
pushi.e 400
cmp.i.v GT
bf [78]

:[77]
pushi.e 20
pop.v.i global.entrance
pushi.e 106
conv.i.v
call.i room_goto(argc=1)
popz.v

:[78]
pushbltn.v builtin.room
pushi.e 112
cmp.i.v EQ
bf [80]

:[79]
pushi.e 20
pop.v.i global.entrance
pushi.e 94
conv.i.v
call.i room_goto(argc=1)
popz.v

:[80]
pushbltn.v builtin.room
pushi.e 97
cmp.i.v EQ
bf [82]

:[81]
pushi.e 23
pop.v.i global.entrance
pushi.e 107
conv.i.v
call.i room_goto(argc=1)
popz.v

:[82]
pushbltn.v builtin.room
pushi.e 107
cmp.i.v EQ
bf [84]

:[83]
pushi.e 23
pop.v.i global.entrance
pushi.e 97
conv.i.v
call.i room_goto(argc=1)
popz.v

:[84]
pushbltn.v builtin.room
pushi.e 111
cmp.i.v EQ
bf [89]

:[85]
push.v self.y
pushi.e 900
cmp.i.v GT
bf [87]

:[86]
pushi.e 23
pop.v.i global.entrance
pushi.e 97
conv.i.v
call.i room_goto(argc=1)
popz.v

:[87]
push.v self.y
pushi.e 10
cmp.i.v LT
bf [89]

:[88]
pushi.e 20
pop.v.i global.entrance
pushi.e 104
conv.i.v
call.i room_goto(argc=1)
popz.v

:[89]
pushbltn.v builtin.room
pushi.e 104
cmp.i.v EQ
bf [94]

:[90]
push.v self.extflag
push.s "to_room_dw_cyber_musical_shop"@14124
cmp.s.v EQ
bf [92]

:[91]
pushi.e 20
pop.v.i global.entrance
pushi.e 99
conv.i.v
call.i room_goto(argc=1)
popz.v

:[92]
push.v self.extflag
push.s "to_room_dw_cyber_maze_rhythm"@19749
cmp.s.v EQ
bf [94]

:[93]
pushi.e 23
pop.v.i global.entrance
pushi.e 97
conv.i.v
call.i room_goto(argc=1)
popz.v

:[94]
pushbltn.v builtin.room
pushi.e 103
cmp.i.v EQ
bf [102]

:[95]
push.v self.extdestination
push.s "room_dw_cyber_maze_tasque to room_dw_cyber_maze_virokun"@14122
cmp.s.v EQ
bf [98]

:[96]
push.v self.x
pushi.e 180
cmp.i.v GT
bf [98]

:[97]
pushi.e 20
pop.v.i global.entrance
pushi.e 95
conv.i.v
call.i room_goto(argc=1)
popz.v

:[98]
push.v self.x
pushi.e 1000
cmp.i.v GT
bf [100]

:[99]
pushi.e 21
pop.v.i global.entrance
pushi.e 97
conv.i.v
call.i room_goto(argc=1)
popz.v

:[100]
push.v self.x
pushi.e 1400
cmp.i.v GT
bf [102]

:[101]
pushi.e 22
pop.v.i global.entrance
pushi.e 97
conv.i.v
call.i room_goto(argc=1)
popz.v

:[102]
pushbltn.v builtin.room
pushi.e 95
cmp.i.v EQ
bf [107]

:[103]
push.v self.y
pushi.e 430
cmp.i.v GT
bf [105]

:[104]
pushi.e 20
pop.v.i global.entrance
pushi.e 103
conv.i.v
call.i room_goto(argc=1)
popz.v

:[105]
push.v self.y
pushi.e 50
cmp.i.v LT
bf [107]

:[106]
pushi.e 21
pop.v.i global.entrance
pushi.e 102
conv.i.v
call.i room_goto(argc=1)
popz.v

:[107]
pushbltn.v builtin.room
pushi.e 102
cmp.i.v EQ
bf [109]

:[108]
pushi.e 21
pop.v.i global.entrance
pushi.e 95
conv.i.v
call.i room_goto(argc=1)
popz.v

:[109]
pushbltn.v builtin.room
pushi.e 99
cmp.i.v EQ
bf [114]

:[110]
push.v self.extflag
push.s "to_room_dw_cyber_maze_queenscreen"@14118
cmp.s.v EQ
bf [112]

:[111]
pushi.e 21
pop.v.i global.entrance
pushi.e 104
conv.i.v
call.i room_goto(argc=1)
popz.v

:[112]
push.v self.extflag
push.s "to_room_dw_cyber_maze_queenscreen"@14118
cmp.s.v NEQ
bf [114]

:[113]
pushi.e 21
pop.v.i global.entrance
pushi.e 94
conv.i.v
call.i room_goto(argc=1)
popz.v

:[114]
pushbltn.v builtin.room
pushi.e 81
cmp.i.v EQ
bf [116]

:[115]
pushi.e 22
pop.v.i global.entrance
pushi.e 78
conv.i.v
call.i room_goto(argc=1)
popz.v

:[116]
pushbltn.v builtin.room
pushi.e 82
cmp.i.v EQ
bf [118]

:[117]
pushi.e 23
pop.v.i global.entrance
pushi.e 78
conv.i.v
call.i room_goto(argc=1)
popz.v

:[118]
pushbltn.v builtin.room
pushi.e 269
cmp.i.v EQ
bf [120]

:[119]
pushi.e 24
pop.v.i global.entrance
pushi.e 78
conv.i.v
call.i room_goto(argc=1)
popz.v

:[120]
pushbltn.v builtin.room
pushi.e 79
cmp.i.v EQ
bf [122]

:[121]
pushi.e 23
pop.v.i global.entrance
pushi.e 77
conv.i.v
call.i room_goto(argc=1)
popz.v

:[122]
pushbltn.v builtin.room
pushi.e 149
cmp.i.v EQ
bf [124]

:[123]
pushi.e 23
pop.v.i global.entrance
pushi.e 127
conv.i.v
call.i room_goto(argc=1)
popz.v

:[124]
pushbltn.v builtin.room
pushi.e 127
cmp.i.v EQ
bf [129]

:[125]
push.v self.x
pushi.e 10
cmp.i.v LT
bf [127]

:[126]
pushi.e 23
pop.v.i global.entrance
pushi.e 149
conv.i.v
call.i room_goto(argc=1)
popz.v

:[127]
push.v self.x
pushi.e 720
cmp.i.v GT
bf [129]

:[128]
pushi.e 24
pop.v.i global.entrance
pushi.e 147
conv.i.v
call.i room_goto(argc=1)
popz.v

:[129]
pushbltn.v builtin.room
pushi.e 129
cmp.i.v EQ
bf [131]

:[130]
pushi.e 24
pop.v.i global.entrance
pushi.e 148
conv.i.v
call.i room_goto(argc=1)
popz.v

:[131]
pushbltn.v builtin.room
pushi.e 128
cmp.i.v EQ
bf [133]

:[132]
pushi.e 23
pop.v.i global.entrance
pushi.e 148
conv.i.v
call.i room_goto(argc=1)
popz.v

:[133]
pushbltn.v builtin.room
pushi.e 147
cmp.i.v EQ
bf [135]

:[134]
pushi.e 24
pop.v.i global.entrance
pushi.e 127
conv.i.v
call.i room_goto(argc=1)
popz.v

:[135]
pushbltn.v builtin.room
pushi.e 148
cmp.i.v EQ
bf [138]

:[136]
push.v self.extflag
push.s "big2"@14170
cmp.s.v EQ
bf [138]

:[137]
pushi.e 24
pop.v.i global.entrance
pushi.e 129
conv.i.v
call.i room_goto(argc=1)
popz.v

:[138]
pushbltn.v builtin.room
pushi.e 132
cmp.i.v EQ
bf [143]

:[139]
push.v self.extflag
pushi.e 0
cmp.i.v EQ
bf [141]

:[140]
pushi.e 23
pop.v.i global.entrance
pushi.e 133
conv.i.v
call.i room_goto(argc=1)
popz.v

:[141]
push.v self.extflag
push.s "ralsusfun3"@19750
cmp.s.v EQ
bf [143]

:[142]
pushi.e 23
pop.v.i global.entrance

:[143]
pushbltn.v builtin.room
pushi.e 133
cmp.i.v EQ
bf [146]

:[144]
push.v self.y
pushi.e 900
cmp.i.v LT
bf [146]

:[145]
pushi.e 23
pop.v.i global.entrance
pushi.e 132
conv.i.v
call.i room_goto(argc=1)
popz.v

:[146]
pushbltn.v builtin.room
pushi.e 152
cmp.i.v EQ
bf [148]

:[147]
pushi.e 24
pop.v.i global.entrance
pushi.e 133
conv.i.v
call.i room_goto(argc=1)
popz.v

:[148]
pushbltn.v builtin.room
pushi.e 150
cmp.i.v EQ
bf [150]

:[149]
pushi.e 24
pop.v.i global.entrance
pushi.e 133
conv.i.v
call.i room_goto(argc=1)
popz.v

:[150]
pushbltn.v builtin.room
pushi.e 139
cmp.i.v EQ
bf [155]

:[151]
push.v self.x
pushi.e 4500
cmp.i.v GT
bf [153]

:[152]
pushi.e 24
pop.v.i global.entrance
pushi.e 141
conv.i.v
call.i room_goto(argc=1)
popz.v

:[153]
push.v self.x
pushi.e 50
cmp.i.v LT
bf [155]

:[154]
pushi.e 22
pop.v.i global.entrance
pushi.e 138
conv.i.v
call.i room_goto(argc=1)
popz.v

:[155]
pushbltn.v builtin.room
pushi.e 140
cmp.i.v EQ
bf [157]

:[156]
pushi.e 23
pop.v.i global.entrance
pushi.e 139
conv.i.v
call.i room_goto(argc=1)
popz.v

:[157]
pushbltn.v builtin.room
pushi.e 141
cmp.i.v EQ
bf [159]

:[158]
pushi.e 24
pop.v.i global.entrance
pushi.e 139
conv.i.v
call.i room_goto(argc=1)
popz.v

:[159]
pushbltn.v builtin.room
pushi.e 146
cmp.i.v EQ
bf [161]

:[160]
pushi.e 22
pop.v.i global.entrance
pushi.e 167
conv.i.v
call.i room_goto(argc=1)
popz.v

:[161]
pushbltn.v builtin.room
pushi.e 162
cmp.i.v EQ
bf [174]

:[162]
push.v self.x
pushi.e 210
cmp.i.v GT
bf [164]

:[163]
push.v self.x
pushi.e 280
cmp.i.v LT
b [165]

:[164]
push.e 0

:[165]
bf [167]

:[166]
pushi.e 19
pop.v.i global.entrance
pushi.e 160
conv.i.v
call.i room_goto(argc=1)
popz.v

:[167]
push.v self.x
pushi.e 490
cmp.i.v GT
bf [169]

:[168]
push.v self.x
pushi.e 590
cmp.i.v LT
b [170]

:[169]
push.e 0

:[170]
bf [172]

:[171]
pushi.e 20
pop.v.i global.entrance
pushi.e 161
conv.i.v
call.i room_goto(argc=1)
popz.v

:[172]
push.v self.x
pushi.e 1900
cmp.i.v GT
bf [174]

:[173]
pushi.e 21
pop.v.i global.entrance
pushi.e 163
conv.i.v
call.i room_goto(argc=1)
popz.v

:[174]
pushbltn.v builtin.room
pushi.e 161
cmp.i.v EQ
bf [176]

:[175]
pushi.e 20
pop.v.i global.entrance
pushi.e 162
conv.i.v
call.i room_goto(argc=1)
popz.v

:[176]
pushbltn.v builtin.room
pushi.e 160
cmp.i.v EQ
bf [178]

:[177]
pushi.e 19
pop.v.i global.entrance
pushi.e 162
conv.i.v
call.i room_goto(argc=1)
popz.v

:[178]
pushbltn.v builtin.room
pushi.e 163
cmp.i.v EQ
bf [185]

:[179]
push.v self.x
pushi.e 10
cmp.i.v LT
bf [181]

:[180]
pushi.e 21
pop.v.i global.entrance
pushi.e 162
conv.i.v
call.i room_goto(argc=1)
popz.v

:[181]
push.v self.x
pushi.e 600
cmp.i.v GT
bf [185]

:[182]
pushglb.v global.plot
pushi.e 120
cmp.i.v LT
bf [184]

:[183]
pushi.e 20
pop.v.i global.entrance
pushi.e 164
conv.i.v
call.i room_goto(argc=1)
popz.v
b [185]

:[184]
pushi.e 20
pop.v.i global.entrance
pushi.e 166
conv.i.v
call.i room_goto(argc=1)
popz.v

:[185]
pushbltn.v builtin.room
pushi.e 164
cmp.i.v EQ
bf [190]

:[186]
push.v self.x
pushi.e 10
cmp.i.v LT
bf [188]

:[187]
pushi.e 20
pop.v.i global.entrance
pushi.e 163
conv.i.v
call.i room_goto(argc=1)
popz.v

:[188]
push.v self.x
pushi.e 600
cmp.i.v GT
bf [190]

:[189]
pushi.e 19
pop.v.i global.entrance
pushi.e 165
conv.i.v
call.i room_goto(argc=1)
popz.v

:[190]
pushbltn.v builtin.room
pushi.e 165
cmp.i.v EQ
bf [195]

:[191]
push.v self.x
pushi.e 10
cmp.i.v LT
bf [193]

:[192]
pushi.e 19
pop.v.i global.entrance
pushi.e 164
conv.i.v
call.i room_goto(argc=1)
popz.v

:[193]
push.v self.x
pushi.e 600
cmp.i.v GT
bf [195]

:[194]
pushi.e 20
pop.v.i global.entrance
pushi.e 166
conv.i.v
call.i room_goto(argc=1)
popz.v

:[195]
pushbltn.v builtin.room
pushi.e 166
cmp.i.v EQ
bf [200]

:[196]
push.v self.x
pushi.e 10
cmp.i.v LT
bf [200]

:[197]
pushi.e 20
pop.v.i global.entrance
pushglb.v global.plot
pushi.e 120
cmp.i.v LT
bf [199]

:[198]
pushi.e 165
conv.i.v
call.i room_goto(argc=1)
popz.v
b [200]

:[199]
pushi.e 163
conv.i.v
call.i room_goto(argc=1)
popz.v

:[200]
pushbltn.v builtin.room
pushi.e 192
cmp.i.v EQ
bf [202]

:[201]
pushi.e 20
pop.v.i global.entrance
pushi.e 167
conv.i.v
call.i room_goto(argc=1)
popz.v

:[202]
pushbltn.v builtin.room
pushi.e 167
cmp.i.v EQ
bf [222]

:[203]
push.v self.x
pushi.e 620
cmp.i.v GT
bf [207]

:[204]
push.v self.x
pushi.e 630
cmp.i.v LT
bf [207]

:[205]
push.v self.y
pushi.e 450
cmp.i.v GT
bf [207]

:[206]
push.v self.y
pushi.e 470
cmp.i.v LT
b [208]

:[207]
push.e 0

:[208]
bf [210]

:[209]
pushi.e 20
pop.v.i global.entrance
pushi.e 192
conv.i.v
call.i room_goto(argc=1)
popz.v

:[210]
push.v self.x
pushi.e 730
cmp.i.v GT
bf [214]

:[211]
push.v self.x
pushi.e 750
cmp.i.v LT
bf [214]

:[212]
push.v self.y
pushi.e 450
cmp.i.v GT
bf [214]

:[213]
push.v self.y
pushi.e 470
cmp.i.v LT
b [215]

:[214]
push.e 0

:[215]
bf [217]

:[216]
pushi.e 19
pop.v.i global.entrance
pushi.e 197
conv.i.v
call.i room_goto(argc=1)
popz.v

:[217]
push.v self.x
pushi.e 800
cmp.i.v GT
bf [219]

:[218]
push.v self.y
pushi.e 670
cmp.i.v GT
b [220]

:[219]
push.e 0

:[220]
bf [222]

:[221]
pushi.e 21
pop.v.i global.entrance
pushi.e 174
conv.i.v
call.i room_goto(argc=1)
popz.v

:[222]
pushbltn.v builtin.room
pushi.e 225
cmp.i.v EQ
bf [224]

:[223]
pushi.e 19
pop.v.i global.entrance
pushi.e 167
conv.i.v
call.i room_goto(argc=1)
popz.v

:[224]
pushbltn.v builtin.room
pushi.e 191
cmp.i.v EQ
bf [229]

:[225]
push.v self.extflag
push.s "topleft"@14189
cmp.s.v EQ
bf [227]

:[226]
pushi.e 22
pop.v.i global.entrance
pushi.e 193
conv.i.v
call.i room_goto(argc=1)
popz.v

:[227]
push.v self.extflag
push.s "topright"@14190
cmp.s.v EQ
bf [229]

:[228]
pushi.e 24
pop.v.i global.entrance
pushi.e 216
conv.i.v
call.i room_goto(argc=1)
popz.v

:[229]
pushbltn.v builtin.room
pushi.e 174
cmp.i.v EQ
bf [232]

:[230]
push.v self.x
pushi.e 10
cmp.i.v LT
bf [232]

:[231]
pushi.e 21
pop.v.i global.entrance
pushi.e 167
conv.i.v
call.i room_goto(argc=1)
popz.v

:[232]
pushbltn.v builtin.room
pushi.e 181
cmp.i.v EQ
bf [236]

:[233]
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 9
cmp.i.v LT
bf [235]

:[234]
pushi.e 24
pop.v.i global.entrance
pushi.e 186
conv.i.v
call.i room_goto(argc=1)
popz.v
b [236]

:[235]
pushi.e 24
pop.v.i global.entrance
pushi.e 189
conv.i.v
call.i room_goto(argc=1)
popz.v

:[236]
pushbltn.v builtin.room
pushi.e 186
cmp.i.v EQ
bf [246]

:[237]
push.v self.x
pushi.e 10
cmp.i.v LT
bf [239]

:[238]
pushi.e 24
pop.v.i global.entrance
pushi.e 181
conv.i.v
call.i room_goto(argc=1)
popz.v

:[239]
push.v self.x
pushi.e 80
cmp.i.v GT
bf [241]

:[240]
push.v self.x
pushi.e 150
cmp.i.v LT
b [242]

:[241]
push.e 0

:[242]
bf [244]

:[243]
pushi.e 22
pop.v.i global.entrance
pushi.e 187
conv.i.v
call.i room_goto(argc=1)
popz.v

:[244]
push.v self.x
pushi.e 1000
cmp.i.v GT
bf [246]

:[245]
pushi.e 23
pop.v.i global.entrance
pushi.e 188
conv.i.v
call.i room_goto(argc=1)
popz.v

:[246]
pushbltn.v builtin.room
pushi.e 187
cmp.i.v EQ
bf [250]

:[247]
pushi.e 22
pop.v.i global.entrance
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 8
cmp.i.v LT
bf [249]

:[248]
pushi.e 186
conv.i.v
call.i room_goto(argc=1)
popz.v
b [250]

:[249]
pushi.e 189
conv.i.v
call.i room_goto(argc=1)
popz.v

:[250]
pushbltn.v builtin.room
pushi.e 188
cmp.i.v EQ
bf [252]

:[251]
pushi.e 23
pop.v.i global.entrance
pushi.e 186
conv.i.v
call.i room_goto(argc=1)
popz.v

:[252]
pushbltn.v builtin.room
pushi.e 189
cmp.i.v EQ
bf [256]

:[253]
push.v self.y
pushi.e 200
cmp.i.v LT
bf [255]

:[254]
pushi.e 22
pop.v.i global.entrance
pushi.e 187
conv.i.v
call.i room_goto(argc=1)
popz.v
b [256]

:[255]
pushi.e 24
pop.v.i global.entrance
pushi.e 181
conv.i.v
call.i room_goto(argc=1)
popz.v

:[256]
pushbltn.v builtin.room
pushi.e 182
cmp.i.v EQ
bf [263]

:[257]
push.v self.extflag
push.s "gotoroom_dw_mansion_b_west_2f"@14186
cmp.s.v EQ
bf [259]

:[258]
pushi.e 24
pop.v.i global.entrance
pushi.e 185
conv.i.v
call.i room_goto(argc=1)
popz.v

:[259]
push.v self.x
pushi.e 800
cmp.i.v GT
bf [261]

:[260]
pushi.e 23
pop.v.i global.entrance
pushi.e 184
conv.i.v
call.i room_goto(argc=1)
popz.v

:[261]
push.v self.x
pushi.e 1400
cmp.i.v GT
bf [263]

:[262]
pushi.e 22
pop.v.i global.entrance
pushi.e 183
conv.i.v
call.i room_goto(argc=1)
popz.v

:[263]
pushbltn.v builtin.room
pushi.e 185
cmp.i.v EQ
bf [265]

:[264]
pushi.e 24
pop.v.i global.entrance
pushi.e 182
conv.i.v
call.i room_goto(argc=1)
popz.v

:[265]
pushbltn.v builtin.room
pushi.e 183
cmp.i.v EQ
bf [267]

:[266]
pushi.e 22
pop.v.i global.entrance
pushi.e 182
conv.i.v
call.i room_goto(argc=1)
popz.v

:[267]
pushbltn.v builtin.room
pushi.e 184
cmp.i.v EQ
bf [269]

:[268]
pushi.e 23
pop.v.i global.entrance
pushi.e 182
conv.i.v
call.i room_goto(argc=1)
popz.v

:[269]
pushbltn.v builtin.room
pushi.e 196
cmp.i.v EQ
bf [273]

:[270]
push.v self.x
pushi.e 1200
cmp.i.v GT
bf [272]

:[271]
pushi.e 20
pop.v.i global.entrance
pushi.e 194
conv.i.v
call.i room_goto(argc=1)
popz.v
b [273]

:[272]
pushi.e 24
pop.v.i global.entrance
pushi.e 178
conv.i.v
call.i room_goto(argc=1)
popz.v

:[273]
pushbltn.v builtin.room
pushi.e 194
cmp.i.v EQ
bf [284]

:[274]
push.v self.extflag
push.s "farleft"@14196
cmp.s.v EQ
bf [276]

:[275]
pushi.e 20
pop.v.i global.entrance
pushi.e 196
conv.i.v
call.i room_goto(argc=1)
popz.v

:[276]
push.v self.extflag
push.s "topleft"@14189
cmp.s.v EQ
bf [278]

:[277]
pushi.e 23
pop.v.i global.entrance
pushi.e 195
conv.i.v
call.i room_goto(argc=1)
popz.v

:[278]
push.v self.extflag
push.s "topright"@14190
cmp.s.v EQ
bf [280]

:[279]
pushi.e 22
pop.v.i global.entrance
pushi.e 195
conv.i.v
call.i room_goto(argc=1)
popz.v

:[280]
push.v self.extflag
push.s "bottom"@4636
cmp.s.v EQ
bf [282]

:[281]
pushi.e 24
pop.v.i global.entrance
pushi.e 220
conv.i.v
call.i room_goto(argc=1)
popz.v

:[282]
push.v self.extflag
push.s "farright"@14195
cmp.s.v EQ
bf [284]

:[283]
pushi.e 23
pop.v.i global.entrance
pushi.e 217
conv.i.v
call.i room_goto(argc=1)
popz.v

:[284]
pushbltn.v builtin.room
pushi.e 193
cmp.i.v EQ
bf [286]

:[285]
pushi.e 22
pop.v.i global.entrance
pushi.e 191
conv.i.v
call.i room_goto(argc=1)
popz.v

:[286]
pushbltn.v builtin.room
pushi.e 195
cmp.i.v EQ
bf [291]

:[287]
push.v self.x
pushi.e 260
cmp.i.v GT
bf [289]

:[288]
pushi.e 23
pop.v.i global.entrance
pushi.e 194
conv.i.v
call.i room_goto(argc=1)
popz.v

:[289]
push.v self.x
pushi.e 1540
cmp.i.v GT
bf [291]

:[290]
pushi.e 22
pop.v.i global.entrance
pushi.e 194
conv.i.v
call.i room_goto(argc=1)
popz.v

:[291]
pushbltn.v builtin.room
pushi.e 220
cmp.i.v EQ
bf [293]

:[292]
pushi.e 24
pop.v.i global.entrance
pushi.e 194
conv.i.v
call.i room_goto(argc=1)
popz.v

:[293]
pushbltn.v builtin.room
pushi.e 199
cmp.i.v EQ
bf [295]

:[294]
pushi.e 23
pop.v.i global.entrance
pushi.e 197
conv.i.v
call.i room_goto(argc=1)
popz.v

:[295]
pushbltn.v builtin.room
pushi.e 198
cmp.i.v EQ
bf [297]

:[296]
pushi.e 21
pop.v.i global.entrance
pushi.e 197
conv.i.v
call.i room_goto(argc=1)
popz.v

:[297]
pushbltn.v builtin.room
pushi.e 197
cmp.i.v EQ
bf [316]

:[298]
push.v self.x
pushi.e 10
cmp.i.v LT
bf [300]

:[299]
pushi.e 21
pop.v.i global.entrance
pushi.e 198
conv.i.v
call.i room_goto(argc=1)
popz.v

:[300]
push.v self.x
pushi.e 220
cmp.i.v GT
bf [302]

:[301]
push.v self.y
pushi.e 200
cmp.i.v LT
b [303]

:[302]
push.e 0

:[303]
bf [305]

:[304]
pushi.e 19
pop.v.i global.entrance
pushi.e 167
conv.i.v
call.i room_goto(argc=1)
popz.v

:[305]
push.v self.x
pushi.e 220
cmp.i.v GT
bf [307]

:[306]
push.v self.y
pushi.e 440
cmp.i.v GTE
b [308]

:[307]
push.e 0

:[308]
bf [310]

:[309]
pushi.e 22
pop.v.i global.entrance
pushi.e 178
conv.i.v
call.i room_goto(argc=1)
popz.v

:[310]
push.v self.x
pushi.e 500
cmp.i.v GT
bf [312]

:[311]
pushi.e 20
pop.v.i global.entrance
pushi.e 204
conv.i.v
call.i room_goto(argc=1)
popz.v

:[312]
push.v self.x
pushi.e 870
cmp.i.v GT
bf [314]

:[313]
pushi.e 23
pop.v.i global.entrance
pushi.e 199
conv.i.v
call.i room_goto(argc=1)
popz.v

:[314]
push.v self.x
pushi.e 1250
cmp.i.v GT
bf [316]

:[315]
pushi.e 24
pop.v.i global.entrance
pushi.e 200
conv.i.v
call.i room_goto(argc=1)
popz.v

:[316]
pushbltn.v builtin.room
pushi.e 178
cmp.i.v EQ
bf [320]

:[317]
push.v self.y
pushi.e 4600
cmp.i.v GT
bf [319]

:[318]
pushi.e 24
pop.v.i global.entrance
pushi.e 196
conv.i.v
call.i room_goto(argc=1)
popz.v
b [320]

:[319]
pushi.e 22
pop.v.i global.entrance
pushi.e 197
conv.i.v
call.i room_goto(argc=1)
popz.v

:[320]
pushbltn.v builtin.room
pushi.e 200
cmp.i.v EQ
bf [322]

:[321]
pushi.e 24
pop.v.i global.entrance
pushi.e 197
conv.i.v
call.i room_goto(argc=1)
popz.v

:[322]
pushbltn.v builtin.room
pushi.e 201
cmp.i.v EQ
bf [324]

:[323]
pushi.e 24
pop.v.i global.entrance
pushi.e 212
conv.i.v
call.i room_goto(argc=1)
popz.v

:[324]
pushbltn.v builtin.room
pushi.e 52
cmp.i.v EQ
bf [335]

:[325]
push.v self.x
pushi.e 110
cmp.i.v GT
bf [327]

:[326]
push.v self.x
pushi.e 150
cmp.i.v LT
b [328]

:[327]
push.e 0

:[328]
bf [330]

:[329]
pushi.e 23
pop.v.i global.entrance
pushi.e 54
conv.i.v
call.i room_goto(argc=1)
popz.v

:[330]
push.v self.x
pushi.e 215
cmp.i.v GT
bf [332]

:[331]
push.v self.x
pushi.e 230
cmp.i.v LT
b [333]

:[332]
push.e 0

:[333]
bf [335]

:[334]
pushi.e 20
pop.v.i global.entrance
pushi.e 55
conv.i.v
call.i room_goto(argc=1)
popz.v

:[335]
pushbltn.v builtin.room
pushi.e 55
cmp.i.v EQ
bf [337]

:[336]
pushi.e 20
pop.v.i global.entrance
pushi.e 52
conv.i.v
call.i room_goto(argc=1)
popz.v

:[337]
pushbltn.v builtin.room
pushi.e 54
cmp.i.v EQ
bf [339]

:[338]
pushi.e 23
pop.v.i global.entrance
pushi.e 52
conv.i.v
call.i room_goto(argc=1)
popz.v

:[339]
pushbltn.v builtin.room
pushi.e 266
cmp.i.v EQ
bf [341]

:[340]
pushi.e 23
pop.v.i global.entrance
pushi.e 94
conv.i.v
call.i room_goto(argc=1)
popz.v

:[341]
pushbltn.v builtin.room
pushi.e 172
cmp.i.v EQ
bf [343]

:[342]
pushi.e 24
pop.v.i global.entrance
pushi.e 175
conv.i.v
call.i room_goto(argc=1)
popz.v

:[343]
pushbltn.v builtin.room
pushi.e 190
cmp.i.v EQ
bf [345]

:[344]
pushi.e 23
pop.v.i global.entrance
pushi.e 175
conv.i.v
call.i room_goto(argc=1)
popz.v

:[345]
pushbltn.v builtin.room
pushi.e 175
cmp.i.v EQ
bf [349]

:[346]
push.v self.y
pushi.e 4700
cmp.i.v GT
bf [348]

:[347]
pushi.e 24
pop.v.i global.entrance
pushi.e 172
conv.i.v
call.i room_goto(argc=1)
popz.v
b [349]

:[348]
pushi.e 23
pop.v.i global.entrance
pushi.e 190
conv.i.v
call.i room_goto(argc=1)
popz.v

:[349]
pushbltn.v builtin.room
pushi.e 138
cmp.i.v EQ
bf [353]

:[350]
push.v self.x
pushi.e 0
cmp.i.v LT
bf [352]

:[351]
pushi.e 23
pop.v.i global.entrance
pushi.e 137
conv.i.v
call.i room_goto(argc=1)
popz.v
b [353]

:[352]
pushi.e 22
pop.v.i global.entrance
pushi.e 139
conv.i.v
call.i room_goto(argc=1)
popz.v

:[353]
pushbltn.v builtin.room
pushi.e 137
cmp.i.v EQ
bf [355]

:[354]
pushi.e 23
pop.v.i global.entrance
pushi.e 138
conv.i.v
call.i room_goto(argc=1)
popz.v

:[355]
pushbltn.v builtin.room
pushi.e 106
cmp.i.v EQ
bf [360]

:[356]
push.v self.extflag
push.s "leftExit"@14131
cmp.s.v EQ
bf [358]

:[357]
pushi.e 20
pop.v.i global.entrance
pushi.e 94
conv.i.v
call.i room_goto(argc=1)
popz.v

:[358]
push.v self.extflag
push.s "rightExit"@14132
cmp.s.v EQ
bf [360]

:[359]
pushi.e 20
pop.v.i global.entrance
pushi.e 98
conv.i.v
call.i room_goto(argc=1)
popz.v

:[360]
pushbltn.v builtin.room
pushi.e 98
cmp.i.v EQ
bf [362]

:[361]
pushi.e 23
pop.v.i global.entrance
pushi.e 106
conv.i.v
call.i room_goto(argc=1)
popz.v

:[362]
pushbltn.v builtin.room
pushi.e 100
cmp.i.v EQ
bf [364]

:[363]
pushi.e 24
pop.v.i global.entrance
pushi.e 105
conv.i.v
call.i room_goto(argc=1)
popz.v

:[364]
pushbltn.v builtin.room
pushi.e 213
cmp.i.v EQ
bf [366]

:[365]
pushi.e 23
pop.v.i global.entrance
pushi.e 212
conv.i.v
call.i room_goto(argc=1)
popz.v

:[366]
pushbltn.v builtin.room
pushi.e 214
cmp.i.v EQ
bf [368]

:[367]
pushi.e 22
pop.v.i global.entrance
pushi.e 212
conv.i.v
call.i room_goto(argc=1)
popz.v

:[368]
pushbltn.v builtin.room
pushi.e 215
cmp.i.v EQ
bf [370]

:[369]
pushi.e 20
pop.v.i global.entrance
pushi.e 212
conv.i.v
call.i room_goto(argc=1)
popz.v

:[370]
pushbltn.v builtin.room
pushi.e 212
cmp.i.v EQ
bf [379]

:[371]
push.v self.extflag
push.s "back"@14225
cmp.s.v EQ
bf [373]

:[372]
pushi.e 24
pop.v.i global.entrance
pushi.e 201
conv.i.v
call.i room_goto(argc=1)
popz.v

:[373]
push.v self.extflag
push.s "funny"@14224
cmp.s.v EQ
bf [375]

:[374]
pushi.e 24
pop.v.i global.entrance
pushi.e 213
conv.i.v
call.i room_goto(argc=1)
popz.v

:[375]
push.v self.extflag
push.s "next"@14226
cmp.s.v EQ
bf [377]

:[376]
pushi.e 24
pop.v.i global.entrance
pushi.e 214
conv.i.v
call.i room_goto(argc=1)
popz.v

:[377]
push.v self.extflag
push.s "hands"@14229
cmp.s.v EQ
bf [379]

:[378]
pushi.e 24
pop.v.i global.entrance
pushi.e 215
conv.i.v
call.i room_goto(argc=1)
popz.v

:[379]
pushbltn.v builtin.room
pushi.e 216
cmp.i.v EQ
bf [384]

:[380]
push.v self.extflag
push.s "top"@6226
cmp.s.v EQ
bf [382]

:[381]
pushi.e 21
pop.v.i global.entrance
pushi.e 217
conv.i.v
call.i room_goto(argc=1)
popz.v

:[382]
push.v self.extflag
push.s "bottom"@4636
cmp.s.v EQ
bf [384]

:[383]
pushi.e 21
pop.v.i global.entrance
pushi.e 191
conv.i.v
call.i room_goto(argc=1)
popz.v

:[384]
pushbltn.v builtin.room
pushi.e 204
cmp.i.v EQ
bf [389]

:[385]
push.v self.x
pushi.e 200
cmp.i.v GT
bf [387]

:[386]
pushi.e 20
pop.v.i global.entrance
pushi.e 197
conv.i.v
call.i room_goto(argc=1)
popz.v

:[387]
push.v self.x
pushi.e 500
cmp.i.v GT
bf [389]

:[388]
pushi.e 24
pop.v.i global.entrance
pushi.e 211
conv.i.v
call.i room_goto(argc=1)
popz.v

:[389]
pushbltn.v builtin.room
pushi.e 211
cmp.i.v EQ
bf [391]

:[390]
pushi.e 24
pop.v.i global.entrance
pushi.e 204
conv.i.v
call.i room_goto(argc=1)
popz.v

:[391]
pushbltn.v builtin.room
pushi.e 217
cmp.i.v EQ
bf [398]

:[392]
push.v self.extflag
push.s "topright"@14190
cmp.s.v EQ
bf [394]

:[393]
pushi.e 24
pop.v.i global.entrance
pushi.e 218
conv.i.v
call.i room_goto(argc=1)
popz.v

:[394]
push.v self.extflag
push.s "topleft"@14189
cmp.s.v EQ
bf [396]

:[395]
pushi.e 21
pop.v.i global.entrance
pushi.e 194
conv.i.v
call.i room_goto(argc=1)
popz.v

:[396]
push.v self.extflag
push.s "bottom"@4636
cmp.s.v EQ
bf [398]

:[397]
pushi.e 21
pop.v.i global.entrance
pushi.e 216
conv.i.v
call.i room_goto(argc=1)
popz.v

:[398]
pushbltn.v builtin.room
pushi.e 105
cmp.i.v EQ
bf [400]

:[399]
pushi.e 23
pop.v.i global.entrance
pushi.e 100
conv.i.v
call.i room_goto(argc=1)
popz.v

:[400]
pushbltn.v builtin.room
pushi.e 218
cmp.i.v EQ
bf [end]

:[401]
pushi.e 24
pop.v.i global.entrance
pushi.e 217
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]