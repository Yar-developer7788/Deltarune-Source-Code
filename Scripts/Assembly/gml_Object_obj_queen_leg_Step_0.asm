.localvar 2 arguments

:[0]
push.v self.stompwait
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
exit.i

:[2]
push.v self.stompspeed
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
push.v self.stomplerp
pushi.e 1
cmp.i.v GTE
b [5]

:[4]
push.e 0

:[5]
bf [12]

:[6]
pushi.e 1
pop.v.i self.stomplerp
pushi.e 0
pop.v.i self.stompspeed
pushi.e 193
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[7]
pushi.e 193
conv.i.v
b [9]

:[8]
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)

:[9]
pop.v.v self.d
pushi.e 2
conv.i.v
call.i ceil(argc=1)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.shakex
pushi.e 2
conv.i.v
call.i ceil(argc=1)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.shakey
pushi.e 179
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.shootbullets
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[11]
b [28]

:[12]
push.v self.stompspeed
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
push.v self.stomphold
pushi.e 0
cmp.i.v GTE
b [15]

:[14]
push.e 0

:[15]
bf [23]

:[16]
push.v self.stomphold
push.e 1
sub.i.v
pop.v.v self.stomphold
push.v self.stomphold
pushi.e 0
cmp.i.v LTE
bf [18]

:[17]
push.d -0.1
pop.v.d self.stompspeed

:[18]
push.v self.special
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
pushi.e 0
pop.v.i self.stompspeed

:[20]
push.v self.special
pushi.e 2
cmp.i.v EQ
bf [22]

:[21]
pushi.e 0
pop.v.i self.stompspeed

:[22]
b [28]

:[23]
push.v self.stompspeed
pushi.e 0
cmp.i.v LT
bf [25]

:[24]
push.v self.stomplerp
pushi.e 0
cmp.i.v LTE
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
call.i instance_destroy(argc=0)
popz.v

:[28]
push.v self.hurttimer
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
push.v self.hittimer
pushi.e 0
cmp.i.v EQ
b [31]

:[30]
push.e 0

:[31]
bf [33]

:[32]
push.v self.stomplerp
push.v self.stompspeed
add.v.v
pop.v.v self.stomplerp

:[33]
push.v self.special
pushi.e 3
cmp.i.v EQ
bf [35]

:[34]
push.v self.stomplerp
push.d 0.5
cmp.d.v GTE
b [36]

:[35]
push.e 0

:[36]
bf [38]

:[37]
push.d 0.002
pop.v.d self.stompspeed

:[38]
push.v self.special
pushi.e 3
cmp.i.v EQ
bf [40]

:[39]
push.v self.stomplerp
push.d 0.7
cmp.d.v GTE
b [41]

:[40]
push.e 0

:[41]
bf [43]

:[42]
push.d 0.0001
pop.v.d self.stompspeed

:[43]
push.v self.direction
pushi.e 270
cmp.i.v EQ
bf [45]

:[44]
pushi.e 2
conv.i.v
push.v self.stomplerp
call.i gml_Script_scr_ease_in(argc=2)
push.v self.maxy
pushi.e 8
sub.i.v
push.v self.miny
pushi.e 4
sub.i.v
call.i lerp(argc=3)
pop.v.v self.y

:[45]
push.v self.direction
pushi.e 90
cmp.i.v EQ
bf [47]

:[46]
pushi.e 2
conv.i.v
push.v self.stomplerp
call.i gml_Script_scr_ease_in(argc=2)
push.v self.maxy
pushi.e 4
sub.i.v
push.v self.miny
pushi.e 8
sub.i.v
call.i lerp(argc=3)
pop.v.v self.y

:[47]
push.v self.direction
pushi.e 180
cmp.i.v EQ
bf [49]

:[48]
pushi.e 2
conv.i.v
push.v self.stomplerp
call.i gml_Script_scr_ease_in(argc=2)
push.v self.minx
pushi.e 4
sub.i.v
push.v self.maxx
pushi.e 8
sub.i.v
call.i lerp(argc=3)
pop.v.v self.x

:[49]
push.v self.direction
pushi.e 0
cmp.i.v EQ
bf [end]

:[50]
pushi.e 2
conv.i.v
push.v self.stomplerp
call.i gml_Script_scr_ease_in(argc=2)
push.v self.maxx
pushi.e 8
sub.i.v
push.v self.minx
pushi.e 4
sub.i.v
call.i lerp(argc=3)
pop.v.v self.x

:[end]