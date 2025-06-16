.localvar 2 arguments

:[0]
push.v self.fireworks_con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i self.fireworks_con

:[5]
push.v self.fireworks_con
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushi.e 129
conv.i.v
pushi.e 260
conv.i.v
pushi.e 430
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.check1
pushi.e 37
push.v self.check1
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 10
push.v self.check1
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.check1
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.d 0.05
push.v self.check1
pushi.e -9
pop.v.d [stacktop]self.image_yscale
push.d 0.1
push.v self.check1
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.v self.hacker
pushi.e -9
push.v [stacktop]self.depth
pushi.e 10
add.i.v
push.v self.check1
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 129
conv.i.v
pushi.e 260
conv.i.v
pushi.e 430
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.check2
pushi.e 37
push.v self.check2
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 10
push.v self.check2
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.check2
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.d 0.05
push.v self.check2
pushi.e -9
pop.v.d [stacktop]self.image_yscale
push.d 0.1
push.v self.check2
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.v self.hacker
pushi.e -9
push.v [stacktop]self.depth
pushi.e 10
add.i.v
push.v self.check2
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 129
conv.i.v
pushi.e 260
conv.i.v
pushi.e 430
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.check3
pushi.e 37
push.v self.check3
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 10
push.v self.check3
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.check3
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.d 0.05
push.v self.check3
pushi.e -9
pop.v.d [stacktop]self.image_yscale
push.d 0.1
push.v self.check3
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.v self.hacker
pushi.e -9
push.v [stacktop]self.depth
pushi.e 10
add.i.v
push.v self.check3
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.fireworks_con
push.e 1
add.i.v
pop.v.v self.fireworks_con
pushi.e 0
pop.v.i self.timer

:[7]
push.v self.fireworks_con
pushi.e 3
cmp.i.v EQ
bf [51]

:[8]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.check1
pushi.e -9
pushenv [11]

:[9]
push.v self.image_xscale
pushi.e 2
cmp.i.v NEQ
bf [11]

:[10]
push.d 0.125
conv.d.v
pushi.e 2
conv.i.v
push.v self.image_xscale
call.i lerp(argc=3)
pop.v.v self.image_xscale

:[11]
popenv [9]
push.v self.check2
pushi.e -9
pushenv [14]

:[12]
push.v self.image_xscale
pushi.e 2
cmp.i.v NEQ
bf [14]

:[13]
push.d 0.125
conv.d.v
pushi.e 2
conv.i.v
push.v self.image_xscale
call.i lerp(argc=3)
pop.v.v self.image_xscale

:[14]
popenv [12]
push.v self.check3
pushi.e -9
pushenv [17]

:[15]
push.v self.image_xscale
pushi.e 2
cmp.i.v NEQ
bf [17]

:[16]
push.d 0.125
conv.d.v
pushi.e 2
conv.i.v
push.v self.image_xscale
call.i lerp(argc=3)
pop.v.v self.image_xscale

:[17]
popenv [15]
push.v self.check1
pushi.e -9
pushenv [20]

:[18]
push.v self.image_yscale
pushi.e 2
cmp.i.v NEQ
bf [20]

:[19]
push.d 0.15
conv.d.v
pushi.e 2
conv.i.v
push.v self.image_yscale
call.i lerp(argc=3)
pop.v.v self.image_yscale

:[20]
popenv [18]
push.v self.check2
pushi.e -9
pushenv [23]

:[21]
push.v self.image_yscale
pushi.e 2
cmp.i.v NEQ
bf [23]

:[22]
push.d 0.15
conv.d.v
pushi.e 2
conv.i.v
push.v self.image_yscale
call.i lerp(argc=3)
pop.v.v self.image_yscale

:[23]
popenv [21]
push.v self.check3
pushi.e -9
pushenv [26]

:[24]
push.v self.image_yscale
pushi.e 2
cmp.i.v NEQ
bf [26]

:[25]
push.d 0.15
conv.d.v
pushi.e 2
conv.i.v
push.v self.image_yscale
call.i lerp(argc=3)
pop.v.v self.image_yscale

:[26]
popenv [24]
push.v self.timer
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [34]

:[27]
push.v self.check1
pushi.e -9
pushenv [29]

:[28]
call.i gml_Script_scr_afterimagefast(argc=0)
popz.v

:[29]
popenv [28]
push.v self.check2
pushi.e -9
pushenv [31]

:[30]
call.i gml_Script_scr_afterimagefast(argc=0)
popz.v

:[31]
popenv [30]
push.v self.check3
pushi.e -9
pushenv [33]

:[32]
call.i gml_Script_scr_afterimagefast(argc=0)
popz.v

:[33]
popenv [32]

:[34]
push.v self.check1
pushi.e -9
pushenv [39]

:[35]
push.v self.x
pushi.e 240
cmp.i.v NEQ
bf [37]

:[36]
push.d 0.125
conv.d.v
pushi.e 240
conv.i.v
push.v self.x
call.i lerp(argc=3)
pop.v.v self.x

:[37]
push.v self.y
pushi.e 160
cmp.i.v NEQ
bf [39]

:[38]
push.d 0.125
conv.d.v
pushi.e 160
conv.i.v
push.v self.y
call.i lerp(argc=3)
pop.v.v self.y

