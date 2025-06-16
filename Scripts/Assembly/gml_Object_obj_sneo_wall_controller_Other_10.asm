.localvar 2 arguments
.localvar 7017 a 13032
.localvar 25775 sineroffset 13033

:[0]
push.v self.type
pushi.e 3
cmp.i.v LT
bf [2]

:[1]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
b [3]

:[2]
push.v self.timer
push.v self.sinespeed
add.v.v
pop.v.v self.timer

:[3]
push.v self.sinespeed
push.v self.sinetargetspeed
cmp.v.v NEQ
bf [5]

:[4]
push.d 0.05
conv.d.v
push.v self.sinetargetspeed
push.v self.sinespeed
call.i gml_Script_scr_movetowards(argc=3)
pop.v.v self.sinespeed

:[5]
push.v self.sinetargetspeed
pushi.e 0
cmp.i.v LT
bf [7]

:[6]
exit.i

:[7]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [20]

:[8]
push.v self.timer
pushi.e 25
cmp.i.v GTE
bf [20]

:[9]
pushi.e 4
pop.v.i self.wallsize
push.v self.wallsize
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.breakspot
pushi.e 1
pop.v.i self.wallamt
pushi.e 6
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
pushi.e 4
pop.v.i self.wallamt

:[11]
pushi.e 0
pop.v.i self.j

:[12]
push.v self.j
push.v self.wallamt
cmp.v.v LT
bf [19]

:[13]
pushi.e 0
pop.v.i self.i

:[14]
push.v self.i
push.v self.wallsize
cmp.v.v LT
bf [18]

:[15]
push.i 167278
setowner.e
pushi.e 593
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
pushi.e 25
mul.i.v
add.v.v
pushi.e 100
sub.i.v
push.v self.xx
pushi.e 470
add.i.v
pushi.e 25
push.v self.j
mul.v.i
add.v.v
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
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.i 133651
setowner.e
push.d 1.2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.d [stacktop]self.image_yscale
push.i 133623
setowner.e
pushi.e -1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.hspeed
push.i 133627
setowner.e
push.d -0.1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.d [stacktop]self.friction
push.v self.breakspot
push.v self.i
cmp.v.v EQ
bf [17]

:[16]
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
pushi.e 2033
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

:[17]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [14]

:[18]
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [12]

:[19]
pushi.e 0
push.v self.wallamt
pushi.e 1
sub.i.v
pushi.e 8
mul.i.v
sub.v.i
pop.v.v self.timer

:[20]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [37]

:[21]
push.v self.timer
pushi.e 25
cmp.i.v GTE
bf [37]

:[22]
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=3)
pop.v.v self.breakspot1
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.breakspot2
pushi.e 6
pop.v.i self.wallsize
pushi.e 1
pop.v.i self.wallamt
pushi.e 2
conv.i.v
push.d -1.2
conv.d.v
pushi.e -2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.d 1.2
conv.d.v
call.i choose(argc=6)
pop.v.v self.vspeed
pushi.e 6
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 0
cmp.i.v EQ
bf [25]

:[23]
pushi.e 2
pop.v.i self.wallamt
push.v self.vspeed
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
pushi.e 3
pop.v.i self.wallamt

:[25]
pushi.e 0
pop.v.i self.j

:[26]
push.v self.j
push.v self.wallamt
cmp.v.v LT
bf [36]

:[27]
pushi.e 0
pop.v.i self.i

:[28]
push.v self.i
push.v self.wallsize
cmp.v.v LT
bf [35]

:[29]
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
pushi.e 25
mul.i.v
add.v.v
pushi.e 100
sub.i.v
pushi.e 25
sub.i.v
push.v self.xx
pushi.e 470
add.i.v
pushi.e 25
push.v self.j
mul.v.i
add.v.v
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
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.i 133651
setowner.e
push.d 1.2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.d [stacktop]self.image_yscale
push.i 133623
setowner.e
pushi.e -1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.hspeed
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
push.i 133627
setowner.e
push.d -0.1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.d [stacktop]self.friction
push.v self.breakspot1
push.v self.i
cmp.v.v EQ
bt [31]

:[30]
push.v self.breakspot2
push.v self.i
cmp.v.v EQ
b [32]

