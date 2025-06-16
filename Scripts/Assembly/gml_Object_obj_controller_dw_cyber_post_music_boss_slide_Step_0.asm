.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [7]

:[1]
push.v 82.y
pushi.e 700
cmp.i.v GT
bf [4]

:[2]
push.v 82.x
pushi.e 1900
cmp.i.v GT
bf [4]

:[3]
pushi.e -5
pushi.e 408
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 408
pop.v.v [array]self.flag
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[7]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [17]

:[8]
pushi.e 0
pop.v.i self.sweet
pushi.e 0
pop.v.i self.nisekk
pushi.e 0
pop.v.i self.djtable
pushi.e 0
pop.v.i self.nisehatguy
pushi.e 129
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 64
sub.i.v
pushi.e 128
sub.i.v
pushi.e 32
sub.i.v
pushi.e 4
sub.i.v
pushi.e 82
add.i.v
pushi.e 3074
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.nisekk
pushi.e 129
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 64
sub.i.v
pushi.e 256
sub.i.v
pushi.e 106
add.i.v
pushi.e 3072
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.nisehatguy
pushi.e 129
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 64
sub.i.v
pushi.e 32
sub.i.v
pushi.e 3100
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.sweet
pushi.e 129
conv.i.v
push.v self.sweet
pushi.e -9
push.v [stacktop]self.y
pushi.e 64
add.i.v
push.v self.sweet
pushi.e -9
push.v [stacktop]self.x
pushi.e 40
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.djtable
push.v self.sweet
pushi.e -9
pushenv [10]

:[9]
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e 18
pop.v.i self.vspeed
pushi.e 1775
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[10]
popenv [9]
push.v self.nisehatguy
pushi.e -9
pushenv [12]

:[11]
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e 18
pop.v.i self.vspeed
pushi.e 1759
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[12]
popenv [11]
push.v self.nisekk
pushi.e -9
pushenv [14]

:[13]
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e 18
pop.v.i self.vspeed
pushi.e 1771
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[14]
popenv [13]
push.v self.djtable
pushi.e -9
pushenv [16]

:[15]
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e 18
pop.v.i self.vspeed
pushi.e 498
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[16]
popenv [15]
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[17]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [20]

:[18]
call.i gml_Script_charaX(argc=0)
pushi.e 2680
cmp.i.v LT
bf [20]

:[19]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.flag
pushi.e 1149
conv.i.v
pushi.e 2600
conv.i.v
pushi.e 2720
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.block
pushi.e 0
pop.v.i self.blocklock
pushi.e 3
pop.v.i self.con

:[20]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [33]

:[21]
push.v self.realsus
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [23]

:[22]
push.v self.realsus
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.susx

:[23]
pushi.e 82
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [25]

:[24]
push.v 82.x
push.v 82.sprite_width
add.v.v
pushi.e 2
add.i.v
pop.v.v self.plx

:[25]
push.v self.block
pushi.e -9
push.v [stacktop]self.x
push.v self.plx
cmp.v.v GT
bf [27]

:[26]
push.v self.plx
push.v self.block
pushi.e -9
pop.v.v [stacktop]self.x

:[27]
push.v self.block
pushi.e -9
push.v [stacktop]self.x
push.v self.susx
cmp.v.v GT
bf [29]

:[28]
push.v self.block
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e 2
sub.i.v
pop.i.v [stacktop]self.x

:[29]
push.v self.block
pushi.e -9
push.v [stacktop]self.x
pushi.e 560
cmp.i.v LT
bf [31]

:[30]
pushi.e 560
push.v self.block
pushi.e -9
pop.v.i [stacktop]self.x

:[31]
call.i gml_Script_charaX(argc=0)
pushi.e 480
cmp.i.v LTE
bf [33]

:[32]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.flag
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[33]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [35]

:[34]
pushi.e 560
push.v self.block
pushi.e -9
pop.v.i [stacktop]self.x

:[35]
pushi.e 129
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [40]

:[36]
pushi.e 129
pushenv [39]

:[37]
push.v self.y
pushbltn.v builtin.room_height
cmp.v.v GT
bf [39]

:[38]
call.i instance_destroy(argc=0)
popz.v

:[39]
popenv [37]

:[40]
push.v self.con
pushi.e 3
cmp.i.v GTE
bf [end]

:[41]
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [48]

:[42]
pushi.e 276
pushenv [47]

:[43]
push.v self.name
push.s "susie"@70
cmp.s.v EQ
bf [45]

:[44]
push.v self.id
pop.v.v other.realsus

:[45]
push.v self.name
push.s "ralsei"@72
cmp.s.v EQ
bf [47]

:[46]
push.v self.id
pop.v.v other.realral

:[47]
popenv [43]

:[48]
push.v self.realsus
pushi.e -9
push.v [stacktop]self.x
pushi.e 2440
cmp.i.v LT
bf [50]

:[49]
push.v self.watch
pushi.e 0
cmp.i.v EQ
b [51]

:[50]
push.e 0

:[51]
bf [55]

:[52]
push.v self.realsus
pushi.e -9
pushenv [54]

:[53]
pushi.e 1
pop.v.i self.fun
pushi.e 826
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e -4
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.follow

:[54]
popenv [53]
pushi.e 1
pop.v.i self.watch

:[55]
push.v self.watch
pushi.e 1
cmp.i.v EQ
bf [56]

:[56]
push.v self.realral
pushi.e -9
push.v [stacktop]self.x
pushi.e 2480
cmp.i.v LT
bf [58]

:[57]
push.v self.ralwatch
pushi.e 0
cmp.i.v EQ
b [59]

:[58]
push.e 0

:[59]
bf [63]

:[60]
push.v self.realral
pushi.e -9
pushenv [62]

:[61]
pushi.e 1
pop.v.i self.fun
pushi.e 799
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e -4
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.follow

:[62]
popenv [61]
pushi.e 1
pop.v.i self.ralwatch

:[63]
push.v self.realsus
pushi.e -9
push.v [stacktop]self.x
pushi.e 540
cmp.i.v LT
bf [65]

:[64]
push.v self.watch
pushi.e 1
cmp.i.v EQ
b [66]

:[65]
push.e 0

:[66]
bf [70]

:[67]
pushi.e 2
pop.v.i self.watch
push.v self.realsus
pushi.e -9
pushenv [69]

:[68]
pushi.e 0
pop.v.i self.fun
pushi.e 0
pop.v.i self.hspeed
pushi.e 1
pop.v.i self.follow
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v

:[69]
popenv [68]

:[70]
push.v self.realral
pushi.e -9
push.v [stacktop]self.x
pushi.e 540
cmp.i.v LT
bf [72]

:[71]
push.v self.ralwatch
pushi.e 1
cmp.i.v EQ
b [73]

:[72]
push.e 0

:[73]
bf [end]

:[74]
pushi.e 2
pop.v.i self.ralwatch
push.v self.realral
pushi.e -9
pushenv [76]

:[75]
pushi.e 0
pop.v.i self.fun
pushi.e 0
pop.v.i self.hspeed
pushi.e 1
pop.v.i self.follow
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v

:[76]
popenv [75]

:[end]