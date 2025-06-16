.localvar 2 arguments
.localvar 11610 aa 12611
.localvar 6482 xx 12612
.localvar 6483 yy 12613

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e -30
pop.v.i self.y
pushi.e 1
pop.v.b self.visible
pushi.e 1
pop.v.i self.init

:[2]
push.v self.state
pushi.e 7
cmp.i.v LT
bf [5]

:[3]
pushi.e 430
pop.v.i global.turntimer
push.v 697.difficulty
pushi.e 3
cmp.i.v EQ
bf [5]

:[4]
pushi.e 100
pop.v.i global.turntimer

:[5]
push.v self.talking
conv.v.b
bf [28]

:[6]
push.v self.talktimer
push.e 1
add.i.v
pop.v.v self.talktimer
pushi.e 0
pop.v.i local.aa
push.v 697.difficulty
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
push.v self.state
pushi.e 5
cmp.i.v GTE
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e 1
pop.v.i local.aa

:[11]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [14]

:[12]
push.v self.talktimer
pushi.e 5
cmp.i.v GT
bf [14]

:[13]
pushloc.v local.aa
pushi.e 0
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
push.v self.talkmax
pop.v.v self.talktimer

:[17]
call.i gml_Script_button3_h(argc=0)
conv.v.b
bf [20]

:[18]
push.v self.talktimer
pushi.e 1
cmp.i.v GT
bf [20]

:[19]
pushloc.v local.aa
pushi.e 0
cmp.i.v EQ
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
push.v self.talkmax
pop.v.v self.talktimer

:[23]
push.v self.talktimer
push.v self.talkmax
cmp.v.v GTE
bf [27]

:[24]
push.v self.sneo
pushi.e -9
push.v [stacktop]self.talkmax
push.v self.sneo
pushi.e -9
pop.v.v [stacktop]self.talktimer
pushi.e 64
pushenv [26]

:[25]
call.i instance_destroy(argc=0)
popz.v

:[26]
popenv [25]
pushi.e 0
pop.v.b self.talking
pushi.e -10
pop.v.i self.talktimer
push.v self.state
push.e 1
add.i.v
pop.v.v self.state

:[27]
exit.i

:[28]
push.v self.state
pushi.e 6
cmp.i.v EQ
bf [50]

:[29]
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bt [31]

:[30]
push.v self.isattack
conv.v.b
b [32]

:[31]
push.e 1

:[32]
bf [49]

:[33]
push.v self.secondtime
conv.v.b
not.b
bf [36]

:[34]
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
bf [36]

:[35]
pushi.e 0
pop.v.i self.songtime

:[36]
push.v self.isattack
conv.v.b
bf [48]

:[37]
push.v 697.difficulty
pushi.e 3
cmp.i.v EQ
bf [39]

:[38]
pushi.e 662
conv.i.v
push.v 697.y
pushi.e 697
pushi.e 5
push.v [array]self.party
add.v.v
pushi.e 60
add.i.v
push.v 697.x
pushi.e 697
pushi.e 5
push.v [array]self.partx
add.v.v
call.i gml_Script_instance_create(argc=3)
popz.v
b [48]

:[39]
pushi.e 698
pushenv [41]

:[40]
call.i instance_destroy(argc=0)
popz.v

:[41]
popenv [40]
push.v self.sneo
pushi.e -9
pushi.e 1
push.v [array]self.partrot
push.v self.secondtime
conv.v.b
bf [43]

:[42]
pushi.e 30
conv.i.v
b [44]

:[43]
pushi.e 70
conv.i.v

:[44]
pushi.e -26
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_orbitx(argc=5)
push.v self.sneo
pushi.e -9
push.v [stacktop]self.x
add.v.v
push.v self.sneo
pushi.e -9
pushi.e 1
push.v [array]self.partx
add.v.v
push.v self.sneo
pushi.e -9
pushi.e 1
push.v [array]self.partxoff
add.v.v
pop.v.v local.xx
push.v self.sneo
pushi.e -9
pushi.e 1
push.v [array]self.partrot
push.v self.secondtime
conv.v.b
bf [46]

:[45]
pushi.e 30
conv.i.v
b [47]

:[46]
pushi.e 70
conv.i.v

:[47]
pushi.e -26
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_orbity(argc=5)
push.v self.sneo
pushi.e -9
push.v [stacktop]self.y
add.v.v
push.v self.sneo
pushi.e -9
pushi.e 1
push.v [array]self.party
add.v.v
push.v self.sneo
pushi.e -9
pushi.e 1
push.v [array]self.partyoff
add.v.v
pop.v.v local.yy
push.i 231869
setowner.e
push.s "FootballPipis"@25610
conv.s.v
pushi.e -5
push.v 697.myself
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e 698
conv.i.v
pushloc.v local.yy
pushloc.v local.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.type
pushi.e -5
push.v 697.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target

:[48]
pushi.e 7
pop.v.i self.state

:[49]
exit.i

:[50]
push.v self.talktimer
pushi.e 0
cmp.i.v LT
bf [52]

