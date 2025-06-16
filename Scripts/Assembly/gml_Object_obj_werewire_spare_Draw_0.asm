.localvar 2 arguments

:[0]
push.v self.sprite_index
pushi.e 1729
cmp.i.v NEQ
bf [2]

:[1]
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
add.i.v
push.v self.x
pushi.e 2
add.i.v
pushi.e 1
conv.i.v
pushi.e 1729
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
call.i draw_self(argc=0)
popz.v

:[end]