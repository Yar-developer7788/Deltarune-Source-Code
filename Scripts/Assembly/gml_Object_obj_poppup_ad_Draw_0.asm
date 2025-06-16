.localvar 2 arguments

:[0]
push.v self.slow
conv.v.b
bf [4]

:[1]
push.v self.sprite_index
pushi.e 1663
cmp.i.v EQ
bf [3]

:[2]
pushi.e 3215
pop.v.i self.sprite_index

:[3]
pushi.e 0
pop.v.b self.slow

:[4]
push.v self.blockstate
pushi.e 1
cmp.i.v EQ
bf [27]

:[5]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 3
cmp.i.v LT
bf [7]

:[6]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
call.i gpu_set_fog(argc=4)
popz.v

:[7]
call.i draw_self(argc=0)
popz.v
push.v self.timer
pushi.e 3
cmp.i.v LT
bf [9]

:[8]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
call.i gpu_set_fog(argc=4)
popz.v

:[9]
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e 157
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[11]
push.v self.timer
pushi.e 9
cmp.i.v LT
bf [13]

:[12]
push.v self.xstart
pushi.e 8
push.v self.timer
sub.v.i
sub.v.v
pushi.e 8
push.v self.timer
sub.v.i
pushi.e 2
mul.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.x
push.v self.ystart
pushi.e 8
push.v self.timer
sub.v.i
sub.v.v
pushi.e 8
push.v self.timer
sub.v.i
pushi.e 2
mul.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.y

:[13]
push.v self.timer
pushi.e 2
cmp.i.v EQ
bt [19]

:[14]
push.v self.timer
pushi.e 3
cmp.i.v EQ
bt [19]

:[15]
push.v self.timer
pushi.e 6
cmp.i.v EQ
bt [19]

:[16]
push.v self.timer
pushi.e 8
cmp.i.v EQ
bt [19]

:[17]
push.v self.timer
pushi.e 10
cmp.i.v EQ
bt [19]

:[18]
push.v self.timer
pushi.e 11
cmp.i.v EQ
b [20]

:[19]
push.e 1

:[20]
bf [22]

:[21]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1667
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[22]
push.v self.timer
pushi.e 6
cmp.i.v GT
bf [24]

:[23]
push.v self.image_alpha
push.d 0.4
sub.d.v
pop.v.v self.image_alpha

:[24]
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [26]

:[25]
call.i instance_destroy(argc=0)
popz.v

:[26]
exit.i

:[27]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [29]

:[28]
push.d 0.5
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 2
add.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 2
add.i.v
push.v self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 2
add.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 2
add.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
call.i draw_self(argc=0)
popz.v
b [40]

:[29]
push.v self.state
pushi.e 3
cmp.i.v LT
bf [40]

:[30]
push.v self.state
pushi.e -1
cmp.i.v EQ
bf [34]

:[31]
push.v self.scale
push.d 0.25
push.v self.scalespeed
mul.v.d
add.v.v
pop.v.v self.scale
push.v self.scale
pushi.e 1
cmp.i.v GT
bf [33]

:[32]
push.d 1.2
pop.v.d self.scale
pushi.e 0
pop.v.i self.state

:[33]
b [39]

:[34]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [36]

:[35]
pushi.e 1
pop.v.i self.scale
pushi.e 1
pop.v.i self.state
b [39]

:[36]
push.v self.state
pushi.e 2
cmp.i.v EQ
bf [39]

:[37]
push.v self.scale
push.d 0.25
push.v self.scalespeed
mul.v.d
sub.v.v
pop.v.v self.scale
push.v self.scale
pushi.e 0
cmp.i.v LTE
bf [39]

:[38]
call.i instance_destroy(argc=0)
popz.v

:[39]
push.d 0.5
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.y
push.v self.sprite_height
push.v self.scale
mul.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 2
add.i.v
push.v self.x
push.v self.sprite_width
push.v self.scale
mul.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 2
add.i.v
push.v self.y
push.v self.sprite_height
push.v self.scale
mul.v.v
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 2
add.i.v
push.v self.x
push.v self.sprite_width
push.v self.scale
mul.v.v
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 2
add.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.scale
push.v self.scale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[40]
push.v self.mock
pushi.e 1
cmp.i.v EQ
bf [end]

:[41]
push.v self.mocktimer
push.d 0.25
add.d.v
pop.v.v self.mocktimer
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
push.v self.y
pushi.e 5
add.i.v
push.v self.x
pushi.e 5
sub.i.v
push.v self.mocktimer
push.v self.spr_poppup_smiley
call.i draw_sprite_ext(argc=9)
popz.v

:[end]