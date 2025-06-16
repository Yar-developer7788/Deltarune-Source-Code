.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 0
pop.v.i self.destroyonhit
pushi.e 2
pop.v.i self.image_xscale
push.v self.image_xscale
pop.v.v self.image_yscale
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e -5
pushi.e 1
push.v [array]self.batmusic
call.i audio_sound_get_track_position(argc=1)
pop.v.v self.soundTimeStep
pushi.e 0
pop.v.i self.variant
pushi.e 0
pop.v.i self.varianty
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.failed

:[end]