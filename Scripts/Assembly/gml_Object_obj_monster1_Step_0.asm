.localvar 2 arguments

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [37]

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
bf [19]

:[5]
pushi.e 1
pop.v.i self.abletotarget
pushi.e -5
pushi.e 0
push.v [array]self.charcantarget
pushi.e 0
cmp.i.v EQ
bf [8]

:[6]
pushi.e -5
pushi.e 1
push.v [array]self.charcantarget
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
pushi.e -5
pushi.e 2
push.v [array]self.charcantarget
pushi.e 0
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e 0
pop.v.i self.abletotarget

:[11]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.mytarget
push.v self.abletotarget
pushi.e 1
cmp.i.v EQ
bf [15]

:[12]
pushi.e -5
push.v self.mytarget
conv.v.i
push.v [array]self.charcantarget
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.mytarget
b [12]

:[14]
b [16]

:[15]
pushi.e 3
pop.v.i self.target

:[16]
push.i 231544
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.mytarget
conv.v.i
pop.v.v [array]self.targeted
pushi.e 363
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 7
pop.v.i global.typer
push.i 231251
setowner.e
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v GTE
bf [18]

:[17]
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[18]
pushi.e 64
conv.i.v
push.v self.y
pushi.e 30
sub.i.v
push.v self.x
pushi.e 60
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mywriter
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[19]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [32]

:[23]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [25]

:[24]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
push.v self.talkmax
pop.v.v self.talktimer

:[28]
push.v self.talktimer
pushi.e 1
add.i.v
pop.v.v self.talktimer
push.v self.talktimer
push.v self.talkmax
cmp.v.v GTE
bf [32]

:[29]
pushi.e 64
pushenv [31]

:[30]
call.i instance_destroy(argc=0)
popz.v

:[31]
popenv [30]
pushi.e 2
pop.v.i global.mnfight

:[32]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [34]

:[33]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
push.v self.obj_simplecontroller
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.simp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.v self.simp
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.mytarget
push.v self.simp
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 1
pop.v.i self.attacked
pushi.e 4
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.rr

:[37]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [66]

:[38]
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
bf [40]

:[39]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [41]

:[40]
push.e 0

:[41]
bf [48]

:[42]
pushi.e 1
pop.v.i self.actcon
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushglb.v global.battletyper
pop.v.v global.typer
pushi.e 64
conv.i.v
push.v self.yy
pushi.e 376
add.i.v
push.v self.xx
pushi.e 30
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.battlewriter
pushglb.v global.fc
pushi.e 0
cmp.i.v NEQ
bf [44]

:[43]
pushi.e 61
conv.i.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.xx
pushi.e 26
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.myface

:[44]
push.v self.acting
pushi.e 1
cmp.i.v EQ
bf [46]

:[45]
push.i 231526
setowner.e
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]self.mercymod
pushi.e 120
add.i.v
pop.i.v [array]self.mercymod

:[46]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v GTE
bf [48]

:[47]
push.i 231251
setowner.e
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[48]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [61]

:[49]
push.v self.acttimer
pushi.e 0
cmp.i.v EQ
bf [52]

:[50]
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushglb.v global.battletyper
pop.v.v global.typer
pushi.e 64
conv.i.v
push.v self.yy
pushi.e 376
add.i.v
push.v self.xx
pushi.e 130
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.battlewriter
pushglb.v global.fc
pushi.e 0
cmp.i.v NEQ
bf [52]

:[51]
pushi.e 61
conv.i.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.xx
pushi.e 26
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.myface

:[52]
push.v self.acttimer
pushi.e 20
cmp.i.v EQ
bf [58]

:[53]
push.i 231559
setowner.e
push.v self.myself
pushi.e -5
pushi.e 0
pop.v.v [array]self.chartarget
push.v self.myself
pushi.e -5
pushi.e 1
pop.v.v [array]self.chartarget
push.i 231580
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.charspecial
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.charspecial
pushi.e -5
pushi.e 0
push.v [array]self.charinstance
pushi.e -9
pushenv [55]

:[54]
pushi.e 2
pop.v.i self.state

:[55]
popenv [54]
pushi.e -5
pushi.e 1
push.v [array]self.charinstance
pushi.e -9
pushenv [57]

:[56]
pushi.e 2
pop.v.i self.state

:[57]
popenv [56]

:[58]
push.v self.acttimer
pushi.e 40
cmp.i.v EQ
bf [60]

:[59]
pushi.e 1
pop.v.i self.actcon

:[60]
push.v self.acttimer
pushi.e 1
add.i.v
pop.v.v self.acttimer

:[61]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [63]

:[62]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [64]

:[63]
push.e 0

:[64]
bf [66]

:[65]
pushi.e 0
pop.v.i self.actcon
call.i gml_Script_scr_attackphase(argc=0)
popz.v

:[66]
push.v self.x
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 800
add.i.v
cmp.v.v GT
bf [68]

:[67]
pushglb.v global.myfight
pushi.e 3
cmp.i.v NEQ
b [69]

:[68]
push.e 0

:[69]
bf [end]

:[70]
call.i instance_destroy(argc=0)
popz.v

:[end]