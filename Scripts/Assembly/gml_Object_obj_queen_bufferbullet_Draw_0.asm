.localvar 2 arguments

:[0]
call.i draw_self(argc=0)
popz.v
push.v self.afterimage
conv.v.b
bf [2]

:[1]
pushi.e 547
conv.i.v
call.i gml_Script_scr_custom_afterimage(argc=1)
popz.v

:[2]
pushi.e 562
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[3]
call.i gml_Script_scr_queen_buffercheck(argc=0)
conv.v.b
b [5]

:[4]
push.e 0

:[5]
bf [end]

:[6]
push.v self.y
push.v self.x
push.v 562.bufferbar
pushi.e 8
mod.i.v
pushi.e 1928
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]