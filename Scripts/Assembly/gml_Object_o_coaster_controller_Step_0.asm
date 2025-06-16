.localvar 2 arguments

:[0]
push.v self.endcoaster
pushi.e 0
cmp.i.v EQ
bf [13]

:[1]
push.v 484.kriscoaster
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.krisgooffscreen
pushi.e 1
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [5]

:[5]
push.v 484.suscoaster
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
push.v self.susiegooffscreen
pushi.e 1
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [9]

:[9]
push.v 484.ralcoaster
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
push.v self.ralseigooffscreen
pushi.e 1
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [13]

:[13]
push.v self.endcoaster
pushi.e 1
cmp.i.v EQ
bf [44]

:[14]
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
bf [16]

:[15]
pushi.e -1
pushi.e 0
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.gooffscreen
pushi.e 1
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
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

:[19]
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
bf [21]

:[20]
pushi.e -1
pushi.e 1
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.gooffscreen
pushi.e 1
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
pushi.e -1
pushi.e 1
push.v [array]self.HeroCoaster
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e 30
add.i.v
pop.i.v [stacktop]self.x

:[24]
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
bf [26]

:[25]
pushi.e -1
pushi.e 2
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.gooffscreen
pushi.e 1
cmp.i.v EQ
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
pushi.e -1
pushi.e 2
push.v [array]self.HeroCoaster
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e 30
add.i.v
pop.i.v [stacktop]self.x

:[29]
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
bf [31]

:[30]
pushi.e -1
pushi.e 0
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.gooffscreen
pushi.e 1
cmp.i.v EQ
b [32]

:[31]
push.e 0

:[32]
bf [34]

:[33]
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

:[34]
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
bf [36]

:[35]
pushi.e -1
pushi.e 1
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.gooffscreen
pushi.e 1
cmp.i.v EQ
b [37]

:[36]
push.e 0

:[37]
bf [39]

:[38]
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

:[39]
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
bf [41]

:[40]
pushi.e -1
pushi.e 2
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.gooffscreen
pushi.e 1
cmp.i.v EQ
b [42]

:[41]
push.e 0

:[42]
bf [44]

:[43]
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

:[44]
push.v self.playerinputtimer
pushi.e 12
cmp.i.v LT
bt [46]

:[45]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
b [47]

:[46]
push.e 1

:[47]
bf [49]

:[48]
push.v self.playerinputtimer
push.e 1
add.i.v
pop.v.v self.playerinputtimer

:[49]
push.v self.playerinputtimer
pushi.e 150
cmp.i.v EQ
bf [51]

:[50]
pushi.e 1
pop.v.i self.playerinput

:[51]
push.v 484.bumpactstarted
pushi.e 1
cmp.i.v EQ
bf [56]

:[52]
push.v 484.ralseigo
pushi.e 0
cmp.i.v EQ
bf [56]

:[53]
push.v 484.susiego
pushi.e 0
cmp.i.v EQ
bf [56]

:[54]
push.v 484.krisgo
pushi.e 0
cmp.i.v EQ
bf [56]

:[55]
push.v 496.movecon
pushi.e 0
cmp.i.v EQ
b [57]

:[56]
push.e 0

:[57]
bf [59]

:[58]
pushi.e 1
pop.v.i self.endcoaster

:[59]
push.v self.endcoaster
pushi.e 1
cmp.i.v EQ
bf [end]

:[60]
pushi.e 501
pushenv [62]

:[61]
call.i instance_destroy(argc=0)
popz.v

:[62]
popenv [61]
pushi.e 64
pushenv [64]

:[63]
call.i instance_destroy(argc=0)
popz.v

:[64]
popenv [63]
pushi.e 20
pop.v.i self.endcoastertimer
push.v self.endcoastertimer
pushi.e 20
cmp.i.v EQ
bf [end]

:[65]
pushi.e 0
pop.v.i self.endcoaster
pushi.e 0
pop.v.i self.endcoastertimer
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
pushenv [67]

:[66]
pushi.e 0
pop.v.i self.forceact

:[67]
popenv [66]
pushi.e -1
pushi.e 0
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.con
pushi.e 0
cmp.i.v EQ
bf [70]

:[68]
pushi.e -1
pushi.e 1
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.con
pushi.e 0
cmp.i.v EQ
bf [70]

:[69]
pushi.e -1
pushi.e 2
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.con
pushi.e 0
cmp.i.v EQ
b [71]

:[70]
push.e 0

:[71]
bf [end]

:[72]
pushi.e 0
pop.v.i self.buttonspressed
pushi.e 484
pushenv [79]

:[73]
pushi.e 1
pop.v.i self.bumpwait
push.i 68097
setowner.e
pushi.e 10
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
pushi.e 0
pop.v.i self.bumpactfast
pushi.e 495
pushenv [75]

:[74]
pushi.e 0
pop.v.i self.draw_button_press

:[75]
popenv [74]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v LT
bf [77]

:[76]
push.v 502.bumpmercy
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v

:[77]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e 100
cmp.i.v GTE
bf [79]

:[78]
pushi.e 1
pop.v.i self.endcon

:[79]
popenv [73]
pushi.e 0
pop.v.i self.bumpmercy
pushi.e 0
pop.v.i self.actcon

:[end]