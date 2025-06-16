.localvar 2 arguments

:[0]
call.i gml_Script_scr_enemy_object_init(argc=0)
popz.v
pushi.e 90
pop.v.i self.talkmax
push.d 0.16666666666666666
pop.v.d self.image_speed
pushi.e 1630
pop.v.i self.idlesprite
pushi.e 1631
pop.v.i self.hurtsprite
pushi.e 1632
pop.v.i self.sparedsprite
pushi.e 0
pop.v.i self.chasecheck
pushi.e 0
pop.v.b self.virokun_battle
pushi.e 0
pop.v.b self.virokun_battle_init
pushi.e 0
pop.v.i self.nact_count
pushi.e 0
pop.v.b self.nact_balloon
pushi.e 0
pop.v.i self.ultimatehealprompt

:[end]