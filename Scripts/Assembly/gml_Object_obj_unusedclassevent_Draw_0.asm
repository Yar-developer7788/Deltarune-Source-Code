.localvar 2 arguments

:[0]
push.v self.lightsoff
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 900
conv.i.v
pushi.e 900
conv.i.v
pushi.e -100
conv.i.v
pushi.e -100
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[2]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [end]

:[3]
push.v self.lightsoff
pushi.e 2
cmp.i.v EQ
bf [end]

:[4]
push.i 990000
pop.v.i self.depth
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2768
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]