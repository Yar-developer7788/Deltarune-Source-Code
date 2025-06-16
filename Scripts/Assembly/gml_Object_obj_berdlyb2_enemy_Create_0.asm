.localvar 2 arguments

:[0]
pushi.e 69
pop.v.i self.berdlytalk
pushi.e 76
pop.v.i self.noelletalk
call.i gml_Script_scr_enemy_object_init(argc=0)
popz.v
pushi.e 90
pop.v.i self.default_talkmax
pushi.e 90
pop.v.i self.talkmax
push.d 0.16666666666666666
pop.v.d self.image_speed
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 0
cmp.i.v GT
pop.v.b self.sideb_route
push.v self.sideb_route
conv.v.b
bf [2]

:[1]
pushi.e 1850
conv.i.v
b [3]

:[2]
pushi.e 1849
conv.i.v

:[3]
pop.v.v self.idlesprite
pushi.e 693
pop.v.i self.hurtsprite
pushi.e 702
pop.v.i self.sparedsprite
pushi.e 1
pop.v.i self.difficulty
pushi.e 0
pop.v.i self.kact_count
pushi.e 0
pop.v.b self.spill
pushi.e 0
pop.v.i self.nact_count
pushi.e 0
pop.v.i self.naction_count
pushi.e 0
pop.v.b self.hurt_noelle
pushi.e 0
pop.v.b self.hurt_noelle_talk
pushi.e -5
pushi.e 4
push.v [array]self.hp
pop.v.v self.noelle_hp_start
pushi.e -1
pop.v.i self.bulletoverride
pushi.e 0
pop.v.b self.kris_defeat_talk
pushi.e 0
pop.v.i self.kris_defeat_con
pushi.e 0
pop.v.i self.balloon_con
pushi.e 0
pop.v.b self.wirewait
pushi.e 0
pop.v.b self.summoning
pushi.e 0
pop.v.i self.freezable
pushi.e 0
pop.v.i self.mercy_add_amount
push.s ""@157
pop.v.s self.berdly_last_line
pushi.e 0
pop.v.i self.sidebcon
pushi.e 0
pop.v.i self.snowgrave_con
pushi.e 0
pop.v.i self.snowgrave_counter
pushi.e 0
pop.v.i self.attack_phase
pushi.e 0
pop.v.i self.chosenattack
pushi.e 0
pop.v.i self.talkcon
pushi.e 0
pop.v.i self.summontimer
pushi.e 0
pop.v.i self.rr
pushi.e 0
pop.v.i self.endbattle

:[end]