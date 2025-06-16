.localvar 2 arguments
.localvar 24647 wineheight 11548
.localvar 24648 height_fix 11549
.localvar 6482 xx 11550
.localvar 24649 xx0 11551

:[0]
push.v self.x
push.v self.xspeed
add.v.v
pop.v.v self.x
push.v self.xspeed
pushi.e 0
cmp.i.v LT
bf [7]

:[1]
push.v 514.fill
pushi.e 36
cmp.i.v GT
bf [3]

:[2]
push.v self.rise
pushi.e 1
cmp.i.v GT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
push.v self.rise
push.e 1
sub.i.v
pop.v.v self.rise

:[6]
b [12]

:[7]
push.v 514.fill
pushi.e 36
cmp.i.v GT
bf [9]

:[8]
push.v self.rise
pushi.e 3
cmp.i.v GT
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
push.v self.rise
push.e 1
sub.i.v
pop.v.v self.rise

:[12]
push.v 514.starty
push.v 514.fill
sub.v.v
pop.v.v local.wineheight
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
pushloc.v local.wineheight
push.v self.rise
add.v.v
push.v self.siner
push.v self.xspeed
call.i abs(argc=1)
pushi.e 4
mul.i.v
div.v.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.y
push.v self.x
push.v 514.xstart
pushi.e 75
add.i.v
cmp.v.v GT
bf [14]

:[13]
push.v self.x
pushi.e 150
sub.i.v
pop.v.v self.x
b [16]

:[14]
push.v self.x
push.v 514.xstart
pushi.e 75
sub.i.v
cmp.v.v LT
bf [16]

:[15]
push.v self.x
pushi.e 150
add.i.v
pop.v.v self.x

:[16]
pushi.e 11
push.v 514.fill
pushi.e 30
conv.i.d
div.d.v
sub.v.i
pop.v.v local.height_fix
pushi.e 1
pop.v.b self.visible
pushi.e 0
pop.v.i local.xx
pushi.e 0
pop.v.i local.xx0
pushi.e 514
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[17]
push.v 514.image_angle
pushi.e -4
cmp.i.v LT
bf [33]

:[18]
push.v 514.fill
pushi.e 30
cmp.i.v GT
bf [20]

:[19]
push.v 514.image_angle
push.d 0.9
mul.d.v
pop.v.v local.xx
push.v 514.image_angle
push.d 1.5
mul.d.v
pop.v.v local.xx0

:[20]
push.v 514.fill
pushi.e 35
cmp.i.v GT
bf [22]

:[21]
push.v 514.image_angle
push.d 0.4
mul.d.v
pop.v.v local.xx
push.v 514.image_angle
push.d 0.8
mul.d.v
pop.v.v local.xx0

:[22]
push.v 514.fill
pushi.e 40
cmp.i.v GT
bf [24]

:[23]
push.v 514.image_angle
push.d 0.94
mul.d.v
pop.v.v local.xx
push.v 514.image_angle
push.d 1.1
mul.d.v
pop.v.v local.xx0

:[24]
push.v 514.fill
pushi.e 45
cmp.i.v GT
bf [26]

:[25]
push.v 514.image_angle
push.d 0.4
mul.d.v
pop.v.v local.xx
push.v 514.image_angle
push.d 0.8
mul.d.v
pop.v.v local.xx0

:[26]
push.v 514.fill
pushi.e 51
cmp.i.v GT
bf [28]

:[27]
push.v 514.image_angle
push.d -0.4
mul.d.v
pop.v.v local.xx
push.v 514.image_angle
push.d -0.2
mul.d.v
pop.v.v local.xx0

:[28]
push.v 514.fill
pushi.e 63
cmp.i.v GT
bf [30]

:[29]
push.v 514.image_angle
push.d -0.55
mul.d.v
pop.v.v local.xx
push.v 514.image_angle
push.d -0.21
mul.d.v
pop.v.v local.xx0

:[30]
push.v 514.fill
pushi.e 70
cmp.i.v GT
bf [32]

:[31]
push.v 514.image_angle
push.d -0.5
mul.d.v
pop.v.v local.xx
push.v 514.image_angle
push.d -0.2
mul.d.v
pop.v.v local.xx0

:[32]
pushi.e 20
conv.i.v
pushi.e 142
pushloc.v local.xx
add.v.i
pushloc.v local.wineheight
pushloc.v local.height_fix
sub.v.v
push.v 514.xstart
pushloc.v local.xx
add.v.v
pushloc.v local.xx0
sub.v.v
call.i gml_Script_scr_drawinbox(argc=4)
popz.v
b [end]

:[33]
push.v 514.image_angle
pushi.e 4
cmp.i.v GT
bf [67]

:[34]
push.v 514.fill
pushi.e 30
cmp.i.v GT
bf [36]

:[35]
push.v 514.image_angle
push.d -0.6
mul.d.v
pop.v.v local.xx
push.v 514.image_angle
pushi.e 1
mul.i.v
pop.v.v local.xx0

