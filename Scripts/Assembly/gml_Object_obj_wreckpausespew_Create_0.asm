.localvar 2 arguments

:[0]
push.s "spr_sneo_playback"@12033
conv.s.v
call.i gml_Script_scr_84_get_sprite(argc=1)
pop.v.v self.playback_sprite
pushi.e 0
pop.v.i self.image_speed

:[end]