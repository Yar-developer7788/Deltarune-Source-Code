.localvar 2 arguments

:[0]
push.v self.lastphase
pushi.e -5
pushi.e 915
push.v [array]self.flag
cmp.v.v NEQ
bf [2]

:[1]
pushi.e 1
pop.v.b self.phasechange
b [3]

:[2]
pushi.e 0
pop.v.b self.phasechange

:[3]
pushi.e -5
pushi.e 915
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e -5
pushi.e 531
push.v [array]self.flag
pushi.e 6
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 197
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 915
pop.v.v [array]self.flag

:[8]
pushbltn.v builtin.room
pushi.e 120
cmp.i.v EQ
bf [26]

:[9]
pushi.e -5
pushi.e 915
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [12]

:[10]
pushi.e -5
pushi.e 916
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
pushi.e -5
pushi.e 452
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [26]

:[14]
push.v self.trashcon
pushi.e 0
cmp.i.v EQ
bf [21]

:[15]
pushi.e 82
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [21]

:[16]
push.v 82.x
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LT
bf [18]

:[17]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.trashcon
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_weirdroute_manipulator_slash_Step_0_gml_36_0"@38149
conv.s.v
push.s "\\E2* K-Kris...^1? Are you sure this isn't the wrong way?/%"@38150
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v

:[21]
push.v self.trashcon
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
pushi.e 0
pop.v.i global.interact
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 452
pop.v.v [array]self.flag
push.v self.trashcon
push.e 1
add.i.v
pop.v.v self.trashcon

:[26]
pushi.e -5
pushi.e 915
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
pushi.e -5
pushi.e 916
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [29]

:[28]
push.e 0

:[29]
bf [36]

:[30]
pushi.e -5
pushi.e 559
push.v [array]self.flag
pushi.e 6
cmp.i.v EQ
bf [33]

:[31]
pushi.e -5
pushi.e 560
push.v [array]self.flag
pushi.e 6
cmp.i.v EQ
bf [33]

:[32]
pushi.e -5
pushi.e 561
push.v [array]self.flag
pushi.e 6
cmp.i.v EQ
b [34]

:[33]
push.e 0

:[34]
bf [36]

:[35]
pushi.e 197
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.d 1.5
conv.d.v
pushi.e -5
pushi.e 915
pop.v.v [array]self.flag

:[36]
pushi.e -5
pushi.e 915
push.v [array]self.flag
push.d 1.5
cmp.d.v EQ
bf [38]

:[37]
pushi.e -5
pushi.e 916
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [39]

:[38]
push.e 0

:[39]
bf [45]

:[40]
pushi.e -5
pushi.e 562
push.v [array]self.flag
pushi.e 6
cmp.i.v EQ
bf [42]

:[41]
pushi.e -5
pushi.e 563
push.v [array]self.flag
pushi.e 6
cmp.i.v EQ
b [43]

:[42]
push.e 0

:[43]
bf [45]

:[44]
pushi.e 197
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.d 1.75
conv.d.v
pushi.e -5
pushi.e 915
pop.v.v [array]self.flag

:[45]
pushi.e -5
pushi.e 915
push.v [array]self.flag
push.d 1.75
cmp.d.v EQ
bf [47]

:[46]
pushi.e -5
pushi.e 916
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [48]

:[47]
push.e 0

:[48]
bf [56]

:[49]
pushi.e -5
pushi.e 564
push.v [array]self.flag
pushi.e 6
cmp.i.v EQ
bf [53]

:[50]
pushi.e -5
pushi.e 565
push.v [array]self.flag
pushi.e 6
cmp.i.v EQ
bf [53]

:[51]
pushi.e -5
pushi.e 532
push.v [array]self.flag
pushi.e 6
cmp.i.v EQ
bf [53]

:[52]
pushi.e -5
pushi.e 533
push.v [array]self.flag
pushi.e 6
cmp.i.v EQ
b [54]

:[53]
push.e 0

:[54]
bf [56]

:[55]
pushi.e 197
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 915
pop.v.v [array]self.flag

:[56]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [62]

:[57]
pushi.e 16
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [59]

:[58]
pushi.e 70
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [60]

:[59]
push.e 0

:[60]
bf [62]

:[61]
pushi.e 13
conv.i.v
call.i gml_Script_scr_weaponget(argc=1)
popz.v
pushi.e 197
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[62]
pushi.e -5
pushi.e 915
push.v [array]self.flag
pushi.e 2
cmp.i.v GTE
bf [64]

:[63]
pushi.e -5
pushi.e 916
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [65]

:[64]
push.e 0

:[65]
bf [72]

:[66]
push.v self.encountercheck
pushi.e 0
cmp.i.v EQ
bf [69]

:[67]
pushi.e 868
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [69]

:[68]
pushi.e 1
pop.v.i self.encountercheck

:[69]
push.v self.encountercheck
pushi.e 1
cmp.i.v EQ
bf [72]

:[70]
pushi.e 868
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [72]

:[71]
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 11
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.encountercheck

:[72]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [78]

:[73]
push.v self.phase
pushi.e 2
cmp.i.v EQ
bf [77]

:[74]
pushi.e 240
pushenv [76]

:[75]
pushi.e 8
pop.v.i self.chasetype

:[76]
popenv [75]

:[77]
pushi.e 1
pop.v.i self.init

:[78]
push.v self.phasechange
pushi.e 1
cmp.b.v EQ
bf [83]

:[79]
pushi.e -5
pushi.e 915
push.v [array]self.flag
pushi.e 4
cmp.i.v EQ
bf [83]

:[80]
pushi.e 178
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [82]

:[81]
pushi.e 1
pop.v.b 178.update
pushi.e 0
pop.v.b self.phasechange
b [83]

:[82]
pushi.e 178
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 0
pop.v.b self.phasechange

:[83]
pushi.e -5
pushi.e 915
push.v [array]self.flag
pushi.e 0
cmp.i.v GT
bf [85]

:[84]
pushi.e -5
pushi.e 916
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [86]

:[85]
push.e 0

:[86]
bf [89]

:[87]
call.i gml_Script_scr_sideb_checkencounters(argc=0)
pushi.e 1
cmp.i.v GTE
bf [89]

:[88]
call.i gml_Script_scr_sideb_fail(argc=0)
popz.v

:[89]
pushi.e -5
pushi.e 916
push.v [array]self.flag
push.v self.failstate
cmp.v.v GT
bf [91]

:[90]
pushi.e 196
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[91]
pushi.e -5
pushi.e 915
push.v [array]self.flag
pop.v.v self.lastphase
pushi.e -5
pushi.e 916
push.v [array]self.flag
pop.v.v self.failstate

:[end]