:[31]
push.e 1

:[32]
bf [34]

:[33]
push.i 233343
setowner.e
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.destroyable
push.i 133654
setowner.e
push.i 15245824
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.image_blend
push.i 133642
setowner.e
pushi.e 2033
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

:[34]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [28]

:[35]
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [26]

:[36]
pushi.e 0
push.v self.wallamt
pushi.e 1
sub.i.v
pushi.e 8
mul.i.v
sub.v.i
pop.v.v self.timer

:[37]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [54]

:[38]
push.v self.timer
pushi.e 25
cmp.i.v GTE
bf [54]

:[39]
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=3)
pop.v.v self.breakspot1
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.breakspot2
pushi.e 5
pop.v.i self.wallsize
pushi.e 1
pop.v.i self.wallamt
pushi.e 2
conv.i.v
push.d -1.2
conv.d.v
pushi.e -2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.d 1.2
conv.d.v
call.i choose(argc=6)
pop.v.v self.vspeed
pushi.e 6
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 0
cmp.i.v EQ
bf [42]

:[40]
pushi.e 2
pop.v.i self.wallamt
push.v self.vspeed
pushi.e 0
cmp.i.v EQ
bf [42]

:[41]
pushi.e 3
pop.v.i self.wallamt

:[42]
pushi.e 0
pop.v.i self.j

:[43]
push.v self.j
push.v self.wallamt
cmp.v.v LT
bf [53]

:[44]
pushi.e 0
pop.v.i self.i

:[45]
push.v self.i
push.v self.wallsize
cmp.v.v LT
bf [52]

:[46]
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
pushi.e 30
sub.i.v
push.v self.xx
pushi.e 470
add.i.v
pushi.e 25
push.v self.j
mul.v.i
add.v.v
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
push.i 133623
setowner.e
pushi.e -1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.hspeed
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
push.i 133627
setowner.e
push.d -0.1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.d [stacktop]self.friction
push.v self.breakspot1
push.v self.i
cmp.v.v EQ
bt [48]

:[47]
push.v self.breakspot2
push.v self.i
cmp.v.v EQ
b [49]

:[48]
push.e 1

:[49]
bf [51]

:[50]
push.i 233343
setowner.e
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.destroyable
push.i 133654
setowner.e
push.i 15245824
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.image_blend
push.i 133642
setowner.e
pushi.e 2033
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

:[51]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [45]

:[52]
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [43]

:[53]
pushi.e 0
push.v self.wallamt
pushi.e 1
sub.i.v
pushi.e 8
mul.i.v
sub.v.i
pop.v.v self.timer

:[54]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [56]

:[55]
push.v self.type
pushi.e 3
cmp.i.v EQ
b [57]

:[56]
push.e 0

:[57]
bf [65]

:[58]
pushi.e 0
pop.v.i self.j

:[59]
push.v self.j
push.v self.spawncount
cmp.v.v LT
bf [64]

:[60]
pushi.e 0
pop.v.i self.i

:[61]
push.v self.i
pushi.e 2
cmp.i.v LT
bf [63]

:[62]
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
b [61]

:[63]
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [59]

:[64]
pushi.e 1
pop.v.i self.init

:[65]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [103]

:[66]
push.v self.timer
push.v self.waittime
cmp.v.v GTE
bf [68]

:[67]
push.v self.made
push.v self.spawncount
cmp.v.v LT
b [69]

:[68]
push.e 0

:[69]
bf [100]

:[70]
push.v self.breakspotpreviouscon
pushi.e 3
cmp.i.v GT
bf [72]

:[71]
pushi.e 0
pop.v.i self.breakspotpreviouscon

:[72]
push.v self.breakspotpreviouscon
pushi.e 0
cmp.i.v EQ
bt [74]

:[73]
push.v self.breakspotpreviouscon
pushi.e 1
cmp.i.v EQ
b [75]

:[74]
push.e 1

:[75]
bf [80]

:[76]
pushi.e 2
pushi.e 2
conv.i.v
call.i irandom(argc=1)
add.v.i
pop.v.v self.breakspotconsecutive
push.v self.breakspotpreviouscon
pushi.e 0
cmp.i.v EQ
bf [78]

