.localvar 2 arguments

:[0]
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [19]

:[1]
push.v 82.y
pushi.e 374
cmp.i.v LTE
bf [3]

:[2]
push.v self.werespawn
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [19]

:[5]
pushi.e 1
pop.v.i self.werespawn
pushi.e 240
conv.i.v
pushi.e 200
conv.i.v
pushi.e 520
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.werewire1
push.v self.werewire1
pushi.e -9
pushenv [7]

:[6]
pushi.e 74
pop.v.i self.myencounter
pushi.e 1716
pop.v.i self.sprite_index
pushi.e 1716
pop.v.i self.touchsprite
pushi.e 1
pop.v.i self.radius
pushi.e 13
pop.v.i self.pacetype
pushi.e -1
pop.v.i self.chasetype
pushi.e 1
pop.v.i self.alertskip
pushi.e 0
pop.v.i self.offscreen_frozen
pushi.e 2
pop.v.i self.increment
pushi.e 160
pop.v.i self.amplitude
pushi.e 270
pop.v.i self.t
push.v self.t
push.v self.increment
add.v.v
pushi.e 360
mod.i.v
pop.v.v self.t
push.v self.amplitude
push.v self.t
call.i dsin(argc=1)
mul.v.v
pop.v.v self.shift
push.v self.yy
push.v self.shift
add.v.v
pop.v.v self.y

:[7]
popenv [6]
pushi.e 240
conv.i.v
pushi.e 200
conv.i.v
pushi.e 720
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.werewire2
push.v self.werewire2
pushi.e -9
pushenv [9]

:[8]
pushi.e 74
pop.v.i self.myencounter
pushi.e 1716
pop.v.i self.sprite_index
pushi.e 1716
pop.v.i self.touchsprite
pushi.e 1
pop.v.i self.radius
pushi.e 13
pop.v.i self.pacetype
pushi.e -1
pop.v.i self.chasetype
pushi.e 1
pop.v.i self.alertskip
pushi.e 0
pop.v.i self.offscreen_frozen
pushi.e 2
pop.v.i self.increment
pushi.e 160
pop.v.i self.amplitude
pushi.e 290
pop.v.i self.t
push.v self.t
push.v self.increment
add.v.v
pushi.e 360
mod.i.v
pop.v.v self.t
push.v self.amplitude
push.v self.t
call.i dsin(argc=1)
mul.v.v
pop.v.v self.shift
push.v self.yy
push.v self.shift
add.v.v
pop.v.v self.y

:[9]
popenv [8]
pushi.e 240
conv.i.v
pushi.e 200
conv.i.v
pushi.e 920
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.werewire3
push.v self.werewire3
pushi.e -9
pushenv [11]

:[10]
pushi.e 74
pop.v.i self.myencounter
pushi.e 1716
pop.v.i self.sprite_index
pushi.e 1716
pop.v.i self.touchsprite
pushi.e 1
pop.v.i self.radius
pushi.e 13
pop.v.i self.pacetype
pushi.e -1
pop.v.i self.chasetype
pushi.e 1
pop.v.i self.alertskip
pushi.e 0
pop.v.i self.offscreen_frozen
pushi.e 2
pop.v.i self.increment
pushi.e 160
pop.v.i self.amplitude
pushi.e 310
pop.v.i self.t
push.v self.t
push.v self.increment
add.v.v
pushi.e 360
mod.i.v
pop.v.v self.t
push.v self.amplitude
push.v self.t
call.i dsin(argc=1)
mul.v.v
pop.v.v self.shift
push.v self.yy
push.v self.shift
add.v.v
pop.v.v self.y

:[11]
popenv [10]
pushi.e 240
conv.i.v
pushi.e 200
conv.i.v
pushi.e 1120
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.werewire4
push.v self.werewire4
pushi.e -9
pushenv [13]

:[12]
pushi.e 74
pop.v.i self.myencounter
pushi.e 1716
pop.v.i self.sprite_index
pushi.e 1716
pop.v.i self.touchsprite
pushi.e 1
pop.v.i self.radius
pushi.e 13
pop.v.i self.pacetype
pushi.e -1
pop.v.i self.chasetype
pushi.e 1
pop.v.i self.alertskip
pushi.e 0
pop.v.i self.offscreen_frozen
pushi.e 2
pop.v.i self.increment
pushi.e 160
pop.v.i self.amplitude
pushi.e 330
pop.v.i self.t
push.v self.t
push.v self.increment
add.v.v
pushi.e 360
mod.i.v
pop.v.v self.t
push.v self.amplitude
push.v self.t
call.i dsin(argc=1)
mul.v.v
pop.v.v self.shift
push.v self.yy
push.v self.shift
add.v.v
pop.v.v self.y

:[13]
popenv [12]
pushi.e 240
conv.i.v
pushi.e 200
conv.i.v
pushi.e 1320
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.werewire5
push.v self.werewire5
pushi.e -9
pushenv [15]

:[14]
pushi.e 74
pop.v.i self.myencounter
pushi.e 1716
pop.v.i self.sprite_index
pushi.e 1716
pop.v.i self.touchsprite
pushi.e 1
pop.v.i self.radius
pushi.e 13
pop.v.i self.pacetype
pushi.e -1
pop.v.i self.chasetype
pushi.e 1
pop.v.i self.alertskip
pushi.e 0
pop.v.i self.offscreen_frozen
pushi.e 2
pop.v.i self.increment
pushi.e 160
pop.v.i self.amplitude
pushi.e 350
pop.v.i self.t
push.v self.t
push.v self.increment
add.v.v
pushi.e 360
mod.i.v
pop.v.v self.t
push.v self.amplitude
push.v self.t
call.i dsin(argc=1)
mul.v.v
pop.v.v self.shift
push.v self.yy
push.v self.shift
add.v.v
pop.v.v self.y

