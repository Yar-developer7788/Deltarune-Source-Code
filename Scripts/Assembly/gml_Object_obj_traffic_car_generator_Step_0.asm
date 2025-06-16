.localvar 2 arguments
.localvar 107 i 18228

:[0]
push.v self.prepopulate
pushi.e 1
cmp.i.v EQ
bf [7]

:[1]
pushi.e 0
pop.v.i local.i

:[2]
pushloc.v local.i
pushi.e 6
cmp.i.v LT
bf [6]

:[3]
pushi.e 1115
conv.i.v
push.v self.y
push.v self.gen_speed
push.v self.gen_rate
mul.v.v
pushloc.v local.i
mul.v.v
add.v.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.car
push.v self.cartype
push.v self.car
pushi.e -9
pop.v.v [stacktop]self.walkdir
push.v self.gen_speed
push.v self.car
pushi.e -9
pop.v.v [stacktop]self.myspeed
push.v self.gen_speed
push.v self.car
pushi.e -9
pop.v.v [stacktop]self.remspeed
push.v self.car_sprite
push.v self.car
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.group
push.v self.car
pushi.e -9
pop.v.v [stacktop]self.group
push.v self.walking
push.v self.car
pushi.e -9
pop.v.v [stacktop]self.walking
push.v self.alwayswalking
push.v self.car
pushi.e -9
pop.v.v [stacktop]self.alwayswalking
push.v self.speedadjust
push.v self.car
pushi.e -9
pop.v.v [stacktop]self.speedadjust
push.v self.car
pushi.e -9
pushenv [5]

:[4]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[5]
popenv [4]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [2]

:[6]
pushi.e 0
pop.v.i self.prepopulate

:[7]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [12]

:[8]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bt [10]

:[9]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [11]

:[10]
push.e 1

:[11]
b [13]

:[12]
push.e 0

:[13]
bf [18]

:[14]
push.v self.walking
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer

:[16]
push.v self.walking
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
push.v self.timer
push.d 0.25
add.d.v
pop.v.v self.timer

:[18]
push.v self.timer
push.v self.gen_rate
cmp.v.v GTE
bf [end]

:[19]
push.v self.carCount
push.e 1
add.i.v
pop.v.v self.carCount
push.v self.skipEvery
pushi.e 0
cmp.i.v NEQ
bf [24]

:[20]
push.v self.carCount
push.v self.skipEvery
mod.v.v
pushi.e 0
cmp.i.v EQ
bf [22]

:[21]
pushi.e 0
pop.v.i self.makeCar
b [23]

:[22]
pushi.e 1
pop.v.i self.makeCar

:[23]
b [25]

:[24]
pushi.e 1
pop.v.i self.makeCar

:[25]
push.v self.makeCar
pushi.e 1
cmp.i.v EQ
bf [29]

:[26]
pushi.e 1115
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.car
push.v self.cartype
push.v self.car
pushi.e -9
pop.v.v [stacktop]self.walkdir
push.v self.gen_speed
push.v self.car
pushi.e -9
pop.v.v [stacktop]self.myspeed
push.v self.gen_speed
push.v self.car
pushi.e -9
pop.v.v [stacktop]self.remspeed
push.v self.car_sprite
push.v self.car
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.group
push.v self.car
pushi.e -9
pop.v.v [stacktop]self.group
push.v self.walking
push.v self.car
pushi.e -9
pop.v.v [stacktop]self.walking
push.v self.alwayswalking
push.v self.car
pushi.e -9
pop.v.v [stacktop]self.alwayswalking
push.v self.speedadjust
push.v self.car
pushi.e -9
pop.v.v [stacktop]self.speedadjust
push.v self.car
pushi.e -9
pushenv [28]

:[27]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[28]
popenv [27]
pushi.e 0
pop.v.i self.makeCar

:[29]
pushi.e 0
pop.v.i self.timer

:[end]