.localvar 2 arguments
.localvar 25922 final 13340
.localvar 25923 weirdside 13341
.localvar 22441 rrr 13342
.localvar 26120 heal_buffer 13343
.localvar 107 i 13344
.localvar 11861 _hltarget 13345
.localvar 9183 _xx 13346
.localvar 9185 _yy 13347
.localvar 25293 _cherub 13348
.localvar 26151 dam 13351
.localvar 9912 n 13352
.localvar 6113 small_text 13353
.localvar 7017 a 13354
.localvar 26156 maxv 13355
.localvar 26157 multicut 13356
.localvar 25068 mercyset 13357
.localvar 23076 simultext 13358
.localvar 11610 aa 13359
.localvar 26214 smokey 13363
.localvar 26263 debugstring 13369

:[0]
push.v self.bigshot
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 5
pop.v.i global.sp

:[2]
push.v self.cantspareinit
pushi.e 0
cmp.i.v EQ
bf [5]

:[3]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v GT
bf [5]

:[4]
pushi.e 357
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
push.i 235226
setowner.e
pushi.e 1
conv.i.v
pushi.e 357
pushi.e 0
pop.v.v [array]self.cantspare
pushi.e 1
pop.v.i self.cantspareinit

:[8]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v GT
bf [10]

:[9]
push.i 231526
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod

:[10]
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [end]

:[11]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [550]

:[12]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [16]

:[13]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [16]

:[14]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e 0
cmp.i.v LTE
bf [16]

:[15]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v LTE
b [17]

:[16]
push.e 0

:[17]
bt [22]

:[18]
push.v self.endcon
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v LTE
b [21]

:[20]
push.e 0

:[21]
b [23]

:[22]
push.e 1

:[23]
bf [25]

:[24]
pushi.e -1
pop.v.i self.talked
pushi.e 1
pop.v.i self.endcon

:[25]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e 1
cmp.i.v LTE
bf [27]

:[26]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v GT
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
push.i 231862
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp

:[30]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [34]

:[31]
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
cmp.v.v LTE
bf [34]

:[32]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v GT
bf [34]

:[33]
push.v self.weirdpathendcon
pushi.e 0
cmp.i.v EQ
b [35]

:[34]
push.e 0

:[35]
bt [41]

:[36]
push.v self.talked
pushi.e -1
cmp.i.v EQ
bf [39]

:[37]
push.v self.weirdpathendcon
pushi.e 0
cmp.i.v EQ
bf [39]

:[38]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v GT
b [40]

:[39]
push.e 0

:[40]
b [42]

:[41]
push.e 1

:[42]
bf [47]

:[43]
push.v self.weirdpathendtimer
push.e 1
add.i.v
pop.v.v self.weirdpathendtimer
push.v self.weirdpathendtimer
pushi.e 1
cmp.i.v EQ
bf [45]

:[44]
pushi.e -1
pop.v.i self.talked
pushi.e 99
pop.v.i self.partmode
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.batmusic
call.i gml_Script_mus_volume(argc=3)
popz.v

:[45]
push.v self.weirdpathendtimer
pushi.e 91
cmp.i.v EQ
bf [47]

:[46]
pushi.e 0
pop.v.i self.talked
pushi.e 1
pop.v.i self.weirdpathendcon

:[47]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [49]

:[48]
push.v self.talked
pushi.e 0
cmp.i.v EQ
b [50]

:[49]
push.e 0

:[50]
bf [239]

:[51]
call.i gml_Script_scr_randomtarget(argc=0)
popz.v
pushi.e 363
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [53]

:[52]
pushi.e 363
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[53]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [57]

:[54]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [57]

:[55]
push.v self.turn
pushi.e 14
cmp.i.v GT
bf [57]

:[56]
push.v self.weirdpathendcon
pushi.e 0
cmp.i.v EQ
b [58]

:[57]
push.e 0

:[58]
bf [61]

:[59]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterdf
pushi.e -10
cmp.i.v GT
bf [61]

:[60]
push.i 231910
setowner.e
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]self.monsterdf
pushi.e 3
sub.i.v
pop.i.v [array]self.monsterdf

:[61]
pushi.e 0
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonsubcon
pushi.e 1
pop.v.i self.balloonend
pushi.e 0
pop.v.i self.talkedcon
pushi.e 0
pop.v.i self.statustextupdate
pushi.e 692
pushenv [63]

:[62]
push.v self.turnsleft
pushi.e 1
sub.i.v
pop.v.v self.turnsleft

:[63]
popenv [62]
pushi.e 72
pop.v.i global.typer
pushi.e -1
pop.v.i self.rr
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.attackdebug
pushi.e 0
cmp.i.v GTE
bf [65]

:[64]
push.v self.attackdebug
pop.v.v self.rr

:[65]
push.v self.difficultydebug
pushi.e 0
cmp.i.v GTE
bf [67]

:[66]
push.v self.difficultydebug
pop.v.v self.difficulty

:[67]
push.v self.haveusedfinalattack
pop.v.v local.final
pushi.e 0
pop.v.i local.weirdside
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v GT
bf [69]

:[68]
pushi.e 1
pop.v.i local.weirdside

:[69]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v GT
bf [71]

:[70]
push.v self.weirdpathendcon
pushi.e 0
cmp.i.v GT
b [72]

:[71]
push.e 0

:[72]
bf [86]

:[73]
push.v self.weirdpathendcon
pushi.e 1
cmp.i.v EQ
bf [75]

:[74]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_86_0_b"@25924
conv.s.v
push.s "MY ESTEEM CUSTOMER I&SEE YOU ARE ATTEMPTING&TO DEPLETE MY HP!/%"@25925
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 28
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
pushi.e 2
pop.v.i self.weirdpathendcon
b [85]

:[75]
push.v self.usedact
pushi.e 0
cmp.i.v EQ
bf [77]

:[76]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_87_0_b"@25926
conv.s.v
push.s "ENJOY THE FIREWORKS,&KID!!!!/%"@25927
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
pushi.e 2
pop.v.i self.weirdpathendcon
b [85]

:[77]
push.v self.savemeactcon
pushi.e 2
cmp.i.v EQ
bf [79]

:[78]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_88_0"@25928
conv.s.v
push.s "WHAT!? YOU'RE&CALLING FRIENDS!?/%"@25929
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 35
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
pushi.e 3
pop.v.i self.weirdpathendcon
b [85]

:[79]
push.v self.savemeactcon
pushi.e 3
cmp.i.v EQ
bf [81]

:[80]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_89_0"@25930
conv.s.v
push.s "GO AHEAD AND&[Scream] INTO THE&[Receiver]./%"@25931
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 38
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
pushi.e 4
pop.v.i self.weirdpathendcon
b [85]

:[81]
push.v self.savemeactcon
pushi.e 4
cmp.i.v EQ
bf [83]

:[82]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_90_0"@25932
conv.s.v
push.s "THERE WILL BE NO&MORE [Miracles]&NO MORE [Magic]./%"@25933
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 41
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
pushi.e 5
pop.v.i self.weirdpathendcon
b [85]

:[83]
push.v self.savemeactcon
pushi.e 5
cmp.i.v EQ
bf [85]

:[84]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_91_0"@25934
conv.s.v
push.s "YOU MAKE ME [Sick]!/%"@25935
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 43
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
pushi.e 6
pop.v.i self.weirdpathendcon
pushi.e 10
pop.v.i self.shockthreshold
pushi.e 10
pop.v.i self.hurttimer2
pushi.e 40
pop.v.i self.partmode

:[85]
b [234]

:[86]
pushloc.v local.weirdside
conv.v.b
bf [89]

:[87]
push.v self.balloonorder
pushi.e 10
cmp.i.v LT
bf [89]

:[88]
pushloc.v local.final
conv.v.b
not.b
b [90]

:[89]
push.e 0

:[90]
bf [112]

:[91]
push.v self.balloonorder
pushi.e 0
cmp.i.v EQ
bf [93]

:[92]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_64_0_c"@25936
conv.s.v
push.s "I REMEMBER WHEN&YOU WERE JUST&A LOST [Little Sponge]/%"@25937
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 16
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [111]

:[93]
push.v self.balloonorder
pushi.e 1
cmp.i.v EQ
bf [95]

:[94]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_65_0_b"@25938
conv.s.v
push.s "I GAVE YOU&EVERYTHING I HAD!&MY LIFE&ADVICE!/%"@25939
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 17
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [111]

:[95]
push.v self.balloonorder
pushi.e 2
cmp.i.v EQ
bf [97]

:[96]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_66_0_b"@25940
conv.s.v
push.s "I GAVE YOU MY&[Commemorative Ring]&FOR THE PRICE OF&[My Favorite Year]!/%"@25941
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [111]

:[97]
push.v self.balloonorder
pushi.e 3
cmp.i.v EQ
bf [99]

:[98]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_67_0_b"@25942
conv.s.v
push.s "AND THIS IS HOW&YOU [Repay] ME!?&TREATING ME LIKE&[DLC]!?/%"@25943
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [111]

:[99]
push.v self.balloonorder
pushi.e 4
cmp.i.v EQ
bf [101]

:[100]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_68_0_b"@25944
conv.s.v
push.s "NO, I GET IT!&IT'S YOU AND&THAT [Hochi Mama]!/%"@25945
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 18
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [111]

:[101]
push.v self.balloonorder
pushi.e 5
cmp.i.v EQ
bf [103]

:[102]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_69_0_c"@25946
conv.s.v
push.s "YOU'VE BEEN&MAKING&[Hyperlink Blocked]!/%"@25947
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 19
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [111]

:[103]
push.v self.balloonorder
pushi.e 6
cmp.i.v EQ
bf [105]

:[104]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_70_0_c"@25948
conv.s.v
push.s "I WAS TOO [Trusting]&TOO [Honest]/%"@25949
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 20
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [111]

:[105]
push.v self.balloonorder
pushi.e 7
cmp.i.v EQ
bf [107]

:[106]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_71_0_b"@25950
conv.s.v
push.s "I SHOULD HAVE&KNOWN YOU WOULD&HAVE USED MY [Ring]&FOR [Evil].../%"@25951
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 21
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [111]

:[107]
push.v self.balloonorder
pushi.e 8
cmp.i.v EQ
bf [109]

:[108]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_72_0_b"@25952
conv.s.v
push.s "YOU THINK MAKING&[Frozen Chicken]&WITH YOUR&[Side Chick]/%"@25953
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 22
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [111]

:[109]
push.v self.balloonorder
pushi.e 9
cmp.i.v EQ
bf [111]

:[110]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_73_0_b"@25954
conv.s.v
push.s "WELL, YOU'RE&[$!$!] RIGHT!&BUT DON'T BLAME&ME/%"@25955
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 23
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend

:[111]
push.v self.balloonorder
push.e 1
add.i.v
pop.v.v self.balloonorder
b [234]

:[112]
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [116]

:[113]
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [116]

:[114]
pushloc.v local.weirdside
conv.v.b
not.b
bf [116]

:[115]
pushloc.v local.final
conv.v.b
not.b
b [117]

:[116]
push.e 0

:[117]
bf [119]

:[118]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_56_0"@25956
conv.s.v
push.s "KRIS! ISN'T THIS&[Body] JUST [Heaven]LY!?/%"@25957
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 1
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [234]

:[119]
push.v self.rr
pushi.e 6
cmp.i.v EQ
bf [123]

:[120]
push.v self.difficulty
pushi.e 0
cmp.i.v EQ
bf [123]

:[121]
pushloc.v local.weirdside
conv.v.b
not.b
bf [123]

:[122]
pushloc.v local.final
conv.v.b
not.b
b [124]

:[123]
push.e 0

:[124]
bf [126]

:[125]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_57_0"@25958
conv.s.v
push.s "WE'LL TURN THOSE&[Schmoes] AND [Daves]&INTO [Rosen Graves]/%"@25959
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 2
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [234]

:[126]
push.v self.rr
pushi.e 8
cmp.i.v EQ
bf [130]

:[127]
push.v self.difficulty
pushi.e 0
cmp.i.v EQ
bf [130]

:[128]
pushloc.v local.weirdside
conv.v.b
not.b
bf [130]

:[129]
pushloc.v local.final
conv.v.b
not.b
b [131]

:[130]
push.e 0

:[131]
bf [133]

:[132]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_58_0_b"@25960
conv.s.v
push.s "ALL YOU GOTTA&DO IS [Big]./%"@25961
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 3
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [234]

:[133]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [137]

:[134]
push.v self.difficulty
pushi.e 0
cmp.i.v EQ
bf [137]

:[135]
pushloc.v local.weirdside
conv.v.b
not.b
bf [137]

:[136]
pushloc.v local.final
conv.v.b
not.b
b [138]

:[137]
push.e 0

:[138]
bf [140]

:[139]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_59_0_b"@25962
conv.s.v
push.s "KRIS, DON'T YOU&WANNA BE [Part]&OF MY BEAUTIFUL [Heart]?!/%"@25963
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 4
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [234]

:[140]
push.v self.rr
push.d 8.5
cmp.d.v EQ
bf [144]

:[141]
push.v self.difficulty
pushi.e 0
cmp.i.v EQ
bf [144]

:[142]
pushloc.v local.weirdside
conv.v.b
not.b
bf [144]

:[143]
pushloc.v local.final
conv.v.b
not.b
b [145]

:[144]
push.e 0

:[145]
bf [147]

:[146]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_60_0"@25964
conv.s.v
push.s "IT'S CALLING, KRIS...&MY [Heart]...&MY [Hands].../%"@25965
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [234]

:[147]
push.v self.rr
pushi.e 7
cmp.i.v EQ
bf [151]

:[148]
push.v self.faceattackcount
pushi.e 0
cmp.i.v EQ
bf [151]

:[149]
pushloc.v local.weirdside
conv.v.b
not.b
bf [151]

:[150]
pushloc.v local.final
conv.v.b
not.b
b [152]

:[151]
push.e 0

:[152]
bf [154]

:[153]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_61_0"@25966
conv.s.v
push.s "KRIS!&CAN YOU REALLY&LOOK IN MY [Eyes]&AND SAY NO!?/%"@25967
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 5
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [234]

:[154]
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [158]

:[155]
push.v self.difficulty
pushi.e 3
cmp.i.v EQ
bf [158]

:[156]
pushloc.v local.weirdside
conv.v.b
not.b
bf [158]

:[157]
pushloc.v local.final
conv.v.b
not.b
b [159]

:[158]
push.e 0

:[159]
bf [161]

:[160]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_62_0"@25968
conv.s.v
push.s "KRIS, I'LL EVEN&GIVE YOU A&[Free Value]/%"@25969
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 6
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [234]

:[161]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [165]

:[162]
push.v self.difficulty
pushi.e 2
cmp.i.v EQ
bf [165]

:[163]
pushloc.v local.weirdside
conv.v.b
not.b
bf [165]

:[164]
pushloc.v local.final
conv.v.b
not.b
b [166]

:[165]
push.e 0

:[166]
bf [168]

:[167]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_63_0_b"@25970
conv.s.v
push.s "I CAN'T STAND IT!!!&I THINK I'M GONNA&HAVE A [HeartAttack]!/%"@25971
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [234]

:[168]
push.v self.rr
pushi.e 8
cmp.i.v EQ
bf [172]

:[169]
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [172]

:[170]
pushloc.v local.weirdside
conv.v.b
not.b
bf [172]

:[171]
pushloc.v local.final
conv.v.b
not.b
b [173]

:[172]
push.e 0

:[173]
bf [175]

:[174]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_64_0_b"@25972
conv.s.v
push.s "DON'T YOU&WANNA HELP YOUR&OLD PAL SPAMTON?/%"@25973
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 7
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [234]

