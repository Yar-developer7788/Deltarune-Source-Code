.localvar 2 arguments
.localvar 6531 remtarget 9431

:[0]
pushi.e 1
pop.v.b self.visible
pushi.e 0
pop.v.i self.image_alpha
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.balloontimer
pushi.e 5
pop.v.i self.balloonthreshold
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 276
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.v 82.y
pushi.e 16
sub.i.v
pushi.e 2
add.i.v
push.v 82.x
call.i gml_Script_scr_makecaterpillar(argc=4)
pop.v.v self.caterpillarsus
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
push.v 82.y
pushi.e 12
sub.i.v
pushi.e 2
sub.i.v
push.v 82.x
call.i gml_Script_scr_makecaterpillar(argc=4)
pop.v.v self.caterpillarral
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
push.v 82.y
pushi.e 20
sub.i.v
pushi.e 2
add.i.v
push.v 82.x
pushi.e 4
sub.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
pop.v.v self.caterpillarnoe
push.v self.caterpillarral
pushi.e -9
push.v [stacktop]self.target
pop.v.v local.remtarget
push.v self.caterpillarnoe
pushi.e -9
push.v [stacktop]self.target
push.v self.caterpillarral
pushi.e -9
pop.v.v [stacktop]self.target
pushloc.v local.remtarget
push.v self.caterpillarnoe
pushi.e -9
pop.v.v [stacktop]self.target
pushbltn.v builtin.room
pushi.e 143
cmp.i.v EQ
bf [4]

:[1]
pushi.e 240
conv.i.v
pushi.e 270
conv.i.v
pushi.e 1260
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 287
conv.i.v
pushi.e 320
conv.i.v
pushi.e 320
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.forcefieldtopleft
pushi.e 6
push.v self.forcefieldtopleft
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 287
conv.i.v
pushi.e 320
conv.i.v
pushi.e 440
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.forcefieldtopright
pushi.e 36
push.v self.forcefieldtopright
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 287
conv.i.v
pushi.e 760
conv.i.v
pushi.e 880
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.forcefieldright
pushi.e 100
push.v self.forcefieldright
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 287
pushenv [3]

:[2]
pushi.e 1
pop.v.i self.stayVisible

:[3]
popenv [2]

:[4]
pushi.e 0
pop.v.i self.switchcon
pushi.e -5
pop.v.i self.rodeteacup
pushi.e -1
pop.v.i self.switch3con
pushi.e -1
pop.v.i self.switch2con
pushi.e -1
pop.v.i self.switch1con
pushi.e 999
pop.v.i self.forcefield1
pushi.e 999
pop.v.i self.forcefield2
pushi.e 999
pop.v.i self.forcefield3
pushbltn.v builtin.room
pushi.e 143
cmp.i.v EQ
bf [9]

:[5]
pushi.e -5
pushi.e 448
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.forcefieldtopright
call.i gml_Script_safe_delete(argc=1)
popz.v
push.v self.forcefieldright
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 2
pop.v.i self.switch1con
pushi.e 2
pop.v.i self.switch2con
pushi.e 3
pop.v.i self.rodeteacup
pushi.e 99
pop.v.i self.con

:[7]
pushi.e -5
pushi.e 449
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.v self.forcefieldtopleft
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 4
pop.v.i self.rodeteacup

:[9]
pushbltn.v builtin.room
pushi.e 144
cmp.i.v EQ
bt [11]

:[10]
pushbltn.v builtin.room
pushi.e 143
cmp.i.v EQ
b [12]

:[11]
push.e 1

:[12]
bf [16]

:[13]
pushi.e 224
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 224
pushenv [15]

:[14]
pushi.e 1
pop.v.i self.is_active

:[15]
popenv [14]

:[16]
pushi.e 0
pop.v.i self.fireworkshotcon
pushi.e 0
pop.v.i self.fireworktimer
pushbltn.v builtin.room
pushi.e 145
cmp.i.v EQ
bf [end]

