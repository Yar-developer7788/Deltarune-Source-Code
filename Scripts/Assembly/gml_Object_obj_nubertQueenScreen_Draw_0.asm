.localvar 2 arguments

:[0]
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
push.v self.y
push.v self.siner
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
conv.i.d
div.d.v
add.v.v
pop.v.v self.y
pushglb.v global.plot
pushi.e 100
cmp.i.v LT
bf [3]

:[1]
pushi.e 103
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
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
pushi.e 5
sub.i.v
push.v self.x
pushi.e 4
sub.i.v
pushi.e 11
conv.i.v
pushi.e 37
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
pushi.e -2
conv.i.v
push.v self.y
push.v 103.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 5
sub.i.v
push.v self.x
push.v 103.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 4
sub.i.v
push.v 103.image_index
pushi.e 1257
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[3]
pushglb.v global.plot
pushi.e 100
cmp.i.v GTE
bf [end]

:[4]
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
pushi.e 5
sub.i.v
push.v self.x
pushi.e 4
sub.i.v
pushi.e 11
conv.i.v
pushi.e 37
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
pushi.e 24
sub.i.v
push.v self.x
pushi.e 30
sub.i.v
pushi.e 2
conv.i.v
pushi.e 1257
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]