.localvar 2 arguments

:[0]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v
push.i 68097
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm
pushbltn.v builtin.room
pop.v.v global.currentroom
pushi.e 0
pop.v.i self.autorun
pushi.e 0
pop.v.i self.bg
pushi.e 1459
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
pushi.e 0
pop.v.i self.battlemode
pushi.e 1501
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
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
pushi.e 4210
pop.v.i self.dsprite
pushi.e 4207
pop.v.i self.rsprite
pushi.e 4212
pop.v.i self.usprite
pushi.e 4209
pop.v.i self.lsprite
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
pushi.e 4200
pop.v.i self.dsprite
pushi.e 4202
pop.v.i self.rsprite
pushi.e 4204
pop.v.i self.lsprite
pushi.e 4203
pop.v.i self.usprite

:[8]
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
pushglb.v global.interact
pushi.e 3
cmp.i.v EQ
bf [47]

:[20]
pushglb.v global.entrance
pushi.e 0
cmp.i.v GT
bf [47]

:[21]
pushi.e 0
pop.v.i global.interact
pushglb.v global.entrance
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
push.v 1431.x
pop.v.v self.x
push.v 1431.y
pop.v.v self.y

:[23]
pushglb.v global.entrance
pushi.e 2
cmp.i.v EQ
bf [25]

:[24]
push.v 1432.x
pop.v.v self.x
push.v 1432.y
pop.v.v self.y

:[25]
pushglb.v global.entrance
pushi.e 4
cmp.i.v EQ
bf [27]

:[26]
push.v 1433.x
pop.v.v self.x
push.v 1433.y
pop.v.v self.y

:[27]
pushglb.v global.entrance
pushi.e 5
cmp.i.v EQ
bf [29]

:[28]
push.v 1434.x
pop.v.v self.x
push.v 1434.y
pop.v.v self.y

:[29]
pushglb.v global.entrance
pushi.e 6
cmp.i.v EQ
bf [31]

:[30]
push.v 1435.x
pop.v.v self.x
push.v 1435.y
pop.v.v self.y

:[31]
pushglb.v global.entrance
pushi.e 7
cmp.i.v EQ
bf [33]

:[32]
push.v 1436.x
pop.v.v self.x
push.v 1436.y
pop.v.v self.y

:[33]
pushglb.v global.entrance
pushi.e 18
cmp.i.v EQ
bf [35]

:[34]
push.v 1437.x
pop.v.v self.x
push.v 1437.y
pop.v.v self.y

:[35]
pushglb.v global.entrance
pushi.e 19
cmp.i.v EQ
bf [37]

:[36]
push.v 1438.x
pop.v.v self.x
push.v 1438.y
pop.v.v self.y

:[37]
pushglb.v global.entrance
pushi.e 20
cmp.i.v EQ
bf [39]

:[38]
push.v 1439.x
pop.v.v self.x
push.v 1439.y
pop.v.v self.y

:[39]
pushglb.v global.entrance
pushi.e 21
cmp.i.v EQ
bf [41]

:[40]
push.v 1440.x
pop.v.v self.x
push.v 1440.y
pop.v.v self.y

:[41]
pushglb.v global.entrance
pushi.e 22
cmp.i.v EQ
bf [43]

:[42]
push.v 1441.x
pop.v.v self.x
push.v 1441.y
pop.v.v self.y

:[43]
pushglb.v global.entrance
pushi.e 23
cmp.i.v EQ
bf [45]

:[44]
push.v 1442.x
pop.v.v self.x
push.v 1442.y
pop.v.v self.y

:[45]
pushglb.v global.entrance
pushi.e 24
cmp.i.v EQ
bf [47]

:[46]
push.v 1443.x
pop.v.v self.x
push.v 1443.y
pop.v.v self.y

:[47]
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

:[48]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [50]

:[49]
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
b [48]

:[50]
pushi.e 0
pop.v.b self.menuOpened

:[end]