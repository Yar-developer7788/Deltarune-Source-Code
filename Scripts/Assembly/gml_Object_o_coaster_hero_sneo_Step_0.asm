.localvar 2 arguments

:[0]
push.v 693.actcon
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v 693.timer
push.v 693.timermax
cmp.v.v LT
b [3]

:[2]
push.e 0

:[3]
bf [38]

:[4]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [7]

:[5]
push.v self.HeroID
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
push.v self.gooffscreen
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bt [19]

:[9]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [12]

:[10]
push.v self.HeroID
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.v self.gooffscreen
pushi.e 0
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bt [19]

:[14]
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [17]

:[15]
push.v self.HeroID
pushi.e 2
cmp.i.v EQ
bf [17]

:[16]
push.v self.gooffscreen
pushi.e 0
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
b [20]

:[19]
push.e 1

:[20]
bf [38]

:[21]
push.v self.visible
pushi.e 1
cmp.i.v EQ
bf [38]

:[22]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [24]

:[23]
push.v self.HeroID
pushi.e 0
cmp.i.v EQ
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
pushi.e 0
pop.v.i self.draw_button_press

:[27]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [29]

:[28]
push.v self.HeroID
pushi.e 1
cmp.i.v EQ
b [30]

:[29]
push.e 0

:[30]
bf [32]

:[31]
pushi.e 0
pop.v.i self.draw_button_press

:[32]
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [34]

:[33]
push.v self.HeroID
pushi.e 2
cmp.i.v EQ
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
pushi.e 0
pop.v.i self.draw_button_press

:[37]
pushi.e 3
pop.v.i self.mykeybuffer
pushi.e 1
pop.v.i 693.playerinput

:[38]
push.v 693.actcon
pushi.e 0
cmp.i.v NEQ
bf [40]

:[39]
pushi.e 1
pop.v.i self.actoncondelay

:[40]
pushi.e 870
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [42]

:[41]
pushi.e 0
pop.v.i self.actoncondelay

:[42]
push.v self.disabled
pushi.e 1
cmp.i.v EQ
bf [45]

:[43]
push.v self.disabledtimer
push.e 1
sub.i.v
pop.v.v self.disabledtimer
push.v self.disabledtimer
pushi.e 0
cmp.i.v LTE
bf [45]

:[44]
pushi.e 0
pop.v.i self.disabled

:[45]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [55]

:[46]
push.v self.siner
push.d 0.4
add.d.v
pop.v.v self.siner
push.v self.gooffscreen
pushi.e 0
cmp.i.v EQ
bf [48]

:[47]
push.v self.xstart
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
pop.v.v self.x

:[48]
push.v self.mykeybuffer
pushi.e 0
cmp.i.v GT
bf [50]

:[49]
push.v self.disabled
pushi.e 0
cmp.i.v EQ
b [51]

:[50]
push.e 0

:[51]
bf [55]

:[52]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.dashtimer
pushi.e 0
pop.v.i self.damaged
pushi.e 693
pushenv [54]

:[53]
push.v self.buttonspressed
pushi.e 1
add.i.v
pop.v.v self.buttonspressed

:[54]
popenv [53]

:[55]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [69]

:[56]
push.v self.nitro
pushi.e 0
cmp.i.v EQ
bf [59]

:[57]
push.v self.hspeed
pushi.e 4
add.i.v
pop.v.v self.hspeed
push.v self.hspeed
pushi.e 30
cmp.i.v GT
bf [59]

:[58]
pushi.e 30
pop.v.i self.hspeed

:[59]
push.v self.nitro
pushi.e 1
cmp.i.v EQ
bf [62]

:[60]
push.v self.hspeed
pushi.e 8
add.i.v
pop.v.v self.hspeed
push.v self.hspeed
pushi.e 60
cmp.i.v GT
bf [62]

:[61]
pushi.e 60
pop.v.i self.hspeed

:[62]
push.v self.smoketimer
pushi.e 2
add.i.v
pop.v.v self.smoketimer
push.v self.smoketimer
pushi.e 3
cmp.i.v GTE
bf [64]

:[63]
pushi.e 501
conv.i.v
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
push.v self.hspeed
add.v.v
pushi.e 8
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.smoke
pushi.e 0
pop.v.i self.smoketimer

:[64]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 200
add.i.v
cmp.v.v GTE
bf [66]

:[65]
pushi.e 2
pop.v.i self.con

:[66]
push.v self.damaged
pushi.e 1
cmp.i.v EQ
bf [69]

:[67]
pushi.e 5
pop.v.i self.con
pushi.e -48
pop.v.i self.hspeed
push.v self.nitro
pushi.e 1
cmp.i.v EQ
bf [69]

:[68]
pushi.e -200
pop.v.i self.hspeed

:[69]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [82]

:[70]
push.v self.damaged
pushi.e 1
cmp.i.v EQ
bf [72]

:[71]
pushi.e 5
pop.v.i self.con

:[72]
push.v self.hspeed
pushi.e -6
cmp.i.v GTE
bf [74]

:[73]
push.v self.hspeed
pushi.e 2
sub.i.v
pop.v.v self.hspeed

:[74]
push.v self.nitro
pushi.e 1
cmp.i.v EQ
bf [80]

:[75]
push.v self.hspeed
pushi.e 1
sub.i.v
pop.v.v self.hspeed
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 400
add.i.v
cmp.v.v GTE
bf [77]

:[76]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
b [78]

:[77]
push.e 0

:[78]
bf [80]

:[79]
pushi.e -2
pop.v.i self.hspeed

:[80]
push.v self.x
push.v self.xstart
pushi.e 10
add.i.v
cmp.v.v LTE
bf [82]

:[81]
pushi.e 0
pop.v.i self.damaged
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.con

:[82]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [87]

:[83]
pushi.e -30
pop.v.i self.hspeed
push.v self.nitro
pushi.e 1
cmp.i.v EQ
bf [85]

:[84]
pushi.e -100
pop.v.i self.hspeed

:[85]
push.v self.x
push.v self.xstart
push.v self.hspeed
sub.v.v
cmp.v.v LTE
bf [87]

:[86]
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.damaged
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.con

:[87]
push.v self.mykeybuffer
pushi.e 1
sub.i.v
pop.v.v self.mykeybuffer
push.v self.gooffscreen
pushi.e 2
cmp.i.v EQ
bf [end]

:[88]
push.v self.HeroID
pushi.e 0
cmp.i.v EQ
bf [end]

:[89]
push.v self.x
pushi.e 2
sub.i.v
pop.v.v self.x

:[end]