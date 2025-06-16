.localvar 2 arguments
.localvar 25269 other_random 12230
.localvar 11861 _hltarget 12231
.localvar 25293 _cherub 12232

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [97]

:[1]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [3]

:[2]
push.v self.talked
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [29]

:[5]
call.i gml_Script_scr_randomtarget(argc=0)
popz.v
pushi.e 363
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [7]

:[6]
pushi.e 363
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[7]
pushi.e 68
pop.v.i global.typer
pushi.e 2
conv.i.v
call.i irandom(argc=1)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.v self.enlarge_attack
pushi.e 0
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
push.v self.enlarge_attack
push.e 1
add.i.v
pop.v.v self.enlarge_attack
push.s "obj_spamton_enemy_slash_Step_0_gml_20_0"@25263
conv.s.v
push.s "ENL4RGE&Yourself"@25264
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 1
pop.v.i self.bulletoverride
b [28]

:[12]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
push.v self.vacuum_attack
pushi.e 0
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
push.v self.vacuum_attack
push.e 1
add.i.v
pop.v.v self.vacuum_attack
push.s "obj_spamton_enemy_slash_Step_0_gml_26_0"@25265
conv.s.v
push.s "TRANSMIT&KROMER"@25266
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 2
pop.v.i self.bulletoverride
b [28]

:[17]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [19]

:[18]
push.v self.singles_attack
pushi.e 0
cmp.i.v EQ
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
push.v self.singles_attack
push.e 1
add.i.v
pop.v.v self.singles_attack
push.s "obj_spamton_enemy_slash_Step_0_gml_32_0"@25267
conv.s.v
push.s "MEET LOCAL SINGLES&STRAIGHT FROM [My]"@25268
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.bulletoverride
b [28]

:[22]
pushi.e 1
conv.i.v
call.i irandom(argc=1)
pop.v.v local.other_random
pushloc.v local.other_random
pushi.e 0
cmp.i.v EQ
bf [24]

:[23]
push.s "obj_spamton_enemy_slash_Step_0_gml_41_0"@25270
conv.s.v
push.s "Get Big and WIN&[W1ld Pr1zes!]"@25271
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [27]

:[24]
push.v self.help_counter
pushi.e 0
cmp.i.v EQ
bf [26]

:[25]
push.v self.help_counter
push.e 1
add.i.v
pop.v.v self.help_counter
push.s "obj_spamton_enemy_slash_Step_0_gml_47_0"@25272
conv.s.v
push.s "[Press F1 For] HELP"@25273
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [27]

:[26]
push.s "obj_spamton_enemy_slash_Step_0_gml_50_0"@25274
conv.s.v
push.s "HELP"@25275
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[27]
pushi.e -1
pop.v.i self.bulletoverride

:[28]
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
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[29]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
b [32]

:[31]
push.e 0

:[32]
bf [41]

:[33]
pushi.e 0
pop.v.i self.rtimer
pushi.e 591
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [35]

:[34]
pushi.e 15
conv.i.v
call.i gml_Script_scr_blconskip(argc=1)
popz.v
b [36]

:[35]
push.v self.talktimer
pushi.e 1
add.i.v
pop.v.v self.talktimer

:[36]
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [41]

:[37]
pushi.e 379
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [39]

:[38]
call.i gml_Script_scr_moveheart(argc=0)
popz.v

:[39]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [41]

:[40]
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
pushi.e 320
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[41]
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [43]

:[42]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [44]

:[43]
push.e 0

:[44]
bf [70]

:[45]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 16
cmp.i.v EQ
bf [69]

:[46]
push.v self.bulletoverride
pushi.e -1
cmp.i.v EQ
bf [48]

:[47]
pushi.e 2
conv.i.v
call.i irandom(argc=1)
b [49]

:[48]
push.v self.bulletoverride

:[49]
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [51]

:[50]
push.i 231869
setowner.e
push.s "Minitons"@25276
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
pushi.e 23
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
b [54]

:[51]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [53]

:[52]
push.i 231869
setowner.e
push.s "WordBullets"@25277
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
pushi.e 24
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
b [54]

