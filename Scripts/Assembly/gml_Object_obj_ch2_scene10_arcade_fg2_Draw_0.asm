.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.image_alpha
push.d 0.2
add.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 480
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 640
add.i.v
call.i gml_Script_cameray(argc=0)
call.i gml_Script_camerax(argc=0)
call.i draw_rectangle_color(argc=9)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]