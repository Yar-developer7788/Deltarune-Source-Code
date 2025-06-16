.localvar 2 arguments

:[0]
push.v self.stompwait
pushi.e 0
cmp.i.v GT
bf [23]

:[1]
push.v self.stompwait
push.e 1
sub.i.v
pop.v.v self.stompwait
push.v self.stompwait
pushi.e 0
cmp.i.v LTE
bf [3]

:[2]
pushi.e 1
pop.v.i self.active
push.v self.depth
pushi.e 1
add.i.v
pop.v.v self.depth

:[3]
push.v self.direction
pushi.e 270
cmp.i.v EQ
bf [8]

:[4]
pushi.e 1
conv.i.v
push.v self.stompwait
pushi.e 4
mod.i.v
pushi.e 2
cmp.i.v LT
bf [6]

:[5]
pushi.e 255
conv.i.v
b [7]

:[6]
push.i 65535
conv.i.v

:[7]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v 872.y
push.v self.x
pushi.e 9
conv.i.v
pushi.e 2181
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[8]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.b.v
push.v 872.y
pushi.e 69
add.i.v
push.v self.x
pushi.e 23
add.i.v
push.v 872.y
pushi.e 69
sub.i.v
push.v self.x
pushi.e 23
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.b.v
push.v 872.y
pushi.e 69
add.i.v
pushi.e 1
add.i.v
push.v self.x
pushi.e 23
add.i.v
pushi.e 1
add.i.v
push.v 872.y
pushi.e 69
sub.i.v
pushi.e 1
add.i.v
push.v self.x
pushi.e 23
sub.i.v
pushi.e 1
add.i.v
call.i draw_rectangle(argc=5)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.direction
pushi.e 90
cmp.i.v EQ
bf [13]

:[9]
pushi.e 1
conv.i.v
push.v self.stompwait
pushi.e 4
mod.i.v
pushi.e 2
cmp.i.v LT
bf [11]

:[10]
pushi.e 255
conv.i.v
b [12]

:[11]
push.i 4235519
conv.i.v

:[12]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v 872.y
pushi.e 40
add.i.v
push.v self.stompwait
sub.v.v
push.v self.x
pushi.e 9
conv.i.v
pushi.e 2181
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[13]
push.v self.direction
pushi.e 0
cmp.i.v EQ
bf [18]

:[14]
pushi.e 1
conv.i.v
push.v self.stompwait
pushi.e 4
mod.i.v
pushi.e 2
cmp.i.v LT
bf [16]

:[15]
pushi.e 255
conv.i.v
b [17]

:[16]
push.i 4235519
conv.i.v

:[17]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v 872.x
pushi.e 40
sub.i.v
push.v self.stompwait
add.v.v
pushi.e 9
conv.i.v
pushi.e 2181
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[18]
push.v self.direction
pushi.e 180
cmp.i.v EQ
bf [23]

:[19]
pushi.e 1
conv.i.v
push.v self.stompwait
pushi.e 4
mod.i.v
pushi.e 2
cmp.i.v LT
bf [21]

:[20]
pushi.e 255
conv.i.v
b [22]

:[21]
push.i 4235519
conv.i.v

:[22]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v 872.x
pushi.e 40
add.i.v
push.v self.stompwait
sub.v.v
pushi.e 9
conv.i.v
pushi.e 2181
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[23]
call.i gml_Script_scr_drawinbulletbox(argc=0)
popz.v
push.v self.hurttimer
pushi.e 0
cmp.i.v GT
bf [25]

:[24]
push.v self.hurttimer
push.e 1
sub.i.v
pop.v.v self.hurttimer
push.v self.hurtx
pushi.e 4
sub.i.v
pushi.e 8
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.x
push.v self.hurty
pushi.e 4
sub.i.v
pushi.e 8
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.y
pushi.e 255
pop.v.i self.image_blend

:[25]
push.v self.hittimer
pushi.e 0
cmp.i.v GT
bf [end]

:[26]
push.v self.hittimer
push.e 1
sub.i.v
pop.v.v self.hittimer

:[end]