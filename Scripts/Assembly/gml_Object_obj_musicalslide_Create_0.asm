.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.sweetcon
pushi.e 0
pop.v.i self.sweettimer
pushi.e 0
pop.v.i self.sweet
pushi.e 0
pop.v.i self.table
pushi.e 160
pop.v.i self.gameIntroY
pushi.e 280
pop.v.i self.gameStartY
pushi.e 0
pop.v.i self.state
pushi.e 0
pop.v.i self.stateSub
pushi.e 200
pop.v.i self.lanesX
pushi.e 60
pop.v.i self.lanesWidth
pushi.e 4
pop.v.i self.lanesCount
call.i gml_Script_cameraheight(argc=0)
pushi.e 80
sub.i.v
pop.v.v self.lanesEndY
pushi.e 0
pop.v.i self.lanesFadein
pushi.e 0
pop.v.i self.lanesEndFadein
pushi.e 10
pop.v.i self.slideSpeed
pushi.e -4
pop.v.i self.slideSound
pushi.e 0
pop.v.i self.slideRal
pushi.e 0
pop.v.i self.slideSus
pushi.e 117
pop.v.i self.bpm
push.v self.bpm
pushi.e 60
conv.i.d
div.d.v
pop.v.v self.bps
pushi.e 1
conv.i.d
push.v self.bps
div.v.d
pop.v.v self.spb
push.v self.bps
pushi.e 0
conv.i.v
call.i game_get_speed(argc=1)
div.v.v
pop.v.v self.bpf
pushi.e 0
pop.v.i self.beats
pushi.e 0
pop.v.i self.beatsPrev
pushi.e 0
pop.v.i self.flashAlpha
pushi.e 0
pop.v.i self.bigFlash
pushi.e 0
conv.i.v
call.i game_get_speed(argc=1)
pop.v.v self.frameRate
push.s "TILES"@32763
conv.s.v
call.i layer_get_id(argc=1)
pop.v.v self.tileLayer
push.s "SPRITES_SlideTransition"@36476
conv.s.v
call.i layer_get_id(argc=1)
pop.v.v self.spriteLayer
pushi.e 0
pop.v.i self.soundTimeStep
pushi.e 0
pop.v.b self.fadingOut
pushi.e 0
pop.v.i self.fadeToWhite
push.v self.frameRate
push.v self.bps
mul.v.v
pop.v.v self.fpb
pushi.e 4
conv.i.v
push.v self.fpb
pushi.e 0
conv.i.v
call.i gml_Script_scr_slidebeatbullet(argc=3)
popz.v
pushi.e 8
conv.i.v
push.v self.fpb
pushi.e 1
conv.i.v
call.i gml_Script_scr_slidebeatbullet(argc=3)
popz.v
pushi.e 12
conv.i.v
push.v self.fpb
pushi.e 2
conv.i.v
call.i gml_Script_scr_slidebeatbullet(argc=3)
popz.v
pushi.e 12
conv.i.v
push.v self.fpb
pushi.e 0
conv.i.v
call.i gml_Script_scr_slidebeatbullet(argc=3)
popz.v
pushi.e 16
conv.i.v
push.v self.fpb
pushi.e 1
conv.i.v
call.i gml_Script_scr_slidebeatbullet(argc=3)
popz.v
pushi.e 16
conv.i.v
push.v self.fpb
pushi.e 3
conv.i.v
call.i gml_Script_scr_slidebeatbullet(argc=3)
popz.v
pushi.e 20
conv.i.v
push.v self.fpb
push.d 0.5
mul.d.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_slidebeatbullet(argc=3)
popz.v
pushi.e 20
conv.i.v
push.v self.fpb
push.d 0.5
mul.d.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_slidebeatbullet(argc=3)
popz.v
pushi.e 24
conv.i.v
push.v self.fpb
push.d 0.5
mul.d.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_slidebeatbullet(argc=3)
popz.v
pushi.e 24
conv.i.v
push.v self.fpb
push.d 0.5
mul.d.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_slidebeatbullet(argc=3)
popz.v
pushi.e 28
conv.i.v
push.v self.fpb
push.d 0.5
mul.d.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_slidebeatbullet(argc=3)
popz.v
pushi.e 28
conv.i.v
push.v self.fpb
push.d 0.5
mul.d.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_slidebeatbullet(argc=3)
popz.v
push.d 28.5
conv.d.v
push.v self.fpb
push.d 0.25
mul.d.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_slidebeatbullet(argc=3)
popz.v
pushi.e 29
conv.i.v
push.v self.fpb
push.d 0.25
mul.d.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_slidebeatbullet(argc=3)
popz.v
push.d 29.5
conv.d.v
push.v self.fpb
push.d 0.25
mul.d.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_slidebeatbullet(argc=3)
popz.v
pushi.e 30
conv.i.v
push.v self.fpb
push.d 0.25
mul.d.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_slidebeatbullet(argc=3)
popz.v
push.d 30.5
conv.d.v
push.v self.fpb
push.d 0.25
mul.d.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_slidebeatbullet(argc=3)
popz.v
push.d 30.75
conv.d.v
push.v self.fpb
push.d 0.25
mul.d.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_slidebeatbullet(argc=3)
popz.v
pushi.e 31
conv.i.v
push.v self.fpb
push.d 0.25
mul.d.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_slidebeatbullet(argc=3)
popz.v
push.d 31.5
conv.d.v
push.v self.fpb
push.d 0.25
mul.d.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_slidebeatbullet(argc=3)
popz.v
pushi.e 32
conv.i.v
push.v self.fpb
push.d 0.25
mul.d.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_slidebeatbullet(argc=3)
popz.v

:[end]