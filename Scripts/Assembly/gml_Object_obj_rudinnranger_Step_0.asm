.localvar 2 arguments

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [74]

:[1]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v self.talked
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [31]

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
pushi.e 50
pop.v.i global.typer
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
bf [9]

:[8]
push.i 231251
setowner.e
push.s "obj_rudinnranger_slash_Step_0_gml_11_0"@22399
conv.s.v
push.s "Long live&the king!"@22400
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[9]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.s "obj_rudinnranger_slash_Step_0_gml_12_0"@22401
conv.s.v
push.s "Glimmer&glammor"@22402
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[11]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
push.s "obj_rudinnranger_slash_Step_0_gml_13_0"@22403
conv.s.v
push.s "Perish,&Lightners!"@22404
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[13]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [15]

:[14]
push.s "obj_rudinnranger_slash_Step_0_gml_14_0"@22405
conv.s.v
push.s "I'm the,&diamond,&here's the&rough!"@22406
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[15]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [17]

:[16]
push.s "obj_rudinnranger_slash_Step_0_gml_17_0"@22407
conv.s.v
push.s "Enough!&You can't&convince&me!"@22408
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[17]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [30]

:[18]
push.v self.rr
pushi.e 0
cmp.i.v EQ
bt [20]

:[19]
push.v self.rr
pushi.e 1
cmp.i.v EQ
b [21]

:[20]
push.e 1

:[21]
bf [23]

:[22]
push.s "obj_rudinnranger_slash_Step_0_gml_21_0"@22409
conv.s.v
push.s "No one ever&said THAT to&me before&..."@22410
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[23]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bt [25]

:[24]
push.v self.rr
pushi.e 3
cmp.i.v EQ
b [26]

:[25]
push.e 1

:[26]
bf [28]

:[27]
push.s "obj_rudinnranger_slash_Step_0_gml_22_0"@22411
conv.s.v
push.s "The King&never said&THAT to me&before..."@22412
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[28]
push.v self.complimented
pushi.e 2
cmp.i.v GTE
bf [30]

:[29]
push.s "obj_rudinnranger_slash_Step_0_gml_25_0"@22413
conv.s.v
push.s "Yeah it&would be&weird."@22414
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[30]
pushi.e 3
conv.i.v
push.v self.y
push.v self.x
pushi.e 160
sub.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[31]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [33]

:[32]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
b [34]

:[33]
push.e 0

:[34]
bf [40]

:[35]
pushi.e 0
pop.v.i self.rtimer
pushi.e 15
conv.i.v
call.i gml_Script_scr_blconskip(argc=1)
popz.v
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [40]

:[36]
pushi.e 379
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [38]

:[37]
call.i gml_Script_scr_moveheart(argc=0)
popz.v

:[38]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [40]

:[39]
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

:[40]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [42]

:[41]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [43]

:[42]
push.e 0

:[43]
bf [66]

:[44]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 12
cmp.i.v EQ
bf [65]

:[45]
push.v self.object_index
call.i instance_number(argc=1)
pop.v.v self.rr
push.v self.rr
pushi.e 99
cmp.i.v EQ
bf [47]

:[46]
pushi.e 390
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dc
pushi.e 1
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
push.v self.mytarget
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 1
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.ratio
b [48]

:[47]
pushi.e 0
pop.v.i self.visible
pushi.e 397
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dc
pushi.e 60
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.inv
push.v self.mytarget
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 6
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.grazepoints
pushi.e 2
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.timepoints
pushi.e 0
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.active
push.v self.id
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.creator
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.damage

:[48]
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
pushi.e 180
pop.v.i global.turntimer
pushi.e 1
pop.v.i self.attacked
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
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
bf [50]

:[49]
push.i 231921
setowner.e
push.s "obj_rudinnranger_slash_Step_0_gml_81_0"@22415
conv.s.v
push.s "* Rudinn Ranger gleams gallantly."@22416
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[50]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [52]

:[51]
push.s "obj_rudinnranger_slash_Step_0_gml_82_0"@22417
conv.s.v
push.s "* Rudinn Ranger puts a power limiter on its feelings."@22418
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[52]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [54]

:[53]
push.s "obj_rudinnranger_slash_Step_0_gml_83_0"@22419
conv.s.v
push.s "* Rudinn Ranger fantasizes about divine gems."@22420
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[54]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [56]

:[55]
push.s "obj_rudinnranger_slash_Step_0_gml_84_0"@22421
conv.s.v
push.s "* Rudinn Ranger pledges allegiance."@22422
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[56]
push.v self.rr
pushi.e 4
cmp.i.v EQ
bf [58]

:[57]
push.s "obj_rudinnranger_slash_Step_0_gml_85_0"@22423
conv.s.v
push.s "* Smells like crystal."@22424
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[58]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterstatus
pushi.e 1
cmp.i.v EQ
bf [60]