:[51]
push.v self.talktimer
push.e 1
add.i.v
pop.v.v self.talktimer
b [86]

:[52]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [55]

:[53]
push.v self.secondtime
conv.v.b
not.b
bf [54]

:[54]
pushi.e 12
pop.v.i self.ringtimer
pushi.e 54
conv.i.v
call.i gml_Script_snd_play(argc=1)
pop.v.v self.sndphone
pushi.e 0
conv.i.v
push.d 0.7
conv.d.v
push.v self.sndphone
call.i gml_Script_snd_volume(argc=3)
popz.v
pushi.e -10
pop.v.i self.talktimer
push.v self.state
push.e 1
add.i.v
pop.v.v self.state
b [86]

:[55]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [59]

:[56]
pushi.e -10
pop.v.i self.talktimer
push.v self.state
push.e 1
add.i.v
pop.v.v self.state
pushi.e 6
push.v self.sneo
pushi.e -9
pop.v.i [stacktop]self.partmode
push.v self.skipintro
pushi.e 1
cmp.i.v EQ
bf [58]

:[57]
pushi.e 5
pop.v.i self.state

:[58]
b [86]

:[59]
push.v self.state
pushi.e 2
cmp.i.v EQ
bf [64]

:[60]
push.v 697.difficulty
pushi.e 3
cmp.i.v EQ
bf [62]

:[61]
push.s "obj_sneo_phonecall_slash_Step_0_gml_89_0"@25612
conv.s.v
push.s "WHAT!?"@25613
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [63]

:[62]
push.s "obj_sneo_phonecall_slash_Step_0_gml_96_0"@25614
conv.s.v
push.s "WHAT!?"@25613
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 7
push.v self.sneo
pushi.e -9
pop.v.i [stacktop]self.partmode

:[63]
pushi.e 1
pop.v.b self.writeline
b [86]

:[64]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [69]

:[65]
push.v 697.difficulty
pushi.e 3
cmp.i.v EQ
bf [67]

:[66]
pushi.e 5
pop.v.i self.state
b [68]

:[67]
push.s "obj_sneo_phonecall_slash_Step_0_gml_136_0"@25615
conv.s.v
push.s "WHAT? ARE&YOU SERIOUS!?"@25616
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 7
push.v self.sneo
pushi.e -9
pop.v.i [stacktop]self.partmode
pushi.e 1
pop.v.b self.writeline

:[68]
b [86]

:[69]
push.v self.state
pushi.e 4
cmp.i.v EQ
bf [71]

:[70]
pushi.e 5
pop.v.i self.state
b [86]

:[71]
push.v self.state
pushi.e 5
cmp.i.v EQ
bf [86]

:[72]
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [74]

:[73]
push.v self.skipintro
pushi.e 0
cmp.i.v EQ
b [75]

:[74]
push.e 0

:[75]
bf [80]

:[76]
pushi.e 10
pop.v.i self.textboxoffsetx
pushi.e 20
pop.v.i self.textboxoffsety
push.v 697.difficulty
pushi.e 3
cmp.i.v EQ
bf [78]

:[77]
push.s "obj_sneo_phonecall_slash_Step_0_gml_176_0"@25617
conv.s.v
push.s "IT'S FOR&ME!?"@25618
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [79]

:[78]
push.s "obj_sneo_phonecall_slash_Step_0_gml_138_0"@25619
conv.s.v
push.s "... IT'S&FOR YOU."@25620
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.i 236842
setowner.e
pushi.e 3
conv.i.v
push.v self.sneo
pushi.e -9
pushi.e 1
pop.v.v [array]self.partframe

:[79]
pushi.e 40
pop.v.i self.textboxdistance
pushi.e 1
pop.v.b self.writeline
b [81]

:[80]
pushi.e 6
pop.v.i self.state

:[81]
push.v self.sneo
pushi.e -9
pushenv [85]

:[82]
push.v 697.difficulty
pushi.e 3
cmp.i.v NEQ
bf [84]

:[83]
pushi.e 9
pop.v.i self.partmode
push.i 171262
setowner.e
pushi.e -180
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.partrot
push.i 171306
setowner.e
pushi.e 3
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.partframe
b [85]

:[84]
pushi.e 9
pop.v.i self.partmode
push.i 171306
setowner.e
pushi.e 4
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.partframe

:[85]
popenv [82]

:[86]
push.v self.writeline
conv.v.b
bf [end]

:[87]
pushi.e 0
pop.v.b self.writeline
pushi.e 697
pushenv [89]

:[88]
pushi.e 72
pop.v.i global.typer
pushi.e 10
conv.i.v
push.v self.y
pushi.e 60
add.i.v
push.v 624.textboxoffsety
add.v.v
push.v self.x
push.v 624.textboxdistance
sub.v.v
pushi.e 22
add.i.v
push.v 624.textboxoffsetx
sub.v.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v

:[89]
popenv [88]
pushi.e 0
pop.v.i self.talktimer
pushi.e 1
pop.v.b self.talking

:[end]