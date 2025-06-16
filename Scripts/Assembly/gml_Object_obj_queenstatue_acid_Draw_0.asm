.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 640
add.i.v
cmp.v.v LT
bf [2]

:[1]
pushi.e 1
pop.v.b self.sink

:[2]
push.v self.sink
pushi.e 1
cmp.b.v EQ
bf [5]

:[3]
push.v self.timer
pushi.e 4
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v self.progress
pushi.e 1
add.i.v
pop.v.v self.progress

:[5]
push.v self.x
push.v self.timer
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 6
mul.i.v
add.v.v
pop.v.v self.xx
push.v self.y
push.v self.timer
pushi.e 7
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.v
pop.v.v self.yy
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.yy
push.v self.progress
pushi.e 2
mul.i.v
add.v.v
push.v self.xx
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
push.v self.progress
sub.v.v
push.v self.sprite_width
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3238
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v self.bubbleindex
push.d 0.25
add.d.v
pop.v.v self.bubbleindex
push.v self.progress
pushi.e 70
cmp.i.v GT
bf [7]

:[6]
push.v self.bubblealpha
push.d 0.8
mul.d.v
pop.v.v self.bubblealpha

:[7]
push.v self.bubblealpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 118
add.i.v
push.v self.x
pushi.e 14
sub.i.v
push.v self.bubbleindex
pushi.e 2902
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.bubblealpha
push.d 0.01
cmp.d.v LT
bf [9]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[9]
push.i 231204
setowner.e
push.v self.progress
pushi.e -5
pushi.e 429
pop.v.v [array]self.flag

:[end]