:[53]
push.i 231869
setowner.e
push.s "MoneyVacuum"@25278
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
pushi.e 25
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type

:[54]
pushi.e 270
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.v self.turns
pushi.e 1
cmp.i.v EQ
bf [56]

:[55]
push.i 231921
setowner.e
push.s "obj_spamton_enemy_slash_Step_0_gml_120_0"@25279
conv.s.v
push.s "* THERE'S NOTHING WRONG WITH HAVING A NICE [Splurge] EVERY ONCE IN A WHILE"@25280
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [68]

:[56]
push.v self.turns
pushi.e 2
cmp.i.v EQ
bf [58]

:[57]
push.i 231921
setowner.e
push.s "obj_spamton_enemy_slash_Step_0_gml_123_0"@25281
conv.s.v
push.s "* There's nothing wrong.&There's NOTHING WRONG.&THERE'S NOTHING WRONG."@25282
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [68]

:[58]
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=5)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [60]

:[59]
push.i 231921
setowner.e
push.s "obj_spamton_enemy_slash_Step_0_gml_127_0"@25283
conv.s.v
push.s "* Great ENEMY! SUSCRIBE NOW! "@25284
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[60]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [62]

:[61]
push.s "obj_spamton_enemy_slash_Step_0_gml_128_0"@25285
conv.s.v
push.s "* Spamton mutters \"1997.\""@25286
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[62]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [64]

:[63]
push.s "obj_spamton_enemy_slash_Step_0_gml_129_0"@25287
conv.s.v
push.s "* Smells like KROMER."@25288
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[64]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [66]

:[65]
push.s "obj_spamton_enemy_slash_Step_0_gml_130_0"@25289
conv.s.v
push.s "* CONGRULATIONS YOU ARE THE 100th VISITOR!!! CLICK HERE TO [Die]"@25290
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[66]
push.v self.rr
pushi.e 4
cmp.i.v EQ
bf [68]

:[67]
push.s "obj_spamton_enemy_slash_Step_0_gml_131_0"@25291
conv.s.v
push.s "* Spamton flashes an award-losing smile."@25292
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[68]
pushi.e 1
pop.v.i self.attacked
b [70]

:[69]
pushi.e 120
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[70]
pushi.e 112
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [74]

:[71]
push.i 32780
conv.i.v
pushi.e 0
conv.i.v
call.i gamepad_button_check_pressed(argc=2)
conv.v.b
bt [74]

:[72]
push.i 32780
conv.i.v
pushi.e 1
conv.i.v
call.i gamepad_button_check_pressed(argc=2)
conv.v.b
bt [74]

:[73]
push.i 32780
conv.i.v
pushi.e 2
conv.i.v
call.i gamepad_button_check_pressed(argc=2)
conv.v.b
b [75]

:[74]
push.e 1

:[75]
bf [81]

:[76]
push.v self.party_heal
pushi.e 0
cmp.b.v EQ
bf [81]

:[77]
push.s "menu"@6386
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bt [79]

:[78]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
b [80]

:[79]
push.e 1

:[80]
b [82]

:[81]
push.e 0

:[82]
bf [97]

:[83]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [85]

:[84]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
b [86]

:[85]
push.e 0

:[86]
bf [90]

:[87]
push.v self.talkmax
pop.v.v self.talktimer
pushi.e 64
pushenv [89]

:[88]
call.i instance_destroy(argc=0)
popz.v

:[89]
popenv [88]

:[90]
pushi.e 0
pop.v.i self.i

:[91]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [96]

:[92]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 0
cmp.i.v EQ
bf [94]

:[93]
b [95]

:[94]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
pop.v.v local._hltarget
pushi.e 591
conv.i.v
pushloc.v local._hltarget
pushi.e -9
push.v [stacktop]self.y
pushi.e 38
sub.i.v
pushloc.v local._hltarget
pushi.e -9
push.v [stacktop]self.x
pushi.e 16
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local._cherub
pushi.e 1
pushloc.v local._cherub
pushi.e -9
pop.v.b [stacktop]self.healer