:[36]
push.v 514.fill
pushi.e 30
cmp.i.v GT
bf [38]

:[37]
push.v 514.image_angle
push.d -0.6
mul.d.v
pop.v.v local.xx
push.v 514.image_angle
pushi.e 1
mul.i.v
pop.v.v local.xx0

:[38]
push.v 575.type
push.d 2.1
cmp.d.v EQ
bf [46]

:[39]
push.v 514.fill
pushi.e 40
cmp.i.v GT
bf [41]

:[40]
push.v 514.image_angle
push.d -0.1
mul.d.v
pop.v.v local.xx
push.v 514.image_angle
push.d 0.1
mul.d.v
pop.v.v local.xx0

:[41]
push.v 514.fill
pushi.e 42
cmp.i.v GT
bf [43]

:[42]
push.v 514.image_angle
pushi.e 0
mul.i.v
pop.v.v local.xx
push.v 514.image_angle
pushi.e 0
mul.i.v
pop.v.v local.xx0

:[43]
push.v 514.fill
pushi.e 49
cmp.i.v GT
bf [45]

:[44]
push.v 514.image_angle
pushi.e 0
mul.i.v
pop.v.v local.xx
push.v 514.image_angle
pushi.e 0
mul.i.v
pop.v.v local.xx0

:[45]
b [52]

:[46]
push.v 514.fill
pushi.e 40
cmp.i.v GT
bf [48]

:[47]
push.v 514.image_angle
push.d -0.5
mul.d.v
pop.v.v local.xx
push.v 514.image_angle
push.d 0.9
mul.d.v
pop.v.v local.xx0

:[48]
push.v 514.fill
pushi.e 42
cmp.i.v GT
bf [50]

:[49]
push.v 514.image_angle
push.d -0.6
mul.d.v
pop.v.v local.xx
push.v 514.image_angle
pushi.e 1
mul.i.v
pop.v.v local.xx0

:[50]
push.v 514.fill
pushi.e 49
cmp.i.v GT
bf [52]

:[51]
push.v 514.image_angle
push.d 0.4
mul.d.v
pop.v.v local.xx
push.v 514.image_angle
push.d -0.2
mul.d.v
pop.v.v local.xx0

:[52]
push.v 514.fill
pushi.e 53
cmp.i.v GT
bf [54]

:[53]
push.v 514.image_angle
push.d 0.6
mul.d.v
pop.v.v local.xx
push.v 514.image_angle
push.d -0.5
mul.d.v
pop.v.v local.xx0

:[54]
push.v 514.fill
pushi.e 63
cmp.i.v GT
bf [56]

:[55]
push.v 514.image_angle
push.d 0.6
mul.d.v
pop.v.v local.xx
push.v 514.image_angle
push.d -0.2
mul.d.v
pop.v.v local.xx0

:[56]
push.v 514.fill
pushi.e 70
cmp.i.v GT
bf [58]

:[57]
push.v 514.image_angle
push.d 0.6
mul.d.v
pop.v.v local.xx
push.v 514.image_angle
pushi.e 0
mul.i.v
pop.v.v local.xx0

:[58]
push.v 514.fill
pushi.e 75
cmp.i.v GT
bf [60]

:[59]
push.v 514.image_angle
push.d 0.6
mul.d.v
pop.v.v local.xx
push.v 514.image_angle
push.d 0.1
mul.d.v
pop.v.v local.xx0

:[60]
push.v 514.fill
pushi.e 77
cmp.i.v GT
bf [62]

:[61]
push.v 514.image_angle
push.d 0.6
mul.d.v
pop.v.v local.xx
push.v 514.image_angle
pushi.e 0
mul.i.v
pop.v.v local.xx0

:[62]
push.v 514.fill
pushi.e 80
cmp.i.v GT
bf [64]

:[63]
push.v 514.image_angle
push.d 0.57
mul.d.v
pop.v.v local.xx
push.v 514.image_angle
push.d -0.12
mul.d.v
pop.v.v local.xx0

:[64]
push.v 514.fill
pushi.e 84
cmp.i.v GT
bf [66]

:[65]
push.v 514.image_angle
push.d 0.6
mul.d.v
pop.v.v local.xx
push.v 514.image_angle
pushi.e 0
mul.i.v
pop.v.v local.xx0

:[66]
pushi.e 20
conv.i.v
pushi.e 142
pushloc.v local.xx
add.v.i
pushloc.v local.wineheight
pushloc.v local.height_fix
sub.v.v
push.v 514.xstart
pushloc.v local.xx
sub.v.v
pushloc.v local.xx0
sub.v.v
call.i gml_Script_scr_drawinbox(argc=4)
popz.v
b [end]

:[67]
pushi.e 20
conv.i.v
pushi.e 142
conv.i.v
pushloc.v local.wineheight
pushi.e 9
sub.i.v
push.v 514.xstart
call.i gml_Script_scr_drawinbox(argc=4)
popz.v

:[end]