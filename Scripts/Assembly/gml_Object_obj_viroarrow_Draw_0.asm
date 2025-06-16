.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 20
conv.i.d
div.d.v
call.i sin(argc=1)
call.i abs(argc=1)
pop.v.v self.alphaer1
push.v self.timer
pushi.e 10
add.i.v
pushi.e 20
conv.i.d
div.d.v
call.i sin(argc=1)
call.i abs(argc=1)
pop.v.v self.alphaer2
push.v self.alphaer1
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e -2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2727
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.alphaer2
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e -2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 10
add.i.v
pushi.e 0
conv.i.v
pushi.e 2727
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]