.localvar 2 arguments

:[0]
push.i 900000
pop.v.i self.depth
pushi.e -5
pushi.e 379
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bt [2]

:[1]
pushglb.v global.plot
pushi.e 78
cmp.i.v LT
b [3]

:[2]
push.e 1

:[3]
bf [12]

:[4]
pushi.e 0
pop.v.i self.drawshine
pushi.e 0
pop.v.i self.shineindex
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1
pop.v.b self.weird
b [7]

:[6]
pushi.e 0
pop.v.b self.weird

:[7]
push.v self.weird
pushi.e 1
cmp.b.v EQ
bf [9]

:[8]
push.i 600000
pop.v.i self.depth
pushi.e 1
pop.v.i self.drawshine
pushi.e 0
pop.v.b self.noface
pushi.e 0
pop.v.i self.solve

:[9]
pushi.e 1184
pushenv [11]

:[10]
pushi.e 1
pop.v.b self.freeze

:[11]
popenv [10]
pushi.e 0
pop.v.i self.init
pushi.e 0
conv.b.v
push.s "BG_Tiles_HiddenPath"@37465
conv.s.v
call.i layer_get_id(argc=1)
call.i layer_set_visible(argc=2)
popz.v
pushi.e 0
conv.b.v
push.s "BG_Tiles_HiddenPath_Sidewalk"@37466
conv.s.v
call.i layer_get_id(argc=1)
call.i layer_set_visible(argc=2)
popz.v
pushi.e 1149
conv.i.v
pushi.e 80
conv.i.v
pushi.e 240
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fakeWall
pushi.e 2
push.v self.fakeWall
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.fakeswitch
pushi.e 0
pop.v.i self.noelle
pushi.e 0
pop.v.i self.bridge
pushi.e 0
pop.v.i self.noExit
pushi.e 0
pop.v.i self.exttrig
pushi.e 0
pop.v.i self.berdly
pushi.e 0
pop.v.i self.monologue
pushi.e 0
pop.v.i self.micescore
pushi.e 10
pop.v.i self.micetarget
pushi.e 0
pop.v.i self.leaveCon
pushi.e 0
pop.v.i self.leaveBlock
pushi.e 0
pop.v.b self.solve
pushi.e 0
pop.v.b self.towerinit

:[12]
pushi.e -5
pushi.e 379
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[13]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v EQ
bf [end]

:[14]
pushi.e 105
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [18]

:[15]
pushi.e 105
pushenv [17]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[17]
popenv [16]

:[18]
pushi.e 1181
pushenv [20]

:[19]
pushi.e 1
conv.i.v
call.i gml_Script_scr_createFrozen(argc=1)
popz.v

:[20]
popenv [19]

:[end]