.localvar 2 arguments

:[0]
push.v self.x
push.v 777.basex
pushi.e 120
sub.i.v
cmp.v.v GT
bf [4]

:[1]
push.v self.x
push.v 777.basex
pushi.e 120
add.i.v
cmp.v.v LT
bf [4]

:[2]
push.v self.speedup
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.v 789.firstwheelattack
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 2
pop.v.i self.speedup
push.v self.hspeed
push.d 1.4
mul.d.v
pop.v.v self.hspeed

:[7]
push.v self.x
push.v 777.basex
pushi.e 120
sub.i.v
cmp.v.v GT
bf [11]

:[8]
push.v self.x
push.v 777.basex
pushi.e 120
add.i.v
cmp.v.v LT
bf [11]

:[9]
push.v self.playsound
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [18]

:[13]
pushi.e 1
pop.v.i self.playsound
push.v 789.wheelsoundtimer
pushi.e 1
cmp.i.v LT
bf [17]

:[14]
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
pushi.e 310
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 310
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 310
conv.i.v
call.i gml_Script_snd_volume(argc=3)
popz.v
b [17]

:[16]
pushi.e 121
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 121
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 121
conv.i.v
call.i gml_Script_snd_volume(argc=3)
popz.v

:[17]
pushi.e 7
pop.v.i 789.wheelsoundtimer

:[18]
push.v self.image_angle
push.v self.rotspeed
add.v.v
pop.v.v self.image_angle
push.v self.wheel_hitbox
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [20]

:[19]
push.v self.x
push.v self.wheel_hitbox
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.y
push.v self.wheel_hitbox
pushi.e -9
pop.v.v [stacktop]self.y

:[20]
push.v self.wheel_hitbox_graze
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [22]

:[21]
push.v self.x
pushi.e 15
sub.i.v
push.v self.wheel_hitbox_graze
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.y
push.v self.wheel_hitbox_graze
pushi.e -9
pop.v.v [stacktop]self.y

:[22]
push.v self.x
pushi.e 1000
cmp.i.v GTE
bt [24]

:[23]
push.v self.x
pushi.e -300
cmp.i.v LTE
b [25]

:[24]
push.e 1

:[25]
bf [end]

:[26]
push.v self.wheel_hitbox
pushi.e -9
pushenv [28]

:[27]
call.i instance_destroy(argc=0)
popz.v

:[28]
popenv [27]
push.v self.wheel_hitbox_graze
pushi.e -9
pushenv [30]

:[29]
call.i instance_destroy(argc=0)
popz.v

:[30]
popenv [29]
call.i instance_destroy(argc=0)
popz.v

:[end]