:[95]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [91]

:[96]
pushi.e 1
pop.v.b self.party_heal

:[97]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [end]

:[98]
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
bf [100]

:[99]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [101]

:[100]
push.e 0

:[101]
bf [103]

:[102]
pushi.e 1
pop.v.i self.actcon
push.s "obj_spamton_enemy_slash_Step_0_gml_153_0"@25295
conv.s.v
push.s "* SPAMTON - He wants to make a \\cYDEAL\\c0, but don't give him your \\cYMONEY\\c0!/%"@25296
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[103]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [105]

:[104]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [106]

:[105]
push.e 0

:[106]
bf [128]

:[107]
pushi.e 5
pop.v.i self.actcon
push.v self.deal_counter
pushi.e 0
cmp.i.v EQ
bf [111]

:[108]
pushi.e 0
pop.v.i self.correct_answer
push.i 231305
setowner.e
push.s "obj_spamton_enemy_slash_Step_0_gml_164_0"@25297
conv.s.v
push.s "#TELL ME MORE"@25298
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.choicemsg
push.s "obj_spamton_enemy_slash_Step_0_gml_165_0"@25299
conv.s.v
push.s "#NOT INTERESTED"@25300
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.choicemsg
push.v self.deal_read
pushi.e 0
cmp.i.v EQ
bf [110]

:[109]
push.v self.deal_read
push.e 1
add.i.v
pop.v.v self.deal_read
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_172_0"@25301
conv.s.v
push.s "HEY HEY HEY^1!&I'VE NEVER SEEN A&[HeartShapedObject]&LIKE THAT BEFORE!!/"@25302
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_173_0"@25303
conv.s.v
push.s "\\M2MY EYES ARE [[Burning]]&LIKE [[DVDs of ANY&movie at Half-pr1ce!]]/"@25304
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_174_0"@25305
conv.s.v
push.s "\\M4I HAVE A VERY SPECIL&[Deal] FOR YOU KID!/%"@25306
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [111]

:[110]
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_178_0"@25307
conv.s.v
push.s "KID!!! IN BUSINESS&YOU NEED TO&SAY YOU'RE&INTERESTED!!!/%"@25308
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[111]
push.v self.deal_counter
pushi.e 1
cmp.i.v EQ
bf [115]

:[112]
pushi.e 1
pop.v.i self.correct_answer
push.s "obj_spamton_enemy_slash_Step_0_gml_185_0"@25309
conv.s.v
push.s "#GIVE MONEY"@25310
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.choicemsg
push.s "obj_spamton_enemy_slash_Step_0_gml_186_0"@25311
conv.s.v
push.s "#DON'T GIVE"@25312
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.choicemsg
push.v self.deal_read
pushi.e 0
cmp.i.v EQ
bf [114]

:[113]
push.v self.deal_read
push.e 1
add.i.v
pop.v.v self.deal_read
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_193_0"@25313
conv.s.v
push.s "BELIEVE IT&OR          !!/"@25314
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_194_0"@25315
conv.s.v
push.s "\\M4I USED TO be A \\cRBIG&SHOT\\c0. THE BIGGEST!!!&BUT NOW.../"@25316
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_196_0"@25317
conv.s.v
push.s "\\M3I NEED A LITTLE&[[Genorisity]]/%"@25318
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [115]

:[114]
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_200_0"@25319
conv.s.v
push.s "\\M3YUM YUM I NEED&A LITTLE MORE&[Genorisity]/%"@25320
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[115]
push.v self.deal_counter
pushi.e 2
cmp.i.v EQ
bf [119]

:[116]
pushi.e 1
pop.v.i self.correct_answer
push.s "obj_spamton_enemy_slash_Step_0_gml_207_0"@25321
conv.s.v
push.s "#DON'T TAKE DEAL"@25322
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.choicemsg
push.s "obj_spamton_enemy_slash_Step_0_gml_208_0"@25323
conv.s.v
push.s "#TAKE DEAL"@25324
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.choicemsg
push.v self.deal_read
pushi.e 0
cmp.i.v EQ
bf [118]