:[175]
push.v self.rr
push.d 8.5
cmp.d.v EQ
bf [179]

:[176]
push.v self.difficulty
pushi.e 2
cmp.i.v EQ
bf [179]

:[177]
pushloc.v local.weirdside
conv.v.b
not.b
bf [179]

:[178]
pushloc.v local.final
conv.v.b
not.b
b [180]

:[179]
push.e 0

:[180]
bf [182]

:[181]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_65_0"@25974
conv.s.v
push.s "[Friends]!? KRIS!?&WHAT ARE YOU&TALKING ABOUT!?/%"@25975
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 8
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [234]

:[182]
push.v self.rr
pushi.e 7
cmp.i.v EQ
bf [186]

:[183]
push.v self.faceattackcount
pushi.e 1
cmp.i.v EQ
bf [186]

:[184]
pushloc.v local.weirdside
conv.v.b
not.b
bf [186]

:[185]
pushloc.v local.final
conv.v.b
not.b
b [187]

:[186]
push.e 0

:[187]
bf [189]

:[188]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_66_0"@25976
conv.s.v
push.s "KRIS. IF YOU GIVE&ME THAT [Soul] I&WILL GIVE YOU&EVERYTHING I HAVE./%"@25977
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 10
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [234]

:[189]
push.v self.rr
pushi.e 6
cmp.i.v EQ
bf [193]

:[190]
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [193]

:[191]
pushloc.v local.weirdside
conv.v.b
not.b
bf [193]

:[192]
pushloc.v local.final
conv.v.b
not.b
b [194]

:[193]
push.e 0

:[194]
bf [196]

:[195]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_67_0"@25978
conv.s.v
push.s "BUT KRIS, IF YOU&REFUSE. THAT'S YOUR&CHOICE. I CAN'T&FORCE YOU./%"@25979
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 11
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [234]

:[196]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [200]

:[197]
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [200]

:[198]
pushloc.v local.weirdside
conv.v.b
not.b
bf [200]

:[199]
pushloc.v local.final
conv.v.b
not.b
b [201]

:[200]
push.e 0

:[201]
bf [203]

:[202]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_69_0_b"@25980
conv.s.v
push.s "KRIS!!! TAKE THE&DEAL!!! TAKE IT!!!/%"@25981
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 12
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [234]

:[203]
push.v self.rr
pushi.e 8
cmp.i.v EQ
bf [207]

:[204]
push.v self.difficulty
pushi.e 3
cmp.i.v EQ
bf [207]

:[205]
pushloc.v local.weirdside
conv.v.b
not.b
bf [207]

:[206]
pushloc.v local.final
conv.v.b
not.b
b [208]

:[207]
push.e 0

:[208]
bf [210]

:[209]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_121_0"@25982
conv.s.v
push.s "OR...&DID YOU WANT&TO BE.../%"@25983
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 13
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [234]

:[210]
push.v self.rr
pushi.e 9
cmp.i.v EQ
bf [213]

:[211]
push.v self.finalattackconversationcon
pushi.e 0
cmp.i.v EQ
bf [213]

:[212]
pushloc.v local.weirdside
conv.v.b
not.b
b [214]

:[213]
push.e 0

:[214]
bf [216]

:[215]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_93_0"@25984
conv.s.v
push.s "KRIS...&I WON'T FORCE YOU.&I CAN'T.&I CAN'T FORCE YOU./%"@25985
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 25
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
pushi.e 1
pop.v.i self.finalattackconversationcon
b [234]

:[216]
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v local.rrr
pushloc.v local.rrr
pushi.e 0
cmp.i.v EQ
bf [223]

:[217]
push.v self.statustextalt2
pushi.e 0
cmp.i.v EQ
bf [219]

:[218]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_86_0"@25986
conv.s.v
push.s "CAN A [Little&Sponge] DO THIS?/%"@25987
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 15
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend

:[219]
push.v self.statustextalt2
pushi.e 1
cmp.i.v EQ
bf [221]

:[220]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_87_0"@25988
conv.s.v
push.s "[BreaKing] and&[CracKing]/%"@25989
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 1
pop.v.i self.balloonend

:[221]
push.v self.statustextalt2
push.e 1
add.i.v
pop.v.v self.statustextalt2
push.v self.statustextalt2
pushi.e 1
cmp.i.v GT
bf [223]

:[222]
pushi.e 0
pop.v.i self.statustextalt2

:[223]
pushloc.v local.rrr
pushi.e 1
cmp.i.v EQ
bf [230]

:[224]
push.v self.statustextalt
pushi.e 0
cmp.i.v EQ
bf [226]

:[225]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_58_0"@25990
conv.s.v
push.s "[The Smooth&Taste Of] NEO/%"@25991
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[226]
push.v self.statustextalt
pushi.e 1
cmp.i.v EQ
bf [228]

:[227]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_59_0"@25992
conv.s.v
push.s "THE [@$@!] TASTE&OF SPAMTON/%"@25993
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[228]
push.v self.statustextalt
push.e 1
add.i.v
pop.v.v self.statustextalt
push.v self.statustextalt
pushi.e 1
cmp.i.v GT
bf [230]

:[229]
pushi.e 0
pop.v.i self.statustextalt

:[230]
pushloc.v local.rrr
pushi.e 2
cmp.i.v EQ
bf [232]

:[231]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_63_0"@25994
conv.s.v
push.s "DON'T YOU&WANNA BE A&BIG SHOT?/%"@25995
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[232]
pushloc.v local.rrr
pushi.e 3
cmp.i.v EQ
bf [234]

:[233]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_64_0"@25996
conv.s.v
push.s "[Clown]!? NO!!!&I FEEL SICK!!!/%"@25997
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[234]
pushi.e 0
pop.v.i self.usedact
push.v self.correct_answer
pushi.e 1
cmp.i.v NEQ
bf [236]

:[235]
pushi.e 72
pop.v.i global.typer
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
push.v self.x
pushi.e 10
sub.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v

:[236]
pushi.e -1
pop.v.i self.correct_answer
push.v self.ballooncon
pushi.e 0
cmp.i.v EQ
bf [238]

:[237]
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer
b [239]

:[238]
push.d 0.6
pop.v.d self.talked
pushi.e 0
pop.v.i self.talktimer

:[239]
push.v self.talked
push.d 0.6
cmp.d.v EQ
bf [340]

:[240]
push.v self.talktimer
push.e 1
add.i.v
pop.v.v self.talktimer
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [242]

:[241]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
b [243]

:[242]
push.e 0

:[243]
bt [245]

:[244]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [246]

:[245]
push.e 1

:[246]
bf [340]

:[247]
pushi.e 64
pushenv [249]

:[248]
call.i instance_destroy(argc=0)
popz.v

:[249]
popenv [248]
push.v self.ballooncon
pushi.e 1
cmp.i.v EQ
bf [251]

:[250]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_136_0"@25998
conv.s.v
push.s "3X THE [Fire]POWER.&2X THE [Water]POWER.&AND BEST OF ALL,&FLYING [Heads]!/%"@25999
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [335]

:[251]
push.v self.ballooncon
pushi.e 2
cmp.i.v EQ
bf [253]

:[252]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_137_0"@26000
conv.s.v
push.s "THOSE [Cathode Screens]&INTO [Cathode Screams]/%"@26001
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [335]

:[253]
push.v self.ballooncon
pushi.e 3
cmp.i.v EQ
bf [255]

:[254]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_138_0"@26002
conv.s.v
push.s "THEN WE'LL BE&THE ONES MAKING&THE [Calls], KRIS!/%"@26003
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [335]

:[255]
push.v self.ballooncon
pushi.e 4
cmp.i.v EQ
bf [257]

:[256]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_139_0"@26004
conv.s.v
push.s "OR... DID YOU NEED&A LITTLE&[Specil Tour]?/%"@26005
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [335]

:[257]
push.v self.ballooncon
pushi.e 5
cmp.i.v EQ
bf [259]

:[258]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_140_0"@26006
conv.s.v
push.s "LOOK IN MY [Eyes]&LOOK IN MY [Nose]&LOOK IN MY [Mouth]/%"@26007
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [335]

:[259]
push.v self.ballooncon
pushi.e 6
cmp.i.v EQ
bf [261]

:[260]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_141_0"@26008
conv.s.v
push.s "[Die Now] AND I'LL&THROW IN [50]&[Bullets] FOR FREE!/%"@26009
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [335]

:[261]
push.v self.ballooncon
pushi.e 7
cmp.i.v EQ
bf [263]

:[262]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_142_0"@26010
conv.s.v
push.s "KRIS!! THINK!!&WHAT ARE MY&[Eggs] GOING TO DO!?/%"@26011
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [335]

:[263]
push.v self.ballooncon
pushi.e 8
cmp.i.v EQ
bf [265]

:[264]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_143_0"@26012
conv.s.v
push.s "YOU DON'T NEED [Friends]!!/%"@26013
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 9
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [335]

:[265]
push.v self.ballooncon
pushi.e 9
cmp.i.v EQ
bf [267]

:[266]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_144_0"@26014
conv.s.v
push.s "I CAN MAKE MY&HANDS INTO&PHONES!!!/%"@26015
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [335]

:[267]
push.v self.ballooncon
pushi.e 10
cmp.i.v EQ
bf [269]

:[268]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_145_0"@26016
conv.s.v
push.s "I WILL GIVE YOU&[3 Easy Payments&of $9.99!]/%"@26017
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [335]

:[269]
push.v self.ballooncon
pushi.e 11
cmp.i.v EQ
bf [271]

:[270]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_146_0"@26018
conv.s.v
push.s "I CAN ONLY [Kill]&YOU [50-percent faster&than similar products]&OR [No Money Back!]/%"@26019
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [335]

:[271]
push.v self.ballooncon
pushi.e 12
cmp.i.v EQ
bf [273]

:[272]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_147_0"@26020
conv.s.v
push.s "DO YOU WANNA BE&A [Heart] ON A [Chain]&YOUR WHOLE LIFE!?/%"@26021
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [335]

:[273]
push.v self.ballooncon
pushi.e 13
cmp.i.v EQ
bf [275]

:[274]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_163_0"@26022
conv.s.v
push.s "Did you wanna&be.../%"@26023
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [335]

:[275]
push.v self.ballooncon
pushi.e 15
cmp.i.v EQ
bf [277]

:[276]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_173_0"@26024
conv.s.v
push.s "GO [Ga-Ga]&AND [Die]/%"@26025
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [335]

:[277]
push.v self.ballooncon
pushi.e 16
cmp.i.v EQ
bf [279]

:[278]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_174_0"@26026
conv.s.v
push.s "SLEEPING AT&THE BOTTOM OF&A DUMPSTER!/%"@26027
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [335]

:[279]
push.v self.ballooncon
pushi.e 17
cmp.i.v EQ
bf [281]

:[280]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_175_0"@26028
conv.s.v
push.s "I TOLD YOU&[4 Left]&AND ASKED YOU&[Buy] OR [Don't Buy]!/%"@26029
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [335]

:[281]
push.v self.ballooncon
pushi.e 18
cmp.i.v EQ
bf [283]

:[282]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_176_0"@26030
conv.s.v
push.s "YOU'VE BEEN&[Making],&HAVEN'T YOU!/%"@26031
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [335]

:[283]
push.v self.ballooncon
pushi.e 19
cmp.i.v EQ
bf [285]

:[284]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_177_0"@26032
conv.s.v
push.s "AND NOW THAT&YOU HAVE YOUR&OWN SUPPLY,&YOU DON'T NEED ME!!!/%"@26033
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [335]

:[285]
push.v self.ballooncon
pushi.e 20
cmp.i.v EQ
bf [287]

:[286]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_178_0"@26034
conv.s.v
push.s "I'VE ALWAYS BEEN&A MAN OF THE [PIPIS].&A REAL [PIPIS]&PERSON!/%"@26035
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [335]

:[287]
push.v self.ballooncon
pushi.e 21
cmp.i.v EQ
bf [289]

:[288]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_179_0"@26036
conv.s.v
push.s "OH, [Right].&THAT'S WHY I SOLD&IT TO YOU/%"@26037
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [335]

:[289]
push.v self.ballooncon
pushi.e 22
cmp.i.v EQ
bf [291]

:[290]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_180_0"@26038
conv.s.v
push.s "IS GONNA LET&YOU DRINK UP&THAT [Sweet, Sweet]&[Freedom Sauce]?/%"@26039
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [335]

:[291]
push.v self.ballooncon
pushi.e 23
cmp.i.v EQ
bf [293]

:[292]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_181_0"@26040
conv.s.v
push.s "WHEN YOU'RE [Crying]&IN A [Broken Home]&WISHING YOU LET&YOUR OLD PAL&SPAMTON/%"@26041
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 24
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [335]

:[293]
push.v self.ballooncon
pushi.e 24
cmp.i.v EQ
bf [295]

:[294]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_182_0"@26042
conv.s.v
push.s "[Kill You]/%"@26043
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [335]

:[295]
push.v self.ballooncon
pushi.e 25
cmp.i.v EQ
bf [297]

:[296]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_207_0"@26044
conv.s.v
push.s "BUT JUST LOOK, KRIS.&LOOK AT THE [Power of&NEO] AND ASK YOURSELF.../%"@26045
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 26
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [335]

:[297]
push.v self.ballooncon
pushi.e 26
cmp.i.v EQ
bf [299]

:[298]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_208_0"@26046
conv.s.v
push.s "WELL, DON'T YOU?/%"@26047
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 27
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [335]

:[299]
push.v self.ballooncon
pushi.e 27
cmp.i.v EQ
bf [301]

:[300]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_209_0"@26048
conv.s.v
push.s "DON'T YOU WANNA&BE A [Big Shot]!?/%"@26049
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [335]

:[301]
push.v self.ballooncon
pushi.e 28
cmp.i.v EQ
bf [303]

:[302]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_211_0"@26050
conv.s.v
push.s "I'LL ADMIT YOU'VE&GOT SOME [Guts]&KID!/%"@26051
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 29
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [335]

:[303]
push.v self.ballooncon
pushi.e 29
cmp.i.v EQ
bf [305]

:[304]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_212_0"@26052
conv.s.v
push.s "BUT IN A [1 for 1]&BATTLE,  NEO&NEVER LOSES!!!/%"@26053
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 30
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [335]

:[305]
push.v self.ballooncon
pushi.e 30
cmp.i.v EQ
bf [307]

:[306]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_213_0"@26054
conv.s.v
push.s "IT'S TIME FOR A&LITTLE [Bluelight Specil]/%"@26055
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 31
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [335]

:[307]
push.v self.ballooncon
pushi.e 31
cmp.i.v EQ
bf [309]

:[308]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_214_0"@26056
conv.s.v
push.s "* Spamton Neo's ATTACK dropped!&* Spamton Neo's DEFENSE rose greatly!/%"@26057
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 32
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
pushi.e 1
pop.v.i self.specialcon
pushi.e 154
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [335]

:[309]
push.v self.ballooncon
pushi.e 32
cmp.i.v EQ
bf [311]