:[59]
push.s "obj_rudinnranger_slash_Step_0_gml_86_0"@22425
conv.s.v
push.s "* Rudinn Ranger is starting to fall asleep."@22426
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[60]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstermaxhp
pushi.e 3
conv.i.d
div.d.v
cmp.v.v LTE
bf [62]

:[61]
push.s "obj_rudinnranger_slash_Step_0_gml_87_0"@22427
conv.s.v
push.s "* Rudinn Ranger's luster begins to fade."@22428
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[62]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v GTE
bf [64]

:[63]
push.i 231251
setowner.e
push.s "obj_rudinnranger_slash_Step_0_gml_88_0"@22429
conv.s.v
push.s "* Rudinn Ranger seems totally flattered."@22430
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[64]
b [66]

:[65]
pushi.e 120
pop.v.i global.turntimer

:[66]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [74]

:[67]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LTE
bf [74]

:[68]
push.v self.battlecancel
pushi.e 1
cmp.i.v EQ
bf [70]

:[69]
push.i 231526
setowner.e
pushi.e 999
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod

:[70]
push.v self.battlecancel
pushi.e 2
cmp.i.v EQ
bf [74]

:[71]
pushi.e 357
pushenv [73]

:[72]
pushi.e 1
pop.v.i self.noreturn

:[73]
popenv [72]
pushi.e 1
pop.v.i self.con
pushi.e 3
pop.v.i self.battlecancel

:[74]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [76]

:[75]
pushi.e 2
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[76]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [78]

:[77]
pushi.e 50
pop.v.i global.typer
push.i 231526
setowner.e
pushi.e 999
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 231251
setowner.e
push.s "obj_rudinnranger_slash_Step_0_gml_122_0"@22431
conv.s.v
push.s "Alright^1,&you convinced&me!!/%"@22432
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
push.v self.y
push.v self.x
pushi.e 160
sub.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v
pushi.e 4
pop.v.i self.con

:[78]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [80]

:[79]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [81]

:[80]
push.e 0

:[81]
bf [85]

:[82]
pushi.e 15
pop.v.i self.hspeed
pushi.e 5
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 357
pushenv [84]

:[83]
pushi.e 17
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm

:[84]
popenv [83]

:[85]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [89]

:[86]
pushi.e 357
pushenv [88]

:[87]
pushi.e 0
pop.v.i self.noreturn

:[88]
popenv [87]
call.i gml_Script_scr_monsterdefeat(argc=0)
popz.v
call.i instance_destroy(argc=0)
popz.v
pushi.e 7
pop.v.i self.con

:[89]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [143]

:[90]
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
bf [92]

:[91]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [93]

:[92]
push.e 0

:[93]
bf [95]

:[94]
pushi.e 1
pop.v.i self.actcon
push.i 231251
setowner.e
push.s "obj_rudinnranger_slash_Step_0_gml_158_0"@22433
conv.s.v
push.s "* RUDINN RANGER - AT 8 DF 0&* Ideally multicolored, but they all wanted to be red./%"@22434
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[95]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [97]

:[96]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [98]

:[97]
push.e 0

:[98]
bf [100]

:[99]
push.s "obj_rudinnranger_slash_Step_0_gml_167_0"@22435
conv.s.v
push.s "* You tried to explain why fighting is bad./"@22436
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_rudinnranger_slash_Step_0_gml_168_0"@22437
conv.s.v
push.s "* But Rudinn Ranger just became \\cBTIRED\\cW.../%"@22438
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.i 231984
setowner.e
push.s "(Tired)"@7993
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstercomment
push.i 231746
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterstatus
pushi.e 50
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[100]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [102]

:[101]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [103]

:[102]
push.e 0

:[103]
bf [116]

:[104]
push.i 231251
setowner.e
push.s "obj_rudinnranger_slash_Step_0_gml_181_0"@22439
conv.s.v
push.s "* Susie COMPLIMENTed the enemy...?/"@22440
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_susface(argc=2)
popz.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.rrr
push.v self.rrr
pushi.e 0
cmp.i.v EQ
bf [106]

:[105]
push.s "obj_rudinnranger_slash_Step_0_gml_184_0"@22442
conv.s.v
push.s "* \"Your outfit is NOT disgusting.\"/%"@22443
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[106]
push.v self.rrr
pushi.e 1
cmp.i.v EQ
bf [108]

:[107]
push.s "obj_rudinnranger_slash_Step_0_gml_185_0"@22444
conv.s.v
push.s "* \"Please keep body tackling the soda machine.\"/%"@22445
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[108]
push.v self.rrr
pushi.e 2
cmp.i.v EQ
bf [110]

:[109]
push.s "obj_rudinnranger_slash_Step_0_gml_186_0"@22446
conv.s.v
push.s "* Nice^1, you guys look like you're gonna kill me./%"@22447
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[110]
pushi.e -5
pushi.e 503
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [112]

