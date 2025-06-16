.localvar 2 arguments

:[0]
pushi.e 1
pop.v.i self.visible
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.x
pushbltn.v builtin.room_height
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.y
push.s "dogcheck.ogg"@29544
conv.s.v
call.i gml_Script_snd_init(argc=1)
pop.v.v self.SONG_THAT_EMERGES_FROM_A_SLEEPING_DOG
push.d 0.9
push.d 0.1
conv.d.v
call.i random(argc=1)
add.v.d
pushi.e 1
conv.i.v
push.v self.SONG_THAT_EMERGES_FROM_A_SLEEPING_DOG
call.i gml_Script_mus_loop_ext(argc=3)
popz.v
push.d 0.05
pop.v.d self.image_speed
push.s "DOGTARUNE"@29546
conv.s.v
call.i window_set_caption(argc=1)
popz.v

:[end]