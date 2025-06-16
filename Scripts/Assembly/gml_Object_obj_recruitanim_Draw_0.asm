.localvar 2 arguments

:[0]
call.i draw_self(argc=0)
popz.v
push.v self.secondnumber
pushi.e 1
cmp.i.v GT
bf [end]

:[1]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.damagefontgold
call.i draw_set_font(argc=1)
popz.v
push.v self.image_alpha
call.i draw_set_alpha(argc=1)
popz.v
push.v self.firstnumber
push.v self.y
pushi.e 35
add.i.v
push.v self.x
pushi.e 70
sub.i.v
call.i draw_text(argc=3)
popz.v
push.v self.secondnumber
push.v self.y
pushi.e 35
add.i.v
push.v self.x
pushi.e 30
sub.i.v
call.i draw_text(argc=3)
popz.v
push.v self.y
pushi.e 35
add.i.v
push.v self.x
pushi.e 50
sub.i.v
pushi.e 13
conv.i.v
pushi.e 2529
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]