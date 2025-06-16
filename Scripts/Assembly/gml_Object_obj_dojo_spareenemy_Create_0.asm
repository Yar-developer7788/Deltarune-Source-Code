.localvar 2 arguments

:[0]
call.i gml_Script_scr_enemy_object_init(argc=0)
popz.v
pushi.e 90
pop.v.i self.talkmax
push.d 0.16666666666666666
pop.v.d self.image_speed
push.v self.sprite_index
pop.v.v self.idlesprite
pushi.e 1176
pop.v.i self.hurtsprite
push.v self.sprite_index
pop.v.v self.sparedsprite
pushi.e 0
pop.v.i self.custom_draw_example
pushi.e 0
pop.v.i self.battlestate
pushi.e 0
pop.v.i self.beardcount
pushi.e 0
pop.v.i self.sparecon
pushi.e 0
pop.v.i self.pacifycon
pushi.e 0
pop.v.i self.ambushed
pushi.e 0
pop.v.b self.shaved
pushi.e 0
pop.v.b self.tensionstate
pushi.e 0
pop.v.b self.checkreact
pushi.e 0
pop.v.i self.shavesprite

:[end]