.localvar 2 arguments

:[0]
call.i gml_Script_scr_depth(argc=0)
popz.v
pushbltn.v builtin.room
pop.v.v global.currentroom
call.i gml_Script_scr_initialize_charnames(argc=0)
popz.v
pushi.e 0
pop.v.i self.autorun
pushi.e 0
pop.v.i self.bg
pushi.e 185
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 1
pop.v.i self.bg

:[2]
pushi.e 0
pop.v.i self.stepping
pushi.e 0
pop.v.i self.stepped
pushi.e 1
pop.v.i self.drawbattlemode
pushi.e 0
pop.v.i self.battlemode
pushi.e 248
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.battleheart
pushi.e 0
push.v self.battleheart
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 0
push.v self.battleheart
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 0
pop.v.i self.battlealpha
pushi.e 0
pop.v.i self.becamebattle
pushi.e 0
pop.v.i self.sliding
pushi.e 0
pop.v.i self.becamesword
pushi.e 0
pop.v.i self.swordmode
pushi.e 0
pop.v.i self.swordcon
pushi.e 0
pop.v.i self.swordtimer
pushi.e 0
pop.v.i self.stop_movement
pushi.e 0
pop.v.i self.roomenterfreezeend
pushglb.v global.darkzone
pop.v.v self.darkmode
push.v self.darkmode
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.stepping
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[4]
pushi.e 0
pop.v.i self.cutscene
pushi.e 0
pop.v.i self.press_l
pushi.e 0
pop.v.i self.press_r
pushi.e 0
pop.v.i self.press_d
pushi.e 0
pop.v.i self.press_u
pushi.e 0
pop.v.i self.px
pushi.e 0
pop.v.i self.py
pushi.e 0
pop.v.i self.wallcheck
pushi.e 3
pop.v.i self.wspeed
pushi.e 3
pop.v.i self.bwspeed
push.v self.darkmode
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 4
pop.v.i self.bwspeed
pushi.e 4
pop.v.i self.wspeed

:[6]
pushi.e 0
pop.v.i self.run
pushi.e 0
pop.v.i self.runtimer
pushi.e 0
pop.v.i self.runcounter
pushi.e 0
pop.v.i self.subxspeed
pushi.e 0
pop.v.i self.subyspeed
pushi.e 0
pop.v.i self.subx
pushi.e 0
pop.v.i self.suby
pushi.e 0
pop.v.i self.walkanim
pushi.e 0
pop.v.i self.walkbuffer
pushi.e 0
pop.v.i self.walktimer
pushi.e 0
pop.v.i self.image_speed
pushi.e 661
pop.v.i self.dsprite
pushi.e 658
pop.v.i self.rsprite
pushi.e 663
pop.v.i self.usprite
pushi.e 660
pop.v.i self.lsprite
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
pushi.e 651
pop.v.i self.dsprite
pushi.e 653
pop.v.i self.rsprite
pushi.e 655
pop.v.i self.lsprite
pushi.e 654
pop.v.i self.usprite

:[8]
pushi.e 1
pop.v.i self.swordfacing
push.v self.rsprite
pop.v.v self.swordsprite
pushi.e 0
pop.v.i self.fun
pushglb.v global.facing
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
push.v self.dsprite
pop.v.v self.sprite_index

:[10]
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.v self.rsprite
pop.v.v self.sprite_index

:[12]
pushglb.v global.facing
pushi.e 2
cmp.i.v EQ
bf [14]

:[13]
push.v self.usprite
pop.v.v self.sprite_index

:[14]
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [16]

:[15]
push.v self.lsprite
pop.v.v self.sprite_index

:[16]
pushi.e 0
pop.v.i self.onebuffer
pushi.e 0
pop.v.i self.twobuffer
pushi.e 0
pop.v.i self.threebuffer
pushi.e 0
pop.v.i global.menuno
pushi.e 0
pop.v.i self.i

:[17]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [19]

:[18]
push.i 231307
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.menucoord
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [17]

:[19]
pushglb.v global.entrance
pop.v.v self.cameFromEntrance
pushglb.v global.interact
pushi.e 3
cmp.i.v EQ
bf [98]

:[20]
pushi.e 0
pop.v.i self.noentrancefound
pushglb.v global.entrance
pushi.e 0
cmp.i.v GT
bf [98]

:[21]
pushi.e -5
pushi.e 21
push.v [array]self.flag
pushi.e 0
cmp.i.v LTE
bf [23]

:[22]
pushi.e 0
pop.v.i global.interact
push.i 231204
setowner.e
pushi.e -10
conv.i.v
pushi.e -5
pushi.e 21
pop.v.v [array]self.flag
pushi.e 1
pop.v.i self.roomenterfreezeend

:[23]
pushglb.v global.entrance
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [38]

:[24]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [42]

:[25]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [46]

:[26]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [50]

:[27]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [54]

:[28]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [58]

:[29]
dup.v 0
pushi.e 18
cmp.i.v EQ
bt [62]

:[30]
dup.v 0
pushi.e 19
cmp.i.v EQ
bt [66]

:[31]
dup.v 0
pushi.e 20
cmp.i.v EQ
bt [70]

:[32]
dup.v 0
pushi.e 21
cmp.i.v EQ
bt [74]

:[33]
dup.v 0
pushi.e 22
cmp.i.v EQ
bt [78]

:[34]
dup.v 0
pushi.e 23
cmp.i.v EQ
bt [82]

