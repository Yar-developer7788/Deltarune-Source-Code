.localvar 2 arguments

:[0]
call.i gml_Script_camerax(argc=0)
push.v self.cx
add.v.v
call.i gml_Script_cameray(argc=0)
push.v self.factor
div.v.v
sub.v.v
pop.v.v self.drawx
pushi.e 0
conv.b.v
pushi.e 255
conv.i.v
pushi.e 255
conv.i.v
pushi.e 255
conv.i.v
pushi.e 255
conv.i.v
push.v self.y
pushi.e 319
add.i.v
pushi.e 719
push.v self.cx
add.v.i
push.v self.y
pushi.e 240
add.i.v
pushi.e 522
push.v self.cx
add.v.i
call.i draw_rectangle_color(argc=9)
popz.v

:[end]