:[117]
push.v self.deal_read
push.e 1
add.i.v
pop.v.v self.deal_read
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_215_0"@25325
conv.s.v
push.s "I WAS ONLY EVER&IN IT FOR/"@25326
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_216_0"@25327
conv.s.v
push.s "\\M1THE [Freedom]./"@25328
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_218_0"@25329
conv.s.v
push.s "\\M4TO MAKE YOUR OWN&[Deals]&TO CALL YOUR OWN&[Shots]/"@25330
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_220_0"@25331
conv.s.v
push.s "\\M3AND SOMETIMES IN THE&MORNING^1, A LITTLE/"@25332
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_221_0"@25333
conv.s.v
push.s "\\M1[Hyperlink Blocked]/"@25334
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_222_0"@25335
conv.s.v
push.s "\\M3SOUNDS GOOD.&DOESN;T IT?KID?/"@25336
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_224_0"@25337
conv.s.v
push.s "\\M2DON'T YOU W4NT TO BE&JUST LIKE YOUR OLD&PAL SPAMTON????/"@25338
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_225_0"@25339
conv.s.v
push.s "\\M0TAKE THE DE4L./%"@25340
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [119]

:[118]
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_229_0"@25341
conv.s.v
push.s "\\M3TAKE THE DEAL&YOU LITTLE [Sponge]/%"@25342
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[119]
push.v self.deal_counter
pushi.e 3
cmp.i.v EQ
bf [123]

:[120]
pushi.e 1
pop.v.i self.correct_answer
push.s "obj_spamton_enemy_slash_Step_0_gml_236_0"@25343
conv.s.v
push.s "#BUY INSURANCE"@25344
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.choicemsg
push.s "obj_spamton_enemy_slash_Step_0_gml_237_0"@25345
conv.s.v
push.s "#DON'T BUY"@25346
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.choicemsg
push.v self.deal_read
pushi.e 0
cmp.i.v EQ
bf [122]

:[121]
push.v self.deal_read
push.e 1
add.i.v
pop.v.v self.deal_read
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_244_0"@25347
conv.s.v
push.s "\\M3DONT WORRY KID I&WILL GIVE YOU&[Deal Insurance]/"@25348
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_245_0"@25349
conv.s.v
push.s "\\M4ONLY FOR THE&LOW^1, LOW PRICE&OF 1000 KROMER./"@25350
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_246_0"@25351
conv.s.v
push.s "\\M5AN AWESOME PRICE.!&AN ABSOLUTELY&[[Terrifying]] PRICE/"@25352
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_247_0"@25353
conv.s.v
push.s "\\M6PRICES SO LOW^1,&EVERYONE I KNOW IS&[[Dead]]!!!/%"@25354
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [123]

:[122]
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_251_0"@25355
conv.s.v
push.s "\\M2YUM YUM DID&YOU WANT SOME&MORE INSURANCE?/%"@25356
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[123]
push.v self.deal_counter
pushi.e 4
cmp.i.v EQ
bf [127]

:[124]
pushi.e 1
pop.v.i self.correct_answer
push.s "obj_spamton_enemy_slash_Step_0_gml_258_0"@25357
conv.s.v
push.s "#GIVE ACCOUNT#ACCESS"@25358
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.choicemsg
push.s "obj_spamton_enemy_slash_Step_0_gml_259_0"@25359
conv.s.v
push.s "#REFUSE"@25360
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.choicemsg
push.v self.deal_read
pushi.e 0
cmp.i.v EQ
bf [126]

:[125]
push.v self.deal_read
push.e 1
add.i.v
pop.v.v self.deal_read
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_266_0"@25361
conv.s.v
push.s "DON'T WORRY KIDS&I'M AN [HonestMan]/"@25362
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_267_0"@25363
conv.s.v
push.s "\\M3I JUST NEED YOUR&[Account Details] AND&THE&[Number on theB4ck]!/"@25364
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_268_0"@25365
conv.s.v
push.s "\\M2THEN YOU CAN ENJ0Y&1000 Fr3e KROmer/%"@25366
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [127]