:[39]
popenv [35]
push.v self.check2
pushi.e -9
pushenv [44]

:[40]
push.v self.x
pushi.e 320
cmp.i.v NEQ
bf [42]

:[41]
push.d 0.125
conv.d.v
pushi.e 320
conv.i.v
push.v self.x
call.i lerp(argc=3)
pop.v.v self.x

:[42]
push.v self.y
pushi.e 80
cmp.i.v NEQ
bf [44]

:[43]
push.d 0.125
conv.d.v
pushi.e 80
conv.i.v
push.v self.y
call.i lerp(argc=3)
pop.v.v self.y

:[44]
popenv [40]
push.v self.check3
pushi.e -9
pushenv [49]

:[45]
push.v self.x
pushi.e 400
cmp.i.v NEQ
bf [47]

:[46]
push.d 0.125
conv.d.v
pushi.e 400
conv.i.v
push.v self.x
call.i lerp(argc=3)
pop.v.v self.x

:[47]
push.v self.y
pushi.e 160
cmp.i.v NEQ
bf [49]

:[48]
push.d 0.125
conv.d.v
pushi.e 160
conv.i.v
push.v self.y
call.i lerp(argc=3)
pop.v.v self.y

:[49]
popenv [45]
push.v self.timer
pushi.e 40
cmp.i.v EQ
bf [51]

:[50]
pushi.e 4
pop.v.i self.fireworks_con
pushi.e 0
pop.v.i self.timer
push.d -0.02
push.v self.check1
pushi.e -9
pop.v.d [stacktop]self.vspeed
push.d 0.02
push.v self.check1
pushi.e -9
pop.v.d [stacktop]self.hspeed
push.d -0.02
push.v self.check2
pushi.e -9
pop.v.d [stacktop]self.vspeed
push.d -0.02
push.v self.check3
pushi.e -9
pop.v.d [stacktop]self.vspeed
push.d -0.02
push.v self.check3
pushi.e -9
pop.v.d [stacktop]self.hspeed

:[51]
push.v self.fireworks_con
pushi.e 4
cmp.i.v EQ
bf [end]

:[52]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.check1
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [59]

:[53]
push.v self.check1
pushi.e -9
dup.i 4
push.v [stacktop]self.vspeed
push.d 1.1
mul.d.v
pop.i.v [stacktop]self.vspeed
push.v self.check1
pushi.e -9
dup.i 4
push.v [stacktop]self.hspeed
push.d 1.1
mul.d.v
pop.i.v [stacktop]self.hspeed
push.v self.check1
pushi.e -9
pushenv [55]

:[54]
call.i gml_Script_scr_afterimagefast(argc=0)
popz.v

:[55]
popenv [54]
push.v self.check1
pushi.e -80
cmp.i.v LT
bf [59]

:[56]
push.v self.check1
pushi.e -9
pushenv [58]

:[57]
call.i instance_destroy(argc=0)
popz.v

:[58]
popenv [57]

:[59]
push.v self.check2
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [66]

:[60]
push.v self.check2
pushi.e -9
dup.i 4
push.v [stacktop]self.vspeed
push.d 1.1
mul.d.v
pop.i.v [stacktop]self.vspeed
push.v self.check2
pushi.e -9
pushenv [62]

:[61]
call.i gml_Script_scr_afterimagefast(argc=0)
popz.v

:[62]
popenv [61]
push.v self.check2
pushi.e -80
cmp.i.v LT
bf [66]

:[63]
push.v self.check2
pushi.e -9
pushenv [65]

:[64]
call.i instance_destroy(argc=0)
popz.v

:[65]
popenv [64]

:[66]
push.v self.check3
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [73]

:[67]
push.v self.check3
pushi.e -9
pushenv [69]

:[68]
call.i gml_Script_scr_afterimagefast(argc=0)
popz.v

:[69]
popenv [68]
push.v self.check3
pushi.e -9
dup.i 4
push.v [stacktop]self.vspeed
push.d 1.1
mul.d.v
pop.i.v [stacktop]self.vspeed
push.v self.check3
pushi.e -9
dup.i 4
push.v [stacktop]self.hspeed
push.d 1.1
mul.d.v
pop.i.v [stacktop]self.hspeed
push.v self.check3
pushi.e -80
cmp.i.v LT
bf [73]

:[70]
push.v self.check3
pushi.e -9
pushenv [72]

:[71]
call.i instance_destroy(argc=0)
popz.v

:[72]
popenv [71]

:[73]
push.v self.timer
pushi.e 25
cmp.i.v EQ
bf [82]

:[74]
pushi.e 224
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [78]

:[75]
pushi.e 224
pushenv [77]

:[76]
pushi.e 1
pop.v.b self.is_active

:[77]
popenv [76]

:[78]
pushi.e 346
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [82]

:[79]
pushi.e 346
pushenv [81]

:[80]
pushi.e 1
pop.v.b self.is_active

:[81]
popenv [80]

:[82]
push.v self.timer
pushi.e 90
cmp.i.v GTE
bf [end]

:[83]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
push.v self.fireworks_con
push.e 1
add.i.v
pop.v.v self.fireworks_con

:[end]