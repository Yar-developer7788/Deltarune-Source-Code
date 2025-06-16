.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.mydialoguer
pushi.e 0
pop.v.i self.image_speed
pushi.e 1
pop.v.i self.setdepth
pushi.e 0
pop.v.i self.read
pushi.e 0
pop.v.i self.depthbonus
pushi.e 0
pop.v.i self.skip
pushi.e 0
pop.v.i self.extflag
pushi.e 0
pop.v.i self.doafter
pushi.e 0
pop.v.i self.docon
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [6]

:[1]
push.v self.id
call.i gml_Script_scr_darksize(argc=1)
popz.v
pushbltn.v builtin.room
pushi.e 128
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1252
pop.v.i self.sprite_index

:[3]
pushbltn.v builtin.room
pushi.e 130
cmp.i.v EQ
bf [6]

:[4]
pushi.e 3007
pop.v.i self.sprite_index
pushglb.v global.plot
pushi.e 75
cmp.i.v GTE
bf [6]

:[5]
pushi.e 2641
pop.v.i self.sprite_index

:[6]
pushbltn.v builtin.room
pushi.e 51
cmp.i.v EQ
bf [18]

:[7]
pushi.e 1058
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.num
push.s "a golden"@17120
pop.v.s self.colortxt
push.v self.x
pushi.e 170
cmp.i.v GT
bf [12]

:[8]
pushi.e 1
pop.v.i self.num
push.s "a yellow"@17122
pop.v.s self.colortxt
push.v self.y
pushi.e 110
cmp.i.v GT
bf [10]

:[9]
pushi.e 5
pop.v.i self.num
push.s "an orange"@17123
pop.v.s self.colortxt

:[10]
push.v self.y
pushi.e 130
cmp.i.v GT
bf [12]

:[11]
pushi.e 6
pop.v.i self.num
push.s "a green"@17124
pop.v.s self.colortxt

:[12]
push.v self.x
pushi.e 140
cmp.i.v LT
bf [17]

:[13]
pushi.e 2
pop.v.i self.num
push.s "a cyan"@17125
pop.v.s self.colortxt
push.v self.y
pushi.e 110
cmp.i.v GT
bf [15]

:[14]
pushi.e 3
pop.v.i self.num
push.s "a blue"@17126
pop.v.s self.colortxt

:[15]
push.v self.y
pushi.e 130
cmp.i.v GT
bf [17]

:[16]
pushi.e 4
pop.v.i self.num
push.s "a purple"@17127
pop.v.s self.colortxt

:[17]
push.v self.num
pop.v.v self.image_index

:[18]
pushbltn.v builtin.room
pushi.e 35
cmp.i.v EQ
bf [20]

:[19]
pushi.e 1074
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.setdepth
push.i 100000
pop.v.i self.depth

:[20]
pushbltn.v builtin.room
pushi.e 36
cmp.i.v EQ
bf [22]

:[21]
pushi.e 1093
pop.v.i self.sprite_index

:[22]
pushbltn.v builtin.room
pushi.e 33
cmp.i.v EQ
bf [24]

:[23]
pushi.e 887
pop.v.i self.sprite_index

:[24]
pushbltn.v builtin.room
pushi.e 56
cmp.i.v EQ
bf [32]

:[25]
push.v self.x
pushi.e 180
cmp.i.v GT
bf [27]

:[26]
push.v self.y
pushi.e 50
cmp.i.v GT
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
pushi.e 1131
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.depthcancel

:[30]
push.v self.x
pushi.e 230
cmp.i.v GT
bf [32]

:[31]
pushi.e 1133
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.depthcancel

:[32]
pushbltn.v builtin.room
pushi.e 132
cmp.i.v EQ
bf [39]

:[33]
pushi.e 16
conv.i.v
call.i gml_Script_scr_armorcheck_inventory(argc=1)
pushi.e 1
cmp.i.v EQ
bt [35]

:[34]
pushi.e 16
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_armorcheck_equipped(argc=2)
pushi.e 1
cmp.i.v EQ
b [36]

:[35]
push.e 1

:[36]
bf [38]

:[37]
call.i instance_destroy(argc=0)
popz.v
b [39]

:[38]
pushi.e 1276
pop.v.i self.sprite_index

:[39]
pushbltn.v builtin.room
pushi.e 200
cmp.i.v EQ
bf [41]

:[40]
pushi.e 2891
pop.v.i self.sprite_index

:[41]
pushbltn.v builtin.room
pushi.e 167
cmp.i.v EQ
bf [43]

:[42]
push.v self.x
pushi.e 340
cmp.i.v LT
b [44]

:[43]
push.e 0

:[44]
bf [50]

:[45]
pushi.e 3237
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
push.i 880000
pop.v.i self.depth
pushi.e 0
pop.v.i self.setdepth
pushi.e -5
pushi.e 916
push.v [array]self.flag
pushi.e 0
cmp.i.v NEQ
bt [47]

:[46]
pushi.e -5
pushi.e 915
push.v [array]self.flag
pushi.e 7
cmp.i.v LT
b [48]

:[47]
push.e 1

:[48]
bf [50]

:[49]
call.i instance_destroy(argc=0)
popz.v

:[50]
pushbltn.v builtin.room
pushi.e 100
cmp.i.v EQ
bf [52]

:[51]
pushi.e 1252
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed

:[52]
pushbltn.v builtin.room
pushi.e 191
cmp.i.v EQ
bf [54]

:[53]
pushi.e 2952
pop.v.i self.sprite_index

:[54]
pushbltn.v builtin.room
pushi.e 104
cmp.i.v EQ
bf [60]

:[55]
push.v self.x
pushi.e 945
cmp.i.v EQ
bf [57]

:[56]
push.v self.y
pushi.e 495
cmp.i.v EQ
b [58]

:[57]
push.e 0

:[58]
bf [60]

:[59]
pushi.e 1285
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
call.i gml_Script_scr_depth(argc=0)
popz.v

:[60]
pushbltn.v builtin.room
pushi.e 106
cmp.i.v EQ
bf [63]

:[61]
pushi.e 3159
pop.v.i self.sprite_index
pushglb.v global.plot
pushi.e 150
cmp.i.v LT
bf [63]

:[62]
call.i instance_destroy(argc=0)
popz.v

:[63]
pushbltn.v builtin.room
pushi.e 137
cmp.i.v EQ
bf [70]

:[64]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 3234
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
push.i 8999999
pop.v.i self.depth
pushi.e -5
pushi.e 915
push.v [array]self.flag
pushi.e 5
cmp.i.v GT
bf [66]

:[65]
pushi.e -5
pushi.e 916
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [67]

:[66]
push.e 0

:[67]
bf [69]

:[68]
pushi.e 1
pop.v.i self.image_index
b [70]

:[69]
pushi.e 0
pop.v.i self.image_index

:[70]
pushbltn.v builtin.room
pushi.e 91
cmp.i.v EQ
bf [72]

:[71]
pushi.e 2999
pop.v.i self.sprite_index

:[72]
push.v self.setdepth
pushi.e 1
cmp.i.v EQ
bf [74]

:[73]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[74]
push.v self.depth
push.v self.depthbonus
add.v.v
pop.v.v self.depth

:[end]