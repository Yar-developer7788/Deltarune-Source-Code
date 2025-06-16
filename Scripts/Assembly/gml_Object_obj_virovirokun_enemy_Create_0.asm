.localvar 2 arguments

:[0]
call.i gml_Script_scr_enemy_object_init(argc=0)
popz.v
pushi.e 90
pop.v.i self.talkmax
push.d 0.16666666666666666
pop.v.d self.image_speed
pushi.e 1797
pop.v.i self.idlesprite
pushi.e 1799
pop.v.i self.hurtsprite
pushi.e 1800
pop.v.i self.sparedsprite
pushi.e -4
pop.v.i self.explosion
pushi.e 0
pop.v.b self.omawaroid_battle
pushi.e 0
pop.v.b self.omawaroid_battle_init
pushi.e 0
pop.v.i self.noelle_special
pushi.e 0
pop.v.i self.noelle_splat
pushi.e 0
pop.v.i self.noelle_special_con
pushi.e 0
pop.v.i self.viro_talk
pushi.e 0
pop.v.i self.init
pushi.e -1000
pop.v.i self.nise_noelle
pushi.e 0
pop.v.b self.noelle_fall
pushi.e 0
pop.v.i self.noelle_fall_timer
pushi.e 0
pop.v.i self.sinerx
pushi.e 0
pop.v.i self.sinery
pushi.e 0
pop.v.i self.siner0
push.d 0.1
pop.v.d self.siner_add0
pushi.e 0
pop.v.i self.siner_amplitude0
pushi.e 0
pop.v.i self.siner_direction0
pushi.e 0
pop.v.i self.siner1
push.d 0.1
pop.v.d self.siner_add1
pushi.e 0
pop.v.i self.siner_amplitude1
pushi.e 90
pop.v.i self.siner_direction1
pushglb.v global.encounterno
pushi.e 73
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i self.noelle_special
push.i 231908
setowner.e
pushi.e 90
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermaxhp
push.i 231862
setowner.e
pushi.e 90
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterhp

:[end]