:[126]
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_272_0"@25367
conv.s.v
push.s "\\M2YUM YUM DID&YOU HAVE ANY&MORE ACCOUNTS?/%"@25368
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[127]
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

:[128]
push.v self.actcon
pushi.e 5
cmp.i.v EQ
bf [130]

:[129]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [131]

:[130]
push.e 0

:[131]
bf [133]

:[132]
pushi.e 10
pop.v.i self.actcon
push.s "\\C2 "@799
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[133]
push.v self.actcon
pushi.e 10
cmp.i.v EQ
bf [136]

:[134]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [136]

:[135]
pushi.e 59
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [137]

:[136]
push.e 0

:[137]
bf [163]

:[138]
push.v self.deal_counter
pushi.e 0
cmp.i.v EQ
bf [143]

:[139]
pushi.e 1
pop.v.i self.actcon
pushglb.v global.choice
push.v self.correct_answer
cmp.v.v EQ
bf [141]

:[140]
pushi.e 226
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 20
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
push.v self.deal_counter
push.e 1
add.i.v
pop.v.v self.deal_counter
pushi.e 0
pop.v.i self.deal_read
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_299_0"@25369
conv.s.v
push.s "\\M4THAT'S THE ATTITUDE&YOU LITTLE [Slime]!/"@25370
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_300_0"@25371
conv.s.v
push.s "\\M2DEALS LIKE THIS&ONLY COME ONCE IN&YOUR [[Ant-sized]]&[[Rapidly-shrinking]]&LIFE!!/%"@25372
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [142]

:[141]
pushi.e 144
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_304_0"@25373
conv.s.v
push.s "\\M3WRONG ANSWER!!!&WRONG!!! WRONG!!!&WRONG!!! TRY AGAIN!!!/%"@25374
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[142]
b [162]

:[143]
push.v self.deal_counter
pushi.e 1
cmp.i.v EQ
bf [148]

:[144]
pushi.e 1
pop.v.i self.actcon
pushglb.v global.choice
push.v self.correct_answer
cmp.v.v EQ
bf [146]

:[145]
pushi.e 226
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 20
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
push.v self.deal_counter
push.e 1
add.i.v
pop.v.v self.deal_counter
pushi.e 0
pop.v.i self.deal_read
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_317_0"@25375
conv.s.v
push.s "\\M2THAT'S RIGHT AND I&DON'T MEAN [Money]!!!/"@25376
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_318_0"@25377
conv.s.v
push.s "\\M5I'M A SALESMAN   ,&I WAS NEVER IN IT&FOR THE MONEY!!!/%"@25378
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [147]

:[146]
pushi.e 144
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_323_0"@25379
conv.s.v
push.s "\\M2YUM YUM.&DELICIS KROMER./"@25380
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_324_0"@25381
conv.s.v
push.s "\\M3DID YOU HAVE&AN YMORE?/%"@25382
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 1
pop.v.i self.kromer_message
pushi.e 50
pop.v.i self.actcon

:[147]
b [162]

:[148]
push.v self.deal_counter
pushi.e 2
cmp.i.v EQ
bf [153]

:[149]
pushi.e 1
pop.v.i self.actcon
pushglb.v global.choice
push.v self.correct_answer
cmp.v.v EQ
bf [151]

:[150]
push.v self.deal_counter
push.e 1
add.i.v
pop.v.v self.deal_counter
pushi.e 0
pop.v.i self.deal_read
pushi.e 226
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 20
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_346_0"@25383
conv.s.v
push.s "\\M4NOW THAT'S WHAT&I'M TALKING AB04T!&YOU GOT [Guts] KID!!/"@25384
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_348_0"@25385
conv.s.v
push.s "\\M2THAT's [[Discomfort&And Abdominal&Pain]] IN MY&[[Guts]]!!/%"@25386
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [152]

