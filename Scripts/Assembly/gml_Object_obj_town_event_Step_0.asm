.localvar 2 arguments

:[0]
pushbltn.v builtin.room
pushi.e 37
cmp.i.v EQ
bf [52]

:[1]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [3]

:[2]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
push.i 68097
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 21
pop.v.i self.con

:[6]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1
pop.v.i global.interact

:[8]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [14]

:[9]
pushi.e 1
pop.v.i global.interact
pushi.e 1068
conv.i.v
push.v self.bnpc
pushi.e -9
push.v [stacktop]self.y
pushi.e 14
sub.i.v
push.v self.bnpc
pushi.e -9
push.v [stacktop]self.x
pushi.e 1
sub.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.banim
push.v self.bnpc
pushi.e -9
push.v [stacktop]self.depth
push.v self.banim
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.bnpc
pushi.e -9
pushenv [11]

:[10]
pushi.e 0
pop.v.i self.visible

:[11]
popenv [10]
push.v self.banim
pushi.e -9
pushenv [13]

:[12]
push.d 0.334
pop.v.d self.image_speed

:[13]
popenv [12]
pushi.e 23
pop.v.i self.con
pushi.e 36
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[14]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [22]

:[15]
push.v self.bnpc
pushi.e -9
pushenv [17]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[17]
popenv [16]
pushi.e 103
conv.i.v
push.v self.banim
pushi.e -9
push.v [stacktop]self.y
pushi.e 18
add.i.v
push.v self.banim
pushi.e -9
push.v [stacktop]self.x
pushi.e 9
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bnpc
push.v self.bnpc
pushi.e -9
pushenv [19]

:[18]
pushi.e 1069
pop.v.i self.sprite_index

:[19]
popenv [18]
push.v self.banim
pushi.e -9
pushenv [21]

:[20]
call.i instance_destroy(argc=0)
popz.v

:[21]
popenv [20]
pushi.e 25
pop.v.i self.con
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[22]
push.v self.con
pushi.e 26
cmp.i.v EQ
bf [24]

:[23]
pushi.e 19
pop.v.i global.fc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.fe
pushi.e 340
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
pushi.e 27
pop.v.i self.con
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[24]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [26]

:[25]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [27]

:[26]
push.e 0

:[27]
bf [30]

:[28]
pushi.e 0
pop.v.i global.interact
pushi.e 28
pop.v.i self.con
pushi.e -5
pushi.e 271
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 271
pop.v.v [array]self.flag

:[30]
push.v self.con
pushi.e 70
cmp.i.v EQ
bf [32]

:[31]
pushi.e -5
pushi.e 273
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [33]

:[32]
push.e 0

:[33]
bf [47]

:[34]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [47]

:[35]
push.v 82.x
pushi.e 1060
cmp.i.v LTE
bt [38]

:[36]
push.v 82.x
pushi.e 1200
cmp.i.v GTE
bt [38]

:[37]
push.v 82.y
pushi.e 120
cmp.i.v GTE
b [39]

:[38]
push.e 1

:[39]
bf [47]

:[40]
pushi.e 1
pop.v.i global.interact
push.v 82.x
pushi.e 1060
cmp.i.v LTE
bf [42]

:[41]
pushi.e 1
pop.v.i global.facing

:[42]
push.v 82.x
pushi.e 1200
cmp.i.v GTE
bf [44]

:[43]
pushi.e 3
pop.v.i global.facing

:[44]
push.v 82.y
pushi.e 120
cmp.i.v GTE
bf [46]

:[45]
pushi.e 2
pop.v.i global.facing

:[46]
pushi.e 71
pop.v.i self.con
pushi.e 14
pop.v.i global.typer
pushi.e 6
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 380
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[47]
push.v self.con
pushi.e 71
cmp.i.v EQ
bf [49]

:[48]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [50]

:[49]
push.e 0

:[50]
bf [52]

:[51]
pushi.e 72
pop.v.i self.con
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 273
pop.v.v [array]self.flag
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing

:[52]
pushbltn.v builtin.room
pushi.e 39
cmp.i.v EQ
bf [69]

:[53]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [55]

:[54]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [56]

:[55]
push.e 0

:[56]
bf [58]

:[57]
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 51
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 28
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[58]
push.v self.con
pushi.e 51
cmp.i.v EQ
bf [62]