:[35]
dup.v 0
pushi.e 24
cmp.i.v EQ
bt [86]

:[36]
b [90]

:[37]
b [91]

:[38]
pushi.e 156
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [40]

:[39]
push.v 156.y
push.v 156.x
call.i gml_Script_setxy(argc=2)
popz.v
b [41]

:[40]
pushi.e 1
pop.v.i self.noentrancefound

:[41]
b [91]

:[42]
pushi.e 157
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [44]

:[43]
push.v 157.y
push.v 157.x
call.i gml_Script_setxy(argc=2)
popz.v
b [45]

:[44]
pushi.e 1
pop.v.i self.noentrancefound

:[45]
b [91]

:[46]
pushi.e 158
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [48]

:[47]
push.v 158.y
push.v 158.x
call.i gml_Script_setxy(argc=2)
popz.v
b [49]

:[48]
pushi.e 1
pop.v.i self.noentrancefound

:[49]
b [91]

:[50]
pushi.e 159
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [52]

:[51]
push.v 159.y
push.v 159.x
call.i gml_Script_setxy(argc=2)
popz.v
b [53]

:[52]
pushi.e 1
pop.v.i self.noentrancefound

:[53]
b [91]

:[54]
pushi.e 160
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [56]

:[55]
push.v 160.y
push.v 160.x
call.i gml_Script_setxy(argc=2)
popz.v
b [57]

:[56]
pushi.e 1
pop.v.i self.noentrancefound

:[57]
b [91]

:[58]
pushi.e 161
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [60]

:[59]
push.v 161.y
push.v 161.x
call.i gml_Script_setxy(argc=2)
popz.v
b [61]

:[60]
pushi.e 1
pop.v.i self.noentrancefound

:[61]
b [91]

:[62]
pushi.e 162
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [64]

:[63]
push.v 162.y
push.v 162.x
call.i gml_Script_setxy(argc=2)
popz.v
b [65]

:[64]
pushi.e 1
pop.v.i self.noentrancefound

:[65]
b [91]

:[66]
pushi.e 163
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [68]

:[67]
push.v 163.y
push.v 163.x
call.i gml_Script_setxy(argc=2)
popz.v
b [69]

:[68]
pushi.e 1
pop.v.i self.noentrancefound

:[69]
b [91]

:[70]
pushi.e 164
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [72]

:[71]
push.v 164.y
push.v 164.x
call.i gml_Script_setxy(argc=2)
popz.v
b [73]

:[72]
pushi.e 1
pop.v.i self.noentrancefound

:[73]
b [91]

:[74]
pushi.e 165
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [76]

:[75]
push.v 165.y
push.v 165.x
call.i gml_Script_setxy(argc=2)
popz.v
b [77]

:[76]
pushi.e 1
pop.v.i self.noentrancefound

:[77]
b [91]

:[78]
pushi.e 166
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [80]

:[79]
push.v 166.y
push.v 166.x
call.i gml_Script_setxy(argc=2)
popz.v
b [81]

:[80]
pushi.e 1
pop.v.i self.noentrancefound

:[81]
b [91]

:[82]
pushi.e 167
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [84]

:[83]
push.v 167.y
push.v 167.x
call.i gml_Script_setxy(argc=2)
popz.v
b [85]

:[84]
pushi.e 1
pop.v.i self.noentrancefound

:[85]
b [91]

:[86]
pushi.e 168
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [88]

:[87]
push.v 168.y
push.v 168.x
call.i gml_Script_setxy(argc=2)
popz.v
b [89]

:[88]
pushi.e 1
pop.v.i self.noentrancefound

:[89]
b [91]

:[90]
pushi.e 1
pop.v.i self.noentrancefound

:[91]
popz.v
push.v self.noentrancefound
pushi.e 1
cmp.i.v EQ
bf [98]

:[92]
pushi.e 141
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [97]

:[93]
pushi.e 141
pushenv [96]

:[94]
push.v self.image_index
pushglb.v global.entrance
cmp.v.v EQ
bf [96]

:[95]
push.v self.x
pop.v.v other.x
push.v self.y
pop.v.v other.y

:[96]
popenv [94]
b [98]

:[97]
pushbltn.v builtin.room_height
pushi.e 2
conv.i.d
div.d.v
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
call.i gml_Script_setxy(argc=2)
popz.v
push.s "entrance not found, setting to center of room"@15371
conv.s.v
call.i gml_Script_debug_message(argc=1)
popz.v
push.s "entrance requested was global.entrance="@15372
pushglb.v global.entrance
call.i string(argc=1)
add.v.s
call.i gml_Script_debug_message(argc=1)
popz.v

:[98]
push.v self.sprite_width
pop.v.v self.initwd
push.v self.sprite_height
pop.v.v self.initht
push.v self.sprite_width
pop.v.v self.mywidth
push.v self.sprite_height
pop.v.v self.myheight
pushi.e 0
pop.v.i self.i

:[99]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [101]

:[100]
push.i 231562
setowner.e
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.df
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.itemdf
pushi.e 0
pushaf.e
add.v.v
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.itemdf
pushi.e 1
pushaf.e
add.v.v
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.itemdf
pushi.e 2
pushaf.e
add.v.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.battledf
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [99]

:[101]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [end]

:[102]
pushi.e -5
pushi.e 302
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[103]
pushi.e 74
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v

:[end]