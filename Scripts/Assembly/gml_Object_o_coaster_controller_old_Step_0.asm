.localvar 2 arguments

:[0]
push.v self.timer
push.v self.timermax
cmp.v.v LT
bf [3]

:[1]
push.v self.buttonspressed
pushi.e 5
cmp.i.v LTE
bf [3]

:[2]
pushi.e 484
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [4]

:[3]
push.e 0

:[4]
bf [23]

:[5]
push.v 484.kriscoaster
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
push.v self.krisgooffscreen
pushi.e 1
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [11]

:[9]
pushi.e -1
pushi.e 0
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_camerax(argc=0)
pushi.e 120
sub.i.v
cmp.v.v GT
bf [11]

:[10]
push.i 133617
setowner.e
pushi.e -1
pushi.e 0
push.v [array]self.HeroCoaster
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e 10
sub.i.v
pop.i.v [stacktop]self.x
push.i 236202
setowner.e
pushi.e 1
pushi.e -1
pushi.e 0
push.v [array]self.HeroCoaster
pushi.e -9
pop.v.i [stacktop]self.gooffscreen

:[11]
push.v 484.suscoaster
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
push.v self.susiegooffscreen
pushi.e 1
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [17]

:[15]
pushi.e -1
pushi.e 1
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_camerax(argc=0)
pushi.e 120
sub.i.v
cmp.v.v GT
bf [17]

:[16]
push.i 133617
setowner.e
pushi.e -1
pushi.e 1
push.v [array]self.HeroCoaster
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e 10
sub.i.v
pop.i.v [stacktop]self.x
push.i 236202
setowner.e
pushi.e 1
pushi.e -1
pushi.e 1
push.v [array]self.HeroCoaster
pushi.e -9
pop.v.i [stacktop]self.gooffscreen

:[17]
push.v 484.ralcoaster
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
push.v self.ralseigooffscreen
pushi.e 1
cmp.i.v EQ
b [20]

:[19]
push.e 0

:[20]
bf [23]

:[21]
pushi.e -1
pushi.e 2
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_camerax(argc=0)
pushi.e 120
sub.i.v
cmp.v.v GT
bf [23]

:[22]
push.i 133617
setowner.e
pushi.e -1
pushi.e 2
push.v [array]self.HeroCoaster
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e 10
sub.i.v
pop.i.v [stacktop]self.x
push.i 236202
setowner.e
pushi.e 1
pushi.e -1
pushi.e 2
push.v [array]self.HeroCoaster
pushi.e -9
pop.v.i [stacktop]self.gooffscreen

:[23]
push.v self.timer
push.v self.timermax
cmp.v.v GT
bf [25]

:[24]
push.v self.buttonspressed
pushi.e 5
cmp.i.v GT
b [26]

:[25]
push.e 0

:[26]
bf [57]

:[27]
pushi.e -1
pushi.e 0
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.x
pushi.e -1
pushi.e 0
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.xstart
cmp.v.v LT
bf [29]

:[28]
pushi.e -1
pushi.e 0
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.gooffscreen
pushi.e 1
cmp.i.v EQ
b [30]

:[29]
push.e 0

:[30]
bf [32]

:[31]
push.i 133617
setowner.e
pushi.e -1
pushi.e 0
push.v [array]self.HeroCoaster
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e 30
add.i.v
pop.i.v [stacktop]self.x

:[32]
pushi.e -1
pushi.e 1
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.x
pushi.e -1
pushi.e 1
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.xstart
cmp.v.v LT
bf [34]

:[33]
pushi.e -1
pushi.e 1
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.gooffscreen
pushi.e 1
cmp.i.v EQ
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
pushi.e -1
pushi.e 1
push.v [array]self.HeroCoaster
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e 30
add.i.v
pop.i.v [stacktop]self.x

:[37]
pushi.e -1
pushi.e 2
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.x
pushi.e -1
pushi.e 2
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.xstart
cmp.v.v LT
bf [39]

:[38]
pushi.e -1
pushi.e 2
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.gooffscreen
pushi.e 1
cmp.i.v EQ
b [40]

:[39]
push.e 0

:[40]
bf [42]

:[41]
pushi.e -1
pushi.e 2
push.v [array]self.HeroCoaster
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e 30
add.i.v
pop.i.v [stacktop]self.x

:[42]
pushi.e -1
pushi.e 0
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.x
pushi.e -1
pushi.e 0
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.xstart
cmp.v.v GT
bf [44]

:[43]
pushi.e -1
pushi.e 0
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.gooffscreen
pushi.e 1
cmp.i.v EQ
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
pushi.e -1
pushi.e 0
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.xstart
pushi.e -1
pushi.e 0
push.v [array]self.HeroCoaster
pushi.e -9
pop.v.v [stacktop]self.x

:[47]
pushi.e -1
pushi.e 1
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.x
pushi.e -1
pushi.e 1
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.xstart
cmp.v.v GT
bf [49]

:[48]
pushi.e -1
pushi.e 1
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.gooffscreen
pushi.e 1
cmp.i.v EQ
b [50]

:[49]
push.e 0

:[50]
bf [52]

:[51]
pushi.e -1
pushi.e 1
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.xstart
pushi.e -1
pushi.e 1
push.v [array]self.HeroCoaster
pushi.e -9
pop.v.v [stacktop]self.x

:[52]
pushi.e -1
pushi.e 2
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.x
pushi.e -1
pushi.e 2
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.xstart
cmp.v.v GT
bf [54]

