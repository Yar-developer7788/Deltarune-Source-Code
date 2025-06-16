.localvar 2 arguments

:[0]
call.i gml_Script_scr_enemy_object_init(argc=0)
popz.v
pushi.e 1
conv.i.v
pushi.e 90
conv.i.v
pushi.e 130
conv.i.v
call.i audio_play_sound(argc=3)
pop.v.v self.solo_music
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 130
conv.i.v
call.i gml_Script_snd_volume(argc=3)
popz.v
pushi.e 718
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 1
pop.v.i 357.hidemercy
push.v 357.depth
pushi.e 1
sub.i.v
pop.v.v self.depth
pushi.e 180
pop.v.i self.talkmax
push.d 0.16666666666666666
pop.v.d self.image_speed
pushi.e 1779
pop.v.i self.idlesprite
pushi.e 1778
pop.v.i self.hurtsprite
pushi.e 1778
pop.v.i self.sparedsprite
pushi.e 0
pop.v.i self.recruitable
pushi.e 0
pop.v.i self.musical_bullet_difficulty
pushi.e 0
pop.v.b self.dancing
pushi.e 0
pop.v.i self.danceCounter
pushi.e 0
pop.v.i self.actCounter
pushi.e 0
pop.v.b self.learnedAct
pushi.e 0
pop.v.b self.letsdance
pushi.e 0
pop.v.b self.letsdance2
pushi.e 0
pop.v.b self.letsdance3
pushi.e 0
pop.v.b self.stoppeddance
pushi.e 0
pop.v.i self.dancecon
pushi.e 0
pop.v.i self.dancescenetimer
pushi.e 0
pop.v.i self.dancescenetimer2
pushi.e 0
pop.v.i self.scon
pushi.e 0
pop.v.i self.milktimer
pushi.e 0
pop.v.i self.heal
pushi.e 0
pop.v.i self.helpusattack
pushi.e 0
pop.v.i self.postattackscene
pushi.e 0
pop.v.i self.happyfeetscenejusthappened
pushi.e 0
pop.v.i self.groove
pushi.e 0
pop.v.i self.siner2
pushi.e 0
pop.v.i self.musicalnotetimer
pushi.e 0
pop.v.i self.stoppeddancingcounter
pushi.e 0
pop.v.i self.hurtstate2
pushi.e 0
pop.v.i self.dancetimer
pushi.e 0
pop.v.i self.dance_index
pushi.e 0
pop.v.i self.updatetimer
pushi.e 0
pop.v.i self.sweetdanceprev
pushi.e 0
pop.v.i self.capndanceprev
pushi.e 0
pop.v.i self.kkdanceprev
pushi.e 0
pop.v.i self.learnedhowtoact
pushi.e 0
pop.v.i self.solotimer
pushi.e 0
pop.v.i self.backingtimer
pushi.e 0
pop.v.i self.endcon
pushi.e 0
pop.v.i self.endtimer
pushi.e 0
pop.v.i self.simultotal_funny

:[end]