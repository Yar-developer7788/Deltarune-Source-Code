.localvar 2 arguments

:[0]
call.i gml_Script_scr_enemy_object_init(argc=0)
popz.v
pushi.e -60
pop.v.i self.sactionboxx
pushi.e 90
pop.v.i self.talkmax
push.d 0.16666666666666666
pop.v.d self.image_speed
pushi.e 0
pop.v.b self.visible
pushi.e 1849
pop.v.i self.idlesprite
pushi.e 1076
pop.v.i self.hurtsprite
pushi.e 1076
pop.v.i self.sparedsprite
pushi.e 0
pop.v.i self.difficulty
pushi.e 0
pop.v.i self.kriscoaster
pushi.e 0
pop.v.i self.suscoaster
pushi.e 0
pop.v.i self.ralcoaster
pushi.e 0
pop.v.i self.nitro
pushi.e 0
pop.v.i self.premonition
pushi.e 0
pop.v.i self.mrboneswildride
pushi.e 0
pop.v.i self.bumpactstarted
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.attackorder
pushi.e 868
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 0
pop.v.i self.recruitable
pushi.e 372
pushenv [4]

:[3]
call.i gml_Script_camerax(argc=0)
pushi.e 200
sub.i.v
pop.v.v self.x

:[4]
popenv [3]
pushi.e 373
pushenv [6]

:[5]
call.i gml_Script_camerax(argc=0)
pushi.e 200
sub.i.v
pop.v.v self.x

:[6]
popenv [5]
pushi.e 374
pushenv [8]

:[7]
call.i gml_Script_camerax(argc=0)
pushi.e 200
sub.i.v
pop.v.v self.x

:[8]
popenv [7]
pushi.e 0
pop.v.i self.tornadocount
pushi.e 0
pop.v.i self.spearblastcount
pushi.e 0
pop.v.i self.chirchicount
pushi.e 0
pop.v.i self.recruitable
pushi.e 0
pop.v.i self.rideactgo
pushi.e 0
pop.v.i self.dialoguecon
pushi.e 0
pop.v.i self.bumpedfirsttime
pushi.e 0
pop.v.i self.bumpedpast50percent
pushi.e 0
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonorder
pushi.e 0
pop.v.i self.talkedcon
pushi.e 0
pop.v.i self.bumpwait
pushi.e 0
pop.v.i self.krisgo
pushi.e 0
pop.v.i self.susiego
pushi.e 0
pop.v.i self.ralseigo
pushi.e 0
pop.v.i self.forcedefaultballoon
pushi.e 0
pop.v.i self.bumpactfast
pushi.e 0
pop.v.i self.endcon
pushi.e 0
pop.v.i self.endtime

:[end]