.localvar 2 arguments

:[0]
call.i gml_Script_scr_enemy_object_init(argc=0)
popz.v
pushi.e 90
pop.v.i self.talkmax
push.d 0.16666666666666666
pop.v.d self.image_speed
pushi.e 1830
pop.v.i self.idlesprite
pushi.e 1831
pop.v.i self.hurtsprite
pushi.e 1832
pop.v.i self.sparedsprite
pushi.e 0
pop.v.i self.bodymode
pushi.e 0
pop.v.i self.bodycon
pushi.e 0
pop.v.i self.bodytimer
pushi.e 1836
conv.i.v
pushi.e -999
conv.i.v
pushi.e -999
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.headpiece
pushi.e -10
push.v self.headpiece
pushi.e -9
pop.v.i [stacktop]self.depth
push.d 0.1
push.v self.headpiece
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e 0
pop.v.i self.bodyadvance
pushi.e -1
pop.v.i self.bulletoverride
pushi.e 0
pop.v.i self.help_counter
pushi.e 0
pop.v.i self.vacuum_attack
pushi.e 0
pop.v.i self.singles_attack
pushi.e 0
pop.v.i self.enlarge_attack
pushi.e 0
pop.v.b self.party_heal
pushi.e 0
pop.v.i self.deal_counter
pushi.e 0
pop.v.i self.deal_read
pushi.e 0
pop.v.i self.correct_answer
pushi.e 0
pop.v.i self.kromer_message
push.v self.x
pop.v.v self.remx
push.v self.y
pop.v.v self.remy
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 20
pop.v.v [array]self.flag
pushi.e 0
pop.v.i self.shakeamt
pushi.e 0
pop.v.i self.expand_spam

:[end]