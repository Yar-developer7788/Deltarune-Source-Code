.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
call.i draw_self(argc=0)
popz.v
push.v self.fallnow
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e -5
pop.v.i self.con

:[3]
push.v self.con
pushi.e -5
cmp.i.v EQ
bf [5]

:[4]
push.d 0.2
pop.v.d self.friction
push.v self.y
pop.v.v self.remremy
pushi.e -3
pop.v.i self.vspeed
pushi.e -6
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.timer
pushi.e -4
pop.v.i self.con

:[5]
push.v self.con
pushi.e -4
cmp.i.v EQ
bf [8]

:[6]
call.i draw_self(argc=0)
popz.v
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
cmp.i.v GTE
bf [8]

:[7]
pushi.e -3
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[8]
push.v self.con
pushi.e -3
cmp.i.v EQ
bf [10]

:[9]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
call.i draw_self(argc=0)
popz.v

:[10]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
pushi.e 202
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.image_index
push.d 0.2
pop.v.d self.image_speed
call.i draw_self(argc=0)
popz.v
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.shaketimer
pushi.e 4
pop.v.i self.con
pushi.e 0
pop.v.i self.falltimer
push.v self.x
pop.v.v self.remx
push.v self.y
pop.v.v self.remy

:[12]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [14]

:[13]
call.i draw_self(argc=0)
popz.v

:[14]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [18]

:[15]
call.i draw_self(argc=0)
popz.v
push.v self.image_index
pushi.e 8
cmp.i.v GTE
bf [17]

:[16]
pushi.e 0
pop.v.i self.image_speed
pushi.e 8
pop.v.i self.image_index

:[17]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer

:[18]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [33]

:[19]
call.i draw_self(argc=0)
popz.v
push.v self.image_index
pushi.e 8
cmp.i.v GTE
bf [33]

:[20]
pushi.e 0
pop.v.i self.image_speed
pushi.e 8
pop.v.i self.image_index
push.v self.y
push.v self.remremy
pushi.e 40
add.i.v
cmp.v.v LT
bf [22]

:[21]
push.v self.gravity
pushi.e 1
add.i.v
pop.v.v self.gravity
b [25]

:[22]
push.v self.bumped
pushi.e 0
cmp.i.v EQ
bf [24]

:[23]
pushi.e 111
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.bumped

:[24]
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.vspeed
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.remremy
pushi.e 100
add.i.v
pop.v.v self.y

:[25]
push.v self.timer
pushi.e 60
cmp.i.v GTE
bf [33]

:[26]
push.v self.bumped
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
pushi.e 94
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 2
pop.v.i self.bumped

:[28]
push.v self.image_angle
push.v self.image_angle
pushi.e 3
conv.i.d
div.d.v
call.i abs(argc=1)
pushi.e 2
add.i.v
add.v.v
pop.v.v self.image_angle
push.v self.image_angle
pushi.e 90
cmp.i.v GTE
bf [33]

:[29]
push.v self.bumped
pushi.e 2
cmp.i.v EQ
bf [31]

:[30]
pushi.e 111
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 3
pop.v.i self.bumped

:[31]
pushi.e 90
pop.v.i self.image_angle
pushi.e 3
pop.v.i self.con
push.v self.shaketimer
push.e 1
add.i.v
pop.v.v self.shaketimer
push.v self.shaketimer
pushi.e 6
cmp.i.v GTE
bf [33]

:[32]
pushi.e 3
pop.v.i self.con
push.v self.remx
pop.v.v self.x
push.v self.remy
pop.v.v self.y

:[33]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [35]

:[34]
pushi.e 2
pop.v.i self.initangle
pushi.e 2
pop.v.i self.angle
pushi.e 0
pop.v.i self.anglespeed
push.d 0.015
pop.v.d self.angleaccel
pushi.e 6
pop.v.i self.con

:[35]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [end]

:[36]
push.v self.fallnow
pushi.e 1
cmp.i.v EQ
bf [41]

:[37]
pushi.e 2
pop.v.i self.fallnow
push.v self.object_index
pushi.e -9
pushenv [40]

:[38]
push.v self.isrouxls
pushi.e 1
cmp.i.v EQ
bf [40]

:[39]
pushi.e 1
pop.v.i self.drawthrash

:[40]
popenv [38]

:[41]
push.v self.fallnow
pushi.e 2
cmp.i.v EQ
bf [44]

:[42]
push.v self.angle
push.v self.anglespeed
sub.v.v
pop.v.v self.angle
push.v self.anglespeed
push.v self.anglespeed
pushi.e 10
conv.i.d
div.d.v
push.v self.angleaccel
add.v.v
add.v.v
pop.v.v self.anglespeed
push.v self.angle
pushi.e 0
cmp.i.v LTE
bf [44]

:[43]
pushi.e 0
pop.v.i self.angle

:[44]
pushi.e 2
push.v self.angle
sub.v.i
pushi.e 4
conv.i.d
div.d.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.boatcolor
pushi.e 0
pop.v.i self.i

:[45]
push.v self.i
pushi.e 5
cmp.i.v LT
bf [end]

:[46]
pushi.e 1
conv.i.v
push.v self.boatcolor
pushi.e 0
conv.i.v
push.v self.angle
pushi.e 2
conv.i.v
push.v self.y
push.v self.i
add.v.v
push.v self.x
push.v self.image_index
pushi.e 209
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [45]

:[end]