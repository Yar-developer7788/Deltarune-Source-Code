.localvar 2 arguments

:[0]
push.d 0.25
pop.v.d self.image_speed
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[1]
push.v 82.x
pushi.e 200
cmp.i.v GTE
bf [3]

:[2]
push.v self.move
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 221
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.d 1.6
conv.d.v
pushi.e 221
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 428
pop.v.v [array]self.flag
pushi.e 1
pop.v.i self.move
pushi.e 2
pop.v.i self.hspeed

:[6]
push.v self.sweettimer
push.e 1
add.i.v
pop.v.v self.sweettimer
push.v self.yy
push.v self.sweettimer
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 6
mul.i.v
sub.v.v
pop.v.v self.y
push.v self.move
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
push.v self.xx
push.v self.sweettimer
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
sub.v.v
pop.v.v self.x
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.image_index
pushi.e 1779
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 58
add.i.v
push.v self.x
pushi.e 54
sub.i.v
push.v self.image_index
pushi.e 499
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[8]
push.v self.move
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.image_index
pushi.e 1775
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 58
add.i.v
push.v self.x
pushi.e 54
sub.i.v
push.v self.image_index
pushi.e 498
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.hspeed
push.d 1.1
mul.d.v
pop.v.v self.hspeed
push.v self.yy
pushi.e 2
sub.i.v
pop.v.v self.yy

:[10]
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

:[11]
call.i instance_destroy(argc=0)
popz.v

:[end]