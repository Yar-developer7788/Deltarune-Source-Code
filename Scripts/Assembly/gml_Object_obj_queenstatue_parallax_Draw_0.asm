.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.parallaxer
call.i gml_Script_camerax(argc=0)
pushbltn.v builtin.room_width
sub.v.v
pushi.e 20
conv.i.d
div.d.v
pop.v.v self.parallaxer
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e -230
conv.i.v
pushi.e 672
push.v self.parallaxer
add.v.i
pushi.e 44
add.i.v
pushi.e 0
conv.i.v
pushi.e 2868
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]