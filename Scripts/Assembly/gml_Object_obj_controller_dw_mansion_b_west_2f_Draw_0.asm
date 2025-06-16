.localvar 2 arguments

:[0]
pushi.e -5
pushi.e 373
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.animsiner
push.e 1
add.i.v
pop.v.v self.animsiner
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
pushi.e 2280
conv.i.v
pushi.e 320
conv.i.v
push.v self.animsiner
pushi.e 6
conv.i.d
div.d.v
pushi.e 2955
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [end]

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
pushi.e 2280
conv.i.v
pushi.e 320
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2956
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]