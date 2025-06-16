.localvar 2 arguments
.localvar 7017 a 13027
.localvar 25775 sineroffset 13028

:[0]
push.v self.introtimer
pushi.e 24
cmp.i.v GT
bf [7]

:[1]
push.v self.type
pushi.e 3
cmp.i.v LT
bf [3]

:[2]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
b [4]

:[3]
push.v self.timer
push.v self.sinespeed
add.v.v
pop.v.v self.timer

:[4]
push.v self.sinespeed
push.v self.sinetargetspeed
cmp.v.v NEQ
bf [6]

:[5]
push.d 0.05
conv.d.v
push.v self.sinetargetspeed
push.v self.sinespeed
call.i gml_Script_scr_movetowards(argc=3)
pop.v.v self.sinespeed

:[6]
b [8]

:[7]
push.v self.introtimer
push.e 1
add.i.v
pop.v.v self.introtimer

:[8]
push.v self.difficulty
pushi.e 2
cmp.i.v EQ
bf [13]

:[9]
push.v self.lilguytimer
push.e 1
add.i.v
pop.v.v self.lilguytimer
push.v self.lilguytimer
pushi.e 76
cmp.i.v EQ
bf [11]

:[10]
pushi.e 599
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
push.i 133633
setowner.e
pushi.e 30
conv.i.v
pushi.e 599
pushi.e 0
pop.v.v [array]self.alarm

:[11]
push.v self.lilguytimer
pushi.e 172
cmp.i.v EQ
bf [13]

:[12]
pushi.e 599
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 30
conv.i.v
pushi.e 599
pushi.e 0
pop.v.v [array]self.alarm

:[13]
push.v self.sinetargetspeed
pushi.e 0
cmp.i.v LT
bf [15]

:[14]
exit.i

:[15]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
push.v self.type
pushi.e 3
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [26]

:[19]
pushi.e 0
pop.v.i self.j

:[20]
push.v self.j
push.v self.spawncount
cmp.v.v LT
bf [25]

:[21]
pushi.e 0
pop.v.i self.i

:[22]
push.v self.i
pushi.e 2
cmp.i.v LT
bf [24]

:[23]
push.i 167278
setowner.e
pushi.e 621
conv.i.v
push.v self.yy
pushi.e 0
conv.i.v
push.l 3
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.i
pushi.e 5
mul.i.v
pushi.e 40
mul.i.v
add.v.v
pushi.e 170
sub.i.v
push.v 872.x
pushi.e 150
add.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.bullet
push.i 133642
setowner.e
pushi.e 2003
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 133650
setowner.e
push.d 1.25
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.i 133651
setowner.e
push.d 1.6
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.d [stacktop]self.image_yscale
push.i 231492
setowner.e
push.v self.waittime
push.v self.j
mul.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.v [stacktop]self.siner
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [22]

:[24]
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [20]

:[25]
pushi.e 1
pop.v.i self.init

:[26]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [end]

:[27]
push.v self.timer
push.v self.waittime
cmp.v.v GTE
bf [29]

:[28]
push.v self.made
push.v self.spawncount
cmp.v.v LT
b [30]

:[29]
push.e 0

:[30]
bf [end]

:[31]
pushi.e 0
pop.v.i self.j

:[32]
push.v self.j
push.v self.spawncount
cmp.v.v LT
bf [end]

:[33]
push.v self.breakspotpreviouscon
pushi.e 3
cmp.i.v GT
bf [35]

:[34]
pushi.e 0
pop.v.i self.breakspotpreviouscon

:[35]
push.v self.breakspotpreviouscon
pushi.e 0
cmp.i.v EQ
bt [37]

:[36]
push.v self.breakspotpreviouscon
pushi.e 1
cmp.i.v EQ
b [38]

:[37]
push.e 1

:[38]
bf [43]

:[39]
pushi.e 2
pushi.e 1
conv.i.v
call.i irandom(argc=1)
add.v.i
pop.v.v self.breakspotconsecutive
push.v self.breakspotpreviouscon
pushi.e 0
cmp.i.v EQ
bf [41]

:[40]
push.d -1.5
pop.v.d self.vspeed
push.v self.breakspotconsecutive
pushi.e 1
sub.i.v
pop.v.v self.breakspot1
push.v self.breakspotconsecutive
pop.v.v self.breakspot2
push.v self.breakspotconsecutive
pushi.e 2
add.i.v
pop.v.v self.breakspot3
push.v self.breakspotconsecutive
pushi.e 3
add.i.v
pop.v.v self.breakspot4

