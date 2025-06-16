.localvar 2 arguments

:[0]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
call.i gml_Script_camerax(argc=0)
pushi.e 320
add.i.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.centerx
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [7]

:[2]
pushi.e -8
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.image_speed
push.v self.y
push.v self.startTarget
cmp.v.v LTE
bf [7]

:[3]
push.d 0.2
pop.v.d self.image_speed
push.v self.image_index
pushi.e 4
cmp.i.v GTE
bf [5]

:[4]
pushi.e 1
pop.v.i self.con
pushi.e 2306
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.vspeed
push.d 0.08
conv.d.v
push.d 0.07
conv.d.v
push.d 0.06
conv.d.v
push.d 0.05
conv.d.v
push.d 0.04
conv.d.v
call.i choose(argc=5)
pop.v.v self.increment

:[5]
push.v self.x
push.v self.centerx
cmp.v.v NEQ
bf [7]

:[6]
push.d 0.25
conv.d.v
push.v self.centerx
push.v self.x
call.i lerp(argc=3)
pop.v.v self.x

:[7]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [17]

:[8]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
push.v self.timer1
cmp.v.v EQ
bt [11]

:[9]
push.v self.timer
push.v self.timer2
cmp.v.v EQ
bt [11]

:[10]
push.v self.timer
push.v self.timer3
cmp.v.v EQ
b [12]

:[11]
push.e 1

:[12]
bf [14]

:[13]
push.d 0.7
conv.d.v
push.d 0.5
conv.d.v
pushi.e 175
conv.i.v
call.i gml_Script_snd_play_x(argc=3)
popz.v
pushi.e 2
conv.i.v
push.d 0.6
conv.d.v
pushi.e 175
conv.i.v
call.i gml_Script_snd_play_x(argc=3)
popz.v
pushi.e 262
conv.i.v
push.v self.y
pushi.e 65
add.i.v
push.v self.x
pushi.e 50
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bullet
pushi.e 10
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.damage
pushi.e 3
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.target

:[14]
push.v self.timer
push.v self.timer3
pushi.e 10
add.i.v
cmp.v.v EQ
bf [16]

:[15]
pushi.e 2
pop.v.i self.con

:[16]
push.v self.steptimer
push.v self.increment
add.v.v
pop.v.v self.steptimer
push.v self.centerx
push.v self.steptimer
call.i sin(argc=1)
pushi.e 280
mul.i.v
add.v.v
pop.v.v self.desx
push.d 0.05
conv.d.v
push.v self.desx
push.v self.x
call.i lerp(argc=3)
pop.v.v self.x
push.v self.y
push.v self.steptimer
call.i sin(argc=1)
pushi.e 4
conv.i.d
div.d.v
add.v.v
pop.v.v self.y

:[17]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [end]

:[18]
push.v self.hspeed
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
pushi.e 1
pop.v.i self.hspeed

:[20]
push.v self.hspeed
push.d 1.2
mul.d.v
pop.v.v self.hspeed
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
push.v self.hspeed
call.i clamp(argc=3)
pop.v.v self.hspeed
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 640
add.i.v
push.v self.sprite_width
pushi.e 2
mul.i.v
add.v.v
cmp.v.v GT
bf [end]

:[21]
call.i instance_destroy(argc=0)
popz.v

:[end]