:[59]
pushi.e 1
pop.v.i global.interact
push.v self.policewindow
pushi.e -9
pushenv [61]

:[60]
push.v self.image_index
push.d 0.1
add.d.v
pop.v.v self.image_index

:[61]
popenv [60]

:[62]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [64]

:[63]
push.i 231251
setowner.e
push.s "obj_town_event_slash_Step_0_gml_120_0"@15314
conv.s.v
push.s "* (They just closed the blinds...)/%"@15315
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 53
pop.v.i self.con

:[64]
push.v self.con
pushi.e 53
cmp.i.v EQ
bf [66]

:[65]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [67]

:[66]
push.e 0

:[67]
bf [69]

:[68]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 55
pop.v.i self.con

:[69]
pushbltn.v builtin.room
pushi.e 32
cmp.i.v EQ
bf [end]

:[70]
push.v self.con
pushi.e 60
cmp.i.v EQ
bf [72]

:[71]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [73]

:[72]
push.e 0

:[73]
bf [75]

:[74]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_pause(argc=1)
popz.v
pushi.e 50
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 61
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[75]
push.v self.con
pushi.e 61
cmp.i.v EQ
bf [77]

:[76]
pushi.e 1
pop.v.i global.interact

:[77]
push.v self.con
pushi.e 62
cmp.i.v EQ
bf [89]

:[78]
pushi.e 0
pop.v.i self.specflush
pushi.e 58
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.flush
pushi.e 1
add.i.v
pop.v.v self.flush
push.i 231251
setowner.e
push.s "obj_town_event_slash_Step_0_gml_157_0"@15317
conv.s.v
push.s "* (You flushed the toilet!)/%"@15318
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.flush
pushi.e 3
cmp.i.v EQ
bf [80]

:[79]
pushi.e 1
pop.v.i self.specflush

:[80]
push.v self.flush
pushi.e 6
cmp.i.v EQ
bf [82]

:[81]
pushi.e 2
pop.v.i self.specflush

:[82]
push.v self.flush
pushi.e 9
cmp.i.v EQ
bf [84]

:[83]
pushi.e 3
pop.v.i self.specflush

:[84]
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 63
pop.v.i self.con
push.v self.specflush
pushi.e 0
cmp.i.v GT
bf [86]

:[85]
pushglb.v global.plot
pushi.e 210
cmp.i.v GTE
b [87]

:[86]
push.e 0

:[87]
bf [89]

:[88]
pushi.e 67
pop.v.i self.con

:[89]
push.v self.con
pushi.e 63
cmp.i.v EQ
bf [91]

:[90]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [92]

:[91]
push.e 0

:[92]
bf [94]

:[93]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_resume(argc=1)
popz.v
pushi.e 64
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing

:[94]
push.v self.con
pushi.e 67
cmp.i.v EQ
bf [96]

:[95]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [97]

:[96]
push.e 0

:[97]
bf [99]

:[98]
pushi.e 49
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 68
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[99]
push.v self.con
pushi.e 69
cmp.i.v EQ
bf [end]

:[100]
push.v self.specflush
pushi.e 1
cmp.i.v EQ
bf [102]

:[101]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_torface(argc=2)
popz.v
push.i 231251
setowner.e
push.s "obj_town_event_slash_Step_0_gml_186_0"@15319
conv.s.v
push.s "* Kris...^1?&* Is everything..^1. alright in there?/%"@15320
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[102]
push.v self.specflush
pushi.e 2
cmp.i.v EQ
bf [104]

:[103]
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_torface(argc=2)
popz.v
push.s "obj_town_event_slash_Step_0_gml_191_0"@15321
conv.s.v
push.s "* Kris^1, WHAT are you doing?/"@15322
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_town_event_slash_Step_0_gml_192_0"@15323
conv.s.v
push.s "* You did not put a bath bomb in the toilet again^1, did you?/%"@15324
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[104]
push.v self.specflush
pushi.e 3
cmp.i.v EQ
bf [106]

:[105]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_torface(argc=2)
popz.v
push.s "obj_town_event_slash_Step_0_gml_197_0"@15325
conv.s.v
push.s "* Kris^1, if anything bad happens^1, you are paying for the plumbing bill./%"@15326
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[106]
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 63
pop.v.i self.con
pushi.e 0
pop.v.i self.specflush

:[end]