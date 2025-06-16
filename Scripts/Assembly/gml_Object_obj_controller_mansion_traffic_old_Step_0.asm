.localvar 2 arguments
.localvar 37835 runCar 19182

:[0]
push.v 82.x
push.v self.x
cmp.v.v GT
bf [3]

:[1]
push.v self.carGen
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [3]

:[2]
push.v self.victory
pushi.e 0
cmp.b.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [8]

:[5]
pushi.e 1117
conv.i.v
pushi.e 262
conv.i.v
pushi.e 1120
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.carGen
push.v self.carGen
pushi.e -9
pushenv [7]

:[6]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.group
pushi.e 10
pop.v.i self.gen_rate
pushi.e -2
pop.v.i self.timer
pushi.e 15
pop.v.i self.gen_speed
pushi.e 2375
pop.v.i self.car_sprite
pushi.e 0
pop.v.i self.skipEvery

:[7]
popenv [6]

:[8]
push.v 82.x
push.v self.x
cmp.v.v LT
bf [10]

:[9]
push.v self.carGen
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [11]

:[10]
push.e 0

:[11]
bf [15]

:[12]
push.v self.carGen
pushi.e -9
pushenv [14]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[14]
popenv [13]

:[15]
push.v 82.x
push.v self.x
cmp.v.v LT
bf [20]

:[16]
pushi.e 1115
pushenv [19]

:[17]
push.v self.x
pushi.e 1090
cmp.i.v GT
bf [19]

:[18]
pushi.e 1
pop.v.i self.endme

:[19]
popenv [17]

:[20]
push.v self.victory
pushi.e 1
cmp.b.v EQ
bf [end]

:[21]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [30]

:[22]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 370
pop.v.v [array]self.flag
pushi.e 1
pop.v.i global.interact
pushi.e 1115
pushenv [27]

:[23]
push.v self.x
push.v 82.x
cmp.v.v LTE
bf [25]

:[24]
pushi.e 0
pop.v.i self.active

:[25]
push.v self.x
push.v 82.x
cmp.v.v GT
bf [27]

:[26]
pushi.e 8
pop.v.i self.hspeed

:[27]
popenv [23]
pushi.e 1117
pushenv [29]

:[28]
call.i instance_destroy(argc=0)
popz.v

:[29]
popenv [28]
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[30]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [42]

:[31]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
pushi.e 1115
pushenv [38]

:[32]
pushi.e 1168
conv.i.v
push.v self.y
push.v self.x
pushi.e 10
add.i.v
call.i place_meeting(argc=3)
conv.v.b
bf [38]

:[33]
pushi.e 129
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v local.runCar
push.v self.image_index
pushloc.v local.runCar
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.sprite_index
pushloc.v local.runCar
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 2
pushloc.v local.runCar
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
pushloc.v local.runCar
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e -16
pushloc.v local.runCar
pushi.e -9
pop.v.i [stacktop]self.hspeed
push.v self.madeblock
pushi.e 1
cmp.i.v EQ
bf [37]

:[34]
push.v self.myblock
pushi.e -9
pushenv [36]

:[35]
call.i instance_destroy(argc=0)
popz.v

:[36]
popenv [35]

:[37]
call.i instance_destroy(argc=0)
popz.v

:[38]
popenv [32]
pushi.e 1
pop.v.i global.interact
push.v self.timer
pushi.e 65
cmp.i.v EQ
bf [40]

:[39]
pushi.e 0
pop.v.i global.facing

:[40]
push.v self.timer
pushi.e 110
cmp.i.v EQ
bf [42]

:[41]
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[42]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [52]

:[43]
pushi.e 1115
pushenv [49]

:[44]
push.v self.madeblock
pushi.e 1
cmp.i.v EQ
bf [48]

:[45]
push.v self.myblock
pushi.e -9
pushenv [47]

:[46]
call.i instance_destroy(argc=0)
popz.v

:[47]
popenv [46]

:[48]
call.i instance_destroy(argc=0)
popz.v

:[49]
popenv [44]
pushi.e 1117
pushenv [51]

:[50]
call.i instance_destroy(argc=0)
popz.v

:[51]
popenv [50]
pushi.e 0
pop.v.i global.interact
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[52]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [end]

:[53]
pushi.e 1117
pushenv [55]

:[54]
call.i instance_destroy(argc=0)
popz.v

:[55]
popenv [54]
pushi.e 1115
pushenv [57]

:[56]
pushi.e 1
pop.v.i self.endme

:[57]
popenv [56]
push.v self.carGen
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [59]

:[58]
call.i instance_destroy(argc=0)
popz.v

:[59]
call.i instance_destroy(argc=0)
popz.v

:[end]