:[15]
popenv [14]
pushglb.v global.entrance
pushi.e 2
cmp.i.v NEQ
bf [19]

:[16]
pushi.e 240
conv.i.v
pushi.e 360
conv.i.v
pushi.e 2000
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.werewire6
push.v self.werewire6
pushi.e -9
pushenv [18]

:[17]
pushi.e 74
pop.v.i self.myencounter
pushi.e 1716
pop.v.i self.sprite_index
pushi.e 1716
pop.v.i self.touchsprite
pushi.e 1
pop.v.i self.radius
pushi.e 13
pop.v.i self.pacetype
pushi.e -1
pop.v.i self.chasetype
pushi.e 1
pop.v.i self.alertskip
pushi.e 0
pop.v.i self.offscreen_frozen
pushi.e 2
pop.v.i self.increment
pushi.e 160
pop.v.i self.amplitude
pushi.e 370
pop.v.i self.t
push.v self.t
push.v self.increment
add.v.v
pushi.e 360
mod.i.v
pop.v.v self.t
push.v self.amplitude
push.v self.t
call.i dsin(argc=1)
mul.v.v
pop.v.v self.shift
push.v self.yy
push.v self.shift
add.v.v
pop.v.v self.y

:[18]
popenv [17]

:[19]
pushi.e 82
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [26]

:[20]
push.v 82.x
pushi.e 1000
cmp.i.v GTE
bf [23]

:[21]
push.v 82.y
pushi.e 430
cmp.i.v LT
bf [23]

:[22]
pushi.e -5
pushi.e 350
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 350
pop.v.v [array]self.flag

:[26]
pushi.e -5
pushi.e 350
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
pushi.e 103
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v

:[28]
pushi.e 868
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [30]

:[29]
push.v self.werewire1
call.i gml_Script_safe_delete(argc=1)
popz.v
push.v self.werewire2
call.i gml_Script_safe_delete(argc=1)
popz.v
push.v self.werewire3
call.i gml_Script_safe_delete(argc=1)
popz.v
push.v self.werewire4
call.i gml_Script_safe_delete(argc=1)
popz.v
push.v self.werewire5
call.i gml_Script_safe_delete(argc=1)
popz.v
push.v self.werewire6
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 1
pop.v.b self.spawn7

:[30]
pushglb.v global.entrance
pushi.e 2
cmp.i.v EQ
bt [32]

:[31]
pushi.e -5
pushi.e 528
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [33]

:[32]
push.e 1

:[33]
bf [35]

:[34]
pushi.e 1
pop.v.b self.spawn7

:[35]
push.v self.spawned
pushi.e 0
cmp.i.v EQ
bf [37]

:[36]
push.v self.spawn7
pushi.e 1
cmp.b.v EQ
b [38]

:[37]
push.e 0

:[38]
bf [42]

:[39]
pushi.e 68
conv.i.v
pushi.e 362
conv.i.v
pushi.e 2000
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.werewire7
push.v self.werewire7
pushi.e -9
pushenv [41]

:[40]
pushi.e 1716
pop.v.i self.sprite_index
push.d 0.125
pop.v.d self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 1
pop.v.b self.visible
push.i 100000
pop.v.i self.depth

:[41]
popenv [40]
pushi.e 1
pop.v.i self.spawned

:[42]
push.v self.hintscreen
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [44]

:[43]
pushi.e -5
pushi.e 351
push.v [array]self.flag
pushi.e 1
cmp.b.v EQ
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
pushi.e 263
conv.i.v
pushi.e 952
conv.i.v
pushi.e 1100
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.hintscreen
pushi.e 2
push.v self.hintscreen
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.hintscreen
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 17
push.v self.hintscreen
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 0
pop.v.i self.state

:[47]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [50]

:[48]
push.v self.hintscreen
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 4
sub.i.v
pop.i.v [stacktop]self.y
push.v self.hintscreen
pushi.e -9
push.v [stacktop]self.y
pushi.e 900
cmp.i.v LTE
bf [50]

:[49]
pushi.e 1
pop.v.i self.state

:[50]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [53]

:[51]
push.v self.hintscreen
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e 4
add.i.v
pop.i.v [stacktop]self.x
push.v self.hintscreen
pushi.e -9
push.v [stacktop]self.x
pushi.e 1280
cmp.i.v GTE
bf [53]

:[52]
pushi.e 2
pop.v.i self.state

:[53]
push.v self.werewire6
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [56]

:[54]
push.v self.werewire6
call.i gml_Script_scr_onscreen(argc=1)
conv.v.b
bf [56]

:[55]
pushi.e 1
pop.v.i self.spawned
pushi.e 1
pop.v.i self.hatflyaway

:[56]
push.v self.spawned
pushi.e 1
cmp.i.v EQ
bf [60]

:[57]
push.v self.hat
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [60]

:[58]
push.v self.hatflyaway
pushi.e 1
cmp.i.v EQ
bf [60]

:[59]
pushi.e 868
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [61]

:[60]
push.e 0

:[61]
bf [end]

:[62]
push.v self.hat
pushi.e -9
pushenv [64]

:[63]
call.i gml_Script_scr_afterimage(argc=0)
pop.v.v self.hatfade
pushi.e -16
push.v self.hatfade
pushi.e -9
pop.v.i [stacktop]self.vspeed
pushi.e 4
push.v self.hatfade
pushi.e -9
pop.v.i [stacktop]self.hspeed
push.d 0.25
push.v self.hatfade
pushi.e -9
pop.v.d [stacktop]self.friction
call.i instance_destroy(argc=0)
popz.v

:[64]
popenv [63]

:[end]