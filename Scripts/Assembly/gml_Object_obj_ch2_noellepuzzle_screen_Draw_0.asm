.localvar 2 arguments

:[0]
call.i draw_self(argc=0)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.sprite_index
call.i sprite_get_height(argc=1)
push.v self.image_xscale
mul.v.v
add.v.v
pushi.e 10
add.i.v
push.v self.x
pushi.e 87
add.i.v
push.v self.speaker_index
pushi.e 2394
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.x
pushi.e 95
add.i.v
pop.v.v self._xx
push.v self.y
pushi.e 25
add.i.v
pop.v.v self._yy
push.v self.myString
push.s "?"@4913
cmp.s.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.b self.won
b [3]

:[2]
pushi.e 1
pop.v.b self.won

:[3]
pushi.e 2
conv.i.v
call.i draw_set_font(argc=1)
popz.v
push.v self.unsolved
call.i draw_set_color(argc=1)
popz.v
push.v self.won
conv.v.b
bf [5]

:[4]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[5]
push.v self.myString
push.v self._yy
push.v self._xx
call.i draw_text(argc=3)
popz.v

:[end]