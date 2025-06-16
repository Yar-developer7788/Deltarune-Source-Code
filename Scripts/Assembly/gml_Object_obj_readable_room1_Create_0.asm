.localvar 2 arguments
.localvar 18264 spamdoor 7513
.localvar 18265 spamcollider 7514
.localvar 18266 plaque 7515

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.read
pushi.e 0
pop.v.i self.tempvar
pushi.e 0
pop.v.i self.extflag
pushi.e -1
pop.v.i self.mydialoguer
pushi.e 0
pop.v.i self.skip
pushi.e 0
pop.v.b self.selfdestruct
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [end]

:[1]
pushbltn.v builtin.room
pushi.e 62
cmp.i.v EQ
bf [4]

:[2]
push.v self.x
pushi.e 270
cmp.i.v GTE
bf [4]

:[3]
push.v self.x
pushi.e 470
cmp.i.v LTE
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 946
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dwt
push.v self.image_xscale
push.v self.dwt
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.dwt
pushi.e -9
pop.v.v [stacktop]self.image_yscale
call.i instance_destroy(argc=0)
popz.v

:[7]
pushbltn.v builtin.room
pushi.e 118
cmp.i.v EQ
bf [11]

:[8]
pushi.e -5
pushi.e 386
push.v [array]self.flag
pushi.e 1
cmp.i.v GTE
bf [10]

:[9]
pushi.e 154
conv.i.v
pushi.e 200
conv.i.v
pushi.e 275
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.spamdoor
push.d 4.5
pushloc.v local.spamdoor
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.d 4.5
pushloc.v local.spamdoor
pushi.e -9
pop.v.d [stacktop]self.image_yscale
call.i instance_destroy(argc=0)
popz.v
b [11]

:[10]
pushi.e 1144
conv.i.v
pushi.e 257
conv.i.v
pushi.e 241
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.spamcollider
pushi.e 4
pushloc.v local.spamcollider
pushi.e -9
pop.v.i [stacktop]self.image_xscale

:[11]
pushbltn.v builtin.room
pushi.e 92
cmp.i.v EQ
bf [14]

:[12]
pushglb.v global.plot
pushi.e 70
cmp.i.v LT
bf [14]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[14]
pushbltn.v builtin.room
pushi.e 222
cmp.i.v EQ
bf [16]

:[15]
pushi.e 2678
pop.v.i self.sprite_index
pushi.e 1
pop.v.b self.visible
call.i gml_Script_scr_depth(argc=0)
popz.v

:[16]
pushbltn.v builtin.room
pushi.e 162
cmp.i.v EQ
bf [23]

:[17]
push.v self.x
pushi.e 220
cmp.i.v LT
bf [20]

:[18]
push.v self.x
pushi.e 230
cmp.i.v GT
bf [20]

:[19]
pushi.e -5
pushi.e 335
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
call.i instance_destroy(argc=0)
popz.v

:[23]
pushbltn.v builtin.room
pushi.e 191
cmp.i.v EQ
bf [25]

:[24]
pushi.e 0
pop.v.b self.visible

:[25]
pushbltn.v builtin.room
pushi.e 173
cmp.i.v EQ
bf [31]

:[26]
pushi.e -5
pushi.e 339
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
push.v self.y
pushi.e 170
cmp.i.v LT
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
call.i instance_destroy(argc=0)
popz.v

:[31]
pushbltn.v builtin.room
pushi.e 163
cmp.i.v EQ
bt [34]

:[32]
pushbltn.v builtin.room
pushi.e 164
cmp.i.v EQ
bt [34]

:[33]
pushbltn.v builtin.room
pushi.e 165
cmp.i.v EQ
b [35]

:[34]
push.e 1

:[35]
bf [end]

:[36]
pushi.e 2904
conv.i.v
pushi.e 110
conv.i.v
pushi.e 115
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v local.plaque
pushloc.v local.plaque
pushi.e -9
pushenv [38]

:[37]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[38]
popenv [37]

:[end]