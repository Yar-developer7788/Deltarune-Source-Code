.localvar 2 arguments

:[0]
call.i gml_Script_cameray(argc=0)
pushi.e 400
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 20
add.i.v
push.v self.image_index
push.v self.playback_sprite
call.i draw_sprite(argc=4)
popz.v

:[end]