:[310]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_217_0"@26058
conv.s.v
push.s "DIDN'T YOU KNOW&[Neo] IS FAMOUS FOR&ITS HIGH DEFENSE!?/%"@26059
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 33
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
pushi.e 1
pop.v.i self.partmode
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_free(argc=1)
popz.v
push.i 231459
setowner.e
push.s "spamton_neo_meeting.ogg"@14408
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_play(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop(argc=1)
popz.v
push.d 1.8
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_snd_pitch(argc=2)
popz.v
b [335]

:[311]
push.v self.ballooncon
pushi.e 33
cmp.i.v EQ
bf [313]

:[312]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_225_0"@26060
conv.s.v
push.s "NOW... ENJ0Y THE&FIR3WORKS, KID!!!/%"@26061
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
pushi.e 1
pop.v.i self.savemeactcon
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
b [335]

:[313]
push.v self.ballooncon
pushi.e 35
cmp.i.v EQ
bf [315]

:[314]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_227_0"@26062
conv.s.v
push.s "YOU THINK YOU&CAN BEAT ME WITH&YOUR FRIENDS' [Magic]!?/%"@26063
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 36
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [335]

:[315]
push.v self.ballooncon
pushi.e 36
cmp.i.v EQ
bf [317]

:[316]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_228_0"@26064
conv.s.v
push.s "GO AHEAD, [Kid]...&CALL ALL YOU WANT!/%"@26065
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 37
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [335]

:[317]
push.v self.ballooncon
pushi.e 37
cmp.i.v EQ
bf [319]

:[318]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_229_0"@26066
conv.s.v
push.s "NO ONE WILL&EVER PICK UP/%"@26067
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [335]

:[319]
push.v self.ballooncon
pushi.e 38
cmp.i.v EQ
bf [321]

:[320]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_231_0"@26068
conv.s.v
push.s "THE [Voice] RUNS&OUT EVENTUALLY/%"@26069
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 39
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [335]

:[321]
push.v self.ballooncon
pushi.e 39
cmp.i.v EQ
bf [323]

:[322]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_232_0"@26070
conv.s.v
push.s "YOUR [Voice]&THEIR [Voice]/%"@26071
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 40
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [335]

:[323]
push.v self.ballooncon
pushi.e 40
cmp.i.v EQ
bf [325]

:[324]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_233_0"@26072
conv.s.v
push.s "UNTIL YOU REALIZE&YOU ARE ALL ALONE/%"@26073
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [335]

:[325]
push.v self.ballooncon
pushi.e 41
cmp.i.v EQ
bf [327]

:[326]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_235_0"@26074
conv.s.v
push.s "YOU LOST IT WHEN&YOU TRIED TO SEE&TOO FAR..../%"@26075
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 42
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [335]

:[327]
push.v self.ballooncon
pushi.e 42
cmp.i.v EQ
bf [329]

:[328]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_236_0"@26076
conv.s.v
push.s "... YOU LOST IT.../%"@26077
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [335]

:[329]
push.v self.ballooncon
pushi.e 43
cmp.i.v EQ
bf [331]

:[330]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_238_0"@26078
conv.s.v
push.s "MUTTERING YOUR&[Lost Friends] NAMES&AT THE BOTTOM OF&A [Dumpster]!/%"@26079
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 44
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
pushi.e 40
pop.v.i self.partmode
b [335]

:[331]
push.v self.ballooncon
pushi.e 44
cmp.i.v EQ
bf [333]

:[332]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_239_0"@26080
conv.s.v
push.s "NO ONE'S GONNA&HELP YOU!!!/%"@26081
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 45
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [335]

:[333]
push.v self.ballooncon
pushi.e 45
cmp.i.v EQ
bf [335]

:[334]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_240_0"@26082
conv.s.v
push.s "GET THAT THROUGH&YOUR [Beautiful Head],&YOU LITTLE [Worm]!/%"@26083
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
pushi.e 7
pop.v.i self.weirdpathendcon

:[335]
push.d 0.7
pop.v.d self.talked
pushi.e 0
pop.v.i self.talktimer
push.v self.correct_answer
pushi.e 1
cmp.i.v NEQ
bf [339]

:[336]
push.v self.ballooncon
pushi.e 32
cmp.i.v EQ
bf [338]

:[337]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
b [339]

:[338]
pushi.e 72
pop.v.i global.typer
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
push.v self.x
pushi.e 10
sub.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v

:[339]
pushi.e -1
pop.v.i self.correct_answer
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.alarm

:[340]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [343]

:[341]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [343]

:[342]
pushi.e 59
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [344]

:[343]
push.e 0

:[344]
bf [408]

:[345]
push.v self.talktimer
push.e 1
add.i.v
pop.v.v self.talktimer
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [347]

:[346]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
b [348]

:[347]
push.e 0

:[348]
bt [350]

:[349]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [351]

:[350]
push.e 1

:[351]
bf [355]

:[352]
pushi.e 64
pushenv [354]

:[353]
call.i instance_destroy(argc=0)
popz.v

:[354]
popenv [353]
pushi.e 1
pop.v.i self.talkedcon

:[355]
push.v self.talkedcon
pushi.e 1
cmp.i.v EQ
bf [408]

:[356]
push.v self.partmode
pushi.e 40
cmp.i.v EQ
bf [358]

:[357]
pushi.e 1
pop.v.i self.partmode
pushi.e 0
pop.v.i self.shockthreshold
pushi.e 0
pop.v.i self.hurttimer2

:[358]
pushi.e 0
pop.v.i self.rtimer
pushi.e 591
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [360]

:[359]
pushi.e -1
conv.i.v
call.i gml_Script_scr_blconskip(argc=1)
popz.v
b [361]

:[360]
push.v self.talktimer
pushi.e 1
add.i.v
pop.v.v self.talktimer

:[361]
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [408]

:[362]
push.v self.attackdebug
pushi.e 0
cmp.i.v GTE
bf [364]

:[363]
push.v self.attackdebug
pop.v.v self.rr

:[364]
push.v self.difficultydebug
pushi.e 0
cmp.i.v GTE
bf [366]

:[365]
push.v self.difficultydebug
pop.v.v self.difficulty

:[366]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [403]

:[367]
pushi.e 872
conv.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 170
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 245
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [374]

:[368]
push.v 872.x
pushi.e 54
add.i.v
pop.v.v 872.x
push.d 3.2
pop.v.d 872.maxxscale
push.d 1.5
pop.v.d 872.maxyscale
pushi.e 0
pop.v.i self.chargesfxtimer
pushi.e 0
pop.v.i self.dance_timer
pushi.e -80
pop.v.i self.armaim
push.v self.difficulty
pushi.e 3
cmp.i.v EQ
bf [374]

:[369]
call.i gml_Script_scr_rememberxy(argc=0)
popz.v
pushi.e 8
conv.i.v
push.v self.y
push.v self.x
pushi.e 50
add.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v
pushi.e 688
pushenv [371]

:[370]
pushi.e 1
pop.v.i self.hide

:[371]
popenv [370]
pushi.e 689
pushenv [373]

:[372]
pushi.e 1
pop.v.i self.hide

:[373]
popenv [372]

:[374]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [376]

:[375]
push.v 872.x
pushi.e 44
add.i.v
pop.v.v 872.x
push.v 872.y
pushi.e 54
add.i.v
pop.v.v 872.y
pushi.e 2
pop.v.i 872.maxxscale
pushi.e 2
pop.v.i 872.maxyscale

:[376]
push.v self.rr
pushi.e 5
cmp.i.v EQ
bf [382]

:[377]
call.i gml_Script_scr_rememberxy(argc=0)
popz.v
pushi.e 8
conv.i.v
push.v self.y
push.v self.x
pushi.e 200
add.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v
pushi.e 688
pushenv [379]

:[378]
pushi.e 1
pop.v.i self.hide

:[379]
popenv [378]
pushi.e 689
pushenv [381]

:[380]
pushi.e 1
pop.v.i self.hide

:[381]
popenv [380]

:[382]
push.v self.rr
pushi.e 7
cmp.i.v EQ
bf [384]

:[383]
push.v 872.x
pushi.e 15
add.i.v
pop.v.v 872.x
pushi.e 2
pop.v.i 872.maxxscale
pushi.e 2
pop.v.i 872.maxyscale
call.i gml_Script_scr_rememberxy(argc=0)
popz.v
b [403]

:[384]
push.v self.rr
pushi.e 8
cmp.i.v EQ
bf [390]

:[385]
call.i gml_Script_scr_rememberxy(argc=0)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 20
add.i.v
push.v self.x
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v
pushi.e 688
pushenv [387]

:[386]
pushi.e 1
pop.v.i self.hide

:[387]
popenv [386]
pushi.e 689
pushenv [389]

:[388]
pushi.e 1
pop.v.i self.hide

:[389]
popenv [388]
b [403]

:[390]
push.v self.rr
push.d 8.5
cmp.d.v EQ
bt [392]

:[391]
push.v self.rr
pushi.e 4
cmp.i.v EQ
b [393]

:[392]
push.e 1

:[393]
bf [395]

:[394]
push.v 872.x
pushi.e 64
add.i.v
pop.v.v 872.x
push.v 872.y
pushi.e 8
add.i.v
pop.v.v 872.y
push.d 3.2
pop.v.d 872.maxxscale
push.d 1.5
pop.v.d 872.maxyscale
b [403]

:[395]
push.v self.rr
pushi.e 6
cmp.i.v EQ
bf [401]

:[396]
push.v 872.x
pushi.e 58
add.i.v
pop.v.v 872.x
push.d 3.3333333333333335
pop.v.d 872.maxxscale
push.d 2.3
pop.v.d 872.maxyscale
call.i gml_Script_scr_rememberxy(argc=0)
popz.v
pushi.e 16
conv.i.v
push.v self.y
push.v self.x
pushi.e 200
add.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v
pushi.e 688
pushenv [398]

:[397]
pushi.e 1
pop.v.i self.hide

:[398]
popenv [397]
pushi.e 689
pushenv [400]

:[399]
pushi.e 1
pop.v.i self.hide

:[400]
popenv [399]
b [403]

:[401]
push.v self.rr
pushi.e 9
cmp.i.v EQ
bf [403]

:[402]
push.v 872.y
pushi.e 10
add.i.v
pop.v.v 872.y
push.d 1.9
pop.v.d 872.maxyscale
push.d 2.5
pop.v.d 872.maxxscale

:[403]
pushi.e 379
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [405]

:[404]
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [406]

:[405]
push.e 0

:[406]
bf [408]

:[407]
call.i gml_Script_scr_moveheart(argc=0)
popz.v

:[408]
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [410]

:[409]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [411]

:[410]
push.e 0

:[411]
bf [473]

:[412]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 15
cmp.i.v EQ
bf [472]

:[413]
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [415]

:[414]
push.i 231869
setowner.e
push.s "FlyingHeads"@26084
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e 698
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bulletspawner(argc=3)
pop.v.v self.dc
pushi.e 0
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
b [443]

:[415]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [417]

:[416]
push.i 231869
setowner.e
push.s "FootballPipis"@25610
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e 698
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bulletspawner(argc=3)
pop.v.v self.dc
pushi.e 1
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
b [443]

:[417]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [419]

:[418]
push.i 231869
setowner.e
push.s "HeartAttackNeo"@26085
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e 698
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bulletspawner(argc=3)
pop.v.v self.dc
push.d 1.5
push.v self.dc
pushi.e -9
pop.v.d [stacktop]self.type
push.v self.hellmode
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.special
b [443]

:[419]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [421]

:[420]
push.i 231869
setowner.e
push.s "FootballPipis"@25610
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e 698
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bulletspawner(argc=3)
pop.v.v self.dc
pushi.e 1
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
b [443]

:[421]
push.v self.rr
pushi.e 4
cmp.i.v EQ
bf [423]

:[422]
push.i 231869
setowner.e
push.s "Phonehands"@26086
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e 698
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bulletspawner(argc=3)
pop.v.v self.dc
push.d 8.5
push.v self.dc
pushi.e -9
pop.v.d [stacktop]self.type
b [443]

:[423]
push.v self.rr
pushi.e 5
cmp.i.v EQ
bf [425]

:[424]
push.i 231869
setowner.e
push.s "PipisExplosion"@14804
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e 390
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bulletspawner(argc=3)
pop.v.v self.dc
pushi.e 51
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
pushi.e 3
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.damage
pushi.e 35
pushi.e 30
conv.i.v
call.i random(argc=1)
sub.v.i
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.btimer
b [443]

:[425]
push.v self.rr
pushi.e 6
cmp.i.v EQ
bf [427]

:[426]
push.i 231869
setowner.e
push.s "RECREWColumns"@26087
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e 698
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bulletspawner(argc=3)
pop.v.v self.dc
pushi.e 6
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
b [443]

:[427]
push.v self.rr
pushi.e 7
cmp.i.v EQ
bf [429]

:[428]
push.i 231869
setowner.e
push.s "SneoFaceAttack"@26088
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e 698
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bulletspawner(argc=3)
pop.v.v self.dc
pushi.e 12
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
push.v self.hellmode
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.special
push.v self.faceattackcount
push.e 1
add.i.v
pop.v.v self.faceattackcount
b [443]

:[429]
push.v self.rr
pushi.e 8
cmp.i.v EQ
bf [436]

:[430]
push.i 231869
setowner.e
push.s "Phonecall"@26089
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e 624
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 10
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dc
pushi.e 1
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.isattack
push.v self.mytarget
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.difficulty
pushi.e 3
cmp.i.v EQ
bf [432]

:[431]
pushi.e 2
pop.v.i self.phoneevent
b [435]

:[432]
push.v self.phoneevent
pushi.e 1
cmp.i.v GTE
bf [434]

:[433]
pushi.e 1
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.skipintro

:[434]
push.v self.phoneevent
push.e 1
add.i.v
pop.v.v self.phoneevent

:[435]
b [443]

:[436]
push.v self.rr
push.d 8.5
cmp.d.v EQ
bf [438]

:[437]
push.i 231869
setowner.e
push.s "Phonehands"@26086
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e 698
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bulletspawner(argc=3)
pop.v.v self.dc
push.d 8.5
push.v self.dc
pushi.e -9
pop.v.d [stacktop]self.type
b [443]

:[438]
push.v self.rr
pushi.e 9
cmp.i.v EQ
bf [440]

:[439]
push.i 231869
setowner.e
push.s "NeoFinale"@26090
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e 698
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bulletspawner(argc=3)
pop.v.v self.dc
pushi.e 9
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
pushi.e 3
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.target
b [443]

:[440]
push.v self.rr
pushi.e 10
cmp.i.v EQ
bf [442]

:[441]
push.i 231869
setowner.e
push.s "diamonds"@26091
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e 390
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bulletspawner(argc=3)
pop.v.v self.dc
pushi.e 1
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
pushi.e 3
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.target
push.i 171306
setowner.e
pushi.e 3
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partframe
b [443]

:[442]
push.i 231869
setowner.e
push.s "UnspecifiedSneoAttack"@25825
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e 698
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bulletspawner(argc=3)
pop.v.v self.dc
push.v self.rr
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.type

:[443]
push.s "yellow"@10317
conv.s.v
call.i gml_Script_scr_heartcolor(argc=1)
popz.v
pushglb.v global.sp
pop.v.v 631.wspeed
pushi.e 260
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [445]

:[444]
pushi.e 300
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[445]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [447]

:[446]
pushi.e 750
push.v self.hellmode
pushi.e 450
mul.i.v
add.v.i
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[447]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [449]

:[448]
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
b [450]

:[449]
push.e 0

:[450]
bf [452]

:[451]
pushi.e 850
push.v self.hellmode
pushi.e 450
mul.i.v
add.v.i
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[452]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [454]

:[453]
push.v self.difficulty
pushi.e 6
cmp.i.v EQ
b [455]

:[454]
push.e 0

:[455]
bf [457]

:[456]
pushi.e 150
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[457]
push.v self.rr
pushi.e 6
cmp.i.v EQ
bf [459]

:[458]
pushi.e 330
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[459]
push.v self.rr
pushi.e 7
cmp.i.v EQ
bf [461]

:[460]
pushi.e 300
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[461]
push.v self.rr
pushi.e 5
cmp.i.v EQ
bf [463]

:[462]
pushi.e 90
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[463]
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [465]

:[464]
push.i 231921
setowner.e
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_294_0"@26092
conv.s.v
push.s "* The stage lights are shattered."@26093
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[465]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [467]

:[466]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_295_0"@26094
conv.s.v
push.s "* It pulls the strings and makes them ring."@26095
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[467]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [469]

:[468]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_296_0"@26096
conv.s.v
push.s "* The air crackles with freedom."@26097
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[469]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [471]

:[470]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_297_0"@26098
conv.s.v
push.s "* Smells like rotten glass."@26099
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[471]
pushi.e 1
pop.v.i self.attacked
b [473]

:[472]
pushi.e 120
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[473]
pushi.e 380
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [475]

:[474]
push.v self.statustextupdate
pushi.e 0
cmp.i.v EQ
b [476]

:[475]
push.e 0

:[476]
bf [510]

:[477]
pushi.e 1
pop.v.i self.statustextupdate
push.v self.weirdpathendcon
pushi.e 0
cmp.i.v GT
bf [482]

:[478]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstermaxhp
push.d 0.06
mul.d.v
cmp.v.v LT
bf [480]

:[479]
push.i 231921
setowner.e
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_526_0"@26100
conv.s.v
push.s "* Spamton NEO recovered HP with Pipis!"@26101
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
push.i 231862
setowner.e
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstermaxhp
push.d 0.06
mul.d.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
b [481]

:[480]
push.i 231921
setowner.e
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_527_0"@26102
conv.s.v
push.s "* Spamton NEO's DEFENSE is towering."@26103
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[481]
b [510]

:[482]
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
bf [484]

:[483]
push.v self.haveusedfinalattack
pushi.e 0
cmp.i.v EQ
b [485]

:[484]
push.e 0

:[485]
bf [487]

:[486]
push.i 231921
setowner.e
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_312_0"@26104
conv.s.v
push.s "* Spamton looks to the heavens."@26105
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [510]

:[487]
push.v self.bigshot
pushi.e 1
cmp.i.v EQ
bf [490]

:[488]
push.v self.bigshotused
pushi.e 0
cmp.i.v EQ
bf [490]

:[489]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstermaxhp
push.d 0.7
mul.d.v
cmp.v.v GT
b [491]

:[490]
push.e 0

:[491]
bf [493]

:[492]
push.i 231921
setowner.e
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_313_0"@26106
conv.s.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
push.s "* Hold and release ~1 to fire a BIG SHOT!"@26107
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [510]

:[493]
push.v self.bigshot
pushi.e 1
cmp.i.v EQ
bf [495]

:[494]
push.v self.bigshotused
pushi.e 1
cmp.i.v EQ
b [496]

:[495]
push.e 0

:[496]
bf [510]

:[497]
push.v self.statustextorder
pushi.e 0
cmp.i.v EQ
bf [499]

:[498]
push.i 231921
setowner.e
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_316_0"@26108
conv.s.v
push.s "* Spamton turns to the audience and laughs."@26109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[499]
push.v self.statustextorder
pushi.e 1
cmp.i.v EQ
bf [501]

:[500]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_317_0"@26110
conv.s.v
push.s "* Spamton appeals to the audience with a festive jig!"@26111
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[501]
push.v self.statustextorder
pushi.e 2
cmp.i.v EQ
bf [503]

:[502]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_318_0"@26112
conv.s.v
push.s "* Spamton begs to the audience, Spamton prays to the audience."@26113
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[503]
push.v self.statustextorder
pushi.e 3
cmp.i.v EQ
bf [505]

:[504]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_319_0"@26114
conv.s.v
push.s "* There is no audience."@26115
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[505]
push.v self.statustextorder
pushi.e 6
cmp.i.v EQ
bf [507]

:[506]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_320_0"@26116
conv.s.v
push.s "* Spamton begs the audience to stop taking the furniture out of his room."@26117
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[507]
push.v self.statustextorder
pushi.e 9
cmp.i.v EQ
bf [509]

:[508]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_321_0"@26118
conv.s.v
push.s "* Spamton feels the sweet breeze as he takes a ride around town."@26119
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[509]
push.v self.statustextorder
push.e 1
add.i.v
pop.v.v self.statustextorder

:[510]
pushi.e 112
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [514]

:[511]
push.i 32780
conv.i.v
pushi.e 0
conv.i.v
call.i gamepad_button_check_pressed(argc=2)
conv.v.b
bt [514]

:[512]
push.i 32780
conv.i.v
pushi.e 1
conv.i.v
call.i gamepad_button_check_pressed(argc=2)
conv.v.b
bt [514]

:[513]
push.i 32780
conv.i.v
pushi.e 2
conv.i.v
call.i gamepad_button_check_pressed(argc=2)
conv.v.b
b [515]

:[514]
push.e 1

:[515]
bf [521]

:[516]
push.v self.party_heal
pushi.e 0
cmp.b.v EQ
bf [521]

:[517]
push.s "menu"@6386
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bt [519]

:[518]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
b [520]

:[519]
push.e 1

:[520]
b [522]

:[521]
push.e 0

:[522]
bf [550]

:[523]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [525]

:[524]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
b [526]

:[525]
push.e 0

:[526]
bf [530]

:[527]
push.v self.talkmax
pop.v.v self.talktimer
pushi.e 64
pushenv [529]

:[528]
call.i instance_destroy(argc=0)
popz.v

:[529]
popenv [528]

:[530]
pushi.e 0
pop.v.i local.heal_buffer
pushi.e 0
pop.v.i local.i

:[531]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [549]

:[532]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.char
pushi.e 0
cmp.i.v EQ
bf [534]

:[533]
b [548]

:[534]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.charinstance
pop.v.v local._hltarget
pushi.e 16
pop.v.i local._xx
pushi.e -38
pop.v.i local._yy
pushloc.v local.i
pushi.e 1
cmp.i.v EQ
bf [536]

:[535]
pushi.e 34
pop.v.i local._xx
pushi.e -32
pop.v.i local._yy
b [538]

:[536]
pushloc.v local.i
pushi.e 2
cmp.i.v EQ
bf [538]

:[537]
pushi.e 34
pop.v.i local._xx
pushi.e -20
pop.v.i local._yy

:[538]
pushi.e 591
conv.i.v
pushloc.v local._hltarget
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._yy
add.v.v
pushloc.v local._hltarget
pushi.e -9
push.v [stacktop]self.x
pushloc.v local._xx
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local._cherub
pushloc.v local.i
pushi.e 0
cmp.i.v EQ
bf [540]

:[539]
pushi.e -5
pushi.e 1
push.v [array]self.char
pushi.e 0
cmp.i.v EQ
b [541]

:[540]
push.e 0

:[541]
bf [543]

:[542]
pushi.e 1
pushloc.v local._cherub
pushi.e -9
pop.v.b [stacktop]self.healer
b [548]

:[543]
push.v self.party_heal
pushloc.v local._cherub
pushi.e -9
pop.v.v [stacktop]self.heal_state
pushi.e -5
pushloc.v local.i
mul.v.i
pushloc.v local._cherub
pushi.e -9
pop.v.v [stacktop]self.timer
pushloc.v local.i
pushloc.v local._cherub
pushi.e -9
pop.v.v [stacktop]self.target
pushloc.v local.i
pushi.e 2
cmp.i.v EQ
bt [545]

:[544]
pushi.e -5
pushloc.v local.i
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.char
pushi.e 0
cmp.i.v EQ
b [546]

:[545]
push.e 1

:[546]
bf [548]

:[547]
pushi.e 1
pushloc.v local._cherub
pushi.e -9
pop.v.b [stacktop]self.healer

:[548]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [531]

:[549]
pushi.e 1
pop.v.b self.party_heal

:[550]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [926]

:[551]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.yy
push.v self.acting
pushi.e 1
cmp.i.v EQ
bf [554]

:[552]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
bf [554]

:[553]
push.v self.savemeactcon
pushi.e 0
cmp.i.v EQ
b [555]

:[554]
push.e 0

:[555]
bf [560]

:[556]
pushi.e 1
pop.v.i self.actcon
push.v self.checkcount
pushi.e 0
cmp.i.v EQ
bf [558]

:[557]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_375_0"@26121
conv.s.v
push.s "* SPAMTON NEO - YOU WON'T FIND HIGHER ATTACK AND DEFENSE ANYWHERE ELSE!!!/"@26122
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_376_0"@26123
conv.s.v
push.s "* THE SMOOTH TASTE OF NEO \"WAKE UP AND TASTE THE \\cRPAIN\\cW\"./%"@26124
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_377_0"@26125
conv.s.v
push.s "* [[note: pain is in red.]] ./%"@26126
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [559]

:[558]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_381_0"@26127
conv.s.v
push.s "* Spamton Neo - He is his own worst invention./%"@26128
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[559]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
push.v self.checkcount
push.e 1
add.i.v
pop.v.v self.checkcount

:[560]
push.v self.acting
pushi.e 1
cmp.i.v EQ
bf [563]

:[561]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
bf [563]

:[562]
push.v self.savemeactcon
pushi.e 0
cmp.i.v GT
b [564]

:[563]
push.e 0

:[564]
bf [569]

:[565]
pushi.e 1
pop.v.i self.actcon
push.v self.savemeactcon
pushi.e 5
cmp.i.v LT
bf [567]

:[566]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_617_0"@26129
conv.s.v
push.s "* Kris called for help.../"@26130
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_618_0"@26131
conv.s.v
push.s "* ... but nobody came./%"@26132
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
b [568]

:[567]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_623_0"@26133
conv.s.v
push.s "* You whispered Noelle's name.../%"@26134
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 0
pop.v.i self.talktimer
pushi.e 95
pop.v.i self.actcon
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[568]
push.v self.savemeactcon
push.e 1
add.i.v
pop.v.v self.savemeactcon

:[569]
push.v self.actcon
pushi.e 96
cmp.i.v EQ
bf [571]

:[570]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [572]

:[571]
push.e 0

:[572]
bf [581]

:[573]
push.v self.talktimer
push.e 1
add.i.v
pop.v.v self.talktimer
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [575]

:[574]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
b [576]

:[575]
push.e 0

:[576]
bt [578]

:[577]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [579]

:[578]
push.e 1

:[579]
bf [581]

:[580]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_637_0"@26135
conv.s.v
push.s "... HER?/%"@26136
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 72
pop.v.i global.typer
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
push.v self.x
pushi.e 10
sub.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v
pushi.e 0
pop.v.i self.talktimer
pushi.e 97
pop.v.i self.actcon
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[581]
push.v self.actcon
pushi.e 98
cmp.i.v EQ
bf [583]

:[582]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [584]

:[583]
push.e 0

:[584]
bf [593]

:[585]
push.v self.talktimer
push.e 1
add.i.v
pop.v.v self.talktimer
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [587]

:[586]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
b [588]

:[587]
push.e 0

:[588]
bt [590]

:[589]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [591]

:[590]
push.e 1

:[591]
bf [593]

:[592]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_651_0"@26137
conv.s.v
push.s "YOU'RE STILL TRYING&TO [Use] HER!?/%"@26138
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 72
pop.v.i global.typer
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
push.v self.x
pushi.e 10
sub.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v
pushi.e 99
pop.v.i self.actcon
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[593]
push.v self.actcon
pushi.e 100
cmp.i.v EQ
bf [595]

:[594]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [596]

:[595]
push.e 0

:[596]
bf [605]

:[597]
push.v self.talktimer
push.e 1
add.i.v
pop.v.v self.talktimer
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [599]

:[598]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
b [600]

:[599]
push.e 0

:[600]
bt [602]

:[601]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [603]

:[602]
push.e 1

:[603]
bf [605]

:[604]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_667_0"@26139
conv.s.v
push.s "HA HA HA HA!!!/%"@26140
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 72
pop.v.i global.typer
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
push.v self.x
pushi.e 10
sub.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v
pushi.e 249
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.laughtimer
pushi.e 0
pop.v.i self.talktimer
pushi.e 101
pop.v.i self.actcon
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[605]
push.v self.actcon
pushi.e 102
cmp.i.v EQ
bf [607]

:[606]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [608]

:[607]
push.e 0

:[608]
bf [619]

:[609]
push.v self.talktimer
push.e 1
add.i.v
pop.v.v self.talktimer
push.v self.talktimer
pushi.e 10
cmp.i.v EQ
bf [611]

:[610]
pushi.e 249
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v

:[611]
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [613]

:[612]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
b [614]

:[613]
push.e 0

:[614]
bt [616]

:[615]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [617]

:[616]
push.e 1

:[617]
bf [619]

:[618]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_685_0"@26141
conv.s.v
push.s "YOU THINK SHE CAN&[Hear] YOU NOW,&MUTTERING HER NAME!?/%"@26142
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 72
pop.v.i global.typer
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
push.v self.x
pushi.e 10
sub.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v
pushi.e 249
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v
pushi.e 1
pop.v.i self.partmode
pushi.e 0
pop.v.i self.talktimer
pushi.e 103
pop.v.i self.actcon
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[619]
push.v self.actcon
pushi.e 104
cmp.i.v EQ
bf [621]

:[620]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [622]

:[621]
push.e 0

:[622]
bf [631]

:[623]
push.v self.talktimer
push.e 1
add.i.v
pop.v.v self.talktimer
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [625]

:[624]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
b [626]

:[625]
push.e 0

:[626]
bt [628]

:[627]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [629]

:[628]
push.e 1

:[629]
bf [631]

:[630]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_701_0"@26143
conv.s.v
push.s "WHAT'S SHE GONNA&DO, MAKE ME AN&[Ice Cream]!?/%"@26144
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 72
pop.v.i global.typer
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
push.v self.x
pushi.e 10
sub.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v
pushi.e 0
pop.v.i self.talktimer
pushi.e 105
pop.v.i self.actcon
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[631]
push.v self.actcon
pushi.e 106
cmp.i.v EQ
bf [633]

:[632]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [634]

:[633]
push.e 0

:[634]
bf [643]

:[635]
push.v self.talktimer
push.e 1
add.i.v
pop.v.v self.talktimer
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [637]

:[636]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
b [638]

:[637]
push.e 0

:[638]
bt [640]

:[639]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [641]

:[640]
push.e 1

:[641]
bf [643]

:[642]
pushi.e 41
pop.v.i self.partmode
pushi.e 107
pop.v.i self.actcon
pushi.e 0
pop.v.i self.laughtimer
pushi.e 120
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_snd_free(argc=1)
popz.v

:[643]
push.v self.actcon
pushi.e 107
cmp.i.v EQ
bf [645]

:[644]
pushi.e -1
pushi.e 4
push.v [array]self.alarm
pushi.e 62
cmp.i.v LT
b [646]

:[645]
push.e 0

:[646]
bf [648]

:[647]
pushi.e 2
pop.v.i self.headforceframe
push.i 171262
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partrot
pushi.e 99
pop.v.i self.partmode
pushi.e 249
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v

:[648]
push.v self.actcon
pushi.e 108
cmp.i.v EQ
bf [650]

:[649]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [651]

:[650]
push.e 0

:[651]
bf [660]

:[652]
push.v self.talktimer
push.e 1
add.i.v
pop.v.v self.talktimer
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [654]

:[653]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
b [655]

:[654]
push.e 0

:[655]
bt [657]

:[656]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [658]

:[657]
push.e 1

:[658]
bf [660]

:[659]
pushi.e 99
pop.v.i self.partmode
pushi.e 2
pop.v.i self.headforceframe
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_739_0"@26145
conv.s.v
push.s "HEY, IS IT COLD&IN HERE OR IS IT&JUST ME?/%"@26146
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 72
pop.v.i global.typer
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
push.v self.x
pushi.e 10
sub.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v
pushi.e 0
pop.v.i self.talktimer
pushi.e 109
pop.v.i self.actcon
push.i 68097
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[660]
push.v self.actcon
pushi.e 110
cmp.i.v EQ
bf [673]

:[661]
push.v self.talktimer
push.e 1
add.i.v
pop.v.v self.talktimer
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [663]

:[662]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
b [664]

:[663]
push.e 0

:[664]
bt [666]

:[665]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [667]

:[666]
push.e 1

:[667]
bf [673]

:[668]
pushi.e 111
pop.v.i self.actcon
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 64
pushenv [670]

:[669]
call.i instance_destroy(argc=0)
popz.v

:[670]
popenv [669]
pushi.e 21
pushenv [672]

:[671]
pushi.e 2533
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.blackall
pushi.e 999
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 999
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 1
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 0
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_blend
push.i -99999
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.depth

:[672]
popenv [671]
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[673]
push.v self.actcon
pushi.e 112
cmp.i.v EQ
bf [675]

:[674]
pushi.e 113
pop.v.i self.actcon
pushi.e 252
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 12
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[675]
push.v self.actcon
pushi.e 114
cmp.i.v EQ
bf [677]

:[676]
pushi.e 115
pop.v.i self.actcon
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 873
conv.i.v
push.v self.y
pushi.e 62
add.i.v
push.v self.x
pushi.e 64
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dmgwriter
pushi.e 684
pushi.e 20
conv.i.v
call.i irandom(argc=1)
add.v.i
push.v self.dmgwriter
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 6
push.v self.dmgwriter
pushi.e -9
pop.v.i [stacktop]self.type
push.i -999999
push.v self.dmgwriter
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 3
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[677]
push.v self.actcon
pushi.e 116
cmp.i.v EQ
bf [679]

:[678]
pushi.e 117
pop.v.i self.actcon
pushi.e 167
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 873
conv.i.v
push.v self.y
pushi.e 90
add.i.v
push.v self.x
pushi.e 84
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dmgwriter
pushi.e 684
pushi.e 20
conv.i.v
call.i irandom(argc=1)
add.v.i
push.v self.dmgwriter
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 6
push.v self.dmgwriter
pushi.e -9
pop.v.i [stacktop]self.type
push.i -999999
push.v self.dmgwriter
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 3
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[679]
push.v self.actcon
pushi.e 118
cmp.i.v EQ
bf [681]

:[680]
pushi.e 119
pop.v.i self.actcon
pushi.e 167
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 873
conv.i.v
push.v self.y
pushi.e 119
add.i.v
push.v self.x
pushi.e 66
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dmgwriter
pushi.e 684
pushi.e 20
conv.i.v
call.i irandom(argc=1)
add.v.i
push.v self.dmgwriter
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 6
push.v self.dmgwriter
pushi.e -9
pop.v.i [stacktop]self.type
push.i -999999
push.v self.dmgwriter
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[681]
push.v self.actcon
pushi.e 120
cmp.i.v EQ
bf [687]

:[682]
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 1
pop.v.i 357.skipvictory
pushi.e 0
pop.v.i global.fighting
pushi.e 21
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [684]

:[683]
pushi.e 1
pop.v.i 21.forcend

:[684]
pushi.e 21
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [686]

:[685]
pushi.e 21
pop.v.i 21.con

:[686]
call.i gml_Script_scr_wincombat(argc=0)
popz.v

:[687]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v GT
bf [709]

:[688]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [690]

:[689]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [691]

:[690]
push.e 0

:[691]
bf [693]

:[692]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_531_0"@26147
conv.s.v
push.s "* Kris used X-Slash!/%"@26148
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 0
pop.v.i self.acting
pushi.e 21
pop.v.i self.actcon
pushi.e 1
conv.i.v
push.d 0.25
conv.d.v
pushi.e 1419
conv.i.v
push.s "kris"@68
conv.s.v
call.i gml_Script_scr_act_charsprite(argc=4)
pop.v.v self.krs
push.v 372.depth
pushi.e 1
add.i.v
push.v self.krs
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 14
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 224
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.d 1.2
conv.d.v
pushi.e 224
conv.i.v
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e 356
conv.i.v
push.v self.y
pushi.e 76
add.i.v
push.v self.x
pushi.e 57
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.att
pushi.e 2
push.v self.att
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.att
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
pop.v.i self.caster
push.i 231593
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.hittarget
pushi.e 40
pop.v.i self.partmode
pushi.e 15
pop.v.i self.shockthreshold
pushi.e 9999
pop.v.i self.shocktimer
pushi.e 10
pop.v.i self.hurttimer2
pushi.e -5
push.v 372.myself
conv.v.i
push.v [array]self.battleat
pushi.e 150
mul.i.v
pushi.e 20
conv.i.d
div.d.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterdf
pushi.e 3
mul.i.v
sub.v.v
push.d 1.25
mul.d.v
call.i round(argc=1)
pop.v.v local.dam
pushloc.v local.dam
pushi.e 0
conv.i.v
call.i gml_Script_scr_damage_enemy(argc=2)
popz.v

:[693]
push.v self.actcon
pushi.e 22
cmp.i.v EQ
bf [695]

:[694]
pushi.e 23
pop.v.i self.actcon
call.i gml_Script_scr_act_charsprite_end(argc=0)
popz.v
pushi.e 1
conv.i.v
push.d 0.25
conv.d.v
pushi.e 1419
conv.i.v
push.s "kris"@68
conv.s.v
call.i gml_Script_scr_act_charsprite(argc=4)
pop.v.v self.krs
push.v 372.depth
pushi.e 1
add.i.v
push.v self.krs
pushi.e -9
pop.v.v [stacktop]self.depth
push.i 68097
setowner.e
pushi.e 14
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 224
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.d 0.8
conv.d.v
pushi.e 224
conv.i.v
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e 356
conv.i.v
push.v self.y
pushi.e 76
add.i.v
push.v self.x
pushi.e 57
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.att
pushi.e -2
push.v self.att
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.att
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
pop.v.i self.caster
push.i 231593
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 11
pop.v.v [array]self.hittarget
pushi.e 40
pop.v.i self.partmode
pushi.e 15
pop.v.i self.shockthreshold
pushi.e 9999
pop.v.i self.shocktimer
pushi.e 10
pop.v.i self.hurttimer2
pushi.e -5
push.v 372.myself
conv.v.i
push.v [array]self.battleat
pushi.e 150
mul.i.v
pushi.e 20
conv.i.d
div.d.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterdf
pushi.e 3
mul.i.v
sub.v.v
push.d 1.25
mul.d.v
call.i round(argc=1)
pop.v.v local.dam
pushloc.v local.dam
pushi.e 0
conv.i.v
call.i gml_Script_scr_damage_enemy(argc=2)
popz.v

:[695]
push.v self.actcon
pushi.e 24
cmp.i.v EQ
bf [697]

:[696]
call.i gml_Script_scr_act_charsprite_end(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[697]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [699]

:[698]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [700]

:[699]
push.e 0

:[700]
bf [702]

:[701]
pushi.e 5555
conv.i.v
pushi.e 42
conv.i.v
call.i irandom_range(argc=2)
pop.v.v local.n
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_928_0"@26152
conv.s.v
push.s " Liked this!"@26153
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.small_text
push.s ""@157
push.i 65536
setowner.e
pushloc.v local.n
call.i @@NewGMLArray@@(argc=1)
call.i string(argc=1)
add.v.s
pushloc.v local.small_text
add.v.v
call.i string(argc=1)
push.s "bottom"@4636
conv.s.v
push.s "rightmid"@6225
conv.s.v
pushi.e 6
conv.i.v
push.s "none"@562
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_581_0"@26154
conv.s.v
push.s "* RECOVERED HP with pipis!\\f0 /%"@26155
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 0
pop.v.i self.acting
pushi.e 31
pop.v.i self.actcon
pushi.e 0
conv.i.v
push.v 372.y
pushi.e 50
add.i.v
push.v 372.x
pushi.e 105
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[702]
push.v self.actcon
pushi.e 31
cmp.i.v EQ
bf [705]

:[703]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [705]

:[704]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [706]

:[705]
push.e 0

:[706]
bf [708]

:[707]
pushi.e 1
pop.v.i self.actcon

:[708]
b [777]

:[709]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [711]

:[710]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [712]

:[711]
push.e 0

:[712]
bt [717]

:[713]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [715]

:[714]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [716]

:[715]
push.e 0

:[716]
b [718]

:[717]
push.e 1

:[718]
bf [772]

:[719]
pushi.e 0
pop.v.i local.a
pushi.e 0
pop.v.i local.maxv
pushi.e 0
pop.v.i local.i

:[720]
pushloc.v local.i
pushi.e 6
cmp.i.v LT
bf [729]

:[721]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partvisible
pushi.e 1
cmp.i.v EQ
bf [723]

:[722]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partweakened
pushi.e 0
cmp.i.v GT
b [724]

:[723]
push.e 0

:[724]
bf [726]

:[725]
push.v local.a
push.e 1
add.i.v
pop.v.v local.a

:[726]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partvisible
pushi.e 1
cmp.i.v EQ
bf [728]

:[727]
push.v local.maxv
push.e 1
add.i.v
pop.v.v local.maxv

:[728]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [720]

:[729]
push.v self.vinebgcount
pushi.e 1
cmp.i.v LT
bf [731]

:[730]
pushloc.v local.maxv
pop.v.v self.maxvinecount

:[731]
pushi.e 1
pop.v.i local.multicut
pushi.e -5
pushi.e 2
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
bf [734]

:[732]
pushi.e -5
pushi.e 3
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
bf [734]

:[733]
push.v self.acting
pushi.e 2
cmp.i.v EQ
b [735]

:[734]
push.e 0

:[735]
bf [745]

:[736]
pushi.e 4
pop.v.i local.mercyset
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushloc.v local.mercyset
add.v.v
pushi.e 100
cmp.i.v GT
bf [738]

:[737]
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
sub.v.i
pop.v.v local.mercyset

:[738]
pushloc.v local.mercyset
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
pushloc.v local.mercyset
pushi.e 0
cmp.i.v EQ
bf [743]

:[739]
pushi.e 873
pushenv [742]

:[740]
push.v self.type
pushi.e 5
cmp.i.v EQ
bf [742]

:[741]
call.i instance_destroy(argc=0)
popz.v

:[742]
popenv [740]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_946_0"@26158
conv.s.v
push.s "* You tried to snap a wire... but it failed!/%"@26159
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [744]

:[743]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_949_0"@26160
conv.s.v
push.s "* You snapped desperately!/"@26161
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_950_0"@26162
conv.s.v
push.s "* Broke 2 wires!/%"@26163
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[744]
pushi.e 2
pop.v.i local.multicut
b [768]

:[745]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [757]

:[746]
push.v self.snapallcount
push.e 1
add.i.v
pop.v.v self.snapallcount
push.v self.snapallcount
pushi.e 2
cmp.i.v EQ
bf [748]

:[747]
pushi.e 0
pop.v.i self.snapallcount

:[748]
pushi.e 7
pop.v.i local.mercyset
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushloc.v local.mercyset
add.v.v
pushi.e 100
cmp.i.v GT
bf [750]

:[749]
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
sub.v.i
pop.v.v local.mercyset

:[750]
pushloc.v local.mercyset
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
pushloc.v local.mercyset
pushi.e 0
cmp.i.v EQ
bf [755]

:[751]
pushi.e 873
pushenv [754]

:[752]
push.v self.type
pushi.e 5
cmp.i.v EQ
bf [754]

:[753]
call.i instance_destroy(argc=0)
popz.v

:[754]
popenv [752]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_961_0"@26164
conv.s.v
push.s "* Everyone tried to snap wires... but it failed!/%"@26165
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [756]

:[755]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_964_0"@26166
conv.s.v
push.s "* Everyone snapped wires!/%"@26167
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[756]
b [768]

:[757]
push.v self.simultotal
pushi.e 1
cmp.i.v EQ
bf [759]

:[758]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_275_0"@26168
conv.s.v
push.s "* You snapped a wire!/%"@26169
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
b [760]

:[759]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_275_1"@26170
conv.s.v
push.s "* You snapped a wire!/%"@26169
conv.s.v
call.i gml_Script_stringsetloc(argc=2)

:[760]
pop.v.v local.simultext
pushi.e 2
pop.v.i local.mercyset
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushloc.v local.mercyset
add.v.v
pushi.e 100
cmp.i.v GT
bf [762]

:[761]
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
sub.v.i
pop.v.v local.mercyset

:[762]
pushloc.v local.mercyset
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
pushloc.v local.mercyset
pushi.e 0
cmp.i.v EQ
bf [767]

:[763]
pushi.e 873
pushenv [766]

:[764]
push.v self.type
pushi.e 5
cmp.i.v EQ
bf [766]

:[765]
call.i instance_destroy(argc=0)
popz.v

:[766]
popenv [764]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_973_0"@26171
conv.s.v
push.s "* You tried to snap a wire... but it failed!/%"@26159
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [768]

:[767]
pushloc.v local.simultext
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v

:[768]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [770]

:[769]
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
b [771]

:[770]
pushi.e 1
pop.v.i self.actcon

:[771]
pushi.e 0
pop.v.i self.acting

:[772]
push.v self.acting
pushi.e 5
cmp.i.v EQ
bf [774]

:[773]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [775]

:[774]
push.e 0

:[775]
bf [777]

:[776]
pushi.e 12
pop.v.i self.actcon
pushi.e 0
pop.v.i self.acting
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 691
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
call.i gml_Script_scr_rememberxy(argc=0)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 195
add.i.v
push.v self.x
pushi.e 40
sub.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[777]
push.v self.actcon
pushi.e 13
cmp.i.v EQ
bf [783]

:[778]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_534_0"@26172
conv.s.v
pushi.e 6
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
push.s "* Press ~1 to throw, aim for the weakpoint!"@24069
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
pushi.e 372
pushenv [780]

:[779]
pushi.e 0
pop.v.i self.visible

:[780]
popenv [779]
pushi.e 373
pushenv [782]

:[781]
pushi.e 0
pop.v.i self.visible

:[782]
popenv [781]
pushi.e 685
conv.i.v
push.v 373.y
push.v 373.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.throwsus
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 14
pop.v.i self.actcon

:[783]
push.v self.actcon
pushi.e 15
cmp.i.v EQ
bf [787]

:[784]
pushi.e 691
pushenv [786]

:[785]
pushi.e 2
pop.v.i self.con

:[786]
popenv [785]
pushi.e 8
conv.i.v
call.i gml_Script_scr_move_to_rememberxy(argc=1)
popz.v
pushi.e 16
pop.v.i self.actcon
push.i 68097
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[787]
push.v self.actcon
pushi.e 17
cmp.i.v EQ
bf [789]

:[788]
pushi.e 1
pop.v.i self.actcon

:[789]
push.v self.actingsus
pushi.e 1
cmp.i.v EQ
bf [791]

:[790]
push.v self.actconsus
pushi.e 1
cmp.i.v EQ
b [792]

:[791]
push.e 0

:[792]
bf [828]

:[793]
pushi.e 5
conv.i.v
call.i irandom(argc=1)
pop.v.v local.i
pushi.e -1
pop.v.i local.a
pushi.e 0
pop.v.i local.maxv
pushi.e 6
dup.i 0
push.i 0
cmp.i.i LTE
bt [804]

:[794]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partvisible
pushi.e 1
cmp.i.v EQ
bf [796]

:[795]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partweakened
pushi.e 0
cmp.i.v GT
b [797]

:[796]
push.e 0

:[797]
bf [799]

:[798]
pushloc.v local.i
pop.v.v local.a
b [804]

:[799]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
pushloc.v local.i
pushi.e 5
cmp.i.v GT
bf [801]

:[800]
pushi.e 0
pop.v.i local.i

:[801]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partvisible
pushi.e 1
cmp.i.v EQ
bf [803]

:[802]
push.v local.maxv
push.e 1
add.i.v
pop.v.v local.maxv

:[803]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [794]

:[804]
popz.i
push.v self.vinebgcount
pushi.e 1
cmp.i.v LT
bf [806]

:[805]
pushloc.v local.maxv
pop.v.v self.maxvinecount

:[806]
pushi.e 1
pop.v.i local.multicut
pushi.e -5
pushi.e 1
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
bf [808]

:[807]
pushi.e -5
pushi.e 3
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
b [809]

:[808]
push.e 0

:[809]
bf [819]

:[810]
pushi.e 4
pop.v.i local.mercyset
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushloc.v local.mercyset
add.v.v
pushi.e 100
cmp.i.v GT
bf [812]

:[811]
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
sub.v.i
pop.v.v local.mercyset

:[812]
pushloc.v local.mercyset
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
pushloc.v local.mercyset
pushi.e 0
cmp.i.v EQ
bf [817]

:[813]
pushi.e 873
pushenv [816]

:[814]
push.v self.type
pushi.e 5
cmp.i.v EQ
bf [816]

:[815]
call.i instance_destroy(argc=0)
popz.v

:[816]
popenv [814]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_1127_0"@26173
conv.s.v
push.s "* Susie tried to snap a wire... but it failed!/%"@26174
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [818]

:[817]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_1130_0"@26175
conv.s.v
push.s "* Susie snapped desperately!/"@26176
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_1131_0"@26177
conv.s.v
push.s "* Broke 2 wires!/%"@26163
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[818]
pushi.e 2
pop.v.i local.multicut
b [827]

:[819]
pushi.e 2
pop.v.i local.mercyset
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushloc.v local.mercyset
add.v.v
pushi.e 100
cmp.i.v GT
bf [821]

:[820]
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
sub.v.i
pop.v.v local.mercyset

:[821]
pushloc.v local.mercyset
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
pushloc.v local.mercyset
pushi.e 0
cmp.i.v EQ
bf [826]

:[822]
pushi.e 873
pushenv [825]

:[823]
push.v self.type
pushi.e 5
cmp.i.v EQ
bf [825]

:[824]
call.i instance_destroy(argc=0)
popz.v

:[825]
popenv [823]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_1140_0"@26178
conv.s.v
push.s "* Susie tried to snap a wire... but it failed!/%"@26174
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [827]

:[826]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_1141_0"@26179
conv.s.v
push.s "* Susie snapped a wire!/%"@26180
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[827]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 0
pop.v.i self.actconsus
pushi.e 0
pop.v.i self.actingsus
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[828]
push.v self.actingsus
pushi.e 2
cmp.i.v EQ
bf [830]

:[829]
push.v self.actconsus
pushi.e 1
cmp.i.v EQ
b [831]

:[830]
push.e 0

:[831]
bf [833]

:[832]
pushi.e 0
pop.v.i self.actingsus
pushi.e 1
pop.v.i self.actcon
pushi.e 20
pop.v.i self.bigshotcount
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_898_0"@26181
conv.s.v
push.s "* You Super Charged! Can charge bullets faster! Lasts 20 shots./%"@26182
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[833]
push.v self.actingral
pushi.e 1
cmp.i.v EQ
bf [835]

:[834]
push.v self.actconral
pushi.e 1
cmp.i.v EQ
b [836]

:[835]
push.e 0

:[836]
bf [872]

:[837]
pushi.e 5
conv.i.v
call.i irandom(argc=1)
pop.v.v local.i
pushi.e -1
pop.v.i local.a
pushi.e 0
pop.v.i local.maxv
pushi.e 6
dup.i 0
push.i 0
cmp.i.i LTE
bt [848]

:[838]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partvisible
pushi.e 1
cmp.i.v EQ
bf [840]

:[839]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partweakened
pushi.e 0
cmp.i.v GT
b [841]

:[840]
push.e 0

:[841]
bf [843]

:[842]
pushloc.v local.i
pop.v.v local.a
b [848]

:[843]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
pushloc.v local.i
pushi.e 5
cmp.i.v GT
bf [845]

:[844]
pushi.e 0
pop.v.i local.i

:[845]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.partvisible
pushi.e 1
cmp.i.v EQ
bf [847]

:[846]
push.v local.maxv
push.e 1
add.i.v
pop.v.v local.maxv

:[847]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [838]

:[848]
popz.i
push.v self.vinebgcount
pushi.e 1
cmp.i.v LT
bf [850]

:[849]
pushloc.v local.maxv
pop.v.v self.maxvinecount

:[850]
pushi.e 1
pop.v.i local.multicut
pushi.e -5
pushi.e 1
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
bf [852]

:[851]
pushi.e -5
pushi.e 2
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
b [853]

:[852]
push.e 0

:[853]
bf [863]

:[854]
pushi.e 2
pop.v.i local.multicut
pushi.e 4
pop.v.i local.mercyset
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushloc.v local.mercyset
add.v.v
pushi.e 100
cmp.i.v GT
bf [856]

:[855]
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
sub.v.i
pop.v.v local.mercyset

:[856]
pushloc.v local.mercyset
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
pushloc.v local.mercyset
pushi.e 0
cmp.i.v EQ
bf [861]

:[857]
pushi.e 873
pushenv [860]

:[858]
push.v self.type
pushi.e 5
cmp.i.v EQ
bf [860]

:[859]
call.i instance_destroy(argc=0)
popz.v

:[860]
popenv [858]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_1273_0"@26183
conv.s.v
push.s "* Ralsei tried to snap a wire... but it failed!/%"@26184
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [862]

:[861]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_1276_0"@26185
conv.s.v
push.s "* Ralsei snapped desperately!/"@26186
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_1277_0"@26187
conv.s.v
push.s "* Broke 2 wires!/%"@26163
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[862]
b [871]

:[863]
pushi.e 2
pop.v.i local.mercyset
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushloc.v local.mercyset
add.v.v
pushi.e 100
cmp.i.v GT
bf [865]

:[864]
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
sub.v.i
pop.v.v local.mercyset

:[865]
pushloc.v local.mercyset
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
pushloc.v local.mercyset
pushi.e 0
cmp.i.v EQ
bf [870]

:[866]
pushi.e 873
pushenv [869]

:[867]
push.v self.type
pushi.e 5
cmp.i.v EQ
bf [869]

:[868]
call.i instance_destroy(argc=0)
popz.v

:[869]
popenv [867]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_1285_0"@26188
conv.s.v
push.s "* Ralsei tried to snap a wire... but it failed!/%"@26184
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [871]

:[870]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_1288_0"@26189
conv.s.v
push.s "* Ralsei snapped a wire!/%"@26190
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[871]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 0
pop.v.i self.actconral
pushi.e 0
pop.v.i self.actingral
pushi.e 1
pop.v.i self.actcon

:[872]
push.v self.actingral
pushi.e 2
cmp.i.v EQ
bf [874]

:[873]
push.v self.actconral
pushi.e 1
cmp.i.v EQ
b [875]

:[874]
push.e 0

:[875]
bf [911]

:[876]
pushi.e 0
pop.v.i self.actconral
pushi.e 0
pop.v.i self.actingral
pushi.e 1
pop.v.i self.actcon
pushi.e 634
conv.i.v
call.i instance_number(argc=1)
pushi.e 4
cmp.i.v LT
bf [898]

:[877]
push.v self.simultotal
pushi.e 1
cmp.i.v EQ
bf [879]

:[878]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_643_0"@26191
conv.s.v
push.s "* The power Ralsei's fluffy warmth surrounds you!./%"@26192
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
b [880]

:[879]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_643_1"@26193
conv.s.v
push.s "* Ralsei defended you!/%"@26194
conv.s.v
call.i gml_Script_stringsetloc(argc=2)

:[880]
pop.v.v local.simultext
pushloc.v local.simultext
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 0
pop.v.i local.aa
pushi.e 0
pop.v.i local.i

:[881]
pushloc.v local.i
pushi.e 634
conv.i.v
call.i instance_number(argc=1)
cmp.v.v LT
bf [883]

:[882]
push.i 171613
setowner.e
pushloc.v local.i
pushi.e 634
conv.i.v
call.i instance_find(argc=2)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.fluff
push.i 233205
setowner.e
pushloc.v local.aa
pushi.e 90
mul.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.fluff
pushi.e -9
pop.v.v [stacktop]self.place
push.v local.aa
push.e 1
add.i.v
pop.v.v local.aa
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [881]

:[883]
pushi.e 2
dup.i 0
push.i 0
cmp.i.i LTE
bt [897]

:[884]
pushi.e 634
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i local.a
pushi.e 634
conv.i.v
call.i instance_number(argc=1)
pushi.e 4
cmp.i.v EQ
bf [888]

:[885]
pushi.e 0
pop.v.i local.i

:[886]
pushloc.v local.i
pushi.e 634
conv.i.v
call.i instance_number(argc=1)
cmp.v.v LT
bf [888]

:[887]
push.i 170297
setowner.e
pushloc.v local.i
pushi.e 634
conv.i.v
call.i instance_find(argc=2)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.enemy
push.i 233205
setowner.e
pushloc.v local.a
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.enemy
pushi.e -9
pop.v.v [stacktop]self.place
push.v local.a
pushi.e 90
add.i.v
pop.v.v local.a
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [886]

:[888]
pushi.e 634
conv.i.v
call.i instance_number(argc=1)
pushi.e 3
cmp.i.v EQ
bf [892]

:[889]
pushi.e 0
pop.v.i local.i

:[890]
pushloc.v local.i
pushi.e 634
conv.i.v
call.i instance_number(argc=1)
cmp.v.v LT
bf [892]

:[891]
push.i 170297
setowner.e
pushloc.v local.i
pushi.e 634
conv.i.v
call.i instance_find(argc=2)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.enemy
push.i 233205
setowner.e
pushloc.v local.a
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.enemy
pushi.e -9
pop.v.v [stacktop]self.place
push.v local.a
pushi.e 180
add.i.v
pop.v.v local.a
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [890]

:[892]
pushi.e 634
conv.i.v
call.i instance_number(argc=1)
pushi.e 2
cmp.i.v EQ
bf [896]

:[893]
pushi.e 0
pop.v.i local.i

:[894]
pushloc.v local.i
pushi.e 634
conv.i.v
call.i instance_number(argc=1)
cmp.v.v LT
bf [896]

:[895]
push.i 170297
setowner.e
pushloc.v local.i
pushi.e 634
conv.i.v
call.i instance_find(argc=2)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.enemy
push.i 233205
setowner.e
pushloc.v local.a
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.enemy
pushi.e -9
pop.v.v [stacktop]self.place
push.v local.a
pushi.e 270
add.i.v
pop.v.v local.a
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [894]

:[896]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [884]

:[897]
popz.i
b [911]

:[898]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_679_0"@26196
conv.s.v
push.s "* Too many fluff balls!&* Can't make any more!/%"@26197
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 2
pop.v.i local.a
pushi.e -5
pushi.e 2
push.v [array]self.hp
pushi.e -5
pushi.e 3
push.v [array]self.hp
cmp.v.v LT
bf [900]

:[899]
pushi.e 2
pop.v.i local.a

:[900]
pushi.e -5
pushi.e 2
push.v [array]self.hp
pushi.e -5
pushi.e 4
push.v [array]self.hp
cmp.v.v LT
bf [902]

:[901]
pushi.e 2
pop.v.i local.a

:[902]
pushi.e -5
pushi.e 3
push.v [array]self.hp
pushi.e -5
pushi.e 2
push.v [array]self.hp
cmp.v.v LT
bf [904]

:[903]
pushi.e 3
pop.v.i local.a

:[904]
pushi.e -5
pushi.e 3
push.v [array]self.hp
pushi.e -5
pushi.e 4
push.v [array]self.hp
cmp.v.v LT
bf [906]

:[905]
pushi.e 3
pop.v.i local.a

:[906]
pushi.e -5
pushi.e 4
push.v [array]self.hp
pushi.e -5
pushi.e 2
push.v [array]self.hp
cmp.v.v LT
bf [908]

:[907]
pushi.e 4
pop.v.i local.a

:[908]
pushi.e -5
pushi.e 4
push.v [array]self.hp
pushi.e -5
pushi.e 3
push.v [array]self.hp
cmp.v.v LT
bf [910]

:[909]
pushi.e 4
pop.v.i local.a

:[910]
push.i 231131
setowner.e
pushi.e -5
pushloc.v local.a
conv.v.i
dup.i 1
push.v [array]self.hp
pushi.e 10
add.i.v
pop.i.v [array]self.hp
pushi.e 151
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[911]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [913]

:[912]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [914]

:[913]
push.e 0

:[914]
bt [917]

:[915]
push.v self.actconsus
pushi.e 20
cmp.i.v EQ
bt [917]

:[916]
push.v self.actconral
pushi.e 20
cmp.i.v EQ
b [918]

:[917]
push.e 1

:[918]
bf [926]

:[919]
pushi.e 1
pop.v.i self.usedact
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e 99
cmp.i.v GT
bf [921]

:[920]
push.v self.endcon
pushi.e 0
cmp.i.v EQ
b [922]

:[921]
push.e 0

:[922]
bf [924]

:[923]
pushi.e 1
pop.v.i self.endcon
b [926]

:[924]
push.v self.endcon
pushi.e 0
cmp.i.v EQ
bf [926]

:[925]
call.i gml_Script_scr_nextact(argc=0)
popz.v

:[926]
push.v self.endcon
pushi.e 1
cmp.i.v EQ
bf [945]

:[927]
push.v self.endtimer
push.e 1
add.i.v
pop.v.v self.endtimer
push.v self.endtimer
pushi.e 1
cmp.i.v EQ
bf [929]

:[928]
pushi.e -5
pushi.e 0
push.v [array]self.batmusic
call.i gml_Script_snd_free(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v

:[929]
push.v self.endtimer
pushi.e 0
cmp.i.v GT
bf [931]

:[930]
push.v self.endtimer
pushi.e 91
cmp.i.v LT
b [932]

:[931]
push.e 0

:[932]
bf [935]

:[933]
pushi.e 999
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [935]

:[934]
push.v self.endtimer
pushi.e 90
conv.i.d
div.d.v
pushi.e 0
conv.i.v
pushi.e -15
conv.i.v
call.i lerp(argc=3)
pop.v.v 999.trackspeed
push.v self.endtimer
pushi.e 90
conv.i.d
div.d.v
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
call.i lerp(argc=3)
pop.v.v 999.cityscape_speed_max

:[935]
push.v self.endtimer
pushi.e 91
cmp.i.v EQ
bf [945]

:[936]
pushi.e 1
pop.v.i self.didwejustdie
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e 99
cmp.i.v GT
bf [938]

:[937]
pushi.e 1
pop.v.i self.sneo_defeat_cutscene_version

:[938]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v GT
bf [940]

:[939]
pushi.e 2
pop.v.i self.sneo_defeat_cutscene_version

:[940]
push.v self.sneo_defeat_cutscene_version
pushi.e 0
cmp.i.v EQ
bf [941]

:[941]
push.v self.sneo_defeat_cutscene_version
pushi.e 2
cmp.i.v EQ
bf [943]

:[942]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_1492_0"@26200
conv.s.v
push.s "My esteem customer&I see you are attempting to deplete my HP!/%"@26201
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 99
pop.v.i self.partmode
pushi.e 2
pop.v.i self.endcon
pushi.e 72
pop.v.i global.typer
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
push.v self.x
pushi.e 10
sub.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v
b [944]

:[943]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_1009_0"@26202
conv.s.v
push.s "WAIT!!&[$!?!] THE PRESSES!/%"@26203
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 99
pop.v.i self.partmode
pushi.e 2
pop.v.i self.endcon
pushi.e 72
pop.v.i global.typer
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
push.v self.x
pushi.e 10
sub.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v

:[944]
pushi.e 0
pop.v.i self.endtimer
pushi.e 2
pop.v.i self.endcon
pushi.e 0
pop.v.i self.talktimer
pushi.e 1
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend

:[945]
push.v self.sneo_defeat_cutscene_version
pushi.e 0
cmp.i.v EQ
bf [1042]

:[946]
push.v self.endcon
pushi.e 2
cmp.i.v EQ
bf [1001]

:[947]
push.v self.talktimer
push.e 1
add.i.v
pop.v.v self.talktimer
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [949]

:[948]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
b [950]

:[949]
push.e 0

:[950]
bt [952]

:[951]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [953]

:[952]
push.e 1

:[953]
bf [997]

:[954]
pushi.e 64
pushenv [956]

:[955]
call.i instance_destroy(argc=0)
popz.v

:[956]
popenv [955]
push.v self.ballooncon
pushi.e 1
cmp.i.v EQ
bf [958]

:[957]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_1034_0"@26204
conv.s.v
push.s "HAHAHA... KRIS!!!&YOU THINK DEPLETING&MY [8000 Life Points]/%"@26205
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 2
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
pushi.e 9999
pop.v.i self.shocktimer
pushi.e 10
pop.v.i self.hurttimer2
pushi.e 40
pop.v.i self.partmode
b [988]

:[958]
push.v self.ballooncon
pushi.e 2
cmp.i.v EQ
bf [960]

:[959]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_1038_0"@26206
conv.s.v
push.s "MEANS YOU'VE WON&[A Free Meal] TO&[Winning]?!/%"@26207
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 3
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
pushi.e 9999
pop.v.i self.shocktimer
pushi.e 10
pop.v.i self.hurttimer2
b [988]

:[960]
push.v self.ballooncon
pushi.e 3
cmp.i.v EQ
bf [962]

:[961]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_1042_0"@26208
conv.s.v
push.s "NO!!! NO!!! NE-O!!/%"@26209
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 4
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
pushi.e 9999
pop.v.i self.shocktimer
pushi.e 10
pop.v.i self.hurttimer2
b [988]

:[962]
push.v self.ballooncon
pushi.e 4
cmp.i.v EQ
bf [964]

:[963]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_1046_0"@26210
conv.s.v
push.s "KRIS!!&YOUR [Deal] HAS FAILED!!&[NEO] NEVER LOSES!!/%"@26211
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 5
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
pushi.e 9999
pop.v.i self.shocktimer
pushi.e 10
pop.v.i self.hurttimer2
b [988]

:[964]
push.v self.ballooncon
pushi.e 5
cmp.i.v EQ
bf [970]

:[965]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_1052_0"@26212
conv.s.v
push.s "THIS IS [Victory Smoke]!!&IT MEANS IT'S TIME&FOR MY [Second Form]!/%"@26213
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 6
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
pushi.e 10
pop.v.i self.shockthreshold
pushi.e 20
pop.v.i self.hurttimer2
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.dontchangepose
pushi.e 10
pop.v.i self.smokethreshold
pushi.e 40
pop.v.i self.partmode
pushi.e 6
dup.i 0
push.i 0
cmp.i.i LTE
bt [969]

:[966]
pushi.e 353
conv.i.v
push.v self.y
pushi.e 80
add.i.v
push.v self.x
pushi.e 50
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.smokey
pushi.e 0
pushloc.v local.smokey
pushi.e -9
pop.v.i [stacktop]self.visible
pushloc.v local.smokey
pushi.e -9
pushenv [968]

:[967]
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
pushi.e 1
conv.i.v
push.i [function]gml_Script_scr_var
conv.i.v
call.i gml_Script_scr_script_delayed(argc=4)
popz.v

:[968]
popenv [967]
push.v self.depth
pushi.e 10
add.i.v
pushloc.v local.smokey
pushi.e -9
pop.v.v [stacktop]self.depth
push.d 2.5
pushloc.v local.smokey
pushi.e -9
pop.v.d [stacktop]self.image_alpha
pushi.e 1033
pushloc.v local.smokey
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 10
conv.i.v
pushi.e 2
conv.i.v
call.i random_range(argc=2)
pushloc.v local.smokey
pushi.e -9
pop.v.v [stacktop]self.hspeed
push.d -0.5
pushloc.v local.smokey
pushi.e -9
pop.v.d [stacktop]self.gravity
push.d 0.2
pushloc.v local.smokey
pushi.e -9
pop.v.d [stacktop]self.friction
pushi.e -8
conv.i.v
pushi.e -1
conv.i.v
call.i random_range(argc=2)
pushloc.v local.smokey
pushi.e -9
pop.v.v [stacktop]self.vspeed
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [966]

:[969]
popz.i
b [988]

:[970]
push.v self.ballooncon
pushi.e 6
cmp.i.v EQ
bf [972]

:[971]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_1058_0"@26215
conv.s.v
push.s "ARE YOU READY KRIS!?&FOR MY [Next Trick]!/%"@26216
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 7
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [988]

:[972]
push.v self.ballooncon
pushi.e 7
cmp.i.v EQ
bf [974]

:[973]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_1062_0"@26217
conv.s.v
push.s "I WILL FILL MY [Body]&WITH [Electricaty] AND BECOME&SPAMTON [EX]!/%"@26218
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 8
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [988]

:[974]
push.v self.ballooncon
pushi.e 8
cmp.i.v EQ
bf [978]

:[975]
pushi.e 999
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [977]

:[976]
pushi.e 20
pop.v.i 999.trackspeed

:[977]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_1068_0"@26219
conv.s.v
push.s "ARE YOU READY [Kids]!?/%"@26220
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 9
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
pushi.e 10
pop.v.i self.shockthreshold
pushi.e 10
pop.v.i self.hurttimer2
pushi.e 137
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 137
conv.i.v
call.i gml_Script_snd_loop(argc=1)
popz.v
push.d 0.3
conv.d.v
pushi.e 137
conv.i.v
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e -5
pop.v.i self.targetbgspeed
b [988]

:[978]
push.v self.ballooncon
pushi.e 9
cmp.i.v EQ
bf [980]

:[979]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_1076_0"@26221
conv.s.v
push.s "[Turn Up The JUICE!]&[Turn Up The JUICE!]/%"@26222
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 10
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
pushi.e 5
pop.v.i self.shockthreshold
push.d 0.5
conv.d.v
pushi.e 137
conv.i.v
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e -9
pop.v.i self.targetbgspeed
pushi.e 1
pop.v.i self.smokethreshold
b [988]

:[980]
push.v self.ballooncon
pushi.e 10
cmp.i.v EQ
bf [982]

:[981]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_1083_0"@26223
conv.s.v
push.s "[Make Sure You Don't&Get It On Your Shoese!]/%"@26224
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 11
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
pushi.e 3
pop.v.i self.shockthreshold
push.d 0.7
conv.d.v
pushi.e 137
conv.i.v
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e -13
pop.v.i self.targetbgspeed
b [988]

:[982]
push.v self.ballooncon
pushi.e 11
cmp.i.v EQ
bf [984]

:[983]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_1089_0"@26225
conv.s.v
push.s "ARE YOU GETTING&ALL THIS [Mike]!?&I'M FINALLY/%"@26226
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 12
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
pushi.e 2
pop.v.i self.shockthreshold
push.d 0.9
conv.d.v
pushi.e 137
conv.i.v
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e -17
pop.v.i self.targetbgspeed
b [988]

:[984]
push.v self.ballooncon
pushi.e 12
cmp.i.v EQ
bf [986]

:[985]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_1095_0"@26227
conv.s.v
push.s "I'M FINALLY GONNA&BE A BIG SHOT!!!/%"@26228
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 13
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
pushi.e 1
pop.v.i self.shockthreshold
push.d 1.1
conv.d.v
pushi.e 137
conv.i.v
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e -21
pop.v.i self.targetbgspeed
b [988]

:[986]
push.v self.ballooncon
pushi.e 13
cmp.i.v EQ
bf [988]

:[987]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_1101_0"@26229
conv.s.v
push.s "HERE I GO!!!!&WATCH ME FLY,&[MAMA]!!!!/%"@26230
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
pushi.e 1
pop.v.i self.shocktimer
push.d 1.3
conv.d.v
pushi.e 137
conv.i.v
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e -25
pop.v.i self.targetbgspeed

:[988]
pushi.e 3
pop.v.i self.endcon
pushi.e 72
pop.v.i global.typer
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
push.v self.x
pushi.e 10
sub.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v
push.v self.ballooncon
pushi.e 8
cmp.i.v GTE
bf [992]

:[989]
pushi.e 64
pushenv [991]

:[990]
pushi.e 2
pop.v.i self.shake

:[991]
popenv [990]

:[992]
push.v self.ballooncon
pushi.e 0
cmp.i.v EQ
bf [996]

:[993]
pushi.e 64
pushenv [995]

:[994]
pushi.e 3
pop.v.i self.shake
pushi.e 3
pop.v.i self.rate

:[995]
popenv [994]

:[996]
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.alarm

:[997]
pushi.e 999
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [999]

:[998]
push.d 0.1
conv.d.v
push.v self.targetbgspeed
pushi.e 6
mul.i.v
push.v 999.trackspeed
call.i lerp(argc=3)
pop.v.v 999.trackspeed

:[999]
pushi.e 999
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [1001]

:[1000]
push.d 0.1
conv.d.v
push.v self.targetbgspeed
push.v 999.cityscape_speed_max
call.i lerp(argc=3)
pop.v.v 999.cityscape_speed_max

:[1001]
push.v self.endcon
pushi.e 4
cmp.i.v EQ
bf [1042]

:[1002]
push.v self.talktimer
push.e 1
add.i.v
pop.v.v self.talktimer
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [1004]

:[1003]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
b [1005]

:[1004]
push.e 0

:[1005]
bt [1007]

:[1006]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [1008]

:[1007]
push.e 1

:[1008]
bf [1042]

:[1009]
push.v self.endtimer
push.e 1
add.i.v
pop.v.v self.endtimer
push.v self.endtimer
pushi.e 90
cmp.i.v LTE
bf [1011]

:[1010]
push.v self.endtimer
pushi.e 90
conv.i.d
div.d.v
pushi.e 2
conv.i.v
push.d 1.3
conv.d.v
call.i lerp(argc=3)
pushi.e 137
conv.i.v
call.i gml_Script_snd_pitch(argc=2)
popz.v

:[1011]
push.v self.endtimer
pushi.e 120
cmp.i.v EQ
bf [1013]

:[1012]
pushi.e 1
pop.v.i self.violentendflash
pushi.e 140
pop.v.i self.endtimer

:[1013]
push.v self.endtimer
pushi.e 151
cmp.i.v EQ
bf [1017]

:[1014]
pushi.e 137
conv.i.v
call.i audio_stop_sound(argc=1)
popz.v
pushi.e 353
pushenv [1016]

:[1015]
call.i instance_destroy(argc=0)
popz.v

:[1016]
popenv [1015]
pushi.e 209
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 2533
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.whiteall
pushi.e 999
push.v self.whiteall
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 999
push.v self.whiteall
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.whiteall
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.whiteall
pushi.e -9
pop.v.i [stacktop]self.image_alpha

:[1017]
push.v self.endtimer
pushi.e 150
cmp.i.v GT
bf [1019]

:[1018]
push.v self.endtimer
pushi.e 162
cmp.i.v LT
b [1020]

:[1019]
push.e 0

:[1020]
bf [1022]

:[1021]
push.v self.endtimer
pushi.e 150
sub.i.v
pushi.e 11
conv.i.d
div.d.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i lerp(argc=3)
push.v self.whiteall
pushi.e -9
pop.v.v [stacktop]self.image_alpha

:[1022]
push.v self.endtimer
pushi.e 300
cmp.i.v EQ
bf [1024]

:[1023]
pushi.e 2533
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.blackall
pushi.e 999
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 999
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e -1
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 0
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_blend

:[1024]
push.v self.endtimer
pushi.e 300
cmp.i.v GT
bf [1026]

:[1025]
push.v self.endtimer
pushi.e 331
cmp.i.v LT
b [1027]

:[1026]
push.e 0

:[1027]
bf [1029]

:[1028]
push.v self.endtimer
pushi.e 300
sub.i.v
pushi.e 30
conv.i.d
div.d.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i lerp(argc=3)
push.v self.blackall
pushi.e -9
pop.v.v [stacktop]self.image_alpha

:[1029]
push.v self.endtimer
pushi.e 331
cmp.i.v EQ
bf [1042]

:[1030]
push.v self.whiteall
pushi.e -9
pushenv [1041]

:[1031]
pushi.e -5
pushi.e 1
push.v [array]self.hp
pushi.e 1
cmp.i.v LT
bf [1033]

:[1032]
push.i 231131
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.hp

:[1033]
pushi.e -5
pushi.e 2
push.v [array]self.hp
pushi.e 1
cmp.i.v LT
bf [1035]

:[1034]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.hp

:[1035]
pushi.e -5
pushi.e 3
push.v [array]self.hp
pushi.e 1
cmp.i.v LT
bf [1037]

:[1036]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.hp

:[1037]
pushi.e 999
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [1039]

:[1038]
pushi.e 1
pop.v.i 999.forcend

:[1039]
pushi.e 999
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [1041]

:[1040]
pushi.e 13
pop.v.i 999.con

:[1041]
popenv [1031]

:[1042]
push.v self.sneo_defeat_cutscene_version
pushi.e 1
cmp.i.v EQ
bf [1161]

:[1043]
push.v self.endcon
pushi.e 2
cmp.i.v EQ
bf [1126]

:[1044]
pushi.e 0
pop.v.i local.aa
pushi.e 999
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [1047]

:[1045]
push.v 999.shop_spamton_bg_con
pushi.e 0
cmp.i.v GT
bf [1047]

:[1046]
push.v 999.shop_spamton_bg_con
pushi.e 3
cmp.i.v LT
b [1048]

:[1047]
push.e 0

:[1048]
bf [1050]

:[1049]
pushi.e 1
pop.v.i local.aa

:[1050]
push.v self.talktimer
push.e 1
add.i.v
pop.v.v self.talktimer
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [1053]

:[1051]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
bf [1053]

:[1052]
pushloc.v local.aa
pushi.e 0
cmp.i.v EQ
b [1054]

:[1053]
push.e 0

:[1054]
bt [1059]

:[1055]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [1057]

:[1056]
pushloc.v local.aa
pushi.e 0
cmp.i.v EQ
b [1058]

:[1057]
push.e 0

:[1058]
b [1060]

:[1059]
push.e 1

:[1060]
bf [1067]

:[1061]
push.v self.ballooncon
pushi.e 7
cmp.i.v EQ
bf [1064]

:[1062]
pushi.e 999
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [1064]

:[1063]
push.v 999.shop_spamton_bg_con
pushi.e 3
cmp.i.v LT
b [1065]

:[1064]
push.e 0

:[1065]
bf [1067]

:[1066]
pushi.e 1
pop.v.i 999.shop_spamton_bg_con
pushi.e 1
pop.v.i local.aa

:[1067]
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [1070]

:[1068]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
bf [1070]

:[1069]
pushloc.v local.aa
pushi.e 0
cmp.i.v EQ
b [1071]

:[1070]
push.e 0

:[1071]
bt [1076]

:[1072]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [1074]

:[1073]
pushloc.v local.aa
pushi.e 0
cmp.i.v EQ
b [1075]

:[1074]
push.e 0

:[1075]
b [1077]

:[1076]
push.e 1

:[1077]
bf [1118]

:[1078]
pushi.e 64
pushenv [1080]

:[1079]
call.i instance_destroy(argc=0)
popz.v

:[1080]
popenv [1079]
push.v self.ballooncon
pushi.e 1
cmp.i.v EQ
bf [1082]

:[1081]
pushi.e 1
pop.v.i self.headendcon
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_1172_0"@26232
conv.s.v
push.s "MY... MY [Wires]...&THEY'RE ALMOST [Gone]!?/%"@26233
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 2
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
pushi.e 1
pop.v.i self.partmode
b [1106]

:[1082]
push.v self.ballooncon
pushi.e 2
cmp.i.v EQ
bf [1084]

:[1083]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_1176_0"@26234
conv.s.v
push.s "KRIS... YOU...&YOU'RE [Gifting] ME&MY [Freedom]?!/%"@26235
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 3
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [1106]

:[1084]
push.v self.ballooncon
pushi.e 3
cmp.i.v EQ
bf [1086]

:[1085]
pushi.e 2
pop.v.i self.headendcon
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_1181_0"@26236
conv.s.v
push.s "KRIS... AFTER EVERYTHING&I DID TO YOU...!?/%"@26237
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 4
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
pushi.e 1
pop.v.i self.partmode
b [1106]

:[1086]
push.v self.ballooncon
pushi.e 4
cmp.i.v EQ
bf [1088]

:[1087]
pushi.e 3
pop.v.i self.headendcon
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_1186_0"@26238
conv.s.v
push.s "AFTER ALL THE&[Unforgettable D3als]&[Free KROMER] I&GAVE YOU/%"@26239
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 5
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
pushi.e 1
pop.v.i self.partmode
b [1106]

:[1088]
push.v self.ballooncon
pushi.e 5
cmp.i.v EQ
bf [1090]

:[1089]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_1190_0"@26240
conv.s.v
push.s "YOU'RE FINALLY&REPAYING MY&[Genorisity]!?/%"@26241
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 6
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [1106]

:[1090]
push.v self.ballooncon
pushi.e 6
cmp.i.v EQ
bf [1092]

:[1091]
pushi.e 2
pop.v.i self.headendcon
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_1195_0"@26242
conv.s.v
push.s "KRIS!!! I UNDERSTAND&NOW!! THE GREATEST&DEAL OF ALL!!!/%"@26243
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 7
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
pushi.e 99
pop.v.i self.partmode
b [1106]

:[1092]
push.v self.ballooncon
pushi.e 7
cmp.i.v EQ
bf [1094]

:[1093]
pushi.e 3
pop.v.i self.headendcon
push.i 231459
setowner.e
push.s "spamton_happy.ogg"@26244
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_play(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop(argc=1)
popz.v
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_1202_0"@26245
conv.s.v
push.s "[Friendship]!!!/%"@26246
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 8
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
pushi.e 36
pop.v.i self.partmode
b [1106]

:[1094]
push.v self.ballooncon
pushi.e 8
cmp.i.v EQ
bf [1096]

:[1095]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_1208_0"@26247
conv.s.v
push.s "KRIS!!! MY DAYS AS&A [Long-Nosed Doll]&ARE OVER!!!/%"@26248
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 9
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [1106]

:[1096]
push.v self.ballooncon
pushi.e 9
cmp.i.v EQ
bf [1098]

:[1097]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_1212_0"@26249
conv.s.v
push.s "CUT THAT&[Wire] AND MAKE&ME A [Real Boy]!!/%"@26250
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 10
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [1106]

:[1098]
push.v self.ballooncon
pushi.e 10
cmp.i.v EQ
bf [1100]

:[1099]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_1216_0"@26251
conv.s.v
push.s "ARE YOU WATCHING,&[Heaven]!? IT'S&TIME FOR SPAMTON'S&[Comeback Special]!/%"@26252
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 11
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [1106]

:[1100]
push.v self.ballooncon
pushi.e 11
cmp.i.v EQ
bf [1102]

:[1101]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_1220_0"@26253
conv.s.v
push.s "AND THIS TIME...&I LIVE FOR MYSELF!!!/%"@26254
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 12
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [1106]

:[1102]
push.v self.ballooncon
pushi.e 12
cmp.i.v EQ
bf [1104]

:[1103]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_1225_0"@26255
conv.s.v
push.s "NO... MYSELF AND&MY [Friend(s)]!!!/%"@26256
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 13
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
pushi.e 36
pop.v.i self.partmode
b [1106]

:[1104]
push.v self.ballooncon
pushi.e 13
cmp.i.v EQ
bf [1106]

:[1105]
push.s "obj_spamton_neo_enemy_slash_Step_0_gml_1229_0"@26257
conv.s.v
push.s "HERE I GO!!!!&WATCH ME FLY,&[MAMA]!!!!/%"@26230
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
pushi.e 36
pop.v.i self.partmode
pushi.e 2
pop.v.i self.dancealtcon

:[1106]
pushi.e 3
pop.v.i self.endcon
pushi.e 72
pop.v.i global.typer
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
push.v self.x
pushi.e 10
sub.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v
push.v self.ballooncon
pushi.e 8
cmp.i.v GTE
bf [1110]

:[1107]
pushi.e 64
pushenv [1109]

:[1108]
pushi.e 2
pop.v.i self.shake

:[1109]
popenv [1108]

:[1110]
push.v self.ballooncon
pushi.e 13
cmp.i.v EQ
bt [1112]

:[1111]
push.v self.ballooncon
pushi.e 0
cmp.i.v EQ
b [1113]

:[1112]
push.e 1

:[1113]
bf [1117]

:[1114]
pushi.e 64
pushenv [1116]

:[1115]
pushi.e 3
pop.v.i self.shake
pushi.e 3
pop.v.i self.rate

:[1116]
popenv [1115]

:[1117]
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.alarm

:[1118]
pushi.e 999
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [1120]

:[1119]
push.d 0.1
conv.d.v
push.v self.targetbgspeed
pushi.e 6
mul.i.v
push.v 999.trackspeed
call.i lerp(argc=3)
pop.v.v 999.trackspeed

:[1120]
pushi.e 999
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [1122]

:[1121]
push.d 0.1
conv.d.v
push.v self.targetbgspeed
push.v 999.cityscape_speed_max
call.i lerp(argc=3)
pop.v.v 999.cityscape_speed_max

:[1122]
push.v self.ballooncon
pushi.e 13
cmp.i.v EQ
bf [1126]

:[1123]
push.v self.siner
pushi.e 2
add.i.v
pop.v.v self.siner
pushi.e 0
pop.v.i local.i

:[1124]
pushloc.v local.i
pushi.e 8
cmp.i.v LT
bf [1126]

:[1125]
push.i 171507
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.partsiner
push.d 0.6
add.d.v
pop.i.v [array]self.partsiner
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [1124]

:[1126]
push.v self.endcon
pushi.e 4
cmp.i.v EQ
bf [1161]

:[1127]
push.v self.talktimer
push.e 1
add.i.v
pop.v.v self.talktimer
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [1129]

:[1128]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
b [1130]

:[1129]
push.e 0

:[1130]
bt [1132]

:[1131]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [1133]

:[1132]
push.e 1

:[1133]
bf [1154]

:[1134]
push.v self.endtimer
push.e 1
add.i.v
pop.v.v self.endtimer
push.v self.endtimer
pushi.e 1
cmp.i.v EQ
bf [1137]

:[1135]
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_snd_free(argc=1)
popz.v
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 2533
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.blackall4
pushi.e 999
push.v self.blackall4
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 999
push.v self.blackall4
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v 999.depth
pushi.e 1
sub.i.v
push.v self.blackall4
pushi.e -9
pop.v.v [stacktop]self.depth
push.d 0.5
push.v self.blackall4
pushi.e -9
pop.v.d [stacktop]self.image_alpha
pushi.e 0
push.v self.blackall4
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e 688
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.vine
push.v self.x
pushi.e -1
pushi.e 4
push.v [array]self.partx
add.v.v
pushi.e -1
pushi.e 4
push.v [array]self.partxoff
push.d 1.2
div.d.v
add.v.v
pushi.e 20
add.i.v
pushi.e -1
pushi.e 4
push.v [array]self.partsiner
pushi.e 25
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 1.8
mul.d.v
add.v.v
push.v self.vine
pushi.e -9
pop.v.v [stacktop]self.x1
push.v self.x
pushi.e -1
pushi.e 4
push.v [array]self.partx
add.v.v
pushi.e -1
pushi.e 4
push.v [array]self.partxoff
push.d 1.5
div.d.v
add.v.v
pushi.e 32
add.i.v
push.v self.vine
pushi.e -9
pop.v.v [stacktop]self.x2
push.v self.y
pushi.e -1
pushi.e 4
push.v [array]self.party
add.v.v
pushi.e 10
sub.i.v
pushi.e -1
pushi.e 4
push.v [array]self.partyoff
add.v.v
push.v self.vine
pushi.e -9
pop.v.v [stacktop]self.y1
pushi.e -400
push.v self.vine
pushi.e -9
pop.v.i [stacktop]self.y2
push.v self.depth
pushi.e 1
add.i.v
push.v self.vine
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 4
push.v self.vine
pushi.e -9
pop.v.i [stacktop]self.vineid
pushi.e 690
conv.i.v
push.v self.y
pushi.e 35
sub.i.v
push.v self.x
pushi.e -1
pushi.e 4
push.v [array]self.partx
add.v.v
pushi.e -1
pushi.e 4
push.v [array]self.partxoff
push.d 1.2
div.d.v
add.v.v
pushi.e 16
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.vfx
push.v self.depth
pushi.e 5
sub.i.v
push.v self.vfx
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 3
pop.v.i self.lastwirecon
pushi.e 99
pop.v.i self.partmode
pushi.e 999
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [1137]

:[1136]
pushi.e 0
pop.v.i 999.cityscape_speed_max
pushi.e 0
pop.v.i 999.cityscape_speed
pushi.e 0
pop.v.i 999.trackspeed

:[1137]
push.v self.endtimer
pushi.e 91
cmp.i.v EQ
bf [1139]

:[1138]
push.i -99999
pop.v.i self.depth
pushi.e 2533
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.blackall
pushi.e 999
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 999
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 1
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 0
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e 43
pop.v.i self.partmode

:[1139]
push.v self.endtimer
pushi.e 330
cmp.i.v EQ
bf [1141]

:[1140]
pushi.e 2533
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.blackall2
pushi.e 999
push.v self.blackall2
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 999
push.v self.blackall2
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.blackall2
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 1
push.v self.blackall2
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 0
push.v self.blackall2
pushi.e -9
pop.v.i [stacktop]self.image_blend
push.i -999999
push.v self.blackall2
pushi.e -9
pop.v.i [stacktop]self.depth

:[1141]
push.v self.endtimer
pushi.e 450
cmp.i.v EQ
bf [1154]

:[1142]
push.v self.blackall2
pushi.e -9
pushenv [1153]

:[1143]
pushi.e -5
pushi.e 1
push.v [array]self.hp
pushi.e 1
cmp.i.v LT
bf [1145]

:[1144]
push.i 231131
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.hp

:[1145]
pushi.e -5
pushi.e 2
push.v [array]self.hp
pushi.e 1
cmp.i.v LT
bf [1147]

:[1146]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.hp

:[1147]
pushi.e -5
pushi.e 3
push.v [array]self.hp
pushi.e 1
cmp.i.v LT
bf [1149]

:[1148]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.hp

:[1149]
pushi.e 999
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [1151]

:[1150]
pushi.e 1
pop.v.i 999.forcend

:[1151]
pushi.e 999
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [1153]

:[1152]
pushi.e 13
pop.v.i 999.con

:[1153]
popenv [1143]

:[1154]
push.v self.ballooncon
pushi.e 0
cmp.i.v EQ
bf [1156]

:[1155]
push.v self.endtimer
pushi.e 0
cmp.i.v EQ
b [1157]

:[1156]
push.e 0

:[1157]
bf [1161]

:[1158]
push.v self.siner
pushi.e 3
add.i.v
pop.v.v self.siner
pushi.e 0
pop.v.i local.i

:[1159]
pushloc.v local.i
pushi.e 8
cmp.i.v LT
bf [1161]

:[1160]
push.i 171507
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.partsiner
push.d 0.9
add.d.v
pop.i.v [array]self.partsiner
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [1159]

:[1161]
push.v self.endcon
pushi.e 10
cmp.i.v EQ
bf [1163]

:[1162]
pushi.e 11
pop.v.i self.endcon
pushi.e 1
pop.v.i 357.skipvictory
call.i gml_Script_scr_wincombat(argc=0)
popz.v

:[1163]
push.v self.weirdpathendcon
pushi.e 6
cmp.i.v EQ
bf [1165]

:[1164]
pushi.e 40
pop.v.i self.partmode
pushi.e 0
pop.v.i self.dontchangepose

:[1165]
push.v self.stoprumblesfx
pushi.e 0
cmp.i.v GT
bf [1167]

:[1166]
push.v self.stoprumblesfx
push.e 1
sub.i.v
pop.v.v self.stoprumblesfx

:[1167]
push.v self.stoprumblesfx
pushi.e 1
cmp.i.v EQ
bf [1169]

:[1168]
pushi.e 223
conv.i.v
call.i audio_stop_sound(argc=1)
popz.v

:[1169]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [end]

:[1170]
pushi.e 905
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [1172]

:[1171]
push.s "0-9/Numpad: Specific attack#-/Numpad Decimal for random attack#M to toggle music"@26262
pop.v.s local.debugstring
pushloc.v local.debugstring
call.i gml_Script_scr_debug_print_persistent(argc=1)
popz.v

:[1172]
pushi.e 77
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [1181]

:[1173]
push.v self.songplaying
conv.v.b
bf [1175]

:[1174]
pushi.e -5
pushi.e 1
push.v [array]self.batmusic
call.i audio_sound_get_track_position(argc=1)
pop.v.v self.songtime
pushi.e -5
pushi.e 1
push.v [array]self.batmusic
call.i audio_pause_sound(argc=1)
popz.v
pushi.e 0
pop.v.i self.songplaying
b [1181]

:[1175]
push.v self.musicdebug
pushi.e 0
cmp.i.v EQ
bf [1177]

:[1176]
push.i 232336
setowner.e
push.s "spamton_neo_mix_ex_wip.ogg"@14431
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.batmusic
pushi.e -5
pushi.e 1
push.v [array]self.batmusic
call.i gml_Script_mus_loop(argc=1)
popz.v
pushi.e 1
pop.v.i self.musicdebug
b [1180]

:[1177]
push.v self.songtime
push.v self.resumeinterval
add.v.v
push.v self.songtime
push.v self.resumeinterval
mod.v.v
sub.v.v
pop.v.v self.songtime
push.v self.songtime
pushi.e 140
cmp.i.v GT
bf [1179]

:[1178]
pushi.e 0
pop.v.i self.songtime

:[1179]
push.v self.songtime
pushi.e -5
pushi.e 1
push.v [array]self.batmusic
call.i audio_sound_set_track_position(argc=2)
popz.v
pushi.e -5
pushi.e 1
push.v [array]self.batmusic
call.i audio_resume_sound(argc=1)
popz.v

:[1180]
pushi.e 1
pop.v.i self.songplaying

:[1181]
push.s "SNEO"@26264
conv.s.v
pushi.e 10
conv.i.v
push.v self.attackdebug
call.i gml_Script_scr_attack_override(argc=3)
pop.v.v self.attackdebug

:[end]