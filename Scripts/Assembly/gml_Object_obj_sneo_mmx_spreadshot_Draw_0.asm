.localvar 2 arguments

:[0]
call.i draw_self(argc=0)
popz.v
push.v self.flashtimer
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.flashtimer
push.e 1
sub.i.v
pop.v.v self.flashtimer

:[2]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.i 65535
conv.i.v
pushi.e 1
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
push.v self.flashtimer
pushi.e 5
conv.i.d
div.d.v
push.i 65535
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushi.e 2
sub.i.v
push.v self.x
pushi.e 2
sub.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v

:[end]