:[151]
pushi.e 144
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_353_0"@25387
conv.s.v
push.s "\\M0DEAL OR NO DEAL^1,&THAT'S THE TV SHOW/"@25388
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_354_0"@25389
conv.s.v
push.s "\\M3WHERE THE PEOPLE&WHO DON'T TAKE THE DEAL/"@25390
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_356_0"@25391
conv.s.v
push.s "\\M6GET FILLED WITH BULLETS&FIRED FROM THE HOST'S&MOUTH!!!/%"@25392
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[152]
b [162]

:[153]
push.v self.deal_counter
pushi.e 3
cmp.i.v EQ
bf [158]

:[154]
pushi.e 1
pop.v.i self.actcon
pushglb.v global.choice
push.v self.correct_answer
cmp.v.v EQ
bf [156]

:[155]
push.v self.deal_counter
push.e 1
add.i.v
pop.v.v self.deal_counter
pushi.e 0
pop.v.i self.deal_read
pushi.e 226
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 20
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_368_0"@25393
conv.s.v
push.s "\\M3WHAT!? YOU DOn'T&HAVE ENOUGH&[Wacky Stacks]!?/"@25394
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_369_0"@25395
conv.s.v
push.s "\\M2Kid^1, you're [Killing]&me^1! HAHAHA!^1!&HAHAHA!!!/"@25396
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_370_0"@25397
conv.s.v
push.s "\\M0PLEASE STOP [Killing]&ME I WILL GIVE&Y OU ANOTHER DEAL./%"@25398
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [157]

:[156]
pushi.e 144
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_374_0"@25399
conv.s.v
push.s "\\M2YUM YUM.&DELICIS KROMER./"@25380
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_375_0"@25400
conv.s.v
push.s "\\M3DID YOU HAVE&AN YMORE?/%"@25382
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 50
pop.v.i self.actcon

:[157]
b [162]

:[158]
push.v self.deal_counter
pushi.e 4
cmp.i.v EQ
bf [162]

:[159]
pushglb.v global.choice
push.v self.correct_answer
cmp.v.v EQ
bf [161]

:[160]
pushi.e 20
pop.v.i self.actcon
push.v self.deal_counter
push.e 1
add.i.v
pop.v.v self.deal_counter
pushi.e 0
pop.v.i self.deal_read
pushi.e 226
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 19
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
pushi.e 1
pop.v.i self.correct_answer
push.s "obj_spamton_enemy_slash_Step_0_gml_396_0"@25401
conv.s.v
push.s "#NO DEAL"@25402
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.choicemsg
push.s "obj_spamton_enemy_slash_Step_0_gml_397_0"@25403
conv.s.v
push.s "#YES DEAL"@25404
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.choicemsg
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_400_0"@25405
conv.s.v
push.s "\\M4WHAT!?!? YOU DON\"T&NEED IT!?!?/"@25406
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_401_0"@25407
conv.s.v
push.s "\\M2THAT'S A REAL BIGSHOT&MOVE KID!!^1!&YOU'RE LIKE ME.../"@25408
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_402_0"@25409
conv.s.v
push.s "\\M0[Desperate]/"@25410
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_403_0"@25411
conv.s.v
push.s "\\M2BUT WE KNOW WHAT&WE WANT^1,&DON'T WE!?/"@25412
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_404_0"@25413
conv.s.v
push.s "\\M4W1LD PR1ZES^1,&HOTSINGLE^1,&100 CUSTOMER^1,&AND MOST OF ALL.../"@25414
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_405_0"@25415
conv.s.v
push.s "\\M1[Hyperlink Blocked]./"@25416
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_406_0"@25417
conv.s.v
push.s "\\M3WILL YOU TAKE&THE FINAL DEAL!?/"@25418
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_407_0"@25419
conv.s.v
push.s "\\M4REMEMBER..^1.&THIS IS UP TO YOU^1!&I WOn'T FORCE YOU./%"@25420
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [162]

:[161]
pushi.e 50
pop.v.i self.actcon
pushi.e 144
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_413_0"@25421
conv.s.v
push.s "\\M2YUM YUM GREAT&DEAL KID!!/"@25422
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_414_0"@25423
conv.s.v
push.s "\\M2YOUR A BIGSHOT!^1!&SAVING THE WORLD!!/%"@25424
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[162]
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

