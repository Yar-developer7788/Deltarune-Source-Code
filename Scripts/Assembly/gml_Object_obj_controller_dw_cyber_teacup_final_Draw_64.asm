.localvar 2 arguments

:[0]
push.s "State: "@37738
push.v self.con
call.i string(argc=1)
add.v.s
pushi.e 460
conv.i.v
pushi.e 5
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "teacup1.y: "@37739
push.v self.teacup1
pushi.e -9
push.v [stacktop]self.y
call.i string(argc=1)
add.v.s
pushi.e 440
conv.i.v
pushi.e 5
conv.i.v
call.i draw_text(argc=3)
popz.v

:[end]