:[111]
push.s "obj_rudinnranger_slash_Step_0_gml_190_0"@22448
conv.s.v
push.s "* You told Susie to COMPLIMENT the enemy!/"@22449
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_susface(argc=2)
popz.v
push.s "obj_rudinnranger_slash_Step_0_gml_192_0"@22450
conv.s.v
push.s "* ... uhhh^1, are you serious?/"@22451
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_rudinnranger_slash_Step_0_gml_193_0"@22452
conv.s.v
push.s "\\E2* What good can I say about someone trying to kill us?/"@22453
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_ralface(argc=2)
popz.v
push.s "obj_rudinnranger_slash_Step_0_gml_195_0"@22454
conv.s.v
push.s "* Aww^1, Susie..^1. if you're stuck^1, why not try.../"@22455
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_rudinnranger_slash_Step_0_gml_196_0"@22456
conv.s.v
push.s "* ... saying something you wish someone'd say to you?/"@22457
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
call.i gml_Script_scr_susface(argc=2)
popz.v
push.s "obj_rudinnranger_slash_Step_0_gml_198_0"@22458
conv.s.v
push.s "* .../"@897
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
push.s "obj_rudinnranger_slash_Step_0_gml_199_0"@22459
conv.s.v
push.s "\\E2* \"You are unbanned from free ham sandwich day\"/%"@22460
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 9
pop.v.v [array]self.msg
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 503
pop.v.v [array]self.flag

:[112]
push.v self.complimented
pushi.e 1
cmp.i.v GTE
bf [114]

:[113]
push.i 231251
setowner.e
push.s "obj_rudinnranger_slash_Step_0_gml_205_0"@22461
conv.s.v
push.s "* Susie actively didn't COMPLIMENT the enemy!/"@22462
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_susface(argc=2)
popz.v
push.s "obj_rudinnranger_slash_Step_0_gml_207_0"@22463
conv.s.v
push.s "* Look^1, it's just gonna be weird if I keep going./%"@22464
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 2
pop.v.i self.complimented

:[114]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon
push.v self.complimented
pushi.e 0
cmp.i.v EQ
bf [116]

:[115]
pushi.e 1
pop.v.i self.complimented

:[116]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [118]

:[117]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [119]

:[118]
push.e 0

:[119]
bf [123]

:[120]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [122]

:[121]
pushi.e 100
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v

:[122]
pushi.e 0
pop.v.i self.actcon
call.i gml_Script_scr_attackphase(argc=0)
popz.v

:[123]
push.v self.actcon
pushi.e 10
cmp.i.v EQ
bf [125]

:[124]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [126]

:[125]
push.e 0

:[126]
bf [128]

:[127]
pushi.e 50
pop.v.i global.typer
push.s "obj_rudinnranger_slash_Step_0_gml_235_0"@22465
conv.s.v
push.s "You kidding?&I can't quit.&Stopping you&is my job!/%"@22466
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
push.v self.y
push.v self.x
pushi.e 160
sub.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v
pushi.e 11
pop.v.i self.actcon

:[128]
push.v self.actcon
pushi.e 11
cmp.i.v EQ
bf [130]

:[129]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [131]

:[130]
push.e 0

:[131]
bf [133]

:[132]
pushi.e 45
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 8
pop.v.i global.fe
push.s "obj_rudinnranger_slash_Step_0_gml_245_0"@22467
conv.s.v
push.s "* Really^1?&* What do you spend your money on?/%"@22468
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext(argc=0)
popz.v
pushi.e 12
pop.v.i self.actcon

:[133]
push.v self.actcon
pushi.e 12
cmp.i.v EQ
bf [135]

:[134]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [136]

:[135]
push.e 0

:[136]
bf [138]

:[137]
pushi.e 50
pop.v.i global.typer
push.s "obj_rudinnranger_slash_Step_0_gml_253_0"@22469
conv.s.v
push.s "I'm a normal&person./"@22470
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_rudinnranger_slash_Step_0_gml_254_0"@22471
conv.s.v
push.s "I spend all&my money on&RENT and&MYSTIC GEMs./%"@22472
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
push.v self.y
push.v self.x
pushi.e 160
sub.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v
pushi.e 14
pop.v.i self.actcon

:[138]
push.v self.actcon
pushi.e 14
cmp.i.v EQ
bf [140]

:[139]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [141]

:[140]
push.e 0

:[141]
bf [143]

:[142]
pushi.e 45
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
push.s "obj_rudinnranger_slash_Step_0_gml_264_0"@22473
conv.s.v
push.s "* (Kris^1, let's try CONVINCING them again...)/%"@22474
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext(argc=0)
popz.v
pushi.e 1
pop.v.i self.nexttry
pushi.e 1
pop.v.i self.actcon

:[143]
pushglb.v global.myfight
pushi.e 7
cmp.i.v EQ
bf [end]

:[144]
pushi.e 15
pop.v.i self.hspeed

:[end]