:[163]
push.v self.actcon
pushi.e 20
cmp.i.v EQ
bf [165]

:[164]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [166]

:[165]
push.e 0

:[166]
bf [168]

:[167]
pushi.e 25
pop.v.i self.actcon
push.s "\\C2 "@799
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[168]
push.v self.actcon
pushi.e 25
cmp.i.v EQ
bf [171]

:[169]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [171]

:[170]
pushi.e 59
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [172]

:[171]
push.e 0

:[172]
bf [178]

:[173]
pushglb.v global.choice
push.v self.correct_answer
cmp.v.v EQ
bf [175]

:[174]
pushi.e 26
pop.v.i self.actcon
pushi.e 100
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
push.i 231526
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
pushi.e 226
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 2
pop.v.i self.image_xscale
push.v self.remx
push.v self.expand_spam
add.v.v
pop.v.v self.remx
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
b [178]

:[175]
pushi.e 20
pop.v.i self.actcon
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.v self.expand_spam
pushi.e 8
cmp.i.v LT
bf [177]

:[176]
push.v self.image_xscale
push.d 0.25
add.d.v
pop.v.v self.image_xscale
push.v self.expand_spam
pushi.e 1830
conv.i.v
call.i sprite_get_width(argc=1)
push.d 0.125
mul.d.v
add.v.v
pop.v.v self.expand_spam
push.v self.remx
pushi.e 1830
conv.i.v
call.i sprite_get_width(argc=1)
push.d 0.125
mul.d.v
sub.v.v
pop.v.v self.remx

:[177]
push.s "obj_spamton_enemy_slash_Step_0_gml_452_0"@25425
conv.s.v
push.s "\\M0WRONG/%"@25426
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
push.v self.x
pushi.e 10
sub.i.v
push.v self.expand_spam
add.v.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v

:[178]
push.v self.actcon
pushi.e 27
cmp.i.v EQ
bf [180]

:[179]
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_464_0"@25427
conv.s.v
push.s "\\M3THEN A DEAL'S&A DEAL!!!/"@25428
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_spamton_enemy_slash_Step_0_gml_465_0"@25429
conv.s.v
push.s "\\M2PLEASURE DOING&BUSINESS WITH&YOU KID!!!/%"@25430
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
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
pushi.e 28
pop.v.i self.actcon

:[180]
push.v self.actcon
pushi.e 28
cmp.i.v EQ
bf [182]

:[181]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [183]

:[182]
push.e 0

:[183]
bf [185]

:[184]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 309
pop.v.v [array]self.flag
call.i gml_Script_scr_monsterdefeat(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[185]
push.v self.actcon
pushi.e 50
cmp.i.v EQ
bf [188]

:[186]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [188]

:[187]
pushi.e 59
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [189]

:[188]
push.e 0

:[189]
bf [194]

:[190]
pushi.e 105
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.i 231251
setowner.e
push.s "obj_spamton_enemy_slash_Step_0_gml_415_0"@25431
conv.s.v
push.s "* (You felt your KROMER being absorbed...)&* (Wrong choice...?)/%"@25432
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 1
pop.v.i self.actcon
pushglb.v global.gold
pushi.e 25
cmp.i.v GTE
bf [192]

:[191]
push.v global.gold
pushi.e 25
sub.i.v
pop.v.v global.gold
b [193]

:[192]
pushi.e 0
pop.v.i global.gold

:[193]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[194]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [196]

:[195]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [197]

:[196]
push.e 0

:[197]
bf [199]

:[198]
pushi.e 0
pop.v.i self.star
pushi.e 60
conv.i.v
call.i gml_Script_scr_healitemspell(argc=1)
popz.v
pushi.e 2
pop.v.i self.acting
pushi.e 0
pop.v.i self.actcon

:[199]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [201]

:[200]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [202]

:[201]
push.e 0

:[202]
bf [end]

:[203]
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 20
pop.v.v [array]self.flag
call.i gml_Script_scr_nextact(argc=0)
popz.v

:[end]