:[77]
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

:[78]
push.v self.breakspotpreviouscon
pushi.e 1
cmp.i.v EQ
bf [80]

:[79]
pushi.e 2
pop.v.i self.vspeed
pushi.e 2
conv.i.v
call.i irandom(argc=1)
pop.v.v self.breakspotconsecutive
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

:[80]
push.v self.breakspotpreviouscon
pushi.e 2
cmp.i.v EQ
bt [82]

:[81]
push.v self.breakspotpreviouscon
pushi.e 3
cmp.i.v EQ
b [83]

:[82]
push.e 1

:[83]
bf [86]

:[84]
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
bf [86]

:[85]
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

:[86]
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
pushi.e 1
pop.v.i self.wallamt
pushi.e 5
conv.i.v
call.i irandom(argc=1)
pushi.e 0
cmp.i.v EQ
bf [89]

:[87]
pushi.e 2
pop.v.i self.wallamt
push.v self.vspeed
pushi.e 1
cmp.i.v EQ
bf [89]

:[88]
pushi.e 3
pop.v.i self.wallamt

:[89]
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

:[90]
push.v self.i
push.v self.wallsize
cmp.v.v LT
bf [99]

:[91]
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
push.v self.breakspot1
push.v self.i
cmp.v.v EQ
bt [95]

:[92]
push.v self.breakspot2
push.v self.i
cmp.v.v EQ
bt [95]

:[93]
push.v self.breakspot3
push.v self.i
cmp.v.v EQ
bt [95]

:[94]
push.v self.breakspot4
push.v self.i
cmp.v.v EQ
b [96]

:[95]
push.e 1

:[96]
bf [98]

:[97]
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

:[98]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [90]

:[99]
push.v self.timer
push.v self.waittime
sub.v.v
pop.v.v self.timer
push.v self.made
push.e 1
add.i.v
pop.v.v self.made

:[100]
push.v self.difficulty
pushi.e 2
cmp.i.v EQ
bf [103]

:[101]
push.v self.lilguytimer
push.e 1
add.i.v
pop.v.v self.lilguytimer
push.v self.lilguytimer
pushi.e 55
cmp.i.v EQ
bf [103]

:[102]
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

:[103]
push.v self.type
pushi.e 4
cmp.i.v EQ
bf [end]

:[104]
pushi.e 0
pop.v.i self.j

:[105]
push.v self.j
push.v self.spawncount
cmp.v.v LT
bf [end]

:[106]
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=3)
pop.v.v self.breakspot1
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.breakspot2
pushi.e 5
pop.v.i self.wallsize
pushi.e 1
pop.v.i self.wallamt
pushi.e 2
conv.i.v
push.d -1.2
conv.d.v
pushi.e -2
conv.i.v
pushi.e 0
conv.i.v
push.d 1.2
conv.d.v
call.i choose(argc=5)
pop.v.v self.vspeed
pushi.e 5
conv.i.v
call.i irandom(argc=1)
pushi.e 0
cmp.i.v EQ
bf [109]

:[107]
pushi.e 2
pop.v.i self.wallamt
push.v self.vspeed
pushi.e 1
cmp.i.v EQ
bf [109]

:[108]
pushi.e 3
pop.v.i self.wallamt

:[109]
pushi.e 0
pop.v.i self.i

:[110]
push.v self.i
push.v self.wallsize
cmp.v.v LT
bf [117]

:[111]
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
pushi.e 30
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
push.i 231492
setowner.e
push.v self.j
push.v self.spawncount
div.v.v
pushi.e 2
mul.i.v
push.d 3.141592653589793
mul.d.v
pushi.e 20
mul.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.v [stacktop]self.siner
push.i 231254
setowner.e
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.loop
push.v self.breakspot1
push.v self.i
cmp.v.v EQ
bt [113]

:[112]
push.v self.breakspot2
push.v self.i
cmp.v.v EQ
b [114]

:[113]
push.e 1

:[114]
bf [116]

:[115]
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
pushi.e 2033
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
push.i 133654
setowner.e
push.i 15245824
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.image_blend

:[116]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [110]

:[117]
pushi.e 99
pop.v.i self.type
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [105]

:[end]