:[17]
pushi.e 0
pop.v.i self.blockleft
pushi.e 0
pop.v.i self.makecaters
pushi.e 0
pop.v.i self.minigame
pushi.e 0
pop.v.i self.minigamecon
pushi.e 0
pop.v.i self.minigamestartcon
pushi.e 0
pop.v.i self.timer
push.i 169605
setowner.e
pushi.e 318
conv.i.v
pushi.e 40
conv.i.v
pushi.e 626
conv.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.balloon
pushi.e -1
pushi.e 0
push.v [array]self.balloon
pushi.e -9
pushenv [19]

:[18]
pushi.e 0
pop.v.i self.balloonid
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[19]
popenv [18]
push.i 169606
setowner.e
pushi.e -1
pushi.e 0
push.v [array]self.balloon
pushi.e -9
push.v [stacktop]self.x
pushi.e -1
pushi.e 0
pop.v.v [array]self.ballremx
push.i 169607
setowner.e
pushi.e -1
pushi.e 0
push.v [array]self.balloon
pushi.e -9
push.v [stacktop]self.y
pushi.e -1
pushi.e 0
pop.v.v [array]self.ballremy
push.i 169608
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.balloondestroyed
pushi.e 1319
conv.i.v
pushi.e 200
conv.i.v
pushi.e 700
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.pillar1
pushi.e 1
push.v self.pillar1
pushi.e -9
pop.v.i [stacktop]self.pillarid
pushi.e 1149
conv.i.v
pushi.e 320
conv.i.v
pushi.e 760
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.blockforcefield
pushi.e 1149
conv.i.v
pushi.e 320
conv.i.v
pushi.e 1560
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.blockforcefield2
pushi.e 1149
conv.i.v
pushi.e 320
conv.i.v
pushi.e 1960
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.blockforcefield3
pushi.e 1149
conv.i.v
pushi.e 120
conv.i.v
pushi.e 2560
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.blockforcefield4
pushi.e 3
push.v self.blockforcefield
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 3
push.v self.blockforcefield2
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 3
push.v self.blockforcefield3
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 3
push.v self.blockforcefield4
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 10
push.v self.blockforcefield4
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 1321
conv.i.v
pushi.e 200
conv.i.v
pushi.e 900
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.pillaremerge
pushi.e 1319
conv.i.v
pushi.e 200
conv.i.v
pushi.e 1500
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.pillar2
pushi.e 2
push.v self.pillar2
pushi.e -9
pop.v.i [stacktop]self.pillarid
pushi.e 1
push.v self.pillar2
pushi.e -9
pop.v.i [stacktop]self.micerequired
pushi.e 1319
conv.i.v
pushi.e 200
conv.i.v
pushi.e 1900
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.pillar3
pushi.e 3
push.v self.pillar3
pushi.e -9
pop.v.i [stacktop]self.pillarid
pushi.e 20
push.v self.pillar3
pushi.e -9
pop.v.i [stacktop]self.micerequired
pushi.e 75
conv.i.v
pushi.e 335
conv.i.v
pushi.e 500
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bucket
push.v self.bucket
call.i gml_Script_scr_darksize(argc=1)
popz.v
pushi.e 97
conv.i.v
pushi.e 320
conv.i.v
pushi.e 1340
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.switch2
push.s "switch2con"@14163
push.v self.switch2
pushi.e -9
pop.v.s [stacktop]self.pushVariableName
push.v self.switch2
call.i gml_Script_scr_darksize(argc=1)
popz.v
pushi.e 1320
conv.i.v
pushi.e 188
conv.i.v
pushi.e 2440
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bucketpillar
pushi.e 1
conv.i.v
push.s "TILE_BLOCKLAYER1"@21379
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
pushi.e 1
conv.i.v
push.s "TILE_BLOCKLAYER2"@21380
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
pushi.e 1
conv.i.v
push.s "TILE_BLOCKLAYER3"@21381
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
pushi.e 1
conv.i.v
push.s "TILE_BLOCKLAYER4"@21382
conv.s.v
call.i layer_set_visible(argc=2)
popz.v

:[end]