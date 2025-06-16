.localvar 2 arguments

:[0]
call.i gml_Script_scr_enemy_object_init(argc=0)
popz.v
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v LT
bf [2]

:[1]
pushi.e 576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 576
conv.i.v
push.v self.y
pushi.e 84
sub.i.v
push.v self.x
pushi.e 42
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[5]
pushi.e 576
pushenv [7]

:[6]
push.v 574.depth
pushi.e 1
add.i.v
pop.v.v self.depth

:[7]
popenv [6]
pushi.e 90
pop.v.i self.talkmax
push.d 0.16666666666666666
pop.v.d self.image_speed
push.v 357.depth
pushi.e 1
sub.i.v
pop.v.v self.depth
pushi.e 1884
pop.v.i self.idlesprite
pushi.e 1884
pop.v.i self.hurtsprite
pushi.e 1884
pop.v.i self.sparedsprite
pushi.e 0
pop.v.i self.lastsearch
pushi.e 0
pop.v.i self.difficulty
pushi.e 0
pop.v.i self.difficultydebug
pushi.e -1
pop.v.i self.attackdebug
pushi.e 0
pop.v.b self.bufferattack
pushi.e 1
pop.v.b self.whiteAcid
pushi.e 0
pop.v.i self.shieldjustbroke
pushi.e 0
pop.v.i self.jp
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.i self.jp

:[9]
pushi.e 0
pop.v.i self.turn
pushi.e 0
pop.v.i self.phaseturn
pushi.e 1
pop.v.i self.phase
pushi.e 0
pop.v.i self.finalphaseturns
pushi.e 0
pop.v.i self.usefinalattack
pushi.e 0
pop.v.i self.haveusedfinalattack
pushi.e 0
pop.v.i self.attackdone
pushi.e 0
pop.v.i self.wirescut
pushi.e 0
pop.v.i self.bardlymercy
pushi.e 0
pop.v.i self.shieldhp
pushi.e 0
pop.v.i self.shieldmaxhp
pushi.e 0
pop.v.i self.shieldacthp
pushi.e 0
pop.v.i self.shieldactmaxhp
pushi.e 0
pop.v.i self.throwX
pushi.e 25
pop.v.i self.targetmercy
pushi.e 0
pop.v.i self.aimact
pushi.e 0
pop.v.i self.intro
pushi.e 0
pop.v.i self.endcon
pushi.e 0
pop.v.i self.endtimer
pushi.e 0
pop.v.i self.defeat_cutscene_version
pushi.e 0
pop.v.i self.siner2
pushi.e 0
pop.v.i self.shieldbrokecon
pushi.e 0
pop.v.i self.hurtcon
pushi.e 0
pop.v.i self.wineglasscon
pushi.e 0
pop.v.i self.drink
pushi.e 0
pop.v.i self.shield_damage_buffer
pushi.e 0
pop.v.i self.beatwine2nodamage
pushi.e 0
pop.v.i self.usewineattack
pushi.e 0
pop.v.i self.ultimateattackused
pushi.e 7
pop.v.i self.shieldsize
pushi.e 0
pop.v.i self.balloonorder
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
pushi.e 0
pop.v.i self.talkedcon
pushi.e 0
pop.v.i self.ralseitalks
pushi.e 0
pop.v.i self.susietalks
pushi.e 0
pop.v.i self.susieinterrupts
pushi.e 1
pop.v.i self.init
pushi.e 0
pop.v.i self.drunk
pushi.e 0
pop.v.i self.drunkcount
pushi.e 0
pop.v.i self.shieldjustwentup
pushi.e 0
pop.v.i self.shieldjustwentdown
pushi.e 0
pop.v.i self.finalattackdialoguecon
pushi.e 0
pop.v.i self.krisflattercount
pushi.e 0
pop.v.i self.susieflattercount
pushi.e 0
pop.v.i self.ralseiflattercount
pushi.e 0
pop.v.i self.groupflattercount
pushi.e 0
pop.v.i self.waitnextactsusie
pushi.e 0
pop.v.i self.waitnextactralsei
pushi.e 0
pop.v.i self.changesimulorder
pushi.e 0
pop.v.i self.wintimer
pushi.e 0
pop.v.i self.extracon
pushi.e 0
pop.v.i self.extratimer
pushi.e -5
pushi.e 1
push.v [array]self.maxhp
pop.v.v self.krismaxhp
pushi.e -5
pushi.e 2
push.v [array]self.maxhp
pop.v.v self.susiemaxhp
pushi.e -5
pushi.e 3
push.v [array]self.maxhp
pop.v.v self.ralseimaxhp

:[end]