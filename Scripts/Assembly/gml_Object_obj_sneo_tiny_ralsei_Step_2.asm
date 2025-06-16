.localvar 2 arguments
.localvar 25691 extra_speed 12775

:[0]
push.v self.hp
push.v self.hpmax
div.v.v
push.i 16777215
conv.i.v
pushi.e 255
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend
push.v self.hp
pushi.e 1
cmp.i.v LT
bf [6]

:[1]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 240
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[3]
pushi.e 0
pop.v.i self.active
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.01
cmp.d.v LT
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
exit.i

:[6]
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [17]

:[7]
pushi.e 631
pop.v.i self.rotator_target
push.v 631.depth
pushi.e 1
sub.i.v
pop.v.v self.depth
call.i gml_Script_button2_h(argc=0)
conv.v.b
bf [9]

:[8]
push.v self.xhold
pushi.e 9
cmp.i.v LT
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
push.v self.xhold
push.e 1
add.i.v
pop.v.v self.xhold
b [14]

:[12]
push.v self.xhold
pushi.e 0
cmp.i.v GT
bf [14]

:[13]
push.v self.xhold
push.e 1
sub.i.v
pop.v.v self.xhold

:[14]
push.v self.xhold
pop.v.v local.extra_speed
pushloc.v local.extra_speed
pushi.e 8
cmp.i.v GT
bf [16]

:[15]
pushi.e 8
pop.v.i local.extra_speed

:[16]
pushi.e 8
pushloc.v local.extra_speed
sub.v.i
pop.v.v self.myspeed
push.v self.rotator_target
pushi.e -9
push.v [stacktop]self.x
pushi.e 10
add.i.v
push.v self.place
push.v self.length
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.x
push.v self.rotator_target
pushi.e -9
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.place
push.v self.length
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.y
push.v self.place
push.v self.myspeed
add.v.v
pop.v.v self.place

:[17]
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [19]

:[18]
pushi.e 0
pop.v.b self.visible

:[19]
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[20]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 9
cmp.i.v EQ
bf [22]

:[21]
pushi.e 0
pop.v.b self.visible
b [end]

:[22]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 8
cmp.i.v EQ
bf [24]

:[23]
pushi.e 0
pop.v.b self.visible
b [end]

:[24]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 5
cmp.i.v EQ
bf [26]

:[25]
pushi.e 0
pop.v.b self.visible
b [end]

:[26]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 4
cmp.i.v EQ
bf [28]

:[27]
pushi.e 0
pop.v.b self.visible
b [end]

:[28]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
pushi.e 0
pop.v.b self.visible
b [end]

:[30]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 0
cmp.i.v EQ
bf [32]

:[31]
pushi.e 0
pop.v.b self.visible
b [end]

:[32]
pushi.e 1
pop.v.b self.visible

:[end]