:[41]
push.v self.breakspotpreviouscon
pushi.e 1
cmp.i.v EQ
bf [43]

:[42]
pushi.e 2
pop.v.i self.vspeed
pushi.e 1
pop.v.i self.breakspotconsecutive
push.v self.breakspotconsecutive
pop.v.v self.breakspot1
push.v self.breakspotconsecutive
pushi.e 1
add.i.v
pop.v.v self.breakspot2
push.v self.breakspotconsecutive
pushi.e 3
add.i.v
pop.v.v self.breakspot3
push.v self.breakspotconsecutive
pushi.e 4
add.i.v
pop.v.v self.breakspot4

:[43]
push.v self.breakspotpreviouscon
pushi.e 2
cmp.i.v EQ
bt [45]

:[44]
push.v self.breakspotpreviouscon
pushi.e 3
cmp.i.v EQ
b [46]

:[45]
push.e 1

:[46]
bf [49]

:[47]
pushi.e 1
pushi.e 4
conv.i.v
call.i irandom(argc=1)
add.v.i
pop.v.v self.breakspotconsecutive
pushi.e 0
pop.v.i self.vspeed
pushi.e 1
conv.i.v
call.i irandom(argc=1)
pop.v.v local.a
pushi.e 1
pushloc.v local.a
add.v.i
pop.v.v self.breakspot1
pushi.e 2
pushloc.v local.a
add.v.i
pop.v.v self.breakspot2
pushi.e 3
pushloc.v local.a
add.v.i
pop.v.v self.breakspot3
pushi.e 2
pushloc.v local.a
add.v.i
pop.v.v self.breakspot4
push.v self.breakspotpreviouscon
pushi.e 3
cmp.i.v EQ
bf [49]

:[48]
pushi.e 3
pushloc.v local.a
add.v.i
pop.v.v self.breakspot1
pushi.e 4
pushloc.v local.a
add.v.i
pop.v.v self.breakspot2
pushi.e 5
pushloc.v local.a
add.v.i
pop.v.v self.breakspot3
pushi.e 4
pushloc.v local.a
add.v.i
pop.v.v self.breakspot4

:[49]
push.v self.breakspotpreviouscon
push.e 1
add.i.v
pop.v.v self.breakspotpreviouscon
push.v self.breakspotpreviouscon
push.e 1
add.i.v
pop.v.v self.breakspotpreviouscon
pushi.e 7
pop.v.i self.wallsize
push.v self.timer
push.v self.waittime
sub.v.v
push.d 0.05
conv.d.v
push.v self.sinetargetspeed
push.v self.sinespeed
call.i gml_Script_scr_movetowards(argc=3)
add.v.v
pop.v.v local.sineroffset
pushi.e 0
pop.v.i self.i

:[50]
push.v self.i
push.v self.wallsize
cmp.v.v LT
bf [59]

:[51]
push.i 167278
setowner.e
pushi.e 620
conv.i.v
push.v self.yy
pushi.e 0
conv.i.v
push.l 3
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
pushi.e 100
sub.i.v
pushi.e 60
sub.i.v
push.v 872.x
pushi.e 150
add.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.bullet
push.i 133642
setowner.e
pushi.e 2060
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 133650
setowner.e
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.i 133651
setowner.e
push.d 1.5
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.d [stacktop]self.image_yscale
push.i 236764
setowner.e
push.v self.vspeed
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.v [stacktop]self.falsevspeed
push.i 231254
setowner.e
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.loop
push.i 231492
setowner.e
pushloc.v local.sineroffset
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.v [stacktop]self.siner
push.v self.waittime
push.v self.j
mul.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.v [stacktop]self.siner
push.v self.breakspot1
push.v self.i
cmp.v.v EQ
bt [55]

:[52]
push.v self.breakspot2
push.v self.i
cmp.v.v EQ
bt [55]

:[53]
push.v self.breakspot3
push.v self.i
cmp.v.v EQ
bt [55]

:[54]
push.v self.breakspot4
push.v self.i
cmp.v.v EQ
b [56]

:[55]
push.e 1

:[56]
bf [58]

:[57]
push.i 233343
setowner.e
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.destroyable
push.i 133642
setowner.e
pushi.e 2034
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 133655
setowner.e
push.d 0.5
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.i 133651
setowner.e
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.i 133653
setowner.e
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.image_alpha

:[58]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [50]

:[59]
push.v self.timer
push.v self.waittime
sub.v.v
pop.v.v self.timer
push.v self.made
push.e 1
add.i.v
pop.v.v self.made
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [32]

:[end]