:[53]
pushi.e -1
pushi.e 2
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.gooffscreen
pushi.e 1
cmp.i.v EQ
b [55]

:[54]
push.e 0

:[55]
bf [57]

:[56]
pushi.e -1
pushi.e 2
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.xstart
pushi.e -1
pushi.e 2
push.v [array]self.HeroCoaster
pushi.e -9
pop.v.v [stacktop]self.x

:[57]
push.v self.playerinputtimer
pushi.e 12
cmp.i.v LT
bt [59]

:[58]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
b [60]

:[59]
push.e 1

:[60]
bf [62]

:[61]
push.v self.playerinputtimer
push.e 1
add.i.v
pop.v.v self.playerinputtimer

:[62]
push.v self.playerinputtimer
pushi.e 150
cmp.i.v EQ
bf [64]

:[63]
pushi.e 1
pop.v.i self.playerinput

:[64]
push.v self.playerinput
pushi.e 1
cmp.i.v EQ
bf [66]

:[65]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer

:[66]
push.v self.buttonspressed
pushi.e 5
cmp.i.v LTE
bf [68]

:[67]
push.v self.timer
push.v self.timermax
pushi.e 2
sub.i.v
cmp.v.v GT
b [69]

:[68]
push.e 0

:[69]
bf [71]

:[70]
push.v self.timermax
pushi.e 2
sub.i.v
pop.v.v self.timer

:[71]
push.v 496.forceypos
pushi.e -1
cmp.i.v NEQ
bf [74]

:[72]
push.v self.buttonspressed
pushi.e 2
cmp.i.v GT
bf [74]

:[73]
push.v self.buttonspressed
pushi.e 6
cmp.i.v LT
b [75]

:[74]
push.e 0

:[75]
bf [78]

:[76]
pushi.e 6
pop.v.i self.buttonspressed
push.v self.timer
push.v self.timermax
cmp.v.v LT
bf [78]

:[77]
push.v self.timermax
pop.v.v self.timer

:[78]
push.v self.timer
push.v self.timermax
cmp.v.v GTE
bf [80]

:[79]
push.v self.buttonspressed
pushi.e 5
cmp.i.v GT
b [81]

:[80]
push.e 0

:[81]
bf [end]

:[82]
pushi.e 494
pushenv [84]

:[83]
call.i instance_destroy(argc=0)
popz.v

:[84]
popenv [83]
pushi.e 497
pushenv [86]

:[85]
call.i instance_destroy(argc=0)
popz.v

:[86]
popenv [85]
pushi.e 498
pushenv [88]

:[87]
call.i instance_destroy(argc=0)
popz.v

:[88]
popenv [87]
pushi.e 501
pushenv [90]

:[89]
call.i instance_destroy(argc=0)
popz.v

:[90]
popenv [89]
pushi.e 64
pushenv [92]

:[91]
call.i instance_destroy(argc=0)
popz.v

:[92]
popenv [91]
push.v self.timer
push.v self.timermax
pushi.e 10
add.i.v
cmp.v.v GTE
bf [end]

:[93]
pushi.e 0
pop.v.i self.krisgooffscreen
pushi.e 0
pop.v.i self.susiegooffscreen
pushi.e 0
pop.v.i self.ralseigooffscreen
push.i 236202
setowner.e
pushi.e 0
pushi.e -1
pushi.e 0
push.v [array]self.HeroCoaster
pushi.e -9
pop.v.i [stacktop]self.gooffscreen
pushi.e 0
pushi.e -1
pushi.e 1
push.v [array]self.HeroCoaster
pushi.e -9
pop.v.i [stacktop]self.gooffscreen
pushi.e 0
pushi.e -1
pushi.e 2
push.v [array]self.HeroCoaster
pushi.e -9
pop.v.i [stacktop]self.gooffscreen
pushi.e 495
pushenv [95]

:[94]
pushi.e 0
pop.v.i self.forceact

:[95]
popenv [94]
pushi.e -1
pushi.e 0
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.con
pushi.e 0
cmp.i.v EQ
bf [98]

:[96]
pushi.e -1
pushi.e 1
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.con
pushi.e 0
cmp.i.v EQ
bf [98]

:[97]
pushi.e -1
pushi.e 2
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.con
pushi.e 0
cmp.i.v EQ
b [99]

:[98]
push.e 0

:[99]
bf [end]

:[100]
pushi.e 0
pop.v.i self.buttonspressed
pushi.e 484
pushenv [107]

:[101]
pushi.e 1
pop.v.i self.bumpwait
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.acting
pushi.e 1
pop.v.i self.actcon
pushi.e 0
pop.v.i self.actconsus
pushi.e 0
pop.v.i self.actconral
pushi.e 0
pop.v.i self.rideactgo
pushi.e 0
pop.v.i self.bumpactstarted
pushi.e 495
pushenv [103]

:[102]
pushi.e 30
pop.v.i self.dontshowherosprite
pushi.e 0
pop.v.i self.draw_button_press

:[103]
popenv [102]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v LT
bf [105]

:[104]
push.v 502.bumpmercy
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v

:[105]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e 100
cmp.i.v GTE
bf [107]

:[106]
pushi.e 10
conv.i.v
call.i event_user(argc=1)
popz.v

:[107]
popenv [101]
pushi.e 0
pop.v.i self.bumpmercy
pushi.e 0
pop.v.i self.actcon

:[end]