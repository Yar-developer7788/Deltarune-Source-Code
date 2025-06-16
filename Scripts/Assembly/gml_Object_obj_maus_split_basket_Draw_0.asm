.localvar 2 arguments

:[0]
call.i draw_self(argc=0)
popz.v
push.v self.draw_in
conv.v.b
bf [2]

:[1]
pushi.e 2
push.v self.draw_in_timer
pushi.e 10
conv.i.d
div.d.v
sub.v.i
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.draw_in_timer
sub.v.v
push.v self.x
pushi.e 40
sub.i.v
pushi.e 0
conv.i.v
pushi.e 2091
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.draw_in_timer
push.e 1
add.i.v
pop.v.v self.draw_in_timer

:[2]
pushi.e 768
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[end]