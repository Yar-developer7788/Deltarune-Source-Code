.localvar 2 arguments

:[0]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.bulletcount
conv.v.i
push.v [array]self.bullet_frame
pushi.e 20
conv.i.v
pushi.e 20
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -1
push.v self.bulletcount
conv.v.i
push.v [array]self.bullet_pos
pushi.e 40
conv.i.v
pushi.e 20
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -1
push.v self.bulletcount
conv.v.i
push.v [array]self.bullet_height
pushi.e 60
conv.i.v
pushi.e 20
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -1
pushi.e 1
push.v [array]self.bullet_frame
pushi.e 20
conv.i.v
pushi.e 70
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -1
pushi.e 1
push.v [array]self.bullet_pos
pushi.e 40
conv.i.v
pushi.e 70
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -1
pushi.e 1
push.v [array]self.bullet_height
pushi.e 60
conv.i.v
pushi.e 70
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -1
pushi.e 2
push.v [array]self.bullet_frame
pushi.e 20
conv.i.v
pushi.e 150
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -1
pushi.e 2
push.v [array]self.bullet_pos
pushi.e 40
conv.i.v
pushi.e 150
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -1
pushi.e 2
push.v [array]self.bullet_height
pushi.e 60
conv.i.v
pushi.e 150
conv.i.v
call.i draw_text(argc=3)
popz.v

:[end]