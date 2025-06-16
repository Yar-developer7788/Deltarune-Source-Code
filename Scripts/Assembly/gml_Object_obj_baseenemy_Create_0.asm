.localvar 2 arguments

:[0]
call.i gml_Script_scr_enemy_object_init(argc=0)
popz.v
pushi.e 5
pop.v.i self.recruitcount
pushi.e 90
pop.v.i self.talkmax
push.d 0.16666666666666666
pop.v.d self.image_speed
pushi.e 1561
pop.v.i self.idlesprite
pushi.e 1563
pop.v.i self.hurtsprite
pushi.e 1565
pop.v.i self.sparedsprite
pushi.e 1
pop.v.i self.custom_draw_example

:[end]