.localvar 2 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
push.v self.blackscreen
pushi.e -9
pushenv [3]

:[2]
pushi.e 500
pop.v.i self.depth

:[3]
popenv [2]
pushi.e 0
pop.v.i self.timer
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i self.con
pushi.e 0
pop.v.i self.right_press

:[4]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [7]

:[5]
pushi.e 1
pop.v.i global.interact
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 120
cmp.i.v GT
bf [7]

:[6]
pushi.e 0
pop.v.i self.timer
pushi.e 3
pop.v.i self.con

:[7]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1215
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
push.i 231459
setowner.e
push.s "flashback_excerpt.ogg"@36335
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
push.d 0.95
conv.d.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e 4
pop.v.i self.con

:[9]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [11]

:[10]
call.i gml_Script_d_ex(argc=0)
conv.v.b
b [12]

:[11]
push.e 0

:[12]
bf [24]

:[13]
pushglb.v global.msc
pushi.e 1217
cmp.i.v EQ
bf [15]

:[14]
pushi.e -5
pushi.e 928
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [24]

:[17]
call.i gml_Script_right_p(argc=0)
conv.v.b
bf [19]

:[18]
call.i gml_Script_scr_getmsgno(argc=0)
pushi.e 5
cmp.i.v LT
b [20]

:[19]
push.e 0

:[20]
bf [24]

:[21]
pushi.e 5
pop.v.i self.remcon
pushi.e -10
pop.v.i self.con
pushi.e 1
pop.v.i self.maked
pushi.e 1218
pop.v.i global.msc
pushi.e -30
pop.v.i self.steptimer
pushi.e 191
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 192
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 64
pushenv [23]

:[22]
call.i instance_destroy(argc=0)
popz.v

:[23]
popenv [22]
push.i 231204
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 928
pop.v.v [array]self.flag

:[24]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [26]

:[25]
call.i gml_Script_d_ex(argc=0)
conv.v.b
b [27]

:[26]
push.e 0

:[27]
bf [44]

:[28]
pushglb.v global.msc
pushi.e 1216
cmp.i.v EQ
bf [36]

:[29]
call.i gml_Script_right_p(argc=0)
conv.v.b
bf [31]

:[30]
call.i gml_Script_scr_getmsgno(argc=0)
pushi.e 5
cmp.i.v LT
b [32]

:[31]
push.e 0

:[32]
bf [36]

:[33]
pushi.e 5
pop.v.i self.remcon
pushi.e -10
pop.v.i self.con
pushi.e 1
pop.v.i self.maked
pushi.e 1217
pop.v.i global.msc
pushi.e 50
pop.v.i self.steptimer
pushi.e 191
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 192
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 64
pushenv [35]

:[34]
call.i instance_destroy(argc=0)
popz.v

:[35]
popenv [34]
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 928
pop.v.v [array]self.flag

:[36]
pushglb.v global.msc
pushi.e 1215
cmp.i.v EQ
bf [44]

:[37]
call.i gml_Script_right_p(argc=0)
conv.v.b
bf [39]

:[38]
call.i gml_Script_scr_getmsgno(argc=0)
pushi.e 11
cmp.i.v LT
b [40]

:[39]
push.e 0

:[40]
bf [44]

:[41]
pushi.e 4
pop.v.i self.remcon
pushi.e -10
pop.v.i self.con
pushi.e 1
pop.v.i self.maked
pushi.e 1216
pop.v.i global.msc
pushi.e 0
pop.v.i self.steptimer
pushi.e 191
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 192
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 64
pushenv [43]

:[42]
call.i instance_destroy(argc=0)
popz.v

:[43]
popenv [42]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 928
pop.v.v [array]self.flag

:[44]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [46]

:[45]
pushi.e 63
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [47]

:[46]
push.e 0

:[47]
bf [49]

:[48]
pushi.e 1217
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 5
pop.v.i self.con

:[49]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [58]

:[50]
pushi.e -5
pushi.e 20
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [54]

:[51]
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 64
pushenv [53]

:[52]
pushi.e 1
pop.v.i self.shake

:[53]
popenv [52]

:[54]
pushi.e -5
pushi.e 20
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [58]

:[55]
pushi.e 64
pushenv [57]

:[56]
pushi.e 0
pop.v.i self.shake

:[57]
popenv [56]

:[58]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [60]

:[59]
pushi.e 63
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [61]

:[60]
push.e 0

:[61]
bf [66]

:[62]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [64]

:[63]
pushi.e 219
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[64]
push.v self.timer
pushi.e 90
cmp.i.v GTE
bf [66]

:[65]
pushi.e 6
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[66]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [68]

:[67]
pushi.e 63
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [69]

:[68]
push.e 0

:[69]
bf [71]

:[70]
pushi.e 1219
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 7
pop.v.i self.con

:[71]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [73]

:[72]
pushi.e 63
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [74]

:[73]
push.e 0

:[74]
bf [79]

:[75]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.blackscreen
pushi.e -9
pushenv [77]

:[76]
push.v self.image_alpha
push.d 0.04
sub.d.v
pop.v.v self.image_alpha

:[77]
popenv [76]
push.v self.timer
pushi.e 30
cmp.i.v GT
bf [79]

:[78]
pushi.e 8
pop.v.i self.con

:[79]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [81]

:[80]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 20
conv.i.v
pushi.e -5
pushi.e 915
pop.v.v [array]self.flag
call.i instance_destroy(argc=0)
popz.v

:[81]
push.v self.con
pushi.e -10
cmp.i.v EQ
bf [end]

:[82]
pushi.e 1
pop.v.i global.facing
push.v 82.x
push.d 0.85
add.d.v
pop.v.v 82.x
push.v 82.y
push.d 0.08
add.d.v
pop.v.v 82.y
push.v self.steptimer
push.e 1
add.i.v
pop.v.v self.steptimer
push.v self.steptimer
pushi.e 60
cmp.i.v GTE
bf [end]

:[83]
push.v self.remcon
pop.v.v self.con
push.v self.maked
pushi.e 1
cmp.i.v EQ
bf [end]

:[84]
pushi.e 0
pop.v.i self.maked
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d

:[end]