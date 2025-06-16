.localvar 2 arguments

:[0]
pushbltn.v builtin.room
pop.v.v global.currentroom
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
call.i gml_Script_snd_init_ch1(argc=1)
pop.v.v self.SONG_THAT_EMERGES_FROM_A_SLEEPING_DOG
push.d 0.9
push.d 0.1
conv.d.v
call.i random(argc=1)
add.v.d
pushi.e 1
conv.i.v
push.v self.SONG_THAT_EMERGES_FROM_A_SLEEPING_DOG
call.i gml_Script_mus_loop_ext_ch1(argc=3)
popz.v
push.d 0.05
pop.v.d self.image_speed
push.s "PROCESS_DOG_slash_Create_0_gml_12_0"@41881
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i window_set_caption(argc=1)
popz.v
pushi.e 0
pop.v.i self.buffer
pushi.e 0
pop.v.b self.start_timer
pushi.e 0
pop.v.i self.restart_timer

:[end]