.localvar 2 arguments

:[0]
pushi.e 2
conv.i.v
push.v self.target_y
push.v self.target_x
push.v self.y
push.v self.x
call.i draw_line_width(argc=5)
popz.v
call.i draw_self(argc=0)
popz.v

:[end]